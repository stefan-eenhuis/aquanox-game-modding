-- dekompiliert aus map\5h2\script\5h2.sco
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
  Terrain_LoadTerrain(node1, "map/5H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/3H2/Lmsh/", "map/3H2/Ltex/")
  Game_SetTerrainDepth(node0, 1024)
  Game_SetDecompressionHeight(node0, 700)
  Game_SetAmbientLight(node0, 0.180392, 0.156863, 0.039216)
  Game_SetParallelLightT(node0, 0.078431, 0.360784, 0.34902)
  Game_SetParallelLightB(node0, 0.360784, 0.313725, 0.078431)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_5H2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_futurealarm.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 4)
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
  node8 = Node_CreateNode("nod_generic", "tz_elem07_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2777.241, 973.323, 560), MAT_Vector3(-72, 0, 0))
  Node_ParseIniFile(node8, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "tz_elem07_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3242.047, 293.4984, 545.9152), MAT_Vector3(56.67688, 0, 0))
  Node_ParseIniFile(node9, "osd/tz/tz_element07.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_elem04_1_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2846.688, 761.377, 550), MAT_Vector3(-72, 0, 0))
  Node_ParseIniFile(node10, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_elem04_1_3")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3089.796, 769.572, 523), MAT_Vector3(-72, 0, 0))
  Node_ParseIniFile(node11, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "tz_elem04_1_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2870.912, 690.3925, 550), MAT_Vector3(108.5, 0, 0))
  Node_ParseIniFile(node12, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "tz_elem05_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3050.39, 704.8703, 549.8391), MAT_Vector3(-160.404, 0, 0))
  Node_ParseIniFile(node13, "osd/tz/tz_element05.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "tz_elem05_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2999.983, 317.9832, 522), MAT_Vector3(-32.51701, 0, 0))
  Node_ParseIniFile(node14, "osd/tz/tz_element05.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_elem01_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2863.36, 659.5068, 550.7412), MAT_Vector3(108.5, 0, 0))
  Node_ParseIniFile(node15, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_elem01_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3027.256, 435.0107, 522), MAT_Vector3(-31.34427, 0, 0))
  Node_ParseIniFile(node16, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "tz_elem04_2_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2976.538, 389.9714, 520.6211), MAT_Vector3(-120, 0, 0))
  Node_ParseIniFile(node17, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "tz_elem04_2_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2870.912, 690.3925, 550), MAT_Vector3(108.5, 0, 0))
  Node_ParseIniFile(node18, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_elem04_2_3")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(2846.688, 761.377, 550), MAT_Vector3(-72, 0, 0))
  Node_ParseIniFile(node19, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3680.701, 331.7741, 516.6593), MAT_Vector3(-172.5987, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_elem06_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(3040.333, 922.469, 547.8957), MAT_Vector3(-72, 0, 0))
  Node_ParseIniFile(node21, "osd/tz/tz_element06.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_schwim_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3175.79, 518.4577, 520.1047), MAT_Vector3(-31.42515, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_kannon_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2642.141, 1574.889, 539.5957), MAT_Vector3(-13.64545, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_kannon_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3006.196, 1173.721, 544.9459), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_kannon_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3152.222, 808.2492, 545.5191), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_kannon_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3264.932, 625.8103, 531.7614), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_kannon_5")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3478.297, 425.9114, 523.9272), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_kannon_6")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3827.084, 478.0374, 523.9272), MAT_Vector3(44.08859, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_kraft12_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3112.355, 373.5557, 512.9412), MAT_Vector3(-31.61957, 0.015592, 0.107982))
  Node_ParseIniFile(node29, "osd/gen/gen_pplant12.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_kraft2_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3424.439, 188.6084, 516.2283), MAT_Vector3(62.83591, 1.077054, -0.823883))
  Node_ParseIniFile(node30, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "tz_elem04_1_4")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2995.196, 637.3516, 590.9329), MAT_Vector3(106.6972, 0, 0))
  Node_ParseIniFile(node31, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "tz_elem04_1_5")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(3008.323, 501.3609, 545.7517), MAT_Vector3(-71.851, 0, 0))
  Node_ParseIniFile(node32, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "tz_elem01_r_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3007.956, 569.0979, 543.9846), MAT_Vector3(17.26891, 0, 0))
  Node_ParseIniFile(node33, "osd/tz/tz_element01_raw.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node34)
  Node_ParseIniFile(node34, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_fx_sky", "fx_sky_08_1")
  Node_AddSon(node7, node35)
  Node_ParseIniFile(node35, "osd/fx_sky/fx_sky_08.osd")
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_fx_plankton", "fx_plankton_brown_1")
  Node_AddSon(node7, node36)
  Node_ParseIniFile(node36, "osd/fx_plankton/fx_plankton_brown.osd")
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node7, node37)
  Node_ParseIniFile(node37, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node37, "map/3H2/Terrain/fungus02.tga")
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node38)
  Node_ParseIniFile(node38, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node38, "map/3H2/Terrain/stone01.tga")
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_fx_plant", "coral_04_1")
  Node_AddSon(node7, node39)
  Node_ParseIniFile(node39, "osd/fx_plant/coral_04.osd")
  FX_Plant_SetMap(node39, "map/3H2/Terrain/coral04.tga")
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2605.518, 229.2887, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2634.449, 322.1947, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(446.6855, 430.9437, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(802.0262, 3664.117, 400), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(842.2092, 3593.797, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(597.0791, 3049.746, 455), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2257.859, 262.038, 600), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_fungus", "fungus_02_9")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2319.719, 215.2501, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_fungus", "fungus_02_10")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2050.211, 139.0601, 540), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_fungus", "fungus_02_11")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(266.5938, 1631.435, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_fungus", "fungus_02_12")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1264.181, 3318.214, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_fungus", "fungus_02_13")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1172.385, 3278.334, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node52)
  Node_ParseIniFile(node52, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node52, "map/3H2/Terrain/coral01.tga")
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node53)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node53, node54)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node53, node55)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_PatrolArea", "all_area")
  Node_AddSon(node55, node56)
  PatrolArea_SetPosition(node56, MAT_Vector3(2000, 2000, 0))
  PatrolArea_SetRadius(node56, 3000)
  PatrolArea_SetMinZ(node56, -20)
  PatrolArea_SetMaxZ(node56, 2000)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_PatrolArea", "dockarea")
  Node_AddSon(node55, node57)
  PatrolArea_SetPosition(node57, MAT_Vector3(3596.543, 494.7389, 574.1276))
  PatrolArea_SetRadius(node57, 100)
  PatrolArea_SetMinZ(node57, -20)
  PatrolArea_SetMaxZ(node57, 20)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Path", "path_approach")
  Node_AddSon(node55, node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node58, node59)
  Position_SetPosition(node59, MAT_Vector3(3793.511, 603.1217, 561))
  Position_SetRadius(node59, 15)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node58, node60)
  Position_SetPosition(node60, MAT_Vector3(3803.835, 495.8079, 561.3056))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Path", "path_dock")
  Node_AddSon(node55, node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node61, node62)
  Position_SetPosition(node62, MAT_Vector3(3754.504, 466.6748, 561.6161))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node61, node63)
  Position_SetPosition(node63, MAT_Vector3(3764.717, 408.1921, 561.6161))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_1")
  Node_AddSon(node55, node64)
  PatrolArea_SetPosition(node64, MAT_Vector3(3525.859, 637.9457, 615))
  PatrolArea_SetRadius(node64, 400)
  PatrolArea_SetMinZ(node64, 0)
  PatrolArea_SetMaxZ(node64, 250)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_2")
  Node_AddSon(node55, node65)
  PatrolArea_SetPosition(node65, MAT_Vector3(3095.419, 1336.704, 615))
  PatrolArea_SetRadius(node65, 400)
  PatrolArea_SetMinZ(node65, 0)
  PatrolArea_SetMaxZ(node65, 250)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_3")
  Node_AddSon(node55, node66)
  PatrolArea_SetPosition(node66, MAT_Vector3(3205.034, 969.9829, 358.8929))
  PatrolArea_SetRadius(node66, 1000)
  PatrolArea_SetMinZ(node66, -800)
  PatrolArea_SetMaxZ(node66, 800)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_PatrolArea", "DigArea_A")
  Node_AddSon(node55, node67)
  PatrolArea_SetPosition(node67, MAT_Vector3(1118.552749, 3721.226783, 509.765547))
  PatrolArea_SetRadius(node67, 250)
  PatrolArea_SetMinZ(node67, -20)
  PatrolArea_SetMaxZ(node67, 20)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_PatrolArea", "DigArea_B")
  Node_AddSon(node55, node68)
  PatrolArea_SetPosition(node68, MAT_Vector3(1492.178564, 3716.374577, 513.047552))
  PatrolArea_SetRadius(node68, 250)
  PatrolArea_SetMinZ(node68, -20)
  PatrolArea_SetMaxZ(node68, 20)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_PatrolArea", "DigArea_C")
  Node_AddSon(node55, node69)
  PatrolArea_SetPosition(node69, MAT_Vector3(1858.525796, 3672.70377, 509.7655))
  PatrolArea_SetRadius(node69, 250)
  PatrolArea_SetMinZ(node69, -20)
  PatrolArea_SetMaxZ(node69, 20)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_PatrolArea", "Freighter_P_Area")
  Node_AddSon(node55, node70)
  PatrolArea_SetPosition(node70, MAT_Vector3(1539.908176, 3715.281606, 560.831071))
  PatrolArea_SetRadius(node70, 200)
  PatrolArea_SetMinZ(node70, -25)
  PatrolArea_SetMaxZ(node70, 35)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_PatrolArea", "Freighter_T_Area")
  Node_AddSon(node55, node71)
  PatrolArea_SetPosition(node71, MAT_Vector3(1539.908, 3715.282, 597.600988))
  PatrolArea_SetRadius(node71, 400)
  PatrolArea_SetMinZ(node71, -125)
  PatrolArea_SetMaxZ(node71, 100)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_PatrolArea", "Freighter_T2_Area")
  Node_AddSon(node55, node72)
  PatrolArea_SetPosition(node72, MAT_Vector3(1539.908, 3715.282, 597.601))
  PatrolArea_SetRadius(node72, 600)
  PatrolArea_SetMinZ(node72, -125)
  PatrolArea_SetMaxZ(node72, 100)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_PatrolArea", "Freighter_F_Area")
  Node_AddSon(node55, node73)
  PatrolArea_SetPosition(node73, MAT_Vector3(1539.908, 3715.282, 597.601))
  PatrolArea_SetRadius(node73, 550)
  PatrolArea_SetMinZ(node73, -125)
  PatrolArea_SetMaxZ(node73, 100)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_PatrolArea", "Freighter_F2_Area")
  Node_AddSon(node55, node74)
  PatrolArea_SetPosition(node74, MAT_Vector3(1539.908, 3715.282, 597.601))
  PatrolArea_SetRadius(node74, 900)
  PatrolArea_SetMinZ(node74, -125)
  PatrolArea_SetMaxZ(node74, 100)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Path", "Bonham_Path_1")
  Node_AddSon(node55, node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node75, node76)
  Position_SetPosition(node76, MAT_Vector3(1369.579199, 2813.3859, 589))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node75, node77)
  Position_SetPosition(node77, MAT_Vector3(1359.575652, 2864.850689, 589))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node75, node78)
  Position_SetPosition(node78, MAT_Vector3(1323.86616, 2959.509244, 591.021349))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node75, node79)
  Position_SetPosition(node79, MAT_Vector3(1283.331018, 3132.531075, 604.862172))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node75, node80)
  Position_SetPosition(node80, MAT_Vector3(1304.325824, 3309.095695, 592.579207))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Path", "DeGrande_Path_1")
  Node_AddSon(node55, node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node81, node82)
  Position_SetPosition(node82, MAT_Vector3(1335.551426, 2801.170224, 589))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node81, node83)
  Position_SetPosition(node83, MAT_Vector3(1300.204252, 2856.376599, 589))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node81, node84)
  Position_SetPosition(node84, MAT_Vector3(1260.588366, 2957.639706, 591.0213))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node81, node85)
  Position_SetPosition(node85, MAT_Vector3(1242.385563, 3129.688368, 604.8622))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node81, node86)
  Position_SetPosition(node86, MAT_Vector3(1277.207313, 3332.432348, 592.5792))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Path", "Harper_Path_1")
  Node_AddSon(node55, node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node87, node88)
  Position_SetPosition(node88, MAT_Vector3(1303.61936, 2786.033997, 589))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node87, node89)
  Position_SetPosition(node89, MAT_Vector3(1260.541705, 2847.179224, 589))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node87, node90)
  Position_SetPosition(node90, MAT_Vector3(1235.296, 2932.348, 591.0213))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node87, node91)
  Position_SetPosition(node91, MAT_Vector3(1198.699345, 3125.664698, 604.8622))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node87, node92)
  Position_SetPosition(node92, MAT_Vector3(1243.293108, 3343.353705, 592.5792))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Path", "Pico_Path_1")
  Node_AddSon(node55, node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(1267.405331, 2777.411698, 589))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node93, node95)
  Position_SetPosition(node95, MAT_Vector3(1229.501712, 2840.855978, 589))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node93, node96)
  Position_SetPosition(node96, MAT_Vector3(1191.609669, 2932.92282, 591.0213))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node93, node97)
  Position_SetPosition(node97, MAT_Vector3(1164.784907, 3125.089799, 604.8622))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node93, node98)
  Position_SetPosition(node98, MAT_Vector3(1220.299892, 3358.299367, 592.5792))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Path", "Chaka_Path_1")
  Node_AddSon(node55, node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node99, node100)
  Position_SetPosition(node100, MAT_Vector3(1228.89205, 2765.915597, 589))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node99, node101)
  Position_SetPosition(node101, MAT_Vector3(1185.240849, 2837.407079, 589))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node99, node102)
  Position_SetPosition(node102, MAT_Vector3(1136.427266, 2946.143863, 591.0213))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node99, node103)
  Position_SetPosition(node103, MAT_Vector3(1133.744187, 3122.215799, 604.8622))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node99, node104)
  Position_SetPosition(node104, MAT_Vector3(1186.960533, 3359.449166, 592.5792))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Path", "TZTank_Path_1")
  Node_AddSon(node55, node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node105, node106)
  Position_SetPosition(node106, MAT_Vector3(1208.044691, 3103.818711, 587.791512))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node105, node107)
  Position_SetPosition(node107, MAT_Vector3(1268.2721, 3278.596292, 580.687426))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node105, node108)
  Position_SetPosition(node108, MAT_Vector3(1265.910241, 3389.603674, 580.514389))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_PatrolArea", "FreighterTriggerArea")
  Node_AddSon(node55, node109)
  PatrolArea_SetPosition(node109, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node109, 250)
  PatrolArea_SetMinZ(node109, -125)
  PatrolArea_SetMaxZ(node109, 125)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_PatrolArea", "FreighterFollowArea")
  Node_AddSon(node55, node110)
  PatrolArea_SetPosition(node110, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node110, 450)
  PatrolArea_SetMinZ(node110, -225)
  PatrolArea_SetMaxZ(node110, 225)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Path", "FreighterPath_1")
  Node_AddSon(node55, node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node111, node112)
  Position_SetPosition(node112, MAT_Vector3(1729.682305, 3576.505022, 650))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node111, node113)
  Position_SetPosition(node113, MAT_Vector3(1914.068715, 3532.834462, 650))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node111, node114)
  Position_SetPosition(node114, MAT_Vector3(2111.47443, 3422.888724, 650))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node111, node115)
  Position_SetPosition(node115, MAT_Vector3(2235.401465, 3237.225302, 650))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node111, node116)
  Position_SetPosition(node116, MAT_Vector3(2320.034057, 3054.417598, 650))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node111, node117)
  Position_SetPosition(node117, MAT_Vector3(2414.823023, 2780.206897, 650))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node111, node118)
  Position_SetPosition(node118, MAT_Vector3(2553.6545, 2406.1853, 650))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node111, node119)
  Position_SetPosition(node119, MAT_Vector3(2709.345625, 2258.867358, 520))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node111, node120)
  Position_SetPosition(node120, MAT_Vector3(3002.176376, 2395.972552, 455))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node111, node121)
  Position_SetPosition(node121, MAT_Vector3(3176.048962, 2834.132865, 455))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node111, node122)
  Position_SetPosition(node122, MAT_Vector3(3183.003918, 3355.751887, 455))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Path", "Bonham_Path_Out")
  Node_AddSon(node55, node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node123, node124)
  Position_SetPosition(node124, MAT_Vector3(3257.11669, 3060.852381, 300))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node123, node125)
  Position_SetPosition(node125, MAT_Vector3(3252.264718, 2058.855771, 300))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Path", "DeGrande_Path_Out")
  Node_AddSon(node55, node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node126, node127)
  Position_SetPosition(node127, MAT_Vector3(3201.315757, 3051.147436, 300))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node126, node128)
  Position_SetPosition(node128, MAT_Vector3(3167.350065, 2046.725295, 300))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Path", "Pico_Path_Out")
  Node_AddSon(node55, node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node129, node130)
  Position_SetPosition(node130, MAT_Vector3(3126.105629, 3053.573141, 300))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node129, node131)
  Position_SetPosition(node131, MAT_Vector3(3118.82718, 2046.725, 300))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Path", "Harper_Path_Out")
  Node_AddSon(node55, node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node132, node133)
  Position_SetPosition(node133, MAT_Vector3(3038.764924, 3046.294577, 300))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node132, node134)
  Position_SetPosition(node134, MAT_Vector3(3041.190488, 2029.742013, 300))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Path", "Chaka_Path_Out")
  Node_AddSon(node55, node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node135, node136)
  Position_SetPosition(node136, MAT_Vector3(2978.111475, 3046.295, 300))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node135, node137)
  Position_SetPosition(node137, MAT_Vector3(2978.110334, 2022.463577, 300))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node53, node138)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node53, node139)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node139, node140)
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetCS(node140, MAT_Vector3(2487.841148, 2473.462486, 623.088111), MAT_Vector3(34.294, 0, 0))
  Trigger_SetBoxMode(node140, 150, 50, 150)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node139, node141)
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetCS(node141, MAT_Vector3(3106.506898, 2701.519233, 434.139742), MAT_Vector3(-0.174719, 0, 0))
  Trigger_SetBoxMode(node141, 150, 50, 150)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Trigger", "SafetyZone")
  Node_AddSon(node139, node142)
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetCS(node142, MAT_Vector3(3116.211564, 2284.22275, 391.251192), MAT_Vector3(-0.174719, 0, 0))
  Trigger_SetBoxMode(node142, 1000, 50, 400)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node53, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node143, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "tz_sco1v1_3")
  Node_AddSon(node144, node145)
  Body_SetCS(node145, MAT_Vector3(2770.933, 626.0936, 930), MAT_Vector3(-164.3334, 0, 0))
  Node_ParseIniFile(node145, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "tz_sco1v1_2")
  Node_AddSon(node144, node146)
  Body_SetCS(node146, MAT_Vector3(2739.891, 617.8521, 930), MAT_Vector3(-161.495, 0, 0))
  Node_ParseIniFile(node146, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "tz_sco1v1_1")
  Node_AddSon(node144, node147)
  Body_SetCS(node147, MAT_Vector3(2747.266, 640.0234, 930), MAT_Vector3(-158.8502, 0, 0))
  Node_ParseIniFile(node147, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node143, node148)
  Body_SetCS(node148, MAT_Vector3(2786.914564, 330.068176, 607.059948), MAT_Vector3(-2.097868, 0, 0))
  Node_ParseIniFile(node148, "osd/pla/pla_succubus2.osd")
  Body_SetFriendOrFoeID(node148, 3)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_vessel", "Bonham_c5_1")
  Node_AddSon(node143, node149)
  Body_SetCS(node149, MAT_Vector3(2807.313845, 355.641892, 682.085579), MAT_Vector3(89.364571, 0, 0))
  Node_ParseIniFile(node149, "osd/wng/wng_bonham_c5.osd")
  Body_SetFriendOrFoeID(node149, 4)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vessel", "DeGrange_c5_1")
  Node_AddSon(node143, node150)
  Body_SetCS(node150, MAT_Vector3(2808.115921, 301.90275, 619.084414), MAT_Vector3(89.503776, 0, 0))
  Node_ParseIniFile(node150, "osd/wng/wng_degrange_c5.osd")
  Body_SetFriendOrFoeID(node150, 4)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vessel", "Harper_5h2_1")
  Node_AddSon(node143, node151)
  Body_SetCS(node151, MAT_Vector3(2834.476462, 372.546911, 617.460377), MAT_Vector3(89.520921, 0, 0))
  Node_ParseIniFile(node151, "osd/wng/wng_harper_5h2.osd")
  Body_SetFriendOrFoeID(node151, 4)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "Pico_c5_1")
  Node_AddSon(node143, node152)
  Body_SetCS(node152, MAT_Vector3(2833.381339, 284.257061, 619.084414), MAT_Vector3(90.339592, 0, 0))
  Node_ParseIniFile(node152, "osd/wng/wng_pico_c5.osd")
  Body_SetFriendOrFoeID(node152, 4)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "Chaka_c5_1")
  Node_AddSon(node143, node153)
  Body_SetCS(node153, MAT_Vector3(2867.008555, 379.904125, 619.084414), MAT_Vector3(89.76903, 0, 0))
  Node_ParseIniFile(node153, "osd/wng/wng_chaka_c5.osd")
  Body_SetFriendOrFoeID(node153, 4)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Directory", "KingsTanks_Directory")
  Node_AddSon(node143, node154)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vehicle", "tz_tank1_1")
  Node_AddSon(node154, node155)
  Body_SetCS(node155, MAT_Vector3(1196.49569, 2929.43717, 621.312617), MAT_Vector3(2.630971, 0, 0))
  Node_ParseIniFile(node155, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node155, 1)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vehicle", "tz_tank1_2")
  Node_AddSon(node154, node156)
  Body_SetCS(node156, MAT_Vector3(1304.632455, 2963.197685, 610.530012), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node156, 1)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vehicle", "tz_tank1_3")
  Node_AddSon(node154, node157)
  Body_SetCS(node157, MAT_Vector3(1296.173765, 2927.083389, 610.530012), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node157, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node157, 1)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vehicle", "tz_tank1_4")
  Node_AddSon(node154, node158)
  Body_SetCS(node158, MAT_Vector3(1254.498761, 3009.403512, 610.530012), MAT_Vector3(0.198866, 0, 0))
  Node_ParseIniFile(node158, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node158, 1)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_vehicle", "tz_tank2_1")
  Node_AddSon(node154, node159)
  Body_SetCS(node159, MAT_Vector3(1375.208011, 2884.338428, 642.656708), MAT_Vector3(28.692088, 0, 0))
  Node_ParseIniFile(node159, "osd/tz/tz_tank2.osd")
  Body_SetFriendOrFoeID(node159, 1)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_vehicle", "tz_tank2_2")
  Node_AddSon(node154, node160)
  Body_SetCS(node160, MAT_Vector3(1202.969789, 2992.632366, 642.656708), MAT_Vector3(7.546558, 0, 0))
  Node_ParseIniFile(node160, "osd/tz/tz_tank2.osd")
  Body_SetFriendOrFoeID(node160, 1)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_vehicle", "tz_tank1_1_1")
  Node_AddSon(node154, node161)
  Body_SetCS(node161, MAT_Vector3(1684.444614, 2576.649916, 621.3126), MAT_Vector3(59.609698, 0, 0))
  Node_ParseIniFile(node161, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_vehicle", "tz_tank1_1_2")
  Node_AddSon(node154, node162)
  Body_SetCS(node162, MAT_Vector3(1577.153238, 2585.045267, 621.3126), MAT_Vector3(59.6097, 0, 0))
  Node_ParseIniFile(node162, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_vehicle", "tz_tank1_1_3")
  Node_AddSon(node154, node163)
  Body_SetCS(node163, MAT_Vector3(1503.000979, 2630.455661, 621.3126), MAT_Vector3(59.6097, 0, 0))
  Node_ParseIniFile(node163, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_vehicle", "tz_tank1_1_4")
  Node_AddSon(node154, node164)
  Body_SetCS(node164, MAT_Vector3(1576.003501, 2648.850201, 621.3126), MAT_Vector3(59.6097, 0, 0))
  Node_ParseIniFile(node164, "osd/tz/tz_tank1.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_vehicle", "tz_tank2_1_1")
  Node_AddSon(node154, node165)
  Body_SetCS(node165, MAT_Vector3(1593.895418, 2607.481781, 642.6567), MAT_Vector3(57.35236, 0, 0))
  Node_ParseIniFile(node165, "osd/tz/tz_tank2.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_vessel", "cra_freighter_1")
  Node_AddSon(node143, node166)
  Body_SetCS(node166, MAT_Vector3(1528.710213, 3726.637889, 616.706213), MAT_Vector3(-132.558421, 0, 0))
  Node_ParseIniFile(node166, "osd/cra/cra_freighter.osd")
  Body_SetFriendOrFoeID(node166, 5)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Directory", "CrawlerDigger_Directory")
  Node_AddSon(node143, node167)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vehicle", "cra_raupe_1_1")
  Node_AddSon(node167, node168)
  Body_SetCS(node168, MAT_Vector3(1047.458899, 3591.198435, 737.864365), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node168, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node168, 6)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vehicle", "cra_raupe_1_2")
  Node_AddSon(node167, node169)
  Body_SetCS(node169, MAT_Vector3(918.873528, 3663.98223, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node169, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node169, 6)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_vehicle", "cra_raupe_1_3")
  Node_AddSon(node167, node170)
  Body_SetCS(node170, MAT_Vector3(1018.345281, 3841.090292, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node170, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node170, 6)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vehicle", "cra_raupe_2_1")
  Node_AddSon(node167, node171)
  Body_SetCS(node171, MAT_Vector3(1508.425893, 3545.100669, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node171, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node171, 6)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vehicle", "cra_raupe_2_2")
  Node_AddSon(node167, node172)
  Body_SetCS(node172, MAT_Vector3(1377.414387, 3734.339997, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node172, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node172, 6)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vehicle", "cra_raupe_2_3")
  Node_AddSon(node167, node173)
  Body_SetCS(node173, MAT_Vector3(1603.045499, 3625.163653, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node173, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node173, 6)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vehicle", "cra_raupe_3_1")
  Node_AddSon(node167, node174)
  Body_SetCS(node174, MAT_Vector3(1969.393005, 3770.732026, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node174, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node174, 6)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vehicle", "cra_raupe_3_2")
  Node_AddSon(node167, node175)
  Body_SetCS(node175, MAT_Vector3(1821.398404, 3843.516256, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node175, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node175, 6)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vehicle", "cra_raupe_3_3")
  Node_AddSon(node167, node176)
  Body_SetCS(node176, MAT_Vector3(1882.051929, 3515.987222, 737.8644), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node176, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node176, 6)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "cra_scout2v1_1_1")
  Node_AddSon(node143, node177)
  Body_SetCS(node177, MAT_Vector3(1436.431617, 3658.10323, 609.7655), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node177, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node177, 2)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "cra_scout2v1_1_2")
  Node_AddSon(node143, node178)
  Body_SetCS(node178, MAT_Vector3(1395.187603, 3735.739512, 609.7655), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node178, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node178, 2)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "cra_scout2v1_1_3")
  Node_AddSon(node143, node179)
  Body_SetCS(node179, MAT_Vector3(1453.415384, 3849.768627, 609.7655), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node179, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node179, 5)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vehicle", "cra_tank_1")
  Node_AddSon(node143, node180)
  Body_SetCS(node180, MAT_Vector3(1290.709763, 3721.444892, 503.72308), MAT_Vector3(-65.505299, 0, 0))
  Node_ParseIniFile(node180, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node180, 2)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vehicle", "cra_tank_2")
  Node_AddSon(node143, node181)
  Body_SetCS(node181, MAT_Vector3(1598.829906, 3585.581105, 497.324812), MAT_Vector3(-57.717658, 3.66498, -3.405129))
  Node_ParseIniFile(node181, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node181, 5)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vehicle", "cra_tank_3")
  Node_AddSon(node143, node182)
  Body_SetCS(node182, MAT_Vector3(1547.881039, 3854.88265, 503.403173), MAT_Vector3(162.165541, -3.345269, 2.419059))
  Node_ParseIniFile(node182, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node182, 2)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vehicle", "cra_tank_4")
  Node_AddSon(node143, node183)
  Body_SetCS(node183, MAT_Vector3(1346.511298, 3828.195449, 508.52183), MAT_Vector3(162.1655, -3.345269, 2.419059))
  Node_ParseIniFile(node183, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node183, 2)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vehicle", "cra_tank_5")
  Node_AddSon(node143, node184)
  Body_SetCS(node184, MAT_Vector3(1450.835063, 3578.302478, 502.230151), MAT_Vector3(162.1655, -3.345269, 2.419059))
  Node_ParseIniFile(node184, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node184, 5)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vehicle", "cra_tank_6")
  Node_AddSon(node143, node185)
  Body_SetCS(node185, MAT_Vector3(1057.800465, 3840.325909, 503.7231), MAT_Vector3(-65.5053, 0, 0))
  Node_ParseIniFile(node185, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node185, 2)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vehicle", "cra_tank_7")
  Node_AddSon(node143, node186)
  Body_SetCS(node186, MAT_Vector3(1916.65447, 3527.353616, 497.3248), MAT_Vector3(-57.71766, 3.66498, -3.405129))
  Node_ParseIniFile(node186, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node186, 5)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vehicle", "cra_tank_8")
  Node_AddSon(node143, node187)
  Body_SetCS(node187, MAT_Vector3(1310.119183, 3862.161423, 503.4032), MAT_Vector3(162.1655, -3.345269, 2.419059))
  Node_ParseIniFile(node187, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node187, 2)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vehicle", "cra_tank_9")
  Node_AddSon(node143, node188)
  Body_SetCS(node188, MAT_Vector3(1140.289016, 3566.171773, 508.5218), MAT_Vector3(162.1655, -3.345269, 2.419059))
  Node_ParseIniFile(node188, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node188, 2)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "cra_bomber_1")
  Node_AddSon(node143, node189)
  Body_SetCS(node189, MAT_Vector3(819.198885, 3734.734751, 606.216546), MAT_Vector3(-89.305458, 0, 0))
  Node_ParseIniFile(node189, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node189, 2)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node143, node190)
  Body_SetCS(node190, MAT_Vector3(781.835575, 3784.169284, 606.216546), MAT_Vector3(-100.868146, 0, 0))
  Node_ParseIniFile(node190, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node190, 5)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node143, node191)
  Body_SetCS(node191, MAT_Vector3(807.127686, 3824.40641, 606.2165), MAT_Vector3(-100.8681, 0, 0))
  Node_ParseIniFile(node191, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node191, 5)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "cra_scout2v1_1")
  Node_AddSon(node143, node192)
  Body_SetCS(node192, MAT_Vector3(840.107084, 3677.766162, 510.653269), MAT_Vector3(-92.368112, 0, 0))
  Node_ParseIniFile(node192, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node192, 2)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "cra_scout2v1_2")
  Node_AddSon(node143, node193)
  Body_SetCS(node193, MAT_Vector3(853.327963, 3634.079669, 510.6533), MAT_Vector3(-81.898612, 0, 0))
  Node_ParseIniFile(node193, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node193, 2)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "cra_scout1_g_1")
  Node_AddSon(node143, node194)
  Body_SetCS(node194, MAT_Vector3(1092.660793, 3834.012188, 510.401066), MAT_Vector3(-54.900569, 11.865513, -9.130557))
  Node_ParseIniFile(node194, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node194, 2)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "cra_scout1_g_2")
  Node_AddSon(node143, node195)
  Body_SetCS(node195, MAT_Vector3(1189.230785, 3826.539338, 510.4011), MAT_Vector3(-140.51437, 11.86551, -9.130557))
  Node_ParseIniFile(node195, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node195, 2)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "cra_scout2v1_g_1")
  Node_AddSon(node143, node196)
  Body_SetCS(node196, MAT_Vector3(1177.534057, 3597.490438, 511.347977), MAT_Vector3(-30.745895, 8.041021, -7.842769))
  Node_ParseIniFile(node196, "osd/cra/cra_scout2v1_g.osd")
  Body_SetFriendOrFoeID(node196, 5)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "cra_scout2v1_g_2")
  Node_AddSon(node143, node197)
  Body_SetCS(node197, MAT_Vector3(1235.590835, 3592.891439, 511.348), MAT_Vector3(10.999928, 8.041021, -7.842769))
  Node_ParseIniFile(node197, "osd/cra/cra_scout2v1_g.osd")
  Body_SetFriendOrFoeID(node197, 2)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "cra_scout2v1_2g_1")
  Node_AddSon(node143, node198)
  Body_SetCS(node198, MAT_Vector3(2799.454805, 2163.943088, 202.550696), MAT_Vector3(18.392963, 11.095044, -12.891678))
  Node_ParseIniFile(node198, "osd/cra/cra_scout2v1_g.osd")
  Body_SetFriendOrFoeID(node198, 2)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "cra_scout2v1_2g_2")
  Node_AddSon(node143, node199)
  Body_SetCS(node199, MAT_Vector3(2861.568983, 2148.924265, 202.5507), MAT_Vector3(18.39296, 11.09504, -12.89168))
  Node_ParseIniFile(node199, "osd/cra/cra_scout2v1_g.osd")
  Body_SetFriendOrFoeID(node199, 2)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "cra_scout2v1_2g_3")
  Node_AddSon(node143, node200)
  Body_SetCS(node200, MAT_Vector3(2910.091816, 2187.742252, 202.5507), MAT_Vector3(18.39296, 11.09504, -12.89168))
  Node_ParseIniFile(node200, "osd/cra/cra_scout2v1_g.osd")
  Body_SetFriendOrFoeID(node200, 2)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "cra_scout2v1_2g_4")
  Node_AddSon(node143, node201)
  Body_SetCS(node201, MAT_Vector3(2953.762534, 2151.349888, 202.5507), MAT_Vector3(18.39296, 11.09504, -12.89168))
  Node_ParseIniFile(node201, "osd/cra/cra_scout2v1_g.osd")
  Body_SetFriendOrFoeID(node201, 2)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "cra_scout1_2g_1")
  Node_AddSon(node143, node202)
  Body_SetCS(node202, MAT_Vector3(2922.120347, 2155.638045, 199.975174), MAT_Vector3(12.943096, 8.413205, -8.891649))
  Node_ParseIniFile(node202, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node202, 2)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "cra_scout1_2g_2")
  Node_AddSon(node143, node203)
  Body_SetCS(node203, MAT_Vector3(2846.910316, 2184.751369, 202.007459), MAT_Vector3(8.42125, 5.808159, -5.673873))
  Node_ParseIniFile(node203, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node203, 2)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "cra_scout1_2g_3")
  Node_AddSon(node143, node204)
  Body_SetCS(node204, MAT_Vector3(2829.927015, 2143.506607, 202.0075), MAT_Vector3(8.42125, 5.808159, -5.673873))
  Node_ParseIniFile(node204, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node204, 2)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "cra_scout1_3g_1")
  Node_AddSon(node143, node205)
  Body_SetCS(node205, MAT_Vector3(2899.311265, 2755.452408, 198.867313), MAT_Vector3(-74.560831, 8.413205, -8.891649))
  Node_ParseIniFile(node205, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node205, 2)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "cra_scout1_3g_2")
  Node_AddSon(node143, node206)
  Body_SetCS(node206, MAT_Vector3(2890.580534, 2813.121461, 202.0075), MAT_Vector3(-80.908358, 5.808159, -5.673873))
  Node_ParseIniFile(node206, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node206, 2)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "cra_scout1_3g_3")
  Node_AddSon(node143, node207)
  Body_SetCS(node207, MAT_Vector3(2888.154859, 2878.626801, 202.0075), MAT_Vector3(-80.90836, 5.808159, -5.673873))
  Node_ParseIniFile(node207, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node207, 2)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node143, node208)
  Body_SetPosition(node208, MAT_Vector3(1419.192205, 3702.992819, 567.089696))
  WayPoint_SetRadius(node208, 100)
  Node_ParseIniFile(node208, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node143, node209)
  Body_SetPosition(node209, MAT_Vector3(3102.934052, 2060.495369, 287.408042))
  WayPoint_SetRadius(node209, 250)
  Node_ParseIniFile(node209, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node143, node210)
  Body_SetPosition(node210, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node210, 255)
  Node_ParseIniFile(node210, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node211)
  Camera_SetBackPlane(node211, 512)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node212)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node212, node213)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node212, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Path", "tz_tank1_1_1_Path_1")
  Node_AddSon(node214, node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node215, node216)
  Position_SetPosition(node216, MAT_Vector3(1522.419453, 2677.693193, 589.05628))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node215, node217)
  Position_SetPosition(node217, MAT_Vector3(1381.607238, 2776.34774, 589))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Path", "tz_tank1_1_2_Path_1")
  Node_AddSon(node214, node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node218, node219)
  Position_SetPosition(node219, MAT_Vector3(1483.4291, 2647.939319, 589))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node218, node220)
  Position_SetPosition(node220, MAT_Vector3(1352.021422, 2731.534998, 589))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Path", "tz_tank2_1_1_Path_1")
  Node_AddSon(node214, node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node221, node222)
  Position_SetPosition(node222, MAT_Vector3(1506.085787, 2661.954026, 589))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node221, node223)
  Position_SetPosition(node223, MAT_Vector3(1371.71014, 2751.485641, 589))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node214, node224)
  Position_SetPosition(node224, MAT_Vector3(1424.551514, 2696.576217, 520))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node214, node225)
  Position_SetPosition(node225, MAT_Vector3(1606.769485, 2588.510038, 520))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Path", "Player_Path_1")
  Node_AddSon(node214, node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node226, node227)
  Position_SetPosition(node227, MAT_Vector3(1575.709658, 2344.659464, 575))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node226, node228)
  Position_SetPosition(node228, MAT_Vector3(1676.089008, 2513.531919, 575))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node226, node229)
  Position_SetPosition(node229, MAT_Vector3(1396.380323, 2723.60874, 575))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "Player_Path_2")
  Node_AddSon(node214, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(1401.027849, 3539.533437, 584.849267))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(1434.993823, 3596.547751, 582.621965))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Path", "Harper_Path")
  Node_AddSon(node214, node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node233, node234)
  Position_SetPosition(node234, MAT_Vector3(1431.354762, 3702.084446, 634.670385))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node233, node235)
  Position_SetPosition(node235, MAT_Vector3(1477.881228, 3662.913327, 644.72086))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node214, node236)
  Position_SetPosition(node236, MAT_Vector3(1308.190038, 3583.236628, 586.12315))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node214, node237)
  Position_SetPosition(node237, MAT_Vector3(1433.368269, 3486.399968, 586.1232))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node214, node238)
  Position_SetPosition(node238, MAT_Vector3(1527.842637, 3726.128677, 620.319814))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node214, node239)
  Position_SetPosition(node239, MAT_Vector3(1485.328902, 3672.986877, 638.127228))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node214, node240)
  Position_SetPosition(node240, MAT_Vector3(1878.156955, 3662.700421, 715.925178))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node214, node241)
  Position_SetPosition(node241, MAT_Vector3(3066.578973, 3317.985235, 428.936794))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node214, node242)
  Position_SetPosition(node242, MAT_Vector3(3053.642679, 1122.712224, 549.222072))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Path", "Player_Path_3")
  Node_AddSon(node214, node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node243, node244)
  Position_SetPosition(node244, MAT_Vector3(3094.565102, 2058.855692, 278.772743))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node243, node245)
  Position_SetPosition(node245, MAT_Vector3(3118.826512, 1811.389311, 284.898607))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node243, node246)
  Position_SetPosition(node246, MAT_Vector3(3114.295329, 1290.550159, 574.717505))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node243, node247)
  Position_SetPosition(node247, MAT_Vector3(3194.195, 886.451437, 574.7175))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node212, node248)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node248, node249)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node248, node250)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node248, node251)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Director", "Chapter3_Intro_A")
  Node_AddSon(node248, node252)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Director", "Chapter3_Extro_V")
  Node_AddSon(node248, node253)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Director", "Chapter3_Extro_A")
  Node_AddSon(node248, node254)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node212, node255)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node212, node256)
  Node_EnterSimulation(node256)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, E)
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
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, N)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, E)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, F)
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
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, E)
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
SetEnemyMatrixElement(1, 4, F)
SetEnemyMatrixElement(2, 4, E)
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
SetEnemyMatrixElement(5, 5, F)
SetEnemyMatrixElement(6, 5, F)
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
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, F)
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
                                                            if not (o1101.Value ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
  Script_Log("RC1OK_092501_1935")
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
                                                            if not (o1125.Value == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (o1891.Value == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
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
S_o576 = { [nil] = {}, Start = function(L0)

end }
S_o612 = { [nil] = {}, Start = function(L0)

end }
S_o648 = { [nil] = {}, Start = function(L0)

end }
S_o684 = { [nil] = {}, Start = function(L0)

end }
S_o720 = { [nil] = {}, Start = function(L0)

end }
S_o756 = { [nil] = {}, Start = function(L0)

end }
S_o790 = { [nil] = {}, Start = function(L0)

end }
S_o824 = { [nil] = {}, Start = function(L0)

end }
S_o858 = { [nil] = {}, Start = function(L0)

end }
S_o892 = { [nil] = {}, Start = function(L0)

end }
o927 = FormationLib.CreateFormation("Claw", "", "", "", 75, 75)
S_o928 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o928, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o928, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o928, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "cra_freighter_1", "", "", "", False, False, True)
  CallFunction(o928, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o928, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o928, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o933.SetStateValue(L1)
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
o933 = { [nil] = {}, Start = function()
  o933["Value"] = False
  o1095.StartCalculate()
  o3175.StartCalculate()
  o3223.StartCalculate()
  o3271.StartCalculate()
  o3319.StartCalculate()
  o3367.StartCalculate()
  o3415.StartCalculate()
  o3463.StartCalculate()
  o3697.StartCalculate()
end, SetStateValue = function(L0)
  if not (o933.Value == L0) then
    o933["Value"] = L0
    o1095.ReCalculate()
    o3175.ReCalculate()
    o3223.ReCalculate()
    o3271.ReCalculate()
    o3319.ReCalculate()
    o3367.ReCalculate()
    o3415.ReCalculate()
    o3463.ReCalculate()
    o3697.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "cra_freighter_1", "", "", "", False, False, True)
  CallFunction(o934, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o934, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o934, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o939.SetStateValue(L1)
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
o939 = { [nil] = {}, Start = function()
  o939["Value"] = False
  o3511.StartCalculate()
  o3559.StartCalculate()
  o3607.StartCalculate()
end, SetStateValue = function(L0)
  if not (o939.Value == L0) then
    o939["Value"] = L0
    o3511.ReCalculate()
    o3559.ReCalculate()
    o3607.ReCalculate()
  end
end }
S_o940 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o940, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o940, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o940, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o940, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o940, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o940, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o945.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o941.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o941 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o941.SetStateValue(o941.GetCalculated())
end, StartCalculate = function()
  o941["Value"] = o941.GetCalculated()
end, SetStateValue = function(L0)
  if not (o941.Value == L0) then
    o941["Value"] = L0
    CallFunction(o940, "ProcesseStateChange")
  end
end }
o945 = { [nil] = {}, Start = function()
  o945["Value"] = False
  o3705.StartCalculate()
  o3710.StartCalculate()
end, SetStateValue = function(L0)
  if not (o945.Value == L0) then
    o945["Value"] = L0
    o3705.ReCalculate()
    o3710.ReCalculate()
  end
end }
S_o946 = { [nil] = {}, Start = function(L0)

end }
S_o992 = { [nil] = {}, Start = function(L0)

end }
S_o1038 = { [nil] = {}, Start = function(L0)

end }
S_o1084 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "torpedo_leech", 3)
  Body_AddItem(L0.Node, "torpedo_maneater", 9)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "device_repair", 1)
  CallFunction(o1084, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
o1089 = { [nil] = {}, GetCalculated = function()
  if not (o2251.Value ~= True) then
    if not (o2299.Value ~= True) then
      if not (o2347.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1089.SetStateValue(o1089.GetCalculated())
end, StartCalculate = function()
  o1089["Value"] = o1089.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(4, 6, E)
  SetEnemyMatrixElement(6, 4, E)
end, SetStateValue = function(L0)
  if not (o1089.Value == L0) then
    o1089["Value"] = L0
    if not (L0 ~= 1) then
      o1089.ChangeTo1()
    end
  end
end }
o1090 = { [nil] = {}, GetCalculated = function()
  if not (o1905.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1944.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1983.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2022.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2061.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2100.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2139.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2178.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2217.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 1) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1090.SetStateValue(o1090.GetCalculated())
end, StartCalculate = function()
  o1090["Value"] = o1090.GetCalculated()
  o2392.StartCalculate()
  o2431.StartCalculate()
  o2470.StartCalculate()
  o2509.StartCalculate()
  o2548.StartCalculate()
  o2587.StartCalculate()
  o2626.StartCalculate()
  o2665.StartCalculate()
  o2704.StartCalculate()
  o2743.StartCalculate()
  o2791.StartCalculate()
  o2839.StartCalculate()
  o2887.StartCalculate()
  o2935.StartCalculate()
  o2983.StartCalculate()
  o3031.StartCalculate()
  o3079.StartCalculate()
  o3127.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1090.Value == L0) then
    o1090["Value"] = L0
    o2392.ReCalculate()
    o2431.ReCalculate()
    o2470.ReCalculate()
    o2509.ReCalculate()
    o2548.ReCalculate()
    o2587.ReCalculate()
    o2626.ReCalculate()
    o2665.ReCalculate()
    o2704.ReCalculate()
    o2743.ReCalculate()
    o2791.ReCalculate()
    o2839.ReCalculate()
    o2887.ReCalculate()
    o2935.ReCalculate()
    o2983.ReCalculate()
    o3031.ReCalculate()
    o3079.ReCalculate()
    o3127.ReCalculate()
  end
end }
o1091 = { [nil] = {}, GetCalculated = function()
  if not (o1905.Value ~= True) then
    if not (o1944.Value ~= True) then
      if not (o1983.Value ~= True) then
        if not (o2022.Value ~= True) then
          if not (o2061.Value ~= True) then
            if not (o2100.Value ~= True) then
              if not (o2139.Value ~= True) then
                if not (o2178.Value ~= True) then
                  if not (o2217.Value ~= True) then
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
  o1091.SetStateValue(o1091.GetCalculated())
end, StartCalculate = function()
  o1091["Value"] = o1091.GetCalculated()
  o1094.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("All Diggers down")
end, SetStateValue = function(L0)
  if not (o1091.Value == L0) then
    o1091["Value"] = L0
    o1094.ReCalculate()
    if not (L0 ~= 1) then
      o1091.ChangeTo1()
    end
  end
end }
o1092 = { [nil] = {}, GetCalculated = function()
  if not (o2400.Value ~= True) then
    if not (o2439.Value ~= True) then
      if not (o2478.Value ~= True) then
        if not (o2517.Value ~= True) then
          if not (o2556.Value ~= True) then
            if not (o2595.Value ~= True) then
              if not (o2634.Value ~= True) then
                if not (o2673.Value ~= True) then
                  if not (o2712.Value ~= True) then
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
  o1092.SetStateValue(o1092.GetCalculated())
end, StartCalculate = function()
  o1092["Value"] = o1092.GetCalculated()
  o1094.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("All Tanks down")
end, SetStateValue = function(L0)
  if not (o1092.Value == L0) then
    o1092["Value"] = L0
    o1094.ReCalculate()
    if not (L0 ~= 1) then
      o1092.ChangeTo1()
    end
  end
end }
o1093 = { [nil] = {}, GetCalculated = function()
  if not (o2756.Value ~= True) then
    if not (o2804.Value ~= True) then
      if not (o2852.Value ~= True) then
        if not (o2900.Value ~= True) then
          if not (o2948.Value ~= True) then
            if not (o2996.Value ~= True) then
              if not (o3044.Value ~= True) then
                if not (o3092.Value ~= True) then
                  if not (o3140.Value ~= True) then
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
  o1093.SetStateValue(o1093.GetCalculated())
end, StartCalculate = function()
  o1093["Value"] = o1093.GetCalculated()
  o1094.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("All Crawler Reinforcement-Units down")
end, SetStateValue = function(L0)
  if not (o1093.Value == L0) then
    o1093["Value"] = L0
    o1094.ReCalculate()
    if not (L0 ~= 1) then
      o1093.ChangeTo1()
    end
  end
end }
o1094 = { [nil] = {}, GetCalculated = function()
  if not (o1091.Value ~= True) then
    if not (o1093.Value ~= True) then
      if not (o1092.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1094.SetStateValue(o1094.GetCalculated())
end, StartCalculate = function()
  o1094["Value"] = o1094.GetCalculated()
  o3690.StartCalculate()
  o3700.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("All Crawler Down")
  SetEnemyMatrixElement(5, 3, F)
  SetEnemyMatrixElement(3, 5, F)
  SetEnemyMatrixElement(5, 1, F)
  SetEnemyMatrixElement(1, 5, F)
  SetEnemyMatrixElement(5, 4, F)
  SetEnemyMatrixElement(4, 5, F)
  SetEnemyMatrixElement(5, 2, E)
  SetEnemyMatrixElement(2, 5, E)
end, SetStateValue = function(L0)
  if not (o1094.Value == L0) then
    o1094["Value"] = L0
    o3690.ReCalculate()
    o3700.ReCalculate()
    if not (L0 ~= 1) then
      o1094.ChangeTo1()
    end
  end
end }
o1095 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1095.SetStateValue(o1095.GetCalculated())
end, StartCalculate = function()
  o1095["Value"] = o1095.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1184.Node, o1084.Node, 259)
end, SetStateValue = function(L0)
  if not (o1095.Value == L0) then
    o1095["Value"] = L0
    if not (L0 ~= 1) then
      o1095.ChangeTo1()
    end
  end
end }
o1096 = { [nil] = {}, Start = function()
  o1096["Value"] = False
  o941.StartCalculate()
  o1097.StartCalculate()
  o1135.StartCalculate()
  o1190.StartCalculate()
  o1244.StartCalculate()
  o1299.StartCalculate()
  o1354.StartCalculate()
  o1891.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1096.Value == L0) then
    o1096["Value"] = L0
    o941.ReCalculate()
    o1097.ReCalculate()
    o1135.ReCalculate()
    o1190.ReCalculate()
    o1244.ReCalculate()
    o1299.ReCalculate()
    o1354.ReCalculate()
    o1891.ReCalculate()
  end
end }
o1097 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1097.SetStateValue(o1097.GetCalculated())
end, StartCalculate = function()
  o1097["Value"] = o1097.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1239.Node, o1084.Node, 260)
  Game_SetWayPoint(GetGameNode(), o3658.Node)
  SED_SetTaskTextKey(1320, -1, -1)
end, SetStateValue = function(L0)
  if not (o1097.Value == L0) then
    o1097["Value"] = L0
    if not (L0 ~= 1) then
      o1097.ChangeTo1()
    end
  end
end }
o1098 = { [nil] = {}, Start = function()
  o1098["Value"] = False
  o1100.StartCalculate()
  o1849.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1098.Value == L0) then
    o1098["Value"] = L0
    o1100.ReCalculate()
    o1849.ReCalculate()
  end
end }
o1100 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    if not (o1098.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1100.SetStateValue(o1100.GetCalculated())
end, StartCalculate = function()
  o1100["Value"] = o1100.GetCalculated()
  o1125.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1100.Value == L0) then
    o1100["Value"] = L0
    o1125.ReCalculate()
  end
end }
o1101 = { [nil] = {}, GetCalculated = function()
  if not (o3708.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1101.SetStateValue(o1101.GetCalculated())
end, StartCalculate = function()
  o1101["Value"] = o1101.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Mission is won")
end, SetStateValue = function(L0)
  if not (o1101.Value == L0) then
    o1101["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o1101.ChangeTo1()
    end
  end
end }
o1125 = { [nil] = {}, GetCalculated = function()
  if not (o1100.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1125.SetStateValue(o1125.GetCalculated())
end, StartCalculate = function()
  o1125["Value"] = o1125.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Mission is lost")
end, SetStateValue = function(L0)
  if not (o1125.Value == L0) then
    o1125["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o1125.ChangeTo1()
    end
  end
end }
S_o1129 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1129, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1129, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1129, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1129, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1129, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1129, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o1129, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bonham_Path_1", 1, 1 } }("Code8")
  else
    CallFunction(o1129, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code9")
  else
    CallFunction(o1129, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o1129, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 16 } }("Code11")
  else
    CallFunction(o1129, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o927, 0, 250, "cra_sco", "E", "", "", "/Scenario_Dynamic/Navigation/FreighterTriggerArea", "/Scenario_Dynamic/Navigation/FreighterFollowArea", 0.75, 10, "Code12")
  else
    CallFunction(o1129, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bonham_Path_Out", 1, 1 } }("Code13")
  else
    CallFunction(o1129, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code14")
  else
    CallFunction(o1129, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code15")
  else
    CallFunction(o1129, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1129, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o1135.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1135 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1135.SetStateValue(o1135.GetCalculated())
end, StartCalculate = function()
  o1135["Value"] = o1135.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1135.Value == L0) then
    o1135["Value"] = L0
    CallFunction(o1129, "ProcesseStateChange")
  end
end }
S_o1184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1184, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1184, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1184, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o1184, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeGrande_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o1184, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code10")
  else
    CallFunction(o1184, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1184, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 16 } }("Code12")
  else
    CallFunction(o1184, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o927, 0, 250, "cra_sco", "E", "", "", "/Scenario_Dynamic/Navigation/FreighterTriggerArea", "/Scenario_Dynamic/Navigation/FreighterFollowArea", 0.75, 10, "Code13")
  else
    CallFunction(o1184, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeGrande_Path_Out", 1, 1 } }("Code14")
  else
    CallFunction(o1184, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code15")
  else
    CallFunction(o1184, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code16")
  else
    CallFunction(o1184, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1184, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o1190.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1190 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1190.SetStateValue(o1190.GetCalculated())
end, StartCalculate = function()
  o1190["Value"] = o1190.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1190.Value == L0) then
    o1190["Value"] = L0
    CallFunction(o1184, "ProcesseStateChange")
  end
end }
S_o1239 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1239, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1239, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1239, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1239, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1239, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1239, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o1239, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Harper_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o1239, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code10")
  else
    CallFunction(o1239, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1239, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o1844.Node, "DP_ver_1", "DP_ver_1", 1, 1, 1e+32, "Code12")
  else
    CallFunction(o1239, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.UnInfiltrate(L0, "Code13")
  else
    CallFunction(o1239, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Harper_Path_Out", 1, 1 } }("Code14")
  else
    CallFunction(o1239, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code15")
  else
    CallFunction(o1239, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code16")
  else
    CallFunction(o1239, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1239, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o1244.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1244 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1244.SetStateValue(o1244.GetCalculated())
end, StartCalculate = function()
  o1244["Value"] = o1244.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1244.Value == L0) then
    o1244["Value"] = L0
    CallFunction(o1239, "ProcesseStateChange")
  end
end }
S_o1293 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1293, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1293, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1293, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1293, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1293, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1293, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o1293, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pico_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o1293, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code10")
  else
    CallFunction(o1293, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1293, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 16 } }("Code12")
  else
    CallFunction(o1293, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o927, 0, 250, "cra_sco", "E", "", "", "/Scenario_Dynamic/Navigation/FreighterTriggerArea", "/Scenario_Dynamic/Navigation/FreighterFollowArea", 0.75, 10, "Code13")
  else
    CallFunction(o1293, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Pico_Path_Out", 1, 1 } }("Code14")
  else
    CallFunction(o1293, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code15")
  else
    CallFunction(o1293, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code16")
  else
    CallFunction(o1293, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1293, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o1299.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1299 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1299.SetStateValue(o1299.GetCalculated())
end, StartCalculate = function()
  o1299["Value"] = o1299.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1299.Value == L0) then
    o1299["Value"] = L0
    CallFunction(o1293, "ProcesseStateChange")
  end
end }
S_o1348 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1348, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1348, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1348, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1348, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1348, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1348, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o1348, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chaka_Path_1", 1, 1 } }("Code8")
  else
    CallFunction(o1348, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code9")
  else
    CallFunction(o1348, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o1348, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 16 } }("Code11")
  else
    CallFunction(o1348, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o927, 0, 250, "cra_sco", "E", "", "", "/Scenario_Dynamic/Navigation/FreighterTriggerArea", "/Scenario_Dynamic/Navigation/FreighterFollowArea", 0.75, 10, "Code12")
  else
    CallFunction(o1348, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chaka_Path_Out", 1, 1 } }("Code13")
  else
    CallFunction(o1348, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code14")
  else
    CallFunction(o1348, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code15")
  else
    CallFunction(o1348, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1348, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o1354.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1354 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1354.SetStateValue(o1354.GetCalculated())
end, StartCalculate = function()
  o1354["Value"] = o1354.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1354.Value == L0) then
    o1354["Value"] = L0
    CallFunction(o1348, "ProcesseStateChange")
  end
end }
S_o1403 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1403, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1403, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1403, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 40 } }("Code4")
  else
    CallFunction(o1403, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZTank_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1403, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 10, "Code6")
  else
    CallFunction(o1403, "Code6")
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
S_o1444 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1444, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1444, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1444, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 40 } }("Code4")
  else
    CallFunction(o1444, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZTank_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1444, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 10, "Code6")
  else
    CallFunction(o1444, "Code6")
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
S_o1485 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1485, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1485, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1485, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 40 } }("Code4")
  else
    CallFunction(o1485, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZTank_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1485, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 10, "Code6")
  else
    CallFunction(o1485, "Code6")
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
S_o1526 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1526, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1526, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1526, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 40 } }("Code4")
  else
    CallFunction(o1526, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZTank_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1526, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 10, "Code6")
  else
    CallFunction(o1526, "Code6")
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
S_o1567 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1567, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1567, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1567, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 40 } }("Code4")
  else
    CallFunction(o1567, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZTank_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1567, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 10, "Code6")
  else
    CallFunction(o1567, "Code6")
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
S_o1608 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1608, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1608, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1608, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 40 } }("Code4")
  else
    CallFunction(o1608, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TZTank_Path_1", 0.75, 1 } }("Code5")
  else
    CallFunction(o1608, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 10, "Code6")
  else
    CallFunction(o1608, "Code6")
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
S_o1649 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1649, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1649, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1649, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1649, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/tz_tank1_1_1_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o1649, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1649, "Code6")
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
S_o1688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1688, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/tz_tank1_1_2_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o1688, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1688, "Code6")
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
S_o1727 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1727, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1727, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1727, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1727, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/tz_tank1_1_2_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o1727, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1727, "Code6")
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1766, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/tz_tank1_1_1_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o1766, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1766, "Code6")
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
S_o1805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1805, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1805, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1805, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1805, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/tz_tank2_1_1_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o1805, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1805, "Code6")
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
S_o1844 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1844, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1844, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1844, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o1844, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1844, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0.748941)
  CallFunction(o1844, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 15 } }("Code8")
  else
    CallFunction(o1844, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreighterPath_1", 1, 1 } }(o926, o927, "/Scenario_Dynamic/Navigation/FreighterTriggerArea", "/Scenario_Dynamic/Navigation/FreighterFollowArea", False, "Code9")
  else
    CallFunction(o1844, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  o1096.SetStateValue(True)
  CallFunction(o1844, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 45 } }("Code11")
  else
    CallFunction(o1844, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1844, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Destroyed = function(L0, L1)
  o1852.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o1849.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1849 = { [nil] = {}, GetCalculated = function()
  if not (o1098.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1849.SetStateValue(o1849.GetCalculated())
end, StartCalculate = function()
  o1849["Value"] = o1849.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1849.Value == L0) then
    o1849["Value"] = L0
    CallFunction(o1844, "ProcesseStateChange")
  end
end }
o1852 = { [nil] = {}, Start = function()
  o1852["Value"] = False
  o1100.StartCalculate()
  o1891.StartCalculate()
  o3706.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1852.Value == L0) then
    o1852["Value"] = L0
    o1100.ReCalculate()
    o1891.ReCalculate()
    o3706.ReCalculate()
  end
end }
o1891 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    if not (o1096.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1891.SetStateValue(o1891.GetCalculated())
end, StartCalculate = function()
  o1891["Value"] = o1891.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1891.Value == L0) then
    o1891["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1895 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1895, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1895, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1895, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_A", "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_C" }, 60, "Code4")
  else
    CallFunction(o1895, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o1905.SetStateValue(L1)
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
o1905 = { [nil] = {}, Start = function()
  o1905["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1905.Value == L0) then
    o1905["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o1934 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1934, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1934, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1934, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_A", "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_C" }, 60, "Code4")
  else
    CallFunction(o1934, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o1944.SetStateValue(L1)
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
o1944 = { [nil] = {}, Start = function()
  o1944["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1944.Value == L0) then
    o1944["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o1973 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1973, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1973, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1973, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_A", "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_C" }, 60, "Code4")
  else
    CallFunction(o1973, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o1983.SetStateValue(L1)
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
o1983 = { [nil] = {}, Start = function()
  o1983["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1983.Value == L0) then
    o1983["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o2012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2012, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2012, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2012, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_A", "/Scenario_Dynamic/Navigation/DigArea_C" }, 60, "Code4")
  else
    CallFunction(o2012, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2022.SetStateValue(L1)
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
o2022 = { [nil] = {}, Start = function()
  o2022["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2022.Value == L0) then
    o2022["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o2051 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2051, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2051, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2051, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_A", "/Scenario_Dynamic/Navigation/DigArea_C" }, 60, "Code4")
  else
    CallFunction(o2051, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2061.SetStateValue(L1)
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
o2061 = { [nil] = {}, Start = function()
  o2061["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2061.Value == L0) then
    o2061["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o2090 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2090, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2090, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2090, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_A", "/Scenario_Dynamic/Navigation/DigArea_C" }, 60, "Code4")
  else
    CallFunction(o2090, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2100.SetStateValue(L1)
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
o2100 = { [nil] = {}, Start = function()
  o2100["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2100.Value == L0) then
    o2100["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o2129 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2129, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2129, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2129, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_C", "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_A" }, 60, "Code4")
  else
    CallFunction(o2129, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2139.SetStateValue(L1)
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
o2139 = { [nil] = {}, Start = function()
  o2139["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2139.Value == L0) then
    o2139["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o2168 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2168, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2168, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2168, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_C", "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_A" }, 60, "Code4")
  else
    CallFunction(o2168, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2178.SetStateValue(L1)
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
o2178 = { [nil] = {}, Start = function()
  o2178["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2178.Value == L0) then
    o2178["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
  end
end }
S_o2207 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2207, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2207, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2207, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/DigArea_C", "/Scenario_Dynamic/Navigation/DigArea_B", "/Scenario_Dynamic/Navigation/DigArea_A" }, 60, "Code4")
  else
    CallFunction(o2207, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2217.SetStateValue(L1)
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
o2217 = { [nil] = {}, Start = function()
  o2217["Value"] = False
  o1090.StartCalculate()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2217.Value == L0) then
    o2217["Value"] = L0
    o1090.ReCalculate()
    o1091.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code4")
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
  o1089.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2251.Value == L0) then
    o2251["Value"] = L0
    o1089.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code4")
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
  o1089.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2299.Value == L0) then
    o2299["Value"] = L0
    o1089.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T_Area", "/Scenario_Dynamic/Navigation/Freighter_F_Area", "E", "", "", "", 0.75, "Code4")
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
  o1089.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2347.Value == L0) then
    o2347["Value"] = L0
    o1089.ReCalculate()
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
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2390, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2390, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2400.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2392.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2392 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2392.SetStateValue(o2392.GetCalculated())
end, StartCalculate = function()
  o2392["Value"] = o2392.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2392.Value == L0) then
    DelayedFunction(2.56445, o2392, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2392.Value == L0) then
    o2392["Value"] = L0
    CallFunction(o2390, "ProcesseStateChange")
  end
end }
o2400 = { [nil] = {}, Start = function()
  o2400["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2400.Value == L0) then
    o2400["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2429 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2429, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2429, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2429, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2429, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2439.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2431.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2431 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2431.SetStateValue(o2431.GetCalculated())
end, StartCalculate = function()
  o2431["Value"] = o2431.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2431.Value == L0) then
    DelayedFunction(2.997411, o2431, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2431.Value == L0) then
    o2431["Value"] = L0
    CallFunction(o2429, "ProcesseStateChange")
  end
end }
o2439 = { [nil] = {}, Start = function()
  o2439["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2439.Value == L0) then
    o2439["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2468 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2468, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2468, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2468, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2468, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2478.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2470.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2470 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2470.SetStateValue(o2470.GetCalculated())
end, StartCalculate = function()
  o2470["Value"] = o2470.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2470.Value == L0) then
    DelayedFunction(2.233145, o2470, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2470.Value == L0) then
    o2470["Value"] = L0
    CallFunction(o2468, "ProcesseStateChange")
  end
end }
o2478 = { [nil] = {}, Start = function()
  o2478["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2478.Value == L0) then
    o2478["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2507 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2507, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2507, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2507, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2507, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2517.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2509.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2509 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2509.SetStateValue(o2509.GetCalculated())
end, StartCalculate = function()
  o2509["Value"] = o2509.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2509.Value == L0) then
    DelayedFunction(3.06445, o2509, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2509.Value == L0) then
    o2509["Value"] = L0
    CallFunction(o2507, "ProcesseStateChange")
  end
end }
o2517 = { [nil] = {}, Start = function()
  o2517["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2517.Value == L0) then
    o2517["Value"] = L0
    o1092.ReCalculate()
  end
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
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2546, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2546, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2556.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2548.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2548 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2548.SetStateValue(o2548.GetCalculated())
end, StartCalculate = function()
  o2548["Value"] = o2548.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2548.Value == L0) then
    DelayedFunction(2.000475, o2548, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2548.Value == L0) then
    o2548["Value"] = L0
    CallFunction(o2546, "ProcesseStateChange")
  end
end }
o2556 = { [nil] = {}, Start = function()
  o2556["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2556.Value == L0) then
    o2556["Value"] = L0
    o1092.ReCalculate()
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
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2585, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2585, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2595.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2587.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2587 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2587.SetStateValue(o2587.GetCalculated())
end, StartCalculate = function()
  o2587["Value"] = o2587.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2587.Value == L0) then
    DelayedFunction(2.76445, o2587, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2587.Value == L0) then
    o2587["Value"] = L0
    CallFunction(o2585, "ProcesseStateChange")
  end
end }
o2595 = { [nil] = {}, Start = function()
  o2595["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2595.Value == L0) then
    o2595["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2624 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2624, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2624, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2624, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2624, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2634.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2626.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2626 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2626.SetStateValue(o2626.GetCalculated())
end, StartCalculate = function()
  o2626["Value"] = o2626.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2626.Value == L0) then
    DelayedFunction(1.999845, o2626, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2626.Value == L0) then
    o2626["Value"] = L0
    CallFunction(o2624, "ProcesseStateChange")
  end
end }
o2634 = { [nil] = {}, Start = function()
  o2634["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2634.Value == L0) then
    o2634["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2663 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2663, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2663, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2663, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2663, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2673.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2665.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2665 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2665.SetStateValue(o2665.GetCalculated())
end, StartCalculate = function()
  o2665["Value"] = o2665.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2665.Value == L0) then
    DelayedFunction(3.56445, o2665, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2665.Value == L0) then
    o2665["Value"] = L0
    CallFunction(o2663, "ProcesseStateChange")
  end
end }
o2673 = { [nil] = {}, Start = function()
  o2673["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2673.Value == L0) then
    o2673["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2702 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2702, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2702, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2702, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2702, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2712.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2704.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2704 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
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
    DelayedFunction(2.25717, o2704, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2704.Value == L0) then
    o2704["Value"] = L0
    CallFunction(o2702, "ProcesseStateChange")
  end
end }
o2712 = { [nil] = {}, Start = function()
  o2712["Value"] = False
  o1092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2712.Value == L0) then
    o2712["Value"] = L0
    o1092.ReCalculate()
  end
end }
S_o2741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2741, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2741, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2741, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2756.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2743.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2743 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2743.SetStateValue(o2743.GetCalculated())
end, StartCalculate = function()
  o2743["Value"] = o2743.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2743.Value == L0) then
    DelayedFunction(25.121568, o2743, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2743.Value == L0) then
    o2743["Value"] = L0
    CallFunction(o2741, "ProcesseStateChange")
  end
end }
o2756 = { [nil] = {}, Start = function()
  o2756["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2756.Value == L0) then
    o2756["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o2789 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2789, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2789, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2789, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2789, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2804.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2791.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2791 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2791.SetStateValue(o2791.GetCalculated())
end, StartCalculate = function()
  o2791["Value"] = o2791.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2791.Value == L0) then
    DelayedFunction(25.1534, o2791, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2791.Value == L0) then
    o2791["Value"] = L0
    CallFunction(o2789, "ProcesseStateChange")
  end
end }
o2804 = { [nil] = {}, Start = function()
  o2804["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2804.Value == L0) then
    o2804["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o2837 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2837, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2837, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2837, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2837, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2852.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2839.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2839 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2839.SetStateValue(o2839.GetCalculated())
end, StartCalculate = function()
  o2839["Value"] = o2839.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2839.Value == L0) then
    DelayedFunction(24.004744, o2839, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2839.Value == L0) then
    o2839["Value"] = L0
    CallFunction(o2837, "ProcesseStateChange")
  end
end }
o2852 = { [nil] = {}, Start = function()
  o2852["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2852.Value == L0) then
    o2852["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o2885 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2885, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2885, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2885, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2885, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2900.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2887.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2887 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2887.SetStateValue(o2887.GetCalculated())
end, StartCalculate = function()
  o2887["Value"] = o2887.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2887.Value == L0) then
    DelayedFunction(25.491568, o2887, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2887.Value == L0) then
    o2887["Value"] = L0
    CallFunction(o2885, "ProcesseStateChange")
  end
end }
o2900 = { [nil] = {}, Start = function()
  o2900["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2900.Value == L0) then
    o2900["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o2933 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2933, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2933, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2933, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2933, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2948.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2935.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2935 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2935.SetStateValue(o2935.GetCalculated())
end, StartCalculate = function()
  o2935["Value"] = o2935.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2935.Value == L0) then
    DelayedFunction(25.997453, o2935, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2935.Value == L0) then
    o2935["Value"] = L0
    CallFunction(o2933, "ProcesseStateChange")
  end
end }
o2948 = { [nil] = {}, Start = function()
  o2948["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2948.Value == L0) then
    o2948["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o2981 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2981, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2981, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2981, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o2981, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2996.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2983.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2983 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2983.SetStateValue(o2983.GetCalculated())
end, StartCalculate = function()
  o2983["Value"] = o2983.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2983.Value == L0) then
    DelayedFunction(4.121568, o2983, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2983.Value == L0) then
    o2983["Value"] = L0
    CallFunction(o2981, "ProcesseStateChange")
  end
end }
o2996 = { [nil] = {}, Start = function()
  o2996["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2996.Value == L0) then
    o2996["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o3029 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3029, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3029, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3029, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3029, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3044.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3031.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3031 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
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
    DelayedFunction(4.334, o3031, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3031.Value == L0) then
    o3031["Value"] = L0
    CallFunction(o3029, "ProcesseStateChange")
  end
end }
o3044 = { [nil] = {}, Start = function()
  o3044["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3044.Value == L0) then
    o3044["Value"] = L0
    o1093.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3077, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3077, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3092.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3079.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3079 = { [nil] = {}, GetCalculated = function()
  if not (o1090.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3079.SetStateValue(o3079.GetCalculated())
end, StartCalculate = function()
  o3079["Value"] = o3079.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3079.Value == L0) then
    DelayedFunction(8.78974, o3079, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3079.Value == L0) then
    o3079["Value"] = L0
    CallFunction(o3077, "ProcesseStateChange")
  end
end }
o3092 = { [nil] = {}, Start = function()
  o3092["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3092.Value == L0) then
    o3092["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o3125 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3125, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3125, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3125, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Freighter_P_Area", "/Scenario_Dynamic/Navigation/Freighter_T2_Area", "/Scenario_Dynamic/Navigation/Freighter_F2_Area", "E", "", "", "", 0.75, "Code4")
  else
    CallFunction(o3125, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3140.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o1090.Value ~= True) then
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
    DelayedFunction(8.999541, o3127, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3127.Value == L0) then
    o3127["Value"] = L0
    CallFunction(o3125, "ProcesseStateChange")
  end
end }
o3140 = { [nil] = {}, Start = function()
  o3140["Value"] = False
  o1093.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3140.Value == L0) then
    o3140["Value"] = L0
    o1093.ReCalculate()
  end
end }
S_o3173 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3173, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3173, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3173, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3173, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3175.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3175 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3175.SetStateValue(o3175.GetCalculated())
end, StartCalculate = function()
  o3175["Value"] = o3175.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3175.Value == L0) then
    DelayedFunction(22.854452, o3175, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3175.Value == L0) then
    o3175["Value"] = L0
    CallFunction(o3173, "ProcesseStateChange")
  end
end }
S_o3221 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3221, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3221, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3221, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3221, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3223.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3223 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3223.SetStateValue(o3223.GetCalculated())
end, StartCalculate = function()
  o3223["Value"] = o3223.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3223.Value == L0) then
    DelayedFunction(22.854452, o3223, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3223.Value == L0) then
    o3223["Value"] = L0
    CallFunction(o3221, "ProcesseStateChange")
  end
end }
S_o3269 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3269, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3269, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3269, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3269, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3271.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3271 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3271.SetStateValue(o3271.GetCalculated())
end, StartCalculate = function()
  o3271["Value"] = o3271.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3271.Value == L0) then
    DelayedFunction(22.85445, o3271, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3271.Value == L0) then
    o3271["Value"] = L0
    CallFunction(o3269, "ProcesseStateChange")
  end
end }
S_o3317 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3317, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3317, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3317, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3317, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o933.Value ~= True) then
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
    DelayedFunction(22.854452, o3319, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3319.Value == L0) then
    o3319["Value"] = L0
    CallFunction(o3317, "ProcesseStateChange")
  end
end }
S_o3365 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3365, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3365, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3365, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3365, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3367.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3367 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3367.SetStateValue(o3367.GetCalculated())
end, StartCalculate = function()
  o3367["Value"] = o3367.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3367.Value == L0) then
    DelayedFunction(25.123175, o3367, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3367.Value == L0) then
    o3367["Value"] = L0
    CallFunction(o3365, "ProcesseStateChange")
  end
end }
S_o3413 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3413, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3413, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3413, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3413, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3415.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3415 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3415.SetStateValue(o3415.GetCalculated())
end, StartCalculate = function()
  o3415["Value"] = o3415.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3415.Value == L0) then
    DelayedFunction(25.123175, o3415, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3415.Value == L0) then
    o3415["Value"] = L0
    CallFunction(o3413, "ProcesseStateChange")
  end
end }
S_o3461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3461, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3463.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3463 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3463.SetStateValue(o3463.GetCalculated())
end, StartCalculate = function()
  o3463["Value"] = o3463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3463.Value == L0) then
    DelayedFunction(25.12318, o3463, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3463.Value == L0) then
    o3463["Value"] = L0
    CallFunction(o3461, "ProcesseStateChange")
  end
end }
S_o3509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3509, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3511.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3511 = { [nil] = {}, GetCalculated = function()
  if not (o939.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3511.SetStateValue(o3511.GetCalculated())
end, StartCalculate = function()
  o3511["Value"] = o3511.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3511.Value == L0) then
    DelayedFunction(11.778455, o3511, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3511.Value == L0) then
    o3511["Value"] = L0
    CallFunction(o3509, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3557, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3557, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3559.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3559 = { [nil] = {}, GetCalculated = function()
  if not (o939.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3559.SetStateValue(o3559.GetCalculated())
end, StartCalculate = function()
  o3559["Value"] = o3559.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3559.Value == L0) then
    DelayedFunction(11.77845, o3559, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3559.Value == L0) then
    o3559["Value"] = L0
    CallFunction(o3557, "ProcesseStateChange")
  end
end }
S_o3605 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3605, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3605, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3605, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "/Scenario_Dynamic/Navigation/all_area", "cra_freighter_1", "", "", "", 1, "Code4")
  else
    CallFunction(o3605, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3607.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3607 = { [nil] = {}, GetCalculated = function()
  if not (o939.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3607.SetStateValue(o3607.GetCalculated())
end, StartCalculate = function()
  o3607["Value"] = o3607.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3607.Value == L0) then
    DelayedFunction(11.77845, o3607, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3607.Value == L0) then
    o3607["Value"] = L0
    CallFunction(o3605, "ProcesseStateChange")
  end
end }
S_o3653 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o3653, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3658 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3658, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3663 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1844.Node)
  CallFunction(o3663, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3668 = { [nil] = {}, Start = function(L0)

end }
o3670 = FormationLib.CreateFormation("Line", "", "", "", 30, 30)
S_o3671 = { [nil] = {}, Start = function(L0)

end }
S_o3672 = { [nil] = {}, Start = function(L0)

end }
S_o3676 = { [nil] = {}, Start = function(L0)

end }
S_o3677 = { [nil] = {}, Start = function(L0)

end }
S_o3678 = { [nil] = {}, Start = function(L0)

end }
S_o3679 = { [nil] = {}, Start = function(L0)

end }
S_o3680 = { [nil] = {}, Start = function(L0)

end }
S_o3681 = { [nil] = {}, Start = function(L0)

end }
S_o3682 = { [nil] = {}, Start = function(L0)

end }
S_o3683 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o3669, o3670, "/IngameSequences/Navigation/Player_Path_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3683, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.75, "Code9")
  else
    CallFunction(o3683, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3669, o3670, "/IngameSequences/Navigation/Player_Path_1", "pos_1", "pos_3", 0.75, 1, "Code10")
  else
    CallFunction(o3683, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  CallFunction(o1129, "Code6")
  CallFunction(o1184, "Code7")
  CallFunction(o1239, "Code7")
  CallFunction(o1293, "Code7")
  CallFunction(o1348, "Code6")
  Game_SetWayPoint(GetGameNode(), o3653.Node)
  SED_SetTaskTextKey(1318, -1, -1)
  CallFunction(o3683, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3686 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code1")
  else
    CallFunction(o3686, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1084.Node, o1084.Node, 249)
  SendRadioMessageTake(o1084.Node, o1084.Node, 250)
  CallFunction(o3686, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3689 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3689, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o3674, o3670, "/IngameSequences/Navigation/Player_Path_2")
  FormationLib.PlaceFormationPath(o3675, o3670, "/IngameSequences/Navigation/Harper_Path")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 0, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3689, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code11")
  else
    CallFunction(o3689, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  CallFunction(o1239, "Code10")
  CallFunction(o3689, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code13")
  else
    CallFunction(o3689, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 5, "MMMN", 0)
  CallFunction(o3689, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code15")
  else
    CallFunction(o3689, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Harper_5h2_1", 3, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 4, "MMMN", 0)
  CallFunction(o3689, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code18")
  else
    CallFunction(o3689, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code19")
  else
    CallFunction(o3689, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/cra_freighter_1", 3, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 6, "MMMN", 0)
  CallFunction(o3689, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code22")
  else
    CallFunction(o3689, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o3663.Node)
  SED_SetTaskTextKey(1319, -1, -1)
  CallFunction(o3689, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3689, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3689, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3690.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 25) then
    if not (L0.CodeIndex >= 26) then
      if not (o3697.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3690 = { [nil] = {}, GetCalculated = function()
  if not (o1094.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3690.SetStateValue(o3690.GetCalculated())
end, StartCalculate = function()
  o3690["Value"] = o3690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3690.Value == L0) then
    DelayedFunction(8, o3690, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3690.Value == L0) then
    o3690["Value"] = L0
    CallFunction(o3689, "ProcesseStateChange")
  end
end }
o3697 = { [nil] = {}, GetCalculated = function()
  if not (o933.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3697.SetStateValue(o3697.GetCalculated())
end, StartCalculate = function()
  o3697["Value"] = o3697.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3697.Value == L0) then
    DelayedFunction(22.854452, o3697, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3697.Value == L0) then
    o3697["Value"] = L0
    CallFunction(o3689, "ProcesseStateChange")
  end
end }
S_o3699 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3699, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o3699, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  CallFunction(o1844, "Code5")
  CallFunction(o1129, "Code9")
  CallFunction(o1184, "Code10")
  CallFunction(o1293, "Code10")
  CallFunction(o1348, "Code9")
  SendRadioMessageTake(o1084.Node, o1084.Node, 256)
  CallFunction(o3699, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code9")
  else
    CallFunction(o3699, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1239.Node, o1084.Node, 257)
  SendRadioMessageTake(o1239.Node, o1084.Node, 258)
  CallFunction(o3699, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3700.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3700 = { [nil] = {}, GetCalculated = function()
  if not (o1094.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3700.SetStateValue(o3700.GetCalculated())
end, StartCalculate = function()
  o3700["Value"] = o3700.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3700.Value == L0) then
    DelayedFunction(8, o3700, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3700.Value == L0) then
    o3700["Value"] = L0
    CallFunction(o3699, "ProcesseStateChange")
  end
end }
S_o3704 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3704, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  o1098.SetStateValue(True)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Game_PlayMusic(GetGameNode(), "track4")
  FormationLib.PlaceFormationPath(o3669, o3670, "/IngameSequences/Navigation/Player_Path_3")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/cra_freighter_1", 0, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3704, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1e+32, "Code11")
  else
    CallFunction(o3704, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 25, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 4, "MMMN", 0)
  CallFunction(o3704, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3669, o3670, "/IngameSequences/Navigation/Player_Path_3", "pos_1", "pos_3", 0.6, 1, "Code14")
  else
    CallFunction(o3704, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Director_EndCutscene(L0.Node)
  o3708.SetStateValue(True)
  CallFunction(o3704, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3705.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o3706.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3705 = { [nil] = {}, GetCalculated = function()
  if not (o945.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3705.SetStateValue(o3705.GetCalculated())
end, StartCalculate = function()
  o3705["Value"] = o3705.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3705.Value == L0) then
    o3705["Value"] = L0
    CallFunction(o3704, "ProcesseStateChange")
  end
end }
o3706 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3706.SetStateValue(o3706.GetCalculated())
end, StartCalculate = function()
  o3706["Value"] = o3706.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3706.Value == L0) then
    DelayedFunction(8, o3706, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3706.Value == L0) then
    o3706["Value"] = L0
    CallFunction(o3704, "ProcesseStateChange")
  end
end }
o3708 = { [nil] = {}, Start = function()
  o3708["Value"] = False
  o1101.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3708.Value == L0) then
    o3708["Value"] = L0
    o1101.ReCalculate()
  end
end }
S_o3709 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3709, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code2")
  else
    CallFunction(o3709, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1239.Node, o1084.Node, 264)
  CallFunction(o3709, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code4")
  else
    CallFunction(o3709, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o3709, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3710.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3710 = { [nil] = {}, GetCalculated = function()
  if not (o945.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3710.SetStateValue(o3710.GetCalculated())
end, StartCalculate = function()
  o3710["Value"] = o3710.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3710.Value == L0) then
    o3710["Value"] = L0
    CallFunction(o3709, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 256)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem07_2", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_1_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_1_3", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_1_2", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_1", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem05_2", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_1", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_2", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_2_1", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_2_2", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_2_3", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem06_1", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schwim_1", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_1/Turm1", S_o540)
  o576 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_2/Turm1", S_o576)
  o612 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_3/Turm1", S_o612)
  o648 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_4/Turm1", S_o648)
  o684 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_5/Turm1", S_o684)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_6/Turm1", S_o720)
  o756 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft12_1", S_o756)
  o790 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft2_2", S_o790)
  o824 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_1_4", S_o824)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem04_1_5", S_o858)
  o892 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_elem01_r_1", S_o892)
  o928 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o928)
  o933.Start()
  o934 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_2", S_o934)
  o939.Start()
  o940 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SafetyZone", S_o940)
  o945.Start()
  o946 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_sco1v1_3", S_o946)
  o992 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_sco1v1_2", S_o992)
  o1038 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_sco1v1_1", S_o1038)
  o1084 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1084)
  o1096.Start()
  o1098.Start()
  o1129 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Bonham_c5_1", S_o1129)
  o1184 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "DeGrange_c5_1", S_o1184)
  o1239 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Harper_5h2_1", S_o1239)
  o1293 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Pico_c5_1", S_o1293)
  o1348 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Chaka_c5_1", S_o1348)
  o1403 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_1", S_o1403)
  o1444 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_2", S_o1444)
  o1485 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_3", S_o1485)
  o1526 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_4", S_o1526)
  o1567 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank2_1", S_o1567)
  o1608 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank2_2", S_o1608)
  o1649 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_1_1", S_o1649)
  o1688 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_1_2", S_o1688)
  o1727 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_1_3", S_o1727)
  o1766 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank1_1_4", S_o1766)
  o1805 = BindEasy(Node_Find("/Scenario_Dynamic/Object/KingsTanks_Directory"), "tz_tank2_1_1", S_o1805)
  o1844 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_freighter_1", S_o1844)
  o1852.Start()
  o1895 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_1_1", S_o1895)
  o1905.Start()
  o1934 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_1_2", S_o1934)
  o1944.Start()
  o1973 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_1_3", S_o1973)
  o1983.Start()
  o2012 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_2_1", S_o2012)
  o2022.Start()
  o2051 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_2_2", S_o2051)
  o2061.Start()
  o2090 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_2_3", S_o2090)
  o2100.Start()
  o2129 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_3_1", S_o2129)
  o2139.Start()
  o2168 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_3_2", S_o2168)
  o2178.Start()
  o2207 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CrawlerDigger_Directory"), "cra_raupe_3_3", S_o2207)
  o2217.Start()
  o2246 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_1_1", S_o2246)
  o2251.Start()
  o2294 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_1_2", S_o2294)
  o2299.Start()
  o2342 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_1_3", S_o2342)
  o2347.Start()
  o2390 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_1", S_o2390)
  o2400.Start()
  o2429 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_2", S_o2429)
  o2439.Start()
  o2468 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3", S_o2468)
  o2478.Start()
  o2507 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_4", S_o2507)
  o2517.Start()
  o2546 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_5", S_o2546)
  o2556.Start()
  o2585 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_6", S_o2585)
  o2595.Start()
  o2624 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_7", S_o2624)
  o2634.Start()
  o2663 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_8", S_o2663)
  o2673.Start()
  o2702 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_9", S_o2702)
  o2712.Start()
  o2741 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_1", S_o2741)
  o2756.Start()
  o2789 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o2789)
  o2804.Start()
  o2837 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o2837)
  o2852.Start()
  o2885 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_1", S_o2885)
  o2900.Start()
  o2933 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_2", S_o2933)
  o2948.Start()
  o2981 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_1", S_o2981)
  o2996.Start()
  o3029 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_2", S_o3029)
  o3044.Start()
  o3077 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_g_1", S_o3077)
  o3092.Start()
  o3125 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_g_2", S_o3125)
  o3140.Start()
  o3173 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_2g_1", S_o3173)
  o3221 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_2g_2", S_o3221)
  o3269 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_2g_3", S_o3269)
  o3317 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_2g_4", S_o3317)
  o3365 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2g_1", S_o3365)
  o3413 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2g_2", S_o3413)
  o3461 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2g_3", S_o3461)
  o3509 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3g_1", S_o3509)
  o3557 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3g_2", S_o3557)
  o3605 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3g_3", S_o3605)
  o3653 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o3653)
  o3658 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o3658)
  o3663 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o3663)
  o3668 = BindEasy(Node_Find("/"), "Camera", S_o3668)
  o3671 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o3671)
  o3672 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o3672)
  o3676 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o3676)
  o3677 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o3677)
  o3678 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o3678)
  o3679 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o3679)
  o3680 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o3680)
  o3681 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o3681)
  o3682 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o3682)
  o3708.Start()
  o3683 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o3683)
  o3686 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o3686)
  o3689 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o3689)
  o3699 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_A", S_o3699)
  o3704 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_V", S_o3704)
  o3709 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Extro_A", S_o3709)
  o926 = { {}, o1844, o1129, o1184, o1293, o1348 }()
  o3669 = { {}, o1084, o1129, o1184, o1239, o1293, o1348 }()
  o3673 = { {}, o1348, o1129, o1184, o1239, o1293 }()
  o3674 = { {}, o1084 }()
  o3675 = { {}, o1239 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end