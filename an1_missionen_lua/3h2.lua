-- dekompiliert aus map\3h2\script\3h2.sco
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
  Terrain_LoadTerrain(node1, "map/3h2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3h2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/3h2/Lmsh/", "map/3h2/Ltex/")
  Game_SetTerrainDepth(node0, 1268)
  Game_SetDecompressionHeight(node0, 700)
  Game_SetAmbientLight(node0, 0.180392, 0.156863, 0.039216)
  Game_SetParallelLightT(node0, 0.078431, 0.360784, 0.352941)
  Game_SetParallelLightB(node0, 0.360784, 0.313725, 0.078431)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_3H2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track02_frag_trance.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track02.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_track10_evil.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_mystery2.sam", 4)
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
  Body_SetFriendOrFoeID(node8, 3)
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
  Body_SetFriendOrFoeID(node9, 3)
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
  Body_SetFriendOrFoeID(node10, 3)
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
  Body_SetFriendOrFoeID(node11, 3)
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
  Body_SetFriendOrFoeID(node12, 3)
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
  Body_SetFriendOrFoeID(node13, 3)
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
  Body_SetFriendOrFoeID(node14, 3)
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
  Body_SetFriendOrFoeID(node15, 3)
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
  Body_SetFriendOrFoeID(node16, 3)
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
  Body_SetFriendOrFoeID(node17, 3)
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
  Body_SetFriendOrFoeID(node18, 3)
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
  Body_SetFriendOrFoeID(node19, 3)
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
  Body_SetFriendOrFoeID(node20, 3)
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
  Body_SetFriendOrFoeID(node21, 3)
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
  Body_SetFriendOrFoeID(node22, 3)
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
  Body_SetFriendOrFoeID(node23, 3)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_kannon_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3006.196, 1173.721, 544.9459), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node24, 3)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_kannon_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3152.222, 808.2492, 545.5191), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node25, 3)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_kannon_4")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3264.932, 625.8103, 531.7614), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node26, 3)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_kannon_5")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3478.297, 425.9114, 523.9272), MAT_Vector3(-26.06449, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node27, 3)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_kannon_6")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3827.084, 478.0374, 523.9272), MAT_Vector3(44.08859, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node28, 3)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_kraft12_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3112.355, 373.5557, 512.9412), MAT_Vector3(-31.61957, 0.015592, 0.107982))
  Node_ParseIniFile(node29, "osd/gen/gen_pplant12.osd")
  Body_SetFriendOrFoeID(node29, 3)
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
  Body_SetFriendOrFoeID(node30, 3)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "tz_elem04_1_4")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2995.196, 637.3516, 509.9329), MAT_Vector3(106.6972, 0, 0))
  Node_ParseIniFile(node31, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node31, 3)
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
  Body_SetFriendOrFoeID(node32, 3)
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
  Body_SetFriendOrFoeID(node33, 3)
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
  node37 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node37)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node37, node38)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node37, node39)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("NOD_PatrolArea", "all_area")
  Node_AddSon(node39, node40)
  PatrolArea_SetPosition(node40, MAT_Vector3(2000, 2000, 0))
  PatrolArea_SetRadius(node40, 3000)
  PatrolArea_SetMinZ(node40, -20)
  PatrolArea_SetMaxZ(node40, 2000)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("NOD_PatrolArea", "dockarea")
  Node_AddSon(node39, node41)
  PatrolArea_SetPosition(node41, MAT_Vector3(3596.543, 494.7389, 574.1276))
  PatrolArea_SetRadius(node41, 100)
  PatrolArea_SetMinZ(node41, -20)
  PatrolArea_SetMaxZ(node41, 20)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("NOD_Path", "path_approach")
  Node_AddSon(node39, node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node42, node43)
  Position_SetPosition(node43, MAT_Vector3(3793.511, 603.1217, 561))
  Position_SetRadius(node43, 15)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node42, node44)
  Position_SetPosition(node44, MAT_Vector3(3803.835, 495.8079, 561.3056))
  Position_SetRadius(node44, 5)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_Path", "path_dock")
  Node_AddSon(node39, node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node45, node46)
  Position_SetPosition(node46, MAT_Vector3(3754.504, 466.6748, 561.6161))
  Position_SetRadius(node46, 5)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node45, node47)
  Position_SetPosition(node47, MAT_Vector3(3764.717, 408.1921, 561.6161))
  Position_SetRadius(node47, 5)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_1")
  Node_AddSon(node39, node48)
  PatrolArea_SetPosition(node48, MAT_Vector3(3525.859, 637.9457, 615))
  PatrolArea_SetRadius(node48, 400)
  PatrolArea_SetMinZ(node48, 0)
  PatrolArea_SetMaxZ(node48, 250)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_2")
  Node_AddSon(node39, node49)
  PatrolArea_SetPosition(node49, MAT_Vector3(3095.419, 1336.704, 615))
  PatrolArea_SetRadius(node49, 400)
  PatrolArea_SetMinZ(node49, 0)
  PatrolArea_SetMaxZ(node49, 250)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_3")
  Node_AddSon(node39, node50)
  PatrolArea_SetPosition(node50, MAT_Vector3(3205.034, 969.9829, 358.8929))
  PatrolArea_SetRadius(node50, 1000)
  PatrolArea_SetMinZ(node50, -800)
  PatrolArea_SetMaxZ(node50, 800)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_PatrolArea", "ArmadaPatrolArea_1")
  Node_AddSon(node39, node51)
  PatrolArea_SetPosition(node51, MAT_Vector3(1224.412578, 3586.180393, 555.109722))
  PatrolArea_SetRadius(node51, 200)
  PatrolArea_SetMinZ(node51, -120)
  PatrolArea_SetMaxZ(node51, 140)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_PatrolArea", "ArmadaAttackArea_1")
  Node_AddSon(node39, node52)
  PatrolArea_SetPosition(node52, MAT_Vector3(1368.681252, 4091.701311, 555.981688))
  PatrolArea_SetRadius(node52, 1050)
  PatrolArea_SetMinZ(node52, -120)
  PatrolArea_SetMaxZ(node52, 140)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_PatrolArea", "BackCanyon1Area_1")
  Node_AddSon(node39, node53)
  PatrolArea_SetPosition(node53, MAT_Vector3(456.580413, 2548.579947, 559.080386))
  PatrolArea_SetRadius(node53, 230)
  PatrolArea_SetMinZ(node53, -120)
  PatrolArea_SetMaxZ(node53, 140)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_PatrolArea", "BackCanyon1Area_2")
  Node_AddSon(node39, node54)
  PatrolArea_SetPosition(node54, MAT_Vector3(406.600227, 2081.047953, 555.699467))
  PatrolArea_SetRadius(node54, 180)
  PatrolArea_SetMinZ(node54, -120)
  PatrolArea_SetMaxZ(node54, 140)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_PatrolArea", "BackCanyon1Area_3")
  Node_AddSon(node39, node55)
  PatrolArea_SetPosition(node55, MAT_Vector3(345.540183, 1603.600318, 572.569951))
  PatrolArea_SetRadius(node55, 180)
  PatrolArea_SetMinZ(node55, -120)
  PatrolArea_SetMaxZ(node55, 140)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_PatrolArea", "BackCanyon1Area_4")
  Node_AddSon(node39, node56)
  PatrolArea_SetPosition(node56, MAT_Vector3(352.00199, 1156.611592, 569.199486))
  PatrolArea_SetRadius(node56, 100)
  PatrolArea_SetMinZ(node56, -120)
  PatrolArea_SetMaxZ(node56, 140)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_PatrolArea", "BackCanyon1Area_5")
  Node_AddSon(node39, node57)
  PatrolArea_SetPosition(node57, MAT_Vector3(384.65662, 737.731222, 564.658283))
  PatrolArea_SetRadius(node57, 170)
  PatrolArea_SetMinZ(node57, -120)
  PatrolArea_SetMaxZ(node57, 140)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_FX_Stream", "BackCanyon1Stream_1")
  Node_AddSon(node39, node58)
  Body_SetCS(node58, MAT_Vector3(450.61753, 2533.936238, 558.573024), MAT_Vector3())
  Stream_SetBoxExtension(node58, 240, 220, 170)
  Stream_SetCurrentDirection(node58, MAT_Vector3(0, 10, 0))
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_FX_Stream", "BackCanyon1Stream_2")
  Node_AddSon(node39, node59)
  Body_SetCS(node59, MAT_Vector3(419.875697, 2170.501773, 558.573), MAT_Vector3())
  Stream_SetBoxExtension(node59, 200, 220, 170)
  Stream_SetCurrentDirection(node59, MAT_Vector3(0, 10, 0))
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_FX_Stream", "BackCanyon1Stream_3")
  Node_AddSon(node39, node60)
  Body_SetCS(node60, MAT_Vector3(382.697075, 1789.743422, 558.573), MAT_Vector3())
  Stream_SetBoxExtension(node60, 200, 220, 170)
  Stream_SetCurrentDirection(node60, MAT_Vector3(0, 10, 0))
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_FX_Stream", "BackCanyon1Stream_4")
  Node_AddSon(node39, node61)
  Body_SetCS(node61, MAT_Vector3(381.747879, 1413.191829, 558.573), MAT_Vector3())
  Stream_SetBoxExtension(node61, 200, 220, 170)
  Stream_SetCurrentDirection(node61, MAT_Vector3(0, 10, 0))
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_FX_Stream", "BackCanyon1Stream_5")
  Node_AddSon(node39, node62)
  Body_SetCS(node62, MAT_Vector3(380.284949, 1047.106796, 558.573), MAT_Vector3())
  Stream_SetBoxExtension(node62, 200, 220, 170)
  Stream_SetCurrentDirection(node62, MAT_Vector3(0, 10, 0))
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_FX_Stream", "BackCanyon1Stream_6")
  Node_AddSon(node39, node63)
  Body_SetCS(node63, MAT_Vector3(380.414313, 698.067467, 558.573), MAT_Vector3())
  Stream_SetBoxExtension(node63, 200, 220, 170)
  Stream_SetCurrentDirection(node63, MAT_Vector3(0, 10, 0))
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "HarperPath_1")
  Node_AddSon(node39, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(1618.277011, 362.441139, 589.48764))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(1756.786328, 529.595221, 592.686562))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(1974.990977, 599.8923, 598.97915))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(2052.435542, 789.215147, 606.354022))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node64, node69)
  Position_SetPosition(node69, MAT_Vector3(1967.219778, 1039.966084, 603.620234))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node64, node70)
  Position_SetPosition(node70, MAT_Vector3(1985.700353, 1188.513292, 595.660539))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node64, node71)
  Position_SetPosition(node71, MAT_Vector3(2087.927786, 1337.550135, 601.446705))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node64, node72)
  Position_SetPosition(node72, MAT_Vector3(2132.557541, 1508.487222, 602.981735))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node64, node73)
  Position_SetPosition(node73, MAT_Vector3(2110.530999, 1719.465494, 609.66452))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node64, node74)
  Position_SetPosition(node74, MAT_Vector3(2050.098103, 1929.930427, 643.879188))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node64, node75)
  Position_SetPosition(node75, MAT_Vector3(2008.050968, 2107.580551, 595.74927))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node64, node76)
  Position_SetPosition(node76, MAT_Vector3(1940.952443, 2322.049603, 590.884896))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node64, node77)
  Position_SetPosition(node77, MAT_Vector3(1679.421341, 2432.823826, 589.022951))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node64, node78)
  Position_SetPosition(node78, MAT_Vector3(1598.478791, 2485.048127, 594.033154))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Path", "BonhamPath_1")
  Node_AddSon(node39, node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node79, node80)
  Position_SetPosition(node80, MAT_Vector3(1635.524259, 358.221001, 590.458124))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node79, node81)
  Position_SetPosition(node81, MAT_Vector3(1778.779641, 495.258317, 619.370343))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node79, node82)
  Position_SetPosition(node82, MAT_Vector3(1990.456031, 558.210948, 637.971852))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node79, node83)
  Position_SetPosition(node83, MAT_Vector3(2063.337412, 720.193055, 642.580813))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node79, node84)
  Position_SetPosition(node84, MAT_Vector3(2082.555508, 894.151432, 607.347926))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node79, node85)
  Position_SetPosition(node85, MAT_Vector3(2119.867167, 1028.016696, 592.18888))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node79, node86)
  Position_SetPosition(node86, MAT_Vector3(2138.124522, 1115.882609, 611.026824))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node79, node87)
  Position_SetPosition(node87, MAT_Vector3(2140.452358, 1236.373, 598.567267))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node79, node88)
  Position_SetPosition(node88, MAT_Vector3(2153.26845, 1511.191941, 621.022568))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node79, node89)
  Position_SetPosition(node89, MAT_Vector3(2130.12513, 1709.763884, 609.945455))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node79, node90)
  Position_SetPosition(node90, MAT_Vector3(2094.281316, 1888.76877, 607.660769))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node79, node91)
  Position_SetPosition(node91, MAT_Vector3(2048.115299, 2100.430135, 595.897865))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node79, node92)
  Position_SetPosition(node92, MAT_Vector3(1986.615722, 2331.314347, 591))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node79, node93)
  Position_SetPosition(node93, MAT_Vector3(1598.172314, 2560.767924, 590.654797))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Path", "DeGrangePath_1")
  Node_AddSon(node39, node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node94, node95)
  Position_SetPosition(node95, MAT_Vector3(1407.514858, 511.152763, 595.762248))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node94, node96)
  Position_SetPosition(node96, MAT_Vector3(1383.998389, 780.041806, 647.322074))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node94, node97)
  Position_SetPosition(node97, MAT_Vector3(1462.017211, 935.339552, 594.315202))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node94, node98)
  Position_SetPosition(node98, MAT_Vector3(1576.231069, 1127.522783, 599.519486))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node94, node99)
  Position_SetPosition(node99, MAT_Vector3(1628.740536, 1278.981621, 613.396286))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node94, node100)
  Position_SetPosition(node100, MAT_Vector3(1689.462608, 1420.966366, 642.155496))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node94, node101)
  Position_SetPosition(node101, MAT_Vector3(1686.913753, 1634.468231, 605.252212))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node94, node102)
  Position_SetPosition(node102, MAT_Vector3(1667.262416, 1838.250424, 613.55021))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node94, node103)
  Position_SetPosition(node103, MAT_Vector3(1539.154027, 2093.526176, 596.195227))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node94, node104)
  Position_SetPosition(node104, MAT_Vector3(1618.505247, 2432.871555, 589))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Path", "PicoPath_1")
  Node_AddSon(node39, node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node105, node106)
  Position_SetPosition(node106, MAT_Vector3(1355.526158, 523.863348, 607.324391))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node105, node107)
  Position_SetPosition(node107, MAT_Vector3(1351.423352, 804.56463, 595.829732))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node105, node108)
  Position_SetPosition(node108, MAT_Vector3(1438.515998, 1040.091333, 594.862094))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node105, node109)
  Position_SetPosition(node109, MAT_Vector3(1514.51061, 1186.379396, 588.482656))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node105, node110)
  Position_SetPosition(node110, MAT_Vector3(1645.764305, 1396.594109, 592.046732))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node105, node111)
  Position_SetPosition(node111, MAT_Vector3(1670.570136, 1563.020421, 603.724512))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node105, node112)
  Position_SetPosition(node112, MAT_Vector3(1667.874099, 1685.406337, 610.512127))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node105, node113)
  Position_SetPosition(node113, MAT_Vector3(1630.105394, 1851.263805, 618.942257))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node105, node114)
  Position_SetPosition(node114, MAT_Vector3(1470.037005, 2086.27552, 600.137958))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node105, node115)
  Position_SetPosition(node115, MAT_Vector3(1571.141257, 2400.317306, 589.725696))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_PatrolArea", "Canyon1_Area_1")
  Node_AddSon(node39, node116)
  PatrolArea_SetPosition(node116, MAT_Vector3(2043.477623, 891.738373, 567.135878))
  PatrolArea_SetRadius(node116, 80)
  PatrolArea_SetMinZ(node116, -20)
  PatrolArea_SetMaxZ(node116, 20)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_PatrolArea", "Canyon1_Area_2")
  Node_AddSon(node39, node117)
  PatrolArea_SetPosition(node117, MAT_Vector3(2101.352332, 1263.578727, 566.546088))
  PatrolArea_SetRadius(node117, 120)
  PatrolArea_SetMinZ(node117, -20)
  PatrolArea_SetMaxZ(node117, 20)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_PatrolArea", "Canyon1_Area_3")
  Node_AddSon(node39, node118)
  PatrolArea_SetPosition(node118, MAT_Vector3(2105.711645, 1779.652357, 591.521178))
  PatrolArea_SetRadius(node118, 80)
  PatrolArea_SetMinZ(node118, -20)
  PatrolArea_SetMaxZ(node118, 20)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_PatrolArea", "Canyon1_Area_4")
  Node_AddSon(node39, node119)
  PatrolArea_SetPosition(node119, MAT_Vector3(2087.243261, 1929.422429, 571.578789))
  PatrolArea_SetRadius(node119, 80)
  PatrolArea_SetMinZ(node119, -20)
  PatrolArea_SetMaxZ(node119, 20)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_PatrolArea", "Canyon1_Area_5")
  Node_AddSon(node39, node120)
  PatrolArea_SetPosition(node120, MAT_Vector3(2005.379588, 2137.727297, 562.109209))
  PatrolArea_SetRadius(node120, 80)
  PatrolArea_SetMinZ(node120, -20)
  PatrolArea_SetMaxZ(node120, 20)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_PatrolArea", "Canyon1and2_Area_End")
  Node_AddSon(node39, node121)
  PatrolArea_SetPosition(node121, MAT_Vector3(1425.839582, 2606.790608, 604.180913))
  PatrolArea_SetRadius(node121, 300)
  PatrolArea_SetMinZ(node121, -40)
  PatrolArea_SetMaxZ(node121, 60)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_PatrolArea", "PunishCrawlerArea")
  Node_AddSon(node39, node122)
  PatrolArea_SetPosition(node122, MAT_Vector3(1350.06001, 2694.141874, 604.1809))
  PatrolArea_SetRadius(node122, 300)
  PatrolArea_SetMinZ(node122, -40)
  PatrolArea_SetMaxZ(node122, 60)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_PatrolArea", "Canyon2_Area_1")
  Node_AddSon(node39, node123)
  PatrolArea_SetPosition(node123, MAT_Vector3(1430.298657, 939.426929, 565.444655))
  PatrolArea_SetRadius(node123, 80)
  PatrolArea_SetMinZ(node123, -20)
  PatrolArea_SetMaxZ(node123, 20)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_PatrolArea", "Canyon2_Area_2")
  Node_AddSon(node39, node124)
  PatrolArea_SetPosition(node124, MAT_Vector3(1562.326225, 1227.179321, 567.855468))
  PatrolArea_SetRadius(node124, 100)
  PatrolArea_SetMinZ(node124, -20)
  PatrolArea_SetMaxZ(node124, 20)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_PatrolArea", "Canyon2_Area_3")
  Node_AddSon(node39, node125)
  PatrolArea_SetPosition(node125, MAT_Vector3(1690.968471, 1555.555581, 571.287694))
  PatrolArea_SetRadius(node125, 50)
  PatrolArea_SetMinZ(node125, -20)
  PatrolArea_SetMaxZ(node125, 20)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_PatrolArea", "Canyon2_Area_4")
  Node_AddSon(node39, node126)
  PatrolArea_SetPosition(node126, MAT_Vector3(1692.661132, 1740.055644, 582.996979))
  PatrolArea_SetRadius(node126, 50)
  PatrolArea_SetMinZ(node126, -20)
  PatrolArea_SetMaxZ(node126, 20)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_PatrolArea", "Canyon2_Area_5")
  Node_AddSon(node39, node127)
  PatrolArea_SetPosition(node127, MAT_Vector3(1536.936308, 2092.12916, 566.506634))
  PatrolArea_SetRadius(node127, 150)
  PatrolArea_SetMinZ(node127, -20)
  PatrolArea_SetMaxZ(node127, 20)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "WngPosition_2")
  Node_AddSon(node39, node128)
  Position_SetPosition(node128, MAT_Vector3(1313.038902, 282.663784, 589.74607))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "WngPosition_3")
  Node_AddSon(node39, node129)
  Position_SetPosition(node129, MAT_Vector3(1311.857972, 254.321474, 591.72043))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "WngPosition_4")
  Node_AddSon(node39, node130)
  Position_SetPosition(node130, MAT_Vector3(1310.677043, 225.979163, 599.683619))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_PatrolArea", "EndArea_1")
  Node_AddSon(node39, node131)
  PatrolArea_SetPosition(node131, MAT_Vector3(1395.236629, 334.401101, 563.756355))
  PatrolArea_SetRadius(node131, 250)
  PatrolArea_SetMinZ(node131, -80)
  PatrolArea_SetMaxZ(node131, 135)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_PatrolArea", "BeginBackCanyon1Area")
  Node_AddSon(node39, node132)
  PatrolArea_SetPosition(node132, MAT_Vector3(584.938939, 3143.840045, 576.498241))
  PatrolArea_SetRadius(node132, 250)
  PatrolArea_SetMinZ(node132, -80)
  PatrolArea_SetMaxZ(node132, 122)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_PatrolArea", "CityArea")
  Node_AddSon(node39, node133)
  PatrolArea_SetPosition(node133, MAT_Vector3(3215.54139, 591.41369, 575.262391))
  PatrolArea_SetRadius(node133, 450)
  PatrolArea_SetMinZ(node133, -100)
  PatrolArea_SetMaxZ(node133, 120)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Path", "HarperPath_2")
  Node_AddSon(node39, node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node134, node135)
  Position_SetPosition(node135, MAT_Vector3(2133.483304, 227.545715, 618.828262))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node134, node136)
  Position_SetPosition(node136, MAT_Vector3(1651.388051, 225.025251, 589.678513))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node134, node137)
  Position_SetPosition(node137, MAT_Vector3(1519.242282, 333.064382, 588.104921))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "RespawnPosition_1")
  Node_AddSon(node39, node138)
  Position_SetPosition(node138, MAT_Vector3(1143.124689, 3742.251886, 609.860517))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "RespawnPosition_2")
  Node_AddSon(node39, node139)
  Position_SetPosition(node139, MAT_Vector3(1667.129073, 3604.400751, 585.788984))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "RespawnPosition_3")
  Node_AddSon(node39, node140)
  Position_SetPosition(node140, MAT_Vector3(1566.612509, 3834.543101, 583.474266))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "RespawnPosition_4")
  Node_AddSon(node39, node141)
  Position_SetPosition(node141, MAT_Vector3(1101.929375, 3885.625289, 586.998441))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "RespawnPosition_5")
  Node_AddSon(node39, node142)
  Position_SetPosition(node142, MAT_Vector3(1741.280637, 3418.174718, 580.640826))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "RespawnPosition_6")
  Node_AddSon(node39, node143)
  Position_SetPosition(node143, MAT_Vector3(1978.565642, 3737.069868, 581.758381))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node37, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node37, node145)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Trigger", "GrubTriggerPresenceBox_1")
  Node_AddSon(node145, node146)
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetCS(node146, MAT_Vector3(2052.726753, 780.575155, 580.016962), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node146, 140, 20, 150)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Trigger", "GrubTriggerPresenceBox_2")
  Node_AddSon(node145, node147)
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetCS(node147, MAT_Vector3(2055.333981, 1117.878545, 564.851169), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node147, 240, 20, 150)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Trigger", "GrubTriggerPresenceBox_3")
  Node_AddSon(node145, node148)
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetCS(node148, MAT_Vector3(2147.60779, 1666.858919, 583.486768), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node148, 140, 20, 150)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Trigger", "GrubTriggerPresenceBox_4")
  Node_AddSon(node145, node149)
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetCS(node149, MAT_Vector3(1367.956697, 820.643792, 562.322585), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node149, 140, 20, 150)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Trigger", "GrubTriggerPresenceBox_5")
  Node_AddSon(node145, node150)
  Body_SetFriendOrFoeID(node150, 0)
  Body_SetCS(node150, MAT_Vector3(1644.186969, 1444.197635, 618.648565), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node150, 140, 20, 150)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Trigger", "GrubTriggerPresenceBox_6")
  Node_AddSon(node145, node151)
  Body_SetFriendOrFoeID(node151, 0)
  Body_SetCS(node151, MAT_Vector3(1609.062978, 1905.564419, 581.093083), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node151, 140, 20, 150)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Trigger", "BonhamTriggerPresence_1")
  Node_AddSon(node145, node152)
  Body_SetFriendOrFoeID(node152, 0)
  Body_SetPosition(node152, MAT_Vector3(1424.909653, 2604.733652, 609.154267))
  Trigger_SetPresenceSphere(node152, 310)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Trigger", "DeGrangeTriggerPresence_1")
  Node_AddSon(node145, node153)
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetPosition(node153, MAT_Vector3(1424.91, 2604.734, 609.1543))
  Trigger_SetPresenceSphere(node153, 310)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Trigger", "PiccoTriggerPresence_1")
  Node_AddSon(node145, node154)
  Body_SetFriendOrFoeID(node154, 0)
  Body_SetPosition(node154, MAT_Vector3(1424.91, 2604.734, 609.1543))
  Trigger_SetPresenceSphere(node154, 310)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Trigger", "HarperTriggerPresence_1")
  Node_AddSon(node145, node155)
  Body_SetFriendOrFoeID(node155, 0)
  Body_SetPosition(node155, MAT_Vector3(1424.91, 2604.734, 609.1543))
  Trigger_SetPresenceSphere(node155, 310)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Trigger", "PlaTriggerPresence_1")
  Node_AddSon(node145, node156)
  Body_SetFriendOrFoeID(node156, 0)
  Body_SetPosition(node156, MAT_Vector3(1424.91, 2604.734, 609.1543))
  Trigger_SetPresenceSphere(node156, 310)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Trigger", "PlaTriggerPresence_2")
  Node_AddSon(node145, node157)
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetPosition(node157, MAT_Vector3(1224.370894, 3586.168143, 555.255147))
  Trigger_SetPresenceSphere(node157, 300)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Trigger", "PlaTriggerPresenceBox_1")
  Node_AddSon(node145, node158)
  Body_SetFriendOrFoeID(node158, 0)
  Body_SetCS(node158, MAT_Vector3(652.321839, 3378.823052, 561.480688), MAT_Vector3(-10.797041, 0, 0))
  Trigger_SetBoxMode(node158, 220, 20, 220)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Trigger", "PlaTriggerPresenceBox_2")
  Node_AddSon(node145, node159)
  Body_SetFriendOrFoeID(node159, 0)
  Body_SetCS(node159, MAT_Vector3(1561.616138, 2368.510088, 568.739976), MAT_Vector3(34.780186, 0, 0))
  Trigger_SetBoxMode(node159, 420, 20, 220)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Trigger", "DialogTrigger_1")
  Node_AddSon(node145, node160)
  Body_SetFriendOrFoeID(node160, 0)
  Body_SetCS(node160, MAT_Vector3(1737.886941, 482.93055, 580.017), MAT_Vector3(-56.247125, 0, 0))
  Trigger_SetBoxMode(node160, 140, 20, 150)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Trigger", "DialogTrigger_2")
  Node_AddSon(node145, node161)
  Body_SetFriendOrFoeID(node161, 0)
  Body_SetCS(node161, MAT_Vector3(1395.169923, 608.709763, 580.017), MAT_Vector3(-0.865202, 0, 0))
  Trigger_SetBoxMode(node161, 140, 20, 150)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node37, node162)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node162, node163)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_vessel", "tz_sco1v1_3")
  Node_AddSon(node163, node164)
  Body_SetCS(node164, MAT_Vector3(2897.610166, 489.141841, 669.756698), MAT_Vector3(-164.3334, 0, 0))
  Node_ParseIniFile(node164, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node164, 3)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_vessel", "tz_sco1v1_2")
  Node_AddSon(node163, node165)
  Body_SetCS(node165, MAT_Vector3(2883.615446, 437.187972, 664.842153), MAT_Vector3(-161.495, 0, 0))
  Node_ParseIniFile(node165, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node165, 3)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_vessel", "tz_sco1v1_1")
  Node_AddSon(node163, node166)
  Body_SetCS(node166, MAT_Vector3(2845.525156, 576.262168, 696.388264), MAT_Vector3(-158.8502, 0, 0))
  Node_ParseIniFile(node166, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node166, 3)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "tz_pPatrol_3")
  Node_AddSon(node163, node167)
  Body_SetCS(node167, MAT_Vector3(3507.271, 505.5841, 600), MAT_Vector3(-54.29012, 0, 0))
  Node_ParseIniFile(node167, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node167, 3)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vessel", "tz_pPatrol_2")
  Node_AddSon(node163, node168)
  Body_SetCS(node168, MAT_Vector3(3523.06, 484, 600), MAT_Vector3(-55.3595, 0, 0))
  Node_ParseIniFile(node168, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node168, 3)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vessel", "tz_pPatrol_1")
  Node_AddSon(node163, node169)
  Body_SetCS(node169, MAT_Vector3(3527.572, 505.11, 600), MAT_Vector3(-56.38649, 0, 0))
  Node_ParseIniFile(node169, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node169, 3)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node162, node170)
  Body_SetCS(node170, MAT_Vector3(3741.430801, 537.947643, 549.791724), MAT_Vector3(153.637082, 0.807634, -0.430644))
  Node_ParseIniFile(node170, "osd/pla/pla_skipjack.osd")
  Body_SetFriendOrFoeID(node170, 1)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vessel", "wng_pico_c2_1")
  Node_AddSon(node162, node171)
  Body_SetCS(node171, MAT_Vector3(1417.945413, 369.835167, 587.62423), MAT_Vector3(4.412774, 0, 0))
  Node_ParseIniFile(node171, "osd/wng/wng_pico_c2.osd")
  Body_SetFriendOrFoeID(node171, 2)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vessel", "wng_harper_c2_1")
  Node_AddSon(node162, node172)
  Body_SetCS(node172, MAT_Vector3(2225.063499, 226.551381, 627.034244), MAT_Vector3(88.739807, 0, 0))
  Node_ParseIniFile(node172, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node172, 2)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vessel", "wng_degrange_c2_1")
  Node_AddSon(node162, node173)
  Body_SetCS(node173, MAT_Vector3(1381.611906, 372.43735, 585.365571), MAT_Vector3(-1.360716, 0, 0))
  Node_ParseIniFile(node173, "osd/wng/wng_degrange_c2.osd")
  Body_SetFriendOrFoeID(node173, 2)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vessel", "wng_bonham_c2_1")
  Node_AddSon(node162, node174)
  Body_SetCS(node174, MAT_Vector3(1453.5016, 350.431378, 613.496369), MAT_Vector3(-37.554896, 0, 0))
  Node_ParseIniFile(node174, "osd/wng/wng_bonham_c2.osd")
  Body_SetFriendOrFoeID(node174, 2)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vessel", "wng_pico_c2_2")
  Node_AddSon(node162, node175)
  Body_SetCS(node175, MAT_Vector3(1388.069124, 424.35002, 690.33), MAT_Vector3(89.59251, 0, 0))
  Node_ParseIniFile(node175, "osd/wng/wng_pico_c2.osd")
  Body_SetFriendOrFoeID(node175, 2)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vessel", "wng_harper_c2_2")
  Node_AddSon(node162, node176)
  Body_SetCS(node176, MAT_Vector3(1504.277317, 326.47045, 628.7718), MAT_Vector3(97.13863, 0, 0))
  Node_ParseIniFile(node176, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node176, 2)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "wng_degrange_c2_2")
  Node_AddSon(node162, node177)
  Body_SetCS(node177, MAT_Vector3(1504.913219, 233.10238, 585.3656), MAT_Vector3(86.38911, 0, 0))
  Node_ParseIniFile(node177, "osd/wng/wng_degrange_c2.osd")
  Body_SetFriendOrFoeID(node177, 2)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "wng_bonham_c2_2")
  Node_AddSon(node162, node178)
  Body_SetCS(node178, MAT_Vector3(1376.840853, 186.371161, 613.4964), MAT_Vector3(89.82634, 0, 0))
  Node_ParseIniFile(node178, "osd/wng/wng_bonham_c2.osd")
  Body_SetFriendOrFoeID(node178, 2)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vehicle", "Can1_Grub_1")
  Node_AddSon(node162, node179)
  Body_SetCS(node179, MAT_Vector3(2034.599865, 894.059397, 519.944285), MAT_Vector3(42.47678, 0, 0))
  Node_ParseIniFile(node179, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node179, 0)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vehicle", "Can1_Grub_2")
  Node_AddSon(node162, node180)
  Body_SetCS(node180, MAT_Vector3(2060.277032, 916.857587, 520.016195), MAT_Vector3(139.8346, 0, 0))
  Node_ParseIniFile(node180, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vehicle", "Can1_Grub_3")
  Node_AddSon(node162, node181)
  Body_SetCS(node181, MAT_Vector3(2122.468402, 1256.813337, 521.260974), MAT_Vector3(-110.388327, 0, 0))
  Node_ParseIniFile(node181, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node181, 0)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vehicle", "Can1_Grub_4")
  Node_AddSon(node162, node182)
  Body_SetCS(node182, MAT_Vector3(2068.005909, 1245.405217, 525.014577), MAT_Vector3(-36.41472, 0, 0))
  Node_ParseIniFile(node182, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node182, 0)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vehicle", "Can1_Grub_5")
  Node_AddSon(node162, node183)
  Body_SetCS(node183, MAT_Vector3(2135.203663, 1760.242755, 520.0162), MAT_Vector3(139.8346, 0, 0))
  Node_ParseIniFile(node183, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node183, 0)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vehicle", "Can1_Grub_6")
  Node_AddSon(node162, node184)
  Body_SetCS(node184, MAT_Vector3(2087.623891, 1919.930767, 526.449605), MAT_Vector3(-110.3883, 0, 0))
  Node_ParseIniFile(node184, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node184, 0)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vehicle", "Can1_Grub_7")
  Node_AddSon(node162, node185)
  Body_SetCS(node185, MAT_Vector3(2014.928484, 2155.216864, 521.582058), MAT_Vector3(-36.41472, 0, 0))
  Node_ParseIniFile(node185, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node185, 0)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vehicle", "Can2_Grub_1")
  Node_AddSon(node162, node186)
  Body_SetCS(node186, MAT_Vector3(1413.072202, 883.145871, 519.196992), MAT_Vector3(45.61892, 0, 0))
  Node_ParseIniFile(node186, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node186, 0)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vehicle", "Can2_Grub_2")
  Node_AddSon(node162, node187)
  Body_SetCS(node187, MAT_Vector3(1444.964929, 927.790053, 516.689012), MAT_Vector3(42.47678, 0, 0))
  Node_ParseIniFile(node187, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node187, 0)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vehicle", "Can2_Grub_3")
  Node_AddSon(node162, node188)
  Body_SetCS(node188, MAT_Vector3(1519.448161, 1159.175389, 512.181496), MAT_Vector3(15.37645, 0, 0))
  Node_ParseIniFile(node188, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node188, 0)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vehicle", "Can2_Grub_4")
  Node_AddSon(node162, node189)
  Body_SetCS(node189, MAT_Vector3(1594.749601, 1212.604403, 518.624007), MAT_Vector3(-1.272286, 0, 0))
  Node_ParseIniFile(node189, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node189, 0)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vehicle", "Can2_Grub_5")
  Node_AddSon(node162, node190)
  Body_SetCS(node190, MAT_Vector3(1689.582657, 1524.611028, 517.663831), MAT_Vector3(42.47678, 0, 0))
  Node_ParseIniFile(node190, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node190, 0)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vehicle", "Can2_Grub_6")
  Node_AddSon(node162, node191)
  Body_SetCS(node191, MAT_Vector3(1704.816607, 1710.803753, 532.067031), MAT_Vector3(15.37645, 0, 0))
  Node_ParseIniFile(node191, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node191, 0)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vehicle", "Can2_Grub_7")
  Node_AddSon(node162, node192)
  Body_SetCS(node192, MAT_Vector3(1581.252345, 1985.014856, 519.226442), MAT_Vector3(-1.272286, 0, 0))
  Node_ParseIniFile(node192, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node192, 0)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vehicle", "Can2_Grub_8")
  Node_AddSon(node162, node193)
  Body_SetCS(node193, MAT_Vector3(1577.867022, 2061.184607, 516.131678), MAT_Vector3(-1.272286, 0, 0))
  Node_ParseIniFile(node193, "osd/cra/cra_raupe.osd")
  Body_SetFriendOrFoeID(node193, 0)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "cra_fregat_1")
  Node_AddSon(node162, node194)
  Body_SetCS(node194, MAT_Vector3(1242.712154, 3639.471358, 585.070997), MAT_Vector3(141.94073, 0, 0))
  Node_ParseIniFile(node194, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node194, 0)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "cra_bomber_2")
  Node_AddSon(node162, node195)
  Body_SetCS(node195, MAT_Vector3(1343.992357, 2885.466607, 563.2631), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node195, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node195, 4)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "cra_bomber_3")
  Node_AddSon(node162, node196)
  Body_SetCS(node196, MAT_Vector3(995.394928, 3578.327689, 571.025), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node196, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node196, 0)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "cra_scoB1_1")
  Node_AddSon(node162, node197)
  Body_SetCS(node197, MAT_Vector3(1224.551246, 2797.960794, 554.5468), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node197, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node197, 4)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "cra_scoB2_1")
  Node_AddSon(node162, node198)
  Body_SetCS(node198, MAT_Vector3(1406.579918, 2763.155529, 561.3872), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node198, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node198, 4)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "cra_scoB2_2")
  Node_AddSon(node162, node199)
  Body_SetCS(node199, MAT_Vector3(1407.094573, 3696.900537, 563.7966), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node199, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node199, 0)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "cra_scoB3_1")
  Node_AddSon(node162, node200)
  Body_SetCS(node200, MAT_Vector3(1348.464327, 3747.209018, 567.3611), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node200, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node200, 4)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "cra_scoB3_2")
  Node_AddSon(node162, node201)
  Body_SetCS(node201, MAT_Vector3(1027.752067, 3644.865634, 568.1342), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node201, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node201, 0)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "cra_scoF_1")
  Node_AddSon(node162, node202)
  Body_SetCS(node202, MAT_Vector3(1253.521522, 3666.296345, 558.7786), MAT_Vector3(89.19965, 0, 0))
  Node_ParseIniFile(node202, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node202, 4)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "cra_scoF_2")
  Node_AddSon(node162, node203)
  Body_SetCS(node203, MAT_Vector3(1469.019056, 3496.517915, 559.7219), MAT_Vector3(88.27733, 0, 0))
  Node_ParseIniFile(node203, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node203, 0)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_1")
  Node_AddSon(node162, node204)
  Body_SetCS(node204, MAT_Vector3(408.588139, 2647.502009, 530.887839), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node204, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node204, 0)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_2")
  Node_AddSon(node162, node205)
  Body_SetCS(node205, MAT_Vector3(549.582133, 2405.342501, 658.573), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node205, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node205, 0)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_3")
  Node_AddSon(node162, node206)
  Body_SetCS(node206, MAT_Vector3(283.872997, 2182.146826, 658.573), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node206, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node206, 0)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_4")
  Node_AddSon(node162, node207)
  Body_SetCS(node207, MAT_Vector3(523.601685, 1983.750671, 658.573), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node207, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node207, 0)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_5")
  Node_AddSon(node162, node208)
  Body_SetCS(node208, MAT_Vector3(270.882772, 1692.061086, 658.573), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node208, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node208, 0)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_6")
  Node_AddSon(node162, node209)
  Body_SetCS(node209, MAT_Vector3(414.956171, 1501.931437, 658.573), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node209, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node209, 0)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_7")
  Node_AddSon(node162, node210)
  Body_SetCS(node210, MAT_Vector3(296.863221, 1197.251627, 658.573), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node210, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node210, 0)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_8")
  Node_AddSon(node162, node211)
  Body_SetCS(node211, MAT_Vector3(385.479808, 876.149359, 762.582921), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node211, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node211, 0)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_9")
  Node_AddSon(node162, node212)
  Body_SetCS(node212, MAT_Vector3(412.393654, 617.276094, 762.582921), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node212, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node212, 0)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_10")
  Node_AddSon(node162, node213)
  Body_SetCS(node213, MAT_Vector3(386.317189, 1184.926374, 523.35134), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node213, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node213, 0)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_11")
  Node_AddSon(node162, node214)
  Body_SetCS(node214, MAT_Vector3(445.509406, 1619.650675, 518.115512), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node214, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node214, 0)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_12")
  Node_AddSon(node162, node215)
  Body_SetCS(node215, MAT_Vector3(270.853261, 1568.454588, 513.964595), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node215, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node215, 0)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_13")
  Node_AddSon(node162, node216)
  Body_SetCS(node216, MAT_Vector3(392.718947, 1967.900167, 518.009736), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node216, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node216, 0)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_14")
  Node_AddSon(node162, node217)
  Body_SetCS(node217, MAT_Vector3(387.503989, 760.632323, 511.671026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node217, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node217, 0)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_15")
  Node_AddSon(node162, node218)
  Body_SetCS(node218, MAT_Vector3(333.144102, 1453.978888, 517.004854), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node218, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node218, 0)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vehicle", "cra_tank_3h2_16")
  Node_AddSon(node162, node219)
  Body_SetCS(node219, MAT_Vector3(374.185064, 591.717913, 521.810521), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node219, "osd/cra/cra_tank_3h2.osd")
  Body_SetFriendOrFoeID(node219, 0)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node162, node220)
  Body_SetPosition(node220, MAT_Vector3(1425.220775, 2610.419619, 604.355553))
  WayPoint_SetRadius(node220, 300)
  Node_ParseIniFile(node220, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node162, node221)
  Body_SetPosition(node221, MAT_Vector3(572.12526, 3405.991364, 561.713784))
  WayPoint_SetRadius(node221, 20)
  Node_ParseIniFile(node221, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_waypoint", "nav_waypoint_03_1")
  Node_AddSon(node162, node222)
  Body_SetPosition(node222, MAT_Vector3(396.289638, 425.769786, 568.755292))
  WayPoint_SetRadius(node222, 150)
  Node_ParseIniFile(node222, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_2")
  Node_AddSon(node162, node223)
  Body_SetPosition(node223, MAT_Vector3(2492.870279, 224.085058, 652.093348))
  WayPoint_SetRadius(node223, 150)
  Node_ParseIniFile(node223, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_2")
  Node_AddSon(node162, node224)
  Body_SetPosition(node224, MAT_Vector3(1429.118109, 335.371714, 567.953805))
  WayPoint_SetRadius(node224, 300)
  Node_ParseIniFile(node224, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_vessel", "cra_scout1_g_1")
  Node_AddSon(node162, node225)
  Body_SetCS(node225, MAT_Vector3(520.789002, 3286.98801, 511.857058), MAT_Vector3(2.298025, 21.95846, -2.306148))
  Node_ParseIniFile(node225, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node225, 0)
  Body_SetNameKey(node225, -1)
  Body_SetCargoKey(node225, -1, 0)
  Body_SetCargoKey(node225, -1, 1)
  Body_SetCargoKey(node225, -1, 2)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_vessel", "cra_scout1_g_2")
  Node_AddSon(node162, node226)
  Body_SetCS(node226, MAT_Vector3(654.780404, 3195.934121, 594.576952), MAT_Vector3(0, 29.746211, 0))
  Node_ParseIniFile(node226, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node226, 0)
  Body_SetNameKey(node226, -1)
  Body_SetCargoKey(node226, -1, 0)
  Body_SetCargoKey(node226, -1, 1)
  Body_SetCargoKey(node226, -1, 2)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_vessel", "cra_scout1_g_3")
  Node_AddSon(node162, node227)
  Body_SetCS(node227, MAT_Vector3(526.17766, 3117.130597, 522.551904), MAT_Vector3(0, 19.678263, 0))
  Node_ParseIniFile(node227, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node227, 0)
  Body_SetNameKey(node227, -1)
  Body_SetCargoKey(node227, -1, 0)
  Body_SetCargoKey(node227, -1, 1)
  Body_SetCargoKey(node227, -1, 2)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_vessel", "cra_scout1_g_4")
  Node_AddSon(node162, node228)
  Body_SetCS(node228, MAT_Vector3(670.601738, 3301.876733, 496.277967), MAT_Vector3(0, 36.610722, 0))
  Node_ParseIniFile(node228, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node228, 0)
  Body_SetNameKey(node228, -1)
  Body_SetCargoKey(node228, -1, 0)
  Body_SetCargoKey(node228, -1, 1)
  Body_SetCargoKey(node228, -1, 2)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_vessel", "cra_scout1_g_5")
  Node_AddSon(node162, node229)
  Body_SetCS(node229, MAT_Vector3(766.951397, 3235.451263, 511.202873), MAT_Vector3(0, 15.559557, 0))
  Node_ParseIniFile(node229, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node229, 0)
  Body_SetNameKey(node229, -1)
  Body_SetCargoKey(node229, -1, 0)
  Body_SetCargoKey(node229, -1, 1)
  Body_SetCargoKey(node229, -1, 2)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_vessel", "cra_scout1_g_6")
  Node_AddSon(node162, node230)
  Body_SetCS(node230, MAT_Vector3(1618.079041, 2622.502238, 511.82966), MAT_Vector3(-70.475639, 20.593531, 0))
  Node_ParseIniFile(node230, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node230, 0)
  Body_SetNameKey(node230, -1)
  Body_SetCargoKey(node230, -1, 0)
  Body_SetCargoKey(node230, -1, 1)
  Body_SetCargoKey(node230, -1, 2)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_vessel", "cra_scout1_g_7")
  Node_AddSon(node162, node231)
  Body_SetCS(node231, MAT_Vector3(1398.697979, 2488.453996, 625.823623), MAT_Vector3(0, 28.830943, 0))
  Node_ParseIniFile(node231, "osd/cra/cra_scout1_g.osd")
  Body_SetFriendOrFoeID(node231, 0)
  Body_SetNameKey(node231, -1)
  Body_SetCargoKey(node231, -1, 0)
  Body_SetCargoKey(node231, -1, 1)
  Body_SetCargoKey(node231, -1, 2)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node162, node232)
  Body_SetCS(node232, MAT_Vector3(1394.756598, 275.573549, 634.333845), MAT_Vector3(-84.20466, 0, 0))
  Node_ParseIniFile(node232, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node232, 0)
  Body_SetNameKey(node232, -1)
  Body_SetCargoKey(node232, -1, 0)
  Body_SetCargoKey(node232, -1, 1)
  Body_SetCargoKey(node232, -1, 2)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_vessel", "cra_scout1_2")
  Node_AddSon(node162, node233)
  Body_SetCS(node233, MAT_Vector3(1487.032241, 385.46817, 652.428035), MAT_Vector3(-85.577562, 0, 0))
  Node_ParseIniFile(node233, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node233, 0)
  Body_SetNameKey(node233, -1)
  Body_SetCargoKey(node233, -1, 0)
  Body_SetCargoKey(node233, -1, 1)
  Body_SetCargoKey(node233, -1, 2)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_vessel", "cra_scout1_3")
  Node_AddSon(node162, node234)
  Body_SetCS(node234, MAT_Vector3(1415.285489, 451.006841, 656.25981), MAT_Vector3(-78.255418, 0, 0))
  Node_ParseIniFile(node234, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node234, 4)
  Body_SetNameKey(node234, -1)
  Body_SetCargoKey(node234, -1, 0)
  Body_SetCargoKey(node234, -1, 1)
  Body_SetCargoKey(node234, -1, 2)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_vessel", "cra_scout1_4")
  Node_AddSon(node162, node235)
  Body_SetCS(node235, MAT_Vector3(1333.800261, 328.910346, 703.015597), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node235, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node235, 4)
  Body_SetNameKey(node235, -1)
  Body_SetCargoKey(node235, -1, 0)
  Body_SetCargoKey(node235, -1, 1)
  Body_SetCargoKey(node235, -1, 2)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_vessel", "cra_scout1_5")
  Node_AddSon(node162, node236)
  Body_SetCS(node236, MAT_Vector3(1366.529101, 235.413172, 703.015597), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node236, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node236, 4)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_vessel", "cra_scout1_6")
  Node_AddSon(node162, node237)
  Body_SetCS(node237, MAT_Vector3(1462.348545, 280.74195, 703.015597), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node237, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node237, 4)
  Body_SetNameKey(node237, -1)
  Body_SetCargoKey(node237, -1, 0)
  Body_SetCargoKey(node237, -1, 1)
  Body_SetCargoKey(node237, -1, 2)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node162, node238)
  Node_ParseIniFile(node238, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node238, "map/3h2/Terrain/fungus02.tga")
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node162, node239)
  Node_ParseIniFile(node239, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node239, "map/3h2/Terrain/stone01.tga")
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_fx_plant", "coral_04_1")
  Node_AddSon(node162, node240)
  Node_ParseIniFile(node240, "osd/fx_plant/coral_04.osd")
  FX_Plant_SetMap(node240, "map/3h2/Terrain/coral04.tga")
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node162, node241)
  Body_SetCS(node241, MAT_Vector3(2605.518449, 229.288689, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node241, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node241, 0)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node162, node242)
  Body_SetCS(node242, MAT_Vector3(2634.448953, 322.194669, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node242, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node242, 0)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node162, node243)
  Body_SetCS(node243, MAT_Vector3(446.685474, 430.943675, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node243, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node243, 0)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node162, node244)
  Body_SetCS(node244, MAT_Vector3(802.026222, 3664.117339, 400), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node244, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node244, 0)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node162, node245)
  Body_SetCS(node245, MAT_Vector3(842.209216, 3593.7971, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node245, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node245, 0)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node162, node246)
  Body_SetCS(node246, MAT_Vector3(597.079146, 3049.745663, 455), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node246, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node246, 0)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node162, node247)
  Body_SetCS(node247, MAT_Vector3(2257.8586, 262.037957, 600), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node247, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node247, 0)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_fungus", "fungus_02_9")
  Node_AddSon(node162, node248)
  Body_SetCS(node248, MAT_Vector3(2319.719088, 215.250058, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node248, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node248, 0)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_fungus", "fungus_02_10")
  Node_AddSon(node162, node249)
  Body_SetCS(node249, MAT_Vector3(2050.211242, 139.060076, 540), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node249, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node249, 0)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_fungus", "fungus_02_11")
  Node_AddSon(node162, node250)
  Body_SetCS(node250, MAT_Vector3(266.593821, 1631.435462, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node250, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node250, 0)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_fungus", "fungus_02_12")
  Node_AddSon(node162, node251)
  Body_SetCS(node251, MAT_Vector3(1264.181228, 3318.21385, 450), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node251, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node251, 0)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_fungus", "fungus_02_13")
  Node_AddSon(node162, node252)
  Body_SetCS(node252, MAT_Vector3(1172.384837, 3278.333807, 500), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node252, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node252, 0)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_fungus", "fungus_02_14")
  Node_AddSon(node162, node253)
  Body_SetCS(node253, MAT_Vector3(2496.32735, 2756.482286, 508.618276), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node253, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node253, 0)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_fungus", "fungus_02_15")
  Node_AddSon(node162, node254)
  Body_SetCS(node254, MAT_Vector3(2467.85581, 2813.990468, 432.456171), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node254, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node254, 0)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_fungus", "fungus_02_16")
  Node_AddSon(node162, node255)
  Body_SetCS(node255, MAT_Vector3(2406.577948, 2757.040475, 494.916315), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node255, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node255, 0)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_fungus", "fungus_02_17")
  Node_AddSon(node162, node256)
  Body_SetCS(node256, MAT_Vector3(2438.985862, 2695.542026, 577.541952), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node256, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node256, 0)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node162, node257)
  Node_ParseIniFile(node257, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node257, "map/3h2/Terrain/coral01.tga")
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_waypoint", "nav_waypoint_04_1")
  Node_AddSon(node162, node258)
  Body_SetPosition(node258, MAT_Vector3(1428.567561, 344.07912, 562.191564))
  WayPoint_SetRadius(node258, 150)
  Node_ParseIniFile(node258, "osd/nav/nav_waypoint_04.osd")
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node259)
  Camera_SetBackPlane(node259, 512)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node260)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node260, node261)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node260, node262)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "Chapter1Position_1")
  Node_AddSon(node262, node263)
  Position_SetPosition(node263, MAT_Vector3(1934.635604, 205.353076, 569.414726))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Path", "Chapter1Path_1")
  Node_AddSon(node262, node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node264, node265)
  Position_SetPosition(node265, MAT_Vector3(2451.654482, 228.591969, 604.415342))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node264, node266)
  Position_SetPosition(node266, MAT_Vector3(2151.35606, 226.638798, 619.684083))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node264, node267)
  Position_SetPosition(node267, MAT_Vector3(1651.926403, 224.316262, 626.665008))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node264, node268)
  Position_SetPosition(node268, MAT_Vector3(1519.59388, 334.924489, 596.556868))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "Chapter1Position_2")
  Node_AddSon(node262, node269)
  Position_SetPosition(node269, MAT_Vector3(2205.640268, 225.925628, 695.791081))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "Chapter1Position_3")
  Node_AddSon(node262, node270)
  Position_SetPosition(node270, MAT_Vector3(1457.214808, 226.607312, 655.230091))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "Chapter1Position_4")
  Node_AddSon(node262, node271)
  Position_SetPosition(node271, MAT_Vector3(1477.167448, 364.772459, 586.608389))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Path", "Chapter2Path_1")
  Node_AddSon(node262, node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node272, node273)
  Position_SetPosition(node273, MAT_Vector3(1408.586887, 2671.107818, 589.345261))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node272, node274)
  Position_SetPosition(node274, MAT_Vector3(1203.77489, 2938.548277, 587.276763))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node272, node275)
  Position_SetPosition(node275, MAT_Vector3(1199.520813, 3298.098445, 588.936292))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "Chapter2Position_1")
  Node_AddSon(node262, node276)
  Position_SetPosition(node276, MAT_Vector3(1381.586347, 2708.725323, 589))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "Chapter2Position_2")
  Node_AddSon(node262, node277)
  Position_SetPosition(node277, MAT_Vector3(1205.269982, 2938.806265, 589))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "Chapter2Position_3")
  Node_AddSon(node262, node278)
  Position_SetPosition(node278, MAT_Vector3(1221.997859, 3498.272735, 610.742962))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Path", "Chapter3Path_2")
  Node_AddSon(node262, node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node279, node280)
  Position_SetPosition(node280, MAT_Vector3(1124.662608, 3507.144465, 597.474893))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node279, node281)
  Position_SetPosition(node281, MAT_Vector3(1096.611222, 3504.921899, 591.305847))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Path", "ExtroPath_1")
  Node_AddSon(node262, node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node282, node283)
  Position_SetPosition(node283, MAT_Vector3(492.667488, 339.593194, 606.482694))
  Position_SetRadius(node283, 5)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node282, node284)
  Position_SetPosition(node284, MAT_Vector3(717.585491, 347.826064, 595.532044))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node282, node285)
  Position_SetPosition(node285, MAT_Vector3(948.574536, 306.268199, 598.217851))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node282, node286)
  Position_SetPosition(node286, MAT_Vector3(1148.319974, 318.88814, 632.314651))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node282, node287)
  Position_SetPosition(node287, MAT_Vector3(1265.138465, 330.379754, 619.248759))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Path", "ExtroPath_2")
  Node_AddSon(node262, node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node288, node289)
  Position_SetPosition(node289, MAT_Vector3(501.881751, 314.594813, 657.705144))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node288, node290)
  Position_SetPosition(node290, MAT_Vector3(765.730127, 330.244458, 631.532586))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node288, node291)
  Position_SetPosition(node291, MAT_Vector3(965.506155, 284.983791, 665.046389))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node288, node292)
  Position_SetPosition(node292, MAT_Vector3(1302.511877, 284.744772, 646.198978))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Path", "ExtroPath_3")
  Node_AddSon(node262, node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node293, node294)
  Position_SetPosition(node294, MAT_Vector3(519.203224, 287.278412, 653.071677))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node293, node295)
  Position_SetPosition(node295, MAT_Vector3(779.590959, 312.261428, 640.515471))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node293, node296)
  Position_SetPosition(node296, MAT_Vector3(865.047485, 296.860163, 697.090614))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node293, node297)
  Position_SetPosition(node297, MAT_Vector3(1043.587252, 278.184881, 711.454484))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node293, node298)
  Position_SetPosition(node298, MAT_Vector3(1302.119133, 385.488233, 603.015597))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Path", "ExtroPath_Pla")
  Node_AddSon(node262, node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node299, node300)
  Position_SetPosition(node300, MAT_Vector3(595.139761, 308.648821, 624.91352))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node299, node301)
  Position_SetPosition(node301, MAT_Vector3(864.802238, 309.771413, 589.985891))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node299, node302)
  Position_SetPosition(node302, MAT_Vector3(1130.204369, 291.030658, 593.156628))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "ExtroPosition_1")
  Node_AddSon(node262, node303)
  Position_SetPosition(node303, MAT_Vector3(1157.807, 375.9468, 588.0367))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node260, node304)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Director", "StartMusic")
  Node_AddSon(node304, node305)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Director", "IntroChapter2V")
  Node_AddSon(node304, node306)
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Director", "IntroChapter2Addon")
  Node_AddSon(node304, node307)
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node260, node308)
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node260, node309)
  Node_EnterSimulation(node309)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
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
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, E)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
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
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, E)
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
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (o1351.Value ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2509 1452")
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
S_o926 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o926, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o927 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o927, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o928 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o928, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o929 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o929, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o930 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o930, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o931 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 380, 5)
  CallFunction(o931, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o932 = { [nil] = {}, Start = function(L0)

end }
S_o933 = { [nil] = {}, Start = function(L0)

end }
S_o934 = { [nil] = {}, Start = function(L0)

end }
S_o935 = { [nil] = {}, Start = function(L0)

end }
S_o936 = { [nil] = {}, Start = function(L0)

end }
S_o937 = { [nil] = {}, Start = function(L0)

end }
S_o938 = { [nil] = {}, Start = function(L0)

end }
S_o939 = { [nil] = {}, Start = function(L0)

end }
S_o940 = { [nil] = {}, Start = function(L0)

end }
S_o941 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o941, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o941, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o941, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o941, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o941, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o941, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o946.SetStateValue(L1)
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
o946 = { [nil] = {}, Start = function()
  o946["Value"] = False
  o1779.StartCalculate()
  o1818.StartCalculate()
end, SetStateValue = function(L0)
  if not (o946.Value == L0) then
    o946["Value"] = L0
    o1779.ReCalculate()
    o1818.ReCalculate()
  end
end }
S_o947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o947, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o947, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o947, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o952.SetStateValue(L1)
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
o952 = { [nil] = {}, Start = function()
  o952["Value"] = False
  o1857.StartCalculate()
  o1896.StartCalculate()
end, SetStateValue = function(L0)
  if not (o952.Value == L0) then
    o952["Value"] = L0
    o1857.ReCalculate()
    o1896.ReCalculate()
  end
end }
S_o953 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o953, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o953, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o953, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o953, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o953, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o953, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o958.SetStateValue(L1)
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
o958 = { [nil] = {}, Start = function()
  o958["Value"] = False
  o1935.StartCalculate()
  o1974.StartCalculate()
  o2013.StartCalculate()
end, SetStateValue = function(L0)
  if not (o958.Value == L0) then
    o958["Value"] = L0
    o1935.ReCalculate()
    o1974.ReCalculate()
    o2013.ReCalculate()
  end
end }
S_o959 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o959, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o959, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o959, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o959, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o959, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o959, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o964.SetStateValue(L1)
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
o964 = { [nil] = {}, Start = function()
  o964["Value"] = False
  o2052.StartCalculate()
  o2091.StartCalculate()
  o2130.StartCalculate()
  o2169.StartCalculate()
end, SetStateValue = function(L0)
  if not (o964.Value == L0) then
    o964["Value"] = L0
    o2052.ReCalculate()
    o2091.ReCalculate()
    o2130.ReCalculate()
    o2169.ReCalculate()
  end
end }
S_o965 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o965, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o965, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o965, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o965, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o965, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o965, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o970.SetStateValue(L1)
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
o970 = { [nil] = {}, Start = function()
  o970["Value"] = False
  o2208.StartCalculate()
  o2247.StartCalculate()
end, SetStateValue = function(L0)
  if not (o970.Value == L0) then
    o970["Value"] = L0
    o2208.ReCalculate()
    o2247.ReCalculate()
  end
end }
S_o971 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o971, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o971, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o971, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o971, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o971, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o971, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o976.SetStateValue(L1)
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
o976 = { [nil] = {}, Start = function()
  o976["Value"] = False
  o2286.StartCalculate()
  o2325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o976.Value == L0) then
    o976["Value"] = L0
    o2286.ReCalculate()
    o2325.ReCalculate()
  end
end }
S_o977 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o977, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o977, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o977, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_bonham_c2_1", "", "", "", False, False, True)
  CallFunction(o977, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o977, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o977, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o982.SetStateValue(L1)
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
o982 = { [nil] = {}, Start = function()
  o982["Value"] = False
  o1330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o982.Value == L0) then
    o982["Value"] = L0
    o1330.ReCalculate()
  end
end }
S_o983 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o983, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o983, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o983, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_degrange_c2_1", "", "", "", False, False, True)
  CallFunction(o983, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o983, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o983, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o988.SetStateValue(L1)
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
o988 = { [nil] = {}, Start = function()
  o988["Value"] = False
  o1330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o988.Value == L0) then
    o988["Value"] = L0
    o1330.ReCalculate()
  end
end }
S_o989 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o989, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o989, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o989, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_pico_c2_1", "", "", "", False, False, True)
  CallFunction(o989, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o989, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o989, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o994.SetStateValue(L1)
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
o994 = { [nil] = {}, Start = function()
  o994["Value"] = False
  o1330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o994.Value == L0) then
    o994["Value"] = L0
    o1330.ReCalculate()
  end
end }
S_o995 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o995, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o995, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o995, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng_harper_c2_1", "", "", "", False, False, True)
  CallFunction(o995, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o995, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o995, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1000.SetStateValue(L1)
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
o1000 = { [nil] = {}, Start = function()
  o1000["Value"] = False
  o1330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1000.Value == L0) then
    o1000["Value"] = L0
    o1330.ReCalculate()
  end
end }
S_o1001 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1001, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1001, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1001, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1001, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1001, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1001, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1006.SetStateValue(L1)
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
o1006 = { [nil] = {}, Start = function()
  o1006["Value"] = False
  o1330.StartCalculate()
  o1331.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1006.Value == L0) then
    o1006["Value"] = L0
    o1330.ReCalculate()
    o1331.ReCalculate()
  end
end }
S_o1007 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1007, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1007, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1007, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1007, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1007, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1007, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1012.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1008.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1008 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1008.SetStateValue(o1008.GetCalculated())
end, StartCalculate = function()
  o1008["Value"] = o1008.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1008.Value == L0) then
    o1008["Value"] = L0
    CallFunction(o1007, "ProcesseStateChange")
  end
end }
o1012 = { [nil] = {}, Start = function()
  o1012["Value"] = False
  o1334.StartCalculate()
  o1349.StartCalculate()
  o2411.StartCalculate()
  o2507.StartCalculate()
  o2555.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1012.Value == L0) then
    o1012["Value"] = L0
    o1334.ReCalculate()
    o1349.ReCalculate()
    o2411.ReCalculate()
    o2507.ReCalculate()
    o2555.ReCalculate()
  end
end }
S_o1013 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1013, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1013, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1013, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1013, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1013, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1013, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1018.SetStateValue(L1)
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
o1018 = { [nil] = {}, Start = function()
  o1018["Value"] = False
  o1335.StartCalculate()
  o1348.StartCalculate()
  o3492.StartCalculate()
  o3540.StartCalculate()
  o3588.StartCalculate()
  o3636.StartCalculate()
  o3684.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1018.Value == L0) then
    o1018["Value"] = L0
    o1335.ReCalculate()
    o1348.ReCalculate()
    o3492.ReCalculate()
    o3540.ReCalculate()
    o3588.ReCalculate()
    o3636.ReCalculate()
    o3684.ReCalculate()
  end
end }
S_o1019 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1019, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1019, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1019, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1019, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1019, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1019, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1024.SetStateValue(L1)
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
o1024 = { [nil] = {}, Start = function()
  o1024["Value"] = False
  o3732.StartCalculate()
  o3780.StartCalculate()
  o4138.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1024.Value == L0) then
    o1024["Value"] = L0
    o3732.ReCalculate()
    o3780.ReCalculate()
    o4138.ReCalculate()
  end
end }
S_o1025 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1025, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1025, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1025, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1025, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1025, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1025, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1030.SetStateValue(L1)
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
o1030 = { [nil] = {}, Start = function()
  o1030["Value"] = False
  o1333.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1030.Value == L0) then
    o1030["Value"] = L0
    o1333.ReCalculate()
  end
end }
S_o1031 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1031, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1031, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1031, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1031, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1031, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1031, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1036.SetStateValue(L1)
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
o1036 = { [nil] = {}, Start = function()
  o1036["Value"] = False
  o1333.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1036.Value == L0) then
    o1036["Value"] = L0
    o1333.ReCalculate()
  end
end }
S_o1037 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1037, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1037, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1037, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityArea", "/Scenario_Dynamic/Navigation/CityArea" }, 10, 1, "Code4")
  else
    CallFunction(o1037, "Code4")
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
S_o1085 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1085, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1085, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1085, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityArea", "/Scenario_Dynamic/Navigation/CityArea" }, 10, 1, "Code4")
  else
    CallFunction(o1085, "Code4")
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
S_o1133 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1133, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1133, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1133, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityArea", "/Scenario_Dynamic/Navigation/CityArea" }, 10, 1, "Code4")
  else
    CallFunction(o1133, "Code4")
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
S_o1181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1181, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1181, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityArea", "/Scenario_Dynamic/Navigation/CityArea" }, 10, 1, "Code4")
  else
    CallFunction(o1181, "Code4")
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
S_o1229 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1229, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1229, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1229, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityArea", "/Scenario_Dynamic/Navigation/CityArea" }, 10, 1, "Code4")
  else
    CallFunction(o1229, "Code4")
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
S_o1277 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1277, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1277, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1277, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityArea", "/Scenario_Dynamic/Navigation/CityArea" }, 10, 1, "Code4")
  else
    CallFunction(o1277, "Code4")
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
S_o1325 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o1325, "Code10")
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
o1330 = { [nil] = {}, GetCalculated = function()
  if not (o982.Value ~= True) then
    if not (o988.Value ~= True) then
      if not (o994.Value ~= True) then
        if not (o1000.Value ~= True) then
          if not (o1006.Value ~= True) then
            if not (o3735.Value ~= True) then
              if not (o3783.Value ~= True) then
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
end, ReCalculate = function()
  o1330.SetStateValue(o1330.GetCalculated())
end, StartCalculate = function()
  o1330["Value"] = o1330.GetCalculated()
  o4139.StartCalculate()
  o4143.StartCalculate()
  o4150.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1330.Value == L0) then
    DelayedFunction(3, o1330, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1330.Value == L0) then
    o1330["Value"] = L0
    o4139.ReCalculate()
    o4143.ReCalculate()
    o4150.ReCalculate()
  end
end }
o1331 = { [nil] = {}, GetCalculated = function()
  if not (o1337.Value ~= False) then
    if not (o1338.Value ~= False) then
      if not (o1339.Value ~= False) then
        if not (o1340.Value ~= False) then
          if not (o1006.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1331.SetStateValue(o1331.GetCalculated())
end, StartCalculate = function()
  o1331["Value"] = o1331.GetCalculated()
  o1332.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1325.Node, o1325.Node, 1236)
end, SetStateValue = function(L0)
  if not (o1331.Value == L0) then
    o1331["Value"] = L0
    o1332.ReCalculate()
    if not (L0 ~= 1) then
      o1331.ChangeTo1()
    end
  end
end }
o1332 = { [nil] = {}, GetCalculated = function()
  if not (o1337.Value ~= True) then
    if not (o1338.Value ~= True) then
      if not (o1339.Value ~= True) then
        if not (o1340.Value ~= True) then
          if not (o1331.Value ~= False) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1332.SetStateValue(o1332.GetCalculated())
end, StartCalculate = function()
  o1332["Value"] = o1332.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1483.Node, o1325.Node, 1235)
end, SetStateValue = function(L0)
  if not (o1332.Value == L0) then
    o1332["Value"] = L0
    if not (L0 ~= 1) then
      o1332.ChangeTo1()
    end
  end
end }
o1333 = { [nil] = {}, GetCalculated = function()
  if not (o1030.Value == True) then
    if not (o1036.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1333.SetStateValue(o1333.GetCalculated())
end, StartCalculate = function()
  o1333["Value"] = o1333.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1430.Node, o1325.Node, 1152)
  SendRadioMessageTake(o1379.Node, o1325.Node, 1151)
  SendRadioMessageTake(o1483.Node, o1325.Node, 113)
  SendRadioMessageTake(o1534.Node, o1325.Node, 114)
end, SetStateValue = function(L0)
  if not (o1333.Value == L0) then
    o1333["Value"] = L0
    if not (L0 ~= 1) then
      o1333.ChangeTo1()
    end
  end
end }
o1334 = { [nil] = {}, GetCalculated = function()
  if not (o1012.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1334.SetStateValue(o1334.GetCalculated())
end, StartCalculate = function()
  o1334["Value"] = o1334.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1325.Node, o1325.Node, 119)
  SendRadioMessageTake(o1325.Node, o1325.Node, 120)
  SED_SetTaskTextKey(1290, -1, -1)
end, SetStateValue = function(L0)
  if not (o1334.Value == L0) then
    o1334["Value"] = L0
    if not (L0 ~= 1) then
      o1334.ChangeTo1()
    end
  end
end }
o1335 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1335.SetStateValue(o1335.GetCalculated())
end, StartCalculate = function()
  o1335["Value"] = o1335.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3475.Node)
  SendRadioMessageTake(o1325.Node, o1325.Node, 1237)
  SED_SetTaskTextKey(1293, -1, -1)
end, SetStateValue = function(L0)
  if not (o1335.Value == L0) then
    o1335["Value"] = L0
    if not (L0 ~= 1) then
      o1335.ChangeTo1()
    end
  end
end }
o1336 = { [nil] = {}, GetCalculated = function()
  if not (o1386.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1336.SetStateValue(o1336.GetCalculated())
end, StartCalculate = function()
  o1336["Value"] = o1336.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3480.Node)
  SED_SetTaskTextKey(1289, -1, -1)
end, SetStateValue = function(L0)
  if not (o1336.Value == L0) then
    o1336["Value"] = L0
    if not (L0 ~= 1) then
      o1336.ChangeTo1()
    end
  end
end }
o1337 = { [nil] = {}, Start = function()
  o1337["Value"] = False
  o1331.StartCalculate()
  o1332.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1337.Value == L0) then
    o1337["Value"] = L0
    o1331.ReCalculate()
    o1332.ReCalculate()
  end
end }
o1338 = { [nil] = {}, Start = function()
  o1338["Value"] = False
  o1331.StartCalculate()
  o1332.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1338.Value == L0) then
    o1338["Value"] = L0
    o1331.ReCalculate()
    o1332.ReCalculate()
  end
end }
o1339 = { [nil] = {}, Start = function()
  o1339["Value"] = False
  o1331.StartCalculate()
  o1332.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1339.Value == L0) then
    o1339["Value"] = L0
    o1331.ReCalculate()
    o1332.ReCalculate()
  end
end }
o1340 = { [nil] = {}, Start = function()
  o1340["Value"] = False
  o1331.StartCalculate()
  o1332.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1340.Value == L0) then
    o1340["Value"] = L0
    o1331.ReCalculate()
    o1332.ReCalculate()
  end
end }
o1341 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1341.SetStateValue(o1341.GetCalculated())
end, StartCalculate = function()
  o1341["Value"] = o1341.GetCalculated()
  o1351.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1325.Node, o1325.Node, 1238)
end, SetStateValue = function(L0)
  if not (o1341.Value == L0) then
    DelayedFunction(3, o1341, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1341.Value == L0) then
    o1341["Value"] = L0
    o1351.ReCalculate()
    if not (L0 ~= 1) then
      o1341.ChangeTo1()
    end
  end
end }
o1342 = { [nil] = {}, GetCalculated = function()
  if not (o3831.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3879.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3927.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3975.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4023.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4071.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1342.SetStateValue(o1342.GetCalculated())
end, StartCalculate = function()
  o1342["Value"] = o1342.GetCalculated()
  o1341.StartCalculate()
  o1586.StartCalculate()
  o1634.StartCalculate()
  o1682.StartCalculate()
  o1730.StartCalculate()
  o3827.StartCalculate()
  o3875.StartCalculate()
  o3923.StartCalculate()
  o3971.StartCalculate()
  o4019.StartCalculate()
  o4067.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1342.Value == L0) then
    o1342["Value"] = L0
    o1341.ReCalculate()
    o1586.ReCalculate()
    o1634.ReCalculate()
    o1682.ReCalculate()
    o1730.ReCalculate()
    o3827.ReCalculate()
    o3875.ReCalculate()
    o3923.ReCalculate()
    o3971.ReCalculate()
    o4019.ReCalculate()
    o4067.ReCalculate()
  end
end }
o1343 = { [nil] = {}, GetCalculated = function()
  if not (o3483.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1343.SetStateValue(o1343.GetCalculated())
end, StartCalculate = function()
  o1343["Value"] = o1343.GetCalculated()
  o4135.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3485.Node)
end, SetStateValue = function(L0)
  if not (o1343.Value == L0) then
    o1343["Value"] = L0
    o4135.ReCalculate()
    if not (L0 ~= 1) then
      o1343.ChangeTo1()
    end
  end
end }
o1344 = { [nil] = {}, GetCalculated = function()
  if not (o3488.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1344.SetStateValue(o1344.GetCalculated())
end, StartCalculate = function()
  o1344["Value"] = o1344.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1483.Node, o1325.Node, 112)
  Game_SetWayPoint(GetGameNode(), o3465.Node)
end, SetStateValue = function(L0)
  if not (o1344.Value == L0) then
    o1344["Value"] = L0
    if not (L0 ~= 1) then
      o1344.ChangeTo1()
    end
  end
end }
o1345 = { [nil] = {}, GetCalculated = function()
  if not (o3488.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1345.SetStateValue(o1345.GetCalculated())
end, StartCalculate = function()
  o1345["Value"] = o1345.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("bla")
  CallFunction(o1379, "Code7")
  CallFunction(o1430, "Code10")
  CallFunction(o1483, "Code6")
  CallFunction(o1534, "Code7")
end, SetStateValue = function(L0)
  if not (o1345.Value == L0) then
    DelayedFunction(10, o1345, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1345.Value == L0) then
    o1345["Value"] = L0
    if not (L0 ~= 1) then
      o1345.ChangeTo1()
    end
  end
end }
o1346 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1346.SetStateValue(o1346.GetCalculated())
end, StartCalculate = function()
  o1346["Value"] = o1346.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4114.Node)
end, SetStateValue = function(L0)
  if not (o1346.Value == L0) then
    o1346["Value"] = L0
    if not (L0 ~= 1) then
      o1346.ChangeTo1()
    end
  end
end }
o1347 = { [nil] = {}, GetCalculated = function()
  if not (o4117.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1347.SetStateValue(o1347.GetCalculated())
end, StartCalculate = function()
  o1347["Value"] = o1347.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o1347.Value == L0) then
    o1347["Value"] = L0
    if not (L0 ~= 1) then
      o1347.ChangeTo1()
    end
  end
end }
o1348 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1348.SetStateValue(o1348.GetCalculated())
end, StartCalculate = function()
  o1348["Value"] = o1348.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("SetWingsLeaveBigFight = True")
  CallFunction(o1379, "Code12")
  CallFunction(o1430, "Code15")
  CallFunction(o1483, "Code11")
  CallFunction(o1534, "Code12")
end, SetStateValue = function(L0)
  if not (o1348.Value == L0) then
    DelayedFunction(5, o1348, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1348.Value == L0) then
    o1348["Value"] = L0
    if not (L0 ~= 1) then
      o1348.ChangeTo1()
    end
  end
end }
o1349 = { [nil] = {}, GetCalculated = function()
  if not (o1012.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1349.SetStateValue(o1349.GetCalculated())
end, StartCalculate = function()
  o1349["Value"] = o1349.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("SetNav2 = True")
  Game_SetWayPoint(GetGameNode(), o3470.Node)
  SED_SetTaskTextKey(1292, -1, -1)
end, SetStateValue = function(L0)
  if not (o1349.Value == L0) then
    DelayedFunction(37, o1349, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1349.Value == L0) then
    o1349["Value"] = L0
    if not (L0 ~= 1) then
      o1349.ChangeTo1()
    end
  end
end }
o1350 = { [nil] = {}, Start = function()
  o1350["Value"] = False
  o1008.StartCalculate()
  o2363.StartCalculate()
  o2459.StartCalculate()
  o2603.StartCalculate()
  o2651.StartCalculate()
  o2699.StartCalculate()
  o2747.StartCalculate()
  o2795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1350.Value == L0) then
    o1350["Value"] = L0
    o1008.ReCalculate()
    o2363.ReCalculate()
    o2459.ReCalculate()
    o2603.ReCalculate()
    o2651.ReCalculate()
    o2699.ReCalculate()
    o2747.ReCalculate()
    o2795.ReCalculate()
  end
end }
o1351 = { [nil] = {}, GetCalculated = function()
  if not (o1341.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1351.SetStateValue(o1351.GetCalculated())
end, StartCalculate = function()
  o1351["Value"] = o1351.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1351.Value == L0) then
    o1351["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1379 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1379, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1379, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1379, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1379, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1379, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1379, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PicoPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o1379, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  o1339.SetStateValue(True)
  CallFunction(o1379, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o1379, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1379, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "Code12")
  else
    CallFunction(o1379, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  CallFunction(o1379, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code14")
  else
    CallFunction(o1379, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Born = function(L0, L1)
  o1386.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o1388.SetStateValue(L1)
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
o1386 = { [nil] = {}, Start = function()
  o1386["Value"] = False
  o1336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1386.Value == L0) then
    o1386["Value"] = L0
    o1336.ReCalculate()
  end
end }
o1388 = { [nil] = {}, Start = function()
  o1388["Value"] = False
  o1587.StartCalculate()
  o1635.StartCalculate()
  o1683.StartCalculate()
  o1731.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1388.Value == L0) then
    o1388["Value"] = L0
    o1587.ReCalculate()
    o1635.ReCalculate()
    o1683.ReCalculate()
    o1731.ReCalculate()
  end
end }
S_o1430 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1430, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1430, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1430, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1430, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1430, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1430, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HarperPath_2", 1, 1 } }("Code8")
  else
    CallFunction(o1430, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o1430, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1430, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HarperPath_1", 1, 1 } }("Code11")
  else
    CallFunction(o1430, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  o1337.SetStateValue(True)
  CallFunction(o1430, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "E", "", "", "", 1, "Code13")
  else
    CallFunction(o1430, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  StopAllActiveBehaviours(L0)
  CallFunction(o1430, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "Code15")
  else
    CallFunction(o1430, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  StopAllActiveBehaviours(L0)
  CallFunction(o1430, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code17")
  else
    CallFunction(o1430, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1433.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1433 = { [nil] = {}, GetCalculated = function()
  if not (o3483.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1433.SetStateValue(o1433.GetCalculated())
end, StartCalculate = function()
  o1433["Value"] = o1433.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1433.Value == L0) then
    o1433["Value"] = L0
    CallFunction(o1430, "ProcesseStateChange")
  end
end }
S_o1483 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1483, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1483, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1483, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1483, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1483, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1483, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeGrangePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o1483, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  o1340.SetStateValue(True)
  CallFunction(o1483, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o1483, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  StopAllActiveBehaviours(L0)
  CallFunction(o1483, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o1483, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  CallFunction(o1483, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o1483, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
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
S_o1534 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1534, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1534, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1534, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1534, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1534, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonhamPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o1534, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  o1338.SetStateValue(True)
  CallFunction(o1534, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o1534, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1534, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "Code12")
  else
    CallFunction(o1534, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  CallFunction(o1534, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code14")
  else
    CallFunction(o1534, "Code14")
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
S_o1585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1585, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1585, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1585, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1585, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1585, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1585, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1587.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1586.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1586 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1586.SetStateValue(o1586.GetCalculated())
end, StartCalculate = function()
  o1586["Value"] = o1586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1586.Value == L0) then
    DelayedFunction(6, o1586, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1586.Value == L0) then
    o1586["Value"] = L0
    CallFunction(o1585, "ProcesseStateChange")
  end
end }
o1587 = { [nil] = {}, GetCalculated = function()
  if not (o1388.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1587.SetStateValue(o1587.GetCalculated())
end, StartCalculate = function()
  o1587["Value"] = o1587.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1587.Value == L0) then
    DelayedFunction(1, o1587, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1587.Value == L0) then
    o1587["Value"] = L0
    CallFunction(o1585, "ProcesseStateChange")
  end
end }
S_o1633 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1633, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1633, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1633, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1633, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1633, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1633, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1635.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1634.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1634 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1634.SetStateValue(o1634.GetCalculated())
end, StartCalculate = function()
  o1634["Value"] = o1634.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1634.Value == L0) then
    DelayedFunction(7, o1634, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1634.Value == L0) then
    o1634["Value"] = L0
    CallFunction(o1633, "ProcesseStateChange")
  end
end }
o1635 = { [nil] = {}, GetCalculated = function()
  if not (o1388.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1635.SetStateValue(o1635.GetCalculated())
end, StartCalculate = function()
  o1635["Value"] = o1635.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1635.Value == L0) then
    DelayedFunction(1, o1635, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1635.Value == L0) then
    o1635["Value"] = L0
    CallFunction(o1633, "ProcesseStateChange")
  end
end }
S_o1681 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1681, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1681, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1681, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1681, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1681, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1681, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1683.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1682.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1682 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1682.SetStateValue(o1682.GetCalculated())
end, StartCalculate = function()
  o1682["Value"] = o1682.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1682.Value == L0) then
    DelayedFunction(5, o1682, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1682.Value == L0) then
    o1682["Value"] = L0
    CallFunction(o1681, "ProcesseStateChange")
  end
end }
o1683 = { [nil] = {}, GetCalculated = function()
  if not (o1388.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1683.SetStateValue(o1683.GetCalculated())
end, StartCalculate = function()
  o1683["Value"] = o1683.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1683.Value == L0) then
    DelayedFunction(1, o1683, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1683.Value == L0) then
    o1683["Value"] = L0
    CallFunction(o1681, "ProcesseStateChange")
  end
end }
S_o1729 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1729, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1729, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1729, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o1729, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1729, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o1729, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1731.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1730.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1730 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1730.SetStateValue(o1730.GetCalculated())
end, StartCalculate = function()
  o1730["Value"] = o1730.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1730.Value == L0) then
    DelayedFunction(6, o1730, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1730.Value == L0) then
    o1730["Value"] = L0
    CallFunction(o1729, "ProcesseStateChange")
  end
end }
o1731 = { [nil] = {}, GetCalculated = function()
  if not (o1388.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1731.SetStateValue(o1731.GetCalculated())
end, StartCalculate = function()
  o1731["Value"] = o1731.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1731.Value == L0) then
    DelayedFunction(1, o1731, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1731.Value == L0) then
    o1731["Value"] = L0
    CallFunction(o1729, "ProcesseStateChange")
  end
end }
S_o1777 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1777, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1777, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o1777, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_1", "/Scenario_Dynamic/Navigation/BackCanyon1Area_1" }, 10, "Code4")
  else
    CallFunction(o1777, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1779.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1779 = { [nil] = {}, GetCalculated = function()
  if not (o946.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1779.SetStateValue(o1779.GetCalculated())
end, StartCalculate = function()
  o1779["Value"] = o1779.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1779.Value == L0) then
    o1779["Value"] = L0
    CallFunction(o1777, "ProcesseStateChange")
  end
end }
S_o1816 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1816, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1816, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o1816, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_1", "/Scenario_Dynamic/Navigation/BackCanyon1Area_1" }, 10, "Code4")
  else
    CallFunction(o1816, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
  if not (o946.Value ~= True) then
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
    DelayedFunction(1.358, o1818, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1818.Value == L0) then
    o1818["Value"] = L0
    CallFunction(o1816, "ProcesseStateChange")
  end
end }
S_o1855 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1855, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1855, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o1855, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_2", "/Scenario_Dynamic/Navigation/Canyon1_Area_2" }, 10, "Code4")
  else
    CallFunction(o1855, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1857.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1857 = { [nil] = {}, GetCalculated = function()
  if not (o952.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1857.SetStateValue(o1857.GetCalculated())
end, StartCalculate = function()
  o1857["Value"] = o1857.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1857.Value == L0) then
    DelayedFunction(1.358, o1857, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1857.Value == L0) then
    o1857["Value"] = L0
    CallFunction(o1855, "ProcesseStateChange")
  end
end }
S_o1894 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1894, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1894, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o1894, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_2", "/Scenario_Dynamic/Navigation/Canyon1_Area_2" }, 10, "Code4")
  else
    CallFunction(o1894, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1896.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1896 = { [nil] = {}, GetCalculated = function()
  if not (o952.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1896.SetStateValue(o1896.GetCalculated())
end, StartCalculate = function()
  o1896["Value"] = o1896.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1896.Value == L0) then
    o1896["Value"] = L0
    CallFunction(o1894, "ProcesseStateChange")
  end
end }
S_o1933 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1933, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1933, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o1933, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_3", "/Scenario_Dynamic/Navigation/Canyon1_Area_3" }, 10, "Code4")
  else
    CallFunction(o1933, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1935.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1935 = { [nil] = {}, GetCalculated = function()
  if not (o958.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1935.SetStateValue(o1935.GetCalculated())
end, StartCalculate = function()
  o1935["Value"] = o1935.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1935.Value == L0) then
    o1935["Value"] = L0
    CallFunction(o1933, "ProcesseStateChange")
  end
end }
S_o1972 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1972, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1972, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o1972, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_4", "/Scenario_Dynamic/Navigation/Canyon1_Area_4" }, 10, "Code4")
  else
    CallFunction(o1972, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1974.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1974 = { [nil] = {}, GetCalculated = function()
  if not (o958.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1974.SetStateValue(o1974.GetCalculated())
end, StartCalculate = function()
  o1974["Value"] = o1974.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1974.Value == L0) then
    DelayedFunction(2, o1974, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1974.Value == L0) then
    o1974["Value"] = L0
    CallFunction(o1972, "ProcesseStateChange")
  end
end }
S_o2011 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2011, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2011, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2011, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon1_Area_5", "/Scenario_Dynamic/Navigation/Canyon1_Area_5" }, 10, "Code4")
  else
    CallFunction(o2011, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2013.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2013 = { [nil] = {}, GetCalculated = function()
  if not (o958.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2013.SetStateValue(o2013.GetCalculated())
end, StartCalculate = function()
  o2013["Value"] = o2013.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2013.Value == L0) then
    DelayedFunction(7, o2013, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2013.Value == L0) then
    o2013["Value"] = L0
    CallFunction(o2011, "ProcesseStateChange")
  end
end }
S_o2050 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2050, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2050, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2050, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_1", "/Scenario_Dynamic/Navigation/Canyon2_Area_1" }, 10, "Code4")
  else
    CallFunction(o2050, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2052.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2052 = { [nil] = {}, GetCalculated = function()
  if not (o964.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2052.SetStateValue(o2052.GetCalculated())
end, StartCalculate = function()
  o2052["Value"] = o2052.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2052.Value == L0) then
    o2052["Value"] = L0
    CallFunction(o2050, "ProcesseStateChange")
  end
end }
S_o2089 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2089, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2089, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2089, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_1", "/Scenario_Dynamic/Navigation/Canyon2_Area_1" }, 10, "Code4")
  else
    CallFunction(o2089, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2091.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2091 = { [nil] = {}, GetCalculated = function()
  if not (o964.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2091.SetStateValue(o2091.GetCalculated())
end, StartCalculate = function()
  o2091["Value"] = o2091.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2091.Value == L0) then
    DelayedFunction(1.325, o2091, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2091.Value == L0) then
    o2091["Value"] = L0
    CallFunction(o2089, "ProcesseStateChange")
  end
end }
S_o2128 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2128, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2128, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2128, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_2", "/Scenario_Dynamic/Navigation/Canyon2_Area_2" }, 10, "Code4")
  else
    CallFunction(o2128, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2130.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2130 = { [nil] = {}, GetCalculated = function()
  if not (o964.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2130.SetStateValue(o2130.GetCalculated())
end, StartCalculate = function()
  o2130["Value"] = o2130.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2130.Value == L0) then
    DelayedFunction(2.5, o2130, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2130.Value == L0) then
    o2130["Value"] = L0
    CallFunction(o2128, "ProcesseStateChange")
  end
end }
S_o2167 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2167, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2167, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2167, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_2", "/Scenario_Dynamic/Navigation/Canyon2_Area_2" }, 10, "Code4")
  else
    CallFunction(o2167, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2169.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2169 = { [nil] = {}, GetCalculated = function()
  if not (o964.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2169.SetStateValue(o2169.GetCalculated())
end, StartCalculate = function()
  o2169["Value"] = o2169.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2169.Value == L0) then
    DelayedFunction(3, o2169, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2169.Value == L0) then
    o2169["Value"] = L0
    CallFunction(o2167, "ProcesseStateChange")
  end
end }
S_o2206 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2206, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2206, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2206, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_3", "/Scenario_Dynamic/Navigation/Canyon2_Area_3" }, 10, "Code4")
  else
    CallFunction(o2206, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2208.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2208 = { [nil] = {}, GetCalculated = function()
  if not (o970.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2208.SetStateValue(o2208.GetCalculated())
end, StartCalculate = function()
  o2208["Value"] = o2208.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2208.Value == L0) then
    o2208["Value"] = L0
    CallFunction(o2206, "ProcesseStateChange")
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
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2245, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_4", "/Scenario_Dynamic/Navigation/Canyon2_Area_4" }, 10, "Code4")
  else
    CallFunction(o2245, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2247.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2247 = { [nil] = {}, GetCalculated = function()
  if not (o970.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2247.SetStateValue(o2247.GetCalculated())
end, StartCalculate = function()
  o2247["Value"] = o2247.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2247.Value == L0) then
    DelayedFunction(2, o2247, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2247.Value == L0) then
    o2247["Value"] = L0
    CallFunction(o2245, "ProcesseStateChange")
  end
end }
S_o2284 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2284, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2284, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2284, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_5", "/Scenario_Dynamic/Navigation/Canyon2_Area_5" }, 10, "Code4")
  else
    CallFunction(o2284, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2286.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2286 = { [nil] = {}, GetCalculated = function()
  if not (o976.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2286.SetStateValue(o2286.GetCalculated())
end, StartCalculate = function()
  o2286["Value"] = o2286.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2286.Value == L0) then
    o2286["Value"] = L0
    CallFunction(o2284, "ProcesseStateChange")
  end
end }
S_o2323 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2323, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2323, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o2323, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Canyon2_Area_5", "/Scenario_Dynamic/Navigation/Canyon2_Area_5" }, 10, "Code4")
  else
    CallFunction(o2323, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2325.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2325 = { [nil] = {}, GetCalculated = function()
  if not (o976.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2325.SetStateValue(o2325.GetCalculated())
end, StartCalculate = function()
  o2325["Value"] = o2325.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2325.Value == L0) then
    DelayedFunction(1, o2325, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2325.Value == L0) then
    o2325["Value"] = L0
    CallFunction(o2323, "ProcesseStateChange")
  end
end }
S_o2362 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2362, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2362, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2362, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2362, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2363.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2363 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2363.SetStateValue(o2363.GetCalculated())
end, StartCalculate = function()
  o2363["Value"] = o2363.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2363.Value == L0) then
    o2363["Value"] = L0
    CallFunction(o2362, "ProcesseStateChange")
  end
end }
S_o2409 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2409, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2409, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2409, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2409, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2411.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2411 = { [nil] = {}, GetCalculated = function()
  if not (o1012.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2411.SetStateValue(o2411.GetCalculated())
end, StartCalculate = function()
  o2411["Value"] = o2411.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2411.Value == L0) then
    o2411["Value"] = L0
    CallFunction(o2409, "ProcesseStateChange")
  end
end }
S_o2457 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2457, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2457, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2457, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2457, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2459.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2459 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
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
    o2459["Value"] = L0
    CallFunction(o2457, "ProcesseStateChange")
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2505, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
o2507 = { [nil] = {}, GetCalculated = function()
  if not (o1012.Value ~= True) then
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
S_o2553 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2553, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2553, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2553, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "/Scenario_Dynamic/Navigation/PunishCrawlerArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2553, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2555.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2555 = { [nil] = {}, GetCalculated = function()
  if not (o1012.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2555.SetStateValue(o2555.GetCalculated())
end, StartCalculate = function()
  o2555["Value"] = o2555.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2555.Value == L0) then
    o2555["Value"] = L0
    CallFunction(o2553, "ProcesseStateChange")
  end
end }
S_o2601 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2601, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2601, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2601, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_1", "Code4")
  else
    CallFunction(o2601, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2603.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2603 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2603.SetStateValue(o2603.GetCalculated())
end, StartCalculate = function()
  o2603["Value"] = o2603.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2603.Value == L0) then
    o2603["Value"] = L0
    CallFunction(o2601, "ProcesseStateChange")
  end
end }
S_o2649 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2649, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2649, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2649, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_2", "Code4")
  else
    CallFunction(o2649, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2651.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2651 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2651.SetStateValue(o2651.GetCalculated())
end, StartCalculate = function()
  o2651["Value"] = o2651.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2651.Value == L0) then
    o2651["Value"] = L0
    CallFunction(o2649, "ProcesseStateChange")
  end
end }
S_o2697 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2697, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2697, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2697, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_3", "Code4")
  else
    CallFunction(o2697, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2699.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2699 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
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
    CallFunction(o2697, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2745, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_4", "Code4")
  else
    CallFunction(o2745, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
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
  if not (o1350.Value ~= True) then
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
    o2747["Value"] = L0
    CallFunction(o2745, "ProcesseStateChange")
  end
end }
S_o2793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2793, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2793, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2793, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaPatrolArea_1", "/Scenario_Dynamic/Navigation/ArmadaAttackArea_1", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_5", "Code4")
  else
    CallFunction(o2793, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2795.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2795 = { [nil] = {}, GetCalculated = function()
  if not (o1350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2795.SetStateValue(o2795.GetCalculated())
end, StartCalculate = function()
  o2795["Value"] = o2795.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2795.Value == L0) then
    o2795["Value"] = L0
    CallFunction(o2793, "ProcesseStateChange")
  end
end }
S_o2841 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2841, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2841, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2841, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_1", "/Scenario_Dynamic/Navigation/BackCanyon1Area_1", "/Scenario_Dynamic/Navigation/BackCanyon1Area_1", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o2841, "Code4")
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
S_o2880 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2880, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2880, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2880, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_1", "/Scenario_Dynamic/Navigation/BackCanyon1Area_1", "/Scenario_Dynamic/Navigation/BackCanyon1Area_1", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o2880, "Code4")
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
S_o2919 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2919, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2919, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2919, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_2", "/Scenario_Dynamic/Navigation/BackCanyon1Area_2", "/Scenario_Dynamic/Navigation/BackCanyon1Area_2", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o2919, "Code4")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2958, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_2", "/Scenario_Dynamic/Navigation/BackCanyon1Area_2", "/Scenario_Dynamic/Navigation/BackCanyon1Area_2", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o2958, "Code4")
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
S_o2997 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2997, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2997, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2997, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o2997, "Code4")
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
S_o3036 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3036, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3036, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3036, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3036, "Code4")
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
S_o3075 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3075, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3075, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3075, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_4", "/Scenario_Dynamic/Navigation/BackCanyon1Area_4", "/Scenario_Dynamic/Navigation/BackCanyon1Area_4", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3075, "Code4")
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
S_o3114 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3114, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3114, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3114, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3114, "Code4")
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
S_o3153 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3153, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3153, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3153, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3153, "Code4")
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
S_o3192 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3192, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3192, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3192, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_4", "/Scenario_Dynamic/Navigation/BackCanyon1Area_4", "/Scenario_Dynamic/Navigation/BackCanyon1Area_4", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3192, "Code4")
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
S_o3231 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3231, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3231, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3231, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3231, "Code4")
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
S_o3270 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3270, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3270, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3270, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3270, "Code4")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3309, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3309, "Code4")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3348, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3348, "Code4")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3387, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "/Scenario_Dynamic/Navigation/BackCanyon1Area_3", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3387, "Code4")
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
S_o3426 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3426, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3426, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3426, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "/Scenario_Dynamic/Navigation/BackCanyon1Area_5", "E", "", "", "", 100, "Code4")
  else
    CallFunction(o3426, "Code4")
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
S_o3465 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o3465, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3470 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o3470, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3475 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o3475, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3478.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3478 = { [nil] = {}, Start = function()
  o3478["Value"] = False
  o1346.StartCalculate()
  o3828.StartCalculate()
  o3876.StartCalculate()
  o3924.StartCalculate()
  o3972.StartCalculate()
  o4020.StartCalculate()
  o4068.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3478.Value == L0) then
    o3478["Value"] = L0
    o1346.ReCalculate()
    o3828.ReCalculate()
    o3876.ReCalculate()
    o3924.ReCalculate()
    o3972.ReCalculate()
    o4020.ReCalculate()
    o4068.ReCalculate()
  end
end }
S_o3480 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3480, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3483.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3483 = { [nil] = {}, Start = function()
  o3483["Value"] = False
  o1343.StartCalculate()
  o1433.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3483.Value == L0) then
    o3483["Value"] = L0
    o1343.ReCalculate()
    o1433.ReCalculate()
  end
end }
S_o3485 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3485, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3488.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3488 = { [nil] = {}, Start = function()
  o3488["Value"] = False
  o1344.StartCalculate()
  o1345.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3488.Value == L0) then
    o3488["Value"] = L0
    o1344.ReCalculate()
    o1345.ReCalculate()
  end
end }
S_o3490 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3490, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3490, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3490, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3490, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3492.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3492 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3492.SetStateValue(o3492.GetCalculated())
end, StartCalculate = function()
  o3492["Value"] = o3492.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3492.Value == L0) then
    o3492["Value"] = L0
    CallFunction(o3490, "ProcesseStateChange")
  end
end }
S_o3538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3538, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3538, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3538, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3538, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3540.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3540 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3540.SetStateValue(o3540.GetCalculated())
end, StartCalculate = function()
  o3540["Value"] = o3540.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3540.Value == L0) then
    DelayedFunction(1, o3540, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3540.Value == L0) then
    o3540["Value"] = L0
    CallFunction(o3538, "ProcesseStateChange")
  end
end }
S_o3586 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3586, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3586, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3586, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3586, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3588.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3588 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3588.SetStateValue(o3588.GetCalculated())
end, StartCalculate = function()
  o3588["Value"] = o3588.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3588.Value == L0) then
    o3588["Value"] = L0
    CallFunction(o3586, "ProcesseStateChange")
  end
end }
S_o3634 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3634, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3634, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3634, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3634, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3636.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3636 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3636.SetStateValue(o3636.GetCalculated())
end, StartCalculate = function()
  o3636["Value"] = o3636.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3636.Value == L0) then
    DelayedFunction(0.5, o3636, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3636.Value == L0) then
    o3636["Value"] = L0
    CallFunction(o3634, "ProcesseStateChange")
  end
end }
S_o3682 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3682, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3682, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3682, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "/Scenario_Dynamic/Navigation/BeginBackCanyon1Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3682, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3684.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3684 = { [nil] = {}, GetCalculated = function()
  if not (o1018.Value ~= True) then
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
    DelayedFunction(1.5, o3684, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3684.Value == L0) then
    o3684["Value"] = L0
    CallFunction(o3682, "ProcesseStateChange")
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3730, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3735.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
o3732 = { [nil] = {}, GetCalculated = function()
  if not (o1024.Value ~= True) then
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
    DelayedFunction(1.5, o3732, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3732.Value == L0) then
    o3732["Value"] = L0
    CallFunction(o3730, "ProcesseStateChange")
  end
end }
o3735 = { [nil] = {}, Start = function()
  o3735["Value"] = False
  o1330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3735.Value == L0) then
    o3735["Value"] = L0
    o1330.ReCalculate()
  end
end }
S_o3778 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3778, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3778, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3778, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "/Scenario_Dynamic/Navigation/Canyon1and2_Area_End", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3778, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3783.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3780.Value ~= True) then
        L1 = 0
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
  if not (o1024.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3780.SetStateValue(o3780.GetCalculated())
end, StartCalculate = function()
  o3780["Value"] = o3780.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3780.Value == L0) then
    DelayedFunction(1.5, o3780, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3780.Value == L0) then
    o3780["Value"] = L0
    CallFunction(o3778, "ProcesseStateChange")
  end
end }
o3783 = { [nil] = {}, Start = function()
  o3783["Value"] = False
  o1330.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3783.Value == L0) then
    o3783["Value"] = L0
    o1330.ReCalculate()
  end
end }
S_o3826 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3826, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3826, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3826, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3826, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3826, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o3831.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3828.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3827.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3827 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3827.SetStateValue(o3827.GetCalculated())
end, StartCalculate = function()
  o3827["Value"] = o3827.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3827.Value == L0) then
    o3827["Value"] = L0
    CallFunction(o3826, "ProcesseStateChange")
  end
end }
o3828 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3828.SetStateValue(o3828.GetCalculated())
end, StartCalculate = function()
  o3828["Value"] = o3828.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3828.Value == L0) then
    DelayedFunction(1, o3828, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3828.Value == L0) then
    o3828["Value"] = L0
    CallFunction(o3826, "ProcesseStateChange")
  end
end }
o3831 = { [nil] = {}, Start = function()
  o3831["Value"] = False
  o1342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3831.Value == L0) then
    o3831["Value"] = L0
    o1342.ReCalculate()
  end
end }
S_o3874 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3874, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3874, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3874, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3874, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3874, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o3879.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3876.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3875.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3875 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3875.SetStateValue(o3875.GetCalculated())
end, StartCalculate = function()
  o3875["Value"] = o3875.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3875.Value == L0) then
    o3875["Value"] = L0
    CallFunction(o3874, "ProcesseStateChange")
  end
end }
o3876 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3876.SetStateValue(o3876.GetCalculated())
end, StartCalculate = function()
  o3876["Value"] = o3876.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3876.Value == L0) then
    DelayedFunction(1, o3876, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3876.Value == L0) then
    o3876["Value"] = L0
    CallFunction(o3874, "ProcesseStateChange")
  end
end }
o3879 = { [nil] = {}, Start = function()
  o3879["Value"] = False
  o1342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3879.Value == L0) then
    o3879["Value"] = L0
    o1342.ReCalculate()
  end
end }
S_o3922 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3922, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3922, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3922, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3922, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3922, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o3927.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3924.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3923.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3923 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3923.SetStateValue(o3923.GetCalculated())
end, StartCalculate = function()
  o3923["Value"] = o3923.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3923.Value == L0) then
    o3923["Value"] = L0
    CallFunction(o3922, "ProcesseStateChange")
  end
end }
o3924 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3924.SetStateValue(o3924.GetCalculated())
end, StartCalculate = function()
  o3924["Value"] = o3924.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3924.Value == L0) then
    DelayedFunction(1, o3924, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3924.Value == L0) then
    o3924["Value"] = L0
    CallFunction(o3922, "ProcesseStateChange")
  end
end }
o3927 = { [nil] = {}, Start = function()
  o3927["Value"] = False
  o1342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3927.Value == L0) then
    o3927["Value"] = L0
    o1342.ReCalculate()
  end
end }
S_o3970 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3970, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3970, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3970, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3970, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3970, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o3975.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3972.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3971.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3971 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3971.SetStateValue(o3971.GetCalculated())
end, StartCalculate = function()
  o3971["Value"] = o3971.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3971.Value == L0) then
    o3971["Value"] = L0
    CallFunction(o3970, "ProcesseStateChange")
  end
end }
o3972 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3972.SetStateValue(o3972.GetCalculated())
end, StartCalculate = function()
  o3972["Value"] = o3972.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3972.Value == L0) then
    DelayedFunction(1, o3972, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3972.Value == L0) then
    o3972["Value"] = L0
    CallFunction(o3970, "ProcesseStateChange")
  end
end }
o3975 = { [nil] = {}, Start = function()
  o3975["Value"] = False
  o1342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3975.Value == L0) then
    o3975["Value"] = L0
    o1342.ReCalculate()
  end
end }
S_o4018 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4018, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4018, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4018, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4018, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o4018, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4023.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4020.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4019.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4019 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4019.SetStateValue(o4019.GetCalculated())
end, StartCalculate = function()
  o4019["Value"] = o4019.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4019.Value == L0) then
    o4019["Value"] = L0
    CallFunction(o4018, "ProcesseStateChange")
  end
end }
o4020 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4020.SetStateValue(o4020.GetCalculated())
end, StartCalculate = function()
  o4020["Value"] = o4020.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4020.Value == L0) then
    DelayedFunction(1, o4020, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4020.Value == L0) then
    o4020["Value"] = L0
    CallFunction(o4018, "ProcesseStateChange")
  end
end }
o4023 = { [nil] = {}, Start = function()
  o4023["Value"] = False
  o1342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4023.Value == L0) then
    o4023["Value"] = L0
    o1342.ReCalculate()
  end
end }
S_o4066 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4066, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4066, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4066, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "/Scenario_Dynamic/Navigation/EndArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4066, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o4066, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o4071.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4068.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4067.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4067 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4067.SetStateValue(o4067.GetCalculated())
end, StartCalculate = function()
  o4067["Value"] = o4067.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4067.Value == L0) then
    o4067["Value"] = L0
    CallFunction(o4066, "ProcesseStateChange")
  end
end }
o4068 = { [nil] = {}, GetCalculated = function()
  if not (o3478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4068.SetStateValue(o4068.GetCalculated())
end, StartCalculate = function()
  o4068["Value"] = o4068.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4068.Value == L0) then
    DelayedFunction(1, o4068, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4068.Value == L0) then
    o4068["Value"] = L0
    CallFunction(o4066, "ProcesseStateChange")
  end
end }
o4071 = { [nil] = {}, Start = function()
  o4071["Value"] = False
  o1342.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4071.Value == L0) then
    o4071["Value"] = L0
    o1342.ReCalculate()
  end
end }
S_o4114 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4114, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4117.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4117 = { [nil] = {}, Start = function()
  o4117["Value"] = False
  o1347.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4117.Value == L0) then
    o4117["Value"] = L0
    o1347.ReCalculate()
  end
end }
S_o4119 = { [nil] = {}, Start = function(L0)

end }
S_o4120 = { [nil] = {}, Start = function(L0)

end }
S_o4121 = { [nil] = {}, Start = function(L0)

end }
S_o4122 = { [nil] = {}, Start = function(L0)

end }
S_o4123 = { [nil] = {}, Start = function(L0)

end }
o4124 = FormationLib.CreateFormation("Triangle", "", "", "", 15, 30)
S_o4126 = { [nil] = {}, Start = function(L0)

end }
S_o4127 = { [nil] = {}, Start = function(L0)

end }
S_o4128 = { [nil] = {}, Start = function(L0)

end }
o4129 = FormationLib.CreateFormation("Line", "", "", "", 15, 25)
o4131 = FormationLib.CreateFormation("Triangle", "", "", "", 15, 30)
S_o4133 = { [nil] = {}, Start = function(L0)

end }
S_o4134 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o4134, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4134, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o4134, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code4")
  else
    CallFunction(o4134, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1325.Node, o1325.Node, 109)
  SendRadioMessageTake(o1325.Node, o1325.Node, 110)
  SendRadioMessageTake(o1430.Node, o1325.Node, 111)
  CallFunction(o4134, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code8")
  else
    CallFunction(o4134, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o4134, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4134, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o4134, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4134, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o4134, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code14")
  else
    CallFunction(o4134, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o4134, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4135.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4138.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o4139.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4135 = { [nil] = {}, GetCalculated = function()
  if not (o1343.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4135.SetStateValue(o4135.GetCalculated())
end, StartCalculate = function()
  o4135["Value"] = o4135.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4135.Value == L0) then
    o4135["Value"] = L0
    CallFunction(o4134, "ProcesseStateChange")
  end
end }
o4138 = { [nil] = {}, GetCalculated = function()
  if not (o1024.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4138.SetStateValue(o4138.GetCalculated())
end, StartCalculate = function()
  o4138["Value"] = o4138.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4138.Value == L0) then
    o4138["Value"] = L0
    CallFunction(o4134, "ProcesseStateChange")
  end
end }
o4139 = { [nil] = {}, GetCalculated = function()
  if not (o1330.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4139.SetStateValue(o4139.GetCalculated())
end, StartCalculate = function()
  o4139["Value"] = o4139.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4139.Value == L0) then
    DelayedFunction(1, o4139, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4139.Value == L0) then
    o4139["Value"] = L0
    CallFunction(o4134, "ProcesseStateChange")
  end
end }
S_o4142 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4142, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  o1350.SetStateValue(True)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 2)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Chapter2Position_1")
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Chapter2Position_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o4142, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code9")
  else
    CallFunction(o4142, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1325.Node, o1325.Node, 117)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Chapter2Position_2", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/cra_fregat_1", 7, "MMMN", 0)
  CallFunction(o4142, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code13")
  else
    CallFunction(o4142, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Chapter2Position_3", 7, "MMMN", 0)
  CallFunction(o4142, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code15")
  else
    CallFunction(o4142, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  CallFunction(o4142, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code17")
  else
    CallFunction(o4142, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4143.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4143 = { [nil] = {}, GetCalculated = function()
  if not (o1330.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4143.SetStateValue(o4143.GetCalculated())
end, StartCalculate = function()
  o4143["Value"] = o4143.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4143.Value == L0) then
    DelayedFunction(1, o4143, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4143.Value == L0) then
    o4143["Value"] = L0
    CallFunction(o4142, "ProcesseStateChange")
  end
end }
S_o4149 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4149, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o4125, o4124, "/InGameSequences/Navigation/Chapter2Path_1")
  CallFunction(o4149, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code3")
  else
    CallFunction(o4149, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4125, o4124, "/InGameSequences/Navigation/Chapter2Path_1", "pos_1", "pos_3", 1, 1, "Code4")
  else
    CallFunction(o4149, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  CallFunction(o1379, "Code10")
  CallFunction(o1430, "Code13")
  CallFunction(o1483, "Code9")
  CallFunction(o1534, "Code10")
  Director_EndCutscene(L0.Node)
  CallFunction(o4149, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4150.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4150 = { [nil] = {}, GetCalculated = function()
  if not (o1330.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4150.SetStateValue(o4150.GetCalculated())
end, StartCalculate = function()
  o4150["Value"] = o4150.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4150.Value == L0) then
    DelayedFunction(1, o4150, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4150.Value == L0) then
    o4150["Value"] = L0
    CallFunction(o4149, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 309)
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
  o926 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "BackCanyon1Stream_1", S_o926)
  o927 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "BackCanyon1Stream_2", S_o927)
  o928 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "BackCanyon1Stream_3", S_o928)
  o929 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "BackCanyon1Stream_4", S_o929)
  o930 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "BackCanyon1Stream_5", S_o930)
  o931 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "BackCanyon1Stream_6", S_o931)
  o932 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "WngPosition_2", S_o932)
  o933 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "WngPosition_3", S_o933)
  o934 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "WngPosition_4", S_o934)
  o935 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_1", S_o935)
  o936 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_2", S_o936)
  o937 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_3", S_o937)
  o938 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_4", S_o938)
  o939 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_5", S_o939)
  o940 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_6", S_o940)
  o941 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "GrubTriggerPresenceBox_1", S_o941)
  o946.Start()
  o947 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "GrubTriggerPresenceBox_2", S_o947)
  o952.Start()
  o953 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "GrubTriggerPresenceBox_3", S_o953)
  o958.Start()
  o959 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "GrubTriggerPresenceBox_4", S_o959)
  o964.Start()
  o965 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "GrubTriggerPresenceBox_5", S_o965)
  o970.Start()
  o971 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "GrubTriggerPresenceBox_6", S_o971)
  o976.Start()
  o977 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BonhamTriggerPresence_1", S_o977)
  o982.Start()
  o983 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "DeGrangeTriggerPresence_1", S_o983)
  o988.Start()
  o989 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PiccoTriggerPresence_1", S_o989)
  o994.Start()
  o995 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "HarperTriggerPresence_1", S_o995)
  o1000.Start()
  o1001 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PlaTriggerPresence_1", S_o1001)
  o1006.Start()
  o1007 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PlaTriggerPresence_2", S_o1007)
  o1012.Start()
  o1013 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PlaTriggerPresenceBox_1", S_o1013)
  o1018.Start()
  o1019 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PlaTriggerPresenceBox_2", S_o1019)
  o1024.Start()
  o1025 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "DialogTrigger_1", S_o1025)
  o1030.Start()
  o1031 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "DialogTrigger_2", S_o1031)
  o1036.Start()
  o1037 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_sco1v1_3", S_o1037)
  o1085 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_sco1v1_2", S_o1085)
  o1133 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_sco1v1_1", S_o1133)
  o1181 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_pPatrol_3", S_o1181)
  o1229 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_pPatrol_2", S_o1229)
  o1277 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "tz_pPatrol_1", S_o1277)
  o1325 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1325)
  o1337.Start()
  o1338.Start()
  o1339.Start()
  o1340.Start()
  o1350.Start()
  o1379 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c2_1", S_o1379)
  o1386.Start()
  o1388.Start()
  o1430 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c2_1", S_o1430)
  o1483 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c2_1", S_o1483)
  o1534 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c2_1", S_o1534)
  o1585 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c2_2", S_o1585)
  o1633 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c2_2", S_o1633)
  o1681 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c2_2", S_o1681)
  o1729 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c2_2", S_o1729)
  o1777 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_1", S_o1777)
  o1816 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_2", S_o1816)
  o1855 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_3", S_o1855)
  o1894 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_4", S_o1894)
  o1933 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_5", S_o1933)
  o1972 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_6", S_o1972)
  o2011 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can1_Grub_7", S_o2011)
  o2050 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_1", S_o2050)
  o2089 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_2", S_o2089)
  o2128 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_3", S_o2128)
  o2167 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_4", S_o2167)
  o2206 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_5", S_o2206)
  o2245 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_6", S_o2245)
  o2284 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_7", S_o2284)
  o2323 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Can2_Grub_8", S_o2323)
  o2362 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_fregat_1", S_o2362)
  o2409 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_2", S_o2409)
  o2457 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_3", S_o2457)
  o2505 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoB1_1", S_o2505)
  o2553 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoB2_1", S_o2553)
  o2601 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoB2_2", S_o2601)
  o2649 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoB3_1", S_o2649)
  o2697 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoB3_2", S_o2697)
  o2745 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoF_1", S_o2745)
  o2793 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scoF_2", S_o2793)
  o2841 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_1", S_o2841)
  o2880 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_2", S_o2880)
  o2919 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_3", S_o2919)
  o2958 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_4", S_o2958)
  o2997 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_5", S_o2997)
  o3036 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_6", S_o3036)
  o3075 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_7", S_o3075)
  o3114 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_8", S_o3114)
  o3153 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_9", S_o3153)
  o3192 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_10", S_o3192)
  o3231 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_11", S_o3231)
  o3270 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_12", S_o3270)
  o3309 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_13", S_o3309)
  o3348 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_14", S_o3348)
  o3387 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_15", S_o3387)
  o3426 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3h2_16", S_o3426)
  o3465 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o3465)
  o3470 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o3470)
  o3475 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03_1", S_o3475)
  o3478.Start()
  o3480 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_2", S_o3480)
  o3483.Start()
  o3485 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_2", S_o3485)
  o3488.Start()
  o3490 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_1", S_o3490)
  o3538 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_2", S_o3538)
  o3586 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_3", S_o3586)
  o3634 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_4", S_o3634)
  o3682 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_5", S_o3682)
  o3730 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_6", S_o3730)
  o3735.Start()
  o3778 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_g_7", S_o3778)
  o3783.Start()
  o3826 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_1", S_o3826)
  o3831.Start()
  o3874 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_2", S_o3874)
  o3879.Start()
  o3922 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_3", S_o3922)
  o3927.Start()
  o3970 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_4", S_o3970)
  o3975.Start()
  o4018 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_5", S_o4018)
  o4023.Start()
  o4066 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_6", S_o4066)
  o4071.Start()
  o4114 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_04_1", S_o4114)
  o4117.Start()
  o4119 = BindEasy(Node_Find("/"), "Camera", S_o4119)
  o4120 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1Position_1", S_o4120)
  o4121 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1Position_2", S_o4121)
  o4122 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1Position_3", S_o4122)
  o4123 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1Position_4", S_o4123)
  o4126 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter2Position_1", S_o4126)
  o4127 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter2Position_2", S_o4127)
  o4128 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter2Position_3", S_o4128)
  o4133 = BindEasy(Node_Find("/InGameSequences/Navigation"), "ExtroPosition_1", S_o4133)
  o4134 = BindEasy(Node_Find("/InGameSequences/Director"), "StartMusic", S_o4134)
  o4142 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter2V", S_o4142)
  o4149 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter2Addon", S_o4149)
  o4125 = { {}, o1325, o1379, o1430, o1483, o1534 }()
  o4130 = { {}, o1534, o1379, o1430, o1483 }()
  o4132 = { {}, o1325 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end