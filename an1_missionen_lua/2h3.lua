-- dekompiliert aus map\2h3\script\2h3.sco
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
  Game_SetCausticTerrain(node0, 0.025, 0.3)
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
  Game_LoadMTake(node0, "dat/sty/mtake_2H3_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_matrixdist2.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06_short.sam", 4)
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
  Body_SetCS(node9, MAT_Vector3(2328.252498, 3234.196996, 638.585195), MAT_Vector3(57.012528, 0, 0))
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
  Body_SetCS(node11, MAT_Vector3(2013.257, 2886.391, 591.664211), MAT_Vector3(89.48442, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_kannon_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2032.763, 2528.175, 579.745689), MAT_Vector3(118.9759, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_kannon_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2062.58, 2225.22, 610.925829), MAT_Vector3(114.2697, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_turbin_5")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2213.497, 2957.411, 599.756062), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node15, MAT_Vector3(2213.174, 2875.832, 604.267896), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node16, MAT_Vector3(2212.176, 2791.835, 602.617303), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node17, MAT_Vector3(2277.856, 2958.999, 598.370262), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node18, MAT_Vector3(2262.584, 2347.793, 602.188552), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node19, MAT_Vector3(2312.076, 2349.252, 601.630848), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node20, MAT_Vector3(2262.488, 2413.722, 603.120711), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node21, MAT_Vector3(2311.698, 2413.006, 599.881393), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node22, MAT_Vector3(1726.973, 3087.747, 500.310788), MAT_Vector3(124.79187, 0, 0))
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
  Body_SetCS(node23, MAT_Vector3(2096.215343, 3418.607304, 518.275808), MAT_Vector3(118.830464, 0, 0))
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
  Body_SetCS(node24, MAT_Vector3(1823.349, 3250.146, 518.091053), MAT_Vector3(125.139264, 0, 0))
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
  Body_SetCS(node25, MAT_Vector3(2014.205, 3221.048, 540.436476), MAT_Vector3(114.41801, 0, 0))
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
  Body_SetCS(node26, MAT_Vector3(2260.436, 3537.874, 536.265472), MAT_Vector3(119.149278, 0, 0))
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
  Body_SetCS(node27, MAT_Vector3(1617.422, 1663.514, 514.56899), MAT_Vector3(-77.3496, 0, 0))
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
  Body_SetCS(node28, MAT_Vector3(1570.596, 1897.969, 523.293536), MAT_Vector3(125.939369, 0, 0))
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
  Body_SetCS(node29, MAT_Vector3(1338.848, 2487.055, 520.992293), MAT_Vector3(121.645689, 0, 0))
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
  Body_SetCS(node30, MAT_Vector3(1765.054, 1835.053, 524.304176), MAT_Vector3(124.568005, 0, 0))
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
  Body_SetCS(node31, MAT_Vector3(1523.287, 2671.16, 506.78801), MAT_Vector3(133.227243, 0, 0))
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
  Body_SetCS(node32, MAT_Vector3(1850.747, 2515.418, 540.599299), MAT_Vector3(130.830409, 0, 0))
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
  Body_SetCS(node33, MAT_Vector3(1805.659, 2715.169, 544.093536), MAT_Vector3(125.883925, 0, 0))
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
  Body_SetCS(node34, MAT_Vector3(1739.423, 2886.412, 523.198036), MAT_Vector3(125.6128, 0, 0))
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
  Body_SetCS(node35, MAT_Vector3(1155.637, 2285.292, 528.409005), MAT_Vector3(123.354645, 0, 0))
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
  Body_SetCS(node36, MAT_Vector3(721.8836, 1673.943, 519.354585), MAT_Vector3(91.506964, 0, 0))
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
  Body_SetCS(node37, MAT_Vector3(731.7774, 2193.278, 527.048689), MAT_Vector3(91.591372, 0, 0))
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
  Body_SetCS(node38, MAT_Vector3(217.2235, 2169.463, 518.512964), MAT_Vector3(92.259978, 0, 0))
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
  Body_SetCS(node39, MAT_Vector3(210.9362, 1715.631, 522.555816), MAT_Vector3(116.268756, 0, 0))
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
  Body_SetCS(node40, MAT_Vector3(-9.934589, 2151.806, 518.754742), MAT_Vector3(72.507483, 0, 0))
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
  Body_SetCS(node41, MAT_Vector3(-17.92301, 1929.576, 533.535351), MAT_Vector3(73.611164, 0, 0))
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
  Body_SetCS(node42, MAT_Vector3(0.045838, 1716.07, 522.400345), MAT_Vector3(113.125082, 0, 0))
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
  Body_SetCS(node43, MAT_Vector3(-38.26778, 1412.259, 546.1016), MAT_Vector3(119.555874, 0, 0))
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
  Body_SetCS(node44, MAT_Vector3(1619.837086, 2284.864506, 521.17177), MAT_Vector3(126.190946, 0, 0))
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
  Body_SetCS(node45, MAT_Vector3(1541.974607, 2867.140288, 523.55727), MAT_Vector3(134.226512, 0, 0))
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
  Body_SetCS(node46, MAT_Vector3(1184.240565, 1664.958815, 521.966987), MAT_Vector3(110.402484, 0, 0))
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
  Body_SetCS(node47, MAT_Vector3(873.562069, 2075.314456, 523.590259), MAT_Vector3(98.198869, 0, 0))
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
  Body_SetCS(node48, MAT_Vector3(754.9057, 1926.898, 523.515916), MAT_Vector3(100.623397, 0, 0))
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
  Body_SetCS(node49, MAT_Vector3(432.4916, 2063.288, 512.335225), MAT_Vector3(89.890616, 0, 0))
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
  Body_SetCS(node50, MAT_Vector3(1512.40914, 2097.141214, 519.09403), MAT_Vector3(126.045771, 0, 0))
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
  Body_SetCS(node51, MAT_Vector3(196.7227, 1926.915, 512.912086), MAT_Vector3(90.589313, 0, 0))
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
  Body_SetCS(node52, MAT_Vector3(419.7231, 1822.792, 537.382726), MAT_Vector3(89.500317, 0, 0))
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
  Body_SetCS(node53, MAT_Vector3(1536.879176, 2462.617753, 522.892396), MAT_Vector3(127.510862, 0, 0))
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
  Body_SetCS(node54, MAT_Vector3(1729.838917, 2050.849198, 509.154644), MAT_Vector3(125.830204, 0, 0))
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
  Body_SetCS(node55, MAT_Vector3(2346.281327, 2653.435975, 574.856097), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node56, MAT_Vector3(2298.145, 2727.698, 578.874058), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node57, MAT_Vector3(2298.104, 2653.653, 576.680505), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node58, MAT_Vector3(2298.158701, 2690.61141, 578.654703), MAT_Vector3(-0.24662, 0, 0))
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
  Body_SetCS(node59, MAT_Vector3(2346.741028, 2690.280342, 575.802022), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node60, MAT_Vector3(2346.610854, 2728.394059, 576.241795), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node61, MAT_Vector3(2875.879, 4040.804, 582.881329), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node62, MAT_Vector3(2637.598, 3982.804, 557.761523), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node63, MAT_Vector3(2929.07, 3933.702, 620.004259), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node64, MAT_Vector3(2179.709, 2326.262, 597.654726), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node65, MAT_Vector3(2167.075, 2409.261, 596.056735), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node67, MAT_Vector3(2140.797, 2857.591, 587.639266), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node68, MAT_Vector3(2167.9, 2779.44, 593.187826), MAT_Vector3(0, 1e-06, 0.643773))
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
  Body_SetCS(node69, MAT_Vector3(2731.991, 3416.917, 631.708936), MAT_Vector3(0.119481, -3.5387, 1.935009))
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
  Body_SetCS(node70, MAT_Vector3(1917.831, 2695.655, 615.622052), MAT_Vector3(0.119481, -3.5387, 1.935009))
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
  Body_SetCS(node72, MAT_Vector3(2042.838441, 2324.959945, 588.701735), MAT_Vector3(0, -2.5751, 2.253205))
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
  Body_SetCS(node73, MAT_Vector3(1908.576, 3173.322, 572.530881), MAT_Vector3(0.173806, -3.8587, 2.580946))
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
  Body_SetCS(node74, MAT_Vector3(2186.184, 3271.272, 588.293329), MAT_Vector3(0, -2.2532, 1.287546))
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
  Body_SetCS(node75, MAT_Vector3(1876.119, 2122.179, 547.75227), MAT_Vector3(0, -1.9313, 0))
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
  Body_SetCS(node76, MAT_Vector3(2564.545, 3152.543, 630.845451), MAT_Vector3(-169.7367, 0, 0))
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
  Body_SetCS(node77, MAT_Vector3(2391.5, 3287.042, 602.45189), MAT_Vector3(-50.4607, 0, 0))
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
  Body_SetCS(node78, MAT_Vector3(2768.327669, 3243.996201, 570.4375), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node79, MAT_Vector3(2320.318, 2859.088, 640.661599), MAT_Vector3(-90, 0, 0))
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
  Body_SetCS(node80, MAT_Vector3(2316.454, 2520.264, 632.100003), MAT_Vector3(-90, 0, 0))
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
  Body_SetCS(node81, MAT_Vector3(2321.557145, 2692.480831, 594.562462), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node82, MAT_Vector3(1171.080775, 1985.79654, 494.814363), MAT_Vector3(23.645473, 0, 0))
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
  Body_SetCS(node83, MAT_Vector3(1256.725194, 2106.913669, 491.488189), MAT_Vector3(24.35752, 0, 0))
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
  Body_SetCS(node84, MAT_Vector3(1282.10156, 2050.821682, 488.516144), MAT_Vector3(24.949009, 0, 0))
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
  Body_SetCS(node85, MAT_Vector3(1093.421538, 2048.017086, 481.516708), MAT_Vector3(23.190957, 0, 0))
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
  Body_SetCS(node86, MAT_Vector3(1222.769477, 1939.258255, 505.261924), MAT_Vector3(-66.343324, 0, 0))
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
  Body_SetCS(node87, MAT_Vector3(1176.542099, 1934.572168, 587.866923), MAT_Vector3(44.924325, 0, 0))
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
  Body_SetCS(node88, MAT_Vector3(1169.219787, 2036.162264, 587.8669), MAT_Vector3(45.862665, 0, 0))
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
  Body_SetCS(node89, MAT_Vector3(1227.027321, 1953.447916, 577), MAT_Vector3(23.711919, 0, 0))
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
  Body_SetCS(node90, MAT_Vector3(1222.209391, 1964.388925, 577), MAT_Vector3(23.71192, 0, 0))
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
  Body_SetCS(node91, MAT_Vector3(1217.616513, 1975.014754, 577), MAT_Vector3(23.71192, 0, 0))
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
  Body_SetCS(node92, MAT_Vector3(1403.685, 1757.691, 517.7945), MAT_Vector3(111.832861, 0, 0))
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
  Body_SetCS(node93, MAT_Vector3(1394.961, 2287.163, 522.0477), MAT_Vector3(121.779993, 0, 0))
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
  Body_SetCS(node94, MAT_Vector3(923.7086, 1790.811, 525.4866), MAT_Vector3(102.913326, 0, 0))
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
  node104 = Node_CreateNode("NOD_PatrolArea", "ScoutFightArea_1")
  Node_AddSon(node102, node104)
  PatrolArea_SetPosition(node104, MAT_Vector3(1867.074983, 3499.575864, 613.433417))
  PatrolArea_SetRadius(node104, 200)
  PatrolArea_SetMinZ(node104, -100)
  PatrolArea_SetMaxZ(node104, 250)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_PatrolArea", "ScoutFightArea_2")
  Node_AddSon(node102, node105)
  PatrolArea_SetPosition(node105, MAT_Vector3(1638.656847, 2790.373648, 609.569375))
  PatrolArea_SetRadius(node105, 256)
  PatrolArea_SetMinZ(node105, -100)
  PatrolArea_SetMaxZ(node105, 250)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_PatrolArea", "ScoutFightArea_3")
  Node_AddSon(node102, node106)
  PatrolArea_SetPosition(node106, MAT_Vector3(559.917455, 1798.294483, 612.981892))
  PatrolArea_SetRadius(node106, 256)
  PatrolArea_SetMinZ(node106, -100)
  PatrolArea_SetMaxZ(node106, 250)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node102, node107)
  Body_SetCS(node107, MAT_Vector3(842.110225, 1838.628406, 775.594618), MAT_Vector3())
  Stream_SetBoxExtension(node107, 920, 620, 280)
  Stream_SetCurrentDirection(node107, MAT_Vector3(-90.339888, 10, 0))
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node102, node108)
  PatrolArea_SetPosition(node108, MAT_Vector3(1175.504652, 1964.995977, 540))
  PatrolArea_SetRadius(node108, 350)
  PatrolArea_SetMinZ(node108, -120)
  PatrolArea_SetMaxZ(node108, 320)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_FX_Stream", "Stream_2")
  Node_AddSon(node102, node109)
  Body_SetCS(node109, MAT_Vector3(2721.855, 1420.895, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node109, 1300, 800, 280)
  Stream_SetCurrentDirection(node109, MAT_Vector3(-105.5364, 9.657023, 2.608925))
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_FX_Stream", "Stream_3")
  Node_AddSon(node102, node110)
  Body_SetCS(node110, MAT_Vector3(1513.666, 2810.241, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node110, 500, 620, 280)
  Stream_SetCurrentDirection(node110, MAT_Vector3(-62.75359, 10, 0))
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_FX_Stream", "Stream_4")
  Node_AddSon(node102, node111)
  Body_SetCS(node111, MAT_Vector3(2292.385, 3638.969, 775.5946), MAT_Vector3())
  Stream_SetBoxExtension(node111, 800, 350, 280)
  Stream_SetCurrentDirection(node111, MAT_Vector3(-65.23697, 10, 0))
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node100, node112)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node100, node113)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node100, node114)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node114, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "gen_transp_2")
  Node_AddSon(node115, node116)
  Body_SetCS(node116, MAT_Vector3(2770.462, 3238.311, 679.574639), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "DeathBlow")
  Node_AddSon(node114, node117)
  Body_SetCS(node117, MAT_Vector3(872.798298, 1948.393651, 593.952321), MAT_Vector3(-90.616032, 0, 0))
  Node_ParseIniFile(node117, "osd/ent/ent_deathblow.osd")
  Body_SetFriendOrFoeID(node117, 6)
  Body_SetNameKey(node117, 308)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node114, node118)
  Body_SetCS(node118, MAT_Vector3(2105.788415, 3272.800898, 650.507415), MAT_Vector3(126.963141, 0, 0))
  Node_ParseIniFile(node118, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node118, 4)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "ent_scout_1")
  Node_AddSon(node114, node119)
  Body_SetCS(node119, MAT_Vector3(1654.503706, 2810.428964, 644.670002), MAT_Vector3(65.737142, 0, 0))
  Node_ParseIniFile(node119, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node119, 2)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "ent_scout_2")
  Node_AddSon(node114, node120)
  Body_SetCS(node120, MAT_Vector3(1621.490617, 2759.640514, 649.007123), MAT_Vector3(43.697645, 0, 0))
  Node_ParseIniFile(node120, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node120, 2)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "ent_scout_5")
  Node_AddSon(node114, node121)
  Body_SetCS(node121, MAT_Vector3(700.50699, 1791.35716, 681.659408), MAT_Vector3(179.082516, 0, 0))
  Node_ParseIniFile(node121, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node121, 2)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "ent_scout_6")
  Node_AddSon(node114, node122)
  Body_SetCS(node122, MAT_Vector3(645.923188, 1762.099182, 676.375439), MAT_Vector3(-134.650223, 0, 0))
  Node_ParseIniFile(node122, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node122, 2)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "ent_pscout_1")
  Node_AddSon(node114, node123)
  Body_SetCS(node123, MAT_Vector3(2863.19081, 3514.864157, 705.530257), MAT_Vector3(117.999039, 0, 0))
  Node_ParseIniFile(node123, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node123, 1)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "ent_pscout_2")
  Node_AddSon(node114, node124)
  Body_SetCS(node124, MAT_Vector3(2877.921633, 3511.683825, 706.805224), MAT_Vector3(121.160387, 0, 0))
  Node_ParseIniFile(node124, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node124, 1)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "ent_pscout_3")
  Node_AddSon(node114, node125)
  Body_SetCS(node125, MAT_Vector3(2864.946204, 3530.151425, 706.807685), MAT_Vector3(114.129528, 0, 0))
  Node_ParseIniFile(node125, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node125, 1)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "ent_pscout_4")
  Node_AddSon(node114, node126)
  Body_SetCS(node126, MAT_Vector3(2920.985427, 3571.8074, 675.425736), MAT_Vector3(117.346903, 0.099907, 1.037771))
  Node_ParseIniFile(node126, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node126, 1)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "ent_pscout_5")
  Node_AddSon(node114, node127)
  Body_SetCS(node127, MAT_Vector3(2934.99855, 3569.286848, 679.016268), MAT_Vector3(119.283023, 0.042202, 0.635791))
  Node_ParseIniFile(node127, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node127, 1)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "ent_pscout_6")
  Node_AddSon(node114, node128)
  Body_SetCS(node128, MAT_Vector3(2927.953282, 3584.929046, 681.723768), MAT_Vector3(124.497859, 0.065991, 0.48723))
  Node_ParseIniFile(node128, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node128, 1)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "ent_pscout_7")
  Node_AddSon(node114, node129)
  Body_SetCS(node129, MAT_Vector3(2934.210884, 3534.697879, 742.245666), MAT_Vector3(115.036951, 0.229729, 2.671984))
  Node_ParseIniFile(node129, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node129, 1)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "ent_pscout_8")
  Node_AddSon(node114, node130)
  Body_SetCS(node130, MAT_Vector3(2941.029973, 3550.279487, 747.429558), MAT_Vector3(111.584494, 2.058982, 6.459122))
  Node_ParseIniFile(node130, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node130, 1)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "ent_pscout_9")
  Node_AddSon(node114, node131)
  Body_SetCS(node131, MAT_Vector3(2950.892252, 3535.655391, 748.700297), MAT_Vector3(108.94854, 0, 0))
  Node_ParseIniFile(node131, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node131, 1)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node114, node132)
  Body_SetPosition(node132, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node132, 5)
  Node_ParseIniFile(node132, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node114, node133)
  Body_SetPosition(node133, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node133, 5)
  Node_ParseIniFile(node133, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_3")
  Node_AddSon(node114, node134)
  Body_SetPosition(node134, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node134, 5)
  Node_ParseIniFile(node134, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node114, node135)
  Body_SetPosition(node135, MAT_Vector3(1921.878995, 3476.200156, 590.402007))
  WayPoint_SetRadius(node135, 180)
  Node_ParseIniFile(node135, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node114, node136)
  Body_SetPosition(node136, MAT_Vector3(333.335508, 1386.395328, 540))
  WayPoint_SetRadius(node136, 1550)
  Node_ParseIniFile(node136, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vessel", "ent_scout_area1_1")
  Node_AddSon(node114, node137)
  Body_SetCS(node137, MAT_Vector3(1787.980631, 3641.718245, 659.8184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/ent/ent_scout_2h3.osd")
  Body_SetFriendOrFoeID(node137, 2)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "ent_scout_area1_2")
  Node_AddSon(node114, node138)
  Body_SetCS(node138, MAT_Vector3(1718.772511, 3552.736375, 659.8184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node138, "osd/ent/ent_scout_2h3.osd")
  Body_SetFriendOrFoeID(node138, 6)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "ent_scout_area1_3")
  Node_AddSon(node114, node139)
  Body_SetCS(node139, MAT_Vector3(1924.74906, 3590.63606, 659.8184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node139, "osd/ent/ent_scout_2h3.osd")
  Body_SetFriendOrFoeID(node139, 6)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vessel", "ent_scout_distract_1")
  Node_AddSon(node114, node140)
  Body_SetCS(node140, MAT_Vector3(1033.282553, 2076.296467, 659.8184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/ent/ent_scout_2h3.osd")
  Body_SetFriendOrFoeID(node140, 6)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vessel", "ent_scout_distract_2")
  Node_AddSon(node114, node141)
  Body_SetCS(node141, MAT_Vector3(1372.731907, 2021.918658, 659.8184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node141, "osd/ent/ent_scout_2h3.osd")
  Body_SetFriendOrFoeID(node141, 6)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "ent_scout_distract_3")
  Node_AddSon(node114, node142)
  Body_SetCS(node142, MAT_Vector3(1087.660363, 1807.703047, 659.8184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/ent/ent_scout_2h3.osd")
  Body_SetFriendOrFoeID(node142, 6)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "ent_bomber_2h3_1")
  Node_AddSon(node114, node143)
  Body_SetCS(node143, MAT_Vector3(1294.815516, 2246.760925, 737.687621), MAT_Vector3(-73.663554, 0, 0))
  Node_ParseIniFile(node143, "osd/ent/ent_bomber_2h3.osd")
  Body_SetFriendOrFoeID(node143, 6)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vessel", "ent_bomber_2h3_2")
  Node_AddSon(node114, node144)
  Body_SetCS(node144, MAT_Vector3(1287.729943, 1826.350222, 678.207771), MAT_Vector3(-113.95832, 0, 0))
  Node_ParseIniFile(node144, "osd/ent/ent_bomber_2h3.osd")
  Body_SetFriendOrFoeID(node144, 6)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "ent_bomber_2h3_3")
  Node_AddSon(node114, node145)
  Body_SetCS(node145, MAT_Vector3(1013.754428, 1885.396669, 667.852491), MAT_Vector3(130.125687, 0, 0))
  Node_ParseIniFile(node145, "osd/ent/ent_bomber_2h3.osd")
  Body_SetFriendOrFoeID(node145, 6)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "wng_harper_c2_1")
  Node_AddSon(node114, node146)
  Body_SetCS(node146, MAT_Vector3(2989.357073, 3540.210519, 755.575625), MAT_Vector3(100.306946, 0, 0))
  Node_ParseIniFile(node146, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node146, 5)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_4")
  Node_AddSon(node114, node147)
  Body_SetPosition(node147, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node147, 5)
  Node_ParseIniFile(node147, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node148)
  Camera_SetBackPlane(node148, 512)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node149, node150)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node149, node151)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Path", "PolicePath_1")
  Node_AddSon(node151, node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node152, node153)
  Position_SetPosition(node153, MAT_Vector3(2851.001317, 3508.867311, 697.822645))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node152, node154)
  Position_SetPosition(node154, MAT_Vector3(2757.142901, 3477.520904, 695.454405))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node152, node155)
  Position_SetPosition(node155, MAT_Vector3(2677.092268, 3445.867926, 671.474281))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node152, node156)
  Position_SetPosition(node156, MAT_Vector3(2586.949622, 3422.452463, 660.858142))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node152, node157)
  Position_SetPosition(node157, MAT_Vector3(2415.521332, 3373.887671, 682.810236))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node152, node158)
  Position_SetPosition(node158, MAT_Vector3(2299.890076, 3321.177884, 697.848605))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node152, node159)
  Position_SetPosition(node159, MAT_Vector3(2192.356624, 3170.999374, 649.897025))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node152, node160)
  Position_SetPosition(node160, MAT_Vector3(2050.319664, 2963.253637, 641.199234))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node152, node161)
  Position_SetPosition(node161, MAT_Vector3(1899.859523, 2871.255099, 662.907232))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node152, node162)
  Position_SetPosition(node162, MAT_Vector3(1794.37365, 2811.290143, 647.391724))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Path", "PolicePath_2")
  Node_AddSon(node151, node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node163, node164)
  Position_SetPosition(node164, MAT_Vector3(2911.001, 3568.867, 677.8226))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node163, node165)
  Position_SetPosition(node165, MAT_Vector3(2817.143, 3537.521, 675.4544))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node163, node166)
  Position_SetPosition(node166, MAT_Vector3(2737.092, 3505.868, 651.4743))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node163, node167)
  Position_SetPosition(node167, MAT_Vector3(2646.95, 3482.452, 640.8581))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node163, node168)
  Position_SetPosition(node168, MAT_Vector3(2475.521, 3433.888, 662.8102))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node163, node169)
  Position_SetPosition(node169, MAT_Vector3(2286.973231, 3333.572501, 677.8486))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node163, node170)
  Position_SetPosition(node170, MAT_Vector3(2193.095489, 3251.227703, 641.054972))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node163, node171)
  Position_SetPosition(node171, MAT_Vector3(1725.957785, 2779.272933, 738.747216))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Path", "PolicePath_3")
  Node_AddSon(node151, node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node172, node173)
  Position_SetPosition(node173, MAT_Vector3(2921.001, 3528.867, 740.756633))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node172, node174)
  Position_SetPosition(node174, MAT_Vector3(2835.678548, 3477.931808, 683.433659))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node172, node175)
  Position_SetPosition(node175, MAT_Vector3(2746.468957, 3461.827893, 701.4743))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node172, node176)
  Position_SetPosition(node176, MAT_Vector3(2658.819129, 3432.794835, 678.708764))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node172, node177)
  Position_SetPosition(node177, MAT_Vector3(2485.521, 3393.888, 712.8102))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node172, node178)
  Position_SetPosition(node178, MAT_Vector3(2369.89, 3341.178, 727.8486))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node172, node179)
  Position_SetPosition(node179, MAT_Vector3(2234.0721, 3155.297553, 679.897))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node172, node180)
  Position_SetPosition(node180, MAT_Vector3(2165.597, 2951.096, 671.1992))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node172, node181)
  Position_SetPosition(node181, MAT_Vector3(2083.609, 2729.805, 692.9072))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node172, node182)
  Position_SetPosition(node182, MAT_Vector3(2022.155, 2501.051, 677.3917))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node172, node183)
  Position_SetPosition(node183, MAT_Vector3(1886.601, 2262.129, 635.8404))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node172, node184)
  Position_SetPosition(node184, MAT_Vector3(1813.795686, 1982.891764, 589.379526))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node172, node185)
  Position_SetPosition(node185, MAT_Vector3(1628.0996, 1801.309195, 607.046035))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node172, node186)
  Position_SetPosition(node186, MAT_Vector3(1515.617777, 1681.407069, 592.661168))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node172, node187)
  Position_SetPosition(node187, MAT_Vector3(1432.568936, 1576.062142, 588.489589))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node172, node188)
  Position_SetPosition(node188, MAT_Vector3(1097.537743, 1492.404196, 733.17792))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node172, node189)
  Position_SetPosition(node189, MAT_Vector3(900.187279, 1608.741231, 638.350234))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node172, node190)
  Position_SetPosition(node190, MAT_Vector3(795.437566, 1764.890951, 625.797926))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node151, node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node191, node192)
  Position_SetPosition(node192, MAT_Vector3(2921.001, 3588.867, 684.336641))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node191, node193)
  Position_SetPosition(node193, MAT_Vector3(2835.679, 3537.932, 702.4054))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node191, node194)
  Position_SetPosition(node194, MAT_Vector3(2754.402965, 3500.476627, 711.4743))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node191, node195)
  Position_SetPosition(node195, MAT_Vector3(2656.452782, 3463.866655, 700.8581))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node191, node196)
  Position_SetPosition(node196, MAT_Vector3(2491.859211, 3415.246266, 722.8102))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node191, node197)
  Position_SetPosition(node197, MAT_Vector3(2383.919042, 3369.587076, 737.8486))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node191, node198)
  Position_SetPosition(node198, MAT_Vector3(2231.993, 3217.64333, 689.897))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node191, node199)
  Position_SetPosition(node199, MAT_Vector3(2128.258776, 3007.72252, 681.1992))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node191, node200)
  Position_SetPosition(node200, MAT_Vector3(2083.609, 2789.805, 702.9072))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node191, node201)
  Position_SetPosition(node201, MAT_Vector3(2022.155, 2561.051, 687.3917))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node191, node202)
  Position_SetPosition(node202, MAT_Vector3(1886.601, 2322.129, 645.8404))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node191, node203)
  Position_SetPosition(node203, MAT_Vector3(1740.03, 2244.188, 629.523))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node151, node204)
  Position_SetPosition(node204, MAT_Vector3(2671.935157, 3250.201258, 741.668144))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node151, node205)
  Position_SetPosition(node205, MAT_Vector3(2424.738988, 3415.998004, 601.246613))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node151, node206)
  Position_SetPosition(node206, MAT_Vector3(2328.432591, 3360.102702, 795.342708))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node151, node207)
  Position_SetPosition(node207, MAT_Vector3(2183.802488, 3209.568262, 803.831259))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node151, node208)
  Position_SetPosition(node208, MAT_Vector3(1130.448, 1971.014, 779.8212))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "BomberPosition_1")
  Node_AddSon(node151, node209)
  Position_SetPosition(node209, MAT_Vector3(1204.552907, 2298.908452, 771.505375))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "BomberPosition_2")
  Node_AddSon(node151, node210)
  Position_SetPosition(node210, MAT_Vector3(1386.954612, 1827.927351, 702.794361))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "BomberPosition_3")
  Node_AddSon(node151, node211)
  Position_SetPosition(node211, MAT_Vector3(1042.081922, 1727.340018, 655.613741))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "Position_6")
  Node_AddSon(node151, node212)
  Position_SetPosition(node212, MAT_Vector3(1886.128368, 3418.883723, 728.405633))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node149, node213)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Director", "Chapter1IntroV")
  Node_AddSon(node213, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Director", "Chapter1IntroAddon")
  Node_AddSon(node213, node215)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Director", "Chapter1IntroA")
  Node_AddSon(node213, node216)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Director", "Chapter2IntroV")
  Node_AddSon(node213, node217)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Director", "ShowBombers")
  Node_AddSon(node213, node218)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node149, node219)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node219, node220)
  Body_SetFriendOrFoeID(node220, 0)
  Body_SetPosition(node220, MAT_Vector3(1602.386162, 2003.235578, 601.21577))
  Trigger_SetPresenceSphere(node220, 50)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node149, node221)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_vessel", "dir_cammesh_1")
  Node_AddSon(node221, node222)
  Body_SetCS(node222, MAT_Vector3(1376.040351, 2282.078502, 634.320938), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node222, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node222, 6)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_vessel", "dir_cammesh_2")
  Node_AddSon(node221, node223)
  Body_SetCS(node223, MAT_Vector3(1392.132661, 1778.612975, 643.584002), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node223, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node223, 6)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_vessel", "dir_cammesh_3")
  Node_AddSon(node221, node224)
  Body_SetCS(node224, MAT_Vector3(932.282729, 1793.923086, 634.3209), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node224, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node224, 6)
  Body_SetNameKey(node224, -1)
  Body_SetCargoKey(node224, -1, 0)
  Body_SetCargoKey(node224, -1, 1)
  Body_SetCargoKey(node224, -1, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_vessel", "dir_cammesh_2h3_1")
  Node_AddSon(node221, node225)
  Body_SetCS(node225, MAT_Vector3(2040.089891, 3454.095779, 691.065598), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node225, "osd/dir/dir_cammesh_2h3.osd")
  Body_SetFriendOrFoeID(node225, 0)
  Body_SetNameKey(node225, -1)
  Body_SetCargoKey(node225, -1, 0)
  Body_SetCargoKey(node225, -1, 1)
  Body_SetCargoKey(node225, -1, 2)
  Node_EnterSimulation(node225)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, F)
SetEnemyMatrixElement(5, 0, F)
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
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, F)
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
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
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
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, N)
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
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, F)
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, N)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, F)
SetEnemyMatrixElement(6, 4, E)
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
SetEnemyMatrixElement(0, 6, E)
SetEnemyMatrixElement(1, 6, N)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, E)
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
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (o3128.Value ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2609 2242")
  SendRadioMessageTake(o3107.Node, o3107.Node, 83)
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
                                                                                                                                                                                    if not (o3152.Value == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o3107.Node, o3107.Node, 78)
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2899, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2899, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2899, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2899, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2899, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2899, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2903.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2900.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2900 = { [nil] = {}, GetCalculated = function()
  if not (o3117.Value ~= True) then
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
    o2900["Value"] = L0
    CallFunction(o2899, "ProcesseStateChange")
  end
end }
o2903 = { [nil] = {}, Start = function()
  o2903["Value"] = False
  o3112.StartCalculate()
  o3113.StartCalculate()
  o3114.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2903.Value == L0) then
    o2903["Value"] = L0
    o3112.ReCalculate()
    o3113.ReCalculate()
    o3114.ReCalculate()
  end
end }
S_o2935 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2935, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2935, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2935, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2935, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2935, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2935, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2939.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2936.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2936 = { [nil] = {}, GetCalculated = function()
  if not (o3117.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2936.SetStateValue(o2936.GetCalculated())
end, StartCalculate = function()
  o2936["Value"] = o2936.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2936.Value == L0) then
    o2936["Value"] = L0
    CallFunction(o2935, "ProcesseStateChange")
  end
end }
o2939 = { [nil] = {}, Start = function()
  o2939["Value"] = False
  o3112.StartCalculate()
  o3113.StartCalculate()
  o3114.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2939.Value == L0) then
    o2939["Value"] = L0
    o3112.ReCalculate()
    o3113.ReCalculate()
    o3114.ReCalculate()
  end
end }
S_o2971 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2971, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2971, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2971, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2971, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2971, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2971, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2975.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2972.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2972 = { [nil] = {}, GetCalculated = function()
  if not (o3117.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2972.SetStateValue(o2972.GetCalculated())
end, StartCalculate = function()
  o2972["Value"] = o2972.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2972.Value == L0) then
    o2972["Value"] = L0
    CallFunction(o2971, "ProcesseStateChange")
  end
end }
o2975 = { [nil] = {}, Start = function()
  o2975["Value"] = False
  o3112.StartCalculate()
  o3113.StartCalculate()
  o3114.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2975.Value == L0) then
    o2975["Value"] = L0
    o3112.ReCalculate()
    o3113.ReCalculate()
    o3114.ReCalculate()
  end
end }
S_o3007 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 2)
  CallFunction(o3007, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3007, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Stream_SetCurrentSpeed(L0.Node, 40, 3)
  CallFunction(o3007, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3007, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Stream_SetCurrentSpeed(L0.Node, 80, 4)
  CallFunction(o3007, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3008.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3009.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3008 = { [nil] = {}, GetCalculated = function()
  if not (o3112.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3008.SetStateValue(o3008.GetCalculated())
end, StartCalculate = function()
  o3008["Value"] = o3008.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3008.Value == L0) then
    o3008["Value"] = L0
    CallFunction(o3007, "ProcesseStateChange")
  end
end }
o3009 = { [nil] = {}, GetCalculated = function()
  if not (o3113.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3009.SetStateValue(o3009.GetCalculated())
end, StartCalculate = function()
  o3009["Value"] = o3009.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3009.Value == L0) then
    o3009["Value"] = L0
    CallFunction(o3007, "ProcesseStateChange")
  end
end }
S_o3010 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 15, 2)
  CallFunction(o3010, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3011 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 2)
  CallFunction(o3011, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 20, 2)
  CallFunction(o3012, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3013 = { [nil] = {}, Start = function(L0)

end }
S_o3059 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3059, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3059, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3059, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3059, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "/Scenario_Dynamic/Navigation/OverallArea", "player1", "", "", "", 1, "Code5")
  else
    CallFunction(o3059, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o3063.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o3064.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3061.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3061 = { [nil] = {}, GetCalculated = function()
  if not (o3118.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3061.SetStateValue(o3061.GetCalculated())
end, StartCalculate = function()
  o3061["Value"] = o3061.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3061.Value == L0) then
    o3061["Value"] = L0
    CallFunction(o3059, "ProcesseStateChange")
  end
end }
o3063 = { [nil] = {}, Start = function()
  o3063["Value"] = False
  o3962.StartCalculate()
  o4010.StartCalculate()
  o4058.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3063.Value == L0) then
    o3063["Value"] = L0
    o3962.ReCalculate()
    o4010.ReCalculate()
    o4058.ReCalculate()
  end
end }
o3064 = { [nil] = {}, Start = function()
  o3064["Value"] = False
  o3126.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3064.Value == L0) then
    o3064["Value"] = L0
    o3126.ReCalculate()
  end
end }
S_o3107 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "ammo_energy", 2000)
  Body_AddItem(L0.Node, "ammo_shell", 2000)
  Body_AddItem(L0.Node, "torpedo_bullshark", 3)
  Body_AddItem(L0.Node, "torpedo_tigershark", 7)
  Body_AddItem(L0.Node, "BUZZER_NORMAL", 12)
  CallFunction(o3107, "Code8")
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
o3112 = { [nil] = {}, GetCalculated = function()
  if not (o2903.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2939.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2975.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 1) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3112.SetStateValue(o3112.GetCalculated())
end, StartCalculate = function()
  o3112["Value"] = o3112.GetCalculated()
  o3008.StartCalculate()
  o3115.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3112.Value == L0) then
    o3112["Value"] = L0
    o3008.ReCalculate()
    o3115.ReCalculate()
  end
end }
o3113 = { [nil] = {}, GetCalculated = function()
  if not (o2903.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2939.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2975.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 2) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3113.SetStateValue(o3113.GetCalculated())
end, StartCalculate = function()
  o3113["Value"] = o3113.GetCalculated()
  o3009.StartCalculate()
  o3116.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3113.Value == L0) then
    o3113["Value"] = L0
    o3009.ReCalculate()
    o3116.ReCalculate()
  end
end }
o3114 = { [nil] = {}, GetCalculated = function()
  if not (o2903.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2939.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2975.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3114.SetStateValue(o3114.GetCalculated())
end, StartCalculate = function()
  o3114["Value"] = o3114.GetCalculated()
  o3152.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3114.Value == L0) then
    o3114["Value"] = L0
    o3152.ReCalculate()
  end
end }
o3115 = { [nil] = {}, GetCalculated = function()
  if not (o3112.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3115.SetStateValue(o3115.GetCalculated())
end, StartCalculate = function()
  o3115["Value"] = o3115.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3107.Node, o3107.Node, 1120)
end, SetStateValue = function(L0)
  if not (o3115.Value == L0) then
    o3115["Value"] = L0
    if not (L0 ~= 1) then
      o3115.ChangeTo1()
    end
  end
end }
o3116 = { [nil] = {}, GetCalculated = function()
  if not (o3113.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3116.SetStateValue(o3116.GetCalculated())
end, StartCalculate = function()
  o3116["Value"] = o3116.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3107.Node, o3107.Node, 1121)
end, SetStateValue = function(L0)
  if not (o3116.Value == L0) then
    o3116["Value"] = L0
    if not (L0 ~= 1) then
      o3116.ChangeTo1()
    end
  end
end }
o3117 = { [nil] = {}, Start = function()
  o3117["Value"] = False
  o2900.StartCalculate()
  o2936.StartCalculate()
  o2972.StartCalculate()
  o3815.StartCalculate()
  o3864.StartCalculate()
  o3913.StartCalculate()
  o4253.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3117.Value == L0) then
    o3117["Value"] = L0
    o2900.ReCalculate()
    o2936.ReCalculate()
    o2972.ReCalculate()
    o3815.ReCalculate()
    o3864.ReCalculate()
    o3913.ReCalculate()
    o4253.ReCalculate()
  end
end }
o3118 = { [nil] = {}, Start = function()
  o3118["Value"] = False
  o3061.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3118.Value == L0) then
    o3118["Value"] = L0
    o3061.ReCalculate()
  end
end }
o3119 = { [nil] = {}, GetCalculated = function()
  if not (o4121.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3119.SetStateValue(o3119.GetCalculated())
end, StartCalculate = function()
  o3119["Value"] = o3119.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3794.Node)
end, SetStateValue = function(L0)
  if not (o3119.Value == L0) then
    o3119["Value"] = L0
    if not (L0 ~= 1) then
      o3119.ChangeTo1()
    end
  end
end }
o3120 = { [nil] = {}, GetCalculated = function()
  if not (o4121.Value ~= True) then
    if not (o4170.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3120.SetStateValue(o3120.GetCalculated())
end, StartCalculate = function()
  o3120["Value"] = o3120.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3799.Node)
end, SetStateValue = function(L0)
  if not (o3120.Value == L0) then
    o3120["Value"] = L0
    if not (L0 ~= 1) then
      o3120.ChangeTo1()
    end
  end
end }
o3121 = { [nil] = {}, GetCalculated = function()
  if not (o4121.Value ~= True) then
    if not (o4170.Value ~= True) then
      if not (o4219.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3121.SetStateValue(o3121.GetCalculated())
end, StartCalculate = function()
  o3121["Value"] = o3121.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o3121.Value == L0) then
    o3121["Value"] = L0
    if not (L0 ~= 1) then
      o3121.ChangeTo1()
    end
  end
end }
o3122 = { [nil] = {}, GetCalculated = function()
  if not (o3830.Value ~= True) then
    if not (o3879.Value ~= True) then
      if not (o3928.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3122.SetStateValue(o3122.GetCalculated())
end, StartCalculate = function()
  o3122["Value"] = o3122.GetCalculated()
  o3963.StartCalculate()
  o4011.StartCalculate()
  o4059.StartCalculate()
  o4108.StartCalculate()
  o4157.StartCalculate()
  o4206.StartCalculate()
  o4343.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3122.Value == L0) then
    o3122["Value"] = L0
    o3963.ReCalculate()
    o4011.ReCalculate()
    o4059.ReCalculate()
    o4108.ReCalculate()
    o4157.ReCalculate()
    o4206.ReCalculate()
    o4343.ReCalculate()
  end
end }
o3123 = { [nil] = {}, GetCalculated = function()
  if not (o3171.Value ~= True) then
    if not (o3219.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3123.SetStateValue(o3123.GetCalculated())
end, StartCalculate = function()
  o3123["Value"] = o3123.GetCalculated()
  o3350.StartCalculate()
  o3399.StartCalculate()
  o3448.StartCalculate()
  o3497.StartCalculate()
  o3546.StartCalculate()
  o3595.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3123.Value == L0) then
    o3123["Value"] = L0
    o3350.ReCalculate()
    o3399.ReCalculate()
    o3448.ReCalculate()
    o3497.ReCalculate()
    o3546.ReCalculate()
    o3595.ReCalculate()
  end
end }
o3124 = { [nil] = {}, GetCalculated = function()
  if not (o3267.Value ~= True) then
    if not (o3315.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3124.SetStateValue(o3124.GetCalculated())
end, StartCalculate = function()
  o3124["Value"] = o3124.GetCalculated()
  o3644.StartCalculate()
  o3693.StartCalculate()
  o3742.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3124.Value == L0) then
    o3124["Value"] = L0
    o3644.ReCalculate()
    o3693.ReCalculate()
    o3742.ReCalculate()
  end
end }
o3125 = { [nil] = {}, GetCalculated = function()
  if not (o3812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3125.SetStateValue(o3125.GetCalculated())
end, StartCalculate = function()
  o3125["Value"] = o3125.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o3789.Node)
end, SetStateValue = function(L0)
  if not (o3125.Value == L0) then
    o3125["Value"] = L0
    if not (L0 ~= 1) then
      o3125.ChangeTo1()
    end
  end
end }
o3126 = { [nil] = {}, GetCalculated = function()
  if not (o3064.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3126.SetStateValue(o3126.GetCalculated())
end, StartCalculate = function()
  o3126["Value"] = o3126.GetCalculated()
  o3127.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3107.Node, o3107.Node, 1119)
end, SetStateValue = function(L0)
  if not (o3126.Value == L0) then
    o3126["Value"] = L0
    o3127.ReCalculate()
    if not (L0 ~= 1) then
      o3126.ChangeTo1()
    end
  end
end }
o3127 = { [nil] = {}, GetCalculated = function()
  if not (o3126.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3127.SetStateValue(o3127.GetCalculated())
end, StartCalculate = function()
  o3127["Value"] = o3127.GetCalculated()
  o3128.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3127.Value == L0) then
    DelayedFunction(14, o3127, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3127.Value == L0) then
    o3127["Value"] = L0
    o3128.ReCalculate()
  end
end }
o3128 = { [nil] = {}, GetCalculated = function()
  if not (o3127.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3128.SetStateValue(o3128.GetCalculated())
end, StartCalculate = function()
  o3128["Value"] = o3128.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3128.Value == L0) then
    o3128["Value"] = L0
    o2.ReCalculate()
  end
end }
o3152 = { [nil] = {}, GetCalculated = function()
  if not (o3114.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3152.SetStateValue(o3152.GetCalculated())
end, StartCalculate = function()
  o3152["Value"] = o3152.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3152.Value == L0) then
    o3152["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o3156 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3156, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3156, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3156, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3156, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3171.SetStateValue(L1)
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
o3171 = { [nil] = {}, Start = function()
  o3171["Value"] = False
  o3123.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3171.Value == L0) then
    o3171["Value"] = L0
    o3123.ReCalculate()
  end
end }
S_o3204 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3204, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3204, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3204, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o3204, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3219.SetStateValue(L1)
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
o3219 = { [nil] = {}, Start = function()
  o3219["Value"] = False
  o3123.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3219.Value == L0) then
    o3219["Value"] = L0
    o3123.ReCalculate()
  end
end }
S_o3252 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3252, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3252, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3252, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "E", "", "", "", 0.8, "Code4")
  else
    CallFunction(o3252, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3267.SetStateValue(L1)
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
o3267 = { [nil] = {}, Start = function()
  o3267["Value"] = False
  o3124.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3267.Value == L0) then
    o3267["Value"] = L0
    o3124.ReCalculate()
  end
end }
S_o3300 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3300, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3300, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3300, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "E", "", "", "", 0.8, "Code4")
  else
    CallFunction(o3300, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o3315.SetStateValue(L1)
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
o3315 = { [nil] = {}, Start = function()
  o3315["Value"] = False
  o3124.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3315.Value == L0) then
    o3315["Value"] = L0
    o3124.ReCalculate()
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
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3348, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o4311, { {}, "Goto", "/InGameSequences/Navigation/PolicePath_1", 0.2, 1 } }, o4307, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code5")
  else
    CallFunction(o3348, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o3348, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3348, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Born = function(L0, L1)
  o3353.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3350.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3350 = { [nil] = {}, GetCalculated = function()
  if not (o3123.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3350.SetStateValue(o3350.GetCalculated())
end, StartCalculate = function()
  o3350["Value"] = o3350.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3350.Value == L0) then
    o3350["Value"] = L0
    CallFunction(o3348, "ProcesseStateChange")
  end
end }
o3353 = { [nil] = {}, Start = function()
  o3353["Value"] = False
  o4334.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3353.Value == L0) then
    o3353["Value"] = L0
    o4334.ReCalculate()
  end
end }
S_o3397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3397, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3397, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3397, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o4311, { {}, "Goto", "/InGameSequences/Navigation/PolicePath_1", 0.2, 1 } }, o4307, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code5")
  else
    CallFunction(o3397, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o3397, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3397, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3399.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3399 = { [nil] = {}, GetCalculated = function()
  if not (o3123.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3399.SetStateValue(o3399.GetCalculated())
end, StartCalculate = function()
  o3399["Value"] = o3399.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3399.Value == L0) then
    o3399["Value"] = L0
    CallFunction(o3397, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3446, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3446, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o4311, { {}, "Goto", "/InGameSequences/Navigation/PolicePath_1", 0.2, 1 } }, o4307, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code5")
  else
    CallFunction(o3446, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o3446, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3446, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
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
  if not (o3123.Value ~= True) then
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
    o3448["Value"] = L0
    CallFunction(o3446, "ProcesseStateChange")
  end
end }
S_o3495 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3495, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3495, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3495, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3495, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3495, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto({ 0, o4312, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_2", "pos_5", "pos_8", 0.4, 1 } }, o4308, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code6")
  else
    CallFunction(o3495, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o3495, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o3495, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3497.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3497 = { [nil] = {}, GetCalculated = function()
  if not (o3123.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3497.SetStateValue(o3497.GetCalculated())
end, StartCalculate = function()
  o3497["Value"] = o3497.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3497.Value == L0) then
    o3497["Value"] = L0
    CallFunction(o3495, "ProcesseStateChange")
  end
end }
S_o3544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3544, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3544, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3544, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3544, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3544, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto({ 0, o4312, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_2", "pos_5", "pos_8", 0.4, 1 } }, o4308, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code6")
  else
    CallFunction(o3544, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o3544, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o3544, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3546.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3546 = { [nil] = {}, GetCalculated = function()
  if not (o3123.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3546.SetStateValue(o3546.GetCalculated())
end, StartCalculate = function()
  o3546["Value"] = o3546.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3546.Value == L0) then
    o3546["Value"] = L0
    CallFunction(o3544, "ProcesseStateChange")
  end
end }
S_o3593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3593, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3593, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3593, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3593, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3593, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto({ 0, o4312, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_2", "pos_5", "pos_8", 0.4, 1 } }, o4308, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code6")
  else
    CallFunction(o3593, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/ScoutFightArea_2", "/Scenario_Dynamic/Navigation/OverallArea", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o3593, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o3593, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3595.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3595 = { [nil] = {}, GetCalculated = function()
  if not (o3123.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3595.SetStateValue(o3595.GetCalculated())
end, StartCalculate = function()
  o3595["Value"] = o3595.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3595.Value == L0) then
    o3595["Value"] = L0
    CallFunction(o3593, "ProcesseStateChange")
  end
end }
S_o3642 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3642, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3642, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3642, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3642, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, 0, o4313, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_3", "pos_9", "pos_18", 1, 1 } }(o4309, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code5")
  else
    CallFunction(o3642, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o3642, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3642, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3644.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3644 = { [nil] = {}, GetCalculated = function()
  if not (o3124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3644.SetStateValue(o3644.GetCalculated())
end, StartCalculate = function()
  o3644["Value"] = o3644.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3644.Value == L0) then
    o3644["Value"] = L0
    CallFunction(o3642, "ProcesseStateChange")
  end
end }
S_o3691 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3691, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3691, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3691, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3691, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, 0, o4313, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_3", "pos_9", "pos_18", 1, 1 } }(o4309, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code5")
  else
    CallFunction(o3691, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o3691, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3691, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3693.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3693 = { [nil] = {}, GetCalculated = function()
  if not (o3124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3693.SetStateValue(o3693.GetCalculated())
end, StartCalculate = function()
  o3693["Value"] = o3693.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3693.Value == L0) then
    o3693["Value"] = L0
    CallFunction(o3691, "ProcesseStateChange")
  end
end }
S_o3740 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3740, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3740, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3740, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3740, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, 0, o4313, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_3", "pos_9", "pos_18", 1, 1 } }(o4309, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code5")
  else
    CallFunction(o3740, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "/Scenario_Dynamic/Navigation/ScoutFightArea_3", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o3740, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o3740, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3742.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3742 = { [nil] = {}, GetCalculated = function()
  if not (o3124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3742.SetStateValue(o3742.GetCalculated())
end, StartCalculate = function()
  o3742["Value"] = o3742.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3742.Value == L0) then
    o3742["Value"] = L0
    CallFunction(o3740, "ProcesseStateChange")
  end
end }
S_o3789 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4105.Node)
  CallFunction(o3789, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3794 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4154.Node)
  CallFunction(o3794, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3799 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4203.Node)
  CallFunction(o3799, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3804 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3804, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3809 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3809, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3812.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3812 = { [nil] = {}, Start = function()
  o3812["Value"] = False
  o3125.StartCalculate()
  o4106.StartCalculate()
  o4155.StartCalculate()
  o4204.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3812.Value == L0) then
    o3812["Value"] = L0
    o3125.ReCalculate()
    o4106.ReCalculate()
    o4155.ReCalculate()
    o4204.ReCalculate()
  end
end }
S_o3814 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3814, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3814, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3814, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3814, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "dir", "pla", "", "", 0.8, "Code5")
  else
    CallFunction(o3814, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o3814, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "dir", "pla", "", "", 0.8, "Code7")
  else
    CallFunction(o3814, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3830.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3815.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3815 = { [nil] = {}, GetCalculated = function()
  if not (o3117.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3815.SetStateValue(o3815.GetCalculated())
end, StartCalculate = function()
  o3815["Value"] = o3815.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3815.Value == L0) then
    o3815["Value"] = L0
    CallFunction(o3814, "ProcesseStateChange")
  end
end }
o3830 = { [nil] = {}, Start = function()
  o3830["Value"] = False
  o3122.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3830.Value == L0) then
    o3830["Value"] = L0
    o3122.ReCalculate()
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
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3863, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "dir", "pla", "", "", 0.8, "Code5")
  else
    CallFunction(o3863, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o3863, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "dir", "pla", "", "", 0.8, "Code7")
  else
    CallFunction(o3863, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3879.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
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
  if not (o3117.Value ~= True) then
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
o3879 = { [nil] = {}, Start = function()
  o3879["Value"] = False
  o3122.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3879.Value == L0) then
    o3879["Value"] = L0
    o3122.ReCalculate()
  end
end }
S_o3912 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3912, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3912, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3912, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3912, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "dir", "pla", "", "", 0.8, "Code5")
  else
    CallFunction(o3912, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o3912, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "dir", "pla", "", "", 0.8, "Code7")
  else
    CallFunction(o3912, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3928.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3913.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3913 = { [nil] = {}, GetCalculated = function()
  if not (o3117.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3913.SetStateValue(o3913.GetCalculated())
end, StartCalculate = function()
  o3913["Value"] = o3913.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3913.Value == L0) then
    o3913["Value"] = L0
    CallFunction(o3912, "ProcesseStateChange")
  end
end }
o3928 = { [nil] = {}, Start = function()
  o3928["Value"] = False
  o3122.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3928.Value == L0) then
    o3928["Value"] = L0
    o3122.ReCalculate()
  end
end }
S_o3961 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3961, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3961, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3961, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o3961, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3961, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3963.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3962.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3962 = { [nil] = {}, GetCalculated = function()
  if not (o3063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3962.SetStateValue(o3962.GetCalculated())
end, StartCalculate = function()
  o3962["Value"] = o3962.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3962.Value == L0) then
    DelayedFunction(2, o3962, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3962.Value == L0) then
    o3962["Value"] = L0
    CallFunction(o3961, "ProcesseStateChange")
  end
end }
o3963 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3963.SetStateValue(o3963.GetCalculated())
end, StartCalculate = function()
  o3963["Value"] = o3963.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3963.Value == L0) then
    o3963["Value"] = L0
    CallFunction(o3961, "ProcesseStateChange")
  end
end }
S_o4009 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4009, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4009, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4009, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o4009, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o4009, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4011.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4010.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4010 = { [nil] = {}, GetCalculated = function()
  if not (o3063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4010.SetStateValue(o4010.GetCalculated())
end, StartCalculate = function()
  o4010["Value"] = o4010.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4010.Value == L0) then
    DelayedFunction(2, o4010, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4010.Value == L0) then
    o4010["Value"] = L0
    CallFunction(o4009, "ProcesseStateChange")
  end
end }
o4011 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4011.SetStateValue(o4011.GetCalculated())
end, StartCalculate = function()
  o4011["Value"] = o4011.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4011.Value == L0) then
    o4011["Value"] = L0
    CallFunction(o4009, "ProcesseStateChange")
  end
end }
S_o4057 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4057, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4057, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4057, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o4057, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o4057, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4059.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4058.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4058 = { [nil] = {}, GetCalculated = function()
  if not (o3063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4058.SetStateValue(o4058.GetCalculated())
end, StartCalculate = function()
  o4058["Value"] = o4058.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4058.Value == L0) then
    DelayedFunction(2, o4058, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4058.Value == L0) then
    o4058["Value"] = L0
    CallFunction(o4057, "ProcesseStateChange")
  end
end }
o4059 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4059.SetStateValue(o4059.GetCalculated())
end, StartCalculate = function()
  o4059["Value"] = o4059.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4059.Value == L0) then
    o4059["Value"] = L0
    CallFunction(o4057, "ProcesseStateChange")
  end
end }
S_o4105 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4105, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4105, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4105, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4105, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "DES_turbine_1", "pla", "", "", 15, 1, "Code5")
  else
    CallFunction(o4105, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o4105, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "DES_turbine_1", "pla", "", "", 15, 1, "Code7")
  else
    CallFunction(o4105, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o4121.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4108.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4106.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4106 = { [nil] = {}, GetCalculated = function()
  if not (o3812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4106.SetStateValue(o4106.GetCalculated())
end, StartCalculate = function()
  o4106["Value"] = o4106.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4106.Value == L0) then
    o4106["Value"] = L0
    CallFunction(o4105, "ProcesseStateChange")
  end
end }
o4108 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4108.SetStateValue(o4108.GetCalculated())
end, StartCalculate = function()
  o4108["Value"] = o4108.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4108.Value == L0) then
    o4108["Value"] = L0
    CallFunction(o4105, "ProcesseStateChange")
  end
end }
o4121 = { [nil] = {}, Start = function()
  o4121["Value"] = False
  o3119.StartCalculate()
  o3120.StartCalculate()
  o3121.StartCalculate()
  o4337.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4121.Value == L0) then
    o4121["Value"] = L0
    o3119.ReCalculate()
    o3120.ReCalculate()
    o3121.ReCalculate()
    o4337.ReCalculate()
  end
end }
S_o4154 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4154, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4154, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4154, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4154, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "DES_turbine_2", "pla", "", "", 15, 1, "Code5")
  else
    CallFunction(o4154, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o4154, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "DES_turbine_2", "pla", "", "", 15, 1, "Code7")
  else
    CallFunction(o4154, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o4170.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4157.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4155.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4155 = { [nil] = {}, GetCalculated = function()
  if not (o3812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4155.SetStateValue(o4155.GetCalculated())
end, StartCalculate = function()
  o4155["Value"] = o4155.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4155.Value == L0) then
    o4155["Value"] = L0
    CallFunction(o4154, "ProcesseStateChange")
  end
end }
o4157 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4157.SetStateValue(o4157.GetCalculated())
end, StartCalculate = function()
  o4157["Value"] = o4157.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4157.Value == L0) then
    o4157["Value"] = L0
    CallFunction(o4154, "ProcesseStateChange")
  end
end }
o4170 = { [nil] = {}, Start = function()
  o4170["Value"] = False
  o3120.StartCalculate()
  o3121.StartCalculate()
  o4337.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4170.Value == L0) then
    o4170["Value"] = L0
    o3120.ReCalculate()
    o3121.ReCalculate()
    o4337.ReCalculate()
  end
end }
S_o4203 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4203, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4203, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4203, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4203, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "DES_turbine_3", "pla", "", "", 15, 1, "Code5")
  else
    CallFunction(o4203, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o4203, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/OverallArea", "DES_turbine_3", "pla", "", "", 15, 1, "Code7")
  else
    CallFunction(o4203, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o4219.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4206.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4204.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4204 = { [nil] = {}, GetCalculated = function()
  if not (o3812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4204.SetStateValue(o4204.GetCalculated())
end, StartCalculate = function()
  o4204["Value"] = o4204.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4204.Value == L0) then
    o4204["Value"] = L0
    CallFunction(o4203, "ProcesseStateChange")
  end
end }
o4206 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4206.SetStateValue(o4206.GetCalculated())
end, StartCalculate = function()
  o4206["Value"] = o4206.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4206.Value == L0) then
    o4206["Value"] = L0
    CallFunction(o4203, "ProcesseStateChange")
  end
end }
o4219 = { [nil] = {}, Start = function()
  o4219["Value"] = False
  o3121.StartCalculate()
  o4337.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4219.Value == L0) then
    o4219["Value"] = L0
    o3121.ReCalculate()
    o4337.ReCalculate()
  end
end }
S_o4252 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4252, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4252, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4252, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o4252, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o4252, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, 0, o4313, { {}, "GotoFromTo", "/InGameSequences/Navigation/PolicePath_3", "pos_9", "pos_18", 1, 1 } }(o4309, "/Scenario_Dynamic/Navigation/OverallArea", 50, "", "", "", "", 30, 0.15, False, "Code6")
  else
    CallFunction(o4252, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "/Scenario_Dynamic/Navigation/ScoutFightArea_1", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o4252, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o4253.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4253 = { [nil] = {}, GetCalculated = function()
  if not (o3117.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4253.SetStateValue(o4253.GetCalculated())
end, StartCalculate = function()
  o4253["Value"] = o4253.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4253.Value == L0) then
    o4253["Value"] = L0
    CallFunction(o4252, "ProcesseStateChange")
  end
end }
S_o4301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3059.Node)
  CallFunction(o4301, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4306 = { [nil] = {}, Start = function(L0)

end }
o4307 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 15)
o4308 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 15)
o4309 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 15)
o4310 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o4315 = { [nil] = {}, Start = function(L0)

end }
S_o4316 = { [nil] = {}, Start = function(L0)

end }
S_o4317 = { [nil] = {}, Start = function(L0)

end }
S_o4318 = { [nil] = {}, Start = function(L0)

end }
S_o4319 = { [nil] = {}, Start = function(L0)

end }
S_o4320 = { [nil] = {}, Start = function(L0)

end }
S_o4321 = { [nil] = {}, Start = function(L0)

end }
S_o4322 = { [nil] = {}, Start = function(L0)

end }
S_o4323 = { [nil] = {}, Start = function(L0)

end }
S_o4324 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_Cut(L0.Node, 2.5)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_1")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/ent_pscout_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomAt(L0.Node, "/Scenario_Dynamic/Object/ent_pscout_1", 0, 0.1)
  CallFunction(o4324, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code8")
  else
    CallFunction(o4324, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 6, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MFMN", 20)
  Camera_ZoomTo(L0.Node, 6, 1, 1)
  CallFunction(o4324, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code12")
  else
    CallFunction(o4324, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_3", 10, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/ent_pscout_5", 4, "MFMN", 20)
  CallFunction(o4324, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code15")
  else
    CallFunction(o4324, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "RBTY", 10)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  CallFunction(o4324, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code18")
  else
    CallFunction(o4324, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_Cut(L0.Node, 1)
  Game_PlayMusic(GetGameNode(), "agressive")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_6", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Object/dir_cammesh_2h3_1", 0, "MMMN", 0)
  CallFunction(o4324, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code23")
  else
    CallFunction(o4324, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  o3117.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), o3804.Node)
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1349, -1, -1)
  CallFunction(o4324, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4331 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o4314, o4310, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o4331, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4314, o4310, "/InGameSequences/Navigation/PlayerPath_1", "pos_1", "pos_12", 0.244444, 1, "Code2")
  else
    CallFunction(o4331, "Code2")
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
S_o4333 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4333, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o3107.Node, o3107.Node, 1230)
  SendRadioMessageTake(o3107.Node, o3107.Node, 1231)
  SendRadioMessageTake(o3107.Node, o3107.Node, 1232)
  CallFunction(o4333, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4334.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4334 = { [nil] = {}, GetCalculated = function()
  if not (o3353.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4334.SetStateValue(o4334.GetCalculated())
end, StartCalculate = function()
  o4334["Value"] = o4334.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4334.Value == L0) then
    DelayedFunction(5, o4334, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4334.Value == L0) then
    o4334["Value"] = L0
    CallFunction(o4333, "ProcesseStateChange")
  end
end }
S_o4336 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4336, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_5")
  SendRadioMessageTake(o3107.Node, o3107.Node, 1180)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o4336, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code8")
  else
    CallFunction(o4336, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  o3118.SetStateValue(True)
  Game_PlayMusic(GetGameNode(), "track4")
  SendRadioMessageTake(o3059.Node, o3107.Node, 73)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/DeathBlow", 2, "MMMN", 0)
  CallFunction(o4336, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code13")
  else
    CallFunction(o4336, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Game_SetWayPoint(GetGameNode(), o4301.Node)
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1286, -1, -1)
  CallFunction(o4336, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code17")
  else
    CallFunction(o4336, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o4336, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4337.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4337 = { [nil] = {}, GetCalculated = function()
  if not (o4121.Value ~= True) then
    if not (o4170.Value ~= True) then
      if not (o4219.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o4337.SetStateValue(o4337.GetCalculated())
end, StartCalculate = function()
  o4337["Value"] = o4337.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4337.Value == L0) then
    DelayedFunction(8, o4337, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4337.Value == L0) then
    o4337["Value"] = L0
    CallFunction(o4336, "ProcesseStateChange")
  end
end }
S_o4342 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4342, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/BomberPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/ent_bomber_2h3_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  CallFunction(o4342, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code8")
  else
    CallFunction(o4342, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o3107.Node, o3107.Node, 1179)
  CallFunction(o4342, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code10")
  else
    CallFunction(o4342, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/BomberPosition_2", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/ent_bomber_2h3_2", 3, "MMMN", 0)
  CallFunction(o4342, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code13")
  else
    CallFunction(o4342, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/BomberPosition_3", 2, "MMMN", 6)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/ent_bomber_2h3_3", 0, "MMMN", 3)
  CallFunction(o4342, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code16")
  else
    CallFunction(o4342, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_SetWayPoint(GetGameNode(), o3809.Node)
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1285, -1, -1)
  CallFunction(o4342, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4343.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4343 = { [nil] = {}, GetCalculated = function()
  if not (o3122.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4343.SetStateValue(o4343.GetCalculated())
end, StartCalculate = function()
  o4343["Value"] = o4343.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4343.Value == L0) then
    DelayedFunction(4, o4343, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4343.Value == L0) then
    o4343["Value"] = L0
    CallFunction(o4342, "ProcesseStateChange")
  end
end }
S_o4349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "dir_cammesh_1", "", "", "", False, False, True)
  CallFunction(o4349, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4349, "Code6")
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
S_o4355 = { [nil] = {}, Start = function(L0)

end }
S_o4401 = { [nil] = {}, Start = function(L0)

end }
S_o4447 = { [nil] = {}, Start = function(L0)

end }
S_o4493 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 225)
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
  o2903.Start()
  o2935 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_turbine_1", S_o2935)
  o2939.Start()
  o2971 = BindEasy(Node_Find("/Scenario_Static/Object"), "DES_turbine_3", S_o2971)
  o2975.Start()
  o3007 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o3007)
  o3010 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_2", S_o3010)
  o3011 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_3", S_o3011)
  o3012 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_4", S_o3012)
  o3013 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_transp_2", S_o3013)
  o3059 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "DeathBlow", S_o3059)
  o3063.Start()
  o3064.Start()
  o3107 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o3107)
  o3117.Start()
  o3118.Start()
  o3156 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_1", S_o3156)
  o3171.Start()
  o3204 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2", S_o3204)
  o3219.Start()
  o3252 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_5", S_o3252)
  o3267.Start()
  o3300 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_6", S_o3300)
  o3315.Start()
  o3348 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_1", S_o3348)
  o3353.Start()
  o3397 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_2", S_o3397)
  o3446 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_3", S_o3446)
  o3495 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_4", S_o3495)
  o3544 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_5", S_o3544)
  o3593 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_6", S_o3593)
  o3642 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_7", S_o3642)
  o3691 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_8", S_o3691)
  o3740 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_9", S_o3740)
  o3789 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o3789)
  o3794 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o3794)
  o3799 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_3", S_o3799)
  o3804 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o3804)
  o3809 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o3809)
  o3812.Start()
  o3814 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_area1_1", S_o3814)
  o3830.Start()
  o3863 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_area1_2", S_o3863)
  o3879.Start()
  o3912 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_area1_3", S_o3912)
  o3928.Start()
  o3961 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_distract_1", S_o3961)
  o4009 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_distract_2", S_o4009)
  o4057 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_distract_3", S_o4057)
  o4105 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_bomber_2h3_1", S_o4105)
  o4121.Start()
  o4154 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_bomber_2h3_2", S_o4154)
  o4170.Start()
  o4203 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_bomber_2h3_3", S_o4203)
  o4219.Start()
  o4252 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c2_1", S_o4252)
  o4301 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_4", S_o4301)
  o4306 = BindEasy(Node_Find("/"), "Camera", S_o4306)
  o4315 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o4315)
  o4316 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o4316)
  o4317 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o4317)
  o4318 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_4", S_o4318)
  o4319 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_5", S_o4319)
  o4320 = BindEasy(Node_Find("/InGameSequences/Navigation"), "BomberPosition_1", S_o4320)
  o4321 = BindEasy(Node_Find("/InGameSequences/Navigation"), "BomberPosition_2", S_o4321)
  o4322 = BindEasy(Node_Find("/InGameSequences/Navigation"), "BomberPosition_3", S_o4322)
  o4323 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_6", S_o4323)
  o4349 = BindEasy(Node_Find("/InGameSequences/Trigger"), "TriggerPresence_1", S_o4349)
  o4355 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_1", S_o4355)
  o4401 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_2", S_o4401)
  o4447 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_3", S_o4447)
  o4493 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_2h3_1", S_o4493)
  o4324 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroV", S_o4324)
  o4331 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroAddon", S_o4331)
  o4333 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroA", S_o4333)
  o4336 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter2IntroV", S_o4336)
  o4342 = BindEasy(Node_Find("/InGameSequences/Director"), "ShowBombers", S_o4342)
  o4311 = { {}, o3348, o3397, o3446 }()
  o4312 = { {}, o3495, o3544, o3593 }()
  o4313 = { {}, o3642, o3691, o3740, o4252 }()
  o4314 = { {}, o3107 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end