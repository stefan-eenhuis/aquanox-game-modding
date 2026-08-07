-- dekompiliert aus map\2n2\script\2n2.sco
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
  Terrain_LoadTerrain(node1, "map/2H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.6)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/2H3/Lmsh/", "map/2H3/Ltex/")
  Game_SetTerrainDepth(node0, 2154)
  Game_SetDecompressionHeight(node0, 800)
  Game_SetAmbientLight(node0, 0.019608, 0.141176, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.282353, 0.282353)
  Game_SetParallelLightB(node0, 0.596078, 0.580392, 0.454902)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_2N2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic2.sam", 3)
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
  node8 = Node_CreateNode("nod_generic", "gen_kannonb_2")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2703.361, 3369.608, 626.3969), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_kannonb_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2328.252, 3234.197, 638.5852), MAT_Vector3(57.01253, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_kannon_4")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2093.22, 3108.576, 543.4694), MAT_Vector3(10.62225, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_kannon_3")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2013.257, 2886.391, 591.6642), MAT_Vector3(89.48442, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_kannon_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2032.763, 2528.175, 579.7457), MAT_Vector3(118.9759, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_kannon_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2062.58, 2225.22, 610.9258), MAT_Vector3(114.2697, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_turbin_5")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2213.497, 2957.411, 599.7561), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_turbin_6")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2213.174, 2875.832, 604.2679), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_turbin_7")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2212.176, 2791.835, 602.6173), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_turbin_8")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2277.856, 2958.999, 598.3703), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_turbin_4")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2262.584, 2347.793, 602.1886), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_turbin_3")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(2312.076, 2349.252, 601.6308), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_turbin_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2262.488, 2413.722, 603.1207), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_turbin_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2311.698, 2413.006, 599.8814), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ent_turb2_2")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1726.973, 3087.747, 500.3108), MAT_Vector3(124.7919, 0, 0))
  Node_ParseIniFile(node22, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "des_turbine2_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2096.215, 3418.607, 518.2758), MAT_Vector3(118.8305, 0, 0))
  Node_ParseIniFile(node23, "osd/des/des_turbine2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ent_turb1v2_7")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1823.349, 3250.146, 518.0911), MAT_Vector3(125.1393, 0, 0))
  Node_ParseIniFile(node24, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ent_turb1v2_6")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2014.205, 3221.048, 540.4365), MAT_Vector3(114.418, 0, 0))
  Node_ParseIniFile(node25, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ent_turb1v2_5")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2260.436, 3537.874, 536.2655), MAT_Vector3(119.1493, 0, 0))
  Node_ParseIniFile(node26, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ent_turb1v2_19")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1617.422, 1663.514, 514.569), MAT_Vector3(-77.3496, 0, 0))
  Node_ParseIniFile(node27, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ent_turb1v2_17")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1570.596, 1897.969, 523.2935), MAT_Vector3(125.9394, 0, 0))
  Node_ParseIniFile(node28, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ent_turb1v2_16")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1338.848, 2487.055, 520.9923), MAT_Vector3(121.6457, 0, 0))
  Node_ParseIniFile(node29, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ent_turb1v2_15")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1765.054, 1835.053, 524.3042), MAT_Vector3(124.568, 0, 0))
  Node_ParseIniFile(node30, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ent_turb1v2_14")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1523.287, 2671.16, 506.788), MAT_Vector3(133.2272, 0, 0))
  Node_ParseIniFile(node31, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ent_turb1v2_10")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1850.747, 2515.418, 540.5993), MAT_Vector3(130.8304, 0, 0))
  Node_ParseIniFile(node32, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ent_turb1v2_9")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1805.659, 2715.169, 544.0935), MAT_Vector3(125.8839, 0, 0))
  Node_ParseIniFile(node33, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ent_turb1v2_8")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1739.423, 2886.412, 523.198), MAT_Vector3(125.6128, 0, 0))
  Node_ParseIniFile(node34, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ent_turb1v2_20")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1155.637, 2285.292, 528.409), MAT_Vector3(123.3546, 0, 0))
  Node_ParseIniFile(node35, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ent_turb1v2_23")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(721.8836, 1673.943, 519.3546), MAT_Vector3(91.50696, 0, 0))
  Node_ParseIniFile(node36, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ent_turb1v2_24")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(731.7774, 2193.278, 527.0487), MAT_Vector3(91.59137, 0, 0))
  Node_ParseIniFile(node37, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ent_turb1v2_25")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(217.2235, 2169.463, 518.513), MAT_Vector3(92.25998, 0, 0))
  Node_ParseIniFile(node38, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ent_turb1v2_26")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(210.9362, 1715.631, 522.5558), MAT_Vector3(116.2688, 0, 0))
  Node_ParseIniFile(node39, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ent_turb1v2_27")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(-9.934589, 2151.806, 518.7547), MAT_Vector3(72.50748, 0, 0))
  Node_ParseIniFile(node40, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ent_turb1v2_28")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(-17.92301, 1929.576, 533.5354), MAT_Vector3(73.61116, 0, 0))
  Node_ParseIniFile(node41, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ent_turb1v2_29")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(0.045838, 1716.07, 522.4003), MAT_Vector3(113.1251, 0, 0))
  Node_ParseIniFile(node42, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ent_turb1v2_31")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(-38.26778, 1412.259, 546.1016), MAT_Vector3(119.5559, 0, 0))
  Node_ParseIniFile(node43, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ent_turb1v2_32")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1619.837, 2284.865, 521.1718), MAT_Vector3(126.1909, 0, 0))
  Node_ParseIniFile(node44, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ent_turb1v2_33")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1541.975, 2867.14, 523.5573), MAT_Vector3(134.2265, 0, 0))
  Node_ParseIniFile(node45, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ent_turb1v2_34")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1184.241, 1664.959, 521.967), MAT_Vector3(110.4025, 0, 0))
  Node_ParseIniFile(node46, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ent_turb2_7")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(873.5621, 2075.314, 523.5903), MAT_Vector3(98.19887, 0, 0))
  Node_ParseIniFile(node47, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ent_turb2_8")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(754.9057, 1926.898, 523.5159), MAT_Vector3(100.6234, 0, 0))
  Node_ParseIniFile(node48, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ent_turb2_9")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(432.4916, 2063.288, 512.3352), MAT_Vector3(89.89062, 0, 0))
  Node_ParseIniFile(node49, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ent_turb2_12")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1512.409, 2097.141, 519.094), MAT_Vector3(126.0458, 0, 0))
  Node_ParseIniFile(node50, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ent_turb2_11")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(196.7227, 1926.915, 512.9121), MAT_Vector3(90.58931, 0, 0))
  Node_ParseIniFile(node51, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ent_turb2_10")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(419.7231, 1822.792, 537.3827), MAT_Vector3(89.50032, 0, 0))
  Node_ParseIniFile(node52, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ent_turb2_14")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1536.879, 2462.618, 522.8924), MAT_Vector3(127.5109, 0, 0))
  Node_ParseIniFile(node53, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ent_turb2_13")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1729.839, 2050.849, 509.1546), MAT_Vector3(125.8302, 0, 0))
  Node_ParseIniFile(node54, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_trafo_b_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2346.281, 2653.436, 574.8561), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_trafo_b_3")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2298.145, 2727.698, 578.8741), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_trafo_b_4")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2298.104, 2653.653, 576.6805), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_trafo_b_6")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2298.159, 2690.611, 578.6547), MAT_Vector3(-0.24662, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_trafo_b_9")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2346.741, 2690.28, 575.802), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_trafo_b_5")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2346.611, 2728.394, 576.2418), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node60, "osd/gen/gen_trafo2.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_stab3_8")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2875.879, 4040.804, 582.8813), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node61, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_stab3_7")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2637.598, 3982.804, 557.7615), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node62, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_stab3_6")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(2929.07, 3933.702, 620.0043), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node63, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_stab3_5")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(2179.709, 2326.262, 597.6547), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node64, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_stab3_4")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2167.075, 2409.261, 596.0567), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node66, MAT_Vector3(2161.424, 2996.046, 557.9702), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node66, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_stab3_2")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(2140.797, 2857.591, 587.6393), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node67, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2167.9, 2779.44, 593.1878), MAT_Vector3(0, 1e-06, 0.643773))
  Node_ParseIniFile(node68, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_stab2_4")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2731.991, 3416.917, 631.7089), MAT_Vector3(0.119481, -3.5387, 1.935009))
  Node_ParseIniFile(node69, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_stab2_3")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1917.831, 2695.655, 615.6221), MAT_Vector3(0.119481, -3.5387, 1.935009))
  Node_ParseIniFile(node70, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(3095.62, 3910.661, 521.794), MAT_Vector3(0.119481, -3.5387, 1.935009))
  Node_ParseIniFile(node71, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_stab2_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2042.838, 2324.96, 588.7017), MAT_Vector3(0, -2.5751, 2.253205))
  Node_ParseIniFile(node72, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1908.576, 3173.322, 572.5309), MAT_Vector3(0.173806, -3.8587, 2.580946))
  Node_ParseIniFile(node73, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(2186.184, 3271.272, 588.2933), MAT_Vector3(0, -2.2532, 1.287546))
  Node_ParseIniFile(node74, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1876.119, 2122.179, 547.7523), MAT_Vector3(0, -1.9313, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2564.545, 3152.543, 630.8455), MAT_Vector3(-169.7367, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_kai2_ent_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2391.5, 3287.042, 602.4519), MAT_Vector3(-50.4607, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_kai2_ent.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_schwim_1")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2768.328, 3243.996, 570.4375), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_werk3_1")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2320.318, 2859.088, 640.6616), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_werk3_2")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2316.454, 2520.264, 632.1), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node80, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_rohr_sm03_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2321.557, 2692.481, 594.5625), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_shelter2_1")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1171.081, 1985.797, 494.8144), MAT_Vector3(23.64547, 0, 0))
  Node_ParseIniFile(node82, "osd/gen/gen_shelter2.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1256.725, 2106.914, 491.4882), MAT_Vector3(24.35752, 0, 0))
  Node_ParseIniFile(node83, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_tank_big_2")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1282.102, 2050.822, 488.5161), MAT_Vector3(24.94901, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1093.422, 2048.017, 481.5167), MAT_Vector3(23.19096, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1222.769, 1939.258, 505.2619), MAT_Vector3(-66.34332, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_chimney2_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1176.542, 1934.572, 587.8669), MAT_Vector3(44.92433, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_chimney2_2")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1169.22, 2036.162, 587.8669), MAT_Vector3(45.86267, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_chimney2.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1227.027, 1953.448, 577), MAT_Vector3(23.71192, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(1222.209, 1964.389, 577), MAT_Vector3(23.71192, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1217.617, 1975.015, 577), MAT_Vector3(23.71192, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "DES_turbine_2")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1403.685, 1757.691, 517.7945), MAT_Vector3(111.8329, 0, 0))
  Node_ParseIniFile(node92, "osd/des/des_turbine1v2.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "DES_turbine_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1394.961, 2287.163, 522.0477), MAT_Vector3(121.78, 0, 0))
  Node_ParseIniFile(node93, "osd/des/des_turbine1v2.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "DES_turbine_3")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(923.7086, 1790.811, 525.4866), MAT_Vector3(102.9133, 0, 0))
  Node_ParseIniFile(node94, "osd/des/des_turbine2.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node95)
  Node_ParseIniFile(node95, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node96)
  Node_ParseIniFile(node96, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node97)
  Node_ParseIniFile(node97, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node97, "map/2H3/Terrain/stone01.tga")
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_fx_plant", "coral_04_1")
  Node_AddSon(node7, node98)
  Node_ParseIniFile(node98, "osd/fx_plant/coral_04.osd")
  FX_Plant_SetMap(node98, "map/2H3/Terrain/coral04.tga")
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_fx_sky", "fx_sky_06_1")
  Node_AddSon(node7, node99)
  Node_ParseIniFile(node99, "osd/fx_sky/fx_sky_06.osd")
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node100)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node100, node101)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node100, node102)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_PatrolArea", "OverallArea")
  Node_AddSon(node102, node103)
  PatrolArea_SetPosition(node103, MAT_Vector3(2070.056047, 2093.726865, 775.1619))
  PatrolArea_SetRadius(node103, 3000)
  PatrolArea_SetMinZ(node103, -400)
  PatrolArea_SetMaxZ(node103, 2000)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node102, node104)
  Body_SetCS(node104, MAT_Vector3(842.1102, 1838.628, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node104, 920, 620, 280)
  Stream_SetCurrentDirection(node104, MAT_Vector3(-90.33989, 10, 0))
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_FX_Stream", "Stream_3")
  Node_AddSon(node102, node105)
  Body_SetCS(node105, MAT_Vector3(1513.666, 2810.241, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node105, 500, 620, 280)
  Stream_SetCurrentDirection(node105, MAT_Vector3(-62.75359, 10, 0))
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_FX_Stream", "Stream_4")
  Node_AddSon(node102, node106)
  Body_SetCS(node106, MAT_Vector3(2292.385, 3638.969, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node106, 800, 350, 280)
  Stream_SetCurrentDirection(node106, MAT_Vector3(-65.23697, 10, 0))
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_FX_Stream", "Stream_2")
  Node_AddSon(node102, node107)
  Body_SetCS(node107, MAT_Vector3(2721.855, 1420.895, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node107, 1300, 800, 280)
  Stream_SetCurrentDirection(node107, MAT_Vector3(-105.5364, 9.657023, 2.608925))
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_PatrolArea", "TriggerArea_1")
  Node_AddSon(node102, node108)
  PatrolArea_SetPosition(node108, MAT_Vector3(2542.988294, 3451.215742, 647.862388))
  PatrolArea_SetRadius(node108, 250)
  PatrolArea_SetMinZ(node108, -80)
  PatrolArea_SetMaxZ(node108, 220)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_PatrolArea", "FollowArea_1")
  Node_AddSon(node102, node109)
  PatrolArea_SetPosition(node109, MAT_Vector3(2542.864587, 3449.550244, 618.68251))
  PatrolArea_SetRadius(node109, 350)
  PatrolArea_SetMinZ(node109, -80)
  PatrolArea_SetMaxZ(node109, 220)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node102, node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node110, node111)
  Position_SetPosition(node111, MAT_Vector3(2467.480336, 3434.358609, 683.596323))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node110, node112)
  Position_SetPosition(node112, MAT_Vector3(2225.405922, 3242.598697, 695.559493))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node110, node113)
  Position_SetPosition(node113, MAT_Vector3(2087.505723, 2927.578851, 669.148492))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node110, node114)
  Position_SetPosition(node114, MAT_Vector3(1969.823166, 2400.96662, 749.18314))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node110, node115)
  Position_SetPosition(node115, MAT_Vector3(1894.879678, 2167.766874, 790.342768))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node110, node116)
  Position_SetPosition(node116, MAT_Vector3(1878.637412, 1575.475222, 739.715442))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node102, node117)
  PatrolArea_SetPosition(node117, MAT_Vector3(2676.128934, 1496.619848, 641.01537))
  PatrolArea_SetRadius(node117, 350)
  PatrolArea_SetMinZ(node117, -80)
  PatrolArea_SetMaxZ(node117, 220)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node100, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node100, node119)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node100, node120)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node120, node121)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "gen_transp_2")
  Node_AddSon(node121, node122)
  Body_SetCS(node122, MAT_Vector3(2770.462, 3238.311, 679.574639), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node120, node123)
  Body_SetCS(node123, MAT_Vector3(2635.410838, 3306.931624, 678.31182), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node123, 4)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "mis_freighter1_1")
  Node_AddSon(node120, node124)
  Body_SetCS(node124, MAT_Vector3(2545.90536, 3446.095679, 686.642314), MAT_Vector3(89.626211, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node124, 6)
  Body_SetNameKey(node124, 1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, 0, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "ent_pscout_1")
  Node_AddSon(node120, node125)
  Body_SetCS(node125, MAT_Vector3(2645.416291, 3482.051033, 713.441091), MAT_Vector3(97.071102, 0, 0))
  Node_ParseIniFile(node125, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node125, 1)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "wng_harper_c2_1")
  Node_AddSon(node120, node126)
  Body_SetCS(node126, MAT_Vector3(2656.268707, 3512.337435, 713.4411), MAT_Vector3(94.978957, 0, 0))
  Node_ParseIniFile(node126, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node126, 5)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "ent_pscout_2")
  Node_AddSon(node120, node127)
  Body_SetCS(node127, MAT_Vector3(2648.071072, 3439.125571, 713.441091), MAT_Vector3(93.018414, 0, 0))
  Node_ParseIniFile(node127, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node127, 1)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "ent_pscout_3")
  Node_AddSon(node120, node128)
  Body_SetCS(node128, MAT_Vector3(2634.52504, 3394.900325, 713.441091), MAT_Vector3(78.134054, 0, 0))
  Node_ParseIniFile(node128, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node128, 1)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_1")
  Node_AddSon(node120, node129)
  Body_SetPosition(node129, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node129, 150)
  Node_ParseIniFile(node129, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow_2")
  Node_AddSon(node120, node130)
  Body_SetPosition(node130, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node130, 250)
  Node_ParseIniFile(node130, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node120, node131)
  Body_SetPosition(node131, MAT_Vector3(2528.999312, 1679.922536, 606.033688))
  WayPoint_SetRadius(node131, 350)
  Node_ParseIniFile(node131, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "tz_scout1v1_1")
  Node_AddSon(node120, node132)
  Body_SetCS(node132, MAT_Vector3(2575.578949, 1696.257001, 706.033688), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node132, 2)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "tz_scout1v1_2")
  Node_AddSon(node120, node133)
  Body_SetCS(node133, MAT_Vector3(2416.026205, 1558.990056, 706.033688), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node133, 2)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vessel", "tz_scout1v1_3")
  Node_AddSon(node120, node134)
  Body_SetCS(node134, MAT_Vector3(2715.33243, 1604.302197, 706.033688), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node134, 2)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "tz_scout1v2_1")
  Node_AddSon(node120, node135)
  Body_SetCS(node135, MAT_Vector3(2487.459087, 1747.69179, 706.033688), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node135, 2)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_vessel", "tz_scout1v1_5")
  Node_AddSon(node120, node136)
  Body_SetCS(node136, MAT_Vector3(2583.337373, 1500.390684, 664.2661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node136, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node136, 2)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vessel", "tz_scout1v1_6")
  Node_AddSon(node120, node137)
  Body_SetCS(node137, MAT_Vector3(2549.381535, 1519.705013, 664.2661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node137, 3)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "tz_scout1v1_7")
  Node_AddSon(node120, node138)
  Body_SetCS(node138, MAT_Vector3(2618.227775, 1542.446079, 664.2661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node138, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node138, 2)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "tz_scout1v1_8")
  Node_AddSon(node120, node139)
  Body_SetCS(node139, MAT_Vector3(2530.378726, 1538.707822, 664.2661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node139, "osd/tz/tz_scout1v1.osd")
  Body_SetFriendOrFoeID(node139, 3)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vessel", "tz_scout1v2_4")
  Node_AddSon(node120, node140)
  Body_SetCS(node140, MAT_Vector3(2517.606347, 1500.079162, 664.2661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node140, 2)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vessel", "tz_scout1v2_6")
  Node_AddSon(node120, node141)
  Body_SetCS(node141, MAT_Vector3(2528.509598, 1572.975181, 664.2661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node141, "osd/tz/tz_scout1v2.osd")
  Body_SetFriendOrFoeID(node141, 3)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node142)
  Camera_SetBackPlane(node142, 512)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node143, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node143, node145)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node145, node146)
  Position_SetPosition(node146, MAT_Vector3(1979.246033, 3082.355603, 615.967589))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node145, node147)
  Position_SetPosition(node147, MAT_Vector3(2373.423989, 3277.682984, 703.96647))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node143, node148)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Director", "Chapter1IntroV")
  Node_AddSon(node148, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node148, node150)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node143, node151)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node143, node152)
  Node_EnterSimulation(node152)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, N)
SetEnemyMatrixElement(2, 0, N)
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
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, F)
SetEnemyMatrixElement(6, 1, F)
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
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, E)
SetEnemyMatrixElement(6, 2, E)
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
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, E)
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
SetEnemyMatrixElement(1, 4, F)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, E)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, F)
SetEnemyMatrixElement(6, 4, F)
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
SetEnemyMatrixElement(1, 5, F)
SetEnemyMatrixElement(2, 5, E)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, F)
SetEnemyMatrixElement(5, 5, N)
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
SetEnemyMatrixElement(1, 6, F)
SetEnemyMatrixElement(2, 6, E)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, F)
SetEnemyMatrixElement(5, 6, F)
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
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (o3067.Value ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
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
                                                                                                                                                                                  if not (o3091.Value == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
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
S_o66 = { [nil] = {}, Start = function(L0)

end }
S_o102 = { [nil] = {}, Start = function(L0)

end }
S_o138 = { [nil] = {}, Start = function(L0)

end }
S_o174 = { [nil] = {}, Start = function(L0)

end }
S_o210 = { [nil] = {}, Start = function(L0)

end }
S_o246 = { [nil] = {}, Start = function(L0)

end }
S_o280 = { [nil] = {}, Start = function(L0)

end }
S_o314 = { [nil] = {}, Start = function(L0)

end }
S_o348 = { [nil] = {}, Start = function(L0)

end }
S_o382 = { [nil] = {}, Start = function(L0)

end }
S_o416 = { [nil] = {}, Start = function(L0)

end }
S_o450 = { [nil] = {}, Start = function(L0)

end }
S_o484 = { [nil] = {}, Start = function(L0)

end }
S_o518 = { [nil] = {}, Start = function(L0)

end }
S_o552 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o552, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o552, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o552, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o552, "Code4")
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
S_o587 = { [nil] = {}, Start = function(L0)

end }
S_o621 = { [nil] = {}, Start = function(L0)

end }
S_o655 = { [nil] = {}, Start = function(L0)

end }
S_o689 = { [nil] = {}, Start = function(L0)

end }
S_o723 = { [nil] = {}, Start = function(L0)

end }
S_o757 = { [nil] = {}, Start = function(L0)

end }
S_o791 = { [nil] = {}, Start = function(L0)

end }
S_o825 = { [nil] = {}, Start = function(L0)

end }
S_o859 = { [nil] = {}, Start = function(L0)

end }
S_o893 = { [nil] = {}, Start = function(L0)

end }
S_o927 = { [nil] = {}, Start = function(L0)

end }
S_o961 = { [nil] = {}, Start = function(L0)

end }
S_o995 = { [nil] = {}, Start = function(L0)

end }
S_o1029 = { [nil] = {}, Start = function(L0)

end }
S_o1063 = { [nil] = {}, Start = function(L0)

end }
S_o1097 = { [nil] = {}, Start = function(L0)

end }
S_o1131 = { [nil] = {}, Start = function(L0)

end }
S_o1165 = { [nil] = {}, Start = function(L0)

end }
S_o1199 = { [nil] = {}, Start = function(L0)

end }
S_o1233 = { [nil] = {}, Start = function(L0)

end }
S_o1267 = { [nil] = {}, Start = function(L0)

end }
S_o1301 = { [nil] = {}, Start = function(L0)

end }
S_o1335 = { [nil] = {}, Start = function(L0)

end }
S_o1369 = { [nil] = {}, Start = function(L0)

end }
S_o1403 = { [nil] = {}, Start = function(L0)

end }
S_o1437 = { [nil] = {}, Start = function(L0)

end }
S_o1471 = { [nil] = {}, Start = function(L0)

end }
S_o1505 = { [nil] = {}, Start = function(L0)

end }
S_o1539 = { [nil] = {}, Start = function(L0)

end }
S_o1573 = { [nil] = {}, Start = function(L0)

end }
S_o1607 = { [nil] = {}, Start = function(L0)

end }
S_o1641 = { [nil] = {}, Start = function(L0)

end }
S_o1675 = { [nil] = {}, Start = function(L0)

end }
S_o1709 = { [nil] = {}, Start = function(L0)

end }
S_o1743 = { [nil] = {}, Start = function(L0)

end }
S_o1777 = { [nil] = {}, Start = function(L0)

end }
S_o1811 = { [nil] = {}, Start = function(L0)

end }
S_o1845 = { [nil] = {}, Start = function(L0)

end }
S_o1879 = { [nil] = {}, Start = function(L0)

end }
S_o1913 = { [nil] = {}, Start = function(L0)

end }
S_o1947 = { [nil] = {}, Start = function(L0)

end }
S_o1981 = { [nil] = {}, Start = function(L0)

end }
S_o2015 = { [nil] = {}, Start = function(L0)

end }
S_o2049 = { [nil] = {}, Start = function(L0)

end }
S_o2083 = { [nil] = {}, Start = function(L0)

end }
S_o2117 = { [nil] = {}, Start = function(L0)

end }
S_o2151 = { [nil] = {}, Start = function(L0)

end }
S_o2185 = { [nil] = {}, Start = function(L0)

end }
S_o2219 = { [nil] = {}, Start = function(L0)

end }
S_o2253 = { [nil] = {}, Start = function(L0)

end }
S_o2287 = { [nil] = {}, Start = function(L0)

end }
S_o2321 = { [nil] = {}, Start = function(L0)

end }
S_o2355 = { [nil] = {}, Start = function(L0)

end }
S_o2389 = { [nil] = {}, Start = function(L0)

end }
S_o2423 = { [nil] = {}, Start = function(L0)

end }
S_o2457 = { [nil] = {}, Start = function(L0)

end }
S_o2491 = { [nil] = {}, Start = function(L0)

end }
S_o2525 = { [nil] = {}, Start = function(L0)

end }
S_o2559 = { [nil] = {}, Start = function(L0)

end }
S_o2593 = { [nil] = {}, Start = function(L0)

end }
S_o2627 = { [nil] = {}, Start = function(L0)

end }
S_o2661 = { [nil] = {}, Start = function(L0)

end }
S_o2695 = { [nil] = {}, Start = function(L0)

end }
S_o2729 = { [nil] = {}, Start = function(L0)

end }
S_o2763 = { [nil] = {}, Start = function(L0)

end }
S_o2797 = { [nil] = {}, Start = function(L0)

end }
S_o2831 = { [nil] = {}, Start = function(L0)

end }
S_o2865 = { [nil] = {}, Start = function(L0)

end }
S_o2899 = { [nil] = {}, Start = function(L0)

end }
S_o2933 = { [nil] = {}, Start = function(L0)

end }
S_o2967 = { [nil] = {}, Start = function(L0)

end }
S_o3001 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 2)
  CallFunction(o3001, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
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
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 2)
  CallFunction(o3002, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3003 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 2)
  CallFunction(o3003, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3004 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 15, 2)
  CallFunction(o3004, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3006 = FormationLib.CreateFormation("Triangle", "", "", "", 70, 20)
S_o3007 = { [nil] = {}, Start = function(L0)

end }
S_o3053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "ammo_shell", 500)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_tigershark", 6)
  Body_AddItem(L0.Node, "torpedo_flahshark", 2)
  Body_AddItem(L0.Node, "DEVICE_REPAIR1", 1)
  Body_AddItem(L0.Node, "DEVICE_GENERATOR1", 1)
  CallFunction(o3053, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
o3058 = { [nil] = {}, GetCalculated = function()
  if not (o3356.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3058.SetStateValue(o3058.GetCalculated())
end, StartCalculate = function()
  o3058["Value"] = o3058.GetCalculated()
  o3847.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3195.Node, o3053.Node, 1211)
  SED_SetTaskTextKey(1357, -1, -1)
end, SetStateValue = function(L0)
  if not (o3058.Value == L0) then
    o3058["Value"] = L0
    o3847.ReCalculate()
    if not (L0 ~= 1) then
      o3058.ChangeTo1()
    end
  end
end }
o3059 = { [nil] = {}, GetCalculated = function()
  if not (o3363.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3411.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3459.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3507.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 2) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3059.SetStateValue(o3059.GetCalculated())
end, StartCalculate = function()
  o3059["Value"] = o3059.GetCalculated()
  o3060.StartCalculate()
  o3552.StartCalculate()
  o3600.StartCalculate()
  o3648.StartCalculate()
  o3696.StartCalculate()
  o3744.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3059.Value == L0) then
    o3059["Value"] = L0
    o3060.ReCalculate()
    o3552.ReCalculate()
    o3600.ReCalculate()
    o3648.ReCalculate()
    o3696.ReCalculate()
    o3744.ReCalculate()
  end
end }
o3060 = { [nil] = {}, GetCalculated = function()
  if not (o3059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3060.SetStateValue(o3060.GetCalculated())
end, StartCalculate = function()
  o3060["Value"] = o3060.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3053.Node, o3053.Node, 1212)
  SendRadioMessageTake(o3195.Node, o3053.Node, 1213)
  SendRadioMessageTake(o3195.Node, o3053.Node, 1214)
  Game_SetWayPoint(GetGameNode(), o3343.Node)
  CallFunction(o3146, "Code6")
  CallFunction(o3246, "Code6")
end, SetStateValue = function(L0)
  if not (o3060.Value == L0) then
    DelayedFunction(2, o3060, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3060.Value == L0) then
    o3060["Value"] = L0
    if not (L0 ~= 1) then
      o3060.ChangeTo1()
    end
  end
end }
o3061 = { [nil] = {}, GetCalculated = function()
  if not (o3363.Value ~= True) then
    if not (o3411.Value ~= True) then
      if not (o3459.Value ~= True) then
        if not (o3507.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o3061.SetStateValue(o3061.GetCalculated())
end, StartCalculate = function()
  o3061["Value"] = o3061.GetCalculated()
  o3199.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3061.Value == L0) then
    o3061["Value"] = L0
    o3199.ReCalculate()
  end
end }
o3062 = { [nil] = {}, Start = function()
  o3062["Value"] = False
  o3063.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3062.Value == L0) then
    o3062["Value"] = L0
    o3063.ReCalculate()
  end
end }
o3063 = { [nil] = {}, GetCalculated = function()
  if not (o3062.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3063.SetStateValue(o3063.GetCalculated())
end, StartCalculate = function()
  o3063["Value"] = o3063.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("com")
  CallFunction(o3195, "Code8")
end, SetStateValue = function(L0)
  if not (o3063.Value == L0) then
    o3063["Value"] = L0
    if not (L0 ~= 1) then
      o3063.ChangeTo1()
    end
  end
end }
o3064 = { [nil] = {}, GetCalculated = function()
  if not (o3363.Value ~= True) then
    if not (o3411.Value ~= True) then
      if not (o3459.Value ~= True) then
        if not (o3795.Value ~= True) then
          if not (o3507.Value ~= True) then
            if not (o3555.Value ~= True) then
              if not (o3603.Value ~= True) then
                if not (o3651.Value ~= True) then
                  if not (o3699.Value ~= True) then
                    if not (o3747.Value ~= True) then
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
end, ReCalculate = function()
  o3064.SetStateValue(o3064.GetCalculated())
end, StartCalculate = function()
  o3064["Value"] = o3064.GetCalculated()
  o3065.StartCalculate()
  o3100.StartCalculate()
  o3848.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3053.Node, o3053.Node, 1218)
end, SetStateValue = function(L0)
  if not (o3064.Value == L0) then
    DelayedFunction(8, o3064, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3064.Value == L0) then
    o3064["Value"] = L0
    o3065.ReCalculate()
    o3100.ReCalculate()
    o3848.ReCalculate()
    if not (L0 ~= 1) then
      o3064.ChangeTo1()
    end
  end
end }
o3065 = { [nil] = {}, GetCalculated = function()
  if not (o3064.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3065.SetStateValue(o3065.GetCalculated())
end, StartCalculate = function()
  o3065["Value"] = o3065.GetCalculated()
  o3067.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3065.Value == L0) then
    DelayedFunction(5, o3065, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3065.Value == L0) then
    o3065["Value"] = L0
    o3067.ReCalculate()
  end
end }
o3066 = { [nil] = {}, GetCalculated = function()
  if not (o3103.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3066.SetStateValue(o3066.GetCalculated())
end, StartCalculate = function()
  o3066["Value"] = o3066.GetCalculated()
  o3091.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3053.Node, o3053.Node, 1216)
end, SetStateValue = function(L0)
  if not (o3066.Value == L0) then
    o3066["Value"] = L0
    o3091.ReCalculate()
    if not (L0 ~= 1) then
      o3066.ChangeTo1()
    end
  end
end }
o3067 = { [nil] = {}, GetCalculated = function()
  if not (o3065.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3067.SetStateValue(o3067.GetCalculated())
end, StartCalculate = function()
  o3067["Value"] = o3067.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3067.Value == L0) then
    o3067["Value"] = L0
    o2.ReCalculate()
  end
end }
o3091 = { [nil] = {}, GetCalculated = function()
  if not (o3066.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3091.SetStateValue(o3091.GetCalculated())
end, StartCalculate = function()
  o3091["Value"] = o3091.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3091.Value == L0) then
    o3091["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o3095 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3095, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3095, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3095, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 0.5, 1 } }(o3005, o3006, "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", False, "Code4")
  else
    CallFunction(o3095, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0.475)
  SendRadioMessageTake(o3053.Node, o3053.Node, 1215)
  CallFunction(o3095, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code7")
  else
    CallFunction(o3095, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o3095, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3095, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_1", "pos_3", "pos_1", 1, 1 } }("Code10")
  else
    CallFunction(o3095, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o3103.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3096.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3100.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3096 = { [nil] = {}, GetCalculated = function()
  if not (o3346.Value ~= True) then
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
    DelayedFunction(30, o3096, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3096.Value == L0) then
    o3096["Value"] = L0
    CallFunction(o3095, "ProcesseStateChange")
  end
end }
o3100 = { [nil] = {}, GetCalculated = function()
  if not (o3064.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3100.SetStateValue(o3100.GetCalculated())
end, StartCalculate = function()
  o3100["Value"] = o3100.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3100.Value == L0) then
    DelayedFunction(8, o3100, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3100.Value == L0) then
    o3100["Value"] = L0
    CallFunction(o3095, "ProcesseStateChange")
  end
end }
o3103 = { [nil] = {}, Start = function()
  o3103["Value"] = False
  o3066.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3103.Value == L0) then
    o3103["Value"] = L0
    o3066.ReCalculate()
  end
end }
S_o3146 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3146, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3146, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3146, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o3006, 0, 300, "E", "", "", "", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", 1, 10, "Code4")
  else
    CallFunction(o3146, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o3146, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3146, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3146, "Code8")
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
S_o3195 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3195, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3195, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3195, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3195, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o3006, 0, 300, "E", "", "", "", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", 1, 10, "Code6")
  else
    CallFunction(o3195, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o3195, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3195, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o3195, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o3195, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o3195, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o3199.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3199 = { [nil] = {}, GetCalculated = function()
  if not (o3061.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3199.SetStateValue(o3199.GetCalculated())
end, StartCalculate = function()
  o3199["Value"] = o3199.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3199.Value == L0) then
    o3199["Value"] = L0
    CallFunction(o3195, "ProcesseStateChange")
  end
end }
S_o3246 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3246, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3246, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3246, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o3006, 0, 300, "E", "", "", "", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", 1, 10, "Code4")
  else
    CallFunction(o3246, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o3246, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3246, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3246, "Code8")
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
S_o3295 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3295, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3295, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3295, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o3006, 0, 300, "E", "", "", "", "/Scenario_Dynamic/Navigation/TriggerArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", 1, 10, "Code4")
  else
    CallFunction(o3295, "Code4")
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
S_o3343 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3095.Node)
  CallFunction(o3343, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3346.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3346 = { [nil] = {}, Start = function()
  o3346["Value"] = False
  o3096.StartCalculate()
  o3792.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3346.Value == L0) then
    o3346["Value"] = L0
    o3096.ReCalculate()
    o3792.ReCalculate()
  end
end }
S_o3348 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3095.Node)
  CallFunction(o3348, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3353 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, o3053.Node, 1210)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o3353, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3356.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3356 = { [nil] = {}, Start = function()
  o3356["Value"] = False
  o3058.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3356.Value == L0) then
    o3356["Value"] = L0
    o3058.ReCalculate()
  end
end }
S_o3358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3358, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3363.SetStateValue(L1)
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
o3363 = { [nil] = {}, Start = function()
  o3363["Value"] = False
  o3059.StartCalculate()
  o3061.StartCalculate()
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3363.Value == L0) then
    o3363["Value"] = L0
    o3059.ReCalculate()
    o3061.ReCalculate()
    o3064.ReCalculate()
  end
end }
S_o3406 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3406, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3406, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3406, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3406, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3411.SetStateValue(L1)
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
o3411 = { [nil] = {}, Start = function()
  o3411["Value"] = False
  o3059.StartCalculate()
  o3061.StartCalculate()
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3411.Value == L0) then
    o3411["Value"] = L0
    o3059.ReCalculate()
    o3061.ReCalculate()
    o3064.ReCalculate()
  end
end }
S_o3454 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3454, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3454, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3454, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3454, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3459.SetStateValue(L1)
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
o3459 = { [nil] = {}, Start = function()
  o3459["Value"] = False
  o3059.StartCalculate()
  o3061.StartCalculate()
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3459.Value == L0) then
    o3459["Value"] = L0
    o3059.ReCalculate()
    o3061.ReCalculate()
    o3064.ReCalculate()
  end
end }
S_o3502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3502, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3502, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3507.SetStateValue(L1)
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
o3507 = { [nil] = {}, Start = function()
  o3507["Value"] = False
  o3059.StartCalculate()
  o3061.StartCalculate()
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3507.Value == L0) then
    o3507["Value"] = L0
    o3059.ReCalculate()
    o3061.ReCalculate()
    o3064.ReCalculate()
  end
end }
S_o3550 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3550, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3550, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, 80, 80, 40, o3095.Node, "Code3")
  else
    CallFunction(o3550, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "mis", "E", "", "", 1, "Code4")
  else
    CallFunction(o3550, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3555.SetStateValue(L1)
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
  if not (o3059.Value ~= True) then
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
    CallFunction(o3550, "ProcesseStateChange")
  end
end }
o3555 = { [nil] = {}, Start = function()
  o3555["Value"] = False
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3555.Value == L0) then
    o3555["Value"] = L0
    o3064.ReCalculate()
  end
end }
S_o3598 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3598, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3598, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, 80, 80, 60, o3095.Node, "Code3")
  else
    CallFunction(o3598, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "mis", "E", "", "", 1, "Code4")
  else
    CallFunction(o3598, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3603.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3600.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3600 = { [nil] = {}, GetCalculated = function()
  if not (o3059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3600.SetStateValue(o3600.GetCalculated())
end, StartCalculate = function()
  o3600["Value"] = o3600.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3600.Value == L0) then
    o3600["Value"] = L0
    CallFunction(o3598, "ProcesseStateChange")
  end
end }
o3603 = { [nil] = {}, Start = function()
  o3603["Value"] = False
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3603.Value == L0) then
    o3603["Value"] = L0
    o3064.ReCalculate()
  end
end }
S_o3646 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3646, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3646, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, 80, 80, 20, o3095.Node, "Code3")
  else
    CallFunction(o3646, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "mis", "E", "", "", 1, "Code4")
  else
    CallFunction(o3646, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3651.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3648.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3648 = { [nil] = {}, GetCalculated = function()
  if not (o3059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3648.SetStateValue(o3648.GetCalculated())
end, StartCalculate = function()
  o3648["Value"] = o3648.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3648.Value == L0) then
    o3648["Value"] = L0
    CallFunction(o3646, "ProcesseStateChange")
  end
end }
o3651 = { [nil] = {}, Start = function()
  o3651["Value"] = False
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3651.Value == L0) then
    o3651["Value"] = L0
    o3064.ReCalculate()
  end
end }
S_o3694 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3694, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3694, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, 100, 80, 40, o3095.Node, "Code3")
  else
    CallFunction(o3694, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "mis", "E", "", "", 1, "Code4")
  else
    CallFunction(o3694, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3699.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3696.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3696 = { [nil] = {}, GetCalculated = function()
  if not (o3059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3696.SetStateValue(o3696.GetCalculated())
end, StartCalculate = function()
  o3696["Value"] = o3696.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3696.Value == L0) then
    o3696["Value"] = L0
    CallFunction(o3694, "ProcesseStateChange")
  end
end }
o3699 = { [nil] = {}, Start = function()
  o3699["Value"] = False
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3699.Value == L0) then
    o3699["Value"] = L0
    o3064.ReCalculate()
  end
end }
S_o3742 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3742, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3742, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, 100, 80, 20, o3095.Node, "Code3")
  else
    CallFunction(o3742, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "mis", "E", "", "", 1, "Code4")
  else
    CallFunction(o3742, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3747.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3744.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3744 = { [nil] = {}, GetCalculated = function()
  if not (o3059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3744.SetStateValue(o3744.GetCalculated())
end, StartCalculate = function()
  o3744["Value"] = o3744.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3744.Value == L0) then
    DelayedFunction(32, o3744, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3744.Value == L0) then
    o3744["Value"] = L0
    CallFunction(o3742, "ProcesseStateChange")
  end
end }
o3747 = { [nil] = {}, Start = function()
  o3747["Value"] = False
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3747.Value == L0) then
    o3747["Value"] = L0
    o3064.ReCalculate()
  end
end }
S_o3790 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3790, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3790, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, 120, 80, 60, o3095.Node, "Code3")
  else
    CallFunction(o3790, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "/Scenario_Dynamic/Navigation/FollowArea_1", "mis", "E", "", "", 1, "Code4")
  else
    CallFunction(o3790, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3795.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3792.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3792 = { [nil] = {}, GetCalculated = function()
  if not (o3346.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3792.SetStateValue(o3792.GetCalculated())
end, StartCalculate = function()
  o3792["Value"] = o3792.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3792.Value == L0) then
    DelayedFunction(30, o3792, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3792.Value == L0) then
    o3792["Value"] = L0
    CallFunction(o3790, "ProcesseStateChange")
  end
end }
o3795 = { [nil] = {}, Start = function()
  o3795["Value"] = False
  o3064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3795.Value == L0) then
    o3795["Value"] = L0
    o3064.ReCalculate()
  end
end }
S_o3838 = { [nil] = {}, Start = function(L0)

end }
S_o3839 = { [nil] = {}, Start = function(L0)

end }
S_o3840 = { [nil] = {}, Start = function(L0)

end }
S_o3841 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  SendRadioMessageTake(o3053.Node, o3053.Node, 1209)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mis_freighter1_1", 0, "MMMN", 0)
  CallFunction(o3841, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code6")
  else
    CallFunction(o3841, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 9, "MMMN", 0)
  CallFunction(o3841, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 13, "Code8")
  else
    CallFunction(o3841, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o3348.Node)
  SED_SetTaskTextKey(1355, -1, -1)
  CallFunction(o3841, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code12")
  else
    CallFunction(o3841, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_SetWayPoint(GetGameNode(), o3353.Node)
  SED_SetTaskTextKey(1356, -1, -1)
  o3062.SetStateValue(True)
  CallFunction(o3841, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3846 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o3846, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3846, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o3846, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3846, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o3846, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3847.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3848.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3847 = { [nil] = {}, GetCalculated = function()
  if not (o3058.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3847.SetStateValue(o3847.GetCalculated())
end, StartCalculate = function()
  o3847["Value"] = o3847.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3847.Value == L0) then
    o3847["Value"] = L0
    CallFunction(o3846, "ProcesseStateChange")
  end
end }
o3848 = { [nil] = {}, GetCalculated = function()
  if not (o3064.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3848.SetStateValue(o3848.GetCalculated())
end, StartCalculate = function()
  o3848["Value"] = o3848.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3848.Value == L0) then
    o3848["Value"] = L0
    CallFunction(o3846, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 152)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannonb_2/Turm1", S_o30)
  o66 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannonb_1/Turm1", S_o66)
  o102 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_4/Turm1", S_o102)
  o138 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_3/Turm1", S_o138)
  o174 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_2/Turm1", S_o174)
  o210 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_1/Turm1", S_o210)
  o246 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_5", S_o246)
  o280 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_6", S_o280)
  o314 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_7", S_o314)
  o348 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_8", S_o348)
  o382 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_4", S_o382)
  o416 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_3", S_o416)
  o450 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_2", S_o450)
  o484 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbin_1", S_o484)
  o518 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_2", S_o518)
  o552 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_turbine2_1", S_o552)
  o587 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_7", S_o587)
  o621 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_6", S_o621)
  o655 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_5", S_o655)
  o689 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_19", S_o689)
  o723 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_17", S_o723)
  o757 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_16", S_o757)
  o791 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_15", S_o791)
  o825 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_14", S_o825)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_10", S_o859)
  o893 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_9", S_o893)
  o927 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_8", S_o927)
  o961 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_20", S_o961)
  o995 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_23", S_o995)
  o1029 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_24", S_o1029)
  o1063 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_25", S_o1063)
  o1097 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_26", S_o1097)
  o1131 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_27", S_o1131)
  o1165 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_28", S_o1165)
  o1199 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_29", S_o1199)
  o1233 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_31", S_o1233)
  o1267 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_32", S_o1267)
  o1301 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_33", S_o1301)
  o1335 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb1v2_34", S_o1335)
  o1369 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_7", S_o1369)
  o1403 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_8", S_o1403)
  o1437 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_9", S_o1437)
  o1471 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_12", S_o1471)
  o1505 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_11", S_o1505)
  o1539 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_10", S_o1539)
  o1573 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_14", S_o1573)
  o1607 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turb2_13", S_o1607)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_b_2", S_o1641)
  o1675 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_b_3", S_o1675)
  o1709 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_b_4", S_o1709)
  o1743 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_b_6", S_o1743)
  o1777 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_b_9", S_o1777)
  o1811 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_b_5", S_o1811)
  o1845 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_8", S_o1845)
  o1879 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_7", S_o1879)
  o1913 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_6", S_o1913)
  o1947 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_5", S_o1947)
  o1981 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_4", S_o1981)
  o2015 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_3", S_o2015)
  o2049 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_2", S_o2049)
  o2083 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o2083)
  o2117 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_4", S_o2117)
  o2151 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_3", S_o2151)
  o2185 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_2", S_o2185)
  o2219 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_1", S_o2219)
  o2253 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o2253)
  o2287 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o2287)
  o2321 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o2321)
  o2355 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o2355)
  o2389 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_ent_1", S_o2389)
  o2423 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schwim_1", S_o2423)
  o2457 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_1", S_o2457)
  o2491 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk3_2", S_o2491)
  o2525 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_sm03_1", S_o2525)
  o2559 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter2_1", S_o2559)
  o2593 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o2593)
  o2627 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_2", S_o2627)
  o2661 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o2661)
  o2695 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o2695)
  o2729 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney2_1", S_o2729)
  o2763 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney2_2", S_o2763)
  o2797 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o2797)
  o2831 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o2831)
  o2865 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o2865)
  o2899 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_turbine_2", S_o2899)
  o2933 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_turbine_1", S_o2933)
  o2967 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_turbine_3", S_o2967)
  o3001 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o3001)
  o3002 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_3", S_o3002)
  o3003 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_4", S_o3003)
  o3004 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_2", S_o3004)
  o3007 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_transp_2", S_o3007)
  o3053 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o3053)
  o3062.Start()
  o3095 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mis_freighter1_1", S_o3095)
  o3103.Start()
  o3146 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_1", S_o3146)
  o3195 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c2_1", S_o3195)
  o3246 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_2", S_o3246)
  o3295 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_3", S_o3295)
  o3343 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_1", S_o3343)
  o3346.Start()
  o3348 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow_2", S_o3348)
  o3353 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o3353)
  o3356.Start()
  o3358 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_1", S_o3358)
  o3363.Start()
  o3406 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_2", S_o3406)
  o3411.Start()
  o3454 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_3", S_o3454)
  o3459.Start()
  o3502 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_1", S_o3502)
  o3507.Start()
  o3550 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_5", S_o3550)
  o3555.Start()
  o3598 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_6", S_o3598)
  o3603.Start()
  o3646 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_7", S_o3646)
  o3651.Start()
  o3694 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v1_8", S_o3694)
  o3699.Start()
  o3742 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_4", S_o3742)
  o3747.Start()
  o3790 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "tz_scout1v2_6", S_o3790)
  o3795.Start()
  o3838 = BindEasy(Node_Find("/"), "Camera", S_o3838)
  o3839 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o3839)
  o3840 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o3840)
  o3841 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroV", S_o3841)
  o3846 = BindEasy(Node_Find("/InGameSequences/Director"), "Music", S_o3846)
  o3005 = { {}, o3095, o3195, o3146, o3246, o3295 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end