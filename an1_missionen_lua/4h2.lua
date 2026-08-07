-- dekompiliert aus map\4h2\script\4h2.sco
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
  Terrain_LoadTerrain(node1, "map/4H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/4H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/4H2/Lmsh/", "map/4H2/Ltex/")
  Game_SetTerrainDepth(node0, 3517)
  Game_SetDecompressionHeight(node0, 300)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.443137, 0.34902, 0.141176)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_4H2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "atl_wb3a_1_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1005.448614, 3590.662296, 146.925709), MAT_Vector3(89.552692, 0, 0))
  Node_ParseIniFile(node8, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_wb3a_1_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(329.085078, 3519.999003, 145.271664), MAT_Vector3(-1.152611, 0, 0))
  Node_ParseIniFile(node9, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "atl_wb3a_1_3")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(882.53155, 3590.824075, 146.838528), MAT_Vector3(89.93202, 0, 0))
  Node_ParseIniFile(node10, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "atl_wb3b_3_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1006.912712, 3687.67518, 147.267682), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1555.306426, 3489.360742, 93.294833), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1529.856634, 3550.027778, 93.425589), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_tnk_k_3")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1310.112317, 3484.966115, 93.416708), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1432.856539, 3498.521943, 102.587407), MAT_Vector3(90.258602, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_kraft22_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(544.65645, 1932.351553, 120.982119), MAT_Vector3(-165.534701, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1091.866054, 3598.333352, 151.983711), MAT_Vector3(0.70587, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_stern2_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(795.720337, 3805.493057, 151.656471), MAT_Vector3(42.0802, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1728.575025, 3268.948465, 96.658489), MAT_Vector3(-57.253833, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_stern_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(939.444032, 3637.85331, 153.933521), MAT_Vector3(0.42562, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_tnk_g_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(452.049356, 3454.590124, 143.550225), MAT_Vector3(54.01907, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_tnk_k_4")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(366.526373, 3417.41138, 143.379488), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(557.064342, 3654.835535, 157.15751), MAT_Vector3(37.3587, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_gangM_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(453.167612, 3542.200404, 254.291302), MAT_Vector3(116.023953, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_gangM_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(941.966772, 3528.06255, 261.664445), MAT_Vector3(89.993639, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_gangM_3")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(940.764817, 3527.540012, 162.094327), MAT_Vector3(-89.52466, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_werk2_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(395.467478, 1869.970981, 176.935684), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_elf-kn_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(661.576523, 2154.842405, 77.396243), MAT_Vector3(-28.440015, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_elf-kn_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1076.614573, 2955.163776, 56.868811), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_elfnote.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_rohrbG_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(735.051474, 2297.712657, 54.025637), MAT_Vector3(-27.215495, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_rohrbG_4")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(596.693926, 2028.701239, 54.02564), MAT_Vector3(-27.2155, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_rohrbG_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(868.962406, 2558.578186, 54.02564), MAT_Vector3(-27.2155, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_rohrbG_3")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1006.426602, 2824.740005, 54.20561), MAT_Vector3(-27.2155, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_rohrbG_5")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1181.549962, 3081.062381, 54.20561), MAT_Vector3(-40.10705, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_rohrbG_6")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1374.759196, 3309.545943, 54.389618), MAT_Vector3(-40.10705, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_rohrbG_7")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1026.933934, 3111.77234, 58.037108), MAT_Vector3(15.398236, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_rohrbG_8")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(948.166617, 3397.196816, 58.03711), MAT_Vector3(15.39824, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_stabM_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(637.503787, 2073.475523, 45.705178), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_stabM_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(846.249062, 2487.535966, 45.658357), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_stabM_3")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1085.412923, 2923.625547, 61.156403), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_stabM_4")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1375.607553, 3269.754598, 60.977591), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_stabM_5")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(934.623609, 3388.268626, 66.063126), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_stabM_6")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1090.71378, 3568.490928, 193.010524), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(389.942668, 1864.926038, 244.42677), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(526.733944, 1967.285868, 172.136879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_stern2_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1670.783607, 3442.027781, 101.420216), MAT_Vector3(32.233594, 0.414851, -0.684889))
  Node_ParseIniFile(node46, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_stern2_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1584.945899, 3333.611832, 100.263143), MAT_Vector3(32.23359, 0.414851, -0.684889))
  Node_ParseIniFile(node47, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_gangM_4")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1614.500475, 3373.03947, 106.344419), MAT_Vector3(122.469775, 0, 0))
  Node_ParseIniFile(node48, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1658.827158, 3223.135473, 139.744937), MAT_Vector3(-147.50529, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1494.584888, 3397.213068, 101.978426), MAT_Vector3(153.400444, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1252.160129, 3512.379749, 100.283547), MAT_Vector3(142.279838, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1065.160729, 3526.622918, 152.543386), MAT_Vector3(-155.772053, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(517.112068, 3447.297732, 153.101568), MAT_Vector3(-147.993238, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_turret_9")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(791.110302, 3671.413071, 150.283547), MAT_Vector3(161.96804, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_turret_10")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(844.997576, 3509.082166, 153.449019), MAT_Vector3(138.266125, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "des_trafo_02_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(462.969415, 1945.72697, 152.769287), MAT_Vector3(48.361283, 0, 0))
  Node_ParseIniFile(node56, "osd/des/des_trafo_02.osd")
  Body_SetFriendOrFoeID(node56, 4)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node57)
  Node_ParseIniFile(node57, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node58)
  Node_ParseIniFile(node58, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node59)
  Node_ParseIniFile(node59, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node59, "map/4H2/Terrain/grass_01.tga")
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node60)
  Node_ParseIniFile(node60, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node60, "map/4H2/Terrain/stone_01.tga")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node61)
  Node_ParseIniFile(node61, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node61, "map/4H2/Terrain/coral_01.tga")
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3243.235405, 2729.323952, 175), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node62, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3382.501169, 981.805908, 37.492886), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node63, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1512.299148, 2984.907077, 23.065198), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1665.887056, 2980.107455, 19.859109), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node65, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_fungus", "fungus_01_5")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3068.88206, 494.040453, 38.740119), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_fungus", "fungus_01_6")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1501.529152, 793.154696, 74.599718), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_fungus", "fungus_01_7")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1639.865576, 1850.752932, 90.423527), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_fungus", "fungus_01_8")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1501.529, 793.1547, 74.59972), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_fungus", "fungus_01_9")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(803.442126, 3253.576146, 24.518254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fungus", "fungus_01_10")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1082.39524, 3238.240285, 44.717134), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_fungus", "fungus_01_11")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(245.325507, 1820.807007, 150), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fungus", "fungus_01_12")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(3367.3066, 1267.943987, 36.672743), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_fungus", "fungus_01_13")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(906.198757, 2864.862855, 40), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(3048.178226, 3177.669394, 152.777912), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3042.822245, 3100.409728, 220), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2970.399212, 3049.012736, 167.149266), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(1987.882171, 1099.020184, 60), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2017.461179, 1165.973207, 40), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(776.898401, 1136.198984, 83.93239), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(759.313116, 1224.101997, 60), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fx_plant", "fungus_02_4")
  Node_AddSon(node7, node82)
  Node_ParseIniFile(node82, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node82, "map/4H2/Terrain/fungus_02.tga")
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fungus", "coral_01_2")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1316.852707, 1349.277334, 75), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fungus", "coral_01_4")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1299.302104, 1333.200944, 76.470648), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_fungus", "coral_01_3")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1323.882425, 1336.150485, 67), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node86)
  Node_ParseIniFile(node86, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node87, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node87, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Path", "Fregate_Path")
  Node_AddSon(node89, node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node90, node91)
  Position_SetPosition(node91, MAT_Vector3(1037.303524, 3444.162092, 295))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node90, node92)
  Position_SetPosition(node92, MAT_Vector3(669.149862, 3445.008423, 295))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node90, node93)
  Position_SetPosition(node93, MAT_Vector3(668.303531, 3243.581821, 295))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node90, node94)
  Position_SetPosition(node94, MAT_Vector3(1044.074166, 3245.274482, 295))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Path", "Bomber_Path")
  Node_AddSon(node89, node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node95, node96)
  Position_SetPosition(node96, MAT_Vector3(1037.304, 3444.162, 250))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node95, node97)
  Position_SetPosition(node97, MAT_Vector3(669.1499, 3445.008, 250))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node95, node98)
  Position_SetPosition(node98, MAT_Vector3(668.3035, 3243.582, 250))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node95, node99)
  Position_SetPosition(node99, MAT_Vector3(1044.074, 3245.274, 250))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Path", "Scout_Path")
  Node_AddSon(node89, node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node100, node101)
  Position_SetPosition(node101, MAT_Vector3(545.071744, 3399.451734, 390))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node100, node102)
  Position_SetPosition(node102, MAT_Vector3(673.737645, 3528.117945, 390))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node100, node103)
  Position_SetPosition(node103, MAT_Vector3(1111.897305, 3528.118, 390))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node100, node104)
  Position_SetPosition(node104, MAT_Vector3(1224.914384, 3411.623158, 390))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node100, node105)
  Position_SetPosition(node105, MAT_Vector3(1223.175271, 3147.336194, 390))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node100, node106)
  Position_SetPosition(node106, MAT_Vector3(534.63832, 3140.381084, 390))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_PatrolArea", "ELF_Patrol_Area")
  Node_AddSon(node89, node107)
  PatrolArea_SetPosition(node107, MAT_Vector3(551.608866, 1955.81165, 232.987613))
  PatrolArea_SetRadius(node107, 200)
  PatrolArea_SetMinZ(node107, -50)
  PatrolArea_SetMaxZ(node107, 50)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_PatrolArea", "ELF_Trigger_Area")
  Node_AddSon(node89, node108)
  PatrolArea_SetPosition(node108, MAT_Vector3(555.32663, 1951.410475, 146.919531))
  PatrolArea_SetRadius(node108, 400)
  PatrolArea_SetMinZ(node108, -225)
  PatrolArea_SetMaxZ(node108, 150)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_PatrolArea", "ELF_Follow_Area")
  Node_AddSon(node89, node109)
  PatrolArea_SetPosition(node109, MAT_Vector3(557.870708, 1951.911858, 270))
  PatrolArea_SetRadius(node109, 550)
  PatrolArea_SetMinZ(node109, -250)
  PatrolArea_SetMaxZ(node109, 20)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_PatrolArea", "CanyonDefend_Area")
  Node_AddSon(node89, node110)
  PatrolArea_SetPosition(node110, MAT_Vector3(1939.274998, 1423.60764, 0))
  PatrolArea_SetRadius(node110, 1280)
  PatrolArea_SetMinZ(node110, 0)
  PatrolArea_SetMaxZ(node110, 300)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Path", "Canyon_Path_1")
  Node_AddSon(node89, node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node111, node112)
  Position_SetPosition(node112, MAT_Vector3(1725.826279, 1807.925093, 200))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node111, node113)
  Position_SetPosition(node113, MAT_Vector3(1688.102042, 1849.691199, 200))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node111, node114)
  Position_SetPosition(node114, MAT_Vector3(1660.370538, 1844.133503, 150))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node111, node115)
  Position_SetPosition(node115, MAT_Vector3(1558.811036, 1733.264173, 200))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node111, node116)
  Position_SetPosition(node116, MAT_Vector3(1466.784783, 1660.113668, 200))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node111, node117)
  Position_SetPosition(node117, MAT_Vector3(1665.448929, 1882.217511, 150))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node111, node118)
  Position_SetPosition(node118, MAT_Vector3(1710.474203, 1863.908445, 200))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node111, node119)
  Position_SetPosition(node119, MAT_Vector3(1752.029691, 1815.15992, 200))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node111, node120)
  Position_SetPosition(node120, MAT_Vector3(1763.714359, 1749.415295, 200))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Path", "Canyon_Path_3")
  Node_AddSon(node89, node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node121, node122)
  Position_SetPosition(node122, MAT_Vector3(1655.786944, 1033.307106, 200))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node121, node123)
  Position_SetPosition(node123, MAT_Vector3(1534.479743, 976.292907, 200))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node121, node124)
  Position_SetPosition(node124, MAT_Vector3(1494.448418, 880.460362, 200))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node121, node125)
  Position_SetPosition(node125, MAT_Vector3(1524.069552, 771.283821, 200))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node121, node126)
  Position_SetPosition(node126, MAT_Vector3(1601.086036, 714.579685, 200))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node121, node127)
  Position_SetPosition(node127, MAT_Vector3(1601.086, 347.707966, 200))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node121, node128)
  Position_SetPosition(node128, MAT_Vector3(1597.608543, 714.579734, 200))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node121, node129)
  Position_SetPosition(node129, MAT_Vector3(1521.104942, 777.17393, 200))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node121, node130)
  Position_SetPosition(node130, MAT_Vector3(1486.330428, 884.975073, 200))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node121, node131)
  Position_SetPosition(node131, MAT_Vector3(1543.708044, 975.388987, 200))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node121, node132)
  Position_SetPosition(node132, MAT_Vector3(1708.887217, 1046.676873, 200))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Path", "Canyon_Path_4")
  Node_AddSon(node89, node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node133, node134)
  Position_SetPosition(node134, MAT_Vector3(1863.137867, 1130.634958, 200))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node133, node135)
  Position_SetPosition(node135, MAT_Vector3(1938.185617, 1158.563816, 200))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node133, node136)
  Position_SetPosition(node136, MAT_Vector3(1991.447678, 1193.556862, 200))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node133, node137)
  Position_SetPosition(node137, MAT_Vector3(2105.893838, 1235.862634, 200))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node133, node138)
  Position_SetPosition(node138, MAT_Vector3(2059.840337, 1185.9413, 200))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node133, node139)
  Position_SetPosition(node139, MAT_Vector3(1995.716092, 1148.132018, 200))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node133, node140)
  Position_SetPosition(node140, MAT_Vector3(1803.047793, 1090.010964, 200))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_PatrolArea", "basin_Patrol_Area")
  Node_AddSon(node89, node141)
  PatrolArea_SetPosition(node141, MAT_Vector3(2984.210211, 737.725293, 104.689064))
  PatrolArea_SetRadius(node141, 400)
  PatrolArea_SetMinZ(node141, -50)
  PatrolArea_SetMaxZ(node141, 50)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_PatrolArea", "basin_Trigger_Area")
  Node_AddSon(node89, node142)
  PatrolArea_SetPosition(node142, MAT_Vector3(3152.335241, 842.018483, 150))
  PatrolArea_SetRadius(node142, 600)
  PatrolArea_SetMinZ(node142, -125)
  PatrolArea_SetMaxZ(node142, 150)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_PatrolArea", "basin_Follow_Area")
  Node_AddSon(node89, node143)
  PatrolArea_SetPosition(node143, MAT_Vector3(3170.19575, 845.590585, 95))
  PatrolArea_SetRadius(node143, 600)
  PatrolArea_SetMinZ(node143, -80)
  PatrolArea_SetMaxZ(node143, 200)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_PatrolArea", "CanyonB_Patrol_Area")
  Node_AddSon(node89, node144)
  PatrolArea_SetPosition(node144, MAT_Vector3(2990.233197, 2647.467553, 240.330129))
  PatrolArea_SetRadius(node144, 250)
  PatrolArea_SetMinZ(node144, -50)
  PatrolArea_SetMaxZ(node144, 50)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_PatrolArea", "CanyonB_Follow_Area")
  Node_AddSon(node89, node145)
  PatrolArea_SetPosition(node145, MAT_Vector3(2989.947849, 2642.539888, 80.617913))
  PatrolArea_SetRadius(node145, 750)
  PatrolArea_SetMinZ(node145, -50)
  PatrolArea_SetMaxZ(node145, 200)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_PatrolArea", "DeepDraft_Patrol_Area")
  Node_AddSon(node89, node146)
  PatrolArea_SetPosition(node146, MAT_Vector3(854.932709, 3203.130034, 241.356491))
  PatrolArea_SetRadius(node146, 300)
  PatrolArea_SetMinZ(node146, -50)
  PatrolArea_SetMaxZ(node146, 50)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_PatrolArea", "DeepDraft_Trigger_Area")
  Node_AddSon(node89, node147)
  PatrolArea_SetPosition(node147, MAT_Vector3(859.381037, 3194.5291, 135.424606))
  PatrolArea_SetRadius(node147, 500)
  PatrolArea_SetMinZ(node147, -125)
  PatrolArea_SetMaxZ(node147, 150)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_PatrolArea", "DeepDraft_Follow_Area")
  Node_AddSon(node89, node148)
  PatrolArea_SetPosition(node148, MAT_Vector3(859.381059, 3194.528811, 99.898292))
  PatrolArea_SetRadius(node148, 800)
  PatrolArea_SetMinZ(node148, -150)
  PatrolArea_SetMaxZ(node148, 200)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_PatrolArea", "OverAll_Area")
  Node_AddSon(node89, node149)
  PatrolArea_SetPosition(node149, MAT_Vector3(2000, 2000, -206.335232))
  PatrolArea_SetRadius(node149, 2500)
  PatrolArea_SetMinZ(node149, 0)
  PatrolArea_SetMaxZ(node149, 500)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_FX_Stream", "Stream_001")
  Node_AddSon(node89, node150)
  Body_SetCS(node150, MAT_Vector3(1063.73, 1178.837, 250), MAT_Vector3())
  Stream_SetBoxExtension(node150, 200, 200, 300)
  Stream_SetCurrentDirection(node150, MAT_Vector3(86.12283, 5, 0))
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_FX_Stream", "Stream_002")
  Node_AddSon(node89, node151)
  Body_SetCS(node151, MAT_Vector3(1375.251, 1325.875, 250), MAT_Vector3())
  Stream_SetBoxExtension(node151, 250, 250, 300)
  Stream_SetCurrentDirection(node151, MAT_Vector3(161.555356, 5, 0))
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_FX_Stream", "Stream_003")
  Node_AddSon(node89, node152)
  Body_SetCS(node152, MAT_Vector3(1489.3112, 1692.108572, 250), MAT_Vector3())
  Stream_SetBoxExtension(node152, 200, 250, 300)
  Stream_SetCurrentDirection(node152, MAT_Vector3(146.005798, 5, 0))
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_FX_Stream", "Stream_004")
  Node_AddSon(node89, node153)
  Body_SetCS(node153, MAT_Vector3(1791.095826, 1845.579566, 250), MAT_Vector3())
  Stream_SetBoxExtension(node153, 200, 350, 300)
  Stream_SetCurrentDirection(node153, MAT_Vector3(89.598876, 5, 0))
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_FX_Stream", "Stream_005")
  Node_AddSon(node89, node154)
  Body_SetCS(node154, MAT_Vector3(1993.912195, 1638.590142, 250), MAT_Vector3())
  Stream_SetBoxExtension(node154, 200, 200, 300)
  Stream_SetCurrentDirection(node154, MAT_Vector3(13.344296, 5, 0))
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_FX_Stream", "Stream_011")
  Node_AddSon(node89, node155)
  Body_SetCS(node155, MAT_Vector3(2106.443048, 1357.114822, 250), MAT_Vector3())
  Stream_SetBoxExtension(node155, 300, 200, 300)
  Stream_SetCurrentDirection(node155, MAT_Vector3(17.746123, 5, 0))
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_FX_Stream", "Stream_012")
  Node_AddSon(node89, node156)
  Body_SetCS(node156, MAT_Vector3(1818.858398, 1079.150282, 250), MAT_Vector3())
  Stream_SetBoxExtension(node156, 300, 200, 300)
  Stream_SetCurrentDirection(node156, MAT_Vector3(-69.243835, 5, 0))
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_FX_Stream", "Stream_013")
  Node_AddSon(node89, node157)
  Body_SetCS(node157, MAT_Vector3(1537.242694, 967.002312, 250), MAT_Vector3())
  Stream_SetBoxExtension(node157, 200, 150, 300)
  Stream_SetCurrentDirection(node157, MAT_Vector3(-21.249154, 5, 0))
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_FX_Stream", "Stream_014")
  Node_AddSon(node89, node158)
  Body_SetCS(node158, MAT_Vector3(1619.484332, 553.301952, 250), MAT_Vector3())
  Stream_SetBoxExtension(node158, 200, 500, 300)
  Stream_SetCurrentDirection(node158, MAT_Vector3(0.799118, 5, 0))
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_FX_Stream", "Stream_015")
  Node_AddSon(node89, node159)
  Body_SetCS(node159, MAT_Vector3(1474.938091, 682.894884, 250), MAT_Vector3())
  Stream_SetBoxExtension(node159, 100, 50, 300)
  Stream_SetCurrentDirection(node159, MAT_Vector3(89.70754, 5, 0))
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_FX_Stream", "Stream_016")
  Node_AddSon(node89, node160)
  Body_SetCS(node160, MAT_Vector3(1882.086276, 310.984161, 250), MAT_Vector3())
  Stream_SetBoxExtension(node160, 300, 300, 300)
  Stream_SetCurrentDirection(node160, MAT_Vector3(89.70754, 5, 0))
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_FX_Stream", "Stream_101")
  Node_AddSon(node89, node161)
  Body_SetCS(node161, MAT_Vector3(3603.49459, 1689.6476, 250), MAT_Vector3())
  Stream_SetBoxExtension(node161, 400, 200, 300)
  Stream_SetCurrentDirection(node161, MAT_Vector3(177.082537, 5, 0))
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_FX_Stream", "Stream_102")
  Node_AddSon(node89, node162)
  Body_SetCS(node162, MAT_Vector3(3597.898693, 2087.580253, 250), MAT_Vector3())
  Stream_SetBoxExtension(node162, 500, 400, 300)
  Stream_SetCurrentDirection(node162, MAT_Vector3(-137.223342, 5, 0))
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_FX_Stream", "Stream_104")
  Node_AddSon(node89, node163)
  Body_SetCS(node163, MAT_Vector3(2617.511164, 3718.18665, 250), MAT_Vector3())
  Stream_SetBoxExtension(node163, 400, 400, 300)
  Stream_SetCurrentDirection(node163, MAT_Vector3(-85.628147, 5, 0))
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_FX_Stream", "Stream_104c")
  Node_AddSon(node89, node164)
  Body_SetCS(node164, MAT_Vector3(2368.29386, 3376.759518, 250), MAT_Vector3())
  Stream_SetBoxExtension(node164, 300, 256, 300)
  Stream_SetCurrentDirection(node164, MAT_Vector3(-62.73603, 5, 0))
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_FX_Stream", "Stream_104b")
  Node_AddSon(node89, node165)
  Body_SetCS(node165, MAT_Vector3(2492.571016, 3707.885204, 250), MAT_Vector3())
  Stream_SetBoxExtension(node165, 300, 200, 300)
  Stream_SetCurrentDirection(node165, MAT_Vector3(-3.797191, 5, 0))
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_FX_Stream", "Stream_105")
  Node_AddSon(node89, node166)
  Body_SetCS(node166, MAT_Vector3(2092.495565, 3068.478725, 250), MAT_Vector3())
  Stream_SetBoxExtension(node166, 300, 300, 300)
  Stream_SetCurrentDirection(node166, MAT_Vector3(-87.850489, 5, 0))
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node87, node167)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node87, node168)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Trigger", "MessageTrigger")
  Node_AddSon(node168, node169)
  Body_SetFriendOrFoeID(node169, 0)
  Body_SetCS(node169, MAT_Vector3(1776.037613, 1837.414767, 250), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node169, 20, 450, 300)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node168, node170)
  Body_SetFriendOrFoeID(node170, 0)
  Body_SetPosition(node170, MAT_Vector3(2232.876416, 443.46912, 136.991492))
  Trigger_SetPresenceSphere(node170, 150)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Trigger", "CanyonB_Out")
  Node_AddSon(node168, node171)
  Body_SetFriendOrFoeID(node171, 0)
  Body_SetCS(node171, MAT_Vector3(2404.016955, 3483.34177, 124.205809), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node171, 50, 450, 300)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Trigger", "CanyonA_In")
  Node_AddSon(node168, node172)
  Body_SetFriendOrFoeID(node172, 0)
  Body_SetCS(node172, MAT_Vector3(1045.282274, 1170.820088, 329.896916), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node172, 50, 300, 300)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Trigger", "CanyonA_In_Trap")
  Node_AddSon(node168, node173)
  Body_SetFriendOrFoeID(node173, 0)
  Body_SetCS(node173, MAT_Vector3(990.454496, 1125.961485, 207.519796), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node173, 50, 300, 300)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node87, node174)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node174, node175)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node174, node176)
  Body_SetCS(node176, MAT_Vector3(880.293687, 3330.165063, 207.372882), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node176, "osd/pla/pla_vortex.osd")
  Body_SetFriendOrFoeID(node176, 1)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "wng_pico_c4_1")
  Node_AddSon(node174, node177)
  Body_SetCS(node177, MAT_Vector3(859.511837, 3306.94913, 191.291351), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node177, "osd/wng/wng_pico_c4.osd")
  Body_SetFriendOrFoeID(node177, 2)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "atl_fregatte_01")
  Node_AddSon(node174, node178)
  Body_SetCS(node178, MAT_Vector3(1093.78653, 3445.800225, 295), MAT_Vector3(90.102336, 0, 0))
  Node_ParseIniFile(node178, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node178, 3)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "atl_bomber_01")
  Node_AddSon(node174, node179)
  Body_SetCS(node179, MAT_Vector3(1093.5721, 3450.063404, 223.180908), MAT_Vector3(89.962094, 0, 0))
  Node_ParseIniFile(node179, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node179, 3)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "atl_scout1_01")
  Node_AddSon(node174, node180)
  Body_SetCS(node180, MAT_Vector3(1106.139346, 3478.921075, 221.213344), MAT_Vector3(90.557218, 0, 0))
  Node_ParseIniFile(node180, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node180, 3)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "atl_scout1_02")
  Node_AddSon(node174, node181)
  Body_SetCS(node181, MAT_Vector3(1114.204797, 3408.597527, 288.640259), MAT_Vector3(89.515208, 0, 0))
  Node_ParseIniFile(node181, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node181, 3)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "atl_scout1_11")
  Node_AddSon(node174, node182)
  Body_SetCS(node182, MAT_Vector3(543.795348, 3364.086611, 356.806505), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node182, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node182, 3)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "atl_scout1_12")
  Node_AddSon(node174, node183)
  Body_SetCS(node183, MAT_Vector3(516.977317, 3343.636479, 356.806505), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node183, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node183, 3)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "atl_scout1_21")
  Node_AddSon(node174, node184)
  Body_SetCS(node184, MAT_Vector3(611.771306, 1913.65982, 242.036552), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node184, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node184, 3)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "atl_scout1_22")
  Node_AddSon(node174, node185)
  Body_SetCS(node185, MAT_Vector3(470.616314, 1977.863627, 242.552743), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node185, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node185, 3)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node174, node186)
  Body_SetPosition(node186, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node186, 400)
  Node_ParseIniFile(node186, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node174, node187)
  Body_SetPosition(node187, MAT_Vector3(930.568695, 1177.212589, 195.709009))
  WayPoint_SetRadius(node187, 250)
  Node_ParseIniFile(node187, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "atl_scout2_4h2_1")
  Node_AddSon(node174, node188)
  Body_SetCS(node188, MAT_Vector3(1744.678953, 1795.128678, 200), MAT_Vector3(38.107486, 0, 0))
  Node_ParseIniFile(node188, "osd/atl/atl_scout2_4h2.osd")
  Body_SetFriendOrFoeID(node188, 3)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "atl_scout2_4h2_3")
  Node_AddSon(node174, node189)
  Body_SetCS(node189, MAT_Vector3(1701.816068, 1053.503121, 200), MAT_Vector3(118.383032, 0, 0))
  Node_ParseIniFile(node189, "osd/atl/atl_scout2_4h2.osd")
  Body_SetFriendOrFoeID(node189, 3)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "atl_scout2_4h2_4")
  Node_AddSon(node174, node190)
  Body_SetCS(node190, MAT_Vector3(1825.265731, 1109.142315, 200), MAT_Vector3(-55.833286, 0, 0))
  Node_ParseIniFile(node190, "osd/atl/atl_scout2_4h2.osd")
  Body_SetFriendOrFoeID(node190, 3)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "atl_fregatte_canyonA")
  Node_AddSon(node174, node191)
  Body_SetCS(node191, MAT_Vector3(1824.616584, 1769.978707, 212.347421), MAT_Vector3(140.224366, 0, 0))
  Node_ParseIniFile(node191, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node191, 3)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_waypoint", "nav_waypoint_02")
  Node_AddSon(node174, node192)
  Body_SetPosition(node192, MAT_Vector3(2232.876416, 443.46912, 158.507627))
  WayPoint_SetRadius(node192, 250)
  Node_ParseIniFile(node192, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "atl_triops_1")
  Node_AddSon(node174, node193)
  Body_SetCS(node193, MAT_Vector3(3025.592957, 673.736695, 186.937796), MAT_Vector3(54.118776, 0, 0))
  Node_ParseIniFile(node193, "osd/atl/atl_triops.osd")
  Body_SetFriendOrFoeID(node193, 3)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "atl_fregatte_1")
  Node_AddSon(node174, node194)
  Body_SetCS(node194, MAT_Vector3(2981.239675, 858.669102, 180.923849), MAT_Vector3(107.654967, 0, 0))
  Node_ParseIniFile(node194, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node194, 3)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "atl_fregatte_2")
  Node_AddSon(node174, node195)
  Body_SetCS(node195, MAT_Vector3(2944.847482, 559.068258, 189.343375), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node195, "osd/atl/atl_fregatte.osd")
  Body_SetFriendOrFoeID(node195, 3)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "atl_scout1_31")
  Node_AddSon(node174, node196)
  Body_SetCS(node196, MAT_Vector3(2725.840741, 728.221675, 91.457593), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node196, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node196, 3)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "atl_scout1_32")
  Node_AddSon(node174, node197)
  Body_SetCS(node197, MAT_Vector3(2705.528748, 700.292778, 91.45759), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node197, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node197, 3)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "atl_scout1_33")
  Node_AddSon(node174, node198)
  Body_SetCS(node198, MAT_Vector3(2752.076902, 701.139108, 91.45759), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node198, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node198, 3)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "atl_scout2_41")
  Node_AddSon(node174, node199)
  Body_SetCS(node199, MAT_Vector3(3125.433309, 575.039001, 92.990337), MAT_Vector3(75.479122, 0, 0))
  Node_ParseIniFile(node199, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node199, 3)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "atl_scout1_42")
  Node_AddSon(node174, node200)
  Body_SetCS(node200, MAT_Vector3(3150.698462, 595.347841, 91.45759), MAT_Vector3(84.106843, 0, 0))
  Node_ParseIniFile(node200, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node200, 3)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "atl_scout1_43")
  Node_AddSon(node174, node201)
  Body_SetCS(node201, MAT_Vector3(3145.62002, 548.799646, 91.45759), MAT_Vector3(84.10684, 0, 0))
  Node_ParseIniFile(node201, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node201, 3)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "atl_bomber_11")
  Node_AddSon(node174, node202)
  Body_SetCS(node202, MAT_Vector3(2932.532386, 691.093681, 187.848289), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node202, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node202, 3)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "atl_bomber_21")
  Node_AddSon(node174, node203)
  Body_SetCS(node203, MAT_Vector3(2896.139712, 908.60048, 291.5307), MAT_Vector3(-45.093673, 0, 0))
  Node_ParseIniFile(node203, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node203, 3)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "atl_scout1_51")
  Node_AddSon(node174, node204)
  Body_SetCS(node204, MAT_Vector3(3004.283623, 764.613897, 91.45759), MAT_Vector3(131.004101, 0, 0))
  Node_ParseIniFile(node204, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node204, 3)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "atl_scout1_52")
  Node_AddSon(node174, node205)
  Body_SetCS(node205, MAT_Vector3(3011.900518, 801.006089, 91.45759), MAT_Vector3(137.785891, 0, 0))
  Node_ParseIniFile(node205, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node205, 3)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "atl_scout1_53")
  Node_AddSon(node174, node206)
  Body_SetCS(node206, MAT_Vector3(3038.136594, 776.462484, 91.45759), MAT_Vector3(160.479352, 0, 0))
  Node_ParseIniFile(node206, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node206, 3)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "atl_scout1_61")
  Node_AddSon(node174, node207)
  Body_SetCS(node207, MAT_Vector3(2959.07045, 2698.272021, 186.950137), MAT_Vector3(131.0041, 0, 0))
  Node_ParseIniFile(node207, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node207, 3)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vessel", "atl_scout1_62")
  Node_AddSon(node174, node208)
  Body_SetCS(node208, MAT_Vector3(3003.855351, 2559.082649, 190.171735), MAT_Vector3(137.7859, 0, 0))
  Node_ParseIniFile(node208, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node208, 3)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "atl_scout1_63")
  Node_AddSon(node174, node209)
  Body_SetCS(node209, MAT_Vector3(2973.442136, 2741.230801, 126.591212), MAT_Vector3(160.4794, 0, 0))
  Node_ParseIniFile(node209, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node209, 3)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_waypoint", "nav_waypoint_03")
  Node_AddSon(node174, node210)
  Body_SetPosition(node210, MAT_Vector3(3540.614546, 1614.805815, 146.153162))
  WayPoint_SetRadius(node210, 300)
  Node_ParseIniFile(node210, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_waypoint", "nav_waypoint_04")
  Node_AddSon(node174, node211)
  Body_SetPosition(node211, MAT_Vector3(2007.929336, 3164.936223, 132.024358))
  WayPoint_SetRadius(node211, 250)
  Node_ParseIniFile(node211, "osd/nav/nav_waypoint_04.osd")
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node212)
  Camera_SetBackPlane(node212, 512)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node213)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node213, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node213, node215)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Path", "Player_Path_1")
  Node_AddSon(node215, node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node216, node217)
  Position_SetPosition(node217, MAT_Vector3(891.652101, 2598.190615, 142.386145))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node216, node218)
  Position_SetPosition(node218, MAT_Vector3(1056.601001, 2918.686646, 138.085747))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node216, node219)
  Position_SetPosition(node219, MAT_Vector3(1058.570072, 3010.269356, 137.97377))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node216, node220)
  Position_SetPosition(node220, MAT_Vector3(1034.659582, 3083.140665, 137.973746))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node215, node221)
  Position_SetPosition(node221, MAT_Vector3(1090.118294, 2955.016122, 138))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node215, node222)
  Position_SetPosition(node222, MAT_Vector3(876.346121, 2575.457839, 142.610832))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node215, node223)
  Position_SetPosition(node223, MAT_Vector3(1032.917208, 3178.044939, 137.929662))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node215, node224)
  Position_SetPosition(node224, MAT_Vector3(927.972263, 3475.106838, 174.044915))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Path", "Player_Path_2")
  Node_AddSon(node215, node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node225, node226)
  Position_SetPosition(node226, MAT_Vector3(913.235282, 2641.873949, 141.396255))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node225, node227)
  Position_SetPosition(node227, MAT_Vector3(831.141253, 2481.917542, 142.655035))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node225, node228)
  Position_SetPosition(node228, MAT_Vector3(699.113743, 2225.479492, 142.288422))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node215, node229)
  Position_SetPosition(node229, MAT_Vector3(882.767395, 2507.307448, 110))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "LookAt_3")
  Node_AddSon(node215, node230)
  Position_SetPosition(node230, MAT_Vector3(508.689448, 1878.484111, 170.043568))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node215, node231)
  Position_SetPosition(node231, MAT_Vector3(690.650441, 2122.227208, 115.964593))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node215, node232)
  Position_SetPosition(node232, MAT_Vector3(2154.46908, 398.666908, 183.057943))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node215, node233)
  Position_SetPosition(node233, MAT_Vector3(2812.067543, 677.1095, 151.402098))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node215, node234)
  Position_SetPosition(node234, MAT_Vector3(3013.763186, 749.557528, 197.653836))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node215, node235)
  Position_SetPosition(node235, MAT_Vector3(2446.420461, 609.644355, 185.38542))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Path", "Player_Path_3")
  Node_AddSon(node215, node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node236, node237)
  Position_SetPosition(node237, MAT_Vector3(2209.184205, 431.185421, 159.15243))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node236, node238)
  Position_SetPosition(node238, MAT_Vector3(2339.65724, 484.504216, 190.84787))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node236, node239)
  Position_SetPosition(node239, MAT_Vector3(2424.849717, 519.492032, 76.286324))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node236, node240)
  Position_SetPosition(node240, MAT_Vector3(2618.032309, 669.466312, 115.863633))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node213, node241)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node241, node242)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node241, node243)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node241, node244)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Director", "Chapter3_Intro_A")
  Node_AddSon(node241, node245)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node213, node246)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node213, node247)
  Node_EnterSimulation(node247)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
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
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, N)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
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
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, F)
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
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (o1796.Value ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
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
                                                                                                    if not (o1820.Value == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
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
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (o1821.Value == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
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
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (o1822.Value == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
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

end }
S_o880 = { [nil] = {}, Start = function(L0)

end }
S_o914 = { [nil] = {}, Start = function(L0)

end }
S_o948 = { [nil] = {}, Start = function(L0)

end }
S_o982 = { [nil] = {}, Start = function(L0)

end }
S_o1016 = { [nil] = {}, Start = function(L0)

end }
S_o1050 = { [nil] = {}, Start = function(L0)

end }
S_o1084 = { [nil] = {}, Start = function(L0)

end }
S_o1118 = { [nil] = {}, Start = function(L0)

end }
S_o1152 = { [nil] = {}, Start = function(L0)

end }
S_o1186 = { [nil] = {}, Start = function(L0)

end }
S_o1220 = { [nil] = {}, Start = function(L0)

end }
S_o1254 = { [nil] = {}, Start = function(L0)

end }
S_o1288 = { [nil] = {}, Start = function(L0)

end }
S_o1322 = { [nil] = {}, Start = function(L0)

end }
S_o1356 = { [nil] = {}, Start = function(L0)

end }
S_o1390 = { [nil] = {}, Start = function(L0)

end }
S_o1424 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1424, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1424, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1424, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1424, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1424, "Code5")
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
S_o1462 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1462, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1462, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1462, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1462, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1462, "Code5")
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
S_o1500 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1500, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1500, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1500, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1500, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1500, "Code5")
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
S_o1538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1538, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1538, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1538, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1538, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1538, "Code5")
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
S_o1576 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1576, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1576, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1576, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1576, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1576, "Code5")
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
S_o1614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1614, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1614, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1614, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1614, "Code5")
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
S_o1652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1652, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1652, "Code5")
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
S_o1690 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1690, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1690, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1690, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1693.SetStateValue(L1)
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
o1693 = { [nil] = {}, Start = function()
  o1693["Value"] = False
  o1783.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1693.Value == L0) then
    o1693["Value"] = L0
    o1783.ReCalculate()
  end
end }
o1725 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o1727 = FormationLib.CreateFormation("Row", "", "", "", 50, 30)
o1729 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o1731 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1731, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1732 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1732, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1733 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1733, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1734 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1734, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1735 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1735, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1736, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1737, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1738 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1738, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1739 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1739, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1740 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 79, 10)
  CallFunction(o1740, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 134, 10)
  CallFunction(o1741, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1742 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 143, 10)
  CallFunction(o1742, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1743 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 101, 10)
  CallFunction(o1743, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1744 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 101, 10)
  CallFunction(o1744, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1745 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 101, 10)
  CallFunction(o1745, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1746 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 101, 10)
  CallFunction(o1746, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1747 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 179.7, 10)
  CallFunction(o1747, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1748 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1748, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1748, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1748, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1748, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1748, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1748, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1753.SetStateValue(L1)
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
o1753 = { [nil] = {}, Start = function()
  o1753["Value"] = False
  o1788.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1753.Value == L0) then
    o1753["Value"] = L0
    o1788.ReCalculate()
  end
end }
S_o1754 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1754, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1754, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1754, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1754, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1754, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1754, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1759.SetStateValue(L1)
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
o1759 = { [nil] = {}, Start = function()
  o1759["Value"] = False
  o3318.StartCalculate()
  o3324.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1759.Value == L0) then
    o1759["Value"] = L0
    o3318.ReCalculate()
    o3324.ReCalculate()
  end
end }
S_o1760 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1760, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1760, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1760, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1760, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1760, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1760, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1765.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1761.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1761 = { [nil] = {}, GetCalculated = function()
  if not (o1789.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1761.SetStateValue(o1761.GetCalculated())
end, StartCalculate = function()
  o1761["Value"] = o1761.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1761.Value == L0) then
    o1761["Value"] = L0
    CallFunction(o1760, "ProcesseStateChange")
  end
end }
o1765 = { [nil] = {}, Start = function()
  o1765["Value"] = False
  o1790.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1765.Value == L0) then
    o1765["Value"] = L0
    o1790.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1766, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1766, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1766, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1771.SetStateValue(L1)
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
o1771 = { [nil] = {}, Start = function()
  o1771["Value"] = False
  o1792.StartCalculate()
  o1794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1771.Value == L0) then
    o1771["Value"] = L0
    o1792.ReCalculate()
    o1794.ReCalculate()
  end
end }
S_o1772 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1772, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1772, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1772, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1772, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1772, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1772, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1777.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1774.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1774 = { [nil] = {}, GetCalculated = function()
  if not (o1783.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1774.SetStateValue(o1774.GetCalculated())
end, StartCalculate = function()
  o1774["Value"] = o1774.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1774.Value == L0) then
    o1774["Value"] = L0
    CallFunction(o1772, "ProcesseStateChange")
  end
end }
o1777 = { [nil] = {}, Start = function()
  o1777["Value"] = False
  o1793.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1777.Value == L0) then
    o1777["Value"] = L0
    o1793.ReCalculate()
  end
end }
S_o1778 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 4000)
  Body_AddItem(L0.Node, "torpedo_flashshark", 2)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 8)
  Body_AddItem(L0.Node, "device_repair", 1)
  CallFunction(o1778, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_UnderAttack = function(L0, L1)
  o1782.SetStateValue(L1)
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
o1782 = { [nil] = {}, Start = function()
  o1782["Value"] = False
  o1784.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1782.Value == L0) then
    o1782["Value"] = L0
    o1784.ReCalculate()
  end
end }
o1783 = { [nil] = {}, GetCalculated = function()
  if not (o1693.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1783.SetStateValue(o1783.GetCalculated())
end, StartCalculate = function()
  o1783["Value"] = o1783.GetCalculated()
  o1774.StartCalculate()
  o1792.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1778.Node, o1778.Node, 189)
  Game_SetWayPoint(GetGameNode(), o2269.Node)
  SED_SetTaskTextKey(1303, -1, -1)
end, SetStateValue = function(L0)
  if not (o1783.Value == L0) then
    o1783["Value"] = L0
    o1774.ReCalculate()
    o1792.ReCalculate()
    if not (L0 ~= 1) then
      o1783.ChangeTo1()
    end
  end
end }
o1784 = { [nil] = {}, GetCalculated = function()
  if not (o1782.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1784.SetStateValue(o1784.GetCalculated())
end, StartCalculate = function()
  o1784["Value"] = o1784.GetCalculated()
  o1792.StartCalculate()
  o1793.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("player was detected")
end, SetStateValue = function(L0)
  if not (o1784.Value == L0) then
    o1784["Value"] = L0
    o1792.ReCalculate()
    o1793.ReCalculate()
    if not (L0 ~= 1) then
      o1784.ChangeTo1()
    end
  end
end }
o1785 = { [nil] = {}, GetCalculated = function()
  if not (o2272.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1785.SetStateValue(o1785.GetCalculated())
end, StartCalculate = function()
  o1785["Value"] = o1785.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "atmo")
  SendRadioMessageTake(o1778.Node, o1778.Node, 190)
  Game_SetWayPoint(GetGameNode(), o2466.Node)
end, SetStateValue = function(L0)
  if not (o1785.Value == L0) then
    o1785["Value"] = L0
    if not (L0 ~= 1) then
      o1785.ChangeTo1()
    end
  end
end }
o1786 = { [nil] = {}, GetCalculated = function()
  if not (o3287.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1786.SetStateValue(o1786.GetCalculated())
end, StartCalculate = function()
  o1786["Value"] = o1786.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("waypoint04 debug")
  Game_SetWayPoint(GetGameNode(), o3289.Node)
end, SetStateValue = function(L0)
  if not (o1786.Value == L0) then
    o1786["Value"] = L0
    if not (L0 ~= 1) then
      o1786.ChangeTo1()
    end
  end
end }
o1787 = { [nil] = {}, GetCalculated = function()
  if not (o3292.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1787.SetStateValue(o1787.GetCalculated())
end, StartCalculate = function()
  o1787["Value"] = o1787.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("waypoint0 debug")
  Game_SetWayPoint(GetGameNode(), o1824.Node)
  SED_SetTaskTextKey(1305, -1, -1)
end, SetStateValue = function(L0)
  if not (o1787.Value == L0) then
    o1787["Value"] = L0
    if not (L0 ~= 1) then
      o1787.ChangeTo1()
    end
  end
end }
o1788 = { [nil] = {}, GetCalculated = function()
  if not (o1753.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1788.SetStateValue(o1788.GetCalculated())
end, StartCalculate = function()
  o1788["Value"] = o1788.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1778.Node, o1778.Node, 191)
end, SetStateValue = function(L0)
  if not (o1788.Value == L0) then
    o1788["Value"] = L0
    if not (L0 ~= 1) then
      o1788.ChangeTo1()
    end
  end
end }
o1789 = { [nil] = {}, Start = function()
  o1789["Value"] = False
  o1761.StartCalculate()
  o1791.StartCalculate()
  o1792.StartCalculate()
  o1794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1789.Value == L0) then
    o1789["Value"] = L0
    o1761.ReCalculate()
    o1791.ReCalculate()
    o1792.ReCalculate()
    o1794.ReCalculate()
  end
end }
o1790 = { [nil] = {}, GetCalculated = function()
  if not (o1765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1790.SetStateValue(o1790.GetCalculated())
end, StartCalculate = function()
  o1790["Value"] = o1790.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o1874, "Code5")
  CallFunction(o1923, "Code5")
  CallFunction(o1972, "Code5")
  CallFunction(o2021, "Code5")
  CallFunction(o2070, "Code5")
  CallFunction(o2119, "Code5")
  CallFunction(o1824, "Code6")
  SetEnemyMatrixElement(3, 2, E)
  SetEnemyMatrixElement(2, 3, E)
  SetEnemyMatrixElement(3, 0, E)
  SetEnemyMatrixElement(0, 3, E)
  SendRadioMessageTake(o1824.Node, o1778.Node, 195)
end, SetStateValue = function(L0)
  if not (o1790.Value == L0) then
    o1790["Value"] = L0
    if not (L0 ~= 1) then
      o1790.ChangeTo1()
    end
  end
end }
o1791 = { [nil] = {}, GetCalculated = function()
  if not (o1789.Value ~= True) then
    if not (o1892.Value ~= True) then
      if not (o1941.Value ~= True) then
        if not (o1990.Value ~= True) then
          if not (o2039.Value ~= True) then
            if not (o2088.Value ~= True) then
              if not (o2137.Value ~= True) then
                if not (o1831.Value ~= False) then
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
  o1791.SetStateValue(o1791.GetCalculated())
end, StartCalculate = function()
  o1791["Value"] = o1791.GetCalculated()
  o1796.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1778.Node, o1778.Node, 1154)
end, SetStateValue = function(L0)
  if not (o1791.Value == L0) then
    o1791["Value"] = L0
    o1796.ReCalculate()
    if not (L0 ~= 1) then
      o1791.ChangeTo1()
    end
  end
end }
o1792 = { [nil] = {}, GetCalculated = function()
  if not (o1784.Value ~= True) then
    if not (o1783.Value ~= True) then
      if not (o1771.Value ~= True) then
        if not (o1789.Value ~= False) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1792.SetStateValue(o1792.GetCalculated())
end, StartCalculate = function()
  o1792["Value"] = o1792.GetCalculated()
  o1820.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o1778.Node, o1778.Node, 1242)
end, SetStateValue = function(L0)
  if not (o1792.Value == L0) then
    o1792["Value"] = L0
    o1820.ReCalculate()
    if not (L0 ~= 1) then
      o1792.ChangeTo1()
    end
  end
end }
o1793 = { [nil] = {}, GetCalculated = function()
  if not (o1784.Value ~= True) then
    if not (o1777.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1793.SetStateValue(o1793.GetCalculated())
end, StartCalculate = function()
  o1793["Value"] = o1793.GetCalculated()
  o1821.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o1778.Node, o1778.Node, 1242)
  CallFunction(o2274, "Code2")
  CallFunction(o2322, "Code2")
  CallFunction(o2370, "Code2")
  CallFunction(o2418, "Code7")
end, SetStateValue = function(L0)
  if not (o1793.Value == L0) then
    o1793["Value"] = L0
    o1821.ReCalculate()
    if not (L0 ~= 1) then
      o1793.ChangeTo1()
    end
  end
end }
o1794 = { [nil] = {}, GetCalculated = function()
  if not (o1795.Value ~= True) then
    if not (o1771.Value ~= True) then
      if not (o1789.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1794.SetStateValue(o1794.GetCalculated())
end, StartCalculate = function()
  o1794["Value"] = o1794.GetCalculated()
  o1822.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o1778.Node, o1778.Node, 1242)
end, SetStateValue = function(L0)
  if not (o1794.Value == L0) then
    o1794["Value"] = L0
    o1822.ReCalculate()
    if not (L0 ~= 1) then
      o1794.ChangeTo1()
    end
  end
end }
o1795 = { [nil] = {}, GetCalculated = function()
  if not (o1878.Value == True) then
    if not (o1927.Value == True) then
      if not (o1976.Value == True) then
        if not (o2025.Value == True) then
          if not (o2074.Value == True) then
            if not (o2123.Value ~= True) then
              return 1
            else
              return 0
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1795.SetStateValue(o1795.GetCalculated())
end, StartCalculate = function()
  o1795["Value"] = o1795.GetCalculated()
  o1794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1795.Value == L0) then
    o1795["Value"] = L0
    o1794.ReCalculate()
  end
end }
o1796 = { [nil] = {}, GetCalculated = function()
  if not (o1791.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1796.SetStateValue(o1796.GetCalculated())
end, StartCalculate = function()
  o1796["Value"] = o1796.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1796.Value == L0) then
    o1796["Value"] = L0
    o2.ReCalculate()
  end
end }
o1820 = { [nil] = {}, GetCalculated = function()
  if not (o1792.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1820.SetStateValue(o1820.GetCalculated())
end, StartCalculate = function()
  o1820["Value"] = o1820.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1820.Value == L0) then
    o1820["Value"] = L0
    o26.ReCalculate()
  end
end }
o1821 = { [nil] = {}, GetCalculated = function()
  if not (o1793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1821.SetStateValue(o1821.GetCalculated())
end, StartCalculate = function()
  o1821["Value"] = o1821.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1821.Value == L0) then
    o1821["Value"] = L0
    o27.ReCalculate()
  end
end }
o1822 = { [nil] = {}, GetCalculated = function()
  if not (o1794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1822.SetStateValue(o1822.GetCalculated())
end, StartCalculate = function()
  o1822["Value"] = o1822.GetCalculated()
  o28.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1822.Value == L0) then
    o1822["Value"] = L0
    o28.ReCalculate()
  end
end }
S_o1824 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1824, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1824, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1824, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 4 } }("Code4")
  else
    CallFunction(o1824, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1824, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1824, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1824, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/DeepDraft_Patrol_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Trigger_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", "atl_fregatte_01", "E", "", "", 0.75, "Code9")
  else
    CallFunction(o1824, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o1831.SetStateValue(L1)
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
o1831 = { [nil] = {}, Start = function()
  o1831["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1831.Value == L0) then
    o1831["Value"] = L0
    o1791.ReCalculate()
  end
end }
S_o1874 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1874, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1874, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1874, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1874, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1726, { {}, "Goto", "/Scenario_Dynamic/Navigation/Fregate_Path", 0.5, 1 } }, o1725, "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", 0.001, "E", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o1874, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  Body_SetKineticShield(L0.Node, 0, 1)
  Body_SetEmpShield(L0.Node, 0.4)
  CallFunction(o1874, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Fregate_Path", 1, 1 } }("Code10")
  else
    CallFunction(o1874, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o1874, "Code9")
  else
    CallFunction(o1874, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o1878.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o1892.SetStateValue(L1)
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
o1878 = { [nil] = {}, Start = function()
  o1878["Value"] = False
  o1795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1878.Value == L0) then
    o1878["Value"] = L0
    o1795.ReCalculate()
  end
end }
o1892 = { [nil] = {}, Start = function()
  o1892["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1892.Value == L0) then
    o1892["Value"] = L0
    o1791.ReCalculate()
  end
end }
S_o1923 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1923, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1923, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1923, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1923, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1728, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomber_Path", 0.5, 1 } }, o1727, "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", 0.001, "", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o1923, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o1923, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/DeepDraft_Patrol_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Trigger_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o1923, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o1927.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o1941.SetStateValue(L1)
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
o1927 = { [nil] = {}, Start = function()
  o1927["Value"] = False
  o1795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1927.Value == L0) then
    o1927["Value"] = L0
    o1795.ReCalculate()
  end
end }
o1941 = { [nil] = {}, Start = function()
  o1941["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1941.Value == L0) then
    o1941["Value"] = L0
    o1791.ReCalculate()
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1972, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1972, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1728, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomber_Path", 0.5, 1 } }, o1727, "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", 0.001, "", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o1972, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o1972, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/DeepDraft_Patrol_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Trigger_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o1972, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o1976.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o1990.SetStateValue(L1)
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
o1976 = { [nil] = {}, Start = function()
  o1976["Value"] = False
  o1795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1976.Value == L0) then
    o1976["Value"] = L0
    o1795.ReCalculate()
  end
end }
o1990 = { [nil] = {}, Start = function()
  o1990["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1990.Value == L0) then
    o1990["Value"] = L0
    o1791.ReCalculate()
  end
end }
S_o2021 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2021, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2021, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2021, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2021, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1728, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomber_Path", 0.5, 1 } }, o1727, "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", 0.001, "", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o2021, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o2021, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/DeepDraft_Patrol_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Trigger_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2021, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o2025.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2039.SetStateValue(L1)
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
o2025 = { [nil] = {}, Start = function()
  o2025["Value"] = False
  o1795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2025.Value == L0) then
    o2025["Value"] = L0
    o1795.ReCalculate()
  end
end }
o2039 = { [nil] = {}, Start = function()
  o2039["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2039.Value == L0) then
    o2039["Value"] = L0
    o1791.ReCalculate()
  end
end }
S_o2070 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2070, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2070, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2070, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2070, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1730, { {}, "Goto", "/Scenario_Dynamic/Navigation/Scout_Path", 0.5, 1 } }, o1729, "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", 0.001, "", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o2070, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o2070, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/DeepDraft_Patrol_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Trigger_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2070, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o2074.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2088.SetStateValue(L1)
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
o2074 = { [nil] = {}, Start = function()
  o2074["Value"] = False
  o1795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2074.Value == L0) then
    o2074["Value"] = L0
    o1795.ReCalculate()
  end
end }
o2088 = { [nil] = {}, Start = function()
  o2088["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2088.Value == L0) then
    o2088["Value"] = L0
    o1791.ReCalculate()
  end
end }
S_o2119 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2119, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2119, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2119, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2119, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1730, { {}, "Goto", "/Scenario_Dynamic/Navigation/Scout_Path", 0.5, 1 } }, o1729, "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", 0.001, "", "", "", "", 1, 0.5, True, "Code5")
  else
    CallFunction(o2119, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  CallFunction(o2119, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/DeepDraft_Patrol_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Trigger_Area", "/Scenario_Dynamic/Navigation/DeepDraft_Follow_Area", "E", "", "", "", 0.75, "Code7")
  else
    CallFunction(o2119, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o2123.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2137.SetStateValue(L1)
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
o2123 = { [nil] = {}, Start = function()
  o2123["Value"] = False
  o1795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2123.Value == L0) then
    o2123["Value"] = L0
    o1795.ReCalculate()
  end
end }
o2137 = { [nil] = {}, Start = function()
  o2137["Value"] = False
  o1791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2137.Value == L0) then
    o2137["Value"] = L0
    o1791.ReCalculate()
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
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Patrol_Area", "/Scenario_Dynamic/Navigation/ELF_Trigger_Area", "/Scenario_Dynamic/Navigation/ELF_Follow_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2168, "Code4")
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
S_o2216 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2216, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2216, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2216, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/ELF_Patrol_Area", "/Scenario_Dynamic/Navigation/ELF_Trigger_Area", "/Scenario_Dynamic/Navigation/ELF_Follow_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2216, "Code4")
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
S_o2264 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1690.Node)
  CallFunction(o2264, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2269 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 70)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o2269, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2272.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2272 = { [nil] = {}, Start = function()
  o2272["Value"] = False
  o1785.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2272.Value == L0) then
    o2272["Value"] = L0
    o1785.ReCalculate()
  end
end }
S_o2274 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GotoAttack(L0, 1, "/Scenario_Dynamic/Navigation/Canyon_Path_1", 0.75, 1, "/Scenario_Dynamic/Navigation/CanyonDefend_Area", 25, "E", "", "", "", "Code1")
  else
    CallFunction(o2274, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2274, "Code0")
  else
    CallFunction(o2274, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  StopAllActiveBehaviours(L0)
  CallFunction(o2274, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GotoAttack(L0, 0, "/Scenario_Dynamic/Navigation/Canyon_Path_1", 0.75, 1, "/Scenario_Dynamic/Navigation/CanyonDefend_Area", 300, "E", "", "", "", "Code4")
  else
    CallFunction(o2274, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2274, "Code3")
  else
    CallFunction(o2274, "Code5")
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
S_o2322 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GotoAttack(L0, 1, "/Scenario_Dynamic/Navigation/Canyon_Path_3", 0.75, 1, "/Scenario_Dynamic/Navigation/CanyonDefend_Area", 25, "E", "", "", "", "Code1")
  else
    CallFunction(o2322, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2322, "Code0")
  else
    CallFunction(o2322, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  StopAllActiveBehaviours(L0)
  CallFunction(o2322, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GotoAttack(L0, 0, "/Scenario_Dynamic/Navigation/Canyon_Path_1", 0.75, 1, "/Scenario_Dynamic/Navigation/CanyonDefend_Area", 300, "E", "", "", "", "Code4")
  else
    CallFunction(o2322, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2322, "Code3")
  else
    CallFunction(o2322, "Code5")
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
S_o2370 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GotoAttack(L0, 1, "/Scenario_Dynamic/Navigation/Canyon_Path_4", 0.75, 1, "/Scenario_Dynamic/Navigation/CanyonDefend_Area", 25, "E", "", "", "", "Code1")
  else
    CallFunction(o2370, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2370, "Code0")
  else
    CallFunction(o2370, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  StopAllActiveBehaviours(L0)
  CallFunction(o2370, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GotoAttack(L0, 0, "/Scenario_Dynamic/Navigation/Canyon_Path_1", 0.75, 1, "/Scenario_Dynamic/Navigation/CanyonDefend_Area", 300, "E", "", "", "", "Code4")
  else
    CallFunction(o2370, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o2370, "Code3")
  else
    CallFunction(o2370, "Code5")
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
S_o2418 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2418, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2418, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2418, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "", "", "", "")
  CallFunction(o2418, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o2418, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2418, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o2418, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
S_o2466 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, 0, 999)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o2466, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2471 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2471, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2471, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2471, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2471, "Code6")
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
S_o2518 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2518, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2518, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2518, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2518, "Code6")
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
S_o2565 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2565, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2565, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2565, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2565, "Code6")
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
S_o2612 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2612, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2612, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2612, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2612, "Code4")
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
S_o2660 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2660, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2660, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2660, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2660, "Code4")
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
S_o2708 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2708, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2708, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2708, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2708, "Code4")
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
S_o2756 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2756, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2756, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2756, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2756, "Code4")
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
S_o2804 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2804, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2804, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2804, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2804, "Code4")
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
S_o2852 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2852, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2852, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2852, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2852, "Code4")
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
S_o2900 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2900, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2900, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2900, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2900, "Code4")
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
S_o2948 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2948, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2948, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2948, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/basin_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2948, "Code4")
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
S_o2996 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2996, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2996, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2996, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/OverAll_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2996, "Code4")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3044, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/OverAll_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3044, "Code4")
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
S_o3092 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3092, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3092, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3092, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/basin_Patrol_Area", "/Scenario_Dynamic/Navigation/basin_Trigger_Area", "/Scenario_Dynamic/Navigation/OverAll_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3092, "Code4")
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
S_o3140 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3140, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3140, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3140, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CanyonB_Patrol_Area", "/Scenario_Dynamic/Navigation/CanyonB_Follow_Area", "/Scenario_Dynamic/Navigation/CanyonB_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3140, "Code4")
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
S_o3188 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3188, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3188, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3188, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CanyonB_Patrol_Area", "/Scenario_Dynamic/Navigation/CanyonB_Follow_Area", "/Scenario_Dynamic/Navigation/CanyonB_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3188, "Code4")
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
S_o3236 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3236, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3236, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3236, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CanyonB_Patrol_Area", "/Scenario_Dynamic/Navigation/CanyonB_Follow_Area", "/Scenario_Dynamic/Navigation/CanyonB_Follow_Area", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o3236, "Code4")
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
S_o3284 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3284, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3287.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3287 = { [nil] = {}, Start = function()
  o3287["Value"] = False
  o1786.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3287.Value == L0) then
    o3287["Value"] = L0
    o1786.ReCalculate()
  end
end }
S_o3289 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3289, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3292.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3292 = { [nil] = {}, Start = function()
  o3292["Value"] = False
  o1787.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3292.Value == L0) then
    o3292["Value"] = L0
    o1787.ReCalculate()
  end
end }
S_o3294 = { [nil] = {}, Start = function(L0)

end }
o3296 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o3298 = { [nil] = {}, Start = function(L0)

end }
S_o3299 = { [nil] = {}, Start = function(L0)

end }
S_o3300 = { [nil] = {}, Start = function(L0)

end }
S_o3301 = { [nil] = {}, Start = function(L0)

end }
S_o3302 = { [nil] = {}, Start = function(L0)

end }
S_o3303 = { [nil] = {}, Start = function(L0)

end }
S_o3304 = { [nil] = {}, Start = function(L0)

end }
S_o3305 = { [nil] = {}, Start = function(L0)

end }
S_o3306 = { [nil] = {}, Start = function(L0)

end }
S_o3307 = { [nil] = {}, Start = function(L0)

end }
S_o3308 = { [nil] = {}, Start = function(L0)

end }
S_o3309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o3295, o3296, "/IngameSequences/Navigation/Player_Path_1")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  CallFunction(o3309, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3295, o3296, "/IngameSequences/Navigation/Player_Path_1", "pos_1", "pos_3", 1, 2, "Code8")
  else
    CallFunction(o3309, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 6, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 2, "MMMN", 0)
  CallFunction(o3309, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3295, o3296, "/IngameSequences/Navigation/Player_Path_1", "pos_3", "pos_4", 1, 1, "Code11")
  else
    CallFunction(o3309, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code12")
  else
    CallFunction(o3309, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_fregatte_01", 4, "MMMN", 0)
  CallFunction(o3309, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code14")
  else
    CallFunction(o3309, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 0, "MMMN", 0)
  CallFunction(o1824, "Code3")
  FormationLib.PlaceFormationPath(o3297, o3296, "/IngameSequences/Navigation/Player_Path_2")
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_3", 0, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 6, "MMMN", 0)
  CallFunction(o3309, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3297, o3296, "/IngameSequences/Navigation/Player_Path_2", "pos_1", "pos_3", 1, 1, "Code21")
  else
    CallFunction(o3309, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_EndCutscene(L0.Node)
  SetEnemyMatrixElement(3, 1, E)
  Game_SetWayPoint(GetGameNode(), o2264.Node)
  SED_SetTaskTextKey(1302, -1, -1)
  CallFunction(o3309, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3313 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code1")
  else
    CallFunction(o3313, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1778.Node, o1778.Node, 186)
  SendRadioMessageTake(o1778.Node, o1778.Node, 187)
  CallFunction(o3313, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code4")
  else
    CallFunction(o3313, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1778.Node, o1778.Node, 188)
  CallFunction(o3313, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3317 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3317, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "agressive")
  SetEnemyMatrixElement(3, 1, F)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o3297, o3296, "/IngameSequences/Navigation/Player_Path_3")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 0, "MMMN", 0)
  CallFunction(o3317, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code10")
  else
    CallFunction(o3317, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 4, "MMMN", 0)
  CallFunction(o3317, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code13")
  else
    CallFunction(o3317, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_triops_1", 2, "MMMN", 0)
  CallFunction(o3317, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code16")
  else
    CallFunction(o3317, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 3, "MMMN", 0)
  CallFunction(o3317, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3297, o3296, "/IngameSequences/Navigation/Player_Path_3", "pos_1", "pos_4", 1, 1, "Code19")
  else
    CallFunction(o3317, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Director_EndCutscene(L0.Node)
  SetEnemyMatrixElement(3, 1, E)
  Game_SetWayPoint(GetGameNode(), o3284.Node)
  SED_SetTaskTextKey(1304, -1, -1)
  o1789.SetStateValue(True)
  CallFunction(o3317, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3318.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3318 = { [nil] = {}, GetCalculated = function()
  if not (o1759.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3318.SetStateValue(o3318.GetCalculated())
end, StartCalculate = function()
  o3318["Value"] = o3318.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3318.Value == L0) then
    o3318["Value"] = L0
    CallFunction(o3317, "ProcesseStateChange")
  end
end }
S_o3323 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3323, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code2")
  else
    CallFunction(o3323, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1778.Node, o1778.Node, 192)
  CallFunction(o3323, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code4")
  else
    CallFunction(o3323, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1824.Node, o1778.Node, 193)
  SendRadioMessageTake(o1778.Node, o1778.Node, 194)
  SendRadioMessageTake(o1778.Node, o1778.Node, 1241)
  CallFunction(o3323, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3324.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3324 = { [nil] = {}, GetCalculated = function()
  if not (o1759.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3324.SetStateValue(o3324.GetCalculated())
end, StartCalculate = function()
  o3324["Value"] = o3324.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3324.Value == L0) then
    o3324["Value"] = L0
    CallFunction(o3323, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 247)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_2", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3a_1_3", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wb3b_3_1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_3", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_2", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_1", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern_1", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_g_1", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_4", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_1", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_2", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_3", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk2_1", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_1", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_elf-kn_2", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_1", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_4", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_2", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_3", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_5", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_6", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_7", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohrbG_8", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_1", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_2", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_3", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_4", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_5", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_6", S_o1220)
  o1254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_1", S_o1254)
  o1288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_2", S_o1288)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_2", S_o1322)
  o1356 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_3", S_o1356)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_4", S_o1390)
  o1424 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o1424)
  o1462 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o1462)
  o1500 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o1500)
  o1538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o1538)
  o1576 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o1576)
  o1614 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_9/Turm1", S_o1614)
  o1652 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_10/Turm1", S_o1652)
  o1690 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_trafo_02_1", S_o1690)
  o1693.Start()
  o1731 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_001", S_o1731)
  o1732 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_002", S_o1732)
  o1733 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_003", S_o1733)
  o1734 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_004", S_o1734)
  o1735 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_005", S_o1735)
  o1736 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_011", S_o1736)
  o1737 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_012", S_o1737)
  o1738 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_013", S_o1738)
  o1739 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_014", S_o1739)
  o1740 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_015", S_o1740)
  o1741 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_016", S_o1741)
  o1742 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_101", S_o1742)
  o1743 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_102", S_o1743)
  o1744 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104", S_o1744)
  o1745 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104c", S_o1745)
  o1746 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104b", S_o1746)
  o1747 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_105", S_o1747)
  o1748 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "MessageTrigger", S_o1748)
  o1753.Start()
  o1754 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o1754)
  o1759.Start()
  o1760 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "CanyonB_Out", S_o1760)
  o1765.Start()
  o1766 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "CanyonA_In", S_o1766)
  o1771.Start()
  o1772 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "CanyonA_In_Trap", S_o1772)
  o1777.Start()
  o1778 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1778)
  o1782.Start()
  o1789.Start()
  o1824 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c4_1", S_o1824)
  o1831.Start()
  o1874 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_fregatte_01", S_o1874)
  o1878.Start()
  o1892.Start()
  o1923 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_01", S_o1923)
  o1927.Start()
  o1941.Start()
  o1972 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_01", S_o1972)
  o1976.Start()
  o1990.Start()
  o2021 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_02", S_o2021)
  o2025.Start()
  o2039.Start()
  o2070 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_11", S_o2070)
  o2074.Start()
  o2088.Start()
  o2119 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_12", S_o2119)
  o2123.Start()
  o2137.Start()
  o2168 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_21", S_o2168)
  o2216 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_22", S_o2216)
  o2264 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o2264)
  o2269 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o2269)
  o2272.Start()
  o2274 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_4h2_1", S_o2274)
  o2322 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_4h2_3", S_o2322)
  o2370 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_4h2_4", S_o2370)
  o2418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_fregatte_canyonA", S_o2418)
  o2466 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02", S_o2466)
  o2471 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_triops_1", S_o2471)
  o2518 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_fregatte_1", S_o2518)
  o2565 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_fregatte_2", S_o2565)
  o2612 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_31", S_o2612)
  o2660 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_32", S_o2660)
  o2708 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_33", S_o2708)
  o2756 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_41", S_o2756)
  o2804 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_42", S_o2804)
  o2852 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_43", S_o2852)
  o2900 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_11", S_o2900)
  o2948 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_bomber_21", S_o2948)
  o2996 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_51", S_o2996)
  o3044 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_52", S_o3044)
  o3092 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_53", S_o3092)
  o3140 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_61", S_o3140)
  o3188 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_62", S_o3188)
  o3236 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_63", S_o3236)
  o3284 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03", S_o3284)
  o3287.Start()
  o3289 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_04", S_o3289)
  o3292.Start()
  o3294 = BindEasy(Node_Find("/"), "Camera", S_o3294)
  o3298 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o3298)
  o3299 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o3299)
  o3300 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o3300)
  o3301 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o3301)
  o3302 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o3302)
  o3303 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_3", S_o3303)
  o3304 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o3304)
  o3305 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o3305)
  o3306 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o3306)
  o3307 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o3307)
  o3308 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o3308)
  o3309 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o3309)
  o3313 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o3313)
  o3317 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o3317)
  o3323 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_A", S_o3323)
  o1726 = { {}, o1874 }()
  o1728 = { {}, o1923, o1972, o2021 }()
  o1730 = { {}, o2070, o2119 }()
  o3295 = { {}, o1778, o1824 }()
  o3297 = { {}, o1778 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end