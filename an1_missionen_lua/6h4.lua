-- dekompiliert aus map\6h4\script\6h4.sco
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
  Game_SetLightCache(node0, "map/6H4/Lmsh/", "map/6H4/Ltex/")
  Game_SetTerrainDepth(node0, 3666)
  Game_SetDecompressionHeight(node0, 400)
  Game_SetAmbientLight(node0, 0.043137, 0.109804, 0.043137)
  Game_SetParallelLightT(node0, 0.113725, 0.286275, 0.113725)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_6H4_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track07_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_timesend.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_track08_sad.sam", 4)
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
  node8 = Node_CreateNode("nod_generic", "gen_industry3_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1663.213, 2850.373, 152.2444), MAT_Vector3(110.7713, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_industry1_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(781.0001, 2775.444, 252.4414), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(899.4066, 2732.533, 245.6559), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(897.8024, 2757.798, 244.3796), MAT_Vector3(90.01455, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_rohr_small02_3")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(896.1983, 2801.512, 245.6559), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_rohr_small02_4")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(897.4014, 2744.965, 244.3796), MAT_Vector3(90.01455, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(907.2462, 2778.418, 242.8016), MAT_Vector3(-90.04165, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "atl_wblock3a_02_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(811.1997, 3274.323, 191.2801), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/atl/atl_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "atl_wblock3a_04_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(703.3729, 3247.027, 188.5103), MAT_Vector3(-90.231, 0, 0))
  Node_ParseIniFile(node16, "osd/atl/atl_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_turret_med_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1169.478, 2592.065, 247.7512), MAT_Vector3(-100.7711, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_turret_med_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1166.928, 2847.557, 245.2618), MAT_Vector3(-64.26036, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_turret_med_3")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(949.8072, 2646.105, 245.2618), MAT_Vector3(-131.7423, -0.718171, 1.942365))
  Node_ParseIniFile(node19, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "Grav_Ctrl_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1039.911465, 2834.94393, 251.969963), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node20, 9)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "Grav_Ctrl_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1040.713327, 2693.979007, 251.97), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node21, 9)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "Grav_Ctrl_3")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(972.135735, 2763.960234, 251.97), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node22, 9)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "Grav_Ctrl_4")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1114.504384, 2764.962596, 251.97), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node23, 9)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1120.508, 3430.443, 205.4448), MAT_Vector3(-89.6974, 0, 0))
  Node_ParseIniFile(node24, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "atl_wblock3b_03_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(894.8311, 3470.904, 191.2682), MAT_Vector3(-179.7694, 0, 0))
  Node_ParseIniFile(node25, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_industry2_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1512.13, 3331.272, 193.6036), MAT_Vector3(-89.87397, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "atl_wblock3a_04_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1325.745, 3292.635, 185.2452), MAT_Vector3(179.9986, 0, 0))
  Node_ParseIniFile(node27, "osd/atl/atl_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_rohr_big01_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1431.917, 3301.646, 191.81), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_rohr_big01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1961.429, 3096.833, 116.1313), MAT_Vector3(-90.26279, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1996.693, 3116.766, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1996.833, 3076.196, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1924.366, 3076.616, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_pole2_4")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1924.646, 3117.326, 155), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_tower_1")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1977.87, 3097.14, 164.0016), MAT_Vector3(-23.53998, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1944.114, 3096.402, 153.4845), MAT_Vector3(-68.91013, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2232.02, 3053.081, 145.5231), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2063.062, 3108.559, 130.1504), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_chimney1_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2242.562, 3106.464, 215.8128), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_chimney1_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2265.74, 3106.325, 220.5472), MAT_Vector3(90.08581, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_parabolic_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2280.183, 3066.637, 208.8225), MAT_Vector3(-150.4446, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_parabolic.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1547.467, 3191.982, 133.3142), MAT_Vector3(-179.4318, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_dolphinhab_big_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(888.1226, 3160.044, 194.7875), MAT_Vector3(-36.33294, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_dolphinhab_big.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1651.556, 2818.958, 195), MAT_Vector3(73.20775, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_pole1_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1634.183, 2863.563, 195), MAT_Vector3(62.31026, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_pole1_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1676.738, 2881.132, 195), MAT_Vector3(62.31026, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_pole1_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1694.014, 2834.575, 195), MAT_Vector3(63.58834, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1664.38, 2849.429, 196.0695), MAT_Vector3(21.10885, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "des_fpowerstation_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1040, 2766, 245), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/des/des_fpowerstation.osd")
  Body_SetFriendOrFoeID(node48, 15)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node49)
  Node_ParseIniFile(node49, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node49, "map/6H3/Terrain/coral_01.tga")
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node50)
  Node_ParseIniFile(node50, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node50, "map/6H3/Terrain/fungus_01.tga")
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node51)
  Node_ParseIniFile(node51, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node51, "map/6H3/Terrain/grass_01.tga")
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node52)
  Node_ParseIniFile(node52, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node52, "map/6H3/Terrain/stone_01.tga")
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1217.034242, 2072.879781, 202.3759), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2359.494, 2924.041, 123.7179), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1338.112039, 1960.938633, 205.253), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node56)
  Node_ParseIniFile(node56, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node57)
  Node_ParseIniFile(node57, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_fx_sky", "fx_sky_10_1")
  Node_AddSon(node7, node58)
  Node_ParseIniFile(node58, "osd/fx_sky/fx_sky_10.osd")
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node59)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node59, node60)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node59, node61)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_PatrolArea", "FusionPP_PArea")
  Node_AddSon(node61, node62)
  PatrolArea_SetPosition(node62, MAT_Vector3(1038.231, 2764.88, 347.435903))
  PatrolArea_SetRadius(node62, 200)
  PatrolArea_SetMinZ(node62, -30)
  PatrolArea_SetMaxZ(node62, 50)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_PatrolArea", "FusionPP_TArea")
  Node_AddSon(node61, node63)
  PatrolArea_SetPosition(node63, MAT_Vector3(1036.67, 2764.88, 231.889265))
  PatrolArea_SetRadius(node63, 500)
  PatrolArea_SetMinZ(node63, -105)
  PatrolArea_SetMaxZ(node63, 160)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_PatrolArea", "FusionPP_FArea")
  Node_AddSon(node61, node64)
  PatrolArea_SetPosition(node64, MAT_Vector3(1036.67, 2765.661, 214.361859))
  PatrolArea_SetRadius(node64, 750)
  PatrolArea_SetMinZ(node64, -110)
  PatrolArea_SetMaxZ(node64, 180)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Path", "GravDockPath_1")
  Node_AddSon(node61, node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node65, node66)
  Position_SetPosition(node66, MAT_Vector3(1286.472973, 2764.040649, 325))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Path", "GravDockPath_2")
  Node_AddSon(node61, node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node67, node68)
  Position_SetPosition(node68, MAT_Vector3(1039.350436, 2982.724994, 325))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Path", "GravDockPath_3")
  Node_AddSon(node61, node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node69, node70)
  Position_SetPosition(node70, MAT_Vector3(853.559043, 2763.565615, 325))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Path", "GravDockPath_4")
  Node_AddSon(node61, node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node71, node72)
  Position_SetPosition(node72, MAT_Vector3(1041.409882, 2542.346947, 325))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Path", "Fregatte1_Path")
  Node_AddSon(node61, node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node73, node74)
  Position_SetPosition(node74, MAT_Vector3(1404.48643, 2519.04171, 375))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node73, node75)
  Position_SetPosition(node75, MAT_Vector3(1288.538642, 2777.172979, 375))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Path", "Fregatte2_Path")
  Node_AddSon(node61, node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node76, node77)
  Position_SetPosition(node77, MAT_Vector3(1287.692311, 2392.938669, 375))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node76, node78)
  Position_SetPosition(node78, MAT_Vector3(1104.885156, 2687.461906, 375))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Path", "ForneusPath_1")
  Node_AddSon(node61, node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node79, node80)
  Position_SetPosition(node80, MAT_Vector3(3188.991, 932.9432, 340))
  Position_SetRadius(node80, 100)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node79, node81)
  Position_SetPosition(node81, MAT_Vector3(2949.604, 1102.422, 340))
  Position_SetRadius(node81, 30)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Path", "ForneusPath_2")
  Node_AddSon(node61, node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node82, node83)
  Position_SetPosition(node83, MAT_Vector3(3049.885, 1030.663, 340))
  Position_SetRadius(node83, 25)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node82, node84)
  Position_SetPosition(node84, MAT_Vector3(2880.626, 1153.006, 340))
  Position_SetRadius(node84, 10)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "ForneusPosition_1")
  Node_AddSon(node61, node85)
  Position_SetPosition(node85, MAT_Vector3(3486.388, 720.3509, 340))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_PatrolArea", "Forneus_AttackArea")
  Node_AddSon(node61, node86)
  PatrolArea_SetPosition(node86, MAT_Vector3(1985.381734, 1283.879417, 280.854441))
  PatrolArea_SetRadius(node86, 1300)
  PatrolArea_SetMinZ(node86, -100)
  PatrolArea_SetMaxZ(node86, 150)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Path", "ChakaPath_1")
  Node_AddSon(node61, node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node87, node88)
  Position_SetPosition(node88, MAT_Vector3(2028.553932, 888.709717, 360.027809))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Path", "Forneus_Path_001")
  Node_AddSon(node61, node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node89, node90)
  Position_SetPosition(node90, MAT_Vector3(1640.926335, 902.313176, 380))
  Position_SetRadius(node90, 15)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node89, node91)
  Position_SetPosition(node91, MAT_Vector3(1927.600877, 1299.069497, 380))
  Position_SetRadius(node91, 15)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node89, node92)
  Position_SetPosition(node92, MAT_Vector3(1687.656584, 1723.318548, 380))
  Position_SetRadius(node92, 15)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Path", "Forneus_BlindedPath")
  Node_AddSon(node61, node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(2263.390644, 1827.316525, 400))
  Position_SetRadius(node94, 15)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node93, node95)
  Position_SetPosition(node95, MAT_Vector3(2990.179327, 2641.04173, 400))
  Position_SetRadius(node95, 15)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node93, node96)
  Position_SetPosition(node96, MAT_Vector3(2405.966373, 3082.678926, 400))
  Position_SetRadius(node96, 15)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node93, node97)
  Position_SetPosition(node97, MAT_Vector3(2488.150096, 2527.444281, 400))
  Position_SetRadius(node97, 15)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node93, node98)
  Position_SetPosition(node98, MAT_Vector3(2013.825113, 2186.420753, 400))
  Position_SetRadius(node98, 15)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node93, node99)
  Position_SetPosition(node99, MAT_Vector3(1316.703803, 2610.262158, 400))
  Position_SetRadius(node99, 15)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Path", "Crocell_Path_1")
  Node_AddSon(node61, node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node100, node101)
  Position_SetPosition(node101, MAT_Vector3(851.451431, 3021.657854, 335.319783))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node100, node102)
  Position_SetPosition(node102, MAT_Vector3(892.075269, 2581.56628, 308.2366))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node100, node103)
  Position_SetPosition(node103, MAT_Vector3(1218.758629, 2632.346077, 318.310814))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node100, node104)
  Position_SetPosition(node104, MAT_Vector3(1220.451289, 2918.4056, 282.111391))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node100, node105)
  Position_SetPosition(node105, MAT_Vector3(1074.882538, 3041.969773, 319.078508))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Path", "EscapePath_1")
  Node_AddSon(node61, node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node106, node107)
  Position_SetPosition(node107, MAT_Vector3(1276.860021, 2882.279481, 271.631681))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node106, node108)
  Position_SetPosition(node108, MAT_Vector3(1268.620961, 2609.566586, 301.941837))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node106, node109)
  Position_SetPosition(node109, MAT_Vector3(1173.047862, 2267.645586, 335.074551))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node106, node110)
  Position_SetPosition(node110, MAT_Vector3(1177.167392, 1924.076774, 296.524352))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "RespawnPos_1")
  Node_AddSon(node61, node111)
  Position_SetPosition(node111, MAT_Vector3(1612.006638, 3022.98308, 162.419072))
  Position_SetRadius(node111, 10)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "RespawnPos_2")
  Node_AddSon(node61, node112)
  Position_SetPosition(node112, MAT_Vector3(1242.023908, 2171.611563, 230.945224))
  Position_SetRadius(node112, 10)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Path", "CreoleGirl_EscapePath")
  Node_AddSon(node61, node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node113, node114)
  Position_SetPosition(node114, MAT_Vector3(2237.167652, 3040.305477, 425))
  Position_SetRadius(node114, 25)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node59, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node59, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Trigger", "TursasReached")
  Node_AddSon(node116, node117)
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetPosition(node117, MAT_Vector3(3299.614794, 853.580791, 50.994905))
  Trigger_SetPresenceSphere(node117, 1100)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node59, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node118, node119)
  Body_SetCS(node119, MAT_Vector3(2014.001113, 2828.266269, 276.819422), MAT_Vector3(-26.286533, 0, 0))
  Node_ParseIniFile(node119, "osd/pla/pla_phobocaster.osd")
  Body_SetFriendOrFoeID(node119, 7)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "wng_chaka_c6_1")
  Node_AddSon(node118, node120)
  Body_SetCS(node120, MAT_Vector3(1950.720635, 2850.992519, 423.6874), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/wng/wng_chaka_c6.osd")
  Body_SetFriendOrFoeID(node120, 8)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "wng_chaka_c6_2")
  Node_AddSon(node118, node121)
  Body_SetCS(node121, MAT_Vector3(1870.095877, 728.321921, 390), MAT_Vector3(-45, 0, 0))
  Node_ParseIniFile(node121, "osd/wng/wng_chaka_c6.osd")
  Body_SetFriendOrFoeID(node121, 8)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "wng_degrange_c6_1")
  Node_AddSon(node118, node122)
  Body_SetCS(node122, MAT_Vector3(1979.834337, 2812.174249, 423.6874), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/wng/wng_degrange_c6.osd")
  Body_SetFriendOrFoeID(node122, 8)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "wng_harper_c6_1")
  Node_AddSon(node118, node123)
  Body_SetCS(node123, MAT_Vector3(1898.558585, 2837.648739, 423.6874), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/wng/wng_harper_c6.osd")
  Body_SetFriendOrFoeID(node123, 8)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "wng_pico_c6_1")
  Node_AddSon(node118, node124)
  Body_SetCS(node124, MAT_Vector3(1943.442209, 2807.321966, 423.6874), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/wng/wng_pico_c6.osd")
  Body_SetFriendOrFoeID(node124, 8)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Directory", "TornadoZone")
  Node_AddSon(node118, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "CreoleGirl")
  Node_AddSon(node125, node126)
  Body_SetCS(node126, MAT_Vector3(1129.918851, 3153.616079, 425), MAT_Vector3(-163.440712, 0, 0))
  Node_ParseIniFile(node126, "osd/tz/tz_creolegirl.osd")
  Body_SetFriendOrFoeID(node126, 11)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "tz_scout2v4_1")
  Node_AddSon(node125, node127)
  Body_SetCS(node127, MAT_Vector3(1164.041315, 2953.956009, 296.07692), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node127, "osd/tz/tz_scout2v4.osd")
  Body_SetFriendOrFoeID(node127, 10)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "tz_scout2v4_2")
  Node_AddSon(node125, node128)
  Body_SetCS(node128, MAT_Vector3(1226.635603, 2908.749023, 304.46031), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/tz/tz_scout2v4.osd")
  Body_SetFriendOrFoeID(node128, 10)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "tz_scout2v4_3")
  Node_AddSon(node125, node129)
  Body_SetCS(node129, MAT_Vector3(1056.240041, 2952.217279, 325.799848), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/tz/tz_scout2v4.osd")
  Body_SetFriendOrFoeID(node129, 10)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "tz_scout2v4_4")
  Node_AddSon(node125, node130)
  Body_SetCS(node130, MAT_Vector3(1219.680682, 2964.388391, 296.07692), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/tz/tz_scout2v4.osd")
  Body_SetFriendOrFoeID(node130, 10)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "tz_scout2v4_5")
  Node_AddSon(node125, node131)
  Body_SetCS(node131, MAT_Vector3(1261.52096, 2991.57729, 303.051113), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/tz/tz_scout2v4.osd")
  Body_SetFriendOrFoeID(node131, 10)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Directory", "AtlaticFederation")
  Node_AddSon(node118, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node132, node133)
  Body_SetCS(node133, MAT_Vector3(1199.053172, 2830.426879, 314.37162), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node132, node134)
  Body_SetCS(node134, MAT_Vector3(1190.359521, 2727.841796, 316.657999), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node132, node135)
  Body_SetCS(node135, MAT_Vector3(1120.810312, 2663.508777, 335.711158), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_vessel", "atl_fregatte_1")
  Node_AddSon(node132, node136)
  Body_SetCS(node136, MAT_Vector3(985.189354, 2922.579581, 357.050696), MAT_Vector3(-106.059965, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vessel", "atl_fregatte_2")
  Node_AddSon(node132, node137)
  Body_SetCS(node137, MAT_Vector3(1000.837926, 2694.805921, 381.865664), MAT_Vector3(-51.829946, 0, 0))
  Node_ParseIniFile(node137, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "atl_scout1_4")
  Node_AddSon(node132, node138)
  Body_SetCS(node138, MAT_Vector3(1401.947738, 2614.250962, 332.18473), MAT_Vector3(56.026727, 0, 0))
  Node_ParseIniFile(node138, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "atl_scout2_2")
  Node_AddSon(node132, node139)
  Body_SetCS(node139, MAT_Vector3(1455.501629, 2709.82406, 337.018294), MAT_Vector3(45.626505, 0, 0))
  Node_ParseIniFile(node139, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Directory", "Crawler")
  Node_AddSon(node118, node140)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vessel", "cra_bomber_G1_1")
  Node_AddSon(node140, node141)
  Body_SetCS(node141, MAT_Vector3(1340.096646, 2313.305306, 363.403712), MAT_Vector3(34.949227, 0, 0))
  Node_ParseIniFile(node141, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node141, 1)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "cra_scout1_G1_1")
  Node_AddSon(node140, node142)
  Body_SetCS(node142, MAT_Vector3(1368.871902, 2381.858124, 375.638099), MAT_Vector3(34.838521, 0, 0))
  Node_ParseIniFile(node142, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node142, 3)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "cra_scout2v1_G1_1")
  Node_AddSon(node140, node143)
  Body_SetCS(node143, MAT_Vector3(1359.562261, 2346.312219, 361.655943), MAT_Vector3(41.837579, 0, 0))
  Node_ParseIniFile(node143, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node143, 1)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vessel", "cra_scout2v2_G1_1")
  Node_AddSon(node140, node144)
  Body_SetCS(node144, MAT_Vector3(1285.085126, 2303.995665, 310.970626), MAT_Vector3(35.15903, 0, 0))
  Node_ParseIniFile(node144, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node144, 1)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "cra_scout2v2_G1_2")
  Node_AddSon(node140, node145)
  Body_SetCS(node145, MAT_Vector3(1421.344429, 2383.550786, 317.379114), MAT_Vector3(38.907131, 0, 0))
  Node_ParseIniFile(node145, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node145, 3)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "cra_tursas_6h4_1")
  Node_AddSon(node140, node146)
  Body_SetCS(node146, MAT_Vector3(1465.787162, 2226.414372, 367.715815), MAT_Vector3(32.578997, 0, 0))
  Node_ParseIniFile(node146, "osd/cra/cra_tursas_6h4.osd")
  Body_SetFriendOrFoeID(node146, 1)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "cra_bomber_G2_dock1")
  Node_AddSon(node140, node147)
  Body_SetCS(node147, MAT_Vector3(1400.26575, 2299.734097, 348.844817), MAT_Vector3(44.512948, 0, 0))
  Node_ParseIniFile(node147, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node147, 3)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_vessel", "cra_bomber_G2_dock2")
  Node_AddSon(node140, node148)
  Body_SetCS(node148, MAT_Vector3(1432.426, 2357.285, 338.777363), MAT_Vector3(44.51295, 0, 0))
  Node_ParseIniFile(node148, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node148, 3)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_vessel", "cra_bomber_G2_dock3")
  Node_AddSon(node140, node149)
  Body_SetCS(node149, MAT_Vector3(1485.744858, 2340.358378, 417.947593), MAT_Vector3(44.51295, 0, 0))
  Node_ParseIniFile(node149, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node149, 3)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vessel", "cra_bomber_G2_dock4")
  Node_AddSon(node140, node150)
  Body_SetCS(node150, MAT_Vector3(1509.369077, 2421.067987, 389.906645), MAT_Vector3(44.51295, 0, 0))
  Node_ParseIniFile(node150, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node150, 3)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vessel", "cra_bomber_G2_1")
  Node_AddSon(node140, node151)
  Body_SetCS(node151, MAT_Vector3(1391.74831, 2396.396973, 368.698211), MAT_Vector3(33.54133, 0, 0))
  Node_ParseIniFile(node151, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node151, 3)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "cra_scout2v2_G2_1")
  Node_AddSon(node140, node152)
  Body_SetCS(node152, MAT_Vector3(1520.390635, 2479.337418, 300), MAT_Vector3(30.900454, 0, 0))
  Node_ParseIniFile(node152, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node152, 1)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "cra_scout2v2_G2_2")
  Node_AddSon(node140, node153)
  Body_SetCS(node153, MAT_Vector3(1348.585425, 2420.940574, 300), MAT_Vector3(19.816917, 0, 0))
  Node_ParseIniFile(node153, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node153, 1)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "cra_scout2v2_G2_3")
  Node_AddSon(node140, node154)
  Body_SetCS(node154, MAT_Vector3(1325.734486, 2271.986304, 300), MAT_Vector3(36.233021, 0, 0))
  Node_ParseIniFile(node154, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node154, 3)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "cra_scout2v2_G2_4")
  Node_AddSon(node140, node155)
  Body_SetCS(node155, MAT_Vector3(1435.553168, 2387.079008, 300), MAT_Vector3(36.077315, 0, 0))
  Node_ParseIniFile(node155, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node155, 1)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "cra_scout2v2_G2_5")
  Node_AddSon(node140, node156)
  Body_SetCS(node156, MAT_Vector3(1375.819901, 2452.167671, 300), MAT_Vector3(29.430527, 0, 0))
  Node_ParseIniFile(node156, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node156, 1)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "cra_scout2v2_G2_6")
  Node_AddSon(node140, node157)
  Body_SetCS(node157, MAT_Vector3(1466.449685, 2410.148408, 371.645574), MAT_Vector3(34.726658, 0, 0))
  Node_ParseIniFile(node157, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node157, 1)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vessel", "cra_fregatte_G2_1")
  Node_AddSon(node140, node158)
  Body_SetCS(node158, MAT_Vector3(1489.922716, 2346.463439, 375), MAT_Vector3(29.271443, 0, 0))
  Node_ParseIniFile(node158, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node158, 1)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_vessel", "cra_fregatte_G2_2")
  Node_AddSon(node140, node159)
  Body_SetCS(node159, MAT_Vector3(1392.594641, 2216.974784, 375), MAT_Vector3(30.050402, 0, 0))
  Node_ParseIniFile(node159, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node159, 1)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Directory", "Schax")
  Node_AddSon(node118, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_vessel", "old_schax_booster_G1_1")
  Node_AddSon(node160, node161)
  Body_SetCS(node161, MAT_Vector3(905.865413, 2915.523179, 329.124285), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node161, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node161, 2)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_vessel", "old_schax_booster_G1_2")
  Node_AddSon(node160, node162)
  Body_SetCS(node162, MAT_Vector3(848.851067, 2927.653709, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node162, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node162, 2)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_vessel", "old_schax_bang_G1_1")
  Node_AddSon(node160, node163)
  Body_SetCS(node163, MAT_Vector3(958.401463, 2898.67956, 329.124285), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node163, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node163, 2)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_vessel", "old_schax_lighteater_G1_1")
  Node_AddSon(node160, node164)
  Body_SetCS(node164, MAT_Vector3(979.857025, 2977.483634, 329.124285), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node164, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node164, 2)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_vessel", "old_schax_raider_G1_1")
  Node_AddSon(node160, node165)
  Body_SetCS(node165, MAT_Vector3(898.847238, 2950.413532, 329.124285), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node165, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node165, 2)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_vessel", "old_schax_raider_G1_2")
  Node_AddSon(node160, node166)
  Body_SetCS(node166, MAT_Vector3(956.987872, 2975.678961, 329.124285), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node166, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node166, 2)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "old_schax_booster_G2_1")
  Node_AddSon(node160, node167)
  Body_SetCS(node167, MAT_Vector3(1155.632097, 2890.133005, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node167, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node167, 4)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vessel", "old_schax_booster_G2_2")
  Node_AddSon(node160, node168)
  Body_SetCS(node168, MAT_Vector3(1145.003727, 2947.998575, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node168, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node168, 2)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vessel", "old_schax_bang_G2_1")
  Node_AddSon(node160, node169)
  Body_SetCS(node169, MAT_Vector3(1208.168197, 2876.24233, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node169, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node169, 2)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_vessel", "old_schax_bang_G2_2")
  Node_AddSon(node160, node170)
  Body_SetCS(node170, MAT_Vector3(1218.206102, 2817.786294, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node170, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node170, 2)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vessel", "old_schax_raider_G2_1")
  Node_AddSon(node160, node171)
  Body_SetCS(node171, MAT_Vector3(1251.961495, 2854.81711, 332.92912), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node171, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node171, 2)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vessel", "old_schax_booster_G3_1")
  Node_AddSon(node160, node172)
  Body_SetCS(node172, MAT_Vector3(1165.07944, 2654.537463, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node172, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node172, 2)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vessel", "old_schax_booster_G3_2")
  Node_AddSon(node160, node173)
  Body_SetCS(node173, MAT_Vector3(1041.672624, 2607.300692, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node173, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node173, 2)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vessel", "old_schax_bang_G3_1")
  Node_AddSon(node160, node174)
  Body_SetCS(node174, MAT_Vector3(1078.265699, 2648.322508, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node174, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node174, 2)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vessel", "old_schax_bang_G3_2")
  Node_AddSon(node160, node175)
  Body_SetCS(node175, MAT_Vector3(1219.977395, 2665.446029, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node175, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node175, 2)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vessel", "old_schax_bang_G3_3")
  Node_AddSon(node160, node176)
  Body_SetCS(node176, MAT_Vector3(1233.858892, 2746.962312, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node176, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node176, 4)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "old_schax_bang_G3_4")
  Node_AddSon(node160, node177)
  Body_SetCS(node177, MAT_Vector3(1277.529553, 2806.402475, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node177, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node177, 4)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "old_schax_bang_G3_5")
  Node_AddSon(node160, node178)
  Body_SetCS(node178, MAT_Vector3(1244.777085, 2748.174596, 329.1243), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node178, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node178, 4)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "old_schax_raider_G3_1")
  Node_AddSon(node160, node179)
  Body_SetCS(node179, MAT_Vector3(1126.782419, 2635.754483, 332.9291), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node179, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node179, 2)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "old_schax_raider_G3_2")
  Node_AddSon(node160, node180)
  Body_SetCS(node180, MAT_Vector3(1276.170065, 2698.934239, 332.9291), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node180, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node180, 2)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "old_schax_booster_G4_1")
  Node_AddSon(node160, node181)
  Body_SetCS(node181, MAT_Vector3(1701.256484, 2642.406288, 329.1243), MAT_Vector3(93.115093, 0, 0))
  Node_ParseIniFile(node181, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node181, 2)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "old_schax_booster_G4_2")
  Node_AddSon(node160, node182)
  Body_SetCS(node182, MAT_Vector3(1706.436034, 2689.789844, 329.1243), MAT_Vector3(88.279722, 0, 0))
  Node_ParseIniFile(node182, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node182, 2)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "old_schax_booster_G4_3")
  Node_AddSon(node160, node183)
  Body_SetCS(node183, MAT_Vector3(1689.364821, 2622.665145, 329.1243), MAT_Vector3(86.932195, 0, 0))
  Node_ParseIniFile(node183, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node183, 2)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "old_schax_bang_G4_1")
  Node_AddSon(node160, node184)
  Body_SetCS(node184, MAT_Vector3(1631.426481, 2723.533416, 329.1243), MAT_Vector3(87.58944, -6.260389, -35.053949))
  Node_ParseIniFile(node184, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node184, 2)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "old_schax_bang_G4_2")
  Node_AddSon(node160, node185)
  Body_SetCS(node185, MAT_Vector3(1713.696991, 2570.826444, 329.1243), MAT_Vector3(88.103031, 0, 0))
  Node_ParseIniFile(node185, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node185, 2)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "old_schax_bang_G4_3")
  Node_AddSon(node160, node186)
  Body_SetCS(node186, MAT_Vector3(1629.320221, 2672.964655, 329.1243), MAT_Vector3(102.571539, 0, 0))
  Node_ParseIniFile(node186, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node186, 2)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "old_schax_bang_G4_4")
  Node_AddSon(node160, node187)
  Body_SetCS(node187, MAT_Vector3(1643.877512, 2595.327606, 329.1243), MAT_Vector3(91.936812, 0, 0))
  Node_ParseIniFile(node187, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node187, 2)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "old_schax_bang_G4_5")
  Node_AddSon(node160, node188)
  Body_SetCS(node188, MAT_Vector3(1681.482643, 2734.831216, 329.1243), MAT_Vector3(95.525945, 0, 0))
  Node_ParseIniFile(node188, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node188, 2)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "old_schax_bang_G10_1")
  Node_AddSon(node160, node189)
  Body_SetCS(node189, MAT_Vector3(1365.764, 2943.733, 355.9422), MAT_Vector3(122.4607, 0, 0))
  Node_ParseIniFile(node189, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node189, 2)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "old_schax_bang_G10_2")
  Node_AddSon(node160, node190)
  Body_SetCS(node190, MAT_Vector3(1401.012, 2885.19, 343.2307), MAT_Vector3(121.3951, 0, 0))
  Node_ParseIniFile(node190, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node190, 2)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "old_schax_bang_G10_3")
  Node_AddSon(node160, node191)
  Body_SetCS(node191, MAT_Vector3(1397.495323, 2932.313474, 343.2307), MAT_Vector3(121.3951, 0, 0))
  Node_ParseIniFile(node191, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node191, 2)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "old_schax_bang_G10_4")
  Node_AddSon(node160, node192)
  Body_SetCS(node192, MAT_Vector3(1398.198335, 2968.183107, 343.2307), MAT_Vector3(121.3951, 0, 0))
  Node_ParseIniFile(node192, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node192, 2)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "old_schax_booster_G10_1")
  Node_AddSon(node160, node193)
  Body_SetCS(node193, MAT_Vector3(1332.718, 2909.443, 324.1461), MAT_Vector3(115.3208, 0, 0))
  Node_ParseIniFile(node193, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node193, 2)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "old_schax_head_G10_1")
  Node_AddSon(node160, node194)
  Body_SetCS(node194, MAT_Vector3(1451.391, 2935.284, 330.2493), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node194, "osd/old/old_schax_head.osd")
  Body_SetFriendOrFoeID(node194, 4)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "old_schax_bang_G11_1")
  Node_AddSon(node160, node195)
  Body_SetCS(node195, MAT_Vector3(1038.24, 3035.467, 355.9422), MAT_Vector3(-176.4713, 0, 0))
  Node_ParseIniFile(node195, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node195, 2)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "old_schax_bang_G11_2")
  Node_AddSon(node160, node196)
  Body_SetCS(node196, MAT_Vector3(1006.589906, 3095.953847, 355.9422), MAT_Vector3(-176.4713, 0, 0))
  Node_ParseIniFile(node196, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node196, 2)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "old_schax_bang_G11_3")
  Node_AddSon(node160, node197)
  Body_SetCS(node197, MAT_Vector3(973.533235, 3065.710576, 355.9422), MAT_Vector3(-176.4713, 0, 0))
  Node_ParseIniFile(node197, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node197, 2)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "old_schax_bang_G11_4")
  Node_AddSon(node160, node198)
  Body_SetCS(node198, MAT_Vector3(1656.997233, 2429.930504, 355.9422), MAT_Vector3(73.302847, 0, 0))
  Node_ParseIniFile(node198, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node198, 2)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "old_schax_bang_G11_5")
  Node_AddSon(node160, node199)
  Body_SetCS(node199, MAT_Vector3(1580.414349, 2357.683216, 355.9422), MAT_Vector3(41.107722, 0, 0))
  Node_ParseIniFile(node199, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node199, 2)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "old_schax_booster_G11_1")
  Node_AddSon(node160, node200)
  Body_SetCS(node200, MAT_Vector3(1012.219, 3028.909, 324.1461), MAT_Vector3(-169.8843, 0, 0))
  Node_ParseIniFile(node200, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node200, 2)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "old_schax_booster_G11_2")
  Node_AddSon(node160, node201)
  Body_SetCS(node201, MAT_Vector3(1029.655, 3066.405, 343.2307), MAT_Vector3(-164.1337, 0, 0))
  Node_ParseIniFile(node201, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node201, 2)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "old_schax_head_G11_1")
  Node_AddSon(node160, node202)
  Body_SetCS(node202, MAT_Vector3(961.1669, 3044.864, 305.1401), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node202, "osd/old/old_schax_head.osd")
  Body_SetFriendOrFoeID(node202, 4)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Directory", "Squids")
  Node_AddSon(node118, node203)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_physicalcharacter", "old_crocell_1")
  Node_AddSon(node203, node204)
  Body_SetCS(node204, MAT_Vector3(669.908199, 3029.199157, 359.5727), MAT_Vector3(-127.199557, 0, 0))
  Node_ParseIniFile(node204, "osd/old/old_crocell.osd")
  Body_SetFriendOrFoeID(node204, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Directory", "Bionts")
  Node_AddSon(node118, node205)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "bio_scout_1")
  Node_AddSon(node205, node206)
  Body_SetCS(node206, MAT_Vector3(1071.332008, 2935.865861, 429.134353), MAT_Vector3(-41.844307, 0, 0))
  Node_ParseIniFile(node206, "osd/bio/bio_scout.osd")
  Body_SetFriendOrFoeID(node206, 12)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "bio_scout_2")
  Node_AddSon(node205, node207)
  Body_SetCS(node207, MAT_Vector3(1126.835733, 2862.648182, 429.134353), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node207, "osd/bio/bio_scout.osd")
  Body_SetFriendOrFoeID(node207, 12)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vessel", "TURSAS")
  Node_AddSon(node118, node208)
  Body_SetCS(node208, MAT_Vector3(2925.245, 1116.359, 347), MAT_Vector3(48.56676, -0.666701, -82.37592))
  Node_ParseIniFile(node208, "osd/cra/cra_tursas_nohalo.osd")
  Body_SetFriendOrFoeID(node208, 6)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_physicalcharacter", "Forneus")
  Node_AddSon(node118, node209)
  Body_SetCS(node209, MAT_Vector3(3252.702, 888.826, -24.91386), MAT_Vector3(54.05223, 0, 0))
  Node_ParseIniFile(node209, "osd/old/old_forneus.osd")
  Body_SetFriendOrFoeID(node209, 5)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node118, node210)
  Body_SetPosition(node210, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node210, 5)
  Node_ParseIniFile(node210, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "gen_freighter1_6h4_1")
  Node_AddSon(node118, node211)
  Body_SetCS(node211, MAT_Vector3(1270.39253, 2616.79108, 280.8815), MAT_Vector3(168.627877, 0, 0))
  Node_ParseIniFile(node211, "osd/gen/gen_freighter1_6h4.osd")
  Body_SetFriendOrFoeID(node211, 0)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "gen_freighter1_6h4_2")
  Node_AddSon(node118, node212)
  Body_SetCS(node212, MAT_Vector3(1275.470341, 2953.630135, 280.8815), MAT_Vector3(-178.8202, 0, 0))
  Node_ParseIniFile(node212, "osd/gen/gen_freighter1_6h4.osd")
  Body_SetFriendOrFoeID(node212, 0)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "gen_freighter1_6h4_3")
  Node_AddSon(node118, node213)
  Body_SetCS(node213, MAT_Vector3(1014.801023, 3014.566341, 280.8815), MAT_Vector3(-178.8202, 0, 0))
  Node_ParseIniFile(node213, "osd/gen/gen_freighter1_6h4.osd")
  Body_SetFriendOrFoeID(node213, 0)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "gen_freighter1_6h4_4")
  Node_AddSon(node118, node214)
  Body_SetCS(node214, MAT_Vector3(1042.47746, 3146.668945, 280.8815), MAT_Vector3(-178.8202, 0, 0))
  Node_ParseIniFile(node214, "osd/gen/gen_freighter1_6h4.osd")
  Body_SetFriendOrFoeID(node214, 0)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "gen_freighter1_6h4_5")
  Node_AddSon(node118, node215)
  Body_SetCS(node215, MAT_Vector3(1166.468927, 3146.130569, 280.8815), MAT_Vector3(-178.8202, 0, 0))
  Node_ParseIniFile(node215, "osd/gen/gen_freighter1_6h4.osd")
  Body_SetFriendOrFoeID(node215, 0)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "gen_freighter1_6h4_6")
  Node_AddSon(node118, node216)
  Body_SetCS(node216, MAT_Vector3(1251.101456, 3149.515862, 280.8815), MAT_Vector3(-178.8202, 0, 0))
  Node_ParseIniFile(node216, "osd/gen/gen_freighter1_6h4.osd")
  Body_SetFriendOrFoeID(node216, 0)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node118, node217)
  Body_SetPosition(node217, MAT_Vector3(1204.363472, 1837.105994, 272.228522))
  WayPoint_SetRadius(node217, 200)
  Node_ParseIniFile(node217, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node218)
  Camera_SetBackPlane(node218, 512)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node219)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node219, node220)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node219, node221)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node221, node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node222, node223)
  Position_SetPosition(node223, MAT_Vector3(1962.523846, 2754.507525, 255))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node222, node224)
  Position_SetPosition(node224, MAT_Vector3(1544.22738, 2754.539715, 255))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node221, node225)
  Position_SetPosition(node225, MAT_Vector3(1034.914411, 2472.621848, 385))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node221, node226)
  Position_SetPosition(node226, MAT_Vector3(1037.340142, 2917.819034, 385))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node221, node227)
  Position_SetPosition(node227, MAT_Vector3(1039.766142, 3679.627548, 385))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node221, node228)
  Position_SetPosition(node228, MAT_Vector3(1852.53821, 2760.942636, 250.606018))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Path", "PlayerPathC2_1")
  Node_AddSon(node221, node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node229, node230)
  Position_SetPosition(node230, MAT_Vector3(2547.365, 1385.071, 331.6135))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node229, node231)
  Position_SetPosition(node231, MAT_Vector3(2700.612, 1277.139, 339.8737))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node229, node232)
  Position_SetPosition(node232, MAT_Vector3(2806.895, 1197.22, 344.4848))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Path", "PlayerPathC2_2")
  Node_AddSon(node221, node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node233, node234)
  Position_SetPosition(node234, MAT_Vector3(2787.64, 1212.625, 331.6135))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node233, node235)
  Position_SetPosition(node235, MAT_Vector3(2842.018, 1165.624, 339.8737))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Path", "PlayerPathC2_3")
  Node_AddSon(node221, node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node236, node237)
  Position_SetPosition(node237, MAT_Vector3(2720.08, 1307.374, 331.6135))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node236, node238)
  Position_SetPosition(node238, MAT_Vector3(2546.236, 1454.815, 339.8737))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "MTPosition_1")
  Node_AddSon(node221, node239)
  Position_SetPosition(node239, MAT_Vector3(2691.549, 1362.825, 344.3221))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "MTPosition_2")
  Node_AddSon(node221, node240)
  Position_SetPosition(node240, MAT_Vector3(2690.725, 1250.774, 344.3221))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "MTPosition_3")
  Node_AddSon(node221, node241)
  Position_SetPosition(node241, MAT_Vector3(2784.65, 1253.246, 344.3221))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "MTPosition_4")
  Node_AddSon(node221, node242)
  Position_SetPosition(node242, MAT_Vector3(2871.16, 1162.616, 327.6212))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "MTPosition_5")
  Node_AddSon(node221, node243)
  Position_SetPosition(node243, MAT_Vector3(2878.575, 1075.282, 358.7439))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "LAPosition_1")
  Node_AddSon(node221, node244)
  Position_SetPosition(node244, MAT_Vector3(2928.833, 1114.006, 340.2813))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Path", "Bang1Path")
  Node_AddSon(node221, node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node245, node246)
  Position_SetPosition(node246, MAT_Vector3(2632.663, 1371.521, 343.2518))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node245, node247)
  Position_SetPosition(node247, MAT_Vector3(2132.426, 1794.325, 309.5674))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Path", "Bang2Path")
  Node_AddSon(node221, node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node248, node249)
  Position_SetPosition(node249, MAT_Vector3(2651.057, 1288.747, 343.2518))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node248, node250)
  Position_SetPosition(node250, MAT_Vector3(2133.002, 1694.881, 309.5674))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Path", "Seed1Path")
  Node_AddSon(node221, node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node251, node252)
  Position_SetPosition(node252, MAT_Vector3(2727.508, 1272.652, 324.677))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node251, node253)
  Position_SetPosition(node253, MAT_Vector3(2165.766, 1720.748, 309.5674))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Path", "LightE1Path")
  Node_AddSon(node221, node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node254, node255)
  Position_SetPosition(node255, MAT_Vector3(2612.544, 1320.362, 313.9746))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node254, node256)
  Position_SetPosition(node256, MAT_Vector3(2245.666, 1625.903, 307.0197))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Path", "SchaxPath2")
  Node_AddSon(node221, node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node257, node258)
  Position_SetPosition(node258, MAT_Vector3(2856.843, 1197.351, 321.9454))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node257, node259)
  Position_SetPosition(node259, MAT_Vector3(2257.738, 1706.378, 346.717))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Path", "SchaxPath1")
  Node_AddSon(node221, node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node260, node261)
  Position_SetPosition(node261, MAT_Vector3(2843.047, 1174.933, 298.4538))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node260, node262)
  Position_SetPosition(node262, MAT_Vector3(2204.854, 1679.936, 354.3654))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "MTPosition_6")
  Node_AddSon(node221, node263)
  Position_SetPosition(node263, MAT_Vector3(2773.383, 1220.711, 539.3499))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "MTPosition_7")
  Node_AddSon(node221, node264)
  Position_SetPosition(node264, MAT_Vector3(2774.533, 1221.286, 337.9448))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "MTPosition_8")
  Node_AddSon(node221, node265)
  Position_SetPosition(node265, MAT_Vector3(2758.055, 1204.808, 337.9448))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Path", "PlayerPathC2_4")
  Node_AddSon(node221, node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node266, node267)
  Position_SetPosition(node267, MAT_Vector3(2326.842544, 1216.968656, 331.6135))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node266, node268)
  Position_SetPosition(node268, MAT_Vector3(1506.24043, 845.268268, 339.8737))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Path", "Forneus_Path_01")
  Node_AddSon(node221, node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node269, node270)
  Position_SetPosition(node270, MAT_Vector3(2600.704, 1343.95, 380))
  Position_SetRadius(node270, 15)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node269, node271)
  Position_SetPosition(node271, MAT_Vector3(2073.654089, 1104.331759, 380))
  Position_SetRadius(node271, 15)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "MTPosition_9")
  Node_AddSon(node221, node272)
  Position_SetPosition(node272, MAT_Vector3(2173.885721, 1135.270211, 320.1984))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "MTPosition_10")
  Node_AddSon(node221, node273)
  Position_SetPosition(node273, MAT_Vector3(1943.192406, 734.027928, 392.723082))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "MTPosition_11")
  Node_AddSon(node221, node274)
  Position_SetPosition(node274, MAT_Vector3(1457.651135, 2563.748087, 563.906941))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Path", "Forneus_Path_BadEndChapter2")
  Node_AddSon(node221, node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node275, node276)
  Position_SetPosition(node276, MAT_Vector3(1428.370981, 2144.85828, 380))
  Position_SetRadius(node276, 15)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node275, node277)
  Position_SetPosition(node277, MAT_Vector3(1130.224458, 2668.458248, 409.226509))
  Position_SetRadius(node277, 15)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Path", "PlayerPathC2_5")
  Node_AddSon(node221, node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node278, node279)
  Position_SetPosition(node279, MAT_Vector3(1651.40056, 1884.042881, 286.688929))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node278, node280)
  Position_SetPosition(node280, MAT_Vector3(1402.579555, 2263.198699, 279.385724))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "MTPosition_12")
  Node_AddSon(node221, node281)
  Position_SetPosition(node281, MAT_Vector3(1599.361279, 1974.700736, 295.680107))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Position", "MTPosition_13")
  Node_AddSon(node221, node282)
  Position_SetPosition(node282, MAT_Vector3(1224.95259, 2614.156071, 331.48397))
  Position_SetRadius(node282, 5)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Position", "NS01_LookFrom_1")
  Node_AddSon(node221, node283)
  Position_SetPosition(node283, MAT_Vector3(1873.814325, 2398.047522, 253.642032))
  Position_SetRadius(node283, 5)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "NS01_LookAt_1")
  Node_AddSon(node221, node284)
  Position_SetPosition(node284, MAT_Vector3(2107.321689, 2474.007748, 268.529728))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "NS01_LookFrom_2")
  Node_AddSon(node221, node285)
  Position_SetPosition(node285, MAT_Vector3(2611.863807, 1324.495524, 350))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "NS01_LookAt_2")
  Node_AddSon(node221, node286)
  Position_SetPosition(node286, MAT_Vector3(2334.046311, 1516.506097, 360))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Path", "NS01_Tursas_Path1")
  Node_AddSon(node221, node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node287, node288)
  Position_SetPosition(node288, MAT_Vector3(1817.79575, 2381.889358, 270.174451))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node287, node289)
  Position_SetPosition(node289, MAT_Vector3(2093.782533, 2470.031296, 270.1745))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Path", "NS01_Tursas_Path2")
  Node_AddSon(node221, node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node290, node291)
  Position_SetPosition(node291, MAT_Vector3(2488.780106, 1412.412453, 370))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node290, node292)
  Position_SetPosition(node292, MAT_Vector3(2684.307356, 1265.415348, 360))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node219, node293)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node293, node294)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Director", "Chapter1_AddOn_V")
  Node_AddSon(node293, node295)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node293, node296)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node293, node297)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Director", "Chapter2_Intro_AddOn_V")
  Node_AddSon(node293, node298)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A")
  Node_AddSon(node293, node299)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Director", "Chapter2_ExtroBAD_V")
  Node_AddSon(node293, node300)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Director", "Chapter2_ExtroBAD_A")
  Node_AddSon(node293, node301)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Director", "Chapter2_ExtroGOOD_V")
  Node_AddSon(node293, node302)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Director", "Chapter2_ExtroGOOD_AddOn_V")
  Node_AddSon(node293, node303)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Director", "Chapter2_ExtroGOOD_A")
  Node_AddSon(node293, node304)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Director", "NewScene01_V")
  Node_AddSon(node293, node305)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node293, node306)
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node219, node307)
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node219, node308)
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("nod_vessel", "old_schax_bang_1")
  Node_AddSon(node308, node309)
  Body_SetCS(node309, MAT_Vector3(2649.358, 1358.961, 349.0178), MAT_Vector3(48.16273, 0, 0))
  Node_ParseIniFile(node309, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node309, 0)
  Body_SetNameKey(node309, -1)
  Body_SetCargoKey(node309, -1, 0)
  Body_SetCargoKey(node309, -1, 1)
  Body_SetCargoKey(node309, -1, 2)
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("nod_vessel", "old_schax_bang_2")
  Node_AddSon(node308, node310)
  Body_SetCS(node310, MAT_Vector3(2669.434, 1277.477, 366.6289), MAT_Vector3(43.15381, 0, 0))
  Node_ParseIniFile(node310, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node310, 0)
  Body_SetNameKey(node310, -1)
  Body_SetCargoKey(node310, -1, 0)
  Body_SetCargoKey(node310, -1, 1)
  Body_SetCargoKey(node310, -1, 2)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("nod_vessel", "old_schax_seed_1")
  Node_AddSon(node308, node311)
  Body_SetCS(node311, MAT_Vector3(2736.747, 1262.125, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node311, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node311, 0)
  Body_SetNameKey(node311, -1)
  Body_SetCargoKey(node311, -1, 0)
  Body_SetCargoKey(node311, -1, 1)
  Body_SetCargoKey(node311, -1, 2)
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("nod_vessel", "old_schax_lighteater_1")
  Node_AddSon(node308, node312)
  Body_SetCS(node312, MAT_Vector3(2631.697, 1269.645, 306.0601), MAT_Vector3(44.8716, 0, 0))
  Node_ParseIniFile(node312, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node312, 0)
  Body_SetNameKey(node312, -1)
  Body_SetCargoKey(node312, -1, 0)
  Body_SetCargoKey(node312, -1, 1)
  Body_SetCargoKey(node312, -1, 2)
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("nod_vessel", "old_schax_bang_3")
  Node_AddSon(node308, node313)
  Body_SetCS(node313, MAT_Vector3(2684.422, 1331.37, 349.0178), MAT_Vector3(48.16273, 0, 0))
  Node_ParseIniFile(node313, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node313, 0)
  Body_SetNameKey(node313, -1)
  Body_SetCargoKey(node313, -1, 0)
  Body_SetCargoKey(node313, -1, 1)
  Body_SetCargoKey(node313, -1, 2)
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("nod_vessel", "old_schax_bang_4")
  Node_AddSon(node308, node314)
  Body_SetCS(node314, MAT_Vector3(2693.576, 1252.76, 366.6289), MAT_Vector3(43.15381, 0, 0))
  Node_ParseIniFile(node314, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node314, 0)
  Body_SetNameKey(node314, -1)
  Body_SetCargoKey(node314, -1, 0)
  Body_SetCargoKey(node314, -1, 1)
  Body_SetCargoKey(node314, -1, 2)
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("nod_vessel", "old_schax_seed_2")
  Node_AddSon(node308, node315)
  Body_SetCS(node315, MAT_Vector3(2757.441, 1244.306, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node315, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node315, 0)
  Body_SetNameKey(node315, -1)
  Body_SetCargoKey(node315, -1, 0)
  Body_SetCargoKey(node315, -1, 1)
  Body_SetCargoKey(node315, -1, 2)
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("nod_vessel", "old_schax_lighteater_2")
  Node_AddSon(node308, node316)
  Body_SetCS(node316, MAT_Vector3(2637.525, 1303.51, 307.538), MAT_Vector3(44.8716, 0, 0))
  Node_ParseIniFile(node316, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node316, 0)
  Body_SetNameKey(node316, -1)
  Body_SetCargoKey(node316, -1, 0)
  Body_SetCargoKey(node316, -1, 1)
  Body_SetCargoKey(node316, -1, 2)
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("nod_vessel", "old_schax_bang_5")
  Node_AddSon(node308, node317)
  Body_SetCS(node317, MAT_Vector3(2711.439, 1308.377, 349.0178), MAT_Vector3(48.16273, 0, 0))
  Node_ParseIniFile(node317, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node317, 0)
  Body_SetNameKey(node317, -1)
  Body_SetCargoKey(node317, -1, 0)
  Body_SetCargoKey(node317, -1, 1)
  Body_SetCargoKey(node317, -1, 2)
  Node_EnterSimulation(node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("nod_vessel", "old_schax_bang_6")
  Node_AddSon(node308, node318)
  Body_SetCS(node318, MAT_Vector3(2716.569, 1226.893, 366.6289), MAT_Vector3(43.15381, 0, 0))
  Node_ParseIniFile(node318, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node318, 0)
  Body_SetNameKey(node318, -1)
  Body_SetCargoKey(node318, -1, 0)
  Body_SetCargoKey(node318, -1, 1)
  Body_SetCargoKey(node318, -1, 2)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("nod_vessel", "old_schax_seed_3")
  Node_AddSon(node308, node319)
  Body_SetCS(node319, MAT_Vector3(2780.434, 1254.078, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node319, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node319, 0)
  Body_SetNameKey(node319, -1)
  Body_SetCargoKey(node319, -1, 0)
  Body_SetCargoKey(node319, -1, 1)
  Body_SetCargoKey(node319, -1, 2)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("nod_vessel", "old_schax_lighteater_3")
  Node_AddSon(node308, node320)
  Body_SetCS(node320, MAT_Vector3(2683.664, 1281.594, 286.9493), MAT_Vector3(44.8716, 0, 0))
  Node_ParseIniFile(node320, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node320, 0)
  Body_SetNameKey(node320, -1)
  Body_SetCargoKey(node320, -1, 0)
  Body_SetCargoKey(node320, -1, 1)
  Body_SetCargoKey(node320, -1, 2)
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("nod_vessel", "old_schax_bang_7")
  Node_AddSon(node308, node321)
  Body_SetCS(node321, MAT_Vector3(2739.605, 1322.748, 349.0178), MAT_Vector3(48.16273, 0, 0))
  Node_ParseIniFile(node321, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node321, 0)
  Body_SetNameKey(node321, -1)
  Body_SetCargoKey(node321, -1, 0)
  Body_SetCargoKey(node321, -1, 1)
  Body_SetCargoKey(node321, -1, 2)
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("nod_vessel", "old_schax_bang_8")
  Node_AddSon(node308, node322)
  Body_SetCS(node322, MAT_Vector3(2701.624, 1199.302, 366.6289), MAT_Vector3(43.15381, 0, 0))
  Node_ParseIniFile(node322, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node322, 0)
  Body_SetNameKey(node322, -1)
  Body_SetCargoKey(node322, -1, 0)
  Body_SetCargoKey(node322, -1, 1)
  Body_SetCargoKey(node322, -1, 2)
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("nod_vessel", "old_schax_seed_4")
  Node_AddSon(node308, node323)
  Body_SetCS(node323, MAT_Vector3(2783.883, 1229.936, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node323, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node323, 0)
  Body_SetNameKey(node323, -1)
  Body_SetCargoKey(node323, -1, 0)
  Body_SetCargoKey(node323, -1, 1)
  Body_SetCargoKey(node323, -1, 2)
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("nod_vessel", "old_schax_lighteater_4")
  Node_AddSon(node308, node324)
  Body_SetCS(node324, MAT_Vector3(2677.169, 1249.949, 314.5057), MAT_Vector3(44.8716, 0, 0))
  Node_ParseIniFile(node324, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node324, 0)
  Body_SetNameKey(node324, -1)
  Body_SetCargoKey(node324, -1, 0)
  Body_SetCargoKey(node324, -1, 1)
  Body_SetCargoKey(node324, -1, 2)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("nod_vessel", "old_schax_bang_9")
  Node_AddSon(node308, node325)
  Body_SetCS(node325, MAT_Vector3(2778.217, 1296.447, 349.0178), MAT_Vector3(48.16273, 0, 0))
  Node_ParseIniFile(node325, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node325, 0)
  Body_SetNameKey(node325, -1)
  Body_SetCargoKey(node325, -1, 0)
  Body_SetCargoKey(node325, -1, 1)
  Body_SetCargoKey(node325, -1, 2)
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("nod_vessel", "old_schax_bang_10")
  Node_AddSon(node308, node326)
  Body_SetCS(node326, MAT_Vector3(2745.272, 1182.235, 366.6289), MAT_Vector3(43.15381, 0, 0))
  Node_ParseIniFile(node326, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node326, 0)
  Body_SetNameKey(node326, -1)
  Body_SetCargoKey(node326, -1, 0)
  Body_SetCargoKey(node326, -1, 1)
  Body_SetCargoKey(node326, -1, 2)
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("nod_vessel", "old_schax_seed_5")
  Node_AddSon(node308, node327)
  Body_SetCS(node327, MAT_Vector3(2812.702, 1230.216, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node327, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node327, 0)
  Body_SetNameKey(node327, -1)
  Body_SetCargoKey(node327, -1, 0)
  Body_SetCargoKey(node327, -1, 1)
  Body_SetCargoKey(node327, -1, 2)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("nod_vessel", "old_schax_seed_6")
  Node_AddSon(node308, node328)
  Body_SetCS(node328, MAT_Vector3(2819.977, 1203.356, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node328, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node328, 0)
  Body_SetNameKey(node328, -1)
  Body_SetCargoKey(node328, -1, 0)
  Body_SetCargoKey(node328, -1, 1)
  Body_SetCargoKey(node328, -1, 2)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("nod_vessel", "old_schax_seed_7")
  Node_AddSon(node308, node329)
  Body_SetCS(node329, MAT_Vector3(2834.806, 1219.025, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node329, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node329, 0)
  Body_SetNameKey(node329, -1)
  Body_SetCargoKey(node329, -1, 0)
  Body_SetCargoKey(node329, -1, 1)
  Body_SetCargoKey(node329, -1, 2)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("nod_vessel", "old_schax_seed_8")
  Node_AddSon(node308, node330)
  Body_SetCS(node330, MAT_Vector3(2857.749, 1178.455, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node330, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node330, 0)
  Body_SetNameKey(node330, -1)
  Body_SetCargoKey(node330, -1, 0)
  Body_SetCargoKey(node330, -1, 1)
  Body_SetCargoKey(node330, -1, 2)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("nod_vessel", "old_schax_seed_9")
  Node_AddSon(node308, node331)
  Body_SetCS(node331, MAT_Vector3(2887.967, 1164.185, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node331, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node331, 0)
  Body_SetNameKey(node331, -1)
  Body_SetCargoKey(node331, -1, 0)
  Body_SetCargoKey(node331, -1, 1)
  Body_SetCargoKey(node331, -1, 2)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("nod_vessel", "old_schax_seed_10")
  Node_AddSon(node308, node332)
  Body_SetCS(node332, MAT_Vector3(2857.469, 1207.553, 328.1047), MAT_Vector3(44.37126, 0, 0))
  Node_ParseIniFile(node332, "osd/old/old_schax_seed.osd")
  Body_SetFriendOrFoeID(node332, 0)
  Body_SetNameKey(node332, -1)
  Body_SetCargoKey(node332, -1, 0)
  Body_SetCargoKey(node332, -1, 1)
  Body_SetCargoKey(node332, -1, 2)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("nod_vessel", "old_schax_lighteater_5")
  Node_AddSon(node308, node333)
  Body_SetCS(node333, MAT_Vector3(2707.107, 1212.456, 318.6809), MAT_Vector3(44.8716, 0, 0))
  Node_ParseIniFile(node333, "osd/old/old_schax_lighteater.osd")
  Body_SetFriendOrFoeID(node333, 0)
  Body_SetNameKey(node333, -1)
  Body_SetCargoKey(node333, -1, 0)
  Body_SetCargoKey(node333, -1, 1)
  Body_SetCargoKey(node333, -1, 2)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("nod_vessel", "old_schax_booster_1")
  Node_AddSon(node308, node334)
  Body_SetCS(node334, MAT_Vector3(2865.322, 1158.575, 350.0189), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node334, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node334, 0)
  Body_SetNameKey(node334, -1)
  Body_SetCargoKey(node334, -1, 0)
  Body_SetCargoKey(node334, -1, 1)
  Body_SetCargoKey(node334, -1, 2)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("nod_vessel", "old_schax_booster_2")
  Node_AddSon(node308, node335)
  Body_SetCS(node335, MAT_Vector3(2875.094, 1128.684, 335.2683), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node335, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node335, 0)
  Body_SetNameKey(node335, -1)
  Body_SetCargoKey(node335, -1, 0)
  Body_SetCargoKey(node335, -1, 1)
  Body_SetCargoKey(node335, -1, 2)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("nod_vessel", "old_schax_booster_3")
  Node_AddSon(node308, node336)
  Body_SetCS(node336, MAT_Vector3(2932.576, 1054.532, 322.1567), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node336, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node336, 0)
  Body_SetNameKey(node336, -1)
  Body_SetCargoKey(node336, -1, 0)
  Body_SetCargoKey(node336, -1, 1)
  Body_SetCargoKey(node336, -1, 2)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("nod_vessel", "old_schax_booster_4")
  Node_AddSon(node308, node337)
  Body_SetCS(node337, MAT_Vector3(3004.716, 1024.283, 328.1662), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node337, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node337, 0)
  Body_SetNameKey(node337, -1)
  Body_SetCargoKey(node337, -1, 0)
  Body_SetCargoKey(node337, -1, 1)
  Body_SetCargoKey(node337, -1, 2)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("nod_vessel", "old_schax_booster_5")
  Node_AddSon(node308, node338)
  Body_SetCS(node338, MAT_Vector3(2920.014, 1156.975, 335.8146), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node338, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node338, 0)
  Body_SetNameKey(node338, -1)
  Body_SetCargoKey(node338, -1, 0)
  Body_SetCargoKey(node338, -1, 1)
  Body_SetCargoKey(node338, -1, 2)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("nod_vessel", "old_schax_booster_6")
  Node_AddSon(node308, node339)
  Body_SetCS(node339, MAT_Vector3(2987.357, 1127.11, 294.8408), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node339, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node339, 0)
  Body_SetNameKey(node339, -1)
  Body_SetCargoKey(node339, -1, 0)
  Body_SetCargoKey(node339, -1, 1)
  Body_SetCargoKey(node339, -1, 2)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("nod_vessel", "old_schax_booster_7")
  Node_AddSon(node308, node340)
  Body_SetCS(node340, MAT_Vector3(3009.564, 1073.819, 298.1187), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node340, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node340, 0)
  Body_SetNameKey(node340, -1)
  Body_SetCargoKey(node340, -1, 0)
  Body_SetCargoKey(node340, -1, 1)
  Body_SetCargoKey(node340, -1, 2)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("nod_vessel", "old_schax_booster_8")
  Node_AddSon(node308, node341)
  Body_SetCS(node341, MAT_Vector3(3084.269, 1008.906, 298.1187), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node341, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node341, 0)
  Body_SetNameKey(node341, -1)
  Body_SetCargoKey(node341, -1, 0)
  Body_SetCargoKey(node341, -1, 1)
  Body_SetCargoKey(node341, -1, 2)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("nod_vessel", "old_schax_booster_9")
  Node_AddSon(node308, node342)
  Body_SetCS(node342, MAT_Vector3(3089.865, 952.1079, 298.1187), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node342, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node342, 0)
  Body_SetNameKey(node342, -1)
  Body_SetCargoKey(node342, -1, 0)
  Body_SetCargoKey(node342, -1, 1)
  Body_SetCargoKey(node342, -1, 2)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_vessel", "old_schax_booster_10")
  Node_AddSon(node308, node343)
  Body_SetCS(node343, MAT_Vector3(3076.435, 979.8075, 298.1187), MAT_Vector3(49.27807, 0, 0))
  Node_ParseIniFile(node343, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node343, 0)
  Body_SetNameKey(node343, -1)
  Body_SetCargoKey(node343, -1, 0)
  Body_SetCargoKey(node343, -1, 1)
  Body_SetCargoKey(node343, -1, 2)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("nod_vessel", "cra_tursas_1")
  Node_AddSon(node308, node344)
  Body_SetCS(node344, MAT_Vector3(2333.840783, 1516.49347, 370), MAT_Vector3(-128.359016, 0, 0))
  Node_ParseIniFile(node344, "osd/cra/cra_tursas.osd")
  Body_SetFriendOrFoeID(node344, 0)
  Body_SetNameKey(node344, -1)
  Body_SetCargoKey(node344, -1, 0)
  Body_SetCargoKey(node344, -1, 1)
  Body_SetCargoKey(node344, -1, 2)
  Node_EnterSimulation(node344)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, E)
SetEnemyMatrixElement(7, 0, F)
SetEnemyMatrixElement(8, 0, F)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, F)
SetEnemyMatrixElement(11, 0, F)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, N)
SetEnemyMatrixElement(6, 1, F)
SetEnemyMatrixElement(7, 1, E)
SetEnemyMatrixElement(8, 1, E)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, E)
SetEnemyMatrixElement(11, 1, E)
SetEnemyMatrixElement(12, 1, E)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, F)
SetEnemyMatrixElement(5, 2, N)
SetEnemyMatrixElement(6, 2, E)
SetEnemyMatrixElement(7, 2, E)
SetEnemyMatrixElement(8, 2, E)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, E)
SetEnemyMatrixElement(11, 2, E)
SetEnemyMatrixElement(12, 2, E)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, E)
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, N)
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
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, F)
SetEnemyMatrixElement(3, 4, N)
SetEnemyMatrixElement(4, 4, F)
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
SetEnemyMatrixElement(15, 4, E)
SetEnemyMatrixElement(0, 5, N)
SetEnemyMatrixElement(1, 5, N)
SetEnemyMatrixElement(2, 5, F)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, F)
SetEnemyMatrixElement(5, 5, N)
SetEnemyMatrixElement(6, 5, E)
SetEnemyMatrixElement(7, 5, E)
SetEnemyMatrixElement(8, 5, E)
SetEnemyMatrixElement(9, 5, N)
SetEnemyMatrixElement(10, 5, E)
SetEnemyMatrixElement(11, 5, E)
SetEnemyMatrixElement(12, 5, E)
SetEnemyMatrixElement(13, 5, N)
SetEnemyMatrixElement(14, 5, N)
SetEnemyMatrixElement(15, 5, E)
SetEnemyMatrixElement(0, 6, N)
SetEnemyMatrixElement(1, 6, F)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, F)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, E)
SetEnemyMatrixElement(6, 6, F)
SetEnemyMatrixElement(7, 6, E)
SetEnemyMatrixElement(8, 6, E)
SetEnemyMatrixElement(9, 6, N)
SetEnemyMatrixElement(10, 6, E)
SetEnemyMatrixElement(11, 6, E)
SetEnemyMatrixElement(12, 6, E)
SetEnemyMatrixElement(13, 6, N)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, N)
SetEnemyMatrixElement(0, 7, F)
SetEnemyMatrixElement(1, 7, E)
SetEnemyMatrixElement(2, 7, E)
SetEnemyMatrixElement(3, 7, E)
SetEnemyMatrixElement(4, 7, E)
SetEnemyMatrixElement(5, 7, E)
SetEnemyMatrixElement(6, 7, E)
SetEnemyMatrixElement(7, 7, F)
SetEnemyMatrixElement(8, 7, F)
SetEnemyMatrixElement(9, 7, N)
SetEnemyMatrixElement(10, 7, F)
SetEnemyMatrixElement(11, 7, F)
SetEnemyMatrixElement(12, 7, N)
SetEnemyMatrixElement(13, 7, N)
SetEnemyMatrixElement(14, 7, N)
SetEnemyMatrixElement(15, 7, F)
SetEnemyMatrixElement(0, 8, F)
SetEnemyMatrixElement(1, 8, E)
SetEnemyMatrixElement(2, 8, F)
SetEnemyMatrixElement(3, 8, N)
SetEnemyMatrixElement(4, 8, N)
SetEnemyMatrixElement(5, 8, E)
SetEnemyMatrixElement(6, 8, E)
SetEnemyMatrixElement(7, 8, F)
SetEnemyMatrixElement(8, 8, F)
SetEnemyMatrixElement(9, 8, N)
SetEnemyMatrixElement(10, 8, F)
SetEnemyMatrixElement(11, 8, F)
SetEnemyMatrixElement(12, 8, N)
SetEnemyMatrixElement(13, 8, N)
SetEnemyMatrixElement(14, 8, N)
SetEnemyMatrixElement(15, 8, F)
SetEnemyMatrixElement(0, 9, F)
SetEnemyMatrixElement(1, 9, N)
SetEnemyMatrixElement(2, 9, N)
SetEnemyMatrixElement(3, 9, N)
SetEnemyMatrixElement(4, 9, N)
SetEnemyMatrixElement(5, 9, N)
SetEnemyMatrixElement(6, 9, N)
SetEnemyMatrixElement(7, 9, F)
SetEnemyMatrixElement(8, 9, F)
SetEnemyMatrixElement(9, 9, N)
SetEnemyMatrixElement(10, 9, N)
SetEnemyMatrixElement(11, 9, N)
SetEnemyMatrixElement(12, 9, N)
SetEnemyMatrixElement(13, 9, N)
SetEnemyMatrixElement(14, 9, N)
SetEnemyMatrixElement(15, 9, F)
SetEnemyMatrixElement(0, 10, F)
SetEnemyMatrixElement(1, 10, E)
SetEnemyMatrixElement(2, 10, E)
SetEnemyMatrixElement(3, 10, N)
SetEnemyMatrixElement(4, 10, N)
SetEnemyMatrixElement(5, 10, E)
SetEnemyMatrixElement(6, 10, E)
SetEnemyMatrixElement(7, 10, F)
SetEnemyMatrixElement(8, 10, F)
SetEnemyMatrixElement(9, 10, N)
SetEnemyMatrixElement(10, 10, F)
SetEnemyMatrixElement(11, 10, F)
SetEnemyMatrixElement(12, 10, N)
SetEnemyMatrixElement(13, 10, N)
SetEnemyMatrixElement(14, 10, N)
SetEnemyMatrixElement(15, 10, F)
SetEnemyMatrixElement(0, 11, F)
SetEnemyMatrixElement(1, 11, E)
SetEnemyMatrixElement(2, 11, E)
SetEnemyMatrixElement(3, 11, N)
SetEnemyMatrixElement(4, 11, N)
SetEnemyMatrixElement(5, 11, E)
SetEnemyMatrixElement(6, 11, E)
SetEnemyMatrixElement(7, 11, F)
SetEnemyMatrixElement(8, 11, F)
SetEnemyMatrixElement(9, 11, N)
SetEnemyMatrixElement(10, 11, F)
SetEnemyMatrixElement(11, 11, F)
SetEnemyMatrixElement(12, 11, N)
SetEnemyMatrixElement(13, 11, N)
SetEnemyMatrixElement(14, 11, N)
SetEnemyMatrixElement(15, 11, F)
SetEnemyMatrixElement(0, 12, N)
SetEnemyMatrixElement(1, 12, E)
SetEnemyMatrixElement(2, 12, E)
SetEnemyMatrixElement(3, 12, N)
SetEnemyMatrixElement(4, 12, N)
SetEnemyMatrixElement(5, 12, E)
SetEnemyMatrixElement(6, 12, E)
SetEnemyMatrixElement(7, 12, F)
SetEnemyMatrixElement(8, 12, F)
SetEnemyMatrixElement(9, 12, N)
SetEnemyMatrixElement(10, 12, N)
SetEnemyMatrixElement(11, 12, N)
SetEnemyMatrixElement(12, 12, F)
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
SetEnemyMatrixElement(0, 15, F)
SetEnemyMatrixElement(1, 15, N)
SetEnemyMatrixElement(2, 15, E)
SetEnemyMatrixElement(3, 15, N)
SetEnemyMatrixElement(4, 15, E)
SetEnemyMatrixElement(5, 15, E)
SetEnemyMatrixElement(6, 15, N)
SetEnemyMatrixElement(7, 15, F)
SetEnemyMatrixElement(8, 15, F)
SetEnemyMatrixElement(9, 15, F)
SetEnemyMatrixElement(10, 15, F)
SetEnemyMatrixElement(11, 15, F)
SetEnemyMatrixElement(12, 15, N)
SetEnemyMatrixElement(13, 15, N)
SetEnemyMatrixElement(14, 15, N)
SetEnemyMatrixElement(15, 15, F)
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
                                                                                    if not (o1512.Value == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
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
                                                                                    if not (o1513.Value == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
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
                                                                                    if not (o1514.Value == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o336, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o336, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o336, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o336, "Code4")
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
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o373, "Code4")
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
S_o410 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o410, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o410, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o410, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o410, "Code4")
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
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o447, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o447, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o447, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o451.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
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
  if not (o1487.Value ~= True) then
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
o451 = { [nil] = {}, Start = function()
  o451["Value"] = False
  o1482.StartCalculate()
end, SetStateValue = function(L0)
  if not (o451.Value == L0) then
    o451["Value"] = L0
    o1482.ReCalculate()
  end
end }
S_o483 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o483, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o483, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o483, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o483, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o483, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o483, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o484.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o484 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o484.SetStateValue(o484.GetCalculated())
end, StartCalculate = function()
  o484["Value"] = o484.GetCalculated()
end, SetStateValue = function(L0)
  if not (o484.Value == L0) then
    o484["Value"] = L0
    CallFunction(o483, "ProcesseStateChange")
  end
end }
S_o519 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o519, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o519, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o519, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o519, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o519, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o519, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o523.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o520.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o520 = { [nil] = {}, GetCalculated = function()
  if not (o1487.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o520.SetStateValue(o520.GetCalculated())
end, StartCalculate = function()
  o520["Value"] = o520.GetCalculated()
end, SetStateValue = function(L0)
  if not (o520.Value == L0) then
    o520["Value"] = L0
    CallFunction(o519, "ProcesseStateChange")
  end
end }
o523 = { [nil] = {}, Start = function()
  o523["Value"] = False
  o1482.StartCalculate()
end, SetStateValue = function(L0)
  if not (o523.Value == L0) then
    o523["Value"] = L0
    o1482.ReCalculate()
  end
end }
S_o555 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o555, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o555, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o555, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o555, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o555, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o555, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o556.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o556 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o556.SetStateValue(o556.GetCalculated())
end, StartCalculate = function()
  o556["Value"] = o556.GetCalculated()
end, SetStateValue = function(L0)
  if not (o556.Value == L0) then
    o556["Value"] = L0
    CallFunction(o555, "ProcesseStateChange")
  end
end }
S_o591 = { [nil] = {}, Start = function(L0)

end }
S_o625 = { [nil] = {}, Start = function(L0)

end }
S_o659 = { [nil] = {}, Start = function(L0)

end }
S_o693 = { [nil] = {}, Start = function(L0)

end }
S_o727 = { [nil] = {}, Start = function(L0)

end }
S_o761 = { [nil] = {}, Start = function(L0)

end }
S_o795 = { [nil] = {}, Start = function(L0)

end }
S_o829 = { [nil] = {}, Start = function(L0)

end }
S_o863 = { [nil] = {}, Start = function(L0)

end }
S_o897 = { [nil] = {}, Start = function(L0)

end }
S_o931 = { [nil] = {}, Start = function(L0)

end }
S_o965 = { [nil] = {}, Start = function(L0)

end }
S_o999 = { [nil] = {}, Start = function(L0)

end }
S_o1033 = { [nil] = {}, Start = function(L0)

end }
S_o1067 = { [nil] = {}, Start = function(L0)

end }
S_o1101 = { [nil] = {}, Start = function(L0)

end }
S_o1135 = { [nil] = {}, Start = function(L0)

end }
S_o1169 = { [nil] = {}, Start = function(L0)

end }
S_o1203 = { [nil] = {}, Start = function(L0)

end }
S_o1237 = { [nil] = {}, Start = function(L0)

end }
S_o1271 = { [nil] = {}, Start = function(L0)

end }
S_o1305 = { [nil] = {}, Start = function(L0)

end }
S_o1339 = { [nil] = {}, Start = function(L0)

end }
S_o1373 = { [nil] = {}, Start = function(L0)

end }
S_o1407 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1407, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1407, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1407, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1407, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1407, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1407, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetKineticShield(L0.Node, 0, 0.001)
  CallFunction(o1407, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1407, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1407, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1407, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o1414.SetStateValue(L1)
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
o1414 = { [nil] = {}, Start = function()
  o1414["Value"] = False
  o1480.StartCalculate()
  o1484.StartCalculate()
  o5977.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1414.Value == L0) then
    o1414["Value"] = L0
    o1480.ReCalculate()
    o1484.ReCalculate()
    o5977.ReCalculate()
  end
end }
S_o1446 = { [nil] = {}, Start = function(L0)

end }
S_o1447 = { [nil] = {}, Start = function(L0)

end }
S_o1448 = { [nil] = {}, Start = function(L0)

end }
S_o1449 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1449, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1449, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1449, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1449, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1449, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1449, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1454.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1450.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1450 = { [nil] = {}, GetCalculated = function()
  if not (o1471.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1450.SetStateValue(o1450.GetCalculated())
end, StartCalculate = function()
  o1450["Value"] = o1450.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1450.Value == L0) then
    o1450["Value"] = L0
    CallFunction(o1449, "ProcesseStateChange")
  end
end }
o1454 = { [nil] = {}, Start = function()
  o1454["Value"] = False
  o1474.StartCalculate()
  o1519.StartCalculate()
  o5542.StartCalculate()
  o5946.StartCalculate()
  o5957.StartCalculate()
  o5970.StartCalculate()
  o6011.StartCalculate()
  o6019.StartCalculate()
  o6067.StartCalculate()
  o6115.StartCalculate()
  o6163.StartCalculate()
  o6211.StartCalculate()
  o6259.StartCalculate()
  o6307.StartCalculate()
  o6355.StartCalculate()
  o6403.StartCalculate()
  o6451.StartCalculate()
  o6499.StartCalculate()
  o6547.StartCalculate()
  o6595.StartCalculate()
  o6643.StartCalculate()
  o6691.StartCalculate()
  o6739.StartCalculate()
  o6787.StartCalculate()
  o6835.StartCalculate()
  o6883.StartCalculate()
  o6931.StartCalculate()
  o6979.StartCalculate()
  o7027.StartCalculate()
  o7075.StartCalculate()
  o7123.StartCalculate()
  o7171.StartCalculate()
  o7220.StartCalculate()
  o7269.StartCalculate()
  o7318.StartCalculate()
  o7367.StartCalculate()
  o7416.StartCalculate()
  o7465.StartCalculate()
  o7514.StartCalculate()
  o7563.StartCalculate()
  o7612.StartCalculate()
  o7661.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1454.Value == L0) then
    o1454["Value"] = L0
    o1474.ReCalculate()
    o1519.ReCalculate()
    o5542.ReCalculate()
    o5946.ReCalculate()
    o5957.ReCalculate()
    o5970.ReCalculate()
    o6011.ReCalculate()
    o6019.ReCalculate()
    o6067.ReCalculate()
    o6115.ReCalculate()
    o6163.ReCalculate()
    o6211.ReCalculate()
    o6259.ReCalculate()
    o6307.ReCalculate()
    o6355.ReCalculate()
    o6403.ReCalculate()
    o6451.ReCalculate()
    o6499.ReCalculate()
    o6547.ReCalculate()
    o6595.ReCalculate()
    o6643.ReCalculate()
    o6691.ReCalculate()
    o6739.ReCalculate()
    o6787.ReCalculate()
    o6835.ReCalculate()
    o6883.ReCalculate()
    o6931.ReCalculate()
    o6979.ReCalculate()
    o7027.ReCalculate()
    o7075.ReCalculate()
    o7123.ReCalculate()
    o7171.ReCalculate()
    o7220.ReCalculate()
    o7269.ReCalculate()
    o7318.ReCalculate()
    o7367.ReCalculate()
    o7416.ReCalculate()
    o7465.ReCalculate()
    o7514.ReCalculate()
    o7563.ReCalculate()
    o7612.ReCalculate()
    o7661.ReCalculate()
  end
end }
S_o1455 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_scalarhowitzer", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_hammerhead", 9)
  Body_AddItem(L0.Node, "torpedo_bigbang2", 3)
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "ammo_shell", 2000)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "device_booster", 999)
  CallFunction(o1455, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
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
o1460 = { [nil] = {}, Start = function()
  o1460["Value"] = False
  o1461.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1460.Value == L0) then
    o1460["Value"] = L0
    o1461.ReCalculate()
  end
end }
o1461 = { [nil] = {}, GetCalculated = function()
  if not (o1460.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1461.SetStateValue(o1461.GetCalculated())
end, StartCalculate = function()
  o1461["Value"] = o1461.GetCalculated()
  o1462.StartCalculate()
  o1463.StartCalculate()
  o2398.StartCalculate()
  o2446.StartCalculate()
  o2494.StartCalculate()
  o2542.StartCalculate()
  o2590.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("schax group 4 in")
end, SetStateValue = function(L0)
  if not (o1461.Value == L0) then
    DelayedFunction(118, o1461, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1461.Value == L0) then
    o1461["Value"] = L0
    o1462.ReCalculate()
    o1463.ReCalculate()
    o2398.ReCalculate()
    o2446.ReCalculate()
    o2494.ReCalculate()
    o2542.ReCalculate()
    o2590.ReCalculate()
    if not (L0 ~= 1) then
      o1461.ChangeTo1()
    end
  end
end }
o1462 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1462.SetStateValue(o1462.GetCalculated())
end, StartCalculate = function()
  o1462["Value"] = o1462.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1093)
  SED_SetTaskTextKey(1338, -1, -1)
end, SetStateValue = function(L0)
  if not (o1462.Value == L0) then
    DelayedFunction(26, o1462, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1462.Value == L0) then
    o1462["Value"] = L0
    if not (L0 ~= 1) then
      o1462.ChangeTo1()
    end
  end
end }
o1463 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1463.SetStateValue(o1463.GetCalculated())
end, StartCalculate = function()
  o1463["Value"] = o1463.GetCalculated()
  o2639.StartCalculate()
  o2693.StartCalculate()
  o2744.StartCalculate()
  o2794.StartCalculate()
  o2844.StartCalculate()
  o2893.StartCalculate()
  o2942.StartCalculate()
  o2991.StartCalculate()
  o3040.StartCalculate()
  o3089.StartCalculate()
  o3138.StartCalculate()
  o3187.StartCalculate()
  o3237.StartCalculate()
  o3288.StartCalculate()
  o6007.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("crawler group 1 in")
end, SetStateValue = function(L0)
  if not (o1463.Value == L0) then
    o1463["Value"] = L0
    o2639.ReCalculate()
    o2693.ReCalculate()
    o2744.ReCalculate()
    o2794.ReCalculate()
    o2844.ReCalculate()
    o2893.ReCalculate()
    o2942.ReCalculate()
    o2991.ReCalculate()
    o3040.ReCalculate()
    o3089.ReCalculate()
    o3138.ReCalculate()
    o3187.ReCalculate()
    o3237.ReCalculate()
    o3288.ReCalculate()
    o6007.ReCalculate()
    if not (L0 ~= 1) then
      o1463.ChangeTo1()
    end
  end
end }
o1464 = { [nil] = {}, GetCalculated = function()
  if not (o2944.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1464.SetStateValue(o1464.GetCalculated())
end, StartCalculate = function()
  o1464["Value"] = o1464.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1095)
end, SetStateValue = function(L0)
  if not (o1464.Value == L0) then
    o1464["Value"] = L0
    if not (L0 ~= 1) then
      o1464.ChangeTo1()
    end
  end
end }
o1465 = { [nil] = {}, Start = function()
  o1465["Value"] = False
  o1466.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1465.Value == L0) then
    o1465["Value"] = L0
    o1466.ReCalculate()
  end
end }
o1466 = { [nil] = {}, GetCalculated = function()
  if not (o1465.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1466.SetStateValue(o1466.GetCalculated())
end, StartCalculate = function()
  o1466["Value"] = o1466.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1094)
end, SetStateValue = function(L0)
  if not (o1466.Value == L0) then
    o1466["Value"] = L0
    if not (L0 ~= 1) then
      o1466.ChangeTo1()
    end
  end
end }
o1468 = { [nil] = {}, GetCalculated = function()
  if not (o1471.Value ~= True) then
    if not (False ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1468.SetStateValue(o1468.GetCalculated())
end, StartCalculate = function()
  o1468["Value"] = o1468.GetCalculated()
  o1469.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1187)
end, SetStateValue = function(L0)
  if not (o1468.Value == L0) then
    o1468["Value"] = L0
    o1469.ReCalculate()
    if not (L0 ~= 1) then
      o1468.ChangeTo1()
    end
  end
end }
o1469 = { [nil] = {}, GetCalculated = function()
  if not (o1471.Value ~= True) then
    if not (False ~= False) then
      if not (o1468.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1469.SetStateValue(o1469.GetCalculated())
end, StartCalculate = function()
  o1469["Value"] = o1469.GetCalculated()
  o1470.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1189)
end, SetStateValue = function(L0)
  if not (o1469.Value == L0) then
    DelayedFunction(15, o1469, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1469.Value == L0) then
    o1469["Value"] = L0
    o1470.ReCalculate()
    if not (L0 ~= 1) then
      o1469.ChangeTo1()
    end
  end
end }
o1470 = { [nil] = {}, GetCalculated = function()
  if not (o1471.Value ~= True) then
    if not (False ~= False) then
      if not (o1469.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1470.SetStateValue(o1470.GetCalculated())
end, StartCalculate = function()
  o1470["Value"] = o1470.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1193)
end, SetStateValue = function(L0)
  if not (o1470.Value == L0) then
    DelayedFunction(15, o1470, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1470.Value == L0) then
    o1470["Value"] = L0
    if not (L0 ~= 1) then
      o1470.ChangeTo1()
    end
  end
end }
o1471 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1471.SetStateValue(o1471.GetCalculated())
end, StartCalculate = function()
  o1471["Value"] = o1471.GetCalculated()
  o1450.StartCalculate()
  o1468.StartCalculate()
  o1469.StartCalculate()
  o1470.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1667.Node, o1455.Node, 1096)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1188)
  Game_SetWayPoint(GetGameNode(), o5591.Node)
end, SetStateValue = function(L0)
  if not (o1471.Value == L0) then
    DelayedFunction(1.5, o1471, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1471.Value == L0) then
    o1471["Value"] = L0
    o1450.ReCalculate()
    o1468.ReCalculate()
    o1469.ReCalculate()
    o1470.ReCalculate()
    if not (L0 ~= 1) then
      o1471.ChangeTo1()
    end
  end
end }
o1472 = { [nil] = {}, GetCalculated = function()
  if not (o2700.Value ~= True) then
    if not (o2751.Value ~= True) then
      if not (o2801.Value ~= True) then
        if not (o2851.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1472.SetStateValue(o1472.GetCalculated())
end, StartCalculate = function()
  o1472["Value"] = o1472.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("ALL CRAWLER BOMBER JOB FNISHED")
  CallFunction(o1407, "Code4")
end, SetStateValue = function(L0)
  if not (o1472.Value == L0) then
    o1472["Value"] = L0
    if not (L0 ~= 1) then
      o1472.ChangeTo1()
    end
  end
end }
o1473 = { [nil] = {}, GetCalculated = function()
  if not (o2706.Value ~= True) then
    if not (o2757.Value ~= True) then
      if not (o2807.Value ~= True) then
        if not (o2857.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1473.SetStateValue(o1473.GetCalculated())
end, StartCalculate = function()
  o1473["Value"] = o1473.GetCalculated()
  o5492.StartCalculate()
  o6001.StartCalculate()
  o6009.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("ALL CRAWLER BOMBER DOWN")
end, SetStateValue = function(L0)
  if not (o1473.Value == L0) then
    o1473["Value"] = L0
    o5492.ReCalculate()
    o6001.ReCalculate()
    o6009.ReCalculate()
    if not (L0 ~= 1) then
      o1473.ChangeTo1()
    end
  end
end }
o1474 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1474.SetStateValue(o1474.GetCalculated())
end, StartCalculate = function()
  o1474["Value"] = o1474.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1474.Value == L0) then
    o1474["Value"] = L0
  end
end }
o1475 = { [nil] = {}, Start = function()
  o1475["Value"] = False
  o1476.StartCalculate()
  o1477.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1475.Value == L0) then
    o1475["Value"] = L0
    o1476.ReCalculate()
    o1477.ReCalculate()
  end
end }
o1476 = { [nil] = {}, GetCalculated = function()
  if not (o1475.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1476.SetStateValue(o1476.GetCalculated())
end, StartCalculate = function()
  o1476["Value"] = o1476.GetCalculated()
  o5976.StartCalculate()
  o5981.StartCalculate()
  o6013.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("MissionLost: Forneus reached FusionPowerPlant to early")
end, SetStateValue = function(L0)
  if not (o1476.Value == L0) then
    o1476["Value"] = L0
    o5976.ReCalculate()
    o5981.ReCalculate()
    o6013.ReCalculate()
    if not (L0 ~= 1) then
      o1476.ChangeTo1()
    end
  end
end }
o1477 = { [nil] = {}, GetCalculated = function()
  if not (o5560.Value ~= True) then
    if not (o1475.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1477.SetStateValue(o1477.GetCalculated())
end, StartCalculate = function()
  o1477["Value"] = o1477.GetCalculated()
  o484.StartCalculate()
  o556.StartCalculate()
  o2012.StartCalculate()
  o2301.StartCalculate()
  o2350.StartCalculate()
  o4682.StartCalculate()
  o4731.StartCalculate()
  o4779.StartCalculate()
  o4827.StartCalculate()
  o4876.StartCalculate()
  o4923.StartCalculate()
  o4972.StartCalculate()
  o5021.StartCalculate()
  o5069.StartCalculate()
  o5117.StartCalculate()
  o5165.StartCalculate()
  o5214.StartCalculate()
  o5262.StartCalculate()
  o5309.StartCalculate()
  o5357.StartCalculate()
  o5598.StartCalculate()
  o5646.StartCalculate()
  o5695.StartCalculate()
  o5746.StartCalculate()
  o5798.StartCalculate()
  o5850.StartCalculate()
  o5986.StartCalculate()
  o5991.StartCalculate()
  o5996.StartCalculate()
  o6013.StartCalculate()
  o6014.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Objective_OK: Forneus blinded")
  CallFunction(o5539, "Code29")
end, SetStateValue = function(L0)
  if not (o1477.Value == L0) then
    o1477["Value"] = L0
    o484.ReCalculate()
    o556.ReCalculate()
    o2012.ReCalculate()
    o2301.ReCalculate()
    o2350.ReCalculate()
    o4682.ReCalculate()
    o4731.ReCalculate()
    o4779.ReCalculate()
    o4827.ReCalculate()
    o4876.ReCalculate()
    o4923.ReCalculate()
    o4972.ReCalculate()
    o5021.ReCalculate()
    o5069.ReCalculate()
    o5117.ReCalculate()
    o5165.ReCalculate()
    o5214.ReCalculate()
    o5262.ReCalculate()
    o5309.ReCalculate()
    o5357.ReCalculate()
    o5598.ReCalculate()
    o5646.ReCalculate()
    o5695.ReCalculate()
    o5746.ReCalculate()
    o5798.ReCalculate()
    o5850.ReCalculate()
    o5986.ReCalculate()
    o5991.ReCalculate()
    o5996.ReCalculate()
    o6013.ReCalculate()
    o6014.ReCalculate()
    if not (L0 ~= 1) then
      o1477.ChangeTo1()
    end
  end
end }
o1478 = { [nil] = {}, GetCalculated = function()
  if not (o5602.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5650.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5699.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5751.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5803.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5855.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 4) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1478.SetStateValue(o1478.GetCalculated())
end, StartCalculate = function()
  o1478["Value"] = o1478.GetCalculated()
  o1484.StartCalculate()
  o1486.StartCalculate()
  o1771.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1478.Value == L0) then
    o1478["Value"] = L0
    o1484.ReCalculate()
    o1486.ReCalculate()
    o1771.ReCalculate()
  end
end }
o1479 = { [nil] = {}, GetCalculated = function()
  if not (o5601.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5649.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5698.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5750.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5802.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o5854.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1479.SetStateValue(o1479.GetCalculated())
end, StartCalculate = function()
  o1479["Value"] = o1479.GetCalculated()
  o1512.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1479.Value == L0) then
    o1479["Value"] = L0
    o1512.ReCalculate()
  end
end }
o1480 = { [nil] = {}, GetCalculated = function()
  if not (o1414.Value ~= True) then
    if not (o1481.Value ~= False) then
      if not (o1482.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1480.SetStateValue(o1480.GetCalculated())
end, StartCalculate = function()
  o1480["Value"] = o1480.GetCalculated()
  o1513.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("MissionLost")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o1480.Value == L0) then
    DelayedFunction(0.258, o1480, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1480.Value == L0) then
    o1480["Value"] = L0
    o1513.ReCalculate()
    if not (L0 ~= 1) then
      o1480.ChangeTo1()
    end
  end
end }
o1481 = { [nil] = {}, GetCalculated = function()
  if not (o5562.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1481.SetStateValue(o1481.GetCalculated())
end, StartCalculate = function()
  o1481["Value"] = o1481.GetCalculated()
  o1480.StartCalculate()
  o1482.StartCalculate()
  o1484.StartCalculate()
  o1570.StartCalculate()
  o1620.StartCalculate()
  o1670.StartCalculate()
  o1720.StartCalculate()
  o2010.StartCalculate()
  o2299.StartCalculate()
  o2348.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Objective_OK: Player survived")
  SendRadioMessageTake(o1667.Node, o1455.Node, 1196)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1197)
  SetEnemyMatrixElement(7, 9, E)
  SED_SetTaskTextKey(1345, -1, -1)
  o1487.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o1481.Value == L0) then
    DelayedFunction(60, o1481, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1481.Value == L0) then
    o1481["Value"] = L0
    o1480.ReCalculate()
    o1482.ReCalculate()
    o1484.ReCalculate()
    o1570.ReCalculate()
    o1620.ReCalculate()
    o1670.ReCalculate()
    o1720.ReCalculate()
    o2010.ReCalculate()
    o2299.ReCalculate()
    o2348.ReCalculate()
    if not (L0 ~= 1) then
      o1481.ChangeTo1()
    end
  end
end }
o1482 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    if not (o451.Value ~= True) then
      if not (o523.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1482.SetStateValue(o1482.GetCalculated())
end, StartCalculate = function()
  o1482["Value"] = o1482.GetCalculated()
  o1480.StartCalculate()
  o1483.StartCalculate()
  o1484.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Objective_OK: Gravitation Controls down")
  Game_SetWayPoint(GetGameNode(), o5897.Node)
  SED_SetTaskTextKey(1346, -1, -1)
end, SetStateValue = function(L0)
  if not (o1482.Value == L0) then
    o1482["Value"] = L0
    o1480.ReCalculate()
    o1483.ReCalculate()
    o1484.ReCalculate()
    if not (L0 ~= 1) then
      o1482.ChangeTo1()
    end
  end
end }
o1483 = { [nil] = {}, GetCalculated = function()
  if not (o1482.Value ~= True) then
    if not (o5900.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1483.SetStateValue(o1483.GetCalculated())
end, StartCalculate = function()
  o1483["Value"] = o1483.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o1407, "Code8")
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o1483.Value == L0) then
    o1483["Value"] = L0
    if not (L0 ~= 1) then
      o1483.ChangeTo1()
    end
  end
end }
o1484 = { [nil] = {}, GetCalculated = function()
  if not (o1414.Value ~= True) then
    if not (o1478.Value ~= True) then
      if not (o1481.Value ~= True) then
        if not (o1482.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1484.SetStateValue(o1484.GetCalculated())
end, StartCalculate = function()
  o1484["Value"] = o1484.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("MissionLost: Player not safe")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o1484.Value == L0) then
    DelayedFunction(35, o1484, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1484.Value == L0) then
    o1484["Value"] = L0
    if not (L0 ~= 1) then
      o1484.ChangeTo1()
    end
  end
end }
o1485 = { [nil] = {}, Start = function()
  o1485["Value"] = False
  o1471.StartCalculate()
  o6010.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1485.Value == L0) then
    o1485["Value"] = L0
    o1471.ReCalculate()
    o6010.ReCalculate()
  end
end }
o1486 = { [nil] = {}, GetCalculated = function()
  if not (o1478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1486.SetStateValue(o1486.GetCalculated())
end, StartCalculate = function()
  o1486["Value"] = o1486.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1455.Node, o1455.Node, 1112)
end, SetStateValue = function(L0)
  if not (o1486.Value == L0) then
    o1486["Value"] = L0
    if not (L0 ~= 1) then
      o1486.ChangeTo1()
    end
  end
end }
o1487 = { [nil] = {}, Start = function()
  o1487["Value"] = False
  o448.StartCalculate()
  o520.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1487.Value == L0) then
    o1487["Value"] = L0
    o448.ReCalculate()
    o520.ReCalculate()
  end
end }
o1512 = { [nil] = {}, GetCalculated = function()
  if not (o1479.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1512.SetStateValue(o1512.GetCalculated())
end, StartCalculate = function()
  o1512["Value"] = o1512.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("MissionLost: EscapeMission")
end, SetStateValue = function(L0)
  if not (o1512.Value == L0) then
    o1512["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o1512.ChangeTo1()
    end
  end
end }
o1513 = { [nil] = {}, GetCalculated = function()
  if not (o1480.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1513.SetStateValue(o1513.GetCalculated())
end, StartCalculate = function()
  o1513["Value"] = o1513.GetCalculated()
  o27.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("MissionLost: FusionPowerPlant down to early")
end, SetStateValue = function(L0)
  if not (o1513.Value == L0) then
    o1513["Value"] = L0
    o27.ReCalculate()
    if not (L0 ~= 1) then
      o1513.ChangeTo1()
    end
  end
end }
o1514 = { [nil] = {}, GetCalculated = function()
  if not (o1774.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1514.SetStateValue(o1514.GetCalculated())
end, StartCalculate = function()
  o1514["Value"] = o1514.GetCalculated()
  o28.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("MissionLost: CreoleGirl down")
end, SetStateValue = function(L0)
  if not (o1514.Value == L0) then
    o1514["Value"] = L0
    o28.ReCalculate()
    if not (L0 ~= 1) then
      o1514.ChangeTo1()
    end
  end
end }
S_o1516 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1516, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1516, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1516, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1516, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1516, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1516, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o1516, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o1516, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1519.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1519 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1519.SetStateValue(o1519.GetCalculated())
end, StartCalculate = function()
  o1519["Value"] = o1519.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1519.Value == L0) then
    o1519["Value"] = L0
    CallFunction(o1516, "ProcesseStateChange")
  end
end }
S_o1565 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1565, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1565, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1565, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1565, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/ChakaPath_1", 1, 1 } }("Code6")
  else
    CallFunction(o1565, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Forneus_AttackArea", "/Scenario_Dynamic/Navigation/Forneus_AttackArea", "/Scenario_Dynamic/Navigation/Forneus_AttackArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o1565, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o1565, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1565, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code10")
  else
    CallFunction(o1565, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/EscapePath_1", "pos_4", "pos_4", 1, 1 } }("Code11")
  else
    CallFunction(o1565, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code12")
  else
    CallFunction(o1565, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1568.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o1570.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1568 = { [nil] = {}, GetCalculated = function()
  if not (o5955.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1568.SetStateValue(o1568.GetCalculated())
end, StartCalculate = function()
  o1568["Value"] = o1568.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1568.Value == L0) then
    o1568["Value"] = L0
    CallFunction(o1565, "ProcesseStateChange")
  end
end }
o1570 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1570.SetStateValue(o1570.GetCalculated())
end, StartCalculate = function()
  o1570["Value"] = o1570.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1570.Value == L0) then
    o1570["Value"] = L0
    CallFunction(o1565, "ProcesseStateChange")
  end
end }
S_o1617 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1617, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1617, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1617, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1617, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1617, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1617, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o1617, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/EscapePath_1", "pos_4", "pos_4", 1, 1 } }("Code9")
  else
    CallFunction(o1617, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1617, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1620.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1620 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1620.SetStateValue(o1620.GetCalculated())
end, StartCalculate = function()
  o1620["Value"] = o1620.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1620.Value == L0) then
    o1620["Value"] = L0
    CallFunction(o1617, "ProcesseStateChange")
  end
end }
S_o1667 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1667, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1667, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1667, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1667, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1667, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1667, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o1667, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/EscapePath_1", "pos_4", "pos_4", 1, 1 } }("Code8")
  else
    CallFunction(o1667, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o1667, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1670.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1670 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1670.SetStateValue(o1670.GetCalculated())
end, StartCalculate = function()
  o1670["Value"] = o1670.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1670.Value == L0) then
    o1670["Value"] = L0
    CallFunction(o1667, "ProcesseStateChange")
  end
end }
S_o1717 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1717, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1717, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1717, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1717, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1717, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1717, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o1717, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/EscapePath_1", "pos_4", "pos_4", 1, 1 } }("Code9")
  else
    CallFunction(o1717, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1717, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1720.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1720 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1720.SetStateValue(o1720.GetCalculated())
end, StartCalculate = function()
  o1720["Value"] = o1720.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1720.Value == L0) then
    o1720["Value"] = L0
    CallFunction(o1717, "ProcesseStateChange")
  end
end }
S_o1767 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1767, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1767, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1767, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o1767, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1767, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1767, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/CreoleGirl_EscapePath", "pos_1", 25 } }("Code8")
  else
    CallFunction(o1767, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CreoleGirl_EscapePath", 1, 1 } }("Code9")
  else
    CallFunction(o1767, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1767, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o1774.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1771.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1771 = { [nil] = {}, GetCalculated = function()
  if not (o1478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1771.SetStateValue(o1771.GetCalculated())
end, StartCalculate = function()
  o1771["Value"] = o1771.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1771.Value == L0) then
    o1771["Value"] = L0
    CallFunction(o1767, "ProcesseStateChange")
  end
end }
o1774 = { [nil] = {}, Start = function()
  o1774["Value"] = False
  o1514.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1774.Value == L0) then
    o1774["Value"] = L0
    o1514.ReCalculate()
  end
end }
S_o1817 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1817, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1817, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1817, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o1817, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1817, "Code5")
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
      if not (o1818.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1818 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1818.SetStateValue(o1818.GetCalculated())
end, StartCalculate = function()
  o1818["Value"] = o1818.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1818.Value == L0) then
    o1818["Value"] = L0
    CallFunction(o1817, "ProcesseStateChange")
  end
end }
S_o1865 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1865, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1865, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1865, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o1865, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1865, "Code5")
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
      if not (o1866.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1866 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1866.SetStateValue(o1866.GetCalculated())
end, StartCalculate = function()
  o1866["Value"] = o1866.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1866.Value == L0) then
    o1866["Value"] = L0
    CallFunction(o1865, "ProcesseStateChange")
  end
end }
S_o1913 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1913, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1913, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1913, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o1913, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1913, "Code5")
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
      if not (o1914.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1914 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1914.SetStateValue(o1914.GetCalculated())
end, StartCalculate = function()
  o1914["Value"] = o1914.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1914.Value == L0) then
    o1914["Value"] = L0
    CallFunction(o1913, "ProcesseStateChange")
  end
end }
S_o1961 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1961, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1961, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1961, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o1961, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1961, "Code5")
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
      if not (o1962.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1962 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1962.SetStateValue(o1962.GetCalculated())
end, StartCalculate = function()
  o1962["Value"] = o1962.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1962.Value == L0) then
    o1962["Value"] = L0
    CallFunction(o1961, "ProcesseStateChange")
  end
end }
S_o2009 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2009, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2009, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2009, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2009, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CreoleGirl_EscapePath", 1, 1 } }("Code5")
  else
    CallFunction(o2009, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2009, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2012.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2010.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2010 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2010.SetStateValue(o2010.GetCalculated())
end, StartCalculate = function()
  o2010["Value"] = o2010.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2010.Value == L0) then
    o2010["Value"] = L0
    CallFunction(o2009, "ProcesseStateChange")
  end
end }
o2012 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2012.SetStateValue(o2012.GetCalculated())
end, StartCalculate = function()
  o2012["Value"] = o2012.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2012.Value == L0) then
    o2012["Value"] = L0
    CallFunction(o2009, "ProcesseStateChange")
  end
end }
S_o2058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2058, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2058, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2058, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2058, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2058, "Code5")
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
      if not (o2059.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2059 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2059.SetStateValue(o2059.GetCalculated())
end, StartCalculate = function()
  o2059["Value"] = o2059.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2059.Value == L0) then
    o2059["Value"] = L0
    CallFunction(o2058, "ProcesseStateChange")
  end
end }
S_o2106 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2106, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2106, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2106, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2106, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2106, "Code5")
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
      if not (o2107.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2107 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2107.SetStateValue(o2107.GetCalculated())
end, StartCalculate = function()
  o2107["Value"] = o2107.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2107.Value == L0) then
    o2107["Value"] = L0
    CallFunction(o2106, "ProcesseStateChange")
  end
end }
S_o2154 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2154, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2154, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2154, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2154, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2154, "Code5")
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
      if not (o2155.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2155 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2155.SetStateValue(o2155.GetCalculated())
end, StartCalculate = function()
  o2155["Value"] = o2155.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2155.Value == L0) then
    o2155["Value"] = L0
    CallFunction(o2154, "ProcesseStateChange")
  end
end }
S_o2202 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2202, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2202, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2202, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2202, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 7 } }("Code6")
  else
    CallFunction(o2202, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2202, "Code7")
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
S_o2250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2250, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2250, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2250, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2250, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.75 } }("Code6")
  else
    CallFunction(o2250, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2250, "Code7")
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
S_o2298 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2298, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2298, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2298, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2298, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CreoleGirl_EscapePath", 1, 1 } }("Code5")
  else
    CallFunction(o2298, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2298, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2301.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2299.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2299 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2299.SetStateValue(o2299.GetCalculated())
end, StartCalculate = function()
  o2299["Value"] = o2299.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2299.Value == L0) then
    o2299["Value"] = L0
    CallFunction(o2298, "ProcesseStateChange")
  end
end }
o2301 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2301.SetStateValue(o2301.GetCalculated())
end, StartCalculate = function()
  o2301["Value"] = o2301.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2301.Value == L0) then
    o2301["Value"] = L0
    CallFunction(o2298, "ProcesseStateChange")
  end
end }
S_o2347 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2347, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2347, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2347, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2347, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CreoleGirl_EscapePath", 1, 1 } }("Code5")
  else
    CallFunction(o2347, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o2347, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2350.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2348.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2348 = { [nil] = {}, GetCalculated = function()
  if not (o1481.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2348.SetStateValue(o2348.GetCalculated())
end, StartCalculate = function()
  o2348["Value"] = o2348.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2348.Value == L0) then
    o2348["Value"] = L0
    CallFunction(o2347, "ProcesseStateChange")
  end
end }
o2350 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2350.SetStateValue(o2350.GetCalculated())
end, StartCalculate = function()
  o2350["Value"] = o2350.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2350.Value == L0) then
    o2350["Value"] = L0
    CallFunction(o2347, "ProcesseStateChange")
  end
end }
S_o2396 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2396, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2396, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2396, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2396, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2396, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2398.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2397.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2397 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2397.SetStateValue(o2397.GetCalculated())
end, StartCalculate = function()
  o2397["Value"] = o2397.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2397.Value == L0) then
    o2397["Value"] = L0
    CallFunction(o2396, "ProcesseStateChange")
  end
end }
o2398 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2398.SetStateValue(o2398.GetCalculated())
end, StartCalculate = function()
  o2398["Value"] = o2398.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2398.Value == L0) then
    DelayedFunction(24.87987, o2398, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2398.Value == L0) then
    o2398["Value"] = L0
    CallFunction(o2396, "ProcesseStateChange")
  end
end }
S_o2444 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2444, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2444, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2444, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2444, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2444, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2446.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2445.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2445 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2445.SetStateValue(o2445.GetCalculated())
end, StartCalculate = function()
  o2445["Value"] = o2445.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2445.Value == L0) then
    o2445["Value"] = L0
    CallFunction(o2444, "ProcesseStateChange")
  end
end }
o2446 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2446.SetStateValue(o2446.GetCalculated())
end, StartCalculate = function()
  o2446["Value"] = o2446.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2446.Value == L0) then
    DelayedFunction(24.87987, o2446, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2446.Value == L0) then
    o2446["Value"] = L0
    CallFunction(o2444, "ProcesseStateChange")
  end
end }
S_o2492 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2492, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2492, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2492, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2492, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2492, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2494.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2493.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2493 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2493.SetStateValue(o2493.GetCalculated())
end, StartCalculate = function()
  o2493["Value"] = o2493.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2493.Value == L0) then
    o2493["Value"] = L0
    CallFunction(o2492, "ProcesseStateChange")
  end
end }
o2494 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2494.SetStateValue(o2494.GetCalculated())
end, StartCalculate = function()
  o2494["Value"] = o2494.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2494.Value == L0) then
    DelayedFunction(24.87987, o2494, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2494.Value == L0) then
    o2494["Value"] = L0
    CallFunction(o2492, "ProcesseStateChange")
  end
end }
S_o2540 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2540, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2540, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2540, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2540, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2540, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2542.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2541.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2541 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
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
    o2541["Value"] = L0
    CallFunction(o2540, "ProcesseStateChange")
  end
end }
o2542 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2542.SetStateValue(o2542.GetCalculated())
end, StartCalculate = function()
  o2542["Value"] = o2542.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2542.Value == L0) then
    DelayedFunction(24.87987, o2542, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2542.Value == L0) then
    o2542["Value"] = L0
    CallFunction(o2540, "ProcesseStateChange")
  end
end }
S_o2588 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2588, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2588, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2588, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2588, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2588, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2590.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2589.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2589 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2589.SetStateValue(o2589.GetCalculated())
end, StartCalculate = function()
  o2589["Value"] = o2589.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2589.Value == L0) then
    o2589["Value"] = L0
    CallFunction(o2588, "ProcesseStateChange")
  end
end }
o2590 = { [nil] = {}, GetCalculated = function()
  if not (o1461.Value ~= True) then
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
    DelayedFunction(24.87987, o2590, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2590.Value == L0) then
    o2590["Value"] = L0
    CallFunction(o2588, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2636, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2636, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code5")
  else
    CallFunction(o2636, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code6")
  else
    CallFunction(o2636, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o2636, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2636, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/NS01_Tursas_Path1", 1, 1 } }("Code9")
  else
    CallFunction(o2636, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o2636, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Born = function(L0, L1)
  o2643.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o2645.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2639.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2639 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
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
    DelayedFunction(60, o2639, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2639.Value == L0) then
    o2639["Value"] = L0
    CallFunction(o2636, "ProcesseStateChange")
  end
end }
o2643 = { [nil] = {}, Start = function()
  o2643["Value"] = False
  o2659.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2643.Value == L0) then
    o2643["Value"] = L0
    o2659.ReCalculate()
  end
end }
o2645 = { [nil] = {}, Start = function()
  o2645["Value"] = False
  o6002.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2645.Value == L0) then
    o2645["Value"] = L0
    o6002.ReCalculate()
  end
end }
o2659 = { [nil] = {}, GetCalculated = function()
  if not (o2643.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2659.SetStateValue(o2659.GetCalculated())
end, StartCalculate = function()
  o2659["Value"] = o2659.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2636.Node, o1455.Node, 1190)
  SendRadioMessageTake(o2636.Node, o1455.Node, 1191)
end, SetStateValue = function(L0)
  if not (o2659.Value == L0) then
    DelayedFunction(25, o2659, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2659.Value == L0) then
    o2659["Value"] = L0
    if not (L0 ~= 1) then
      o2659.ChangeTo1()
    end
  end
end }
S_o2688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2688, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o2688, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GravDockPath_1", 1, 1 } }("Code6")
  else
    CallFunction(o2688, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o555.Node, "DP_ver_1", "DP_ver_1", 0.3, 0.3, 20, "Code7")
  else
    CallFunction(o2688, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o2688, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o2700.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2706.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2693.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2693 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2693.SetStateValue(o2693.GetCalculated())
end, StartCalculate = function()
  o2693["Value"] = o2693.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2693.Value == L0) then
    DelayedFunction(60, o2693, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2693.Value == L0) then
    o2693["Value"] = L0
    CallFunction(o2688, "ProcesseStateChange")
  end
end }
o2700 = { [nil] = {}, Start = function()
  o2700["Value"] = False
  o1472.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2700.Value == L0) then
    o2700["Value"] = L0
    o1472.ReCalculate()
  end
end }
o2706 = { [nil] = {}, Start = function()
  o2706["Value"] = False
  o1473.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2706.Value == L0) then
    o2706["Value"] = L0
    o1473.ReCalculate()
  end
end }
S_o2739 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2739, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2739, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2739, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2739, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o2739, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GravDockPath_2", 1, 1 } }("Code6")
  else
    CallFunction(o2739, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o447.Node, "DP_ver_1", "DP_ver_1", 0.3, 0.3, 20, "Code7")
  else
    CallFunction(o2739, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code8")
  else
    CallFunction(o2739, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o2751.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2757.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2744.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2744 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2744.SetStateValue(o2744.GetCalculated())
end, StartCalculate = function()
  o2744["Value"] = o2744.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2744.Value == L0) then
    DelayedFunction(60, o2744, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2744.Value == L0) then
    o2744["Value"] = L0
    CallFunction(o2739, "ProcesseStateChange")
  end
end }
o2751 = { [nil] = {}, Start = function()
  o2751["Value"] = False
  o1472.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2751.Value == L0) then
    o2751["Value"] = L0
    o1472.ReCalculate()
  end
end }
o2757 = { [nil] = {}, Start = function()
  o2757["Value"] = False
  o1473.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2757.Value == L0) then
    o2757["Value"] = L0
    o1473.ReCalculate()
  end
end }
S_o2790 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2790, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2790, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2790, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2790, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o2790, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GravDockPath_3", 1, 1 } }("Code6")
  else
    CallFunction(o2790, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o519.Node, "DP_ver_1", "DP_ver_1", 0.3, 0.3, 20, "Code7")
  else
    CallFunction(o2790, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o2801.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2807.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2794.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2794 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2794.SetStateValue(o2794.GetCalculated())
end, StartCalculate = function()
  o2794["Value"] = o2794.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2794.Value == L0) then
    DelayedFunction(60, o2794, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2794.Value == L0) then
    o2794["Value"] = L0
    CallFunction(o2790, "ProcesseStateChange")
  end
end }
o2801 = { [nil] = {}, Start = function()
  o2801["Value"] = False
  o1472.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2801.Value == L0) then
    o2801["Value"] = L0
    o1472.ReCalculate()
  end
end }
o2807 = { [nil] = {}, Start = function()
  o2807["Value"] = False
  o1473.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2807.Value == L0) then
    o2807["Value"] = L0
    o1473.ReCalculate()
  end
end }
S_o2840 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2840, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2840, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2840, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2840, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o2840, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/GravDockPath_4", 1, 1 } }("Code6")
  else
    CallFunction(o2840, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o483.Node, "DP_ver_1", "DP_ver_1", 0.3, 0.3, 20, "Code7")
  else
    CallFunction(o2840, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o2851.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2857.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2844.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2844 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2844.SetStateValue(o2844.GetCalculated())
end, StartCalculate = function()
  o2844["Value"] = o2844.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2844.Value == L0) then
    DelayedFunction(60, o2844, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2844.Value == L0) then
    o2844["Value"] = L0
    CallFunction(o2840, "ProcesseStateChange")
  end
end }
o2851 = { [nil] = {}, Start = function()
  o2851["Value"] = False
  o1472.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2851.Value == L0) then
    o2851["Value"] = L0
    o1472.ReCalculate()
  end
end }
o2857 = { [nil] = {}, Start = function()
  o2857["Value"] = False
  o1473.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2857.Value == L0) then
    o2857["Value"] = L0
    o1473.ReCalculate()
  end
end }
S_o2890 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2890, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2890, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2890, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o2890, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2890, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2890, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2893.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2892.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2892 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2892.SetStateValue(o2892.GetCalculated())
end, StartCalculate = function()
  o2892["Value"] = o2892.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2892.Value == L0) then
    o2892["Value"] = L0
    CallFunction(o2890, "ProcesseStateChange")
  end
end }
o2893 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2893.SetStateValue(o2893.GetCalculated())
end, StartCalculate = function()
  o2893["Value"] = o2893.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2893.Value == L0) then
    DelayedFunction(60, o2893, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2893.Value == L0) then
    o2893["Value"] = L0
    CallFunction(o2890, "ProcesseStateChange")
  end
end }
S_o2939 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2939, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2939, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2939, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o2939, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2939, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2939, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o2944.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2942.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2941.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2941 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2941.SetStateValue(o2941.GetCalculated())
end, StartCalculate = function()
  o2941["Value"] = o2941.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2941.Value == L0) then
    o2941["Value"] = L0
    CallFunction(o2939, "ProcesseStateChange")
  end
end }
o2942 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2942.SetStateValue(o2942.GetCalculated())
end, StartCalculate = function()
  o2942["Value"] = o2942.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2942.Value == L0) then
    DelayedFunction(60, o2942, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2942.Value == L0) then
    o2942["Value"] = L0
    CallFunction(o2939, "ProcesseStateChange")
  end
end }
o2944 = { [nil] = {}, Start = function()
  o2944["Value"] = False
  o1464.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2944.Value == L0) then
    o2944["Value"] = L0
    o1464.ReCalculate()
  end
end }
S_o2988 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2988, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2988, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2988, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o2988, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o2988, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2988, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2991.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2990.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2990 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2990.SetStateValue(o2990.GetCalculated())
end, StartCalculate = function()
  o2990["Value"] = o2990.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2990.Value == L0) then
    o2990["Value"] = L0
    CallFunction(o2988, "ProcesseStateChange")
  end
end }
o2991 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2991.SetStateValue(o2991.GetCalculated())
end, StartCalculate = function()
  o2991["Value"] = o2991.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2991.Value == L0) then
    DelayedFunction(60, o2991, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2991.Value == L0) then
    o2991["Value"] = L0
    CallFunction(o2988, "ProcesseStateChange")
  end
end }
S_o3037 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3037, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3037, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3037, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3037, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3037, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3037, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3040.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3039.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3039 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3039.SetStateValue(o3039.GetCalculated())
end, StartCalculate = function()
  o3039["Value"] = o3039.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3039.Value == L0) then
    o3039["Value"] = L0
    CallFunction(o3037, "ProcesseStateChange")
  end
end }
o3040 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3040.SetStateValue(o3040.GetCalculated())
end, StartCalculate = function()
  o3040["Value"] = o3040.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3040.Value == L0) then
    DelayedFunction(60, o3040, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3040.Value == L0) then
    o3040["Value"] = L0
    CallFunction(o3037, "ProcesseStateChange")
  end
end }
S_o3086 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3086, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3086, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3086, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3086, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3086, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3086, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3089.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3088.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3088 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3088.SetStateValue(o3088.GetCalculated())
end, StartCalculate = function()
  o3088["Value"] = o3088.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3088.Value == L0) then
    o3088["Value"] = L0
    CallFunction(o3086, "ProcesseStateChange")
  end
end }
o3089 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3089.SetStateValue(o3089.GetCalculated())
end, StartCalculate = function()
  o3089["Value"] = o3089.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3089.Value == L0) then
    DelayedFunction(60, o3089, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3089.Value == L0) then
    o3089["Value"] = L0
    CallFunction(o3086, "ProcesseStateChange")
  end
end }
S_o3135 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3135, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3135, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3135, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3135, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3135, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3135, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3138.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3137.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3137 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3137.SetStateValue(o3137.GetCalculated())
end, StartCalculate = function()
  o3137["Value"] = o3137.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3137.Value == L0) then
    o3137["Value"] = L0
    CallFunction(o3135, "ProcesseStateChange")
  end
end }
o3138 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3138.SetStateValue(o3138.GetCalculated())
end, StartCalculate = function()
  o3138["Value"] = o3138.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3138.Value == L0) then
    DelayedFunction(60, o3138, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3138.Value == L0) then
    o3138["Value"] = L0
    CallFunction(o3135, "ProcesseStateChange")
  end
end }
S_o3184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5 } }("Code4")
  else
    CallFunction(o3184, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.75, "Code5")
  else
    CallFunction(o3184, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3184, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3187.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3186.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3186 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3186.SetStateValue(o3186.GetCalculated())
end, StartCalculate = function()
  o3186["Value"] = o3186.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3186.Value == L0) then
    o3186["Value"] = L0
    CallFunction(o3184, "ProcesseStateChange")
  end
end }
o3187 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3187.SetStateValue(o3187.GetCalculated())
end, StartCalculate = function()
  o3187["Value"] = o3187.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3187.Value == L0) then
    DelayedFunction(60, o3187, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3187.Value == L0) then
    o3187["Value"] = L0
    CallFunction(o3184, "ProcesseStateChange")
  end
end }
S_o3233 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3233, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3233, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3233, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3233, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code6")
  else
    CallFunction(o3233, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  o1465.SetStateValue(True)
  CallFunction(o3233, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Fregatte1_Path", 1, 1 } }("Code8")
  else
    CallFunction(o3233, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 4 } }("Code9")
  else
    CallFunction(o3233, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o3233, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3233, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3233, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3237.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o3238.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3237 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3237.SetStateValue(o3237.GetCalculated())
end, StartCalculate = function()
  o3237["Value"] = o3237.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3237.Value == L0) then
    DelayedFunction(60, o3237, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3237.Value == L0) then
    o3237["Value"] = L0
    CallFunction(o3233, "ProcesseStateChange")
  end
end }
o3238 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3238.SetStateValue(o3238.GetCalculated())
end, StartCalculate = function()
  o3238["Value"] = o3238.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3238.Value == L0) then
    o3238["Value"] = L0
    CallFunction(o3233, "ProcesseStateChange")
  end
end }
S_o3284 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3284, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3284, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3284, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3284, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code6")
  else
    CallFunction(o3284, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Fregatte2_Path", 1, 1 } }("Code7")
  else
    CallFunction(o3284, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 4 } }("Code8")
  else
    CallFunction(o3284, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o3284, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3284, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3284, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3288.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o3289.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3288 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3288.SetStateValue(o3288.GetCalculated())
end, StartCalculate = function()
  o3288["Value"] = o3288.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3288.Value == L0) then
    DelayedFunction(60, o3288, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3288.Value == L0) then
    o3288["Value"] = L0
    CallFunction(o3284, "ProcesseStateChange")
  end
end }
o3289 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3289.SetStateValue(o3289.GetCalculated())
end, StartCalculate = function()
  o3289["Value"] = o3289.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3289.Value == L0) then
    o3289["Value"] = L0
    CallFunction(o3284, "ProcesseStateChange")
  end
end }
S_o3335 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3335, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3335, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3335, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3335, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3335, "Code5")
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
      if not (o3336.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3336 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3336.SetStateValue(o3336.GetCalculated())
end, StartCalculate = function()
  o3336["Value"] = o3336.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3336.Value == L0) then
    o3336["Value"] = L0
    CallFunction(o3335, "ProcesseStateChange")
  end
end }
S_o3383 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3383, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3383, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3383, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3383, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3383, "Code5")
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
      if not (o3384.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3384 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3384.SetStateValue(o3384.GetCalculated())
end, StartCalculate = function()
  o3384["Value"] = o3384.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3384.Value == L0) then
    o3384["Value"] = L0
    CallFunction(o3383, "ProcesseStateChange")
  end
end }
S_o3431 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3431, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3431, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3431, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3431, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3431, "Code5")
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
      if not (o3432.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3432 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3432.SetStateValue(o3432.GetCalculated())
end, StartCalculate = function()
  o3432["Value"] = o3432.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3432.Value == L0) then
    o3432["Value"] = L0
    CallFunction(o3431, "ProcesseStateChange")
  end
end }
S_o3479 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3479, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3479, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3479, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3479, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3479, "Code5")
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
      if not (o3480.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3480 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3480.SetStateValue(o3480.GetCalculated())
end, StartCalculate = function()
  o3480["Value"] = o3480.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3480.Value == L0) then
    o3480["Value"] = L0
    CallFunction(o3479, "ProcesseStateChange")
  end
end }
S_o3527 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3527, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3527, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3527, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3527, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3527, "Code5")
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
      if not (o3528.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3528 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3528.SetStateValue(o3528.GetCalculated())
end, StartCalculate = function()
  o3528["Value"] = o3528.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3528.Value == L0) then
    o3528["Value"] = L0
    CallFunction(o3527, "ProcesseStateChange")
  end
end }
S_o3575 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3575, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3575, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3575, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3575, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3575, "Code5")
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
      if not (o3576.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3576 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3576.SetStateValue(o3576.GetCalculated())
end, StartCalculate = function()
  o3576["Value"] = o3576.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3576.Value == L0) then
    o3576["Value"] = L0
    CallFunction(o3575, "ProcesseStateChange")
  end
end }
S_o3623 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3623, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3623, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3623, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3623, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3623, "Code5")
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
      if not (o3624.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3624 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3624.SetStateValue(o3624.GetCalculated())
end, StartCalculate = function()
  o3624["Value"] = o3624.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3624.Value == L0) then
    o3624["Value"] = L0
    CallFunction(o3623, "ProcesseStateChange")
  end
end }
S_o3671 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3671, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3671, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3671, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3671, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3671, "Code5")
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
      if not (o3672.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3672 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3672.SetStateValue(o3672.GetCalculated())
end, StartCalculate = function()
  o3672["Value"] = o3672.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3672.Value == L0) then
    o3672["Value"] = L0
    CallFunction(o3671, "ProcesseStateChange")
  end
end }
S_o3719 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3719, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3719, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3719, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3719, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3719, "Code5")
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
      if not (o3720.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3720 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3720.SetStateValue(o3720.GetCalculated())
end, StartCalculate = function()
  o3720["Value"] = o3720.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3720.Value == L0) then
    o3720["Value"] = L0
    CallFunction(o3719, "ProcesseStateChange")
  end
end }
S_o3767 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3767, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3767, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3767, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3767, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3767, "Code5")
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
      if not (o3768.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3768 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3768.SetStateValue(o3768.GetCalculated())
end, StartCalculate = function()
  o3768["Value"] = o3768.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3768.Value == L0) then
    o3768["Value"] = L0
    CallFunction(o3767, "ProcesseStateChange")
  end
end }
S_o3815 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3815, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3815, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3815, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3815, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3815, "Code5")
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
      if not (o3816.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3816 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3816.SetStateValue(o3816.GetCalculated())
end, StartCalculate = function()
  o3816["Value"] = o3816.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3816.Value == L0) then
    o3816["Value"] = L0
    CallFunction(o3815, "ProcesseStateChange")
  end
end }
S_o3863 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3863, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3863, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3863, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3863, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3863, "Code5")
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
      if not (o3864.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3864 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3864.SetStateValue(o3864.GetCalculated())
end, StartCalculate = function()
  o3864["Value"] = o3864.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3864.Value == L0) then
    o3864["Value"] = L0
    CallFunction(o3863, "ProcesseStateChange")
  end
end }
S_o3911 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3911, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3911, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3911, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3911, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3911, "Code5")
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
      if not (o3912.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3912 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3912.SetStateValue(o3912.GetCalculated())
end, StartCalculate = function()
  o3912["Value"] = o3912.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3912.Value == L0) then
    o3912["Value"] = L0
    CallFunction(o3911, "ProcesseStateChange")
  end
end }
S_o3959 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3959, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3959, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3959, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3959, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3959, "Code5")
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
      if not (o3960.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3960 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3960.SetStateValue(o3960.GetCalculated())
end, StartCalculate = function()
  o3960["Value"] = o3960.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3960.Value == L0) then
    o3960["Value"] = L0
    CallFunction(o3959, "ProcesseStateChange")
  end
end }
S_o4007 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4007, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4007, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4007, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4007, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4007, "Code5")
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
      if not (o4008.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4008 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4008.SetStateValue(o4008.GetCalculated())
end, StartCalculate = function()
  o4008["Value"] = o4008.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4008.Value == L0) then
    o4008["Value"] = L0
    CallFunction(o4007, "ProcesseStateChange")
  end
end }
S_o4055 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4055, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4055, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4055, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4055, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4055, "Code5")
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
      if not (o4056.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4056 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4056.SetStateValue(o4056.GetCalculated())
end, StartCalculate = function()
  o4056["Value"] = o4056.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4056.Value == L0) then
    o4056["Value"] = L0
    CallFunction(o4055, "ProcesseStateChange")
  end
end }
S_o4103 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4103, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4103, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4103, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4103, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4103, "Code5")
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
      if not (o4104.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4104 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4104.SetStateValue(o4104.GetCalculated())
end, StartCalculate = function()
  o4104["Value"] = o4104.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4104.Value == L0) then
    o4104["Value"] = L0
    CallFunction(o4103, "ProcesseStateChange")
  end
end }
S_o4151 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4151, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4151, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4151, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4151, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4151, "Code5")
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
      if not (o4152.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4152 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4152.SetStateValue(o4152.GetCalculated())
end, StartCalculate = function()
  o4152["Value"] = o4152.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4152.Value == L0) then
    o4152["Value"] = L0
    CallFunction(o4151, "ProcesseStateChange")
  end
end }
S_o4199 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4199, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4199, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4199, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4199, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4199, "Code5")
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
      if not (o4200.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4200 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4200.SetStateValue(o4200.GetCalculated())
end, StartCalculate = function()
  o4200["Value"] = o4200.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4200.Value == L0) then
    o4200["Value"] = L0
    CallFunction(o4199, "ProcesseStateChange")
  end
end }
S_o4247 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4247, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4247, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4247, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4247, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4247, "Code5")
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
      if not (o4248.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4248 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4248.SetStateValue(o4248.GetCalculated())
end, StartCalculate = function()
  o4248["Value"] = o4248.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4248.Value == L0) then
    o4248["Value"] = L0
    CallFunction(o4247, "ProcesseStateChange")
  end
end }
S_o4295 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4295, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4295, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4295, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4295, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4295, "Code5")
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
      if not (o4296.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4296 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4296.SetStateValue(o4296.GetCalculated())
end, StartCalculate = function()
  o4296["Value"] = o4296.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4296.Value == L0) then
    o4296["Value"] = L0
    CallFunction(o4295, "ProcesseStateChange")
  end
end }
S_o4343 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4343, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4343, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4343, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4343, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4343, "Code5")
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
      if not (o4344.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4344 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4344.SetStateValue(o4344.GetCalculated())
end, StartCalculate = function()
  o4344["Value"] = o4344.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4344.Value == L0) then
    o4344["Value"] = L0
    CallFunction(o4343, "ProcesseStateChange")
  end
end }
S_o4391 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4391, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4391, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4391, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4391, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4391, "Code5")
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
      if not (o4392.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4392 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4392.SetStateValue(o4392.GetCalculated())
end, StartCalculate = function()
  o4392["Value"] = o4392.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4392.Value == L0) then
    o4392["Value"] = L0
    CallFunction(o4391, "ProcesseStateChange")
  end
end }
S_o4439 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4439, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4439, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4439, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4439, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4439, "Code5")
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
      if not (o4440.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4440 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4440.SetStateValue(o4440.GetCalculated())
end, StartCalculate = function()
  o4440["Value"] = o4440.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4440.Value == L0) then
    o4440["Value"] = L0
    CallFunction(o4439, "ProcesseStateChange")
  end
end }
S_o4487 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4487, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4487, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4487, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4487, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4487, "Code5")
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
      if not (o4488.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4488 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4488.SetStateValue(o4488.GetCalculated())
end, StartCalculate = function()
  o4488["Value"] = o4488.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4488.Value == L0) then
    o4488["Value"] = L0
    CallFunction(o4487, "ProcesseStateChange")
  end
end }
S_o4535 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4535, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4535, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4535, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4535, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4535, "Code5")
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
      if not (o4536.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4536 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4536.SetStateValue(o4536.GetCalculated())
end, StartCalculate = function()
  o4536["Value"] = o4536.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4536.Value == L0) then
    o4536["Value"] = L0
    CallFunction(o4535, "ProcesseStateChange")
  end
end }
S_o4583 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4583, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4583, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4583, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4583, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4583, "Code5")
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
      if not (o4584.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4584 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4584.SetStateValue(o4584.GetCalculated())
end, StartCalculate = function()
  o4584["Value"] = o4584.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4584.Value == L0) then
    o4584["Value"] = L0
    CallFunction(o4583, "ProcesseStateChange")
  end
end }
S_o4631 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4631, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4631, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4631, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o4631, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4631, "Code5")
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
  if not (o5954.Value ~= True) then
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
    o4632["Value"] = L0
    CallFunction(o4631, "ProcesseStateChange")
  end
end }
S_o4679 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4679, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4679, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4679, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o4679, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 100, 1, "Code5")
  else
    CallFunction(o4679, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4682.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o4938.Value ~= True) then
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
    o4680["Value"] = L0
    CallFunction(o4679, "ProcesseStateChange")
  end
end }
o4682 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4682.SetStateValue(o4682.GetCalculated())
end, StartCalculate = function()
  o4682["Value"] = o4682.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4682.Value == L0) then
    o4682["Value"] = L0
    CallFunction(o4679, "ProcesseStateChange")
  end
end }
S_o4728 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4728, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4728, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4728, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o4728, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 100, 1, "Code5")
  else
    CallFunction(o4728, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4731.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4729.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4729 = { [nil] = {}, GetCalculated = function()
  if not (o4938.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4729.SetStateValue(o4729.GetCalculated())
end, StartCalculate = function()
  o4729["Value"] = o4729.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4729.Value == L0) then
    o4729["Value"] = L0
    CallFunction(o4728, "ProcesseStateChange")
  end
end }
o4731 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4731.SetStateValue(o4731.GetCalculated())
end, StartCalculate = function()
  o4731["Value"] = o4731.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4731.Value == L0) then
    o4731["Value"] = L0
    CallFunction(o4728, "ProcesseStateChange")
  end
end }
S_o4777 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4777, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4777, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4777, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o4777, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4779.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4779 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4779.SetStateValue(o4779.GetCalculated())
end, StartCalculate = function()
  o4779["Value"] = o4779.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4779.Value == L0) then
    o4779["Value"] = L0
    CallFunction(o4777, "ProcesseStateChange")
  end
end }
S_o4825 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4825, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4825, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4825, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o4825, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4827.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4827 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4827.SetStateValue(o4827.GetCalculated())
end, StartCalculate = function()
  o4827["Value"] = o4827.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4827.Value == L0) then
    o4827["Value"] = L0
    CallFunction(o4825, "ProcesseStateChange")
  end
end }
S_o4873 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4873, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4873, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4873, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o4873, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 100, 1, "Code5")
  else
    CallFunction(o4873, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4876.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4874.Value ~= True) then
        L1 = 0
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
  if not (o4938.Value ~= True) then
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
    CallFunction(o4873, "ProcesseStateChange")
  end
end }
o4876 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4876.SetStateValue(o4876.GetCalculated())
end, StartCalculate = function()
  o4876["Value"] = o4876.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4876.Value == L0) then
    o4876["Value"] = L0
    CallFunction(o4873, "ProcesseStateChange")
  end
end }
S_o4922 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4922, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4922, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4922, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_DestEmpJump = function(L0, L1)
  o4938.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4923.Value ~= True) then
        L1 = 0
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
  if not (o1477.Value ~= True) then
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
    CallFunction(o4922, "ProcesseStateChange")
  end
end }
o4938 = { [nil] = {}, Start = function()
  o4938["Value"] = False
  o4680.StartCalculate()
  o4729.StartCalculate()
  o4874.StartCalculate()
  o4970.StartCalculate()
  o5019.StartCalculate()
  o5212.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4938.Value == L0) then
    o4938["Value"] = L0
    o4680.ReCalculate()
    o4729.ReCalculate()
    o4874.ReCalculate()
    o4970.ReCalculate()
    o5019.ReCalculate()
    o5212.ReCalculate()
  end
end }
S_o4969 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4969, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4969, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4969, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o4969, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 100, 1, "Code5")
  else
    CallFunction(o4969, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4972.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4970.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4970 = { [nil] = {}, GetCalculated = function()
  if not (o4938.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4970.SetStateValue(o4970.GetCalculated())
end, StartCalculate = function()
  o4970["Value"] = o4970.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4970.Value == L0) then
    o4970["Value"] = L0
    CallFunction(o4969, "ProcesseStateChange")
  end
end }
o4972 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4972.SetStateValue(o4972.GetCalculated())
end, StartCalculate = function()
  o4972["Value"] = o4972.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4972.Value == L0) then
    o4972["Value"] = L0
    CallFunction(o4969, "ProcesseStateChange")
  end
end }
S_o5018 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5018, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5018, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5018, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o5018, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 100, 1, "Code5")
  else
    CallFunction(o5018, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5021.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o4938.Value ~= True) then
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
    CallFunction(o5018, "ProcesseStateChange")
  end
end }
o5021 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5021.SetStateValue(o5021.GetCalculated())
end, StartCalculate = function()
  o5021["Value"] = o5021.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5021.Value == L0) then
    o5021["Value"] = L0
    CallFunction(o5018, "ProcesseStateChange")
  end
end }
S_o5067 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5067, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5067, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5067, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o5067, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5069.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5069 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5069.SetStateValue(o5069.GetCalculated())
end, StartCalculate = function()
  o5069["Value"] = o5069.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5069.Value == L0) then
    o5069["Value"] = L0
    CallFunction(o5067, "ProcesseStateChange")
  end
end }
S_o5115 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5115, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5115, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5115, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o5115, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5117.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5117 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5117.SetStateValue(o5117.GetCalculated())
end, StartCalculate = function()
  o5117["Value"] = o5117.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5117.Value == L0) then
    o5117["Value"] = L0
    CallFunction(o5115, "ProcesseStateChange")
  end
end }
S_o5163 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5163, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5163, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5163, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o5163, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5165.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5165 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5165.SetStateValue(o5165.GetCalculated())
end, StartCalculate = function()
  o5165["Value"] = o5165.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5165.Value == L0) then
    o5165["Value"] = L0
    CallFunction(o5163, "ProcesseStateChange")
  end
end }
S_o5211 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5211, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5211, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5211, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o5211, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FusionPP_FArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea" }, 100, 1, "Code5")
  else
    CallFunction(o5211, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5214.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5212.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5212 = { [nil] = {}, GetCalculated = function()
  if not (o4938.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5212.SetStateValue(o5212.GetCalculated())
end, StartCalculate = function()
  o5212["Value"] = o5212.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5212.Value == L0) then
    o5212["Value"] = L0
    CallFunction(o5211, "ProcesseStateChange")
  end
end }
o5214 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5214.SetStateValue(o5214.GetCalculated())
end, StartCalculate = function()
  o5214["Value"] = o5214.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5214.Value == L0) then
    o5214["Value"] = L0
    CallFunction(o5211, "ProcesseStateChange")
  end
end }
S_o5260 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5260, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5260, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5260, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPos_1", "Code4")
  else
    CallFunction(o5260, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5262.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5262 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5262.SetStateValue(o5262.GetCalculated())
end, StartCalculate = function()
  o5262["Value"] = o5262.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5262.Value == L0) then
    o5262["Value"] = L0
    CallFunction(o5260, "ProcesseStateChange")
  end
end }
S_o5308 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5308, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5308, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5308, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5309.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5309 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5309.SetStateValue(o5309.GetCalculated())
end, StartCalculate = function()
  o5309["Value"] = o5309.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5309.Value == L0) then
    o5309["Value"] = L0
    CallFunction(o5308, "ProcesseStateChange")
  end
end }
S_o5355 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5355, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5355, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5355, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  PhysicalCharacter_StartAnimation(L0.Node, 0, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 1, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 2, 0)
  Character_StartAnimation(L0.Node, "mouth")
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5355, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Crocell_Path_1", 1, "Code9")
  else
    CallFunction(o5355, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o5355, "Code8")
  else
    CallFunction(o5355, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Sonar = function(L0, L1)
  o5364.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5357.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5357 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5357.SetStateValue(o5357.GetCalculated())
end, StartCalculate = function()
  o5357["Value"] = o5357.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5357.Value == L0) then
    o5357["Value"] = L0
    CallFunction(o5355, "ProcesseStateChange")
  end
end }
o5364 = { [nil] = {}, Start = function()
  o5364["Value"] = False
  o5366.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5364.Value == L0) then
    o5364["Value"] = L0
    o5366.ReCalculate()
  end
end }
o5366 = { [nil] = {}, GetCalculated = function()
  if not (o5364.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5366.SetStateValue(o5366.GetCalculated())
end, StartCalculate = function()
  o5366["Value"] = o5366.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("crocell is blind")
  PhysicalCharacter_SetHitPropability(o5355.Node, 0.5)
end, SetStateValue = function(L0)
  if not (o5366.Value == L0) then
    o5366["Value"] = L0
    if not (L0 ~= 1) then
      o5366.ChangeTo1()
    end
  end
end }
S_o5395 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5395, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5395, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5395, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o5395, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5395, "Code5")
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
      if not (o5396.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5396 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5396.SetStateValue(o5396.GetCalculated())
end, StartCalculate = function()
  o5396["Value"] = o5396.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5396.Value == L0) then
    o5396["Value"] = L0
    CallFunction(o5395, "ProcesseStateChange")
  end
end }
S_o5443 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5443, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5443, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5443, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FusionPP_PArea", "/Scenario_Dynamic/Navigation/FusionPP_TArea", "/Scenario_Dynamic/Navigation/FusionPP_FArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o5443, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5443, "Code5")
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
      if not (o5444.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5444 = { [nil] = {}, GetCalculated = function()
  if not (o5954.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5444.SetStateValue(o5444.GetCalculated())
end, StartCalculate = function()
  o5444["Value"] = o5444.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5444.Value == L0) then
    o5444["Value"] = L0
    CallFunction(o5443, "ProcesseStateChange")
  end
end }
S_o5491 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5491, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5491, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5491, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o5491, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o5491, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5491, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5491, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5492.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5492 = { [nil] = {}, GetCalculated = function()
  if not (o1473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5492.SetStateValue(o5492.GetCalculated())
end, StartCalculate = function()
  o5492["Value"] = o5492.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5492.Value == L0) then
    o5492["Value"] = L0
    CallFunction(o5491, "ProcesseStateChange")
  end
end }
S_o5539 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5539, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5539, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  PhysicalCharacter_StartAnimation(L0.Node, 0, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 1, 0)
  PhysicalCharacter_StartAnimation(L0.Node, 2, 0)
  CallFunction(o5539, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Sink(L0, "/Scenario_Dynamic/Navigation/ForneusPosition_1", 4, "Code8")
  else
    CallFunction(o5539, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Character_StartAnimation(L0.Node, "tursas")
  CallFunction(o5539, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/ForneusPath_1", 1, "Code10")
  else
    CallFunction(o5539, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  PhysicalCharacter_LookToObject(L0.Node, o5491.Node, 3)
  CallFunction(o5539, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  PhysicalCharacter_LookToObject(L0.Node, o1455.Node, 3)
  Character_StopAnimation(L0.Node)
  Character_StartAnimation(L0.Node, "head01")
  CallFunction(o5539, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5539, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/IngameSequences/Navigation/Forneus_Path_01", 1, "Code19")
  else
    CallFunction(o5539, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Forneus_Path_001", 0.3, "Code21")
  else
    CallFunction(o5539, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  o1475.SetStateValue(True)
  CallFunction(o5539, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  StopAllActiveBehaviours(L0)
  Character_StopAnimation(L0.Node)
  Character_StartAnimation(L0.Node, "head01")
  PhysicalCharacter_AttackTurrets(L0.Node, "", "des_fpowerstation_1", "E", "", "")
  CallFunction(o5539, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/IngameSequences/Navigation/Forneus_Path_BadEndChapter2", 1, "Code28")
  else
    CallFunction(o5539, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  StopAllActiveBehaviours(L0)
  Character_StopAnimation(L0.Node)
  Character_StartAnimation(L0.Node, "head01")
  PhysicalCharacter_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5539, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    OldOneLib.Goto(L0, "/Scenario_Dynamic/Navigation/Forneus_BlindedPath", 0.4, "Code34")
  else
    CallFunction(o5539, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  o5562.SetStateValue(True)
  SED_SetTaskTextKey(1344, -1, -1)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1347)
  CallFunction(o5539, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5539, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
end, SetStateValue_Sonar = function(L0, L1)
  o5560.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5542.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5543.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 16) then
    if not (L0.CodeIndex >= 17) then
      if not (o5546.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5542 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5542.SetStateValue(o5542.GetCalculated())
end, StartCalculate = function()
  o5542["Value"] = o5542.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5542.Value == L0) then
    o5542["Value"] = L0
    CallFunction(o5539, "ProcesseStateChange")
  end
end }
o5543 = { [nil] = {}, GetCalculated = function()
  if not (o5965.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5543.SetStateValue(o5543.GetCalculated())
end, StartCalculate = function()
  o5543["Value"] = o5543.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5543.Value == L0) then
    o5543["Value"] = L0
    CallFunction(o5539, "ProcesseStateChange")
  end
end }
o5546 = { [nil] = {}, GetCalculated = function()
  if not (o5967.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5546.SetStateValue(o5546.GetCalculated())
end, StartCalculate = function()
  o5546["Value"] = o5546.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5546.Value == L0) then
    o5546["Value"] = L0
    CallFunction(o5539, "ProcesseStateChange")
  end
end }
o5560 = { [nil] = {}, Start = function()
  o5560["Value"] = False
  o1477.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5560.Value == L0) then
    o5560["Value"] = L0
    o1477.ReCalculate()
  end
end }
o5562 = { [nil] = {}, Start = function()
  o5562["Value"] = False
  o1481.StartCalculate()
  o6015.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5562.Value == L0) then
    o5562["Value"] = L0
    o1481.ReCalculate()
    o6015.ReCalculate()
  end
end }
S_o5591 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5491.Node)
  CallFunction(o5591, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
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
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5596, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/EscapePath_1", "pos_3", "pos_4", 1, 1 } }("Code6")
  else
    CallFunction(o5596, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5596, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o5601.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5602.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5598.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5598 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5598.SetStateValue(o5598.GetCalculated())
end, StartCalculate = function()
  o5598["Value"] = o5598.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5598.Value == L0) then
    o5598["Value"] = L0
    CallFunction(o5596, "ProcesseStateChange")
  end
end }
o5601 = { [nil] = {}, Start = function()
  o5601["Value"] = False
  o1479.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5601.Value == L0) then
    o5601["Value"] = L0
    o1479.ReCalculate()
  end
end }
o5602 = { [nil] = {}, Start = function()
  o5602["Value"] = False
  o1478.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5602.Value == L0) then
    o5602["Value"] = L0
    o1478.ReCalculate()
  end
end }
S_o5644 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5644, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5644, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5644, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5644, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EscapePath_1", 1, 1 } }("Code6")
  else
    CallFunction(o5644, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5644, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o5649.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5650.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5646.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5646 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5646.SetStateValue(o5646.GetCalculated())
end, StartCalculate = function()
  o5646["Value"] = o5646.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5646.Value == L0) then
    o5646["Value"] = L0
    CallFunction(o5644, "ProcesseStateChange")
  end
end }
o5649 = { [nil] = {}, Start = function()
  o5649["Value"] = False
  o1479.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5649.Value == L0) then
    o5649["Value"] = L0
    o1479.ReCalculate()
  end
end }
o5650 = { [nil] = {}, Start = function()
  o5650["Value"] = False
  o1478.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5650.Value == L0) then
    o5650["Value"] = L0
    o1478.ReCalculate()
  end
end }
S_o5692 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5692, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5692, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5692, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5692, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1407.Node, "DP_hor_1", "DP_hor_1", 0.4, 0.4, 15, "Code6")
  else
    CallFunction(o5692, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EscapePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o5692, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o5692, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5698.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5699.SetStateValue(L1)
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o5702.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5695.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5695 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5695.SetStateValue(o5695.GetCalculated())
end, StartCalculate = function()
  o5695["Value"] = o5695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5695.Value == L0) then
    o5695["Value"] = L0
    CallFunction(o5692, "ProcesseStateChange")
  end
end }
o5698 = { [nil] = {}, Start = function()
  o5698["Value"] = False
  o1479.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5698.Value == L0) then
    o5698["Value"] = L0
    o1479.ReCalculate()
  end
end }
o5699 = { [nil] = {}, Start = function()
  o5699["Value"] = False
  o1478.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5699.Value == L0) then
    o5699["Value"] = L0
    o1478.ReCalculate()
  end
end }
o5702 = { [nil] = {}, Start = function()
  o5702["Value"] = False
  o5747.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5702.Value == L0) then
    o5702["Value"] = L0
    o5747.ReCalculate()
  end
end }
S_o5741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5741, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5741, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5741, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o5741, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5741, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5741, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code8")
  else
    CallFunction(o5741, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1407.Node, "DP_hor_1", "DP_hor_1", 0.4, 0.4, 15, "Code9")
  else
    CallFunction(o5741, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 0.5)
  CallFunction(o5741, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EscapePath_1", 1, 1 } }("Code11")
  else
    CallFunction(o5741, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code12")
  else
    CallFunction(o5741, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Destroyed = function(L0, L1)
  o5750.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5751.SetStateValue(L1)
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o5754.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5746.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5747.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5746 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5746.SetStateValue(o5746.GetCalculated())
end, StartCalculate = function()
  o5746["Value"] = o5746.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5746.Value == L0) then
    o5746["Value"] = L0
    CallFunction(o5741, "ProcesseStateChange")
  end
end }
o5747 = { [nil] = {}, GetCalculated = function()
  if not (o5702.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5747.SetStateValue(o5747.GetCalculated())
end, StartCalculate = function()
  o5747["Value"] = o5747.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5747.Value == L0) then
    o5747["Value"] = L0
    CallFunction(o5741, "ProcesseStateChange")
  end
end }
o5750 = { [nil] = {}, Start = function()
  o5750["Value"] = False
  o1479.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5750.Value == L0) then
    o5750["Value"] = L0
    o1479.ReCalculate()
  end
end }
o5751 = { [nil] = {}, Start = function()
  o5751["Value"] = False
  o1478.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5751.Value == L0) then
    o5751["Value"] = L0
    o1478.ReCalculate()
  end
end }
o5754 = { [nil] = {}, Start = function()
  o5754["Value"] = False
  o5799.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5754.Value == L0) then
    o5754["Value"] = L0
    o5799.ReCalculate()
  end
end }
S_o5793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5793, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5793, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5793, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5793, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o5793, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5793, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5793, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code8")
  else
    CallFunction(o5793, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1407.Node, "DP_hor_1", "DP_hor_1", 0.4, 0.4, 15, "Code9")
  else
    CallFunction(o5793, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 0.5)
  CallFunction(o5793, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EscapePath_1", 1, 1 } }("Code11")
  else
    CallFunction(o5793, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code12")
  else
    CallFunction(o5793, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Destroyed = function(L0, L1)
  o5802.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5803.SetStateValue(L1)
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o5806.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5798.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5799.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5798 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5798.SetStateValue(o5798.GetCalculated())
end, StartCalculate = function()
  o5798["Value"] = o5798.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5798.Value == L0) then
    o5798["Value"] = L0
    CallFunction(o5793, "ProcesseStateChange")
  end
end }
o5799 = { [nil] = {}, GetCalculated = function()
  if not (o5754.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5799.SetStateValue(o5799.GetCalculated())
end, StartCalculate = function()
  o5799["Value"] = o5799.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5799.Value == L0) then
    o5799["Value"] = L0
    CallFunction(o5793, "ProcesseStateChange")
  end
end }
o5802 = { [nil] = {}, Start = function()
  o5802["Value"] = False
  o1479.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5802.Value == L0) then
    o5802["Value"] = L0
    o1479.ReCalculate()
  end
end }
o5803 = { [nil] = {}, Start = function()
  o5803["Value"] = False
  o1478.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5803.Value == L0) then
    o5803["Value"] = L0
    o1478.ReCalculate()
  end
end }
o5806 = { [nil] = {}, Start = function()
  o5806["Value"] = False
  o5851.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5806.Value == L0) then
    o5806["Value"] = L0
    o5851.ReCalculate()
  end
end }
S_o5845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5845, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5845, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5845, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5845, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o5845, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5845, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5845, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code8")
  else
    CallFunction(o5845, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1407.Node, "DP_hor_1", "DP_hor_1", 0.4, 0.4, 15, "Code9")
  else
    CallFunction(o5845, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 0.5)
  CallFunction(o5845, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EscapePath_1", 1, 1 } }("Code11")
  else
    CallFunction(o5845, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code12")
  else
    CallFunction(o5845, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Destroyed = function(L0, L1)
  o5854.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o5855.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5850.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5851.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5850 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5850.SetStateValue(o5850.GetCalculated())
end, StartCalculate = function()
  o5850["Value"] = o5850.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5850.Value == L0) then
    o5850["Value"] = L0
    CallFunction(o5845, "ProcesseStateChange")
  end
end }
o5851 = { [nil] = {}, GetCalculated = function()
  if not (o5806.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5851.SetStateValue(o5851.GetCalculated())
end, StartCalculate = function()
  o5851["Value"] = o5851.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5851.Value == L0) then
    o5851["Value"] = L0
    CallFunction(o5845, "ProcesseStateChange")
  end
end }
o5854 = { [nil] = {}, Start = function()
  o5854["Value"] = False
  o1479.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5854.Value == L0) then
    o5854["Value"] = L0
    o1479.ReCalculate()
  end
end }
o5855 = { [nil] = {}, Start = function()
  o5855["Value"] = False
  o1478.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5855.Value == L0) then
    o5855["Value"] = L0
    o1478.ReCalculate()
  end
end }
S_o5897 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o5897, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o5900.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5900 = { [nil] = {}, Start = function()
  o5900["Value"] = False
  o1483.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5900.Value == L0) then
    o5900["Value"] = L0
    o1483.ReCalculate()
  end
end }
S_o5902 = { [nil] = {}, Start = function(L0)

end }
o5904 = FormationLib.CreateFormation("Triangle", "", "", "", 40, 30)
S_o5905 = { [nil] = {}, Start = function(L0)

end }
S_o5906 = { [nil] = {}, Start = function(L0)

end }
S_o5907 = { [nil] = {}, Start = function(L0)

end }
S_o5908 = { [nil] = {}, Start = function(L0)

end }
o5910 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o5911 = { [nil] = {}, Start = function(L0)

end }
S_o5912 = { [nil] = {}, Start = function(L0)

end }
S_o5913 = { [nil] = {}, Start = function(L0)

end }
S_o5914 = { [nil] = {}, Start = function(L0)

end }
S_o5915 = { [nil] = {}, Start = function(L0)

end }
S_o5916 = { [nil] = {}, Start = function(L0)

end }
o5918 = FormationLib.CreateFormation("Triangle", "", "", "", 10, 10)
S_o5919 = { [nil] = {}, Start = function(L0)

end }
S_o5920 = { [nil] = {}, Start = function(L0)

end }
S_o5921 = { [nil] = {}, Start = function(L0)

end }
S_o5922 = { [nil] = {}, Start = function(L0)

end }
S_o5923 = { [nil] = {}, Start = function(L0)

end }
S_o5924 = { [nil] = {}, Start = function(L0)

end }
S_o5926 = { [nil] = {}, Start = function(L0)

end }
S_o5927 = { [nil] = {}, Start = function(L0)

end }
S_o5928 = { [nil] = {}, Start = function(L0)

end }
S_o5929 = { [nil] = {}, Start = function(L0)

end }
S_o5930 = { [nil] = {}, Start = function(L0)

end }
S_o5931 = { [nil] = {}, Start = function(L0)

end }
o5933 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o5934 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  o1460.SetStateValue(True)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5903, o5904, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  CallFunction(o5934, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code9")
  else
    CallFunction(o5934, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 18, "MMMN", 0)
  CallFunction(o5934, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 17.75, "Code11")
  else
    CallFunction(o5934, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o5934, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code15")
  else
    CallFunction(o5934, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5903, o5904, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_2", 1, 1, "Code16")
  else
    CallFunction(o5934, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Director_EndCutscene(L0.Node)
  CallFunction(o1516, "Code7")
  CallFunction(o1617, "Code7")
  CallFunction(o1667, "Code6")
  CallFunction(o1717, "Code7")
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  SED_SetTaskTextKey(1339, -1, -1)
  CallFunction(o5934, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5939 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 22.5, "Code1")
  else
    CallFunction(o5939, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_ShakeHit(L0.Node, 3, 2.5, 2.5, 2.5)
  CallFunction(o5939, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5942 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code1")
  else
    CallFunction(o5942, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1455.Node, o1455.Node, 1091)
  CallFunction(o5942, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5945 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5945, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  o5954.SetStateValue(True)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o5909, o5910, "/IngameSequences/Navigation/PlayerPathC2_1")
  CallFunction(o5945, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code10")
  else
    CallFunction(o5945, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_2", 5, "MMMN", 0)
  CallFunction(o5945, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code12")
  else
    CallFunction(o5945, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_3", 5, "MMMN", 0)
  CallFunction(o5945, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code14")
  else
    CallFunction(o5945, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5945, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  FormationLib.PlaceFormationPath(o5909, o5910, "/IngameSequences/Navigation/PlayerPathC2_4")
  CallFunction(o5945, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5909, o5910, "/IngameSequences/Navigation/PlayerPathC2_4", "pos_1", "pos_2", 1, 1, "Code17")
  else
    CallFunction(o5945, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  o5955.SetStateValue(True)
  Camera_Cut(L0.Node, 0.5)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_10", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_chaka_c6_2", 0, "MMMN", 0)
  CallFunction(o5945, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code22")
  else
    CallFunction(o5945, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SendRadioMessageTake(o1565.Node, o1455.Node, 1102)
  CallFunction(o5945, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code24")
  else
    CallFunction(o5945, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Director_EndCutscene(L0.Node)
  CallFunction(o5539, "Code20")
  SendRadioMessageTake(o1565.Node, o1455.Node, 1103)
  SED_SetTaskTextKey(1341, -1, -1)
  CallFunction(o5945, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5946.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 14) then
    if not (L0.CodeIndex >= 15) then
      if not (o5950.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5946 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5946.SetStateValue(o5946.GetCalculated())
end, StartCalculate = function()
  o5946["Value"] = o5946.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5946.Value == L0) then
    o5946["Value"] = L0
    CallFunction(o5945, "ProcesseStateChange")
  end
end }
o5950 = { [nil] = {}, GetCalculated = function()
  if not (o5966.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5950.SetStateValue(o5950.GetCalculated())
end, StartCalculate = function()
  o5950["Value"] = o5950.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5950.Value == L0) then
    o5950["Value"] = L0
    CallFunction(o5945, "ProcesseStateChange")
  end
end }
o5954 = { [nil] = {}, Start = function()
  o5954["Value"] = False
  o1818.StartCalculate()
  o1866.StartCalculate()
  o1914.StartCalculate()
  o1962.StartCalculate()
  o2059.StartCalculate()
  o2107.StartCalculate()
  o2155.StartCalculate()
  o2397.StartCalculate()
  o2445.StartCalculate()
  o2493.StartCalculate()
  o2541.StartCalculate()
  o2589.StartCalculate()
  o2892.StartCalculate()
  o2941.StartCalculate()
  o2990.StartCalculate()
  o3039.StartCalculate()
  o3088.StartCalculate()
  o3137.StartCalculate()
  o3186.StartCalculate()
  o3238.StartCalculate()
  o3289.StartCalculate()
  o3336.StartCalculate()
  o3384.StartCalculate()
  o3432.StartCalculate()
  o3480.StartCalculate()
  o3528.StartCalculate()
  o3576.StartCalculate()
  o3624.StartCalculate()
  o3672.StartCalculate()
  o3720.StartCalculate()
  o3768.StartCalculate()
  o3816.StartCalculate()
  o3864.StartCalculate()
  o3912.StartCalculate()
  o3960.StartCalculate()
  o4008.StartCalculate()
  o4056.StartCalculate()
  o4104.StartCalculate()
  o4152.StartCalculate()
  o4200.StartCalculate()
  o4248.StartCalculate()
  o4296.StartCalculate()
  o4344.StartCalculate()
  o4392.StartCalculate()
  o4440.StartCalculate()
  o4488.StartCalculate()
  o4536.StartCalculate()
  o4584.StartCalculate()
  o4632.StartCalculate()
  o5396.StartCalculate()
  o5444.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5954.Value == L0) then
    o5954["Value"] = L0
    o1818.ReCalculate()
    o1866.ReCalculate()
    o1914.ReCalculate()
    o1962.ReCalculate()
    o2059.ReCalculate()
    o2107.ReCalculate()
    o2155.ReCalculate()
    o2397.ReCalculate()
    o2445.ReCalculate()
    o2493.ReCalculate()
    o2541.ReCalculate()
    o2589.ReCalculate()
    o2892.ReCalculate()
    o2941.ReCalculate()
    o2990.ReCalculate()
    o3039.ReCalculate()
    o3088.ReCalculate()
    o3137.ReCalculate()
    o3186.ReCalculate()
    o3238.ReCalculate()
    o3289.ReCalculate()
    o3336.ReCalculate()
    o3384.ReCalculate()
    o3432.ReCalculate()
    o3480.ReCalculate()
    o3528.ReCalculate()
    o3576.ReCalculate()
    o3624.ReCalculate()
    o3672.ReCalculate()
    o3720.ReCalculate()
    o3768.ReCalculate()
    o3816.ReCalculate()
    o3864.ReCalculate()
    o3912.ReCalculate()
    o3960.ReCalculate()
    o4008.ReCalculate()
    o4056.ReCalculate()
    o4104.ReCalculate()
    o4152.ReCalculate()
    o4200.ReCalculate()
    o4248.ReCalculate()
    o4296.ReCalculate()
    o4344.ReCalculate()
    o4392.ReCalculate()
    o4440.ReCalculate()
    o4488.ReCalculate()
    o4536.ReCalculate()
    o4584.ReCalculate()
    o4632.ReCalculate()
    o5396.ReCalculate()
    o5444.ReCalculate()
  end
end }
o5955 = { [nil] = {}, Start = function()
  o5955["Value"] = False
  o1568.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5955.Value == L0) then
    o5955["Value"] = L0
    o1568.ReCalculate()
  end
end }
S_o5956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5956, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code2")
  else
    CallFunction(o5956, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5909, o5910, "/IngameSequences/Navigation/PlayerPathC2_1", "pos_1", "pos_3", 1, 1, "Code3")
  else
    CallFunction(o5956, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  o5965.SetStateValue(True)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/TURSAS", 3, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_4", 5, "MMMN", 0)
  CallFunction(o5956, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code7")
  else
    CallFunction(o5956, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_5", 10, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LAPosition_1", 5, "MMMN", 0)
  CallFunction(o5956, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 14, "Code10")
  else
    CallFunction(o5956, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 0.5)
  o5968.SetStateValue(True)
  FormationLib.PlaceFormationPath(o5917, o5918, "/Scenario_Dynamic/Navigation/ForneusPath_2")
  FormationLib.PlaceFormationPath(o5909, o5910, "/IngameSequences/Navigation/PlayerPathC2_2")
  CallFunction(o5539, "Code12")
  CallFunction(o5491, "Code6")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_6", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Forneus", 0, "MMMN", 0)
  CallFunction(o5956, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.1, "Code19")
  else
    CallFunction(o5956, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_7", 6, "MMMN", 0)
  CallFunction(o5956, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code21")
  else
    CallFunction(o5956, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_8", 4, "MMMN", 0)
  CallFunction(o5956, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code24")
  else
    CallFunction(o5956, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5909, o5910, "/IngameSequences/Navigation/PlayerPathC2_3", "pos_1", "pos_2", 1, 1, "Code25")
  else
    CallFunction(o5956, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_Cut(L0.Node, 0.5)
  o5966.SetStateValue(True)
  FormationLib.PlaceFormationPath(o5917, o5918, "/IngameSequences/Navigation/Forneus_Path_01")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_9", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Forneus", 0, "MMMN", 0)
  o5967.SetStateValue(True)
  CallFunction(o5956, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5957.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5957 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5957.SetStateValue(o5957.GetCalculated())
end, StartCalculate = function()
  o5957["Value"] = o5957.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5957.Value == L0) then
    o5957["Value"] = L0
    CallFunction(o5956, "ProcesseStateChange")
  end
end }
o5965 = { [nil] = {}, Start = function()
  o5965["Value"] = False
  o5543.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5965.Value == L0) then
    o5965["Value"] = L0
    o5543.ReCalculate()
  end
end }
o5966 = { [nil] = {}, Start = function()
  o5966["Value"] = False
  o5950.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5966.Value == L0) then
    o5966["Value"] = L0
    o5950.ReCalculate()
  end
end }
o5967 = { [nil] = {}, Start = function()
  o5967["Value"] = False
  o5546.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5967.Value == L0) then
    o5967["Value"] = L0
    o5546.ReCalculate()
  end
end }
o5968 = { [nil] = {}, Start = function()
  o5968["Value"] = False
  o6012.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5968.Value == L0) then
    o5968["Value"] = L0
    o6012.ReCalculate()
  end
end }
S_o5969 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5969, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 22, "Code2")
  else
    CallFunction(o5969, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1455.Node, o1455.Node, 1194)
  SendRadioMessageTake(o5491.Node, o1455.Node, 1098)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1099)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1118)
  CallFunction(o5969, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code7")
  else
    CallFunction(o5969, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SendRadioMessageTake(o1455.Node, o1455.Node, 1100)
  CallFunction(o5969, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5970.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5970 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5970.SetStateValue(o5970.GetCalculated())
end, StartCalculate = function()
  o5970["Value"] = o5970.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5970.Value == L0) then
    o5970["Value"] = L0
    CallFunction(o5969, "ProcesseStateChange")
  end
end }
S_o5975 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5975, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5917, o5918, "/IngameSequences/Navigation/Forneus_Path_BadEndChapter2")
  CallFunction(o5539, "Code23")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_11", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Forneus", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o1407, "Code6")
  CallFunction(o5975, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5975, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  CallFunction(o5975, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5976.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o5977.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5976 = { [nil] = {}, GetCalculated = function()
  if not (o1476.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5976.SetStateValue(o5976.GetCalculated())
end, StartCalculate = function()
  o5976["Value"] = o5976.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5976.Value == L0) then
    o5976["Value"] = L0
    CallFunction(o5975, "ProcesseStateChange")
  end
end }
o5977 = { [nil] = {}, GetCalculated = function()
  if not (o1414.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5977.SetStateValue(o5977.GetCalculated())
end, StartCalculate = function()
  o5977["Value"] = o5977.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5977.Value == L0) then
    o5977["Value"] = L0
    CallFunction(o5975, "ProcesseStateChange")
  end
end }
S_o5980 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5980, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o5980, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1455.Node, o1455.Node, 1195)
  CallFunction(o5980, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
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
  if not (o1476.Value ~= True) then
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
    CallFunction(o5980, "ProcesseStateChange")
  end
end }
S_o5985 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5985, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5917, o5918, "/Scenario_Dynamic/Navigation/Forneus_BlindedPath")
  CallFunction(o5539, "Code29")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_12", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o5925, o5910, "/IngameSequences/Navigation/PlayerPathC2_5")
  CallFunction(o5985, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5925, o5910, "/IngameSequences/Navigation/PlayerPathC2_5", "pos_1", "pos_2", 1, 1, "Code11")
  else
    CallFunction(o5985, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code12")
  else
    CallFunction(o5985, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1107)
  SendRadioMessageTake(o1455.Node, o1455.Node, 1111)
  CallFunction(o1565, "Code9")
  SED_SetTaskTextKey(1343, -1, -1)
  CallFunction(o5985, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5986.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5986 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5986.SetStateValue(o5986.GetCalculated())
end, StartCalculate = function()
  o5986["Value"] = o5986.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5986.Value == L0) then
    DelayedFunction(2, o5986, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5986.Value == L0) then
    o5986["Value"] = L0
    CallFunction(o5985, "ProcesseStateChange")
  end
end }
S_o5990 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5990, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code2")
  else
    CallFunction(o5990, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MTPosition_13", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/des_fpowerstation_1", 2, "MMMN", 0)
  CallFunction(o5990, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5991.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5991 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5991.SetStateValue(o5991.GetCalculated())
end, StartCalculate = function()
  o5991["Value"] = o5991.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5991.Value == L0) then
    DelayedFunction(2, o5991, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5991.Value == L0) then
    o5991["Value"] = L0
    CallFunction(o5990, "ProcesseStateChange")
  end
end }
S_o5995 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5995, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o5995, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1455.Node, o1455.Node, 1104)
  CallFunction(o5995, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5996.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5996 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5996.SetStateValue(o5996.GetCalculated())
end, StartCalculate = function()
  o5996["Value"] = o5996.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5996.Value == L0) then
    DelayedFunction(2, o5996, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5996.Value == L0) then
    o5996["Value"] = L0
    CallFunction(o5995, "ProcesseStateChange")
  end
end }
S_o6000 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6000, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o5932, o5933, "/IngameSequences/Navigation/NS01_Tursas_Path1")
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/NS01_LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/NS01_LookAt_1", 0, "MMMN", 0)
  CallFunction(o2636, "Code8")
  CallFunction(o6000, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6000, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/NS01_LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/NS01_LookAt_2", 0, "MMMN", 0)
  o6005.SetStateValue(True)
  CallFunction(o6000, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6000, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Director_EndCutscene(L0.Node)
  o1485.SetStateValue(True)
  SED_SetTaskTextKey(1340, -1, -1)
  CallFunction(o6000, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o6001.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o6002.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 14) then
    if not (L0.CodeIndex >= 15) then
      if not (o6003.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6001 = { [nil] = {}, GetCalculated = function()
  if not (o1473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6001.SetStateValue(o6001.GetCalculated())
end, StartCalculate = function()
  o6001["Value"] = o6001.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6001.Value == L0) then
    DelayedFunction(4, o6001, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6001.Value == L0) then
    o6001["Value"] = L0
    CallFunction(o6000, "ProcesseStateChange")
  end
end }
o6002 = { [nil] = {}, GetCalculated = function()
  if not (o2645.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6002.SetStateValue(o6002.GetCalculated())
end, StartCalculate = function()
  o6002["Value"] = o6002.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6002.Value == L0) then
    DelayedFunction(6, o6002, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6002.Value == L0) then
    o6002["Value"] = L0
    CallFunction(o6000, "ProcesseStateChange")
  end
end }
o6003 = { [nil] = {}, GetCalculated = function()
  if not (o7727.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6003.SetStateValue(o6003.GetCalculated())
end, StartCalculate = function()
  o6003["Value"] = o6003.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6003.Value == L0) then
    DelayedFunction(2, o6003, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6003.Value == L0) then
    o6003["Value"] = L0
    CallFunction(o6000, "ProcesseStateChange")
  end
end }
o6005 = { [nil] = {}, Start = function()
  o6005["Value"] = False
  o7709.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6005.Value == L0) then
    o6005["Value"] = L0
    o7709.ReCalculate()
  end
end }
S_o6006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o6006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o6006, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 11, "Code4")
  else
    CallFunction(o6006, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o6006, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o6006, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o6006, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o6006, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o6006, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o6006, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o6006, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6006, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o6006, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6007.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6009.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6010.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o6011.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o6012.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o6013.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o6014.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o6015.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6007 = { [nil] = {}, GetCalculated = function()
  if not (o1463.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6007.SetStateValue(o6007.GetCalculated())
end, StartCalculate = function()
  o6007["Value"] = o6007.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6007.Value == L0) then
    DelayedFunction(60, o6007, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6007.Value == L0) then
    o6007["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6009 = { [nil] = {}, GetCalculated = function()
  if not (o1473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6009.SetStateValue(o6009.GetCalculated())
end, StartCalculate = function()
  o6009["Value"] = o6009.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6009.Value == L0) then
    DelayedFunction(4, o6009, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6009.Value == L0) then
    o6009["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6010 = { [nil] = {}, GetCalculated = function()
  if not (o1485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6010.SetStateValue(o6010.GetCalculated())
end, StartCalculate = function()
  o6010["Value"] = o6010.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6010.Value == L0) then
    o6010["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6011 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6011.SetStateValue(o6011.GetCalculated())
end, StartCalculate = function()
  o6011["Value"] = o6011.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6011.Value == L0) then
    o6011["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6012 = { [nil] = {}, GetCalculated = function()
  if not (o5968.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6012.SetStateValue(o6012.GetCalculated())
end, StartCalculate = function()
  o6012["Value"] = o6012.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6012.Value == L0) then
    o6012["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6013 = { [nil] = {}, GetCalculated = function()
  if not (o1476.Value == True) then
    if not (o1477.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6013.SetStateValue(o6013.GetCalculated())
end, StartCalculate = function()
  o6013["Value"] = o6013.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6013.Value == L0) then
    o6013["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6014 = { [nil] = {}, GetCalculated = function()
  if not (o1477.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6014.SetStateValue(o6014.GetCalculated())
end, StartCalculate = function()
  o6014["Value"] = o6014.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6014.Value == L0) then
    o6014["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
o6015 = { [nil] = {}, GetCalculated = function()
  if not (o5562.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6015.SetStateValue(o6015.GetCalculated())
end, StartCalculate = function()
  o6015["Value"] = o6015.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6015.Value == L0) then
    o6015["Value"] = L0
    CallFunction(o6006, "ProcesseStateChange")
  end
end }
S_o6017 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6017, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6017, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6017, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6017, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6017, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6019.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6019 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6019.SetStateValue(o6019.GetCalculated())
end, StartCalculate = function()
  o6019["Value"] = o6019.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6019.Value == L0) then
    o6019["Value"] = L0
    CallFunction(o6017, "ProcesseStateChange")
  end
end }
S_o6065 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6065, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6065, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6065, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang2Path", 1, 1 } }("Code4")
  else
    CallFunction(o6065, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6065, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6067.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6067 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6067.SetStateValue(o6067.GetCalculated())
end, StartCalculate = function()
  o6067["Value"] = o6067.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6067.Value == L0) then
    o6067["Value"] = L0
    CallFunction(o6065, "ProcesseStateChange")
  end
end }
S_o6113 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6113, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6113, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6113, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6113, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6113, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6115.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6115 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6115.SetStateValue(o6115.GetCalculated())
end, StartCalculate = function()
  o6115["Value"] = o6115.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6115.Value == L0) then
    o6115["Value"] = L0
    CallFunction(o6113, "ProcesseStateChange")
  end
end }
S_o6161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6161, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6161, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6161, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/LightE1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6161, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6161, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6163.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6163 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6163.SetStateValue(o6163.GetCalculated())
end, StartCalculate = function()
  o6163["Value"] = o6163.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6163.Value == L0) then
    o6163["Value"] = L0
    CallFunction(o6161, "ProcesseStateChange")
  end
end }
S_o6209 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6209, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6209, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6209, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6209, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6209, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6211.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6211 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6211.SetStateValue(o6211.GetCalculated())
end, StartCalculate = function()
  o6211["Value"] = o6211.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6211.Value == L0) then
    o6211["Value"] = L0
    CallFunction(o6209, "ProcesseStateChange")
  end
end }
S_o6257 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6257, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6257, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6257, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang2Path", 1, 1 } }("Code4")
  else
    CallFunction(o6257, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6257, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6259.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6259 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6259.SetStateValue(o6259.GetCalculated())
end, StartCalculate = function()
  o6259["Value"] = o6259.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6259.Value == L0) then
    o6259["Value"] = L0
    CallFunction(o6257, "ProcesseStateChange")
  end
end }
S_o6305 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6305, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6305, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6305, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6305, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6305, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6307.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6307 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6307.SetStateValue(o6307.GetCalculated())
end, StartCalculate = function()
  o6307["Value"] = o6307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6307.Value == L0) then
    o6307["Value"] = L0
    CallFunction(o6305, "ProcesseStateChange")
  end
end }
S_o6353 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6353, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6353, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6353, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/LightE1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6353, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6353, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6355.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6355 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6355.SetStateValue(o6355.GetCalculated())
end, StartCalculate = function()
  o6355["Value"] = o6355.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6355.Value == L0) then
    o6355["Value"] = L0
    CallFunction(o6353, "ProcesseStateChange")
  end
end }
S_o6401 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6401, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6401, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6401, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6401, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6401, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6403.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6403 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6403.SetStateValue(o6403.GetCalculated())
end, StartCalculate = function()
  o6403["Value"] = o6403.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6403.Value == L0) then
    o6403["Value"] = L0
    CallFunction(o6401, "ProcesseStateChange")
  end
end }
S_o6449 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6449, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6449, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6449, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang2Path", 1, 1 } }("Code4")
  else
    CallFunction(o6449, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6449, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6451.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6451 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6451.SetStateValue(o6451.GetCalculated())
end, StartCalculate = function()
  o6451["Value"] = o6451.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6451.Value == L0) then
    o6451["Value"] = L0
    CallFunction(o6449, "ProcesseStateChange")
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
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6497, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6497, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
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
  if not (o1454.Value ~= True) then
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
S_o6545 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6545, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6545, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6545, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/LightE1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6545, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6545, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6547.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6547 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6547.SetStateValue(o6547.GetCalculated())
end, StartCalculate = function()
  o6547["Value"] = o6547.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6547.Value == L0) then
    o6547["Value"] = L0
    CallFunction(o6545, "ProcesseStateChange")
  end
end }
S_o6593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6593, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6593, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6593, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6593, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6593, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6595.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6595 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6595.SetStateValue(o6595.GetCalculated())
end, StartCalculate = function()
  o6595["Value"] = o6595.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6595.Value == L0) then
    o6595["Value"] = L0
    CallFunction(o6593, "ProcesseStateChange")
  end
end }
S_o6641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang2Path", 1, 1 } }("Code4")
  else
    CallFunction(o6641, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6641, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6643.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6643 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6643.SetStateValue(o6643.GetCalculated())
end, StartCalculate = function()
  o6643["Value"] = o6643.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6643.Value == L0) then
    o6643["Value"] = L0
    CallFunction(o6641, "ProcesseStateChange")
  end
end }
S_o6689 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6689, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6689, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6689, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6689, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6689, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6691.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6691 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6691.SetStateValue(o6691.GetCalculated())
end, StartCalculate = function()
  o6691["Value"] = o6691.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6691.Value == L0) then
    o6691["Value"] = L0
    CallFunction(o6689, "ProcesseStateChange")
  end
end }
S_o6737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6737, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6737, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6737, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/LightE1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6737, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6737, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6739.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6739 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6739.SetStateValue(o6739.GetCalculated())
end, StartCalculate = function()
  o6739["Value"] = o6739.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6739.Value == L0) then
    o6739["Value"] = L0
    CallFunction(o6737, "ProcesseStateChange")
  end
end }
S_o6785 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6785, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6785, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6785, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6785, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6785, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6787.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6787 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6787.SetStateValue(o6787.GetCalculated())
end, StartCalculate = function()
  o6787["Value"] = o6787.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6787.Value == L0) then
    o6787["Value"] = L0
    CallFunction(o6785, "ProcesseStateChange")
  end
end }
S_o6833 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6833, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6833, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6833, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Bang2Path", 1, 1 } }("Code4")
  else
    CallFunction(o6833, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6833, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6835.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6835 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6835.SetStateValue(o6835.GetCalculated())
end, StartCalculate = function()
  o6835["Value"] = o6835.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6835.Value == L0) then
    o6835["Value"] = L0
    CallFunction(o6833, "ProcesseStateChange")
  end
end }
S_o6881 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6881, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6881, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6881, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6881, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6881, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6883.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6883 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6883.SetStateValue(o6883.GetCalculated())
end, StartCalculate = function()
  o6883["Value"] = o6883.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6883.Value == L0) then
    o6883["Value"] = L0
    CallFunction(o6881, "ProcesseStateChange")
  end
end }
S_o6929 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6929, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6929, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6929, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6929, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6929, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6931.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6931 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6931.SetStateValue(o6931.GetCalculated())
end, StartCalculate = function()
  o6931["Value"] = o6931.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6931.Value == L0) then
    o6931["Value"] = L0
    CallFunction(o6929, "ProcesseStateChange")
  end
end }
S_o6977 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6977, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6977, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6977, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o6977, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6977, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6979.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6979 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6979.SetStateValue(o6979.GetCalculated())
end, StartCalculate = function()
  o6979["Value"] = o6979.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6979.Value == L0) then
    o6979["Value"] = L0
    CallFunction(o6977, "ProcesseStateChange")
  end
end }
S_o7025 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7025, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7025, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7025, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o7025, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7025, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7027.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7027 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7027.SetStateValue(o7027.GetCalculated())
end, StartCalculate = function()
  o7027["Value"] = o7027.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7027.Value == L0) then
    o7027["Value"] = L0
    CallFunction(o7025, "ProcesseStateChange")
  end
end }
S_o7073 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7073, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7073, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7073, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o7073, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7073, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7075.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7075 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7075.SetStateValue(o7075.GetCalculated())
end, StartCalculate = function()
  o7075["Value"] = o7075.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7075.Value == L0) then
    o7075["Value"] = L0
    CallFunction(o7073, "ProcesseStateChange")
  end
end }
S_o7121 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7121, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7121, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7121, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Seed1Path", 1, 1 } }("Code4")
  else
    CallFunction(o7121, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7121, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7123.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7123 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7123.SetStateValue(o7123.GetCalculated())
end, StartCalculate = function()
  o7123["Value"] = o7123.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7123.Value == L0) then
    o7123["Value"] = L0
    CallFunction(o7121, "ProcesseStateChange")
  end
end }
S_o7169 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7169, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7169, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7169, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/LightE1Path", 1, 1 } }("Code4")
  else
    CallFunction(o7169, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7169, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7171.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7171 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7171.SetStateValue(o7171.GetCalculated())
end, StartCalculate = function()
  o7171["Value"] = o7171.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7171.Value == L0) then
    o7171["Value"] = L0
    CallFunction(o7169, "ProcesseStateChange")
  end
end }
S_o7217 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7217, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7217, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7217, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7217, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath1", 1, 1 } }("Code5")
  else
    CallFunction(o7217, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7217, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7220.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7220 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7220.SetStateValue(o7220.GetCalculated())
end, StartCalculate = function()
  o7220["Value"] = o7220.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7220.Value == L0) then
    o7220["Value"] = L0
    CallFunction(o7217, "ProcesseStateChange")
  end
end }
S_o7266 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7266, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7266, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7266, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7266, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath1", 1, 1 } }("Code5")
  else
    CallFunction(o7266, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7266, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7269.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7269 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7269.SetStateValue(o7269.GetCalculated())
end, StartCalculate = function()
  o7269["Value"] = o7269.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7269.Value == L0) then
    o7269["Value"] = L0
    CallFunction(o7266, "ProcesseStateChange")
  end
end }
S_o7315 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7315, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7315, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7315, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7315, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath1", 1, 1 } }("Code5")
  else
    CallFunction(o7315, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7315, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7318.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7318 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7318.SetStateValue(o7318.GetCalculated())
end, StartCalculate = function()
  o7318["Value"] = o7318.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7318.Value == L0) then
    o7318["Value"] = L0
    CallFunction(o7315, "ProcesseStateChange")
  end
end }
S_o7364 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7364, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7364, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7364, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7364, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath1", 1, 1 } }("Code5")
  else
    CallFunction(o7364, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7364, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7367.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7367 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7367.SetStateValue(o7367.GetCalculated())
end, StartCalculate = function()
  o7367["Value"] = o7367.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7367.Value == L0) then
    o7367["Value"] = L0
    CallFunction(o7364, "ProcesseStateChange")
  end
end }
S_o7413 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7413, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7413, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7413, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7413, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath2", 1, 1 } }("Code5")
  else
    CallFunction(o7413, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7413, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7416.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7416 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7416.SetStateValue(o7416.GetCalculated())
end, StartCalculate = function()
  o7416["Value"] = o7416.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7416.Value == L0) then
    o7416["Value"] = L0
    CallFunction(o7413, "ProcesseStateChange")
  end
end }
S_o7462 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7462, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7462, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7462, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath2", 1, 1 } }("Code4")
  else
    CallFunction(o7462, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code5")
  else
    CallFunction(o7462, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7462, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7465.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7465 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7465.SetStateValue(o7465.GetCalculated())
end, StartCalculate = function()
  o7465["Value"] = o7465.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7465.Value == L0) then
    o7465["Value"] = L0
    CallFunction(o7462, "ProcesseStateChange")
  end
end }
S_o7511 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7511, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7511, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7511, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7511, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath2", 1, 1 } }("Code5")
  else
    CallFunction(o7511, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7511, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7514.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7514 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7514.SetStateValue(o7514.GetCalculated())
end, StartCalculate = function()
  o7514["Value"] = o7514.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7514.Value == L0) then
    o7514["Value"] = L0
    CallFunction(o7511, "ProcesseStateChange")
  end
end }
S_o7560 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7560, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7560, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7560, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7560, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath2", 1, 1 } }("Code5")
  else
    CallFunction(o7560, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7560, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7563.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7563 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7563.SetStateValue(o7563.GetCalculated())
end, StartCalculate = function()
  o7563["Value"] = o7563.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7563.Value == L0) then
    o7563["Value"] = L0
    CallFunction(o7560, "ProcesseStateChange")
  end
end }
S_o7609 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7609, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7609, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7609, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7609, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath2", 1, 1 } }("Code5")
  else
    CallFunction(o7609, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7609, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7612.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7612 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7612.SetStateValue(o7612.GetCalculated())
end, StartCalculate = function()
  o7612["Value"] = o7612.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7612.Value == L0) then
    o7612["Value"] = L0
    CallFunction(o7609, "ProcesseStateChange")
  end
end }
S_o7658 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7658, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7658, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7658, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 3 } }("Code4")
  else
    CallFunction(o7658, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/SchaxPath2", 1, 1 } }("Code5")
  else
    CallFunction(o7658, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7658, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7661.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7661 = { [nil] = {}, GetCalculated = function()
  if not (o1454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7661.SetStateValue(o7661.GetCalculated())
end, StartCalculate = function()
  o7661["Value"] = o7661.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7661.Value == L0) then
    o7661["Value"] = L0
    CallFunction(o7658, "ProcesseStateChange")
  end
end }
S_o7707 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7707, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7707, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7707, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/NS01_Tursas_Path2", 1, 1 } }("Code4")
  else
    CallFunction(o7707, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  o7727.SetStateValue(True)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7707, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7709.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7709 = { [nil] = {}, GetCalculated = function()
  if not (o6005.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7709.SetStateValue(o7709.GetCalculated())
end, StartCalculate = function()
  o7709["Value"] = o7709.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7709.Value == L0) then
    o7709["Value"] = L0
    CallFunction(o7707, "ProcesseStateChange")
  end
end }
o7727 = { [nil] = {}, Start = function()
  o7727["Value"] = False
  o6003.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7727.Value == L0) then
    o7727["Value"] = L0
    o6003.ReCalculate()
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 344)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry3_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry1_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_3", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_4", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_02_1", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_04_1", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_med_1/Turm1", S_o336)
  o373 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_med_2/Turm1", S_o373)
  o410 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_med_3/Turm1", S_o410)
  o447 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_Ctrl_1", S_o447)
  o451.Start()
  o483 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_Ctrl_2", S_o483)
  o519 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_Ctrl_3", S_o519)
  o523.Start()
  o555 = BindEasy(Node_Find("/Scenario_Static/Object"), "Grav_Ctrl_4", S_o555)
  o591 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o591)
  o625 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_03_1", S_o625)
  o659 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry2_1", S_o659)
  o693 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_04_2", S_o693)
  o727 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big01_1", S_o727)
  o761 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o761)
  o795 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o795)
  o829 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o829)
  o863 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o863)
  o897 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_4", S_o897)
  o931 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o931)
  o965 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o965)
  o999 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o999)
  o1033 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o1033)
  o1067 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney1_1", S_o1067)
  o1101 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney1_2", S_o1101)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_parabolic_1", S_o1135)
  o1169 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o1169)
  o1203 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dolphinhab_big_1", S_o1203)
  o1237 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o1237)
  o1271 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_2", S_o1271)
  o1305 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_3", S_o1305)
  o1339 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_4", S_o1339)
  o1373 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o1373)
  o1407 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_fpowerstation_1", S_o1407)
  o1414.Start()
  o1446 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "ForneusPosition_1", S_o1446)
  o1447 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPos_1", S_o1447)
  o1448 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPos_2", S_o1448)
  o1449 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TursasReached", S_o1449)
  o1454.Start()
  o1455 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1455)
  o1460.Start()
  o1465.Start()
  o1475.Start()
  o1485.Start()
  o1487.Start()
  o1516 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka_c6_1", S_o1516)
  o1565 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka_c6_2", S_o1565)
  o1617 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c6_1", S_o1617)
  o1667 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c6_1", S_o1667)
  o1717 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c6_1", S_o1717)
  o1767 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone"), "CreoleGirl", S_o1767)
  o1774.Start()
  o1817 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone"), "tz_scout2v4_1", S_o1817)
  o1865 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone"), "tz_scout2v4_2", S_o1865)
  o1913 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone"), "tz_scout2v4_3", S_o1913)
  o1961 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone"), "tz_scout2v4_4", S_o1961)
  o2009 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TornadoZone"), "tz_scout2v4_5", S_o2009)
  o2058 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_scout1_1", S_o2058)
  o2106 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_scout1_2", S_o2106)
  o2154 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_scout2_1", S_o2154)
  o2202 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_fregatte_1", S_o2202)
  o2250 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_fregatte_2", S_o2250)
  o2298 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_scout1_4", S_o2298)
  o2347 = BindEasy(Node_Find("/Scenario_Dynamic/Object/AtlaticFederation"), "atl_scout2_2", S_o2347)
  o2396 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_bomber_G1_1", S_o2396)
  o2444 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout1_G1_1", S_o2444)
  o2492 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v1_G1_1", S_o2492)
  o2540 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G1_1", S_o2540)
  o2588 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G1_2", S_o2588)
  o2636 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_tursas_6h4_1", S_o2636)
  o2643.Start()
  o2645.Start()
  o2688 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_bomber_G2_dock1", S_o2688)
  o2700.Start()
  o2706.Start()
  o2739 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_bomber_G2_dock2", S_o2739)
  o2751.Start()
  o2757.Start()
  o2790 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_bomber_G2_dock3", S_o2790)
  o2801.Start()
  o2807.Start()
  o2840 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_bomber_G2_dock4", S_o2840)
  o2851.Start()
  o2857.Start()
  o2890 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_bomber_G2_1", S_o2890)
  o2939 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G2_1", S_o2939)
  o2944.Start()
  o2988 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G2_2", S_o2988)
  o3037 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G2_3", S_o3037)
  o3086 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G2_4", S_o3086)
  o3135 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G2_5", S_o3135)
  o3184 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_scout2v2_G2_6", S_o3184)
  o3233 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_fregatte_G2_1", S_o3233)
  o3284 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Crawler"), "cra_fregatte_G2_2", S_o3284)
  o3335 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G1_1", S_o3335)
  o3383 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G1_2", S_o3383)
  o3431 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G1_1", S_o3431)
  o3479 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_lighteater_G1_1", S_o3479)
  o3527 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_raider_G1_1", S_o3527)
  o3575 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_raider_G1_2", S_o3575)
  o3623 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G2_1", S_o3623)
  o3671 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G2_2", S_o3671)
  o3719 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G2_1", S_o3719)
  o3767 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G2_2", S_o3767)
  o3815 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_raider_G2_1", S_o3815)
  o3863 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G3_1", S_o3863)
  o3911 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G3_2", S_o3911)
  o3959 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G3_1", S_o3959)
  o4007 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G3_2", S_o4007)
  o4055 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G3_3", S_o4055)
  o4103 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G3_4", S_o4103)
  o4151 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G3_5", S_o4151)
  o4199 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_raider_G3_1", S_o4199)
  o4247 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_raider_G3_2", S_o4247)
  o4295 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G4_1", S_o4295)
  o4343 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G4_2", S_o4343)
  o4391 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G4_3", S_o4391)
  o4439 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G4_1", S_o4439)
  o4487 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G4_2", S_o4487)
  o4535 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G4_3", S_o4535)
  o4583 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G4_4", S_o4583)
  o4631 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G4_5", S_o4631)
  o4679 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G10_1", S_o4679)
  o4728 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G10_2", S_o4728)
  o4777 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G10_3", S_o4777)
  o4825 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G10_4", S_o4825)
  o4873 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G10_1", S_o4873)
  o4922 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_head_G10_1", S_o4922)
  o4938.Start()
  o4969 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G11_1", S_o4969)
  o5018 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G11_2", S_o5018)
  o5067 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G11_3", S_o5067)
  o5115 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G11_4", S_o5115)
  o5163 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_bang_G11_5", S_o5163)
  o5211 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G11_1", S_o5211)
  o5260 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_booster_G11_2", S_o5260)
  o5308 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax"), "old_schax_head_G11_1", S_o5308)
  o5355 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Squids"), "old_crocell_1", S_o5355)
  o5364.Start()
  o5395 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Bionts"), "bio_scout_1", S_o5395)
  o5443 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Bionts"), "bio_scout_2", S_o5443)
  o5491 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "TURSAS", S_o5491)
  o5539 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Forneus", S_o5539)
  o5560.Start()
  o5562.Start()
  o5591 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o5591)
  o5596 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_6h4_1", S_o5596)
  o5601.Start()
  o5602.Start()
  o5644 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_6h4_2", S_o5644)
  o5649.Start()
  o5650.Start()
  o5692 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_6h4_3", S_o5692)
  o5698.Start()
  o5699.Start()
  o5702.Start()
  o5741 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_6h4_4", S_o5741)
  o5750.Start()
  o5751.Start()
  o5754.Start()
  o5793 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_6h4_5", S_o5793)
  o5802.Start()
  o5803.Start()
  o5806.Start()
  o5845 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_6h4_6", S_o5845)
  o5854.Start()
  o5855.Start()
  o5897 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o5897)
  o5900.Start()
  o5902 = BindEasy(Node_Find("/"), "Camera", S_o5902)
  o5905 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o5905)
  o5906 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o5906)
  o5907 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o5907)
  o5908 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o5908)
  o5911 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_1", S_o5911)
  o5912 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_2", S_o5912)
  o5913 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_3", S_o5913)
  o5914 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_4", S_o5914)
  o5915 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_5", S_o5915)
  o5916 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LAPosition_1", S_o5916)
  o5919 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_6", S_o5919)
  o5920 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_7", S_o5920)
  o5921 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_8", S_o5921)
  o5922 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_9", S_o5922)
  o5923 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_10", S_o5923)
  o5924 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_11", S_o5924)
  o5926 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_12", S_o5926)
  o5927 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MTPosition_13", S_o5927)
  o5928 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NS01_LookFrom_1", S_o5928)
  o5929 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NS01_LookAt_1", S_o5929)
  o5930 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NS01_LookFrom_2", S_o5930)
  o5931 = BindEasy(Node_Find("/IngameSequences/Navigation"), "NS01_LookAt_2", S_o5931)
  o5954.Start()
  o5955.Start()
  o5965.Start()
  o5966.Start()
  o5967.Start()
  o5968.Start()
  o6005.Start()
  o6017 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_1", S_o6017)
  o6065 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_2", S_o6065)
  o6113 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_1", S_o6113)
  o6161 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_lighteater_1", S_o6161)
  o6209 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_3", S_o6209)
  o6257 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_4", S_o6257)
  o6305 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_2", S_o6305)
  o6353 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_lighteater_2", S_o6353)
  o6401 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_5", S_o6401)
  o6449 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_6", S_o6449)
  o6497 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_3", S_o6497)
  o6545 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_lighteater_3", S_o6545)
  o6593 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_7", S_o6593)
  o6641 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_8", S_o6641)
  o6689 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_4", S_o6689)
  o6737 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_lighteater_4", S_o6737)
  o6785 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_9", S_o6785)
  o6833 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_bang_10", S_o6833)
  o6881 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_5", S_o6881)
  o6929 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_6", S_o6929)
  o6977 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_7", S_o6977)
  o7025 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_8", S_o7025)
  o7073 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_9", S_o7073)
  o7121 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_seed_10", S_o7121)
  o7169 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_lighteater_5", S_o7169)
  o7217 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_1", S_o7217)
  o7266 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_2", S_o7266)
  o7315 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_3", S_o7315)
  o7364 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_4", S_o7364)
  o7413 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_5", S_o7413)
  o7462 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_6", S_o7462)
  o7511 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_7", S_o7511)
  o7560 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_8", S_o7560)
  o7609 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_9", S_o7609)
  o7658 = BindEasy(Node_Find("/IngameSequences/Object"), "old_schax_booster_10", S_o7658)
  o7707 = BindEasy(Node_Find("/IngameSequences/Object"), "cra_tursas_1", S_o7707)
  o7727.Start()
  o5934 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o5934)
  o5939 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_AddOn_V", S_o5939)
  o5942 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o5942)
  o5945 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o5945)
  o5956 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_AddOn_V", S_o5956)
  o5969 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A", S_o5969)
  o5975 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_ExtroBAD_V", S_o5975)
  o5980 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_ExtroBAD_A", S_o5980)
  o5985 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_ExtroGOOD_V", S_o5985)
  o5990 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_ExtroGOOD_AddOn_V", S_o5990)
  o5995 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_ExtroGOOD_A", S_o5995)
  o6000 = BindEasy(Node_Find("/IngameSequences/Director"), "NewScene01_V", S_o6000)
  o6006 = BindEasy(Node_Find("/IngameSequences/Director"), "Music", S_o6006)
  o5903 = { {}, o1455, o1516, o1617, o1667, o1717 }()
  o5909 = { {}, o1455 }()
  o5917 = { {}, o5539 }()
  o5925 = { {}, o1455, o1565 }()
  o5932 = { {}, o2636 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end