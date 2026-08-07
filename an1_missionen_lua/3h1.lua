-- dekompiliert aus map\3h1\script\3h1.sco
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
  Terrain_LoadTerrain(node1, "map/3H1/terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/3H1/Lmsh/", "map/3H1/Ltex/")
  Game_SetTerrainDepth(node0, 4423)
  Game_SetDecompressionHeight(node0, 900)
  Game_SetAmbientLight(node0, 0.101961, 0.141176, 0.019608)
  Game_SetParallelLightT(node0, 0.203922, 0.282353, 0.039216)
  Game_SetParallelLightB(node0, 0.462745, 0.462745, 0.086275)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_3H1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "tz_element05a_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(3703.066316, 2334.908276, 452.276954), MAT_Vector3(0.118947, 0, 0))
  Node_ParseIniFile(node8, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "tz_element03_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3645.436905, 2280.812, 447.551235), MAT_Vector3(-90.078359, 0, 0))
  Node_ParseIniFile(node9, "osd/tz/tz_element03.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_element01a_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(3758.946616, 2520.742444, 617.867669), MAT_Vector3(-1, 1.355, 1.355))
  Node_ParseIniFile(node10, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_element04_2_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3821.8249, 2538.965436, 609.331718), MAT_Vector3(-1, 1.355, 1.355))
  Node_ParseIniFile(node11, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "tz_element04_1_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3873.623084, 1831.558345, 573.332255), MAT_Vector3(178, -0.65, -0.65))
  Node_ParseIniFile(node12, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "tz_element04_1_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3821.742795, 2539.939025, 614.047), MAT_Vector3(-1, 1.355, 1.355))
  Node_ParseIniFile(node13, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "tz_element03a_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(3791.864281, 1833.980876, 559.754894), MAT_Vector3(178, -0.65, -0.65))
  Node_ParseIniFile(node14, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_element01a_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3558.338684, 1629.81658, 425.090508), MAT_Vector3(89.124333, 0.744201, -0.735035))
  Node_ParseIniFile(node15, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_element01a_3")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3705.00065, 2271.564533, 455.700834), MAT_Vector3(179.956907, 0, 0))
  Node_ParseIniFile(node16, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "tz_element05a_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3491.929179, 2840.041854, 454.317357), MAT_Vector3(-89.433526, 0, 0))
  Node_ParseIniFile(node17, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "tz_element01a_4")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3453.714742, 2673.155586, 420.904158), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_element03a_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3545.88556, 2888.574946, 468.366098), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "tz_element01a_5")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3600.232227, 2792.484519, 478.92708), MAT_Vector3(90.273584, 0, 0))
  Node_ParseIniFile(node20, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_element04_1_3")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(3577.130062, 2847.662921, 558.879392), MAT_Vector3(-90.206905, 0, 0))
  Node_ParseIniFile(node21, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_element04_1_4")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3577.13, 2847.663, 450), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node22, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "tz_element04_1_5")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(3663.382815, 2772.000501, 390.331604), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "tz_element04_1_6")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3800.06537, 2934.919614, 525.929933), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "tz_element04_2_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3625.283587, 2888.208248, 564.327115), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "tz_element04_2_3")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3686.394263, 2898.914322, 551.032649), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node26, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "tz_element04_2_4")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3803.912292, 2935.727265, 547.887783), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node27, "osd/tz/tz_element04_2.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "tz_element01a_6")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3740.841075, 2913.105784, 571.028964), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "tz_element03a_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3579.84683, 2944.943114, 496.989139), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node29, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "tz_element06a_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3132.794245, 3211.232833, 323.016354), MAT_Vector3(-97.743349, -11.507061, -0.208683))
  Node_ParseIniFile(node30, "osd/tz/tz_element06a.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "tz_element01_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(3287.395706, 2913.138565, 364.727594), MAT_Vector3(31.467567, 9.665052, 2.13184))
  Node_ParseIniFile(node31, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "des_A_trafo_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(3497.73947, 1627.741177, 408.587164), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node32, 3)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_A_turret_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3463.34902, 1657.925429, 405.873946), MAT_Vector3(65.195796, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_A_turret_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(3450.039446, 1565.015679, 402.481521), MAT_Vector3(125.734552, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "des_B_trafo_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(3792.498799, 1792.200771, 549.884085), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node35, 3)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_B_turret_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3722.58677, 1843.580381, 548.672233), MAT_Vector3(48.358466, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_B_turret_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(3759.01641, 1733.695552, 549.956718), MAT_Vector3(131.413943, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "des_C_trafo_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(3721.498848, 2210.162817, 456.454624), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node38, 3)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_C_turret_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3657.237763, 2205.419458, 448.715995), MAT_Vector3(177.802917, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node39, 5)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_C_turret_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3600.103765, 2285.643075, 441.938857), MAT_Vector3(89.195325, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_C_turret_3")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3630.940694, 2379.831824, 438.774237), MAT_Vector3(0.429867, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_D_turret_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(3705.458639, 2469.055113, 591.848285), MAT_Vector3(116.460596, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node42, 5)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_D_turret_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(3708.434312, 2574.241723, 600.501854), MAT_Vector3(40.699656, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "des_E_trafo_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3439.844208, 2613.409433, 409.215834), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node44, 3)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_E_turret_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3392.316714, 2526.605474, 400.495529), MAT_Vector3(139.053111, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_E_turret_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3358.040615, 2624.779338, 401.321855), MAT_Vector3(91.26345, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_E_turret_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(3392.317385, 2741.572609, 397.533405), MAT_Vector3(91.26345, 0, 0))
  Node_ParseIniFile(node47, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "des_F_trafo_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3543.143909, 2855.581412, 480.257326), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node48, 3)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_F_turret_1")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(3451.809941, 2779.362869, 442.269268), MAT_Vector3(103.443223, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node49, 5)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_F_turret_2")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3455.439803, 2883.530317, 439.038481), MAT_Vector3(73.493584, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_F_turret_3")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(3493.10175, 2959.167687, 443.780945), MAT_Vector3(30.070893, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_F_turret_4")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3572.569913, 3044.873518, 498.999337), MAT_Vector3(9.204542, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_F_turret_5")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(3669.944244, 3009.489575, 506.270201), MAT_Vector3(45.360433, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_F_turret_6")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(3718.649893, 2982.908917, 559.952066), MAT_Vector3(31.266021, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_F_turret_7")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(3578.477423, 2562.928901, 485.000746), MAT_Vector3(179.553774, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_F_turret_8")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3531.00496, 2729.713504, 446.451443), MAT_Vector3(179.5538, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "des_G_trafo_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(3240.056741, 2889.692202, 361.910104), MAT_Vector3(31.672047, 0, 0))
  Node_ParseIniFile(node57, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node57, 3)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_G_turret_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(3202.302318, 2943.672937, 358.130336), MAT_Vector3(67.784163, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_G_turret_2")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3227.513578, 2855.867161, 356.72003), MAT_Vector3(98.471497, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "des_H_trafo_1")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(3199.812726, 3218.37175, 323.392014), MAT_Vector3(-5.538931, 0, 0))
  Node_ParseIniFile(node60, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node60, 3)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_H_turret_1")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(3107.541243, 3361.837442, 316.053132), MAT_Vector3(58.774538, 0, 0))
  Node_ParseIniFile(node61, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_H_turret_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3076.107954, 3084.0978, 322.227242), MAT_Vector3(100.560811, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_H_turret_3")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3091.756565, 3225.804253, 320.166625), MAT_Vector3(80.068224, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_vent_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3212.404698, 2412.542714, 333.841396), MAT_Vector3(133.309522, -0.859481, 1.268239))
  Node_ParseIniFile(node64, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_vent_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(3195.751152, 2496.945696, 333.8414), MAT_Vector3(124.229207, 0.54751, -3.441985))
  Node_ParseIniFile(node65, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_vent_3")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3288.773028, 2540.318049, 339.484644), MAT_Vector3(112.020409, -0.718475, 1.623356))
  Node_ParseIniFile(node66, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_vent_4")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3307.348462, 1901.249912, 289.733918), MAT_Vector3(129.467343, -0.577725, 1.331764))
  Node_ParseIniFile(node67, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_vent_5")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(3410.773138, 2007.16731, 297.453833), MAT_Vector3(110.321162, -0.511197, 0.562803))
  Node_ParseIniFile(node68, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_vent_6")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(3413.265172, 1887.542744, 297.4538), MAT_Vector3(133.229163, -0.669621, 0.979551))
  Node_ParseIniFile(node69, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_vent_7")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(3121.680875, 1390.354685, 324.044682), MAT_Vector3(116.140354, -2.745431, 3.657884))
  Node_ParseIniFile(node70, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_vent_8")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(3235.074826, 1362.941108, 324.0447), MAT_Vector3(117.762945, 1.992437, -2.027653))
  Node_ParseIniFile(node71, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_vent_9")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2916.345384, 2875.739209, 279.530131), MAT_Vector3(113.866658, -3.492626, -1.964853))
  Node_ParseIniFile(node72, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_vent_10")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2930.254835, 3088.733353, 279.5301), MAT_Vector3(113.711782, -2.29542, 1.08731))
  Node_ParseIniFile(node73, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_vent_11")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2969.548138, 3420.93862, 279.5301), MAT_Vector3(109.020813, -1.850734, 0.37969))
  Node_ParseIniFile(node74, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_vent_12")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(3605.027035, 2062.219134, 385.285595), MAT_Vector3(109.451303, 0.26645, 4.606328))
  Node_ParseIniFile(node75, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_vent_13")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3587.639706, 1950.070953, 385.2856), MAT_Vector3(103.785997, 7.933216, -8.037409))
  Node_ParseIniFile(node76, "osd/gen/gen_vent.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node77)
  Node_ParseIniFile(node77, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_fx_sky", "fx_sky_04_1")
  Node_AddSon(node7, node78)
  Node_ParseIniFile(node78, "osd/fx_sky/fx_sky_04.osd")
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_dockingnode_1")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(3484.925602, 2901.207694, 659.37591), MAT_Vector3(90.474505, -0.071952, 0.134999))
  Node_ParseIniFile(node79, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fungus", "coral_01_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(3229.644299, 2476.820457, 330.669885), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fungus", "coral_01_5")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(3240.963872, 2505.692409, 331.009822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fungus", "coral_01_4")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(3223.419712, 2496.988755, 329.36296), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fungus", "coral_01_3")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(3231.148379, 2454.200248, 330.158353), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fungus", "coral_01_2")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(3249.25221, 2491.248019, 330.942555), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node85)
  Node_ParseIniFile(node85, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node86, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node86, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Path", "Freighter_Path_1")
  Node_AddSon(node88, node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node89, node90)
  Position_SetPosition(node90, MAT_Vector3(2873.473671, 2367.293617, 623.311169))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node89, node91)
  Position_SetPosition(node91, MAT_Vector3(3010.210381, 2483.374173, 627.87966))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node89, node92)
  Position_SetPosition(node92, MAT_Vector3(3147.285461, 2561.399098, 663.004462))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node89, node93)
  Position_SetPosition(node93, MAT_Vector3(3360.220384, 2893.337149, 684.355951))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_PatrolArea", "Nav1Area")
  Node_AddSon(node88, node94)
  PatrolArea_SetPosition(node94, MAT_Vector3(3449.565867, 1624.052681, 455.075164))
  PatrolArea_SetRadius(node94, 200)
  PatrolArea_SetMinZ(node94, -200)
  PatrolArea_SetMaxZ(node94, 200)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_PatrolArea", "Nav2Area")
  Node_AddSon(node88, node95)
  PatrolArea_SetPosition(node95, MAT_Vector3(3768.273838, 1810.558817, 597.962297))
  PatrolArea_SetRadius(node95, 200)
  PatrolArea_SetMinZ(node95, -200)
  PatrolArea_SetMaxZ(node95, 200)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_PatrolArea", "Nav3Area")
  Node_AddSon(node88, node96)
  PatrolArea_SetPosition(node96, MAT_Vector3(3662.838083, 2278.790079, 501.792165))
  PatrolArea_SetRadius(node96, 200)
  PatrolArea_SetMinZ(node96, -200)
  PatrolArea_SetMaxZ(node96, 200)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_PatrolArea", "Nav4Area")
  Node_AddSon(node88, node97)
  PatrolArea_SetPosition(node97, MAT_Vector3(3704.168577, 2455.566041, 649.617341))
  PatrolArea_SetRadius(node97, 200)
  PatrolArea_SetMinZ(node97, -200)
  PatrolArea_SetMaxZ(node97, 200)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_PatrolArea", "Nav5Area")
  Node_AddSon(node88, node98)
  PatrolArea_SetPosition(node98, MAT_Vector3(3416.797381, 2707.352639, 458.666077))
  PatrolArea_SetRadius(node98, 200)
  PatrolArea_SetMinZ(node98, -200)
  PatrolArea_SetMaxZ(node98, 200)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_PatrolArea", "Nav6Area")
  Node_AddSon(node88, node99)
  PatrolArea_SetPosition(node99, MAT_Vector3(3605.300959, 2900.983464, 541.624982))
  PatrolArea_SetRadius(node99, 200)
  PatrolArea_SetMinZ(node99, -200)
  PatrolArea_SetMaxZ(node99, 200)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_PatrolArea", "Nav7Area")
  Node_AddSon(node88, node100)
  PatrolArea_SetPosition(node100, MAT_Vector3(3275.140381, 2906.661198, 411.19902))
  PatrolArea_SetRadius(node100, 200)
  PatrolArea_SetMinZ(node100, -200)
  PatrolArea_SetMaxZ(node100, 200)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_PatrolArea", "Nav8Area")
  Node_AddSon(node88, node101)
  PatrolArea_SetPosition(node101, MAT_Vector3(3159.061414, 3233.303897, 373.535223))
  PatrolArea_SetRadius(node101, 200)
  PatrolArea_SetMinZ(node101, -200)
  PatrolArea_SetMaxZ(node101, 200)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_PatrolArea", "HoleMapArea")
  Node_AddSon(node88, node102)
  PatrolArea_SetPosition(node102, MAT_Vector3(1840.16787, 2153.491165, 72.8644))
  PatrolArea_SetRadius(node102, 3000)
  PatrolArea_SetMinZ(node102, -200)
  PatrolArea_SetMaxZ(node102, 1000)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node88, node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node103, node104)
  Position_SetPosition(node104, MAT_Vector3(3109.04328, 1491.454605, 358.987634))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node103, node105)
  Position_SetPosition(node105, MAT_Vector3(3299.640215, 1605.50858, 432.233135))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node88, node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node106, node107)
  Position_SetPosition(node107, MAT_Vector3(3313.530912, 2419.744805, 381.117413))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node106, node108)
  Position_SetPosition(node108, MAT_Vector3(3284.952941, 2697.521972, 486.848428))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node88, node109)
  PatrolArea_SetPosition(node109, MAT_Vector3(3381.043024, 3035.412463, 458.922305))
  PatrolArea_SetRadius(node109, 530)
  PatrolArea_SetMinZ(node109, -220)
  PatrolArea_SetMaxZ(node109, 420)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node88, node110)
  PatrolArea_SetPosition(node110, MAT_Vector3(3537.744465, 2043.090634, 498.885799))
  PatrolArea_SetRadius(node110, 650)
  PatrolArea_SetMinZ(node110, -220)
  PatrolArea_SetMaxZ(node110, 420)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Path", "Freighter_Path_2")
  Node_AddSon(node88, node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node111, node112)
  Position_SetPosition(node112, MAT_Vector3(3366.948026, 3018.054663, 535.386287))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node111, node113)
  Position_SetPosition(node113, MAT_Vector3(3342.775607, 3226.621891, 604.40373))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node88, node114)
  Position_SetPosition(node114, MAT_Vector3(3035.841146, 3270.093626, 377.836814))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node88, node115)
  Position_SetPosition(node115, MAT_Vector3(3030.66762, 3438.591652, 377.8368))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node86, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node86, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node86, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node118, node119)
  Body_SetCS(node119, MAT_Vector3(3266.303698, 1021.212102, 415.89291), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node119, 1)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "wng_degrange_c2_1")
  Node_AddSon(node118, node120)
  Body_SetCS(node120, MAT_Vector3(3201.486929, 1004.49495, 399.7211), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/wng/wng_degrange_c2.osd")
  Body_SetFriendOrFoeID(node120, 4)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "wng_bonham_c2_1")
  Node_AddSon(node118, node121)
  Body_SetCS(node121, MAT_Vector3(3058.763177, 1122.107193, 407.462273), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/wng/wng_bonham_c2.osd")
  Body_SetFriendOrFoeID(node121, 4)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node118, node122)
  Body_SetPosition(node122, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node122, 5)
  Node_ParseIniFile(node122, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node118, node123)
  Body_SetCS(node123, MAT_Vector3(2746.005132, 2266.419207, 615.607996), MAT_Vector3(-54.935584, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node123, 2)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "tz_scout1v2_1_Nav1")
  Node_AddSon(node118, node124)
  Body_SetCS(node124, MAT_Vector3(3442.943552, 1614.702175, 543.80759), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "tz_scout1v2_1_Nav3")
  Node_AddSon(node118, node125)
  Body_SetCS(node125, MAT_Vector3(3570.896939, 2247.432193, 496.812832), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node125, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "tz_scout2v1_1_Nav4")
  Node_AddSon(node118, node126)
  Body_SetCS(node126, MAT_Vector3(3747.430643, 2450.77206, 667.453178), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node126, "osd/tz/tz_scout2v1.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "tz_scout1v2_1_Nav6")
  Node_AddSon(node118, node127)
  Body_SetCS(node127, MAT_Vector3(3663.007476, 2950.368575, 664.907249), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node127, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "tz_scout1v2_1_Nav7")
  Node_AddSon(node118, node128)
  Body_SetCS(node128, MAT_Vector3(3112.665975, 2923.365055, 409.648832), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "tz_scout1v2_1_Nav8")
  Node_AddSon(node118, node129)
  Body_SetCS(node129, MAT_Vector3(3002.097484, 3269.42638, 356.731217), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "tz_scout1v1_1_end_respawn")
  Node_AddSon(node118, node130)
  Body_SetCS(node130, MAT_Vector3(3268.558482, 3156.438765, 509.913976), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "tz_scout1v1_2_end_respawn")
  Node_AddSon(node118, node131)
  Body_SetCS(node131, MAT_Vector3(3030.478382, 2854.374224, 509.913976), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node131, 5)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "tz_scout1v1_3_end")
  Node_AddSon(node118, node132)
  Body_SetCS(node132, MAT_Vector3(3148.238431, 2305.635565, 509.913976), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node132, 5)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "tz_scout1v2_1_end")
  Node_AddSon(node118, node133)
  Body_SetCS(node133, MAT_Vector3(2769.358272, 2712.921592, 509.913976), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node133, 5)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vessel", "tz_scout1v2_2_end")
  Node_AddSon(node118, node134)
  Body_SetCS(node134, MAT_Vector3(3232.718467, 2669.022499, 509.913976), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "tz_scout1v2_3_end")
  Node_AddSon(node118, node135)
  Body_SetCS(node135, MAT_Vector3(3324.878506, 2008.09727, 509.913976), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node135, 5)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node118, node136)
  Node_ParseIniFile(node136, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node136, "map/3H1/terrain/fungus_01.tga")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node118, node137)
  Node_ParseIniFile(node137, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node137, "map/3H1/terrain/stone_01.tga")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node118, node138)
  Node_ParseIniFile(node138, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node138, "map/3H1/terrain/grass_01.tga")
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node139)
  Camera_SetBackPlane(node139, 512)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node140)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node140, node141)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node140, node142)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Path", "IntroChapter1Path_1")
  Node_AddSon(node142, node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node143, node144)
  Position_SetPosition(node144, MAT_Vector3(2883.663561, 661.970293, 366.046192))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node143, node145)
  Position_SetPosition(node145, MAT_Vector3(2945.633214, 894.208834, 369.328686))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node143, node146)
  Position_SetPosition(node146, MAT_Vector3(3021.386878, 1224.154629, 370.84943))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node143, node147)
  Position_SetPosition(node147, MAT_Vector3(3096.683605, 1464.451917, 382.676312))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "CamPosition_1")
  Node_AddSon(node142, node148)
  Position_SetPosition(node148, MAT_Vector3(2870.929788, 606.523999, 427.963656))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "CamPosition_2")
  Node_AddSon(node142, node149)
  Position_SetPosition(node149, MAT_Vector3(2981.254069, 1064.848497, 317.544841))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "CamPosition_3")
  Node_AddSon(node142, node150)
  Position_SetPosition(node150, MAT_Vector3(3204.02827, 1453.77363, 401.963171))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "CamPosition_4")
  Node_AddSon(node142, node151)
  Position_SetPosition(node151, MAT_Vector3(2860.314986, 2379.972626, 696.719157))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "IntroChapter2Path_1")
  Node_AddSon(node142, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(3272.228007, 2442.051933, 516.863905))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(3138.054787, 2456.524778, 483.501183))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node140, node155)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Director", "IntroChapter1V")
  Node_AddSon(node155, node156)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Director", "IntroChapter1Addon")
  Node_AddSon(node155, node157)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Director", "IntroChapter2V")
  Node_AddSon(node155, node158)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node140, node159)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node140, node160)
  Node_EnterSimulation(node160)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
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
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, F)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, N)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, N)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, N)
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
SetEnemyMatrixElement(0, 4, E)
SetEnemyMatrixElement(1, 4, F)
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
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (o2590.Value ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2509 1356")
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
                                                                                                                                              if not (o2614.Value == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
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
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (o2615.Value == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o846, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o846, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o846, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o848.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o849.SetStateValue(L1)
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
o848 = { [nil] = {}, Start = function()
  o848["Value"] = False
  o2550.StartCalculate()
end, SetStateValue = function(L0)
  if not (o848.Value == L0) then
    o848["Value"] = L0
    o2550.ReCalculate()
  end
end }
o849 = { [nil] = {}, Start = function()
  o849["Value"] = False
  o882.StartCalculate()
  o883.StartCalculate()
  o921.StartCalculate()
  o922.StartCalculate()
end, SetStateValue = function(L0)
  if not (o849.Value == L0) then
    o849["Value"] = L0
    o882.ReCalculate()
    o883.ReCalculate()
    o921.ReCalculate()
    o922.ReCalculate()
  end
end }
S_o881 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o881, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o881, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o881, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o881, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o881, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o881, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o881, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o885.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o886.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o890.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o882.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o883.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o882 = { [nil] = {}, GetCalculated = function()
  if not (o849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o882.SetStateValue(o882.GetCalculated())
end, StartCalculate = function()
  o882["Value"] = o882.GetCalculated()
end, SetStateValue = function(L0)
  if not (o882.Value == L0) then
    o882["Value"] = L0
    CallFunction(o881, "ProcesseStateChange")
  end
end }
o883 = { [nil] = {}, GetCalculated = function()
  if not (o849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o883.SetStateValue(o883.GetCalculated())
end, StartCalculate = function()
  o883["Value"] = o883.GetCalculated()
end, SetStateValue = function(L0)
  if not (o883.Value == L0) then
    DelayedFunction(2, o883, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o883.Value == L0) then
    o883["Value"] = L0
    CallFunction(o881, "ProcesseStateChange")
  end
end }
o885 = { [nil] = {}, Start = function()
  o885["Value"] = False
  o2550.StartCalculate()
end, SetStateValue = function(L0)
  if not (o885.Value == L0) then
    o885["Value"] = L0
    o2550.ReCalculate()
  end
end }
o886 = { [nil] = {}, Start = function()
  o886["Value"] = False
  o2551.StartCalculate()
end, SetStateValue = function(L0)
  if not (o886.Value == L0) then
    o886["Value"] = L0
    o2551.ReCalculate()
  end
end }
o890 = { [nil] = {}, Start = function()
  o890["Value"] = False
  o2551.StartCalculate()
end, SetStateValue = function(L0)
  if not (o890.Value == L0) then
    o890["Value"] = L0
    o2551.ReCalculate()
  end
end }
S_o920 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o920, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o920, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o920, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o920, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o920, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o920, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o920, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o924.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o925.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o929.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o921.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o922.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o921 = { [nil] = {}, GetCalculated = function()
  if not (o849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o921.SetStateValue(o921.GetCalculated())
end, StartCalculate = function()
  o921["Value"] = o921.GetCalculated()
end, SetStateValue = function(L0)
  if not (o921.Value == L0) then
    o921["Value"] = L0
    CallFunction(o920, "ProcesseStateChange")
  end
end }
o922 = { [nil] = {}, GetCalculated = function()
  if not (o849.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o922.SetStateValue(o922.GetCalculated())
end, StartCalculate = function()
  o922["Value"] = o922.GetCalculated()
end, SetStateValue = function(L0)
  if not (o922.Value == L0) then
    DelayedFunction(2, o922, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o922.Value == L0) then
    o922["Value"] = L0
    CallFunction(o920, "ProcesseStateChange")
  end
end }
o924 = { [nil] = {}, Start = function()
  o924["Value"] = False
  o2550.StartCalculate()
end, SetStateValue = function(L0)
  if not (o924.Value == L0) then
    o924["Value"] = L0
    o2550.ReCalculate()
  end
end }
o925 = { [nil] = {}, Start = function()
  o925["Value"] = False
  o2552.StartCalculate()
end, SetStateValue = function(L0)
  if not (o925.Value == L0) then
    o925["Value"] = L0
    o2552.ReCalculate()
  end
end }
o929 = { [nil] = {}, Start = function()
  o929["Value"] = False
  o2552.StartCalculate()
end, SetStateValue = function(L0)
  if not (o929.Value == L0) then
    o929["Value"] = L0
    o2552.ReCalculate()
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
end, SetStateValue_Destroyed = function(L0, L1)
  o962.SetStateValue(L1)
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
o962 = { [nil] = {}, Start = function()
  o962["Value"] = False
  o995.StartCalculate()
  o996.StartCalculate()
  o1034.StartCalculate()
  o1035.StartCalculate()
end, SetStateValue = function(L0)
  if not (o962.Value == L0) then
    o962["Value"] = L0
    o995.ReCalculate()
    o996.ReCalculate()
    o1034.ReCalculate()
    o1035.ReCalculate()
  end
end }
S_o994 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o994, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o994, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o994, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o994, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o994, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o994, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o994, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o999.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1003.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o995.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o996.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o995 = { [nil] = {}, GetCalculated = function()
  if not (o962.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o995.SetStateValue(o995.GetCalculated())
end, StartCalculate = function()
  o995["Value"] = o995.GetCalculated()
end, SetStateValue = function(L0)
  if not (o995.Value == L0) then
    o995["Value"] = L0
    CallFunction(o994, "ProcesseStateChange")
  end
end }
o996 = { [nil] = {}, GetCalculated = function()
  if not (o962.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o996.SetStateValue(o996.GetCalculated())
end, StartCalculate = function()
  o996["Value"] = o996.GetCalculated()
end, SetStateValue = function(L0)
  if not (o996.Value == L0) then
    DelayedFunction(2, o996, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o996.Value == L0) then
    o996["Value"] = L0
    CallFunction(o994, "ProcesseStateChange")
  end
end }
o999 = { [nil] = {}, Start = function()
  o999["Value"] = False
  o2553.StartCalculate()
end, SetStateValue = function(L0)
  if not (o999.Value == L0) then
    o999["Value"] = L0
    o2553.ReCalculate()
  end
end }
o1003 = { [nil] = {}, Start = function()
  o1003["Value"] = False
  o2553.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1003.Value == L0) then
    o1003["Value"] = L0
    o2553.ReCalculate()
  end
end }
S_o1033 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1033, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1033, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1033, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1033, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1033, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1033, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1033, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1038.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1042.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1034.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1035.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1034 = { [nil] = {}, GetCalculated = function()
  if not (o962.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1034.SetStateValue(o1034.GetCalculated())
end, StartCalculate = function()
  o1034["Value"] = o1034.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1034.Value == L0) then
    o1034["Value"] = L0
    CallFunction(o1033, "ProcesseStateChange")
  end
end }
o1035 = { [nil] = {}, GetCalculated = function()
  if not (o962.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1035.SetStateValue(o1035.GetCalculated())
end, StartCalculate = function()
  o1035["Value"] = o1035.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1035.Value == L0) then
    DelayedFunction(2, o1035, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1035.Value == L0) then
    o1035["Value"] = L0
    CallFunction(o1033, "ProcesseStateChange")
  end
end }
o1038 = { [nil] = {}, Start = function()
  o1038["Value"] = False
  o2554.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1038.Value == L0) then
    o1038["Value"] = L0
    o2554.ReCalculate()
  end
end }
o1042 = { [nil] = {}, Start = function()
  o1042["Value"] = False
  o2554.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1042.Value == L0) then
    o1042["Value"] = L0
    o2554.ReCalculate()
  end
end }
S_o1072 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1072, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1072, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1072, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1075.SetStateValue(L1)
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
o1075 = { [nil] = {}, Start = function()
  o1075["Value"] = False
  o1108.StartCalculate()
  o1109.StartCalculate()
  o1147.StartCalculate()
  o1148.StartCalculate()
  o1186.StartCalculate()
  o1187.StartCalculate()
  o1225.StartCalculate()
  o1226.StartCalculate()
  o1264.StartCalculate()
  o1265.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1075.Value == L0) then
    o1075["Value"] = L0
    o1108.ReCalculate()
    o1109.ReCalculate()
    o1147.ReCalculate()
    o1148.ReCalculate()
    o1186.ReCalculate()
    o1187.ReCalculate()
    o1225.ReCalculate()
    o1226.ReCalculate()
    o1264.ReCalculate()
    o1265.ReCalculate()
  end
end }
S_o1107 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1107, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1107, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1107, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1107, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1107, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1107, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1107, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1112.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1116.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1108.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1109.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1108 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1108.SetStateValue(o1108.GetCalculated())
end, StartCalculate = function()
  o1108["Value"] = o1108.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1108.Value == L0) then
    o1108["Value"] = L0
    CallFunction(o1107, "ProcesseStateChange")
  end
end }
o1109 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1109.SetStateValue(o1109.GetCalculated())
end, StartCalculate = function()
  o1109["Value"] = o1109.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1109.Value == L0) then
    DelayedFunction(2, o1109, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1109.Value == L0) then
    o1109["Value"] = L0
    CallFunction(o1107, "ProcesseStateChange")
  end
end }
o1112 = { [nil] = {}, Start = function()
  o1112["Value"] = False
  o2555.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1112.Value == L0) then
    o1112["Value"] = L0
    o2555.ReCalculate()
  end
end }
o1116 = { [nil] = {}, Start = function()
  o1116["Value"] = False
  o2555.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1116.Value == L0) then
    o1116["Value"] = L0
    o2555.ReCalculate()
  end
end }
S_o1146 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1146, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1146, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1146, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1146, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1146, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1146, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1146, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1151.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1155.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1147.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1148.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1147 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1147.SetStateValue(o1147.GetCalculated())
end, StartCalculate = function()
  o1147["Value"] = o1147.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1147.Value == L0) then
    o1147["Value"] = L0
    CallFunction(o1146, "ProcesseStateChange")
  end
end }
o1148 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1148.SetStateValue(o1148.GetCalculated())
end, StartCalculate = function()
  o1148["Value"] = o1148.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1148.Value == L0) then
    DelayedFunction(2, o1148, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1148.Value == L0) then
    o1148["Value"] = L0
    CallFunction(o1146, "ProcesseStateChange")
  end
end }
o1151 = { [nil] = {}, Start = function()
  o1151["Value"] = False
  o2556.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1151.Value == L0) then
    o1151["Value"] = L0
    o2556.ReCalculate()
  end
end }
o1155 = { [nil] = {}, Start = function()
  o1155["Value"] = False
  o2556.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1155.Value == L0) then
    o1155["Value"] = L0
    o2556.ReCalculate()
  end
end }
S_o1185 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1185, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1185, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1185, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1185, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1185, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1185, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1185, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1190.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1194.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1186.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1187.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1186 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1186.SetStateValue(o1186.GetCalculated())
end, StartCalculate = function()
  o1186["Value"] = o1186.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1186.Value == L0) then
    o1186["Value"] = L0
    CallFunction(o1185, "ProcesseStateChange")
  end
end }
o1187 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1187.SetStateValue(o1187.GetCalculated())
end, StartCalculate = function()
  o1187["Value"] = o1187.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1187.Value == L0) then
    DelayedFunction(2, o1187, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1187.Value == L0) then
    o1187["Value"] = L0
    CallFunction(o1185, "ProcesseStateChange")
  end
end }
o1190 = { [nil] = {}, Start = function()
  o1190["Value"] = False
  o2557.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1190.Value == L0) then
    o1190["Value"] = L0
    o2557.ReCalculate()
  end
end }
o1194 = { [nil] = {}, Start = function()
  o1194["Value"] = False
  o2557.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1194.Value == L0) then
    o1194["Value"] = L0
    o2557.ReCalculate()
  end
end }
S_o1224 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1224, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1224, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1224, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1224, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1224, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1224, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1224, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1229.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1233.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1225.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1226.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1225 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1225.SetStateValue(o1225.GetCalculated())
end, StartCalculate = function()
  o1225["Value"] = o1225.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1225.Value == L0) then
    o1225["Value"] = L0
    CallFunction(o1224, "ProcesseStateChange")
  end
end }
o1226 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1226.SetStateValue(o1226.GetCalculated())
end, StartCalculate = function()
  o1226["Value"] = o1226.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1226.Value == L0) then
    DelayedFunction(2, o1226, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1226.Value == L0) then
    o1226["Value"] = L0
    CallFunction(o1224, "ProcesseStateChange")
  end
end }
o1229 = { [nil] = {}, Start = function()
  o1229["Value"] = False
  o2558.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1229.Value == L0) then
    o1229["Value"] = L0
    o2558.ReCalculate()
  end
end }
o1233 = { [nil] = {}, Start = function()
  o1233["Value"] = False
  o2558.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1233.Value == L0) then
    o1233["Value"] = L0
    o2558.ReCalculate()
  end
end }
S_o1263 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1263, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1263, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1263, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1263, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1263, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1263, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1263, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1268.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1272.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1264.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1265.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1264 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1264.SetStateValue(o1264.GetCalculated())
end, StartCalculate = function()
  o1264["Value"] = o1264.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1264.Value == L0) then
    o1264["Value"] = L0
    CallFunction(o1263, "ProcesseStateChange")
  end
end }
o1265 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1265.SetStateValue(o1265.GetCalculated())
end, StartCalculate = function()
  o1265["Value"] = o1265.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1265.Value == L0) then
    DelayedFunction(2, o1265, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1265.Value == L0) then
    o1265["Value"] = L0
    CallFunction(o1263, "ProcesseStateChange")
  end
end }
o1268 = { [nil] = {}, Start = function()
  o1268["Value"] = False
  o2559.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1268.Value == L0) then
    o1268["Value"] = L0
    o2559.ReCalculate()
  end
end }
o1272 = { [nil] = {}, Start = function()
  o1272["Value"] = False
  o2559.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1272.Value == L0) then
    o1272["Value"] = L0
    o2559.ReCalculate()
  end
end }
S_o1302 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1302, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1302, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1302, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1305.SetStateValue(L1)
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
o1305 = { [nil] = {}, Start = function()
  o1305["Value"] = False
  o1338.StartCalculate()
  o1339.StartCalculate()
  o1377.StartCalculate()
  o1378.StartCalculate()
  o1416.StartCalculate()
  o1417.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1305.Value == L0) then
    o1305["Value"] = L0
    o1338.ReCalculate()
    o1339.ReCalculate()
    o1377.ReCalculate()
    o1378.ReCalculate()
    o1416.ReCalculate()
    o1417.ReCalculate()
  end
end }
S_o1337 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1337, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1337, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1337, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1337, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1337, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1337, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1337, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1342.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1346.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1338.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1339.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1338 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1338.SetStateValue(o1338.GetCalculated())
end, StartCalculate = function()
  o1338["Value"] = o1338.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1338.Value == L0) then
    o1338["Value"] = L0
    CallFunction(o1337, "ProcesseStateChange")
  end
end }
o1339 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1339.SetStateValue(o1339.GetCalculated())
end, StartCalculate = function()
  o1339["Value"] = o1339.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1339.Value == L0) then
    DelayedFunction(2, o1339, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1339.Value == L0) then
    o1339["Value"] = L0
    CallFunction(o1337, "ProcesseStateChange")
  end
end }
o1342 = { [nil] = {}, Start = function()
  o1342["Value"] = False
  o2560.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1342.Value == L0) then
    o1342["Value"] = L0
    o2560.ReCalculate()
  end
end }
o1346 = { [nil] = {}, Start = function()
  o1346["Value"] = False
  o2560.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1346.Value == L0) then
    o1346["Value"] = L0
    o2560.ReCalculate()
  end
end }
S_o1376 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1376, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1376, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1376, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1376, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1376, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1376, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1376, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1381.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1385.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1377.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1378.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1377 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1377.SetStateValue(o1377.GetCalculated())
end, StartCalculate = function()
  o1377["Value"] = o1377.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1377.Value == L0) then
    o1377["Value"] = L0
    CallFunction(o1376, "ProcesseStateChange")
  end
end }
o1378 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1378.SetStateValue(o1378.GetCalculated())
end, StartCalculate = function()
  o1378["Value"] = o1378.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1378.Value == L0) then
    DelayedFunction(2, o1378, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1378.Value == L0) then
    o1378["Value"] = L0
    CallFunction(o1376, "ProcesseStateChange")
  end
end }
o1381 = { [nil] = {}, Start = function()
  o1381["Value"] = False
  o2561.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1381.Value == L0) then
    o1381["Value"] = L0
    o2561.ReCalculate()
  end
end }
o1385 = { [nil] = {}, Start = function()
  o1385["Value"] = False
  o2561.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1385.Value == L0) then
    o1385["Value"] = L0
    o2561.ReCalculate()
  end
end }
S_o1415 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1415, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1415, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1415, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1415, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1415, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1415, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1415, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1420.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1424.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1416.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1417.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1416 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1416.SetStateValue(o1416.GetCalculated())
end, StartCalculate = function()
  o1416["Value"] = o1416.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1416.Value == L0) then
    o1416["Value"] = L0
    CallFunction(o1415, "ProcesseStateChange")
  end
end }
o1417 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1417.SetStateValue(o1417.GetCalculated())
end, StartCalculate = function()
  o1417["Value"] = o1417.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1417.Value == L0) then
    DelayedFunction(2, o1417, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1417.Value == L0) then
    o1417["Value"] = L0
    CallFunction(o1415, "ProcesseStateChange")
  end
end }
o1420 = { [nil] = {}, Start = function()
  o1420["Value"] = False
  o2562.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1420.Value == L0) then
    o1420["Value"] = L0
    o2562.ReCalculate()
  end
end }
o1424 = { [nil] = {}, Start = function()
  o1424["Value"] = False
  o2562.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1424.Value == L0) then
    o1424["Value"] = L0
    o2562.ReCalculate()
  end
end }
S_o1454 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1454, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1454, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1454, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1457.SetStateValue(L1)
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
o1457 = { [nil] = {}, Start = function()
  o1457["Value"] = False
  o2549.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1457.Value == L0) then
    o1457["Value"] = L0
    o2549.ReCalculate()
  end
end }
S_o1489 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1489, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1489, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1489, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1489, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1489, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1489, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1489, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1494.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1498.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1490.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1491.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1490 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1490.SetStateValue(o1490.GetCalculated())
end, StartCalculate = function()
  o1490["Value"] = o1490.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1490.Value == L0) then
    o1490["Value"] = L0
    CallFunction(o1489, "ProcesseStateChange")
  end
end }
o1491 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1491.SetStateValue(o1491.GetCalculated())
end, StartCalculate = function()
  o1491["Value"] = o1491.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1491.Value == L0) then
    DelayedFunction(2, o1491, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1491.Value == L0) then
    o1491["Value"] = L0
    CallFunction(o1489, "ProcesseStateChange")
  end
end }
o1494 = { [nil] = {}, Start = function()
  o1494["Value"] = False
  o2563.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1494.Value == L0) then
    o1494["Value"] = L0
    o2563.ReCalculate()
  end
end }
o1498 = { [nil] = {}, Start = function()
  o1498["Value"] = False
  o2563.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1498.Value == L0) then
    o1498["Value"] = L0
    o2563.ReCalculate()
  end
end }
S_o1528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1528, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1528, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1528, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1528, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1528, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1528, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1528, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1533.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1537.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1529.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1530.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1529 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1529.SetStateValue(o1529.GetCalculated())
end, StartCalculate = function()
  o1529["Value"] = o1529.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1529.Value == L0) then
    o1529["Value"] = L0
    CallFunction(o1528, "ProcesseStateChange")
  end
end }
o1530 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1530.SetStateValue(o1530.GetCalculated())
end, StartCalculate = function()
  o1530["Value"] = o1530.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1530.Value == L0) then
    DelayedFunction(2, o1530, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1530.Value == L0) then
    o1530["Value"] = L0
    CallFunction(o1528, "ProcesseStateChange")
  end
end }
o1533 = { [nil] = {}, Start = function()
  o1533["Value"] = False
  o2564.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1533.Value == L0) then
    o1533["Value"] = L0
    o2564.ReCalculate()
  end
end }
o1537 = { [nil] = {}, Start = function()
  o1537["Value"] = False
  o2564.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1537.Value == L0) then
    o1537["Value"] = L0
    o2564.ReCalculate()
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
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1567, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1567, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1567, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1567, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1572.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1576.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1568.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1569.Value ~= True) then
        L1 = 0
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
  if not (o2549.Value ~= True) then
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
    CallFunction(o1567, "ProcesseStateChange")
  end
end }
o1569 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1569.SetStateValue(o1569.GetCalculated())
end, StartCalculate = function()
  o1569["Value"] = o1569.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1569.Value == L0) then
    DelayedFunction(2, o1569, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1569.Value == L0) then
    o1569["Value"] = L0
    CallFunction(o1567, "ProcesseStateChange")
  end
end }
o1572 = { [nil] = {}, Start = function()
  o1572["Value"] = False
  o2565.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1572.Value == L0) then
    o1572["Value"] = L0
    o2565.ReCalculate()
  end
end }
o1576 = { [nil] = {}, Start = function()
  o1576["Value"] = False
  o2565.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1576.Value == L0) then
    o1576["Value"] = L0
    o2565.ReCalculate()
  end
end }
S_o1606 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1606, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1606, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1606, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1606, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1606, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1606, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1606, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1611.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1615.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1607.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1608.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1607 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1607.SetStateValue(o1607.GetCalculated())
end, StartCalculate = function()
  o1607["Value"] = o1607.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1607.Value == L0) then
    o1607["Value"] = L0
    CallFunction(o1606, "ProcesseStateChange")
  end
end }
o1608 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1608.SetStateValue(o1608.GetCalculated())
end, StartCalculate = function()
  o1608["Value"] = o1608.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1608.Value == L0) then
    DelayedFunction(2, o1608, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1608.Value == L0) then
    o1608["Value"] = L0
    CallFunction(o1606, "ProcesseStateChange")
  end
end }
o1611 = { [nil] = {}, Start = function()
  o1611["Value"] = False
  o2566.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1611.Value == L0) then
    o1611["Value"] = L0
    o2566.ReCalculate()
  end
end }
o1615 = { [nil] = {}, Start = function()
  o1615["Value"] = False
  o2566.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1615.Value == L0) then
    o1615["Value"] = L0
    o2566.ReCalculate()
  end
end }
S_o1645 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1645, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1645, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1645, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1645, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1645, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1645, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1645, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1650.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1654.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1646.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1647.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1646 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1646.SetStateValue(o1646.GetCalculated())
end, StartCalculate = function()
  o1646["Value"] = o1646.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1646.Value == L0) then
    o1646["Value"] = L0
    CallFunction(o1645, "ProcesseStateChange")
  end
end }
o1647 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1647.SetStateValue(o1647.GetCalculated())
end, StartCalculate = function()
  o1647["Value"] = o1647.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1647.Value == L0) then
    DelayedFunction(2, o1647, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1647.Value == L0) then
    o1647["Value"] = L0
    CallFunction(o1645, "ProcesseStateChange")
  end
end }
o1650 = { [nil] = {}, Start = function()
  o1650["Value"] = False
  o2567.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1650.Value == L0) then
    o1650["Value"] = L0
    o2567.ReCalculate()
  end
end }
o1654 = { [nil] = {}, Start = function()
  o1654["Value"] = False
  o2567.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1654.Value == L0) then
    o1654["Value"] = L0
    o2567.ReCalculate()
  end
end }
S_o1684 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1684, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1684, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1684, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1684, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1684, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1684, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1684, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1689.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1693.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1685.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1686.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1685 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1685.SetStateValue(o1685.GetCalculated())
end, StartCalculate = function()
  o1685["Value"] = o1685.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1685.Value == L0) then
    o1685["Value"] = L0
    CallFunction(o1684, "ProcesseStateChange")
  end
end }
o1686 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1686.SetStateValue(o1686.GetCalculated())
end, StartCalculate = function()
  o1686["Value"] = o1686.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1686.Value == L0) then
    DelayedFunction(2, o1686, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1686.Value == L0) then
    o1686["Value"] = L0
    CallFunction(o1684, "ProcesseStateChange")
  end
end }
o1689 = { [nil] = {}, Start = function()
  o1689["Value"] = False
  o2568.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1689.Value == L0) then
    o1689["Value"] = L0
    o2568.ReCalculate()
  end
end }
o1693 = { [nil] = {}, Start = function()
  o1693["Value"] = False
  o2568.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1693.Value == L0) then
    o1693["Value"] = L0
    o2568.ReCalculate()
  end
end }
S_o1723 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1723, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1723, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1723, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1723, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1723, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1723, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1723, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1728.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1732.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1724.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1725.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1724 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1724.SetStateValue(o1724.GetCalculated())
end, StartCalculate = function()
  o1724["Value"] = o1724.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1724.Value == L0) then
    o1724["Value"] = L0
    CallFunction(o1723, "ProcesseStateChange")
  end
end }
o1725 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1725.SetStateValue(o1725.GetCalculated())
end, StartCalculate = function()
  o1725["Value"] = o1725.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1725.Value == L0) then
    DelayedFunction(2, o1725, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1725.Value == L0) then
    o1725["Value"] = L0
    CallFunction(o1723, "ProcesseStateChange")
  end
end }
o1728 = { [nil] = {}, Start = function()
  o1728["Value"] = False
  o2569.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1728.Value == L0) then
    o1728["Value"] = L0
    o2569.ReCalculate()
  end
end }
o1732 = { [nil] = {}, Start = function()
  o1732["Value"] = False
  o2569.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1732.Value == L0) then
    o1732["Value"] = L0
    o2569.ReCalculate()
  end
end }
S_o1762 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1762, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1762, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1762, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1762, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1762, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1762, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1762, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1767.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1771.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1763.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1764.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1763 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1763.SetStateValue(o1763.GetCalculated())
end, StartCalculate = function()
  o1763["Value"] = o1763.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1763.Value == L0) then
    o1763["Value"] = L0
    CallFunction(o1762, "ProcesseStateChange")
  end
end }
o1764 = { [nil] = {}, GetCalculated = function()
  if not (o2549.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1764.SetStateValue(o1764.GetCalculated())
end, StartCalculate = function()
  o1764["Value"] = o1764.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1764.Value == L0) then
    DelayedFunction(2, o1764, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1764.Value == L0) then
    o1764["Value"] = L0
    CallFunction(o1762, "ProcesseStateChange")
  end
end }
o1767 = { [nil] = {}, Start = function()
  o1767["Value"] = False
  o2570.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1767.Value == L0) then
    o1767["Value"] = L0
    o2570.ReCalculate()
  end
end }
o1771 = { [nil] = {}, Start = function()
  o1771["Value"] = False
  o2570.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1771.Value == L0) then
    o1771["Value"] = L0
    o2570.ReCalculate()
  end
end }
S_o1801 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1801, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1801, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1801, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1804.SetStateValue(L1)
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
o1804 = { [nil] = {}, Start = function()
  o1804["Value"] = False
  o1837.StartCalculate()
  o1838.StartCalculate()
  o1876.StartCalculate()
  o1877.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1804.Value == L0) then
    o1804["Value"] = L0
    o1837.ReCalculate()
    o1838.ReCalculate()
    o1876.ReCalculate()
    o1877.ReCalculate()
  end
end }
S_o1836 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1836, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1836, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1836, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1836, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1836, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1836, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1836, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1841.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1845.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1837.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1838.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1837 = { [nil] = {}, GetCalculated = function()
  if not (o1804.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1837.SetStateValue(o1837.GetCalculated())
end, StartCalculate = function()
  o1837["Value"] = o1837.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1837.Value == L0) then
    o1837["Value"] = L0
    CallFunction(o1836, "ProcesseStateChange")
  end
end }
o1838 = { [nil] = {}, GetCalculated = function()
  if not (o1804.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1838.SetStateValue(o1838.GetCalculated())
end, StartCalculate = function()
  o1838["Value"] = o1838.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1838.Value == L0) then
    DelayedFunction(2, o1838, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1838.Value == L0) then
    o1838["Value"] = L0
    CallFunction(o1836, "ProcesseStateChange")
  end
end }
o1841 = { [nil] = {}, Start = function()
  o1841["Value"] = False
  o2571.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1841.Value == L0) then
    o1841["Value"] = L0
    o2571.ReCalculate()
  end
end }
o1845 = { [nil] = {}, Start = function()
  o1845["Value"] = False
  o2571.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1845.Value == L0) then
    o1845["Value"] = L0
    o2571.ReCalculate()
  end
end }
S_o1875 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1875, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1875, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1875, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1875, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1875, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1875, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1875, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1880.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1884.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1876.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1877.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1876 = { [nil] = {}, GetCalculated = function()
  if not (o1804.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1876.SetStateValue(o1876.GetCalculated())
end, StartCalculate = function()
  o1876["Value"] = o1876.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1876.Value == L0) then
    o1876["Value"] = L0
    CallFunction(o1875, "ProcesseStateChange")
  end
end }
o1877 = { [nil] = {}, GetCalculated = function()
  if not (o1804.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1877.SetStateValue(o1877.GetCalculated())
end, StartCalculate = function()
  o1877["Value"] = o1877.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1877.Value == L0) then
    DelayedFunction(2, o1877, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1877.Value == L0) then
    o1877["Value"] = L0
    CallFunction(o1875, "ProcesseStateChange")
  end
end }
o1880 = { [nil] = {}, Start = function()
  o1880["Value"] = False
  o2572.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1880.Value == L0) then
    o1880["Value"] = L0
    o2572.ReCalculate()
  end
end }
o1884 = { [nil] = {}, Start = function()
  o1884["Value"] = False
  o2572.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1884.Value == L0) then
    o1884["Value"] = L0
    o2572.ReCalculate()
  end
end }
S_o1914 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1914, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1914, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1914, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1917.SetStateValue(L1)
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
o1917 = { [nil] = {}, Start = function()
  o1917["Value"] = False
  o1950.StartCalculate()
  o1951.StartCalculate()
  o1989.StartCalculate()
  o1990.StartCalculate()
  o2028.StartCalculate()
  o2029.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1917.Value == L0) then
    o1917["Value"] = L0
    o1950.ReCalculate()
    o1951.ReCalculate()
    o1989.ReCalculate()
    o1990.ReCalculate()
    o2028.ReCalculate()
    o2029.ReCalculate()
  end
end }
S_o1949 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1949, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1949, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1949, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1949, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1949, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1949, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1949, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1954.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1958.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1950.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1951.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1950 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1950.SetStateValue(o1950.GetCalculated())
end, StartCalculate = function()
  o1950["Value"] = o1950.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1950.Value == L0) then
    o1950["Value"] = L0
    CallFunction(o1949, "ProcesseStateChange")
  end
end }
o1951 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1951.SetStateValue(o1951.GetCalculated())
end, StartCalculate = function()
  o1951["Value"] = o1951.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1951.Value == L0) then
    DelayedFunction(2, o1951, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1951.Value == L0) then
    o1951["Value"] = L0
    CallFunction(o1949, "ProcesseStateChange")
  end
end }
o1954 = { [nil] = {}, Start = function()
  o1954["Value"] = False
  o2573.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1954.Value == L0) then
    o1954["Value"] = L0
    o2573.ReCalculate()
  end
end }
o1958 = { [nil] = {}, Start = function()
  o1958["Value"] = False
  o2573.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1958.Value == L0) then
    o1958["Value"] = L0
    o2573.ReCalculate()
  end
end }
S_o1988 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1988, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1988, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1988, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o1988, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o1988, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1988, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1988, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1993.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1997.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1989.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1990.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1989 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1989.SetStateValue(o1989.GetCalculated())
end, StartCalculate = function()
  o1989["Value"] = o1989.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1989.Value == L0) then
    o1989["Value"] = L0
    CallFunction(o1988, "ProcesseStateChange")
  end
end }
o1990 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1990.SetStateValue(o1990.GetCalculated())
end, StartCalculate = function()
  o1990["Value"] = o1990.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1990.Value == L0) then
    DelayedFunction(2, o1990, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1990.Value == L0) then
    o1990["Value"] = L0
    CallFunction(o1988, "ProcesseStateChange")
  end
end }
o1993 = { [nil] = {}, Start = function()
  o1993["Value"] = False
  o2574.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1993.Value == L0) then
    o1993["Value"] = L0
    o2574.ReCalculate()
  end
end }
o1997 = { [nil] = {}, Start = function()
  o1997["Value"] = False
  o2574.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1997.Value == L0) then
    o1997["Value"] = L0
    o2574.ReCalculate()
  end
end }
S_o2027 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2027, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2027, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2027, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 100, -15, 75)
  CallFunction(o2027, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 380, "E", "", "", "", "Code5")
  else
    CallFunction(o2027, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2027, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2027, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2032.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o2036.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2028.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2029.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2028 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2028.SetStateValue(o2028.GetCalculated())
end, StartCalculate = function()
  o2028["Value"] = o2028.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2028.Value == L0) then
    o2028["Value"] = L0
    CallFunction(o2027, "ProcesseStateChange")
  end
end }
o2029 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2029.SetStateValue(o2029.GetCalculated())
end, StartCalculate = function()
  o2029["Value"] = o2029.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2029.Value == L0) then
    DelayedFunction(2, o2029, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2029.Value == L0) then
    o2029["Value"] = L0
    CallFunction(o2027, "ProcesseStateChange")
  end
end }
o2032 = { [nil] = {}, Start = function()
  o2032["Value"] = False
  o2575.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2032.Value == L0) then
    o2032["Value"] = L0
    o2575.ReCalculate()
  end
end }
o2036 = { [nil] = {}, Start = function()
  o2036["Value"] = False
  o2575.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2036.Value == L0) then
    o2036["Value"] = L0
    o2575.ReCalculate()
  end
end }
S_o2066 = { [nil] = {}, Start = function(L0)

end }
S_o2100 = { [nil] = {}, Start = function(L0)

end }
S_o2134 = { [nil] = {}, Start = function(L0)

end }
S_o2168 = { [nil] = {}, Start = function(L0)

end }
S_o2202 = { [nil] = {}, Start = function(L0)

end }
S_o2236 = { [nil] = {}, Start = function(L0)

end }
S_o2270 = { [nil] = {}, Start = function(L0)

end }
S_o2304 = { [nil] = {}, Start = function(L0)

end }
S_o2338 = { [nil] = {}, Start = function(L0)

end }
S_o2372 = { [nil] = {}, Start = function(L0)

end }
S_o2406 = { [nil] = {}, Start = function(L0)

end }
S_o2440 = { [nil] = {}, Start = function(L0)

end }
S_o2474 = { [nil] = {}, Start = function(L0)

end }
S_o2508 = { [nil] = {}, Start = function(L0)

end }
S_o2542 = { [nil] = {}, Start = function(L0)

end }
S_o2543 = { [nil] = {}, Start = function(L0)

end }
S_o2544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "ammo_shell", 3000)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_tigershark", 10)
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "DEVICE_REPAIR", 1)
  Body_AddItem(L0.Node, "device_generator0", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  CallFunction(o2544, "Code10")
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
o2549 = { [nil] = {}, GetCalculated = function()
  if not (o1457.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2549.SetStateValue(o2549.GetCalculated())
end, StartCalculate = function()
  o2549["Value"] = o2549.GetCalculated()
  o1490.StartCalculate()
  o1491.StartCalculate()
  o1529.StartCalculate()
  o1530.StartCalculate()
  o1568.StartCalculate()
  o1569.StartCalculate()
  o1607.StartCalculate()
  o1608.StartCalculate()
  o1646.StartCalculate()
  o1647.StartCalculate()
  o1685.StartCalculate()
  o1686.StartCalculate()
  o1724.StartCalculate()
  o1725.StartCalculate()
  o1763.StartCalculate()
  o1764.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2549.Value == L0) then
    o2549["Value"] = L0
    o1490.ReCalculate()
    o1491.ReCalculate()
    o1529.ReCalculate()
    o1530.ReCalculate()
    o1568.ReCalculate()
    o1569.ReCalculate()
    o1607.ReCalculate()
    o1608.ReCalculate()
    o1646.ReCalculate()
    o1647.ReCalculate()
    o1685.ReCalculate()
    o1686.ReCalculate()
    o1724.ReCalculate()
    o1725.ReCalculate()
    o1763.ReCalculate()
    o1764.ReCalculate()
  end
end }
o2550 = { [nil] = {}, GetCalculated = function()
  if not (o848.Value == True) then
    if not (o885.Value == True) then
      if not (o924.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o2550.SetStateValue(o2550.GetCalculated())
end, StartCalculate = function()
  o2550["Value"] = o2550.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2667.Node, o2544.Node, 104)
end, SetStateValue = function(L0)
  if not (o2550.Value == L0) then
    o2550["Value"] = L0
    if not (L0 ~= 1) then
      o2550.ChangeTo1()
    end
  end
end }
o2551 = { [nil] = {}, GetCalculated = function()
  if not (o886.Value == True) then
    if not (o890.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2551.SetStateValue(o2551.GetCalculated())
end, StartCalculate = function()
  o2551["Value"] = o2551.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death A1")
end, SetStateValue = function(L0)
  if not (o2551.Value == L0) then
    o2551["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2551.ChangeTo1()
    end
  end
end }
o2552 = { [nil] = {}, GetCalculated = function()
  if not (o925.Value == True) then
    if not (o929.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2552.SetStateValue(o2552.GetCalculated())
end, StartCalculate = function()
  o2552["Value"] = o2552.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death A2")
end, SetStateValue = function(L0)
  if not (o2552.Value == L0) then
    o2552["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2552.ChangeTo1()
    end
  end
end }
o2553 = { [nil] = {}, GetCalculated = function()
  if not (o999.Value == True) then
    if not (o1003.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2553.SetStateValue(o2553.GetCalculated())
end, StartCalculate = function()
  o2553["Value"] = o2553.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death B1")
end, SetStateValue = function(L0)
  if not (o2553.Value == L0) then
    o2553["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2553.ChangeTo1()
    end
  end
end }
o2554 = { [nil] = {}, GetCalculated = function()
  if not (o1038.Value == True) then
    if not (o1042.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2554.SetStateValue(o2554.GetCalculated())
end, StartCalculate = function()
  o2554["Value"] = o2554.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death B2")
end, SetStateValue = function(L0)
  if not (o2554.Value == L0) then
    o2554["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2554.ChangeTo1()
    end
  end
end }
o2555 = { [nil] = {}, GetCalculated = function()
  if not (o1112.Value == True) then
    if not (o1116.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2555.SetStateValue(o2555.GetCalculated())
end, StartCalculate = function()
  o2555["Value"] = o2555.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death C1")
end, SetStateValue = function(L0)
  if not (o2555.Value == L0) then
    o2555["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2555.ChangeTo1()
    end
  end
end }
o2556 = { [nil] = {}, GetCalculated = function()
  if not (o1151.Value == True) then
    if not (o1155.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2556.SetStateValue(o2556.GetCalculated())
end, StartCalculate = function()
  o2556["Value"] = o2556.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death C2")
end, SetStateValue = function(L0)
  if not (o2556.Value == L0) then
    o2556["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2556.ChangeTo1()
    end
  end
end }
o2557 = { [nil] = {}, GetCalculated = function()
  if not (o1190.Value == True) then
    if not (o1194.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2557.SetStateValue(o2557.GetCalculated())
end, StartCalculate = function()
  o2557["Value"] = o2557.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death C3")
end, SetStateValue = function(L0)
  if not (o2557.Value == L0) then
    o2557["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2557.ChangeTo1()
    end
  end
end }
o2558 = { [nil] = {}, GetCalculated = function()
  if not (o1229.Value == True) then
    if not (o1233.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2558.SetStateValue(o2558.GetCalculated())
end, StartCalculate = function()
  o2558["Value"] = o2558.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death D1")
end, SetStateValue = function(L0)
  if not (o2558.Value == L0) then
    o2558["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2558.ChangeTo1()
    end
  end
end }
o2559 = { [nil] = {}, GetCalculated = function()
  if not (o1268.Value == True) then
    if not (o1272.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2559.SetStateValue(o2559.GetCalculated())
end, StartCalculate = function()
  o2559["Value"] = o2559.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death D2")
end, SetStateValue = function(L0)
  if not (o2559.Value == L0) then
    o2559["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2559.ChangeTo1()
    end
  end
end }
o2560 = { [nil] = {}, GetCalculated = function()
  if not (o1342.Value == True) then
    if not (o1346.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2560.SetStateValue(o2560.GetCalculated())
end, StartCalculate = function()
  o2560["Value"] = o2560.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death E1")
end, SetStateValue = function(L0)
  if not (o2560.Value == L0) then
    o2560["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2560.ChangeTo1()
    end
  end
end }
o2561 = { [nil] = {}, GetCalculated = function()
  if not (o1381.Value == True) then
    if not (o1385.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2561.SetStateValue(o2561.GetCalculated())
end, StartCalculate = function()
  o2561["Value"] = o2561.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death E2")
end, SetStateValue = function(L0)
  if not (o2561.Value == L0) then
    o2561["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2561.ChangeTo1()
    end
  end
end }
o2562 = { [nil] = {}, GetCalculated = function()
  if not (o1420.Value == True) then
    if not (o1424.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2562.SetStateValue(o2562.GetCalculated())
end, StartCalculate = function()
  o2562["Value"] = o2562.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death E3")
end, SetStateValue = function(L0)
  if not (o2562.Value == L0) then
    o2562["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2562.ChangeTo1()
    end
  end
end }
o2563 = { [nil] = {}, GetCalculated = function()
  if not (o1494.Value == True) then
    if not (o1498.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2563.SetStateValue(o2563.GetCalculated())
end, StartCalculate = function()
  o2563["Value"] = o2563.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F1")
end, SetStateValue = function(L0)
  if not (o2563.Value == L0) then
    o2563["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2563.ChangeTo1()
    end
  end
end }
o2564 = { [nil] = {}, GetCalculated = function()
  if not (o1533.Value == True) then
    if not (o1537.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2564.SetStateValue(o2564.GetCalculated())
end, StartCalculate = function()
  o2564["Value"] = o2564.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F2")
end, SetStateValue = function(L0)
  if not (o2564.Value == L0) then
    o2564["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2564.ChangeTo1()
    end
  end
end }
o2565 = { [nil] = {}, GetCalculated = function()
  if not (o1572.Value == True) then
    if not (o1576.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2565.SetStateValue(o2565.GetCalculated())
end, StartCalculate = function()
  o2565["Value"] = o2565.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F3")
end, SetStateValue = function(L0)
  if not (o2565.Value == L0) then
    o2565["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2565.ChangeTo1()
    end
  end
end }
o2566 = { [nil] = {}, GetCalculated = function()
  if not (o1611.Value == True) then
    if not (o1615.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2566.SetStateValue(o2566.GetCalculated())
end, StartCalculate = function()
  o2566["Value"] = o2566.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F4")
end, SetStateValue = function(L0)
  if not (o2566.Value == L0) then
    o2566["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2566.ChangeTo1()
    end
  end
end }
o2567 = { [nil] = {}, GetCalculated = function()
  if not (o1650.Value == True) then
    if not (o1654.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2567.SetStateValue(o2567.GetCalculated())
end, StartCalculate = function()
  o2567["Value"] = o2567.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F5")
end, SetStateValue = function(L0)
  if not (o2567.Value == L0) then
    o2567["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2567.ChangeTo1()
    end
  end
end }
o2568 = { [nil] = {}, GetCalculated = function()
  if not (o1689.Value == True) then
    if not (o1693.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2568.SetStateValue(o2568.GetCalculated())
end, StartCalculate = function()
  o2568["Value"] = o2568.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F6")
end, SetStateValue = function(L0)
  if not (o2568.Value == L0) then
    o2568["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2568.ChangeTo1()
    end
  end
end }
o2569 = { [nil] = {}, GetCalculated = function()
  if not (o1728.Value == True) then
    if not (o1732.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2569.SetStateValue(o2569.GetCalculated())
end, StartCalculate = function()
  o2569["Value"] = o2569.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F7")
end, SetStateValue = function(L0)
  if not (o2569.Value == L0) then
    o2569["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2569.ChangeTo1()
    end
  end
end }
o2570 = { [nil] = {}, GetCalculated = function()
  if not (o1767.Value == True) then
    if not (o1771.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2570.SetStateValue(o2570.GetCalculated())
end, StartCalculate = function()
  o2570["Value"] = o2570.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death F8")
end, SetStateValue = function(L0)
  if not (o2570.Value == L0) then
    o2570["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2570.ChangeTo1()
    end
  end
end }
o2571 = { [nil] = {}, GetCalculated = function()
  if not (o1841.Value == True) then
    if not (o1845.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2571.SetStateValue(o2571.GetCalculated())
end, StartCalculate = function()
  o2571["Value"] = o2571.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death G1")
end, SetStateValue = function(L0)
  if not (o2571.Value == L0) then
    o2571["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2571.ChangeTo1()
    end
  end
end }
o2572 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value == True) then
    if not (o1884.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2572.SetStateValue(o2572.GetCalculated())
end, StartCalculate = function()
  o2572["Value"] = o2572.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death G2")
end, SetStateValue = function(L0)
  if not (o2572.Value == L0) then
    o2572["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2572.ChangeTo1()
    end
  end
end }
o2573 = { [nil] = {}, GetCalculated = function()
  if not (o1954.Value == True) then
    if not (o1958.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2573.SetStateValue(o2573.GetCalculated())
end, StartCalculate = function()
  o2573["Value"] = o2573.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death H1")
end, SetStateValue = function(L0)
  if not (o2573.Value == L0) then
    o2573["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2573.ChangeTo1()
    end
  end
end }
o2574 = { [nil] = {}, GetCalculated = function()
  if not (o1993.Value == True) then
    if not (o1997.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2574.SetStateValue(o2574.GetCalculated())
end, StartCalculate = function()
  o2574["Value"] = o2574.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death H2")
end, SetStateValue = function(L0)
  if not (o2574.Value == L0) then
    o2574["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2574.ChangeTo1()
    end
  end
end }
o2575 = { [nil] = {}, GetCalculated = function()
  if not (o2032.Value == True) then
    if not (o2036.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2575.SetStateValue(o2575.GetCalculated())
end, StartCalculate = function()
  o2575["Value"] = o2575.GetCalculated()
  o2576.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Death H3")
end, SetStateValue = function(L0)
  if not (o2575.Value == L0) then
    o2575["Value"] = L0
    o2576.ReCalculate()
    if not (L0 ~= 1) then
      o2575.ChangeTo1()
    end
  end
end }
o2576 = { [nil] = {}, GetCalculated = function()
  if not (o2551.Value ~= True) then
    if not (o2552.Value ~= True) then
      if not (o2553.Value ~= True) then
        if not (o2554.Value ~= True) then
          if not (o2555.Value ~= True) then
            if not (o2556.Value ~= True) then
              if not (o2557.Value ~= True) then
                if not (o2558.Value ~= True) then
                  if not (o2559.Value ~= True) then
                    if not (o2560.Value ~= True) then
                      if not (o2561.Value ~= True) then
                        if not (o2562.Value ~= True) then
                          if not (o2563.Value ~= True) then
                            if not (o2564.Value ~= True) then
                              if not (o2565.Value ~= True) then
                                if not (o2566.Value ~= True) then
                                  if not (o2567.Value ~= True) then
                                    if not (o2568.Value ~= True) then
                                      if not (o2569.Value ~= True) then
                                        if not (o2570.Value ~= True) then
                                          if not (o2571.Value ~= True) then
                                            if not (o2572.Value ~= True) then
                                              if not (o2573.Value ~= True) then
                                                if not (o2574.Value ~= True) then
                                                  if not (o2575.Value ~= True) then
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
end, ReCalculate = function()
  o2576.SetStateValue(o2576.GetCalculated())
end, StartCalculate = function()
  o2576["Value"] = o2576.GetCalculated()
  o2725.StartCalculate()
  o3372.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("ALL TURRETS DEAD")
end, SetStateValue = function(L0)
  if not (o2576.Value == L0) then
    o2576["Value"] = L0
    o2725.ReCalculate()
    o3372.ReCalculate()
    if not (L0 ~= 1) then
      o2576.ChangeTo1()
    end
  end
end }
o2577 = { [nil] = {}, GetCalculated = function()
  if not (o2728.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2577.SetStateValue(o2577.GetCalculated())
end, StartCalculate = function()
  o2577["Value"] = o2577.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2544.Node, o2544.Node, 1234)
end, SetStateValue = function(L0)
  if not (o2577.Value == L0) then
    o2577["Value"] = L0
    if not (L0 ~= 1) then
      o2577.ChangeTo1()
    end
  end
end }
o2578 = { [nil] = {}, GetCalculated = function()
  if not (o2729.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2578.SetStateValue(o2578.GetCalculated())
end, StartCalculate = function()
  o2578["Value"] = o2578.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2544.Node, o2544.Node, 107)
end, SetStateValue = function(L0)
  if not (o2578.Value == L0) then
    o2578["Value"] = L0
    if not (L0 ~= 1) then
      o2578.ChangeTo1()
    end
  end
end }
o2579 = { [nil] = {}, GetCalculated = function()
  if not (o2726.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2579.SetStateValue(o2579.GetCalculated())
end, StartCalculate = function()
  o2579["Value"] = o2579.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2544.Node, o2544.Node, 106)
end, SetStateValue = function(L0)
  if not (o2579.Value == L0) then
    o2579["Value"] = L0
    if not (L0 ~= 1) then
      o2579.ChangeTo1()
    end
  end
end }
o2580 = { [nil] = {}, Start = function()
  o2580["Value"] = False
  o2772.StartCalculate()
  o2821.StartCalculate()
  o2870.StartCalculate()
  o2919.StartCalculate()
  o2968.StartCalculate()
  o3017.StartCalculate()
  o3068.StartCalculate()
  o3117.StartCalculate()
  o3165.StartCalculate()
  o3213.StartCalculate()
  o3261.StartCalculate()
  o3309.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2580.Value == L0) then
    o2580["Value"] = L0
    o2772.ReCalculate()
    o2821.ReCalculate()
    o2870.ReCalculate()
    o2919.ReCalculate()
    o2968.ReCalculate()
    o3017.ReCalculate()
    o3068.ReCalculate()
    o3117.ReCalculate()
    o3165.ReCalculate()
    o3213.ReCalculate()
    o3261.ReCalculate()
    o3309.ReCalculate()
  end
end }
o2589 = { [nil] = {}, GetCalculated = function()
  if not (o2729.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2589.SetStateValue(o2589.GetCalculated())
end, StartCalculate = function()
  o2589["Value"] = o2589.GetCalculated()
  o2590.StartCalculate()
  o2773.StartCalculate()
  o2822.StartCalculate()
  o2871.StartCalculate()
  o2920.StartCalculate()
  o2969.StartCalculate()
  o3018.StartCalculate()
  o3067.StartCalculate()
  o3116.StartCalculate()
  o3164.StartCalculate()
  o3212.StartCalculate()
  o3260.StartCalculate()
  o3308.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2589.Value == L0) then
    DelayedFunction(5, o2589, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2589.Value == L0) then
    o2589["Value"] = L0
    o2590.ReCalculate()
    o2773.ReCalculate()
    o2822.ReCalculate()
    o2871.ReCalculate()
    o2920.ReCalculate()
    o2969.ReCalculate()
    o3018.ReCalculate()
    o3067.ReCalculate()
    o3116.ReCalculate()
    o3164.ReCalculate()
    o3212.ReCalculate()
    o3260.ReCalculate()
    o3308.ReCalculate()
  end
end }
o2590 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2590.SetStateValue(o2590.GetCalculated())
end, StartCalculate = function()
  o2590["Value"] = o2590.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2590.Value == L0) then
    o2590["Value"] = L0
    o2.ReCalculate()
  end
end }
o2614 = { [nil] = {}, GetCalculated = function()
  if not (o2728.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2614.SetStateValue(o2614.GetCalculated())
end, StartCalculate = function()
  o2614["Value"] = o2614.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o2614.Value == L0) then
    o2614["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o2614.ChangeTo1()
    end
  end
end }
o2615 = { [nil] = {}, GetCalculated = function()
  if not (o2624.Value == True) then
    if not (o2673.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2615.SetStateValue(o2615.GetCalculated())
end, StartCalculate = function()
  o2615["Value"] = o2615.GetCalculated()
  o27.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("kaputt, verloren")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o2615.Value == L0) then
    o2615["Value"] = L0
    o27.ReCalculate()
    if not (L0 ~= 1) then
      o2615.ChangeTo1()
    end
  end
end }
S_o2618 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2618, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2618, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2618, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2618, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2618, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2624.SetStateValue(L1)
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
o2624 = { [nil] = {}, Start = function()
  o2624["Value"] = False
  o2615.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2624.Value == L0) then
    o2624["Value"] = L0
    o2615.ReCalculate()
  end
end }
S_o2667 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2667, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2667, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2667, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2667, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2667, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2673.SetStateValue(L1)
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
o2673 = { [nil] = {}, Start = function()
  o2673["Value"] = False
  o2615.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2673.Value == L0) then
    o2673["Value"] = L0
    o2615.ReCalculate()
  end
end }
S_o2716 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, o2721.Node)
  CallFunction(o2716, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2721 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2721, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2721, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2721, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.45)
  CallFunction(o2721, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Freighter_Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o2721, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o2508.Node, "DP_hor_1", "DP_hor_1", 0.5, 0.7, 20, "Code6")
  else
    CallFunction(o2721, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Freighter_Path_2", "pos_1", "pos_2", 1, 1 } }("Code7")
  else
    CallFunction(o2721, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o2721, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Attacked = function(L0, L1)
  o2726.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2728.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o2729.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2725.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2725 = { [nil] = {}, GetCalculated = function()
  if not (o2576.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2725.SetStateValue(o2725.GetCalculated())
end, StartCalculate = function()
  o2725["Value"] = o2725.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2725.Value == L0) then
    DelayedFunction(2, o2725, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2725.Value == L0) then
    o2725["Value"] = L0
    CallFunction(o2721, "ProcesseStateChange")
  end
end }
o2726 = { [nil] = {}, Start = function()
  o2726["Value"] = False
  o2579.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2726.Value == L0) then
    o2726["Value"] = L0
    o2579.ReCalculate()
  end
end }
o2728 = { [nil] = {}, Start = function()
  o2728["Value"] = False
  o2577.StartCalculate()
  o2614.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2728.Value == L0) then
    o2728["Value"] = L0
    o2577.ReCalculate()
    o2614.ReCalculate()
  end
end }
o2729 = { [nil] = {}, Start = function()
  o2729["Value"] = False
  o2578.StartCalculate()
  o2589.StartCalculate()
  o3066.StartCalculate()
  o3115.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2729.Value == L0) then
    o2729["Value"] = L0
    o2578.ReCalculate()
    o2589.ReCalculate()
    o3066.ReCalculate()
    o3115.ReCalculate()
  end
end }
S_o2771 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2771, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2771, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2771, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2771, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav1Area", "/Scenario_Dynamic/Navigation/Nav1Area", "/Scenario_Dynamic/Navigation/Nav1Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2771, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code6")
  else
    CallFunction(o2771, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2771, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2772.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2773.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2772 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2772.SetStateValue(o2772.GetCalculated())
end, StartCalculate = function()
  o2772["Value"] = o2772.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2772.Value == L0) then
    DelayedFunction(2, o2772, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2772.Value == L0) then
    o2772["Value"] = L0
    CallFunction(o2771, "ProcesseStateChange")
  end
end }
o2773 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2773.SetStateValue(o2773.GetCalculated())
end, StartCalculate = function()
  o2773["Value"] = o2773.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2773.Value == L0) then
    o2773["Value"] = L0
    CallFunction(o2771, "ProcesseStateChange")
  end
end }
S_o2820 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2820, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2820, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2820, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2820, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav3Area", "/Scenario_Dynamic/Navigation/Nav3Area", "/Scenario_Dynamic/Navigation/Nav3Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2820, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code6")
  else
    CallFunction(o2820, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2820, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2821.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2822.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2821 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2821.SetStateValue(o2821.GetCalculated())
end, StartCalculate = function()
  o2821["Value"] = o2821.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2821.Value == L0) then
    DelayedFunction(2, o2821, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2821.Value == L0) then
    o2821["Value"] = L0
    CallFunction(o2820, "ProcesseStateChange")
  end
end }
o2822 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2822.SetStateValue(o2822.GetCalculated())
end, StartCalculate = function()
  o2822["Value"] = o2822.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2822.Value == L0) then
    o2822["Value"] = L0
    CallFunction(o2820, "ProcesseStateChange")
  end
end }
S_o2869 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2869, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2869, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2869, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2869, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav4Area", "/Scenario_Dynamic/Navigation/Nav4Area", "/Scenario_Dynamic/Navigation/Nav4Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2869, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code6")
  else
    CallFunction(o2869, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2869, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2870.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2871.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2870 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2870.SetStateValue(o2870.GetCalculated())
end, StartCalculate = function()
  o2870["Value"] = o2870.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2870.Value == L0) then
    DelayedFunction(2, o2870, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2870.Value == L0) then
    o2870["Value"] = L0
    CallFunction(o2869, "ProcesseStateChange")
  end
end }
o2871 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2871.SetStateValue(o2871.GetCalculated())
end, StartCalculate = function()
  o2871["Value"] = o2871.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2871.Value == L0) then
    o2871["Value"] = L0
    CallFunction(o2869, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2918, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2918, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav6Area", "/Scenario_Dynamic/Navigation/Nav6Area", "/Scenario_Dynamic/Navigation/Nav6Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2918, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code6")
  else
    CallFunction(o2918, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2918, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2919.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2920.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2919 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2919.SetStateValue(o2919.GetCalculated())
end, StartCalculate = function()
  o2919["Value"] = o2919.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2919.Value == L0) then
    DelayedFunction(2, o2919, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2919.Value == L0) then
    o2919["Value"] = L0
    CallFunction(o2918, "ProcesseStateChange")
  end
end }
o2920 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2920.SetStateValue(o2920.GetCalculated())
end, StartCalculate = function()
  o2920["Value"] = o2920.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2920.Value == L0) then
    o2920["Value"] = L0
    CallFunction(o2918, "ProcesseStateChange")
  end
end }
S_o2967 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2967, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2967, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2967, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2967, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav7Area", "/Scenario_Dynamic/Navigation/Nav7Area", "/Scenario_Dynamic/Navigation/Nav7Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2967, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code6")
  else
    CallFunction(o2967, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2967, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2968.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2969.Value ~= True) then
        L1 = 0
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
  if not (o2580.Value ~= True) then
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
    DelayedFunction(2, o2968, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2968.Value == L0) then
    o2968["Value"] = L0
    CallFunction(o2967, "ProcesseStateChange")
  end
end }
o2969 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2969.SetStateValue(o2969.GetCalculated())
end, StartCalculate = function()
  o2969["Value"] = o2969.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2969.Value == L0) then
    o2969["Value"] = L0
    CallFunction(o2967, "ProcesseStateChange")
  end
end }
S_o3016 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3016, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3016, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3016, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Nav8Area", "/Scenario_Dynamic/Navigation/Nav8Area", "/Scenario_Dynamic/Navigation/Nav8Area", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o3016, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code6")
  else
    CallFunction(o3016, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3016, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3017.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3018.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3017 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3017.SetStateValue(o3017.GetCalculated())
end, StartCalculate = function()
  o3017["Value"] = o3017.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3017.Value == L0) then
    DelayedFunction(2, o3017, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3017.Value == L0) then
    o3017["Value"] = L0
    CallFunction(o3016, "ProcesseStateChange")
  end
end }
o3018 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3018.SetStateValue(o3018.GetCalculated())
end, StartCalculate = function()
  o3018["Value"] = o3018.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3018.Value == L0) then
    o3018["Value"] = L0
    CallFunction(o3016, "ProcesseStateChange")
  end
end }
S_o3065 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3065, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3065, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3065, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "/Scenario_Dynamic/Navigation/Position_1", "Code4")
  else
    CallFunction(o3065, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code5")
  else
    CallFunction(o3065, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o3065, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3068.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3066.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3067.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3066 = { [nil] = {}, GetCalculated = function()
  if not (o2729.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3066.SetStateValue(o3066.GetCalculated())
end, StartCalculate = function()
  o3066["Value"] = o3066.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3066.Value == L0) then
    o3066["Value"] = L0
    CallFunction(o3065, "ProcesseStateChange")
  end
end }
o3067 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3067.SetStateValue(o3067.GetCalculated())
end, StartCalculate = function()
  o3067["Value"] = o3067.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3067.Value == L0) then
    o3067["Value"] = L0
    CallFunction(o3065, "ProcesseStateChange")
  end
end }
o3068 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3068.SetStateValue(o3068.GetCalculated())
end, StartCalculate = function()
  o3068["Value"] = o3068.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3068.Value == L0) then
    o3068["Value"] = L0
    CallFunction(o3065, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3114, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "/Scenario_Dynamic/Navigation/Position_2", "Code4")
  else
    CallFunction(o3114, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code5")
  else
    CallFunction(o3114, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o3114, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3117.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3115.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3116.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3115 = { [nil] = {}, GetCalculated = function()
  if not (o2729.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3115.SetStateValue(o3115.GetCalculated())
end, StartCalculate = function()
  o3115["Value"] = o3115.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3115.Value == L0) then
    o3115["Value"] = L0
    CallFunction(o3114, "ProcesseStateChange")
  end
end }
o3116 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3116.SetStateValue(o3116.GetCalculated())
end, StartCalculate = function()
  o3116["Value"] = o3116.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3116.Value == L0) then
    o3116["Value"] = L0
    CallFunction(o3114, "ProcesseStateChange")
  end
end }
o3117 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3117.SetStateValue(o3117.GetCalculated())
end, StartCalculate = function()
  o3117["Value"] = o3117.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3117.Value == L0) then
    DelayedFunction(1, o3117, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3117.Value == L0) then
    o3117["Value"] = L0
    CallFunction(o3114, "ProcesseStateChange")
  end
end }
S_o3163 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3163, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3163, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3163, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code4")
  else
    CallFunction(o3163, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3163, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3165.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3164.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3164 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3164.SetStateValue(o3164.GetCalculated())
end, StartCalculate = function()
  o3164["Value"] = o3164.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3164.Value == L0) then
    o3164["Value"] = L0
    CallFunction(o3163, "ProcesseStateChange")
  end
end }
o3165 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3165.SetStateValue(o3165.GetCalculated())
end, StartCalculate = function()
  o3165["Value"] = o3165.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3165.Value == L0) then
    DelayedFunction(2, o3165, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3165.Value == L0) then
    o3165["Value"] = L0
    CallFunction(o3163, "ProcesseStateChange")
  end
end }
S_o3211 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3211, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3211, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3211, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code4")
  else
    CallFunction(o3211, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3211, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3213.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3212.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3212 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3212.SetStateValue(o3212.GetCalculated())
end, StartCalculate = function()
  o3212["Value"] = o3212.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3212.Value == L0) then
    o3212["Value"] = L0
    CallFunction(o3211, "ProcesseStateChange")
  end
end }
o3213 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3213.SetStateValue(o3213.GetCalculated())
end, StartCalculate = function()
  o3213["Value"] = o3213.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3213.Value == L0) then
    DelayedFunction(3, o3213, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3213.Value == L0) then
    o3213["Value"] = L0
    CallFunction(o3211, "ProcesseStateChange")
  end
end }
S_o3259 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3259, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3259, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3259, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code4")
  else
    CallFunction(o3259, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3259, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3261.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3260.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3260 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3260.SetStateValue(o3260.GetCalculated())
end, StartCalculate = function()
  o3260["Value"] = o3260.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3260.Value == L0) then
    o3260["Value"] = L0
    CallFunction(o3259, "ProcesseStateChange")
  end
end }
o3261 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3261.SetStateValue(o3261.GetCalculated())
end, StartCalculate = function()
  o3261["Value"] = o3261.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3261.Value == L0) then
    DelayedFunction(4, o3261, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3261.Value == L0) then
    o3261["Value"] = L0
    CallFunction(o3259, "ProcesseStateChange")
  end
end }
S_o3307 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3307, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3307, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3307, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "gen_freighter", "pla", "wng", "", 1, "Code4")
  else
    CallFunction(o3307, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3307, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3309.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3308.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3308 = { [nil] = {}, GetCalculated = function()
  if not (o2589.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3308.SetStateValue(o3308.GetCalculated())
end, StartCalculate = function()
  o3308["Value"] = o3308.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3308.Value == L0) then
    o3308["Value"] = L0
    CallFunction(o3307, "ProcesseStateChange")
  end
end }
o3309 = { [nil] = {}, GetCalculated = function()
  if not (o2580.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3309.SetStateValue(o3309.GetCalculated())
end, StartCalculate = function()
  o3309["Value"] = o3309.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3309.Value == L0) then
    DelayedFunction(5, o3309, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3309.Value == L0) then
    o3309["Value"] = L0
    CallFunction(o3307, "ProcesseStateChange")
  end
end }
S_o3355 = { [nil] = {}, Start = function(L0)

end }
o3357 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 25)
S_o3358 = { [nil] = {}, Start = function(L0)

end }
S_o3359 = { [nil] = {}, Start = function(L0)

end }
S_o3360 = { [nil] = {}, Start = function(L0)

end }
S_o3361 = { [nil] = {}, Start = function(L0)

end }
S_o3362 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_Cut(L0.Node, 2)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/CamPosition_1")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MBTY", 10)
  CallFunction(o3362, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code8")
  else
    CallFunction(o3362, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o2618.Node, o2544.Node, 101)
  SendRadioMessageTake(o2544.Node, o2544.Node, 105)
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/wng_degrange_c2_1", 2, "MBTN", 10)
  CallFunction(o3362, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code12")
  else
    CallFunction(o3362, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/wng_bonham_c2_1", 3, "MBTN", 15)
  CallFunction(o3362, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code14")
  else
    CallFunction(o3362, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_2", 3, "MMMN", 0)
  CallFunction(o3362, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code16")
  else
    CallFunction(o3362, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_3", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/des_A_trafo_1", 3, "MMMN", 0)
  Camera_ZoomAt(L0.Node, "/Scenario_Static/Object/des_A_trafo_1", 5, 0.25)
  CallFunction(o3362, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code20")
  else
    CallFunction(o3362, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1287, -1, -1)
  CallFunction(o2618, "Code3")
  CallFunction(o2667, "Code3")
  CallFunction(o3362, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3369 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o3356, o3357, "/InGameSequences/Navigation/IntroChapter1Path_1")
  CallFunction(o3369, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3356, o3357, "/InGameSequences/Navigation/IntroChapter1Path_1", "pos_1", "pos_4", 0.75, 1, "Code2")
  else
    CallFunction(o3369, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3371 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3371, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o3356, o3357, "/InGameSequences/Navigation/IntroChapter2Path_1")
  CallFunction(o3371, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3356, o3357, "/InGameSequences/Navigation/IntroChapter2Path_1", "pos_1", "pos_1", 1, 1, "Code4")
  else
    CallFunction(o3371, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_Cut(L0.Node, 1)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/CamPosition_4")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/gen_freighter1_1", 0, "MMMN", 20)
  CallFunction(o3371, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code10")
  else
    CallFunction(o3371, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  SendRadioMessageTake(o2544.Node, o2544.Node, 1233)
  CallFunction(o3371, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code12")
  else
    CallFunction(o3371, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_SetWayPoint(GetGameNode(), o2716.Node)
  Director_EndCutscene(L0.Node)
  o2580.SetStateValue(True)
  SED_SetTaskTextKey(1288, -1, -1)
  CallFunction(o2618, "Code4")
  CallFunction(o2667, "Code4")
  CallFunction(o3371, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3372.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3372 = { [nil] = {}, GetCalculated = function()
  if not (o2576.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3372.SetStateValue(o3372.GetCalculated())
end, StartCalculate = function()
  o3372["Value"] = o3372.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3372.Value == L0) then
    DelayedFunction(2, o3372, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3372.Value == L0) then
    o3372["Value"] = L0
    CallFunction(o3371, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 160)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_2_1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_2", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_2", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_3", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_2", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_4", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_2", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_5", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_3", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_4", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_5", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_6", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_2_2", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_2_3", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_2_4", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_6", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_3", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06a_1", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_A_trafo_1", S_o846)
  o848.Start()
  o849.Start()
  o881 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_A_turret_1/Turm1", S_o881)
  o885.Start()
  o886.Start()
  o890.Start()
  o920 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_A_turret_2/Turm1", S_o920)
  o924.Start()
  o925.Start()
  o929.Start()
  o959 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_B_trafo_1", S_o959)
  o962.Start()
  o994 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_B_turret_1/Turm1", S_o994)
  o999.Start()
  o1003.Start()
  o1033 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_B_turret_2/Turm1", S_o1033)
  o1038.Start()
  o1042.Start()
  o1072 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_C_trafo_1", S_o1072)
  o1075.Start()
  o1107 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_C_turret_1/Turm1", S_o1107)
  o1112.Start()
  o1116.Start()
  o1146 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_C_turret_2/Turm1", S_o1146)
  o1151.Start()
  o1155.Start()
  o1185 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_C_turret_3/Turm1", S_o1185)
  o1190.Start()
  o1194.Start()
  o1224 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_D_turret_1/Turm1", S_o1224)
  o1229.Start()
  o1233.Start()
  o1263 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_D_turret_2/Turm1", S_o1263)
  o1268.Start()
  o1272.Start()
  o1302 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_E_trafo_1", S_o1302)
  o1305.Start()
  o1337 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_E_turret_1/Turm1", S_o1337)
  o1342.Start()
  o1346.Start()
  o1376 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_E_turret_2/Turm1", S_o1376)
  o1381.Start()
  o1385.Start()
  o1415 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_E_turret_3/Turm1", S_o1415)
  o1420.Start()
  o1424.Start()
  o1454 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_F_trafo_1", S_o1454)
  o1457.Start()
  o1489 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_1/Turm1", S_o1489)
  o1494.Start()
  o1498.Start()
  o1528 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_2/Turm1", S_o1528)
  o1533.Start()
  o1537.Start()
  o1567 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_3/Turm1", S_o1567)
  o1572.Start()
  o1576.Start()
  o1606 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_4/Turm1", S_o1606)
  o1611.Start()
  o1615.Start()
  o1645 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_5/Turm1", S_o1645)
  o1650.Start()
  o1654.Start()
  o1684 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_6/Turm1", S_o1684)
  o1689.Start()
  o1693.Start()
  o1723 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_7/Turm1", S_o1723)
  o1728.Start()
  o1732.Start()
  o1762 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_F_turret_8/Turm1", S_o1762)
  o1767.Start()
  o1771.Start()
  o1801 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_G_trafo_1", S_o1801)
  o1804.Start()
  o1836 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_G_turret_1/Turm1", S_o1836)
  o1841.Start()
  o1845.Start()
  o1875 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_G_turret_2/Turm1", S_o1875)
  o1880.Start()
  o1884.Start()
  o1914 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_H_trafo_1", S_o1914)
  o1917.Start()
  o1949 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_H_turret_1/Turm1", S_o1949)
  o1954.Start()
  o1958.Start()
  o1988 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_H_turret_2/Turm1", S_o1988)
  o1993.Start()
  o1997.Start()
  o2027 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_H_turret_3/Turm1", S_o2027)
  o2032.Start()
  o2036.Start()
  o2066 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_1", S_o2066)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_2", S_o2100)
  o2134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_3", S_o2134)
  o2168 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_4", S_o2168)
  o2202 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_5", S_o2202)
  o2236 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_6", S_o2236)
  o2270 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_7", S_o2270)
  o2304 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_8", S_o2304)
  o2338 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_9", S_o2338)
  o2372 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_10", S_o2372)
  o2406 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_11", S_o2406)
  o2440 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_12", S_o2440)
  o2474 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vent_13", S_o2474)
  o2508 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dockingnode_1", S_o2508)
  o2542 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_1", S_o2542)
  o2543 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_2", S_o2543)
  o2544 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2544)
  o2580.Start()
  o2618 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c2_1", S_o2618)
  o2624.Start()
  o2667 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c2_1", S_o2667)
  o2673.Start()
  o2716 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o2716)
  o2721 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_1", S_o2721)
  o2726.Start()
  o2728.Start()
  o2729.Start()
  o2771 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1_Nav1", S_o2771)
  o2820 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1_Nav3", S_o2820)
  o2869 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout2v1_1_Nav4", S_o2869)
  o2918 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1_Nav6", S_o2918)
  o2967 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1_Nav7", S_o2967)
  o3016 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1_Nav8", S_o3016)
  o3065 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_1_end_respawn", S_o3065)
  o3114 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_2_end_respawn", S_o3114)
  o3163 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_3_end", S_o3163)
  o3211 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1_end", S_o3211)
  o3259 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_2_end", S_o3259)
  o3307 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_3_end", S_o3307)
  o3355 = BindEasy(Node_Find("/"), "Camera", S_o3355)
  o3358 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_1", S_o3358)
  o3359 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_2", S_o3359)
  o3360 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_3", S_o3360)
  o3361 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_4", S_o3361)
  o3362 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1V", S_o3362)
  o3369 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1Addon", S_o3369)
  o3371 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter2V", S_o3371)
  o3356 = { {}, o2544, o2618, o2667 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end