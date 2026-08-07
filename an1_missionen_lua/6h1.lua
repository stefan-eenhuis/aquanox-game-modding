-- dekompiliert aus map\6h1\script\6h1.sco
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
  Game_SetTerrainDepth(node0, 4585)
  Game_SetDecompressionHeight(node0, 475)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.447059, 0.352941, 0.141176)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_6H1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_evilmachine.sam", 3)
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
  Body_SetCS(node17, MAT_Vector3(1091.866054, 3598.333352, 137.711473), MAT_Vector3(0.70587, 0, 0))
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
  Body_SetCS(node28, MAT_Vector3(667.641873, 2151.203195, 67.515463), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node37, MAT_Vector3(947.320287, 3400.582137, 58.03711), MAT_Vector3(15.39824, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "des_trafo_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(538.960938, 1951.007194, 178.785613), MAT_Vector3(12.89155, 0, 0))
  Node_ParseIniFile(node38, "osd/des/des_trafo.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_stabM_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(637.503787, 2073.475523, 45.705178), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_stabM_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(846.249062, 2487.535966, 45.658357), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_stabM_3")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1063.167454, 2903.851797, 46.051564), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_stabM_4")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1375.607553, 3269.754598, 60.977591), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_stabM_5")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(934.623609, 3388.268626, 66.063126), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_stabM_6")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1090.71378, 3568.490928, 176.322984), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_stabK_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(389.942668, 1864.926038, 244.42677), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_stabK_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(526.733944, 1967.285868, 172.136879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_stern2_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1670.783607, 3442.027781, 101.420216), MAT_Vector3(32.233594, 0.414851, -0.684889))
  Node_ParseIniFile(node47, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_stern2_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1584.945899, 3333.611832, 100.263143), MAT_Vector3(32.23359, 0.414851, -0.684889))
  Node_ParseIniFile(node48, "osd/gen/gen_starfound2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_gangM_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1614.500475, 3373.03947, 106.344419), MAT_Vector3(122.469775, 0, 0))
  Node_ParseIniFile(node49, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1660.569825, 3223.161023, 140.029441), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node50, 5)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1494.584888, 3397.213068, 101.978426), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node51, 5)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1252.160129, 3512.379749, 100.283547), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node52, 5)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1065.160729, 3526.622918, 152.543386), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node53, 5)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(517.112068, 3447.297732, 153.101568), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node54, 5)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_turret_6")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(477.395143, 1955.633689, 153.673305), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node55, 5)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_turret_7")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(605.847472, 2149.543484, 56.951517), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node56, 5)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_turret_8")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1011.827915, 2937.91392, 58.406302), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node57, 5)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_turret_9")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(791.110302, 3671.413071, 150.283547), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node58, 5)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node59)
  Node_ParseIniFile(node59, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node60)
  Node_ParseIniFile(node60, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node61)
  Node_ParseIniFile(node61, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node61, "map/4H2/Terrain/grass_01.tga")
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node62)
  Node_ParseIniFile(node62, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node62, "map/4H2/Terrain/stone_01.tga")
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node63)
  Node_ParseIniFile(node63, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node63, "map/4H2/Terrain/coral_01.tga")
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3243.235, 2729.324, 175), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(3382.501, 981.8059, 37.49289), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node65, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1512.299, 2984.907, 23.0652), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1665.887, 2980.107, 18.911674), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_fungus", "fungus_01_5")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(3068.882, 494.0405, 38.74012), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_fungus", "fungus_01_6")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1501.529, 793.1547, 74.59972), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_fungus", "fungus_01_7")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1639.866, 1850.753, 90.42353), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_fungus", "fungus_01_8")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1501.529, 793.1547, 74.59972), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_fungus", "fungus_01_9")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(803.4421, 3253.576, 24.51825), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fungus", "fungus_01_10")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1046.308777, 3323.043449, 29.040734), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_fungus", "fungus_01_11")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(245.3255, 1820.807, 150), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node74, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_fungus", "fungus_01_12")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(3367.307, 1267.944, 36.67274), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_fungus", "fungus_01_13")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(855.825133, 2707.470452, 40), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(3048.178, 3177.669, 152.7779), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(3042.822, 3100.41, 220), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2970.399, 3049.013, 167.1493), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1987.882, 1099.02, 60), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2017.461, 1165.973, 40), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(776.8984, 1136.199, 83.93239), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(759.3131, 1224.102, 60), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fungus", "coral_01_2")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1316.853, 1349.277, 75), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_fungus", "coral_01_4")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1299.302, 1333.201, 76.47065), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_fungus", "coral_01_3")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1323.882, 1336.15, 67), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node86, "osd/fungus/coral_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node87)
  Node_ParseIniFile(node87, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_fx_plant", "fungus_02_4")
  Node_AddSon(node7, node88)
  Node_ParseIniFile(node88, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node88, "map/4H2/Terrain/fungus_02.tga")
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node89, node90)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node89, node91)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_PatrolArea", "CityFightArea")
  Node_AddSon(node91, node92)
  PatrolArea_SetPosition(node92, MAT_Vector3(1077.245744, 3070.920693, 199.3025))
  PatrolArea_SetRadius(node92, 350)
  PatrolArea_SetMinZ(node92, -220)
  PatrolArea_SetMaxZ(node92, 120)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_FX_Stream", "Stream_101")
  Node_AddSon(node91, node93)
  Body_SetCS(node93, MAT_Vector3(3603.495, 1689.648, 250), MAT_Vector3())
  Stream_SetBoxExtension(node93, 400, 200, 300)
  Stream_SetCurrentDirection(node93, MAT_Vector3(177.0825, 5, 0))
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_FX_Stream", "Stream_102")
  Node_AddSon(node91, node94)
  Body_SetCS(node94, MAT_Vector3(3597.899, 2087.58, 250), MAT_Vector3())
  Stream_SetBoxExtension(node94, 500, 400, 300)
  Stream_SetCurrentDirection(node94, MAT_Vector3(-137.2233, 5, 0))
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_FX_Stream", "Stream_104")
  Node_AddSon(node91, node95)
  Body_SetCS(node95, MAT_Vector3(2614.033542, 3718.187, 250), MAT_Vector3())
  Stream_SetBoxExtension(node95, 400, 400, 300)
  Stream_SetCurrentDirection(node95, MAT_Vector3(-85.62815, 5, 0))
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_FX_Stream", "Stream_104c")
  Node_AddSon(node91, node96)
  Body_SetCS(node96, MAT_Vector3(2368.294, 3376.76, 250), MAT_Vector3())
  Stream_SetBoxExtension(node96, 300, 256, 300)
  Stream_SetCurrentDirection(node96, MAT_Vector3(-62.73603, 5, 0))
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_FX_Stream", "Stream_104b")
  Node_AddSon(node91, node97)
  Body_SetCS(node97, MAT_Vector3(2492.571, 3707.885, 250), MAT_Vector3())
  Stream_SetBoxExtension(node97, 300, 200, 300)
  Stream_SetCurrentDirection(node97, MAT_Vector3(-3.797191, 5, 0))
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_FX_Stream", "Stream_104d")
  Node_AddSon(node91, node98)
  Body_SetCS(node98, MAT_Vector3(3045.23874, 2824.480403, 250), MAT_Vector3())
  Stream_SetBoxExtension(node98, 400, 600, 300)
  Stream_SetCurrentDirection(node98, MAT_Vector3(-169.042407, 4.723272, 1.642199))
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_FX_Stream", "Stream_104e")
  Node_AddSon(node91, node99)
  Body_SetCS(node99, MAT_Vector3(2678.320697, 2673.11982, 250), MAT_Vector3())
  Stream_SetBoxExtension(node99, 100, 500, 300)
  Stream_SetCurrentDirection(node99, MAT_Vector3(102.592285, 38.731716, -0.961278))
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_FX_Stream", "Stream_104f")
  Node_AddSon(node91, node100)
  Body_SetCS(node100, MAT_Vector3(3483.936358, 2900.868536, 250), MAT_Vector3())
  Stream_SetBoxExtension(node100, 100, 500, 300)
  Stream_SetCurrentDirection(node100, MAT_Vector3(-95.650773, 38.643234, 10.187863))
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_FX_Stream", "Stream_104g")
  Node_AddSon(node91, node101)
  Body_SetCS(node101, MAT_Vector3(2816.659059, 3099.125855, 250), MAT_Vector3())
  Stream_SetBoxExtension(node101, 100, 100, 300)
  Stream_SetCurrentDirection(node101, MAT_Vector3(164.786566, 19.550743, -34.137351))
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_FX_Stream", "Stream_105")
  Node_AddSon(node91, node102)
  Body_SetCS(node102, MAT_Vector3(2092.496, 3068.479, 250), MAT_Vector3())
  Stream_SetBoxExtension(node102, 300, 300, 300)
  Stream_SetCurrentDirection(node102, MAT_Vector3(-87.85049, 5, 0))
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_PatrolArea", "can_PatrolArea_2_patrol")
  Node_AddSon(node91, node103)
  PatrolArea_SetPosition(node103, MAT_Vector3(3070.751123, 3065.270058, 100))
  PatrolArea_SetRadius(node103, 300)
  PatrolArea_SetMinZ(node103, -80)
  PatrolArea_SetMaxZ(node103, 220)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_PatrolArea", "can_PatrolArea_1_patrol")
  Node_AddSon(node91, node104)
  PatrolArea_SetPosition(node104, MAT_Vector3(3039.5585, 2780.869064, 154.80766))
  PatrolArea_SetRadius(node104, 400)
  PatrolArea_SetMinZ(node104, -10)
  PatrolArea_SetMaxZ(node104, 120)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_PatrolArea", "can_PatrolArea_3_patrol")
  Node_AddSon(node91, node105)
  PatrolArea_SetPosition(node105, MAT_Vector3(3308.294871, 3034.512451, 100))
  PatrolArea_SetRadius(node105, 200)
  PatrolArea_SetMinZ(node105, -80)
  PatrolArea_SetMaxZ(node105, 220)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_PatrolArea", "HoleMap")
  Node_AddSon(node91, node106)
  PatrolArea_SetPosition(node106, MAT_Vector3(1800.481454, 2136.972175, 326.682721))
  PatrolArea_SetRadius(node106, 4500)
  PatrolArea_SetMinZ(node106, -420)
  PatrolArea_SetMaxZ(node106, 120)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Path", "MagmaEaterPath_1")
  Node_AddSon(node91, node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node107, node108)
  Position_SetPosition(node108, MAT_Vector3(641.591815, 2216.335793, 356.387715))
  Position_SetRadius(node108, 50)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node91, node109)
  PatrolArea_SetPosition(node109, MAT_Vector3(1197.792141, 3003.206025, 144.193497))
  PatrolArea_SetRadius(node109, 150)
  PatrolArea_SetMinZ(node109, -100)
  PatrolArea_SetMaxZ(node109, 50)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node91, node110)
  PatrolArea_SetPosition(node110, MAT_Vector3(905.918304, 3165.431653, 88.677635))
  PatrolArea_SetRadius(node110, 150)
  PatrolArea_SetMinZ(node110, -100)
  PatrolArea_SetMaxZ(node110, 50)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_PatrolArea", "FightOneArea")
  Node_AddSon(node91, node111)
  PatrolArea_SetPosition(node111, MAT_Vector3(1558.697359, 2958.095106, 72.604084))
  PatrolArea_SetRadius(node111, 250)
  PatrolArea_SetMinZ(node111, -80)
  PatrolArea_SetMaxZ(node111, 80)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "RespawnPosition_1")
  Node_AddSon(node91, node112)
  Position_SetPosition(node112, MAT_Vector3(1609.930469, 3144.488129, 98.655982))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "RespawnPosition_2")
  Node_AddSon(node91, node113)
  Position_SetPosition(node113, MAT_Vector3(1746.997516, 3018.805973, 97.141392))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "RespawnPosition_3")
  Node_AddSon(node91, node114)
  Position_SetPosition(node114, MAT_Vector3(1713.97347, 2842.943676, 116.907614))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "RespawnPosition_4")
  Node_AddSon(node91, node115)
  Position_SetPosition(node115, MAT_Vector3(1585.790978, 2790.785985, 114.308307))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Path", "SchaxPath_1")
  Node_AddSon(node91, node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node116, node117)
  Position_SetPosition(node117, MAT_Vector3(1773.137115, 3062.479854, 96.189085))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node116, node118)
  Position_SetPosition(node118, MAT_Vector3(1278.384772, 3035.362592, 167.031521))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Path", "SchaxPath_2")
  Node_AddSon(node91, node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node119, node120)
  Position_SetPosition(node120, MAT_Vector3(1751.245684, 3023.895818, 96.18909))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node119, node121)
  Position_SetPosition(node121, MAT_Vector3(1006.729814, 2971.089338, 157.372931))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Path", "SchaxPath_3")
  Node_AddSon(node91, node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node122, node123)
  Position_SetPosition(node123, MAT_Vector3(1794.682268, 3033.197361, 60.320556))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node122, node124)
  Position_SetPosition(node124, MAT_Vector3(985.932251, 2941.489118, 144.402617))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Path", "SchaxPath_4")
  Node_AddSon(node91, node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node125, node126)
  Position_SetPosition(node126, MAT_Vector3(1789.863272, 3000.855521, 96.18909))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node125, node127)
  Position_SetPosition(node127, MAT_Vector3(960.565212, 2918.136008, 153.080235))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Path", "SchaxPath_5")
  Node_AddSon(node91, node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node128, node129)
  Position_SetPosition(node129, MAT_Vector3(1807.431618, 2989.860228, 96.18909))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node128, node130)
  Position_SetPosition(node130, MAT_Vector3(954.150735, 2900.033226, 161.665626))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Path", "SchaxPath_6")
  Node_AddSon(node91, node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node131, node132)
  Position_SetPosition(node132, MAT_Vector3(1778.214574, 2966.01609, 60.32056))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node131, node133)
  Position_SetPosition(node133, MAT_Vector3(943.710404, 2878.682105, 151.914827))
  Position_SetRadius(node133, 5)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Path", "SchaxPath_7")
  Node_AddSon(node91, node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node134, node135)
  Position_SetPosition(node135, MAT_Vector3(1788.069983, 2943.29856, 96.18909))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node134, node136)
  Position_SetPosition(node136, MAT_Vector3(925.235019, 2851.14242, 153.616822))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node91, node137)
  Position_SetPosition(node137, MAT_Vector3(1446.497854, 3148.666993, 100.100537))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node91, node138)
  Position_SetPosition(node138, MAT_Vector3(1401.990849, 2805.884978, 107.081194))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node91, node139)
  Position_SetPosition(node139, MAT_Vector3(842.920412, 3268.913986, 102.049024))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node91, node140)
  Position_SetPosition(node140, MAT_Vector3(1092.00347, 3299.366147, 104.645277))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_PatrolArea", "CamMeshFakeArea")
  Node_AddSon(node91, node141)
  PatrolArea_SetPosition(node141, MAT_Vector3(1279.849172, 3461.837079, 156.95841))
  PatrolArea_SetRadius(node141, 150)
  PatrolArea_SetMinZ(node141, -60)
  PatrolArea_SetMaxZ(node141, 80)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node91, node142)
  Position_SetPosition(node142, MAT_Vector3(723.207685, 3501.690392, 234.402956))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node89, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node89, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node144, node145)
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetCS(node145, MAT_Vector3(2154.150026, 3236.437609, 255.375196), MAT_Vector3(-61.432217, 0, 0))
  Trigger_SetBoxMode(node145, 220, 20, 320)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node144, node146)
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetCS(node146, MAT_Vector3(2875.602076, 3292.396494, 286.488954), MAT_Vector3(36.104198, 0, 0))
  Trigger_SetBoxMode(node146, 220, 20, 320)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Trigger", "Waypoint1To2Trigger")
  Node_AddSon(node144, node147)
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetCS(node147, MAT_Vector3(3083.997664, 2845.48466, 255.381822), MAT_Vector3(41.988999, 0, 0))
  Trigger_SetBoxMode(node147, 520, 20, 520)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Trigger", "AntriebTriggerPresence_1")
  Node_AddSon(node144, node148)
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetPosition(node148, MAT_Vector3(892.226969, 2808.450019, 165.451448))
  Trigger_SetPresenceSphere(node148, 100)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node89, node149)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node149, node150)
  Body_SetCS(node150, MAT_Vector3(2197.493987, 3380.253105, 185.415162), MAT_Vector3(110.024398, 0, 0))
  Node_ParseIniFile(node150, "osd/pla/pla_phobocaster.osd")
  Body_SetFriendOrFoeID(node150, 1)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vessel", "wng_bonham")
  Node_AddSon(node149, node151)
  Body_SetCS(node151, MAT_Vector3(2420.101599, 2118.195115, 279.6809), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node151, "osd/wng/wng_bonham_c6.osd")
  Body_SetFriendOrFoeID(node151, 2)
  Body_SetNameKey(node151, 304)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "wng_degrange")
  Node_AddSon(node149, node152)
  Body_SetCS(node152, MAT_Vector3(2409.650721, 2116.022536, 279.6809), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node152, "osd/wng/wng_degrange_c6.osd")
  Body_SetFriendOrFoeID(node152, 2)
  Body_SetNameKey(node152, 305)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "wng_harper")
  Node_AddSon(node149, node153)
  Body_SetCS(node153, MAT_Vector3(2389.677214, 2116.253253, 279.6809), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/wng/wng_harper_c6.osd")
  Body_SetFriendOrFoeID(node153, 2)
  Body_SetNameKey(node153, 301)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "wng_pico")
  Node_AddSon(node149, node154)
  Body_SetCS(node154, MAT_Vector3(2399.809171, 2116.080215, 279.6809), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/wng/wng_pico_c6.osd")
  Body_SetFriendOrFoeID(node154, 2)
  Body_SetNameKey(node154, 306)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "wng_chaka")
  Node_AddSon(node149, node155)
  Body_SetCS(node155, MAT_Vector3(3014.868183, 1593.415436, 413.504572), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/wng/wng_chaka_c6.osd")
  Body_SetFriendOrFoeID(node155, 2)
  Body_SetNameKey(node155, 307)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "wng_bonham_c6_1")
  Node_AddSon(node149, node156)
  Body_SetCS(node156, MAT_Vector3(890.43519, 2857.33879, 24.084929), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/wng/wng_bonham_c6.osd")
  Body_SetFriendOrFoeID(node156, 2)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "wng_chaka_c6_1")
  Node_AddSon(node149, node157)
  Body_SetCS(node157, MAT_Vector3(1086.977, 2792.718, 151.7481), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node157, "osd/wng/wng_chaka_c6.osd")
  Body_SetFriendOrFoeID(node157, 2)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vessel", "wng_degrange_c6_1")
  Node_AddSon(node149, node158)
  Body_SetCS(node158, MAT_Vector3(1009.793, 3260.187, 151.7481), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/wng/wng_degrange_c6.osd")
  Body_SetFriendOrFoeID(node158, 2)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_vessel", "wng_harper_c6_1")
  Node_AddSon(node149, node159)
  Body_SetCS(node159, MAT_Vector3(1189.764, 2879.405, 151.7481), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node159, "osd/wng/wng_harper_c6.osd")
  Body_SetFriendOrFoeID(node159, 2)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_vessel", "wng_pico_c6_1")
  Node_AddSon(node149, node160)
  Body_SetCS(node160, MAT_Vector3(792.5054, 2975.365, 151.7481), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node160, "osd/wng/wng_pico_c6.osd")
  Body_SetFriendOrFoeID(node160, 2)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Directory", "Mine_Directory")
  Node_AddSon(node149, node161)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_trash", "des_mine02_cra_1")
  Node_AddSon(node161, node162)
  Body_SetCS(node162, MAT_Vector3(3158.218, 2317.795, 141.8568), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node162, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_trash", "des_mine02_cra_2")
  Node_AddSon(node161, node163)
  Body_SetCS(node163, MAT_Vector3(3235.242, 2227.971, 200.5337), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node163, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_trash", "des_mine02_cra_3")
  Node_AddSon(node161, node164)
  Body_SetCS(node164, MAT_Vector3(3287.721, 2097.238, 150.6157), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node164, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_trash", "des_mine02_cra_4")
  Node_AddSon(node161, node165)
  Body_SetCS(node165, MAT_Vector3(3200.467, 2270.041, 133.87), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node165, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_trash", "des_mine02_cra_5")
  Node_AddSon(node161, node166)
  Body_SetCS(node166, MAT_Vector3(3066.5, 2319.567, 236.0197), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node166, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_trash", "des_mine02_cra_6")
  Node_AddSon(node161, node167)
  Body_SetCS(node167, MAT_Vector3(3079.241, 2457.504, 134.157), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node167, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_trash", "des_mine02_cra_7")
  Node_AddSon(node161, node168)
  Body_SetCS(node168, MAT_Vector3(3172.056692, 2372.810047, 303.0184), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node168, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_trash", "des_mine02_cra_8")
  Node_AddSon(node161, node169)
  Body_SetCS(node169, MAT_Vector3(2892.869, 3255.809, 187.1034), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node169, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_trash", "des_mine02_cra_9")
  Node_AddSon(node161, node170)
  Body_SetCS(node170, MAT_Vector3(2824.477, 3205.706, 286.9003), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node170, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node170, 0)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_trash", "des_mine02_cra_10")
  Node_AddSon(node161, node171)
  Body_SetCS(node171, MAT_Vector3(2865.272, 3287.703, 265.87), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node171, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_trash", "des_mine02_cra_11")
  Node_AddSon(node161, node172)
  Body_SetCS(node172, MAT_Vector3(2871.538, 3224.19, 210.2717), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node172, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_trash", "des_mine02_cra_12")
  Node_AddSon(node161, node173)
  Body_SetCS(node173, MAT_Vector3(2811.133, 3257.057, 231.4391), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node173, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_trash", "des_mine02_cra_13")
  Node_AddSon(node161, node174)
  Body_SetCS(node174, MAT_Vector3(2820.676, 3264.061, 314.4936), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node174, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_trash", "des_mine02_cra_14")
  Node_AddSon(node161, node175)
  Body_SetCS(node175, MAT_Vector3(2871.538, 3224.19, 305.5757), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node175, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_trash", "des_mine02_cra_15")
  Node_AddSon(node161, node176)
  Body_SetCS(node176, MAT_Vector3(2803.67, 3305.63, 249.1303), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node176, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_trash", "des_mine02_cra_16")
  Node_AddSon(node161, node177)
  Body_SetCS(node177, MAT_Vector3(2868.635, 3324.262, 314.4936), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node177, "osd/des/des_mine02_cra.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Directory", "Schax_Directory_1")
  Node_AddSon(node149, node178)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "old_schax_raider_1_1")
  Node_AddSon(node178, node179)
  Body_SetCS(node179, MAT_Vector3(2480.419461, 3492.460271, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node179, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node179, 6)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "old_schax_raider_2_1")
  Node_AddSon(node178, node180)
  Body_SetCS(node180, MAT_Vector3(2601.893691, 3436.182824, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node180, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node180, 6)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "old_schax_raider_3_1")
  Node_AddSon(node178, node181)
  Body_SetCS(node181, MAT_Vector3(2323.963464, 3618.731967, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node181, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node181, 6)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "old_schax_raider_4_1")
  Node_AddSon(node178, node182)
  Body_SetCS(node182, MAT_Vector3(2475.951503, 3333.34702, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node182, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node182, 6)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "old_schax_raider_5_1")
  Node_AddSon(node178, node183)
  Body_SetCS(node183, MAT_Vector3(2511.184845, 3370.047611, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node183, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node183, 6)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "old_schax_raider_6_1")
  Node_AddSon(node178, node184)
  Body_SetCS(node184, MAT_Vector3(2390.911756, 3480.095456, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node184, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node184, 6)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "old_schax_raider_7_1")
  Node_AddSon(node178, node185)
  Body_SetCS(node185, MAT_Vector3(2394.054546, 3402.653719, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node185, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node185, 6)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "old_schax_raider_8_1")
  Node_AddSon(node178, node186)
  Body_SetCS(node186, MAT_Vector3(2311.211544, 3266.01052, 329.910466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node186, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node186, 6)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "old_schax_raider_9_1")
  Node_AddSon(node178, node187)
  Body_SetCS(node187, MAT_Vector3(2558.286886, 3547.361973, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node187, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node187, 6)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "old_schax_raider_10_1")
  Node_AddSon(node178, node188)
  Body_SetCS(node188, MAT_Vector3(2553.720155, 3452.525429, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node188, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node188, 6)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "old_schax_raider_11_1")
  Node_AddSon(node178, node189)
  Body_SetCS(node189, MAT_Vector3(2402.681023, 3641.611494, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node189, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node189, 6)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "old_schax_raider_12_1")
  Node_AddSon(node178, node190)
  Body_SetCS(node190, MAT_Vector3(2426.057353, 3352.626271, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node190, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node190, 6)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "old_schax_raider_13_1")
  Node_AddSon(node178, node191)
  Body_SetCS(node191, MAT_Vector3(2581.191064, 3360.846735, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node191, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node191, 6)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "old_schax_raider_14_1")
  Node_AddSon(node178, node192)
  Body_SetCS(node192, MAT_Vector3(2424.312443, 3555.75024, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node192, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node192, 6)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "old_schax_raider_15_1")
  Node_AddSon(node178, node193)
  Body_SetCS(node193, MAT_Vector3(2349.638994, 3393.475799, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node193, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node193, 6)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "old_schax_raider_16_1")
  Node_AddSon(node178, node194)
  Body_SetCS(node194, MAT_Vector3(2361.81362, 3291.928442, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node194, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node194, 6)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "old_schax_raider_17_1")
  Node_AddSon(node178, node195)
  Body_SetCS(node195, MAT_Vector3(2513.235873, 3524.163707, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node195, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node195, 6)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "old_schax_raider_18_1")
  Node_AddSon(node178, node196)
  Body_SetCS(node196, MAT_Vector3(2635.056248, 3443.458715, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node196, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node196, 6)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "old_schax_raider_19_1")
  Node_AddSon(node178, node197)
  Body_SetCS(node197, MAT_Vector3(2340.044937, 3623.67674, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node197, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node197, 6)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "old_schax_raider_20_1")
  Node_AddSon(node178, node198)
  Body_SetCS(node198, MAT_Vector3(2504.534645, 3253.812286, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node198, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node198, 6)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "old_schax_raider_21_1")
  Node_AddSon(node178, node199)
  Body_SetCS(node199, MAT_Vector3(2466.502427, 3436.843812, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node199, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node199, 6)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "old_schax_raider_22_1")
  Node_AddSon(node178, node200)
  Body_SetCS(node200, MAT_Vector3(2355.106847, 3476.601958, 340.861532), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node200, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node200, 6)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "old_schax_raider_23_1")
  Node_AddSon(node178, node201)
  Body_SetCS(node201, MAT_Vector3(2363.313684, 3417.268784, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node201, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node201, 6)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "old_schax_raider_24_1")
  Node_AddSon(node178, node202)
  Body_SetCS(node202, MAT_Vector3(2356.695809, 3250.438131, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node202, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node202, 6)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "old_schax_raider_25_1")
  Node_AddSon(node178, node203)
  Body_SetCS(node203, MAT_Vector3(2597.616871, 3563.582795, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node203, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node203, 6)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "old_schax_raider_26_1")
  Node_AddSon(node178, node204)
  Body_SetCS(node204, MAT_Vector3(2575.976403, 3486.784192, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node204, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node204, 6)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "old_schax_raider_27_1")
  Node_AddSon(node178, node205)
  Body_SetCS(node205, MAT_Vector3(2437.822005, 3635.865024, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node205, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node205, 6)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "old_schax_raider_28_1")
  Node_AddSon(node178, node206)
  Body_SetCS(node206, MAT_Vector3(2447.698156, 3294.400752, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node206, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node206, 6)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "old_schax_raider_29_1")
  Node_AddSon(node178, node207)
  Body_SetCS(node207, MAT_Vector3(2612.125148, 3325.340091, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node207, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node207, 6)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_vessel", "old_schax_raider_30_1")
  Node_AddSon(node178, node208)
  Body_SetCS(node208, MAT_Vector3(2377.042266, 3563.452436, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node208, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node208, 6)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_vessel", "old_schax_raider_31_1")
  Node_AddSon(node178, node209)
  Body_SetCS(node209, MAT_Vector3(2372.031724, 3330.146626, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node209, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node209, 6)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_vessel", "old_schax_raider_32_1")
  Node_AddSon(node178, node210)
  Body_SetCS(node210, MAT_Vector3(2382.582722, 3290.875651, 329.9105), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node210, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node210, 6)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_vessel", "cra_magmaeater_6h2_1")
  Node_AddSon(node149, node211)
  Body_SetCS(node211, MAT_Vector3(1047.084856, 3064.104443, 155.697575), MAT_Vector3(-31.307614, 0, 0))
  Node_ParseIniFile(node211, "osd/cra/cra_magmaeater_6h2.osd")
  Body_SetFriendOrFoeID(node211, 8)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_vessel", "cra_bomber_respawn_1")
  Node_AddSon(node149, node212)
  Body_SetCS(node212, MAT_Vector3(1215.970617, 3007.920006, 231.494462), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node212, "osd/cra/cra_bomber.osd")
  Body_SetFriendOrFoeID(node212, 3)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_vessel", "cra_scout1_respawn_1")
  Node_AddSon(node149, node213)
  Body_SetCS(node213, MAT_Vector3(1246.871325, 2941.561547, 327.3879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node213, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node213, 4)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_vessel", "cra_scout2v2_respawn_1")
  Node_AddSon(node149, node214)
  Body_SetCS(node214, MAT_Vector3(1271.65912, 3066.928419, 327.3879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node214, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node214, 4)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_vessel", "cra_scout1_first_2")
  Node_AddSon(node149, node215)
  Body_SetCS(node215, MAT_Vector3(861.936492, 3090.239701, 327.387901), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node215, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node215, 4)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_vessel", "cra_scout2v1_first_4")
  Node_AddSon(node149, node216)
  Body_SetCS(node216, MAT_Vector3(911.561453, 3068.018467, 327.3879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node216, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node216, 3)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_vessel", "cra_scout1_respawn_2")
  Node_AddSon(node149, node217)
  Body_SetCS(node217, MAT_Vector3(1167.781496, 3014.771907, 327.3879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node217, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node217, 4)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_vessel", "cra_scout1_first_4")
  Node_AddSon(node149, node218)
  Body_SetCS(node218, MAT_Vector3(1234.834102, 3105.277296, 327.3879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node218, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node218, 4)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_vessel", "cra_scout1_first_5")
  Node_AddSon(node149, node219)
  Body_SetCS(node219, MAT_Vector3(1167.395787, 2956.539268, 327.3879), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node219, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node219, 4)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node149, node220)
  Body_SetPosition(node220, MAT_Vector3(3016.466389, 2662.948467, 100.552629))
  WayPoint_SetRadius(node220, 50)
  Node_ParseIniFile(node220, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node149, node221)
  Body_SetPosition(node221, MAT_Vector3(2933.982782, 3201.852807, 195.226854))
  WayPoint_SetRadius(node221, 50)
  Node_ParseIniFile(node221, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_waypoint", "nav_waypoint_03_1")
  Node_AddSon(node149, node222)
  Body_SetPosition(node222, MAT_Vector3(2154.115851, 3236.748386, 122.9715))
  WayPoint_SetRadius(node222, 50)
  Node_ParseIniFile(node222, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_vehicle", "atl_tank2_1")
  Node_AddSon(node149, node223)
  Body_SetCS(node223, MAT_Vector3(1192.534341, 2919.785252, 156.646545), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node223, "osd/atl/atl_tank2.osd")
  Body_SetFriendOrFoeID(node223, 5)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_vehicle", "atl_tank2_2")
  Node_AddSon(node149, node224)
  Body_SetCS(node224, MAT_Vector3(968.847722, 3137.730369, 156.646545), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node224, "osd/atl/atl_tank2.osd")
  Body_SetFriendOrFoeID(node224, 5)
  Body_SetNameKey(node224, -1)
  Body_SetCargoKey(node224, -1, 0)
  Body_SetCargoKey(node224, -1, 1)
  Body_SetCargoKey(node224, -1, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_vehicle", "atl_tank2_3")
  Node_AddSon(node149, node225)
  Body_SetCS(node225, MAT_Vector3(1309.253188, 3025.69471, 156.646545), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node225, "osd/atl/atl_tank2.osd")
  Body_SetFriendOrFoeID(node225, 5)
  Body_SetNameKey(node225, -1)
  Body_SetCargoKey(node225, -1, 0)
  Body_SetCargoKey(node225, -1, 1)
  Body_SetCargoKey(node225, -1, 2)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node149, node226)
  Body_SetCS(node226, MAT_Vector3(954.637601, 3098.860409, 134.270374), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node226, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node226, 5)
  Body_SetNameKey(node226, -1)
  Body_SetCargoKey(node226, -1, 0)
  Body_SetCargoKey(node226, -1, 1)
  Body_SetCargoKey(node226, -1, 2)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node149, node227)
  Body_SetCS(node227, MAT_Vector3(846.598749, 3237.748512, 134.270374), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node227, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node227, 5)
  Body_SetNameKey(node227, -1)
  Body_SetCargoKey(node227, -1, 0)
  Body_SetCargoKey(node227, -1, 1)
  Body_SetCargoKey(node227, -1, 2)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node149, node228)
  Body_SetCS(node228, MAT_Vector3(848.665119, 2926.648943, 134.270374), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node228, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node228, 5)
  Body_SetNameKey(node228, -1)
  Body_SetCargoKey(node228, -1, 0)
  Body_SetCargoKey(node228, -1, 1)
  Body_SetCargoKey(node228, -1, 2)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Directory", "CraAfterSchaxComeIn_Director_1")
  Node_AddSon(node149, node229)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_vessel", "cra_scout2v1_1")
  Node_AddSon(node229, node230)
  Body_SetCS(node230, MAT_Vector3(1609.903781, 3057.357681, 117.003223), MAT_Vector3(-144.127184, 0, 0))
  Node_ParseIniFile(node230, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node230, 3)
  Body_SetNameKey(node230, -1)
  Body_SetCargoKey(node230, -1, 0)
  Body_SetCargoKey(node230, -1, 1)
  Body_SetCargoKey(node230, -1, 2)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_vessel", "cra_scout2v1_2")
  Node_AddSon(node229, node231)
  Body_SetCS(node231, MAT_Vector3(1553.357314, 2966.801314, 122.014164), MAT_Vector3(-99.796049, 0, 0))
  Node_ParseIniFile(node231, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node231, 3)
  Body_SetNameKey(node231, -1)
  Body_SetCargoKey(node231, -1, 0)
  Body_SetCargoKey(node231, -1, 1)
  Body_SetCargoKey(node231, -1, 2)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_vessel", "cra_scout2v2_1")
  Node_AddSon(node229, node232)
  Body_SetCS(node232, MAT_Vector3(1625.050743, 2926.835658, 122.014164), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node232, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node232, 3)
  Body_SetNameKey(node232, -1)
  Body_SetCargoKey(node232, -1, 0)
  Body_SetCargoKey(node232, -1, 1)
  Body_SetCargoKey(node232, -1, 2)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_vessel", "cra_scout1_1")
  Node_AddSon(node229, node233)
  Body_SetCS(node233, MAT_Vector3(1601.518083, 2959.898217, 122.014164), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node233, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node233, 3)
  Body_SetNameKey(node233, -1)
  Body_SetCargoKey(node233, -1, 0)
  Body_SetCargoKey(node233, -1, 1)
  Body_SetCargoKey(node233, -1, 2)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Directory", "Schax_Directory_2")
  Node_AddSon(node149, node234)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_vessel", "old_schax_raider_1_2")
  Node_AddSon(node234, node235)
  Body_SetCS(node235, MAT_Vector3(1786.91151, 3064.345394, 95.262045), MAT_Vector3(95.330877, 0, 0))
  Node_ParseIniFile(node235, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node235, 7)
  Body_SetNameKey(node235, -1)
  Body_SetCargoKey(node235, -1, 0)
  Body_SetCargoKey(node235, -1, 1)
  Body_SetCargoKey(node235, -1, 2)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_vessel", "old_schax_raider_2_2")
  Node_AddSon(node234, node236)
  Body_SetCS(node236, MAT_Vector3(1767.163904, 3024.576384, 96.008264), MAT_Vector3(101.733441, 0, 0))
  Node_ParseIniFile(node236, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node236, 7)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_vessel", "old_schax_raider_3_2")
  Node_AddSon(node234, node237)
  Body_SetCS(node237, MAT_Vector3(1813.999383, 3034.436184, 59.903669), MAT_Vector3(104.228854, 0, 0))
  Node_ParseIniFile(node237, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node237, 7)
  Body_SetNameKey(node237, -1)
  Body_SetCargoKey(node237, -1, 0)
  Body_SetCargoKey(node237, -1, 1)
  Body_SetCargoKey(node237, -1, 2)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_vessel", "old_schax_raider_4_2")
  Node_AddSon(node234, node238)
  Body_SetCS(node238, MAT_Vector3(1800.833124, 3003.256502, 97.984311), MAT_Vector3(97.056199, 0, 0))
  Node_ParseIniFile(node238, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node238, 7)
  Body_SetNameKey(node238, -1)
  Body_SetCargoKey(node238, -1, 0)
  Body_SetCargoKey(node238, -1, 1)
  Body_SetCargoKey(node238, -1, 2)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_vessel", "old_schax_raider_5_2")
  Node_AddSon(node234, node239)
  Body_SetCS(node239, MAT_Vector3(1822.434733, 2992.116865, 96.994818), MAT_Vector3(98.745468, 0, 0))
  Node_ParseIniFile(node239, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node239, 7)
  Body_SetNameKey(node239, -1)
  Body_SetCargoKey(node239, -1, 0)
  Body_SetCargoKey(node239, -1, 1)
  Body_SetCargoKey(node239, -1, 2)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_vessel", "old_schax_raider_6_2")
  Node_AddSon(node234, node240)
  Body_SetCS(node240, MAT_Vector3(1792.060062, 2969.804273, 67.897769), MAT_Vector3(111.253345, 0, 0))
  Node_ParseIniFile(node240, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node240, 7)
  Body_SetNameKey(node240, -1)
  Body_SetCargoKey(node240, -1, 0)
  Body_SetCargoKey(node240, -1, 1)
  Body_SetCargoKey(node240, -1, 2)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_vessel", "old_schax_raider_7_2")
  Node_AddSon(node234, node241)
  Body_SetCS(node241, MAT_Vector3(1817.315549, 2945.848021, 94.513184), MAT_Vector3(104.335731, 0, 0))
  Node_ParseIniFile(node241, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node241, 7)
  Body_SetNameKey(node241, -1)
  Body_SetCargoKey(node241, -1, 0)
  Body_SetCargoKey(node241, -1, 1)
  Body_SetCargoKey(node241, -1, 2)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_vessel", "old_schax_raider_8_2")
  Node_AddSon(node234, node242)
  Body_SetCS(node242, MAT_Vector3(1827.518101, 3100.405235, 95.26205), MAT_Vector3(95.33088, 0, 0))
  Node_ParseIniFile(node242, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node242, 7)
  Body_SetNameKey(node242, -1)
  Body_SetCargoKey(node242, -1, 0)
  Body_SetCargoKey(node242, -1, 1)
  Body_SetCargoKey(node242, -1, 2)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_vessel", "old_schax_raider_9_2")
  Node_AddSon(node234, node243)
  Body_SetCS(node243, MAT_Vector3(1801.150232, 3019.335182, 96.00826), MAT_Vector3(101.7334, 0, 0))
  Node_ParseIniFile(node243, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node243, 7)
  Body_SetNameKey(node243, -1)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_vessel", "old_schax_raider_10_2")
  Node_AddSon(node234, node244)
  Body_SetCS(node244, MAT_Vector3(1839.502233, 3032.822302, 59.90367), MAT_Vector3(104.2289, 0, 0))
  Node_ParseIniFile(node244, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node244, 7)
  Body_SetNameKey(node244, -1)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_vessel", "old_schax_raider_11_2")
  Node_AddSon(node234, node245)
  Body_SetCS(node245, MAT_Vector3(1868.670409, 2993.917042, 97.98431), MAT_Vector3(97.0562, 0, 0))
  Node_ParseIniFile(node245, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node245, 7)
  Body_SetNameKey(node245, -1)
  Body_SetCargoKey(node245, -1, 0)
  Body_SetCargoKey(node245, -1, 1)
  Body_SetCargoKey(node245, -1, 2)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_vessel", "old_schax_raider_12_2")
  Node_AddSon(node234, node246)
  Body_SetCS(node246, MAT_Vector3(1849.423847, 2977.94483, 96.99482), MAT_Vector3(98.74547, 0, 0))
  Node_ParseIniFile(node246, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node246, 7)
  Body_SetNameKey(node246, -1)
  Body_SetCargoKey(node246, -1, 0)
  Body_SetCargoKey(node246, -1, 1)
  Body_SetCargoKey(node246, -1, 2)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_vessel", "old_schax_raider_13_2")
  Node_AddSon(node234, node247)
  Body_SetCS(node247, MAT_Vector3(1834.25912, 2963.21942, 67.89777), MAT_Vector3(111.2533, 0, 0))
  Node_ParseIniFile(node247, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node247, 7)
  Body_SetNameKey(node247, -1)
  Body_SetCargoKey(node247, -1, 0)
  Body_SetCargoKey(node247, -1, 1)
  Body_SetCargoKey(node247, -1, 2)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_vessel", "old_schax_raider_14_2")
  Node_AddSon(node234, node248)
  Body_SetCS(node248, MAT_Vector3(1846.763503, 2940.070269, 94.51318), MAT_Vector3(104.3357, 0, 0))
  Node_ParseIniFile(node248, "osd/old/old_schax_raider.osd")
  Body_SetFriendOrFoeID(node248, 7)
  Body_SetNameKey(node248, -1)
  Body_SetCargoKey(node248, -1, 0)
  Body_SetCargoKey(node248, -1, 1)
  Body_SetCargoKey(node248, -1, 2)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Directory", "Schax_Directory_3")
  Node_AddSon(node149, node249)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_vessel", "old_schax_bang_1_3_pla")
  Node_AddSon(node249, node250)
  Body_SetCS(node250, MAT_Vector3(1513.070403, 3293.369293, 249.3025), MAT_Vector3(-155.157435, 0, 0))
  Node_ParseIniFile(node250, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node250, 10)
  Body_SetNameKey(node250, -1)
  Body_SetCargoKey(node250, -1, 0)
  Body_SetCargoKey(node250, -1, 1)
  Body_SetCargoKey(node250, -1, 2)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_vessel", "old_schax_bang_2_3_pla")
  Node_AddSon(node249, node251)
  Body_SetCS(node251, MAT_Vector3(1833.768566, 3206.516403, 249.3025), MAT_Vector3(132.012749, 0, 0))
  Node_ParseIniFile(node251, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node251, 10)
  Body_SetNameKey(node251, -1)
  Body_SetCargoKey(node251, -1, 0)
  Body_SetCargoKey(node251, -1, 1)
  Body_SetCargoKey(node251, -1, 2)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_vessel", "old_schax_bang_3_3_pla")
  Node_AddSon(node249, node252)
  Body_SetCS(node252, MAT_Vector3(1884.245878, 2726.216837, 249.3025), MAT_Vector3(67.08103, 0, 0))
  Node_ParseIniFile(node252, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node252, 10)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_vessel", "old_schax_bang_4_3_pla")
  Node_AddSon(node249, node253)
  Body_SetCS(node253, MAT_Vector3(1396.224828, 2713.220847, 249.3025), MAT_Vector3(-44.858576, 0, 0))
  Node_ParseIniFile(node253, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node253, 10)
  Body_SetNameKey(node253, -1)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_vessel", "old_schax_bang_5_3")
  Node_AddSon(node249, node254)
  Body_SetCS(node254, MAT_Vector3(942.067294, 3125.141293, 133.118355), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node254, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node254, 6)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, -1, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_vessel", "old_schax_bang_6_3")
  Node_AddSon(node249, node255)
  Body_SetCS(node255, MAT_Vector3(1277.334741, 3132.057455, 100.61817), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node255, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node255, 6)
  Body_SetNameKey(node255, -1)
  Body_SetCargoKey(node255, -1, 0)
  Body_SetCargoKey(node255, -1, 1)
  Body_SetCargoKey(node255, -1, 2)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_vessel", "old_schax_bang_7_3")
  Node_AddSon(node249, node256)
  Body_SetCS(node256, MAT_Vector3(1166.648256, 2950.08525, 117.138651), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node256, "osd/old/old_schax_bang.osd")
  Body_SetFriendOrFoeID(node256, 6)
  Body_SetNameKey(node256, -1)
  Body_SetCargoKey(node256, -1, 0)
  Body_SetCargoKey(node256, -1, 1)
  Body_SetCargoKey(node256, -1, 2)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_vessel", "old_schax_booster_1_3")
  Node_AddSon(node249, node257)
  Body_SetCS(node257, MAT_Vector3(1267.710142, 3272.118247, 133.659132), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node257, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node257, 6)
  Body_SetNameKey(node257, -1)
  Body_SetCargoKey(node257, -1, 0)
  Body_SetCargoKey(node257, -1, 1)
  Body_SetCargoKey(node257, -1, 2)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_vessel", "old_schax_booster_2_3")
  Node_AddSon(node249, node258)
  Body_SetCS(node258, MAT_Vector3(1108.899098, 3063.644521, 93.634799), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node258, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node258, 7)
  Body_SetNameKey(node258, -1)
  Body_SetCargoKey(node258, -1, 0)
  Body_SetCargoKey(node258, -1, 1)
  Body_SetCargoKey(node258, -1, 2)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_vessel", "old_schax_booster_3_3")
  Node_AddSon(node249, node259)
  Body_SetCS(node259, MAT_Vector3(1684.789651, 2995.204985, 89.928447), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node259, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node259, 7)
  Body_SetNameKey(node259, -1)
  Body_SetCargoKey(node259, -1, 0)
  Body_SetCargoKey(node259, -1, 1)
  Body_SetCargoKey(node259, -1, 2)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_vessel", "old_schax_booster_4_3")
  Node_AddSon(node249, node260)
  Body_SetCS(node260, MAT_Vector3(1493.895255, 3004.829887, 87.984861), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node260, "osd/old/old_schax_booster.osd")
  Body_SetFriendOrFoeID(node260, 7)
  Body_SetNameKey(node260, -1)
  Body_SetCargoKey(node260, -1, 0)
  Body_SetCargoKey(node260, -1, 1)
  Body_SetCargoKey(node260, -1, 2)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Directory", "CraCanyon_Directory_1")
  Node_AddSon(node149, node261)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_vessel", "can_cra_fregatte_1")
  Node_AddSon(node261, node262)
  Body_SetCS(node262, MAT_Vector3(3106.619816, 2712.932551, 241.138521), MAT_Vector3(161.413949, 0, 0))
  Node_ParseIniFile(node262, "osd/cra/cra_fregatte.osd")
  Body_SetFriendOrFoeID(node262, 3)
  Body_SetNameKey(node262, -1)
  Body_SetCargoKey(node262, -1, 0)
  Body_SetCargoKey(node262, -1, 1)
  Body_SetCargoKey(node262, -1, 2)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_vessel", "can_cra_bomber_6h1_1")
  Node_AddSon(node261, node263)
  Body_SetCS(node263, MAT_Vector3(3193.661562, 3083.924651, 415.820907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node263, "osd/cra/cra_bomber_6h1.osd")
  Body_SetFriendOrFoeID(node263, 3)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, -1, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_1")
  Node_AddSon(node261, node264)
  Body_SetCS(node264, MAT_Vector3(3219.327584, 3144.882175, 415.8209), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node264, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node264, 3)
  Body_SetNameKey(node264, -1)
  Body_SetCargoKey(node264, -1, 0)
  Body_SetCargoKey(node264, -1, 1)
  Body_SetCargoKey(node264, -1, 2)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_2")
  Node_AddSon(node261, node265)
  Body_SetCS(node265, MAT_Vector3(3262.639657, 3087.132745, 415.8209), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node265, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node265, 3)
  Body_SetNameKey(node265, -1)
  Body_SetCargoKey(node265, -1, 0)
  Body_SetCargoKey(node265, -1, 1)
  Body_SetCargoKey(node265, -1, 2)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_3")
  Node_AddSon(node261, node266)
  Body_SetCS(node266, MAT_Vector3(3171.203058, 3165.736136, 415.8209), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node266, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node266, 3)
  Body_SetNameKey(node266, -1)
  Body_SetCargoKey(node266, -1, 0)
  Body_SetCargoKey(node266, -1, 1)
  Body_SetCargoKey(node266, -1, 2)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_4")
  Node_AddSon(node261, node267)
  Body_SetCS(node267, MAT_Vector3(3278.681166, 3132.048968, 415.8209), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node267, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node267, 3)
  Body_SetNameKey(node267, -1)
  Body_SetCargoKey(node267, -1, 0)
  Body_SetCargoKey(node267, -1, 1)
  Body_SetCargoKey(node267, -1, 2)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_vessel", "can_cra_bomber_6h1_2")
  Node_AddSon(node261, node268)
  Body_SetCS(node268, MAT_Vector3(2872.831391, 2909.072208, 415.820907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node268, "osd/cra/cra_bomber_6h1.osd")
  Body_SetFriendOrFoeID(node268, 3)
  Body_SetNameKey(node268, -1)
  Body_SetCargoKey(node268, -1, 0)
  Body_SetCargoKey(node268, -1, 1)
  Body_SetCargoKey(node268, -1, 2)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_5")
  Node_AddSon(node261, node269)
  Body_SetCS(node269, MAT_Vector3(2805.457056, 2862.551834, 415.820907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node269, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node269, 3)
  Body_SetNameKey(node269, -1)
  Body_SetCargoKey(node269, -1, 0)
  Body_SetCargoKey(node269, -1, 1)
  Body_SetCargoKey(node269, -1, 2)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_6")
  Node_AddSon(node261, node270)
  Body_SetCS(node270, MAT_Vector3(2843.956676, 2854.531079, 415.820907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node270, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node270, 3)
  Body_SetNameKey(node270, -1)
  Body_SetCargoKey(node270, -1, 0)
  Body_SetCargoKey(node270, -1, 1)
  Body_SetCargoKey(node270, -1, 2)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_7")
  Node_AddSon(node261, node271)
  Body_SetCS(node271, MAT_Vector3(2895.289503, 2852.926929, 415.820907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node271, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node271, 3)
  Body_SetNameKey(node271, -1)
  Body_SetCargoKey(node271, -1, 0)
  Body_SetCargoKey(node271, -1, 1)
  Body_SetCargoKey(node271, -1, 2)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_vessel", "can_cra_scout2v2_6h1_8")
  Node_AddSon(node261, node272)
  Body_SetCS(node272, MAT_Vector3(2948.226481, 2856.13523, 415.820907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node272, "osd/cra/cra_scout2v2_6h1.osd")
  Body_SetFriendOrFoeID(node272, 3)
  Body_SetNameKey(node272, -1)
  Body_SetCargoKey(node272, -1, 0)
  Body_SetCargoKey(node272, -1, 1)
  Body_SetCargoKey(node272, -1, 2)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node149, node273)
  Body_SetPosition(node273, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node273, 5)
  Node_ParseIniFile(node273, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node149, node274)
  Body_SetPosition(node274, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node274, 5)
  Node_ParseIniFile(node274, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_3")
  Node_AddSon(node149, node275)
  Body_SetPosition(node275, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node275, 5)
  Node_ParseIniFile(node275, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_4")
  Node_AddSon(node149, node276)
  Body_SetPosition(node276, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node276, 5)
  Node_ParseIniFile(node276, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_5")
  Node_AddSon(node149, node277)
  Body_SetPosition(node277, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node277, 5)
  Node_ParseIniFile(node277, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_waypoint", "nav_waypoint_04_1")
  Node_AddSon(node149, node278)
  Body_SetPosition(node278, MAT_Vector3(1110.452312, 3074.215477, -6.006318))
  WayPoint_SetRadius(node278, 550)
  Node_ParseIniFile(node278, "osd/nav/nav_waypoint_04.osd")
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_vessel", "end_cra_scout1_1")
  Node_AddSon(node149, node279)
  Body_SetCS(node279, MAT_Vector3(1560.779629, 3189.58005, 265.451448), MAT_Vector3(89.083412, 0, 0))
  Node_ParseIniFile(node279, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node279, 9)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_vessel", "end_cra_scout1_2")
  Node_AddSon(node149, node280)
  Body_SetCS(node280, MAT_Vector3(748.721693, 3305.142141, 265.451448), MAT_Vector3(-112.257536, 0, 0))
  Node_ParseIniFile(node280, "osd/cra/cra_scout1.osd")
  Body_SetFriendOrFoeID(node280, 9)
  Body_SetNameKey(node280, -1)
  Body_SetCargoKey(node280, -1, 0)
  Body_SetCargoKey(node280, -1, 1)
  Body_SetCargoKey(node280, -1, 2)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_vessel", "end_cra_scout2v1_1")
  Node_AddSon(node149, node281)
  Body_SetCS(node281, MAT_Vector3(1489.846772, 2868.532817, 265.451448), MAT_Vector3(78.365476, 0, 0))
  Node_ParseIniFile(node281, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node281, 9)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_vessel", "end_cra_scout2v1_2")
  Node_AddSon(node149, node282)
  Body_SetCS(node282, MAT_Vector3(1593.985487, 2711.944677, 265.451448), MAT_Vector3(71.256906, 0, 0))
  Node_ParseIniFile(node282, "osd/cra/cra_scout2v1.osd")
  Body_SetFriendOrFoeID(node282, 9)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_vessel", "end_cra_scout2v2_1")
  Node_AddSon(node149, node283)
  Body_SetCS(node283, MAT_Vector3(1038.325631, 3253.922073, 265.451448), MAT_Vector3(-165.307808, 0, 0))
  Node_ParseIniFile(node283, "osd/cra/cra_scout2v2.osd")
  Body_SetFriendOrFoeID(node283, 9)
  Body_SetNameKey(node283, -1)
  Body_SetCargoKey(node283, -1, 0)
  Body_SetCargoKey(node283, -1, 1)
  Body_SetCargoKey(node283, -1, 2)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_vessel", "dir_cammesh_2h3_1")
  Node_AddSon(node149, node284)
  Body_SetCS(node284, MAT_Vector3(1278.439472, 3420.400811, 159.163914), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node284, "osd/dir/dir_cammesh_2h3.osd")
  Body_SetFriendOrFoeID(node284, 15)
  Body_SetNameKey(node284, -1)
  Body_SetCargoKey(node284, -1, 0)
  Body_SetCargoKey(node284, -1, 1)
  Body_SetCargoKey(node284, -1, 2)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_vessel", "dir_cammesh_2h3_2")
  Node_AddSon(node149, node285)
  Body_SetCS(node285, MAT_Vector3(912.612329, 2841.696526, 167.916991), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node285, "osd/dir/dir_cammesh_2h3.osd")
  Body_SetFriendOrFoeID(node285, 0)
  Body_SetNameKey(node285, -1)
  Body_SetCargoKey(node285, -1, 0)
  Body_SetCargoKey(node285, -1, 1)
  Body_SetCargoKey(node285, -1, 2)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_vessel", "atl_scout2_2")
  Node_AddSon(node149, node286)
  Body_SetCS(node286, MAT_Vector3(1412.637923, 3272.965533, 156.482899), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node286, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node286, 11)
  Body_SetNameKey(node286, -1)
  Body_SetCargoKey(node286, -1, 0)
  Body_SetCargoKey(node286, -1, 1)
  Body_SetCargoKey(node286, -1, 2)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node287)
  Camera_SetBackPlane(node287, 512)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node288)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node288, node289)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node288, node290)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Path", "WngPath_1")
  Node_AddSon(node290, node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node291, node292)
  Position_SetPosition(node292, MAT_Vector3(3662.029592, 1812.203255, 214.441838))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node291, node293)
  Position_SetPosition(node293, MAT_Vector3(3558.905671, 1957.438572, 185.956051))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node291, node294)
  Position_SetPosition(node294, MAT_Vector3(3283.797553, 2035.939773, 233.473203))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node290, node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node295, node296)
  Position_SetPosition(node296, MAT_Vector3(3416.323198, 1383.688386, 169.759706))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node295, node297)
  Position_SetPosition(node297, MAT_Vector3(3666.494174, 1806.777715, 216.514872))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node295, node298)
  Position_SetPosition(node298, MAT_Vector3(3559.65388, 1958.763122, 184.043707))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node295, node299)
  Position_SetPosition(node299, MAT_Vector3(3283.798, 2035.94, 233.4732))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node290, node300)
  Position_SetPosition(node300, MAT_Vector3(3549.009853, 1949.694521, 189.880107))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "WngPosition_1")
  Node_AddSon(node290, node301)
  Position_SetPosition(node301, MAT_Vector3(798.709845, 2816.125645, 107.724372))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "WngPosition_2")
  Node_AddSon(node290, node302)
  Position_SetPosition(node302, MAT_Vector3(763.958518, 2903.712625, 105.590634))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "WngPosition_3")
  Node_AddSon(node290, node303)
  Position_SetPosition(node303, MAT_Vector3(880.609577, 2757.225027, 100.445876))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "WngPosition_4")
  Node_AddSon(node290, node304)
  Position_SetPosition(node304, MAT_Vector3(720.184868, 2984.622772, 102.800446))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "WngPosition_5")
  Node_AddSon(node290, node305)
  Position_SetPosition(node305, MAT_Vector3(805.46454, 2725.268331, 107.543545))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "CamPosition_1")
  Node_AddSon(node290, node306)
  Position_SetPosition(node306, MAT_Vector3(1995.608588, 3148.26429, 146.809488))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "CamPosition_2")
  Node_AddSon(node290, node307)
  Position_SetPosition(node307, MAT_Vector3(1072.227464, 3092.459333, 240.789644))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "CamPosition_3")
  Node_AddSon(node290, node308)
  Position_SetPosition(node308, MAT_Vector3(907.746246, 3201.976754, 131.401826))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "CamPosition_4")
  Node_AddSon(node290, node309)
  Position_SetPosition(node309, MAT_Vector3(1328.493, 3039.062, 140.6877))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "CamPosition_5")
  Node_AddSon(node290, node310)
  Position_SetPosition(node310, MAT_Vector3(2098.438263, 3168.656103, 122.548884))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "CamPosition_6")
  Node_AddSon(node290, node311)
  Position_SetPosition(node311, MAT_Vector3(2204.312267, 3232.610932, 136.701032))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node290, node312)
  Position_SetPosition(node312, MAT_Vector3(1055.399927, 2852.403148, 262.92438))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node290, node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node313, node314)
  Position_SetPosition(node314, MAT_Vector3(1743.779775, 3048.666988, 166.058651))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node313, node315)
  Position_SetPosition(node315, MAT_Vector3(1534.212243, 2979.524767, 179.382141))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node290, node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node316, node317)
  Position_SetPosition(node317, MAT_Vector3(1575.776855, 2946.382934, 113.585568))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node316, node318)
  Position_SetPosition(node318, MAT_Vector3(1670.040253, 2991.065091, 110.875511))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Path", "SchaxPath_1")
  Node_AddSon(node290, node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node319, node320)
  Position_SetPosition(node320, MAT_Vector3(2341.564368, 3302.652117, 154.244618))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node319, node321)
  Position_SetPosition(node321, MAT_Vector3(2086.412151, 3159.185418, 109.36979))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node319, node322)
  Position_SetPosition(node322, MAT_Vector3(1943.928855, 3131.265188, 138.310744))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Path", "SchaxPath_2")
  Node_AddSon(node290, node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node323, node324)
  Position_SetPosition(node324, MAT_Vector3(2337.495055, 3309.923507, 155.736784))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node323, node325)
  Position_SetPosition(node325, MAT_Vector3(2084.443666, 3162.206733, 123.49119))
  Position_SetRadius(node325, 5)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node323, node326)
  Position_SetPosition(node326, MAT_Vector3(1983.46525, 3084.240609, 119.965167))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Path", "SchaxPath_3")
  Node_AddSon(node290, node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node327, node328)
  Position_SetPosition(node328, MAT_Vector3(2344.805879, 3293.741059, 154.4847))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node327, node329)
  Position_SetPosition(node329, MAT_Vector3(2086.563966, 3160.737663, 133.333127))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node327, node330)
  Position_SetPosition(node330, MAT_Vector3(1949.399911, 3114.665084, 114.331915))
  Position_SetRadius(node330, 5)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node288, node331)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Director", "IntroChapter1V")
  Node_AddSon(node331, node332)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Director", "IntroChapter1Addon_1")
  Node_AddSon(node331, node333)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Director", "IntroChapter1Addon_2")
  Node_AddSon(node331, node334)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Director", "IntroChapter2V")
  Node_AddSon(node331, node335)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Director", "SchaxComeInV")
  Node_AddSon(node331, node336)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Director", "SchaxComeInAddon")
  Node_AddSon(node331, node337)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Director", "SchaxComeInAddon_2")
  Node_AddSon(node331, node338)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Director", "SchaxComeInAddon_3")
  Node_AddSon(node331, node339)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node331, node340)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node288, node341)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node288, node342)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_vessel", "dir_cammesh_1")
  Node_AddSon(node342, node343)
  Body_SetCS(node343, MAT_Vector3(1310.280274, 3484.846693, 120.377007), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node343, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node343, 9)
  Body_SetNameKey(node343, -1)
  Body_SetCargoKey(node343, -1, 0)
  Body_SetCargoKey(node343, -1, 1)
  Body_SetCargoKey(node343, -1, 2)
  Node_EnterSimulation(node343)
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
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, E)
SetEnemyMatrixElement(5, 1, F)
SetEnemyMatrixElement(6, 1, E)
SetEnemyMatrixElement(7, 1, E)
SetEnemyMatrixElement(8, 1, E)
SetEnemyMatrixElement(9, 1, E)
SetEnemyMatrixElement(10, 1, E)
SetEnemyMatrixElement(11, 1, F)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, E)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, F)
SetEnemyMatrixElement(6, 2, E)
SetEnemyMatrixElement(7, 2, N)
SetEnemyMatrixElement(8, 2, N)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, F)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, E)
SetEnemyMatrixElement(6, 3, E)
SetEnemyMatrixElement(7, 3, N)
SetEnemyMatrixElement(8, 3, F)
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
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
SetEnemyMatrixElement(5, 4, N)
SetEnemyMatrixElement(6, 4, E)
SetEnemyMatrixElement(7, 4, N)
SetEnemyMatrixElement(8, 4, F)
SetEnemyMatrixElement(9, 4, N)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, N)
SetEnemyMatrixElement(1, 5, F)
SetEnemyMatrixElement(2, 5, F)
SetEnemyMatrixElement(3, 5, E)
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
SetEnemyMatrixElement(1, 6, E)
SetEnemyMatrixElement(2, 6, E)
SetEnemyMatrixElement(3, 6, E)
SetEnemyMatrixElement(4, 6, E)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, F)
SetEnemyMatrixElement(7, 6, F)
SetEnemyMatrixElement(8, 6, E)
SetEnemyMatrixElement(9, 6, N)
SetEnemyMatrixElement(10, 6, N)
SetEnemyMatrixElement(11, 6, N)
SetEnemyMatrixElement(12, 6, N)
SetEnemyMatrixElement(13, 6, N)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, N)
SetEnemyMatrixElement(0, 7, N)
SetEnemyMatrixElement(1, 7, E)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, N)
SetEnemyMatrixElement(4, 7, N)
SetEnemyMatrixElement(5, 7, E)
SetEnemyMatrixElement(6, 7, F)
SetEnemyMatrixElement(7, 7, F)
SetEnemyMatrixElement(8, 7, E)
SetEnemyMatrixElement(9, 7, N)
SetEnemyMatrixElement(10, 7, N)
SetEnemyMatrixElement(11, 7, N)
SetEnemyMatrixElement(12, 7, N)
SetEnemyMatrixElement(13, 7, N)
SetEnemyMatrixElement(14, 7, N)
SetEnemyMatrixElement(15, 7, N)
SetEnemyMatrixElement(0, 8, N)
SetEnemyMatrixElement(1, 8, E)
SetEnemyMatrixElement(2, 8, N)
SetEnemyMatrixElement(3, 8, F)
SetEnemyMatrixElement(4, 8, F)
SetEnemyMatrixElement(5, 8, N)
SetEnemyMatrixElement(6, 8, E)
SetEnemyMatrixElement(7, 8, N)
SetEnemyMatrixElement(8, 8, N)
SetEnemyMatrixElement(9, 8, N)
SetEnemyMatrixElement(10, 8, N)
SetEnemyMatrixElement(11, 8, E)
SetEnemyMatrixElement(12, 8, N)
SetEnemyMatrixElement(13, 8, N)
SetEnemyMatrixElement(14, 8, N)
SetEnemyMatrixElement(15, 8, E)
SetEnemyMatrixElement(0, 9, N)
SetEnemyMatrixElement(1, 9, E)
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
SetEnemyMatrixElement(1, 10, E)
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
SetEnemyMatrixElement(1, 11, F)
SetEnemyMatrixElement(2, 11, F)
SetEnemyMatrixElement(3, 11, N)
SetEnemyMatrixElement(4, 11, N)
SetEnemyMatrixElement(5, 11, N)
SetEnemyMatrixElement(6, 11, N)
SetEnemyMatrixElement(7, 11, N)
SetEnemyMatrixElement(8, 11, E)
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
SetEnemyMatrixElement(8, 15, E)
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
                                                                                                        if not (o1891.Value ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
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
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  Game_MissionEnd(GetGameNode(), 2)
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

end }
S_o1458 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1458, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1458, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1458, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1458, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1458, "Code5")
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
S_o1496 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1496, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1496, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1496, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1496, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1496, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1534, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1534, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1572, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1572, "Code5")
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
S_o1610 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1610, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1610, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1610, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1610, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1610, "Code5")
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
S_o1648 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1648, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1648, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1648, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1648, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1648, "Code5")
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
S_o1686 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1686, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1686, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1686, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1686, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1686, "Code5")
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
S_o1724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1724, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1724, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1724, "Code5")
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
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1762, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1762, "Code5")
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
S_o1800 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1800, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 170, 10)
  CallFunction(o1800, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1801.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1801 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1801.SetStateValue(o1801.GetCalculated())
end, StartCalculate = function()
  o1801["Value"] = o1801.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1801.Value == L0) then
    o1801["Value"] = L0
    CallFunction(o1800, "ProcesseStateChange")
  end
end }
S_o1802 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1802, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 138, 10)
  CallFunction(o1802, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1803.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1803 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1803.SetStateValue(o1803.GetCalculated())
end, StartCalculate = function()
  o1803["Value"] = o1803.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1803.Value == L0) then
    o1803["Value"] = L0
    CallFunction(o1802, "ProcesseStateChange")
  end
end }
S_o1804 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1804, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 101, 10)
  CallFunction(o1804, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1805.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1805 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1805.SetStateValue(o1805.GetCalculated())
end, StartCalculate = function()
  o1805["Value"] = o1805.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1805.Value == L0) then
    o1805["Value"] = L0
    CallFunction(o1804, "ProcesseStateChange")
  end
end }
S_o1806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1806, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 101, 10)
  CallFunction(o1806, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1807.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1807 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1807.SetStateValue(o1807.GetCalculated())
end, StartCalculate = function()
  o1807["Value"] = o1807.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1807.Value == L0) then
    o1807["Value"] = L0
    CallFunction(o1806, "ProcesseStateChange")
  end
end }
S_o1808 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1808, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 50, 5)
  CallFunction(o1808, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1809.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1809 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1809.SetStateValue(o1809.GetCalculated())
end, StartCalculate = function()
  o1809["Value"] = o1809.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1809.Value == L0) then
    o1809["Value"] = L0
    CallFunction(o1808, "ProcesseStateChange")
  end
end }
S_o1810 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1810, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 170, 10)
  CallFunction(o1810, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1811.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1811 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1811.SetStateValue(o1811.GetCalculated())
end, StartCalculate = function()
  o1811["Value"] = o1811.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1811.Value == L0) then
    o1811["Value"] = L0
    CallFunction(o1810, "ProcesseStateChange")
  end
end }
S_o1812 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1812, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 170, 10)
  CallFunction(o1812, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
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
  if not (o1870.Value ~= True) then
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
    o1813["Value"] = L0
    CallFunction(o1812, "ProcesseStateChange")
  end
end }
S_o1814 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1814, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 170, 10)
  CallFunction(o1814, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1815.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1815 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1815.SetStateValue(o1815.GetCalculated())
end, StartCalculate = function()
  o1815["Value"] = o1815.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1815.Value == L0) then
    o1815["Value"] = L0
    CallFunction(o1814, "ProcesseStateChange")
  end
end }
S_o1816 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1816, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 170, 10)
  CallFunction(o1816, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1817.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1817 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1817.SetStateValue(o1817.GetCalculated())
end, StartCalculate = function()
  o1817["Value"] = o1817.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1817.Value == L0) then
    o1817["Value"] = L0
    CallFunction(o1816, "ProcesseStateChange")
  end
end }
S_o1818 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1818, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Node_EnterSimulation(L0.Node)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  Stream_SetCurrentSpeed(L0.Node, 179.7, 10)
  CallFunction(o1818, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1819.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1819 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1819.SetStateValue(o1819.GetCalculated())
end, StartCalculate = function()
  o1819["Value"] = o1819.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1819.Value == L0) then
    o1819["Value"] = L0
    CallFunction(o1818, "ProcesseStateChange")
  end
end }
o1820 = FormationLib.CreateFormation("XForm", "", "", "", 20, 20)
o1821 = FormationLib.CreateFormation("XForm", "", "", "", 20, 20)
o1823 = FormationLib.CreateFormation("Cross", "", "", "", 25, 25)
o1825 = FormationLib.CreateFormation("Claw", "", "", "", 20, 20)
o1827 = FormationLib.CreateFormation("XForm", "", "", "", 15, 15)
S_o1828 = { [nil] = {}, Start = function(L0)

end }
S_o1829 = { [nil] = {}, Start = function(L0)

end }
S_o1830 = { [nil] = {}, Start = function(L0)

end }
S_o1831 = { [nil] = {}, Start = function(L0)

end }
o1833 = FormationLib.CreateFormation("Claw", "", "", "", 20, 20)
o1835 = FormationLib.CreateFormation("Claw", "", "", "", 20, 20)
S_o1836 = { [nil] = {}, Start = function(L0)

end }
S_o1837 = { [nil] = {}, Start = function(L0)

end }
S_o1838 = { [nil] = {}, Start = function(L0)

end }
S_o1839 = { [nil] = {}, Start = function(L0)

end }
S_o1840 = { [nil] = {}, Start = function(L0)

end }
S_o1841 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1841, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1841, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1841, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1841, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1841, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1841, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1846.SetStateValue(L1)
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
o1846 = { [nil] = {}, Start = function()
  o1846["Value"] = False
  o1872.StartCalculate()
  o7580.StartCalculate()
  o7611.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1846.Value == L0) then
    o1846["Value"] = L0
    o1872.ReCalculate()
    o7580.ReCalculate()
    o7611.ReCalculate()
  end
end }
S_o1847 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1847, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1847, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1847, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1847, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1847, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1847, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1852.SetStateValue(L1)
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
o1852 = { [nil] = {}, Start = function()
  o1852["Value"] = False
  o1875.StartCalculate()
  o2161.StartCalculate()
  o2209.StartCalculate()
  o2257.StartCalculate()
  o2305.StartCalculate()
  o2355.StartCalculate()
  o4498.StartCalculate()
  o4547.StartCalculate()
  o4595.StartCalculate()
  o4643.StartCalculate()
  o4691.StartCalculate()
  o4739.StartCalculate()
  o4787.StartCalculate()
  o4835.StartCalculate()
  o4883.StartCalculate()
  o4946.StartCalculate()
  o4985.StartCalculate()
  o5024.StartCalculate()
  o5063.StartCalculate()
  o5111.StartCalculate()
  o5159.StartCalculate()
  o7505.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1852.Value == L0) then
    o1852["Value"] = L0
    o1875.ReCalculate()
    o2161.ReCalculate()
    o2209.ReCalculate()
    o2257.ReCalculate()
    o2305.ReCalculate()
    o2355.ReCalculate()
    o4498.ReCalculate()
    o4547.ReCalculate()
    o4595.ReCalculate()
    o4643.ReCalculate()
    o4691.ReCalculate()
    o4739.ReCalculate()
    o4787.ReCalculate()
    o4835.ReCalculate()
    o4883.ReCalculate()
    o4946.ReCalculate()
    o4985.ReCalculate()
    o5024.ReCalculate()
    o5063.ReCalculate()
    o5111.ReCalculate()
    o5159.ReCalculate()
    o7505.ReCalculate()
  end
end }
S_o1853 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1853, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1853, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1853, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1853, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1853, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1853, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1858.SetStateValue(L1)
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
o1858 = { [nil] = {}, Start = function()
  o1858["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1858.Value == L0) then
    o1858["Value"] = L0
    o1874.ReCalculate()
  end
end }
S_o1859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1859, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1859, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1859, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1859, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1859, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1859, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1864.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1860.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1860 = { [nil] = {}, GetCalculated = function()
  if not (o1878.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1860.SetStateValue(o1860.GetCalculated())
end, StartCalculate = function()
  o1860["Value"] = o1860.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1860.Value == L0) then
    o1860["Value"] = L0
    CallFunction(o1859, "ProcesseStateChange")
  end
end }
o1864 = { [nil] = {}, Start = function()
  o1864["Value"] = False
  o1876.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1864.Value == L0) then
    o1864["Value"] = L0
    o1876.ReCalculate()
  end
end }
S_o1865 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "ammo_shell", 3000)
  Body_AddItem(L0.Node, "torpedo_hammerhead", 10)
  Body_AddItem(L0.Node, "torpedo_bigbang2", 4)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 10)
  Body_AddItem(L0.Node, "DEVICE_BOOSTER", 15000)
  CallFunction(o1865, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_UnderAttack = function(L0, L1)
  o1869.SetStateValue(L1)
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
o1869 = { [nil] = {}, Start = function()
  o1869["Value"] = False
  o1872.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1869.Value == L0) then
    o1869["Value"] = L0
    o1872.ReCalculate()
  end
end }
o1870 = { [nil] = {}, Start = function()
  o1870["Value"] = False
  o1801.StartCalculate()
  o1803.StartCalculate()
  o1805.StartCalculate()
  o1807.StartCalculate()
  o1809.StartCalculate()
  o1811.StartCalculate()
  o1813.StartCalculate()
  o1815.StartCalculate()
  o1817.StartCalculate()
  o1819.StartCalculate()
  o1871.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1870.Value == L0) then
    o1870["Value"] = L0
    o1801.ReCalculate()
    o1803.ReCalculate()
    o1805.ReCalculate()
    o1807.ReCalculate()
    o1809.ReCalculate()
    o1811.ReCalculate()
    o1813.ReCalculate()
    o1815.ReCalculate()
    o1817.ReCalculate()
    o1819.ReCalculate()
    o1871.ReCalculate()
  end
end }
o1871 = { [nil] = {}, GetCalculated = function()
  if not (o1870.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1871.SetStateValue(o1871.GetCalculated())
end, StartCalculate = function()
  o1871["Value"] = o1871.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1865.Node, o1865.Node, 1018)
end, SetStateValue = function(L0)
  if not (o1871.Value == L0) then
    o1871["Value"] = L0
    if not (L0 ~= 1) then
      o1871.ChangeTo1()
    end
  end
end }
o1872 = { [nil] = {}, GetCalculated = function()
  if not (o1869.Value ~= True) then
    if not (o1846.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1872.SetStateValue(o1872.GetCalculated())
end, StartCalculate = function()
  o1872["Value"] = o1872.GetCalculated()
  o7611.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1865.Node, o1865.Node, 1019)
end, SetStateValue = function(L0)
  if not (o1872.Value == L0) then
    o1872["Value"] = L0
    o7611.ReCalculate()
    if not (L0 ~= 1) then
      o1872.ChangeTo1()
    end
  end
end }
o1873 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1873.SetStateValue(o1873.GetCalculated())
end, StartCalculate = function()
  o1873["Value"] = o1873.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2303.Node, o1865.Node, 1036)
  SendRadioMessageTake(o1865.Node, o1865.Node, 1037)
  SED_SetTaskTextKey(1326, -1, -1)
end, SetStateValue = function(L0)
  if not (o1873.Value == L0) then
    DelayedFunction(10, o1873, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1873.Value == L0) then
    o1873["Value"] = L0
    if not (L0 ~= 1) then
      o1873.ChangeTo1()
    end
  end
end }
o1874 = { [nil] = {}, GetCalculated = function()
  if not (o4932.Value == True) then
    if not (o1858.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1874.SetStateValue(o1874.GetCalculated())
end, StartCalculate = function()
  o1874["Value"] = o1874.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4934.Node)
end, SetStateValue = function(L0)
  if not (o1874.Value == L0) then
    o1874["Value"] = L0
    if not (L0 ~= 1) then
      o1874.ChangeTo1()
    end
  end
end }
o1875 = { [nil] = {}, GetCalculated = function()
  if not (o4937.Value == True) then
    if not (o1852.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1875.SetStateValue(o1875.GetCalculated())
end, StartCalculate = function()
  o1875["Value"] = o1875.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4939.Node)
end, SetStateValue = function(L0)
  if not (o1875.Value == L0) then
    o1875["Value"] = L0
    if not (L0 ~= 1) then
      o1875.ChangeTo1()
    end
  end
end }
o1876 = { [nil] = {}, GetCalculated = function()
  if not (o1864.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1876.SetStateValue(o1876.GetCalculated())
end, StartCalculate = function()
  o1876["Value"] = o1876.GetCalculated()
  o1877.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2255.Node, o1865.Node, 1025)
end, SetStateValue = function(L0)
  if not (o1876.Value == L0) then
    DelayedFunction(25, o1876, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1876.Value == L0) then
    o1876["Value"] = L0
    o1877.ReCalculate()
    if not (L0 ~= 1) then
      o1876.ChangeTo1()
    end
  end
end }
o1877 = { [nil] = {}, GetCalculated = function()
  if not (o1876.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1877.SetStateValue(o1877.GetCalculated())
end, StartCalculate = function()
  o1877["Value"] = o1877.GetCalculated()
  o1881.StartCalculate()
  o7590.StartCalculate()
  o7612.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1877.Value == L0) then
    DelayedFunction(20, o1877, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1877.Value == L0) then
    o1877["Value"] = L0
    o1881.ReCalculate()
    o7590.ReCalculate()
    o7612.ReCalculate()
  end
end }
o1878 = { [nil] = {}, Start = function()
  o1878["Value"] = False
  o1860.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1878.Value == L0) then
    o1878["Value"] = L0
    o1860.ReCalculate()
  end
end }
o1879 = { [nil] = {}, Start = function()
  o1879["Value"] = False
  o2963.StartCalculate()
  o3011.StartCalculate()
  o3059.StartCalculate()
  o3107.StartCalculate()
  o3155.StartCalculate()
  o3203.StartCalculate()
  o3251.StartCalculate()
  o3299.StartCalculate()
  o3347.StartCalculate()
  o3395.StartCalculate()
  o3443.StartCalculate()
  o3491.StartCalculate()
  o3539.StartCalculate()
  o3587.StartCalculate()
  o3635.StartCalculate()
  o3683.StartCalculate()
  o3731.StartCalculate()
  o3779.StartCalculate()
  o3827.StartCalculate()
  o3875.StartCalculate()
  o3923.StartCalculate()
  o3971.StartCalculate()
  o4019.StartCalculate()
  o4067.StartCalculate()
  o4115.StartCalculate()
  o4163.StartCalculate()
  o4211.StartCalculate()
  o4259.StartCalculate()
  o4307.StartCalculate()
  o4355.StartCalculate()
  o4403.StartCalculate()
  o4451.StartCalculate()
  o7602.StartCalculate()
  o7605.StartCalculate()
  o7608.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1879.Value == L0) then
    o1879["Value"] = L0
    o2963.ReCalculate()
    o3011.ReCalculate()
    o3059.ReCalculate()
    o3107.ReCalculate()
    o3155.ReCalculate()
    o3203.ReCalculate()
    o3251.ReCalculate()
    o3299.ReCalculate()
    o3347.ReCalculate()
    o3395.ReCalculate()
    o3443.ReCalculate()
    o3491.ReCalculate()
    o3539.ReCalculate()
    o3587.ReCalculate()
    o3635.ReCalculate()
    o3683.ReCalculate()
    o3731.ReCalculate()
    o3779.ReCalculate()
    o3827.ReCalculate()
    o3875.ReCalculate()
    o3923.ReCalculate()
    o3971.ReCalculate()
    o4019.ReCalculate()
    o4067.ReCalculate()
    o4115.ReCalculate()
    o4163.ReCalculate()
    o4211.ReCalculate()
    o4259.ReCalculate()
    o4307.ReCalculate()
    o4355.ReCalculate()
    o4403.ReCalculate()
    o4451.ReCalculate()
    o7602.ReCalculate()
    o7605.ReCalculate()
    o7608.ReCalculate()
  end
end }
o1880 = { [nil] = {}, Start = function()
  o1880["Value"] = False
  o2962.StartCalculate()
  o3010.StartCalculate()
  o3058.StartCalculate()
  o3106.StartCalculate()
  o3154.StartCalculate()
  o3202.StartCalculate()
  o3250.StartCalculate()
  o3298.StartCalculate()
  o3346.StartCalculate()
  o3394.StartCalculate()
  o3442.StartCalculate()
  o3490.StartCalculate()
  o3538.StartCalculate()
  o3586.StartCalculate()
  o3634.StartCalculate()
  o3682.StartCalculate()
  o3730.StartCalculate()
  o3778.StartCalculate()
  o3826.StartCalculate()
  o3874.StartCalculate()
  o3922.StartCalculate()
  o3970.StartCalculate()
  o4018.StartCalculate()
  o4066.StartCalculate()
  o4114.StartCalculate()
  o4162.StartCalculate()
  o4210.StartCalculate()
  o4258.StartCalculate()
  o4306.StartCalculate()
  o4354.StartCalculate()
  o4402.StartCalculate()
  o4450.StartCalculate()
  o5207.StartCalculate()
  o5255.StartCalculate()
  o5303.StartCalculate()
  o5351.StartCalculate()
  o5400.StartCalculate()
  o5449.StartCalculate()
  o5498.StartCalculate()
  o5547.StartCalculate()
  o5596.StartCalculate()
  o5645.StartCalculate()
  o5694.StartCalculate()
  o5743.StartCalculate()
  o5792.StartCalculate()
  o5841.StartCalculate()
  o5890.StartCalculate()
  o5939.StartCalculate()
  o5988.StartCalculate()
  o6037.StartCalculate()
  o6277.StartCalculate()
  o6325.StartCalculate()
  o6373.StartCalculate()
  o6421.StartCalculate()
  o6469.StartCalculate()
  o6517.StartCalculate()
  o6565.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1880.Value == L0) then
    o1880["Value"] = L0
    o2962.ReCalculate()
    o3010.ReCalculate()
    o3058.ReCalculate()
    o3106.ReCalculate()
    o3154.ReCalculate()
    o3202.ReCalculate()
    o3250.ReCalculate()
    o3298.ReCalculate()
    o3346.ReCalculate()
    o3394.ReCalculate()
    o3442.ReCalculate()
    o3490.ReCalculate()
    o3538.ReCalculate()
    o3586.ReCalculate()
    o3634.ReCalculate()
    o3682.ReCalculate()
    o3730.ReCalculate()
    o3778.ReCalculate()
    o3826.ReCalculate()
    o3874.ReCalculate()
    o3922.ReCalculate()
    o3970.ReCalculate()
    o4018.ReCalculate()
    o4066.ReCalculate()
    o4114.ReCalculate()
    o4162.ReCalculate()
    o4210.ReCalculate()
    o4258.ReCalculate()
    o4306.ReCalculate()
    o4354.ReCalculate()
    o4402.ReCalculate()
    o4450.ReCalculate()
    o5207.ReCalculate()
    o5255.ReCalculate()
    o5303.ReCalculate()
    o5351.ReCalculate()
    o5400.ReCalculate()
    o5449.ReCalculate()
    o5498.ReCalculate()
    o5547.ReCalculate()
    o5596.ReCalculate()
    o5645.ReCalculate()
    o5694.ReCalculate()
    o5743.ReCalculate()
    o5792.ReCalculate()
    o5841.ReCalculate()
    o5890.ReCalculate()
    o5939.ReCalculate()
    o5988.ReCalculate()
    o6037.ReCalculate()
    o6277.ReCalculate()
    o6325.ReCalculate()
    o6373.ReCalculate()
    o6421.ReCalculate()
    o6469.ReCalculate()
    o6517.ReCalculate()
    o6565.ReCalculate()
  end
end }
o1881 = { [nil] = {}, GetCalculated = function()
  if not (o1877.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1881.SetStateValue(o1881.GetCalculated())
end, StartCalculate = function()
  o1881["Value"] = o1881.GetCalculated()
  o4546.StartCalculate()
  o4594.StartCalculate()
  o4642.StartCalculate()
  o4690.StartCalculate()
  o4738.StartCalculate()
  o4786.StartCalculate()
  o4834.StartCalculate()
  o4882.StartCalculate()
  o4945.StartCalculate()
  o4984.StartCalculate()
  o5023.StartCalculate()
  o5062.StartCalculate()
  o5110.StartCalculate()
  o5158.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1881.Value == L0) then
    DelayedFunction(2, o1881, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1881.Value == L0) then
    o1881["Value"] = L0
    o4546.ReCalculate()
    o4594.ReCalculate()
    o4642.ReCalculate()
    o4690.ReCalculate()
    o4738.ReCalculate()
    o4786.ReCalculate()
    o4834.ReCalculate()
    o4882.ReCalculate()
    o4945.ReCalculate()
    o4984.ReCalculate()
    o5023.ReCalculate()
    o5062.ReCalculate()
    o5110.ReCalculate()
    o5158.ReCalculate()
  end
end }
o1884 = { [nil] = {}, Start = function()
  o1884["Value"] = False
  o1885.StartCalculate()
  o1886.StartCalculate()
  o1887.StartCalculate()
  o6085.StartCalculate()
  o6133.StartCalculate()
  o6181.StartCalculate()
  o6229.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1884.Value == L0) then
    o1884["Value"] = L0
    o1885.ReCalculate()
    o1886.ReCalculate()
    o1887.ReCalculate()
    o6085.ReCalculate()
    o6133.ReCalculate()
    o6181.ReCalculate()
    o6229.ReCalculate()
  end
end }
o1885 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    if not (o6088.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1885.SetStateValue(o1885.GetCalculated())
end, StartCalculate = function()
  o1885["Value"] = o1885.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7144.Node)
end, SetStateValue = function(L0)
  if not (o1885.Value == L0) then
    o1885["Value"] = L0
    if not (L0 ~= 1) then
      o1885.ChangeTo1()
    end
  end
end }
o1886 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    if not (o6088.Value ~= True) then
      if not (o6136.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1886.SetStateValue(o1886.GetCalculated())
end, StartCalculate = function()
  o1886["Value"] = o1886.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7149.Node)
end, SetStateValue = function(L0)
  if not (o1886.Value == L0) then
    o1886["Value"] = L0
    if not (L0 ~= 1) then
      o1886.ChangeTo1()
    end
  end
end }
o1887 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    if not (o6088.Value ~= True) then
      if not (o6136.Value ~= True) then
        if not (o6184.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1887.SetStateValue(o1887.GetCalculated())
end, StartCalculate = function()
  o1887["Value"] = o1887.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7154.Node)
end, SetStateValue = function(L0)
  if not (o1887.Value == L0) then
    o1887["Value"] = L0
    if not (L0 ~= 1) then
      o1887.ChangeTo1()
    end
  end
end }
o1888 = { [nil] = {}, GetCalculated = function()
  if not (o6088.Value ~= True) then
    if not (o6136.Value ~= True) then
      if not (o6184.Value ~= True) then
        if not (o6232.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1888.SetStateValue(o1888.GetCalculated())
end, StartCalculate = function()
  o1888["Value"] = o1888.GetCalculated()
  o4499.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1865.Node, o1865.Node, 1181)
  SendRadioMessageTake(o1865.Node, o1865.Node, 1027)
end, SetStateValue = function(L0)
  if not (o1888.Value == L0) then
    o1888["Value"] = L0
    o4499.ReCalculate()
    if not (L0 ~= 1) then
      o1888.ChangeTo1()
    end
  end
end }
o1889 = { [nil] = {}, GetCalculated = function()
  if not (o7174.Value == True) then
    if not (o7222.Value == True) then
      if not (o7270.Value == True) then
        if not (o7318.Value == True) then
          if not (o7366.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1889.SetStateValue(o1889.GetCalculated())
end, StartCalculate = function()
  o1889["Value"] = o1889.GetCalculated()
  o1891.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1865.Node, o1865.Node, 1038)
end, SetStateValue = function(L0)
  if not (o1889.Value == L0) then
    DelayedFunction(10, o1889, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1889.Value == L0) then
    o1889["Value"] = L0
    o1891.ReCalculate()
    if not (L0 ~= 1) then
      o1889.ChangeTo1()
    end
  end
end }
o1890 = { [nil] = {}, Start = function()
  o1890["Value"] = False
  o6612.StartCalculate()
  o6660.StartCalculate()
  o6708.StartCalculate()
  o6756.StartCalculate()
  o6804.StartCalculate()
  o6852.StartCalculate()
  o6900.StartCalculate()
  o6948.StartCalculate()
  o6996.StartCalculate()
  o7044.StartCalculate()
  o7092.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1890.Value == L0) then
    o1890["Value"] = L0
    o6612.ReCalculate()
    o6660.ReCalculate()
    o6708.ReCalculate()
    o6756.ReCalculate()
    o6804.ReCalculate()
    o6852.ReCalculate()
    o6900.ReCalculate()
    o6948.ReCalculate()
    o6996.ReCalculate()
    o7044.ReCalculate()
    o7092.ReCalculate()
  end
end }
o1891 = { [nil] = {}, GetCalculated = function()
  if not (o1889.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1891.SetStateValue(o1891.GetCalculated())
end, StartCalculate = function()
  o1891["Value"] = o1891.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1891.Value == L0) then
    o1891["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1919 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1919, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1919, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1919, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o1919, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1919, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1919, "Code7")
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
S_o1967 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1967, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1967, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1967, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o1967, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1967, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1967, "Code7")
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
S_o2015 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2015, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2015, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2015, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2015, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2015, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2015, "Code7")
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
S_o2063 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2063, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2063, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2063, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2063, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2063, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2063, "Code7")
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
S_o2111 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2111, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2111, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2111, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2111, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2111, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  StopAllActiveBehaviours(L0)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2111, "Code7")
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
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2159, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2159, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2161.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2161 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2161.SetStateValue(o2161.GetCalculated())
end, StartCalculate = function()
  o2161["Value"] = o2161.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2161.Value == L0) then
    o2161["Value"] = L0
    CallFunction(o2159, "ProcesseStateChange")
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
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2207, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2207, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2209.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2209 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2209.SetStateValue(o2209.GetCalculated())
end, StartCalculate = function()
  o2209["Value"] = o2209.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2209.Value == L0) then
    o2209["Value"] = L0
    CallFunction(o2207, "ProcesseStateChange")
  end
end }
S_o2255 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2255, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2255, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2255, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2255, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2255, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2257.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2257 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2257.SetStateValue(o2257.GetCalculated())
end, StartCalculate = function()
  o2257["Value"] = o2257.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2257.Value == L0) then
    o2257["Value"] = L0
    CallFunction(o2255, "ProcesseStateChange")
  end
end }
S_o2303 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2303, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2303, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2303, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2303, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2303, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o2303, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2303, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  o1884.SetStateValue(True)
  CallFunction(o2303, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearAreaFrom(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", o4497.Node, 100000, 1, "Code10")
  else
    CallFunction(o2303, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2305.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2305 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2305.SetStateValue(o2305.GetCalculated())
end, StartCalculate = function()
  o2305["Value"] = o2305.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2305.Value == L0) then
    o2305["Value"] = L0
    CallFunction(o2303, "ProcesseStateChange")
  end
end }
S_o2353 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2353, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2353, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2353, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2353, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2353, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2355.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2355 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2355.SetStateValue(o2355.GetCalculated())
end, StartCalculate = function()
  o2355["Value"] = o2355.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2355.Value == L0) then
    o2355["Value"] = L0
    CallFunction(o2353, "ProcesseStateChange")
  end
end }
S_o2401 = { [nil] = {}, Start = function(L0)

end }
S_o2436 = { [nil] = {}, Start = function(L0)

end }
S_o2471 = { [nil] = {}, Start = function(L0)

end }
S_o2506 = { [nil] = {}, Start = function(L0)

end }
S_o2541 = { [nil] = {}, Start = function(L0)

end }
S_o2576 = { [nil] = {}, Start = function(L0)

end }
S_o2611 = { [nil] = {}, Start = function(L0)

end }
S_o2646 = { [nil] = {}, Start = function(L0)

end }
S_o2681 = { [nil] = {}, Start = function(L0)

end }
S_o2716 = { [nil] = {}, Start = function(L0)

end }
S_o2751 = { [nil] = {}, Start = function(L0)

end }
S_o2786 = { [nil] = {}, Start = function(L0)

end }
S_o2821 = { [nil] = {}, Start = function(L0)

end }
S_o2856 = { [nil] = {}, Start = function(L0)

end }
S_o2891 = { [nil] = {}, Start = function(L0)

end }
S_o2926 = { [nil] = {}, Start = function(L0)

end }
S_o2961 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2961, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2961, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2961, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2961, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o2961, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2961, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code9")
  else
    CallFunction(o2961, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2961, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2963.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2962.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2962 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2962.SetStateValue(o2962.GetCalculated())
end, StartCalculate = function()
  o2962["Value"] = o2962.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2962.Value == L0) then
    o2962["Value"] = L0
    CallFunction(o2961, "ProcesseStateChange")
  end
end }
o2963 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2963.SetStateValue(o2963.GetCalculated())
end, StartCalculate = function()
  o2963["Value"] = o2963.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2963.Value == L0) then
    o2963["Value"] = L0
    CallFunction(o2961, "ProcesseStateChange")
  end
end }
S_o3009 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3009, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3009, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3009, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3009, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3009, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3009, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3009, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3009, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3011.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3010.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3010 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3010.SetStateValue(o3010.GetCalculated())
end, StartCalculate = function()
  o3010["Value"] = o3010.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3010.Value == L0) then
    o3010["Value"] = L0
    CallFunction(o3009, "ProcesseStateChange")
  end
end }
o3011 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3011.SetStateValue(o3011.GetCalculated())
end, StartCalculate = function()
  o3011["Value"] = o3011.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3011.Value == L0) then
    o3011["Value"] = L0
    CallFunction(o3009, "ProcesseStateChange")
  end
end }
S_o3057 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3057, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3057, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3057, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3057, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3057, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3057, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3057, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3057, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3059.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3058.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3058 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3058.SetStateValue(o3058.GetCalculated())
end, StartCalculate = function()
  o3058["Value"] = o3058.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3058.Value == L0) then
    o3058["Value"] = L0
    CallFunction(o3057, "ProcesseStateChange")
  end
end }
o3059 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3059.SetStateValue(o3059.GetCalculated())
end, StartCalculate = function()
  o3059["Value"] = o3059.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3059.Value == L0) then
    o3059["Value"] = L0
    CallFunction(o3057, "ProcesseStateChange")
  end
end }
S_o3105 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3105, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3105, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3105, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3105, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3105, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3105, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3105, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3105, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3107.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3106.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3106 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3106.SetStateValue(o3106.GetCalculated())
end, StartCalculate = function()
  o3106["Value"] = o3106.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3106.Value == L0) then
    o3106["Value"] = L0
    CallFunction(o3105, "ProcesseStateChange")
  end
end }
o3107 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3107.SetStateValue(o3107.GetCalculated())
end, StartCalculate = function()
  o3107["Value"] = o3107.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3107.Value == L0) then
    o3107["Value"] = L0
    CallFunction(o3105, "ProcesseStateChange")
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
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3153, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3153, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3153, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3153, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3153, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3155.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3154.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3154 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3154.SetStateValue(o3154.GetCalculated())
end, StartCalculate = function()
  o3154["Value"] = o3154.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3154.Value == L0) then
    o3154["Value"] = L0
    CallFunction(o3153, "ProcesseStateChange")
  end
end }
o3155 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3155.SetStateValue(o3155.GetCalculated())
end, StartCalculate = function()
  o3155["Value"] = o3155.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3155.Value == L0) then
    o3155["Value"] = L0
    CallFunction(o3153, "ProcesseStateChange")
  end
end }
S_o3201 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3201, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3201, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3201, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3201, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3201, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3201, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code9")
  else
    CallFunction(o3201, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3201, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3203.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3202.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3202 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3202.SetStateValue(o3202.GetCalculated())
end, StartCalculate = function()
  o3202["Value"] = o3202.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3202.Value == L0) then
    o3202["Value"] = L0
    CallFunction(o3201, "ProcesseStateChange")
  end
end }
o3203 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3203.SetStateValue(o3203.GetCalculated())
end, StartCalculate = function()
  o3203["Value"] = o3203.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3203.Value == L0) then
    o3203["Value"] = L0
    CallFunction(o3201, "ProcesseStateChange")
  end
end }
S_o3249 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3249, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3249, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3249, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3249, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3249, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3249, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3249, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3249, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3251.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3250.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3250 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3250.SetStateValue(o3250.GetCalculated())
end, StartCalculate = function()
  o3250["Value"] = o3250.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3250.Value == L0) then
    o3250["Value"] = L0
    CallFunction(o3249, "ProcesseStateChange")
  end
end }
o3251 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3251.SetStateValue(o3251.GetCalculated())
end, StartCalculate = function()
  o3251["Value"] = o3251.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3251.Value == L0) then
    o3251["Value"] = L0
    CallFunction(o3249, "ProcesseStateChange")
  end
end }
S_o3297 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3297, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3297, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3297, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3297, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3297, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3297, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3297, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3297, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3299.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3298.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3298 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3298.SetStateValue(o3298.GetCalculated())
end, StartCalculate = function()
  o3298["Value"] = o3298.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3298.Value == L0) then
    o3298["Value"] = L0
    CallFunction(o3297, "ProcesseStateChange")
  end
end }
o3299 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3299.SetStateValue(o3299.GetCalculated())
end, StartCalculate = function()
  o3299["Value"] = o3299.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3299.Value == L0) then
    o3299["Value"] = L0
    CallFunction(o3297, "ProcesseStateChange")
  end
end }
S_o3345 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3345, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3345, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3345, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3345, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3345, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3345, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3345, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3345, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3347.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3346.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3346 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3346.SetStateValue(o3346.GetCalculated())
end, StartCalculate = function()
  o3346["Value"] = o3346.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3346.Value == L0) then
    o3346["Value"] = L0
    CallFunction(o3345, "ProcesseStateChange")
  end
end }
o3347 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3347.SetStateValue(o3347.GetCalculated())
end, StartCalculate = function()
  o3347["Value"] = o3347.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3347.Value == L0) then
    o3347["Value"] = L0
    CallFunction(o3345, "ProcesseStateChange")
  end
end }
S_o3393 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3393, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3393, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3393, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3393, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3393, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3393, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3393, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3393, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3395.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3394.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3394 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3394.SetStateValue(o3394.GetCalculated())
end, StartCalculate = function()
  o3394["Value"] = o3394.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3394.Value == L0) then
    o3394["Value"] = L0
    CallFunction(o3393, "ProcesseStateChange")
  end
end }
o3395 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3395.SetStateValue(o3395.GetCalculated())
end, StartCalculate = function()
  o3395["Value"] = o3395.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3395.Value == L0) then
    o3395["Value"] = L0
    CallFunction(o3393, "ProcesseStateChange")
  end
end }
S_o3441 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3441, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3441, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3441, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3441, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3441, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3441, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3441, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3441, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3443.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3442.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3442 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3442.SetStateValue(o3442.GetCalculated())
end, StartCalculate = function()
  o3442["Value"] = o3442.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3442.Value == L0) then
    o3442["Value"] = L0
    CallFunction(o3441, "ProcesseStateChange")
  end
end }
o3443 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3443.SetStateValue(o3443.GetCalculated())
end, StartCalculate = function()
  o3443["Value"] = o3443.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3443.Value == L0) then
    o3443["Value"] = L0
    CallFunction(o3441, "ProcesseStateChange")
  end
end }
S_o3489 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3489, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3489, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3489, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3489, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3489, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3489, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3489, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3489, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3491.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3490.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3490 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3490.SetStateValue(o3490.GetCalculated())
end, StartCalculate = function()
  o3490["Value"] = o3490.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3490.Value == L0) then
    o3490["Value"] = L0
    CallFunction(o3489, "ProcesseStateChange")
  end
end }
o3491 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3491.SetStateValue(o3491.GetCalculated())
end, StartCalculate = function()
  o3491["Value"] = o3491.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3491.Value == L0) then
    o3491["Value"] = L0
    CallFunction(o3489, "ProcesseStateChange")
  end
end }
S_o3537 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3537, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3537, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3537, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3537, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3537, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3537, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3537, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3537, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3539.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3538.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3538 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3538.SetStateValue(o3538.GetCalculated())
end, StartCalculate = function()
  o3538["Value"] = o3538.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3538.Value == L0) then
    o3538["Value"] = L0
    CallFunction(o3537, "ProcesseStateChange")
  end
end }
o3539 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3539.SetStateValue(o3539.GetCalculated())
end, StartCalculate = function()
  o3539["Value"] = o3539.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3539.Value == L0) then
    o3539["Value"] = L0
    CallFunction(o3537, "ProcesseStateChange")
  end
end }
S_o3585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3585, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3585, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3585, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3585, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3585, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3585, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3585, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3585, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3587.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3586.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3586 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
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
    o3586["Value"] = L0
    CallFunction(o3585, "ProcesseStateChange")
  end
end }
o3587 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3587.SetStateValue(o3587.GetCalculated())
end, StartCalculate = function()
  o3587["Value"] = o3587.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3587.Value == L0) then
    o3587["Value"] = L0
    CallFunction(o3585, "ProcesseStateChange")
  end
end }
S_o3633 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3633, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3633, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3633, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3633, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3633, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3633, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3633, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3633, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3635.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
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
o3634 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
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
    CallFunction(o3633, "ProcesseStateChange")
  end
end }
o3635 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    o3635["Value"] = L0
    CallFunction(o3633, "ProcesseStateChange")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3681, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3681, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3681, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3681, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3681, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3681, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3683.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3682.Value ~= True) then
        L1 = 0
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
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
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
  if not (o1879.Value ~= True) then
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
S_o3729 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3729, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3729, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3729, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3729, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3729, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3729, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3729, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3729, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3731.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3730.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3730 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3730.SetStateValue(o3730.GetCalculated())
end, StartCalculate = function()
  o3730["Value"] = o3730.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3730.Value == L0) then
    o3730["Value"] = L0
    CallFunction(o3729, "ProcesseStateChange")
  end
end }
o3731 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3731.SetStateValue(o3731.GetCalculated())
end, StartCalculate = function()
  o3731["Value"] = o3731.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3731.Value == L0) then
    o3731["Value"] = L0
    CallFunction(o3729, "ProcesseStateChange")
  end
end }
S_o3777 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3777, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3777, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3777, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3777, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3777, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3777, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3777, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3777, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3779.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3778.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3778 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3778.SetStateValue(o3778.GetCalculated())
end, StartCalculate = function()
  o3778["Value"] = o3778.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3778.Value == L0) then
    o3778["Value"] = L0
    CallFunction(o3777, "ProcesseStateChange")
  end
end }
o3779 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3779.SetStateValue(o3779.GetCalculated())
end, StartCalculate = function()
  o3779["Value"] = o3779.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3779.Value == L0) then
    o3779["Value"] = L0
    CallFunction(o3777, "ProcesseStateChange")
  end
end }
S_o3825 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3825, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3825, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3825, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3825, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3825, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3825, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3825, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3825, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3827.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3826.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3826 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3826.SetStateValue(o3826.GetCalculated())
end, StartCalculate = function()
  o3826["Value"] = o3826.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3826.Value == L0) then
    o3826["Value"] = L0
    CallFunction(o3825, "ProcesseStateChange")
  end
end }
o3827 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    CallFunction(o3825, "ProcesseStateChange")
  end
end }
S_o3873 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3873, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3873, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3873, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3873, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3873, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3873, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3873, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3873, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3875.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3874.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3874 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3874.SetStateValue(o3874.GetCalculated())
end, StartCalculate = function()
  o3874["Value"] = o3874.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3874.Value == L0) then
    o3874["Value"] = L0
    CallFunction(o3873, "ProcesseStateChange")
  end
end }
o3875 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    CallFunction(o3873, "ProcesseStateChange")
  end
end }
S_o3921 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3921, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3921, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3921, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3921, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3921, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3921, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3921, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3921, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3923.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3922.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3922 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3922.SetStateValue(o3922.GetCalculated())
end, StartCalculate = function()
  o3922["Value"] = o3922.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3922.Value == L0) then
    o3922["Value"] = L0
    CallFunction(o3921, "ProcesseStateChange")
  end
end }
o3923 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    CallFunction(o3921, "ProcesseStateChange")
  end
end }
S_o3969 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3969, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3969, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3969, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o3969, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o3969, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3969, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o3969, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3969, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3971.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3970.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3970 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3970.SetStateValue(o3970.GetCalculated())
end, StartCalculate = function()
  o3970["Value"] = o3970.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3970.Value == L0) then
    o3970["Value"] = L0
    CallFunction(o3969, "ProcesseStateChange")
  end
end }
o3971 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    CallFunction(o3969, "ProcesseStateChange")
  end
end }
S_o4017 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4017, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4017, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4017, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4017, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4017, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4017, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4017, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4017, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4019.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4018.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4018 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4018.SetStateValue(o4018.GetCalculated())
end, StartCalculate = function()
  o4018["Value"] = o4018.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4018.Value == L0) then
    o4018["Value"] = L0
    CallFunction(o4017, "ProcesseStateChange")
  end
end }
o4019 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    CallFunction(o4017, "ProcesseStateChange")
  end
end }
S_o4065 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4065, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4065, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4065, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4065, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4065, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4065, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4065, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4065, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4067.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4066.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4066 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4066.SetStateValue(o4066.GetCalculated())
end, StartCalculate = function()
  o4066["Value"] = o4066.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4066.Value == L0) then
    o4066["Value"] = L0
    CallFunction(o4065, "ProcesseStateChange")
  end
end }
o4067 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
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
    CallFunction(o4065, "ProcesseStateChange")
  end
end }
S_o4113 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4113, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4113, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4113, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4113, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4113, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4113, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4113, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4113, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4115.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4114.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4114 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4114.SetStateValue(o4114.GetCalculated())
end, StartCalculate = function()
  o4114["Value"] = o4114.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4114.Value == L0) then
    o4114["Value"] = L0
    CallFunction(o4113, "ProcesseStateChange")
  end
end }
o4115 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4115.SetStateValue(o4115.GetCalculated())
end, StartCalculate = function()
  o4115["Value"] = o4115.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4115.Value == L0) then
    o4115["Value"] = L0
    CallFunction(o4113, "ProcesseStateChange")
  end
end }
S_o4161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4161, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4161, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4161, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4161, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4161, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4161, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4161, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4161, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4163.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4162.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4162 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4162.SetStateValue(o4162.GetCalculated())
end, StartCalculate = function()
  o4162["Value"] = o4162.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4162.Value == L0) then
    o4162["Value"] = L0
    CallFunction(o4161, "ProcesseStateChange")
  end
end }
o4163 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4163.SetStateValue(o4163.GetCalculated())
end, StartCalculate = function()
  o4163["Value"] = o4163.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4163.Value == L0) then
    o4163["Value"] = L0
    CallFunction(o4161, "ProcesseStateChange")
  end
end }
S_o4209 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4209, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4209, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4209, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4209, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4209, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4209, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4209, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4209, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4211.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4210.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4210 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4210.SetStateValue(o4210.GetCalculated())
end, StartCalculate = function()
  o4210["Value"] = o4210.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4210.Value == L0) then
    o4210["Value"] = L0
    CallFunction(o4209, "ProcesseStateChange")
  end
end }
o4211 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4211.SetStateValue(o4211.GetCalculated())
end, StartCalculate = function()
  o4211["Value"] = o4211.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4211.Value == L0) then
    o4211["Value"] = L0
    CallFunction(o4209, "ProcesseStateChange")
  end
end }
S_o4257 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4257, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4257, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4257, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4257, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4257, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4257, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4257, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4257, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4259.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4258.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4258 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4258.SetStateValue(o4258.GetCalculated())
end, StartCalculate = function()
  o4258["Value"] = o4258.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4258.Value == L0) then
    o4258["Value"] = L0
    CallFunction(o4257, "ProcesseStateChange")
  end
end }
o4259 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4259.SetStateValue(o4259.GetCalculated())
end, StartCalculate = function()
  o4259["Value"] = o4259.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4259.Value == L0) then
    o4259["Value"] = L0
    CallFunction(o4257, "ProcesseStateChange")
  end
end }
S_o4305 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4305, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4305, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4305, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4305, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4305, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4305, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4305, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4305, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4307.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4306.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4306 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4306.SetStateValue(o4306.GetCalculated())
end, StartCalculate = function()
  o4306["Value"] = o4306.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4306.Value == L0) then
    o4306["Value"] = L0
    CallFunction(o4305, "ProcesseStateChange")
  end
end }
o4307 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4307.SetStateValue(o4307.GetCalculated())
end, StartCalculate = function()
  o4307["Value"] = o4307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4307.Value == L0) then
    o4307["Value"] = L0
    CallFunction(o4305, "ProcesseStateChange")
  end
end }
S_o4353 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4353, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4353, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4353, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4353, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4353, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4353, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4353, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4353, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4355.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4354.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4354 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4354.SetStateValue(o4354.GetCalculated())
end, StartCalculate = function()
  o4354["Value"] = o4354.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4354.Value == L0) then
    o4354["Value"] = L0
    CallFunction(o4353, "ProcesseStateChange")
  end
end }
o4355 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4355.SetStateValue(o4355.GetCalculated())
end, StartCalculate = function()
  o4355["Value"] = o4355.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4355.Value == L0) then
    o4355["Value"] = L0
    CallFunction(o4353, "ProcesseStateChange")
  end
end }
S_o4401 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4401, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4401, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4401, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4401, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4401, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4401, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4401, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4401, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4403.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4402.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4402 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4402.SetStateValue(o4402.GetCalculated())
end, StartCalculate = function()
  o4402["Value"] = o4402.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4402.Value == L0) then
    o4402["Value"] = L0
    CallFunction(o4401, "ProcesseStateChange")
  end
end }
o4403 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4403.SetStateValue(o4403.GetCalculated())
end, StartCalculate = function()
  o4403["Value"] = o4403.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4403.Value == L0) then
    o4403["Value"] = L0
    CallFunction(o4401, "ProcesseStateChange")
  end
end }
S_o4449 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4449, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4449, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4449, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o4449, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4449, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o4449, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea" }, 100000, 0, "Code8")
  else
    CallFunction(o4449, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4449, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4451.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4450.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4450 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4450.SetStateValue(o4450.GetCalculated())
end, StartCalculate = function()
  o4450["Value"] = o4450.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4450.Value == L0) then
    o4450["Value"] = L0
    CallFunction(o4449, "ProcesseStateChange")
  end
end }
o4451 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4451.SetStateValue(o4451.GetCalculated())
end, StartCalculate = function()
  o4451["Value"] = o4451.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4451.Value == L0) then
    o4451["Value"] = L0
    CallFunction(o4449, "ProcesseStateChange")
  end
end }
S_o4497 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_SuspendCollisionReaction(L0.Node)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4497, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4497, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o4497, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o4497, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4497, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o4497, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4497, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4497, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DipoledOut = function(L0, L1)
  o4503.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o4498.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4499.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4498 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4498.SetStateValue(o4498.GetCalculated())
end, StartCalculate = function()
  o4498["Value"] = o4498.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4498.Value == L0) then
    o4498["Value"] = L0
    CallFunction(o4497, "ProcesseStateChange")
  end
end }
o4499 = { [nil] = {}, GetCalculated = function()
  if not (o1888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4499.SetStateValue(o4499.GetCalculated())
end, StartCalculate = function()
  o4499["Value"] = o4499.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4499.Value == L0) then
    DelayedFunction(15, o4499, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4499.Value == L0) then
    o4499["Value"] = L0
    CallFunction(o4497, "ProcesseStateChange")
  end
end }
o4503 = { [nil] = {}, Start = function()
  o4503["Value"] = False
  o1873.StartCalculate()
  o5206.StartCalculate()
  o5254.StartCalculate()
  o5302.StartCalculate()
  o5350.StartCalculate()
  o6276.StartCalculate()
  o6324.StartCalculate()
  o6372.StartCalculate()
  o6420.StartCalculate()
  o6468.StartCalculate()
  o6516.StartCalculate()
  o6564.StartCalculate()
  o7171.StartCalculate()
  o7219.StartCalculate()
  o7267.StartCalculate()
  o7315.StartCalculate()
  o7363.StartCalculate()
  o7504.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4503.Value == L0) then
    o4503["Value"] = L0
    o1873.ReCalculate()
    o5206.ReCalculate()
    o5254.ReCalculate()
    o5302.ReCalculate()
    o5350.ReCalculate()
    o6276.ReCalculate()
    o6324.ReCalculate()
    o6372.ReCalculate()
    o6420.ReCalculate()
    o6468.ReCalculate()
    o6516.ReCalculate()
    o6564.ReCalculate()
    o7171.ReCalculate()
    o7219.ReCalculate()
    o7267.ReCalculate()
    o7315.ReCalculate()
    o7363.ReCalculate()
    o7504.ReCalculate()
  end
end }
S_o4545 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4545, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4545, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4545, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o4545, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4545, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4547.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4546.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4546 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4546.SetStateValue(o4546.GetCalculated())
end, StartCalculate = function()
  o4546["Value"] = o4546.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4546.Value == L0) then
    o4546["Value"] = L0
    CallFunction(o4545, "ProcesseStateChange")
  end
end }
o4547 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4547.SetStateValue(o4547.GetCalculated())
end, StartCalculate = function()
  o4547["Value"] = o4547.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4547.Value == L0) then
    o4547["Value"] = L0
    CallFunction(o4545, "ProcesseStateChange")
  end
end }
S_o4593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4593, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4593, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4593, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o4593, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4593, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4595.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4594.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4594 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4594.SetStateValue(o4594.GetCalculated())
end, StartCalculate = function()
  o4594["Value"] = o4594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4594.Value == L0) then
    o4594["Value"] = L0
    CallFunction(o4593, "ProcesseStateChange")
  end
end }
o4595 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4595.SetStateValue(o4595.GetCalculated())
end, StartCalculate = function()
  o4595["Value"] = o4595.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4595.Value == L0) then
    o4595["Value"] = L0
    CallFunction(o4593, "ProcesseStateChange")
  end
end }
S_o4641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o4641, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4641, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4643.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4642.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4642 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4642.SetStateValue(o4642.GetCalculated())
end, StartCalculate = function()
  o4642["Value"] = o4642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4642.Value == L0) then
    o4642["Value"] = L0
    CallFunction(o4641, "ProcesseStateChange")
  end
end }
o4643 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4643.SetStateValue(o4643.GetCalculated())
end, StartCalculate = function()
  o4643["Value"] = o4643.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4643.Value == L0) then
    o4643["Value"] = L0
    CallFunction(o4641, "ProcesseStateChange")
  end
end }
S_o4689 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4689, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4689, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4689, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4689, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4689, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4691.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4690.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4690 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4690.SetStateValue(o4690.GetCalculated())
end, StartCalculate = function()
  o4690["Value"] = o4690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4690.Value == L0) then
    o4690["Value"] = L0
    CallFunction(o4689, "ProcesseStateChange")
  end
end }
o4691 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4691.SetStateValue(o4691.GetCalculated())
end, StartCalculate = function()
  o4691["Value"] = o4691.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4691.Value == L0) then
    o4691["Value"] = L0
    CallFunction(o4689, "ProcesseStateChange")
  end
end }
S_o4737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4737, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4737, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4737, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4737, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4737, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4739.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4738.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4738 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4738.SetStateValue(o4738.GetCalculated())
end, StartCalculate = function()
  o4738["Value"] = o4738.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4738.Value == L0) then
    o4738["Value"] = L0
    CallFunction(o4737, "ProcesseStateChange")
  end
end }
o4739 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4739.SetStateValue(o4739.GetCalculated())
end, StartCalculate = function()
  o4739["Value"] = o4739.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4739.Value == L0) then
    o4739["Value"] = L0
    CallFunction(o4737, "ProcesseStateChange")
  end
end }
S_o4785 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4785, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4785, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4785, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o4785, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4785, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4787.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4786.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4786 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4786.SetStateValue(o4786.GetCalculated())
end, StartCalculate = function()
  o4786["Value"] = o4786.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4786.Value == L0) then
    o4786["Value"] = L0
    CallFunction(o4785, "ProcesseStateChange")
  end
end }
o4787 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4787.SetStateValue(o4787.GetCalculated())
end, StartCalculate = function()
  o4787["Value"] = o4787.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4787.Value == L0) then
    o4787["Value"] = L0
    CallFunction(o4785, "ProcesseStateChange")
  end
end }
S_o4833 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4833, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4833, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4833, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o4833, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4833, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4835.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4834.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4834 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4834.SetStateValue(o4834.GetCalculated())
end, StartCalculate = function()
  o4834["Value"] = o4834.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4834.Value == L0) then
    o4834["Value"] = L0
    CallFunction(o4833, "ProcesseStateChange")
  end
end }
o4835 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4835.SetStateValue(o4835.GetCalculated())
end, StartCalculate = function()
  o4835["Value"] = o4835.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4835.Value == L0) then
    o4835["Value"] = L0
    CallFunction(o4833, "ProcesseStateChange")
  end
end }
S_o4881 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4881, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4881, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4881, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o4881, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4881, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4883.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4882.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4882 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4882.SetStateValue(o4882.GetCalculated())
end, StartCalculate = function()
  o4882["Value"] = o4882.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4882.Value == L0) then
    o4882["Value"] = L0
    CallFunction(o4881, "ProcesseStateChange")
  end
end }
o4883 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4883.SetStateValue(o4883.GetCalculated())
end, StartCalculate = function()
  o4883["Value"] = o4883.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4883.Value == L0) then
    o4883["Value"] = L0
    CallFunction(o4881, "ProcesseStateChange")
  end
end }
S_o4929 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4929, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4932.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4932 = { [nil] = {}, Start = function()
  o4932["Value"] = False
  o1874.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4932.Value == L0) then
    o4932["Value"] = L0
    o1874.ReCalculate()
  end
end }
S_o4934 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4934, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4937.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4937 = { [nil] = {}, Start = function()
  o4937["Value"] = False
  o1875.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4937.Value == L0) then
    o4937["Value"] = L0
    o1875.ReCalculate()
  end
end }
S_o4939 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4939, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4944 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4944, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4944, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4944, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 20, "Code4")
  else
    CallFunction(o4944, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4944, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4946.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4945.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4945 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4945.SetStateValue(o4945.GetCalculated())
end, StartCalculate = function()
  o4945["Value"] = o4945.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4945.Value == L0) then
    o4945["Value"] = L0
    CallFunction(o4944, "ProcesseStateChange")
  end
end }
o4946 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4946.SetStateValue(o4946.GetCalculated())
end, StartCalculate = function()
  o4946["Value"] = o4946.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4946.Value == L0) then
    o4946["Value"] = L0
    CallFunction(o4944, "ProcesseStateChange")
  end
end }
S_o4983 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4983, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4983, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4983, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 20, "Code4")
  else
    CallFunction(o4983, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o4983, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4985.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o4984.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4984 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
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
    CallFunction(o4983, "ProcesseStateChange")
  end
end }
o4985 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
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
    CallFunction(o4983, "ProcesseStateChange")
  end
end }
S_o5022 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5022, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5022, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5022, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 20, "Code4")
  else
    CallFunction(o5022, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5022, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5024.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5023.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5023 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5023.SetStateValue(o5023.GetCalculated())
end, StartCalculate = function()
  o5023["Value"] = o5023.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5023.Value == L0) then
    o5023["Value"] = L0
    CallFunction(o5022, "ProcesseStateChange")
  end
end }
o5024 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5024.SetStateValue(o5024.GetCalculated())
end, StartCalculate = function()
  o5024["Value"] = o5024.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5024.Value == L0) then
    o5024["Value"] = L0
    CallFunction(o5022, "ProcesseStateChange")
  end
end }
S_o5061 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5061, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5061, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5061, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5061, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5061, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5063.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5062.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5062 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5062.SetStateValue(o5062.GetCalculated())
end, StartCalculate = function()
  o5062["Value"] = o5062.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5062.Value == L0) then
    o5062["Value"] = L0
    CallFunction(o5061, "ProcesseStateChange")
  end
end }
o5063 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5063.SetStateValue(o5063.GetCalculated())
end, StartCalculate = function()
  o5063["Value"] = o5063.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5063.Value == L0) then
    o5063["Value"] = L0
    CallFunction(o5061, "ProcesseStateChange")
  end
end }
S_o5109 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5109, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5109, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5109, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o5109, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5109, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5111.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5110.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5110 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5110.SetStateValue(o5110.GetCalculated())
end, StartCalculate = function()
  o5110["Value"] = o5110.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5110.Value == L0) then
    o5110["Value"] = L0
    CallFunction(o5109, "ProcesseStateChange")
  end
end }
o5111 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5111.SetStateValue(o5111.GetCalculated())
end, StartCalculate = function()
  o5111["Value"] = o5111.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5111.Value == L0) then
    o5111["Value"] = L0
    CallFunction(o5109, "ProcesseStateChange")
  end
end }
S_o5157 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5157, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5157, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5157, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "/InGameSequences/Navigation/WngPosition_1", "Code4")
  else
    CallFunction(o5157, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5157, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5159.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5158.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5158 = { [nil] = {}, GetCalculated = function()
  if not (o1881.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5158.SetStateValue(o5158.GetCalculated())
end, StartCalculate = function()
  o5158["Value"] = o5158.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5158.Value == L0) then
    o5158["Value"] = L0
    CallFunction(o5157, "ProcesseStateChange")
  end
end }
o5159 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5159.SetStateValue(o5159.GetCalculated())
end, StartCalculate = function()
  o5159["Value"] = o5159.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5159.Value == L0) then
    o5159["Value"] = L0
    CallFunction(o5157, "ProcesseStateChange")
  end
end }
S_o5205 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5205, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5205, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5205, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_1", "Code4")
  else
    CallFunction(o5205, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5205, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5207.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5206.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5206 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5206.SetStateValue(o5206.GetCalculated())
end, StartCalculate = function()
  o5206["Value"] = o5206.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5206.Value == L0) then
    DelayedFunction(22, o5206, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5206.Value == L0) then
    o5206["Value"] = L0
    CallFunction(o5205, "ProcesseStateChange")
  end
end }
o5207 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5207.SetStateValue(o5207.GetCalculated())
end, StartCalculate = function()
  o5207["Value"] = o5207.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5207.Value == L0) then
    o5207["Value"] = L0
    CallFunction(o5205, "ProcesseStateChange")
  end
end }
S_o5253 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5253, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5253, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5253, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_2", "Code4")
  else
    CallFunction(o5253, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5253, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5255.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5254.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5254 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5254.SetStateValue(o5254.GetCalculated())
end, StartCalculate = function()
  o5254["Value"] = o5254.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5254.Value == L0) then
    DelayedFunction(15, o5254, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5254.Value == L0) then
    o5254["Value"] = L0
    CallFunction(o5253, "ProcesseStateChange")
  end
end }
o5255 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5255.SetStateValue(o5255.GetCalculated())
end, StartCalculate = function()
  o5255["Value"] = o5255.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5255.Value == L0) then
    o5255["Value"] = L0
    CallFunction(o5253, "ProcesseStateChange")
  end
end }
S_o5301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5301, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5301, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5301, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_3", "Code4")
  else
    CallFunction(o5301, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5301, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5303.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5302.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5302 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5302.SetStateValue(o5302.GetCalculated())
end, StartCalculate = function()
  o5302["Value"] = o5302.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5302.Value == L0) then
    DelayedFunction(30, o5302, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5302.Value == L0) then
    o5302["Value"] = L0
    CallFunction(o5301, "ProcesseStateChange")
  end
end }
o5303 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5303.SetStateValue(o5303.GetCalculated())
end, StartCalculate = function()
  o5303["Value"] = o5303.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5303.Value == L0) then
    o5303["Value"] = L0
    CallFunction(o5301, "ProcesseStateChange")
  end
end }
S_o5349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "/Scenario_Dynamic/Navigation/FightOneArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/RespawnPosition_4", "Code4")
  else
    CallFunction(o5349, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o5349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5351.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o5350.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5350 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5350.SetStateValue(o5350.GetCalculated())
end, StartCalculate = function()
  o5350["Value"] = o5350.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5350.Value == L0) then
    DelayedFunction(2, o5350, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5350.Value == L0) then
    o5350["Value"] = L0
    CallFunction(o5349, "ProcesseStateChange")
  end
end }
o5351 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5351.SetStateValue(o5351.GetCalculated())
end, StartCalculate = function()
  o5351["Value"] = o5351.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5351.Value == L0) then
    o5351["Value"] = L0
    CallFunction(o5349, "ProcesseStateChange")
  end
end }
S_o5397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5397, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5397, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5397, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_1", 1, 1 } }("Code5")
  else
    CallFunction(o5397, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5397, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5400.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5400 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5400.SetStateValue(o5400.GetCalculated())
end, StartCalculate = function()
  o5400["Value"] = o5400.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5400.Value == L0) then
    o5400["Value"] = L0
    CallFunction(o5397, "ProcesseStateChange")
  end
end }
S_o5446 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5446, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5446, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5446, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5446, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_2", 1, 1 } }("Code5")
  else
    CallFunction(o5446, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5446, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5449.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5449 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5449.SetStateValue(o5449.GetCalculated())
end, StartCalculate = function()
  o5449["Value"] = o5449.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5449.Value == L0) then
    o5449["Value"] = L0
    CallFunction(o5446, "ProcesseStateChange")
  end
end }
S_o5495 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5495, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5495, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5495, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5495, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_3", 1, 1 } }("Code5")
  else
    CallFunction(o5495, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5495, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5498.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5498 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5498.SetStateValue(o5498.GetCalculated())
end, StartCalculate = function()
  o5498["Value"] = o5498.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5498.Value == L0) then
    o5498["Value"] = L0
    CallFunction(o5495, "ProcesseStateChange")
  end
end }
S_o5544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5544, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5544, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5544, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5544, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_4", 1, 1 } }("Code5")
  else
    CallFunction(o5544, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5544, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5547.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5547 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5547.SetStateValue(o5547.GetCalculated())
end, StartCalculate = function()
  o5547["Value"] = o5547.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5547.Value == L0) then
    o5547["Value"] = L0
    CallFunction(o5544, "ProcesseStateChange")
  end
end }
S_o5593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5593, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5593, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5593, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5593, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_5", 1, 1 } }("Code5")
  else
    CallFunction(o5593, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5593, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5596.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5596 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5596.SetStateValue(o5596.GetCalculated())
end, StartCalculate = function()
  o5596["Value"] = o5596.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5596.Value == L0) then
    o5596["Value"] = L0
    CallFunction(o5593, "ProcesseStateChange")
  end
end }
S_o5642 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5642, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5642, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5642, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5642, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_6", 1, 1 } }("Code5")
  else
    CallFunction(o5642, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5642, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5645.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5645 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5645.SetStateValue(o5645.GetCalculated())
end, StartCalculate = function()
  o5645["Value"] = o5645.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5645.Value == L0) then
    o5645["Value"] = L0
    CallFunction(o5642, "ProcesseStateChange")
  end
end }
S_o5691 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5691, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5691, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5691, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5691, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_7", 1, 1 } }("Code5")
  else
    CallFunction(o5691, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5691, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5694.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5694 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5694.SetStateValue(o5694.GetCalculated())
end, StartCalculate = function()
  o5694["Value"] = o5694.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5694.Value == L0) then
    o5694["Value"] = L0
    CallFunction(o5691, "ProcesseStateChange")
  end
end }
S_o5740 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5740, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5740, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5740, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5740, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_1", 1, 1 } }("Code5")
  else
    CallFunction(o5740, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5740, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5743.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5743 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5743.SetStateValue(o5743.GetCalculated())
end, StartCalculate = function()
  o5743["Value"] = o5743.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5743.Value == L0) then
    o5743["Value"] = L0
    CallFunction(o5740, "ProcesseStateChange")
  end
end }
S_o5789 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5789, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5789, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5789, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5789, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_2", 1, 1 } }("Code5")
  else
    CallFunction(o5789, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5789, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5792.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5792 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5792.SetStateValue(o5792.GetCalculated())
end, StartCalculate = function()
  o5792["Value"] = o5792.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5792.Value == L0) then
    o5792["Value"] = L0
    CallFunction(o5789, "ProcesseStateChange")
  end
end }
S_o5838 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5838, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5838, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5838, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5838, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_3", 1, 1 } }("Code5")
  else
    CallFunction(o5838, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5838, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5841.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5841 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5841.SetStateValue(o5841.GetCalculated())
end, StartCalculate = function()
  o5841["Value"] = o5841.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5841.Value == L0) then
    o5841["Value"] = L0
    CallFunction(o5838, "ProcesseStateChange")
  end
end }
S_o5887 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5887, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5887, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5887, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5887, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_4", 1, 1 } }("Code5")
  else
    CallFunction(o5887, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5887, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5890.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5890 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5890.SetStateValue(o5890.GetCalculated())
end, StartCalculate = function()
  o5890["Value"] = o5890.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5890.Value == L0) then
    o5890["Value"] = L0
    CallFunction(o5887, "ProcesseStateChange")
  end
end }
S_o5936 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5936, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5936, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5936, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5936, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_5", 1, 1 } }("Code5")
  else
    CallFunction(o5936, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5936, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5939.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5939 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5939.SetStateValue(o5939.GetCalculated())
end, StartCalculate = function()
  o5939["Value"] = o5939.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5939.Value == L0) then
    o5939["Value"] = L0
    CallFunction(o5936, "ProcesseStateChange")
  end
end }
S_o5985 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5985, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5985, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5985, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5985, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_6", 1, 1 } }("Code5")
  else
    CallFunction(o5985, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o5985, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5988.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o5988 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5988.SetStateValue(o5988.GetCalculated())
end, StartCalculate = function()
  o5988["Value"] = o5988.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5988.Value == L0) then
    o5988["Value"] = L0
    CallFunction(o5985, "ProcesseStateChange")
  end
end }
S_o6034 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6034, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6034, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6034, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o6034, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/SchaxPath_7", 1, 1 } }("Code5")
  else
    CallFunction(o6034, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "cra_magmaeater_1", "E", "", "", 1, "Code6")
  else
    CallFunction(o6034, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6037.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6037 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6037.SetStateValue(o6037.GetCalculated())
end, StartCalculate = function()
  o6037["Value"] = o6037.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6037.Value == L0) then
    o6037["Value"] = L0
    CallFunction(o6034, "ProcesseStateChange")
  end
end }
S_o6083 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6083, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6083, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6083, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o6083, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6088.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6085.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6085 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6085.SetStateValue(o6085.GetCalculated())
end, StartCalculate = function()
  o6085["Value"] = o6085.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6085.Value == L0) then
    o6085["Value"] = L0
    CallFunction(o6083, "ProcesseStateChange")
  end
end }
o6088 = { [nil] = {}, Start = function()
  o6088["Value"] = False
  o1885.StartCalculate()
  o1886.StartCalculate()
  o1887.StartCalculate()
  o1888.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6088.Value == L0) then
    o6088["Value"] = L0
    o1885.ReCalculate()
    o1886.ReCalculate()
    o1887.ReCalculate()
    o1888.ReCalculate()
  end
end }
S_o6131 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6131, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6131, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6131, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o6131, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6136.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6133.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6133 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6133.SetStateValue(o6133.GetCalculated())
end, StartCalculate = function()
  o6133["Value"] = o6133.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6133.Value == L0) then
    o6133["Value"] = L0
    CallFunction(o6131, "ProcesseStateChange")
  end
end }
o6136 = { [nil] = {}, Start = function()
  o6136["Value"] = False
  o1886.StartCalculate()
  o1887.StartCalculate()
  o1888.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6136.Value == L0) then
    o6136["Value"] = L0
    o1886.ReCalculate()
    o1887.ReCalculate()
    o1888.ReCalculate()
  end
end }
S_o6179 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6179, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6179, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6179, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o6179, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6184.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6181.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6181 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6181.SetStateValue(o6181.GetCalculated())
end, StartCalculate = function()
  o6181["Value"] = o6181.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6181.Value == L0) then
    o6181["Value"] = L0
    CallFunction(o6179, "ProcesseStateChange")
  end
end }
o6184 = { [nil] = {}, Start = function()
  o6184["Value"] = False
  o1887.StartCalculate()
  o1888.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6184.Value == L0) then
    o6184["Value"] = L0
    o1887.ReCalculate()
    o1888.ReCalculate()
  end
end }
S_o6227 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6227, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6227, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6227, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o6227, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6232.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6229.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6229 = { [nil] = {}, GetCalculated = function()
  if not (o1884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6229.SetStateValue(o6229.GetCalculated())
end, StartCalculate = function()
  o6229["Value"] = o6229.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6229.Value == L0) then
    o6229["Value"] = L0
    CallFunction(o6227, "ProcesseStateChange")
  end
end }
o6232 = { [nil] = {}, Start = function()
  o6232["Value"] = False
  o1888.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6232.Value == L0) then
    o6232["Value"] = L0
    o1888.ReCalculate()
  end
end }
S_o6275 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6275, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6275, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6275, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_1", "Code4")
  else
    CallFunction(o6275, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6275, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6277.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6276.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6276 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6276.SetStateValue(o6276.GetCalculated())
end, StartCalculate = function()
  o6276["Value"] = o6276.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6276.Value == L0) then
    DelayedFunction(1, o6276, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6276.Value == L0) then
    o6276["Value"] = L0
    CallFunction(o6275, "ProcesseStateChange")
  end
end }
o6277 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6277.SetStateValue(o6277.GetCalculated())
end, StartCalculate = function()
  o6277["Value"] = o6277.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6277.Value == L0) then
    DelayedFunction(10, o6277, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6277.Value == L0) then
    o6277["Value"] = L0
    CallFunction(o6275, "ProcesseStateChange")
  end
end }
S_o6323 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6323, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6323, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6323, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_2", "Code4")
  else
    CallFunction(o6323, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6323, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6325.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6324.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6324 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6324.SetStateValue(o6324.GetCalculated())
end, StartCalculate = function()
  o6324["Value"] = o6324.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6324.Value == L0) then
    DelayedFunction(13, o6324, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6324.Value == L0) then
    o6324["Value"] = L0
    CallFunction(o6323, "ProcesseStateChange")
  end
end }
o6325 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6325.SetStateValue(o6325.GetCalculated())
end, StartCalculate = function()
  o6325["Value"] = o6325.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6325.Value == L0) then
    DelayedFunction(10, o6325, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6325.Value == L0) then
    o6325["Value"] = L0
    CallFunction(o6323, "ProcesseStateChange")
  end
end }
S_o6371 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6371, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6371, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6371, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_3", "Code4")
  else
    CallFunction(o6371, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6371, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6373.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6372.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6372 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6372.SetStateValue(o6372.GetCalculated())
end, StartCalculate = function()
  o6372["Value"] = o6372.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6372.Value == L0) then
    DelayedFunction(20, o6372, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6372.Value == L0) then
    o6372["Value"] = L0
    CallFunction(o6371, "ProcesseStateChange")
  end
end }
o6373 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6373.SetStateValue(o6373.GetCalculated())
end, StartCalculate = function()
  o6373["Value"] = o6373.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6373.Value == L0) then
    DelayedFunction(10, o6373, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6373.Value == L0) then
    o6373["Value"] = L0
    CallFunction(o6371, "ProcesseStateChange")
  end
end }
S_o6419 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6419, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6419, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6419, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_4", "Code4")
  else
    CallFunction(o6419, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6419, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6421.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6420.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6420 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6420.SetStateValue(o6420.GetCalculated())
end, StartCalculate = function()
  o6420["Value"] = o6420.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6420.Value == L0) then
    DelayedFunction(5, o6420, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6420.Value == L0) then
    o6420["Value"] = L0
    CallFunction(o6419, "ProcesseStateChange")
  end
end }
o6421 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6421.SetStateValue(o6421.GetCalculated())
end, StartCalculate = function()
  o6421["Value"] = o6421.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6421.Value == L0) then
    DelayedFunction(10, o6421, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6421.Value == L0) then
    o6421["Value"] = L0
    CallFunction(o6419, "ProcesseStateChange")
  end
end }
S_o6467 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6467, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6467, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6467, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_1", "Code4")
  else
    CallFunction(o6467, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6467, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6469.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6468.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6468 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6468.SetStateValue(o6468.GetCalculated())
end, StartCalculate = function()
  o6468["Value"] = o6468.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6468.Value == L0) then
    DelayedFunction(17, o6468, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6468.Value == L0) then
    o6468["Value"] = L0
    CallFunction(o6467, "ProcesseStateChange")
  end
end }
o6469 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6469.SetStateValue(o6469.GetCalculated())
end, StartCalculate = function()
  o6469["Value"] = o6469.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6469.Value == L0) then
    DelayedFunction(10, o6469, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6469.Value == L0) then
    o6469["Value"] = L0
    CallFunction(o6467, "ProcesseStateChange")
  end
end }
S_o6515 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6515, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6515, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6515, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_2", "Code4")
  else
    CallFunction(o6515, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6515, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6517.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6516.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6516 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6516.SetStateValue(o6516.GetCalculated())
end, StartCalculate = function()
  o6516["Value"] = o6516.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6516.Value == L0) then
    o6516["Value"] = L0
    CallFunction(o6515, "ProcesseStateChange")
  end
end }
o6517 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6517.SetStateValue(o6517.GetCalculated())
end, StartCalculate = function()
  o6517["Value"] = o6517.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6517.Value == L0) then
    DelayedFunction(10, o6517, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6517.Value == L0) then
    o6517["Value"] = L0
    CallFunction(o6515, "ProcesseStateChange")
  end
end }
S_o6563 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6563, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6563, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o6563, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "/Scenario_Dynamic/Navigation/CityFightArea", "E", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_3", "Code4")
  else
    CallFunction(o6563, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o6563, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6565.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o6564.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6564 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6564.SetStateValue(o6564.GetCalculated())
end, StartCalculate = function()
  o6564["Value"] = o6564.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6564.Value == L0) then
    DelayedFunction(6, o6564, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6564.Value == L0) then
    o6564["Value"] = L0
    CallFunction(o6563, "ProcesseStateChange")
  end
end }
o6565 = { [nil] = {}, GetCalculated = function()
  if not (o1880.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6565.SetStateValue(o6565.GetCalculated())
end, StartCalculate = function()
  o6565["Value"] = o6565.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6565.Value == L0) then
    DelayedFunction(10, o6565, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6565.Value == L0) then
    o6565["Value"] = L0
    CallFunction(o6563, "ProcesseStateChange")
  end
end }
S_o6611 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6611, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6611, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6611, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 2, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "E", "", "", "", 0, "Code4")
  else
    CallFunction(o6611, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6611, "Code5")
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
      if not (o6612.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6612 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6612.SetStateValue(o6612.GetCalculated())
end, StartCalculate = function()
  o6612["Value"] = o6612.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6612.Value == L0) then
    o6612["Value"] = L0
    CallFunction(o6611, "ProcesseStateChange")
  end
end }
S_o6659 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6659, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6659, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6659, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1833, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6659, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6659, "Code5")
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
      if not (o6660.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6660 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6660.SetStateValue(o6660.GetCalculated())
end, StartCalculate = function()
  o6660["Value"] = o6660.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6660.Value == L0) then
    o6660["Value"] = L0
    CallFunction(o6659, "ProcesseStateChange")
  end
end }
S_o6707 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6707, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6707, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6707, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1833, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6707, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6707, "Code5")
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
      if not (o6708.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6708 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6708.SetStateValue(o6708.GetCalculated())
end, StartCalculate = function()
  o6708["Value"] = o6708.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6708.Value == L0) then
    o6708["Value"] = L0
    CallFunction(o6707, "ProcesseStateChange")
  end
end }
S_o6755 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6755, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6755, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6755, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1833, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6755, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6755, "Code5")
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
      if not (o6756.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6756 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6756.SetStateValue(o6756.GetCalculated())
end, StartCalculate = function()
  o6756["Value"] = o6756.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6756.Value == L0) then
    o6756["Value"] = L0
    CallFunction(o6755, "ProcesseStateChange")
  end
end }
S_o6803 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6803, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6803, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6803, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1833, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6803, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6803, "Code5")
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
      if not (o6804.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6804 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6804.SetStateValue(o6804.GetCalculated())
end, StartCalculate = function()
  o6804["Value"] = o6804.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6804.Value == L0) then
    o6804["Value"] = L0
    CallFunction(o6803, "ProcesseStateChange")
  end
end }
S_o6851 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6851, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6851, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6851, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1833, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6851, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6851, "Code5")
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
      if not (o6852.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6852 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6852.SetStateValue(o6852.GetCalculated())
end, StartCalculate = function()
  o6852["Value"] = o6852.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6852.Value == L0) then
    o6852["Value"] = L0
    CallFunction(o6851, "ProcesseStateChange")
  end
end }
S_o6899 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6899, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6899, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6899, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1835, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6899, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6899, "Code5")
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
      if not (o6900.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6900 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6900.SetStateValue(o6900.GetCalculated())
end, StartCalculate = function()
  o6900["Value"] = o6900.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6900.Value == L0) then
    o6900["Value"] = L0
    CallFunction(o6899, "ProcesseStateChange")
  end
end }
S_o6947 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6947, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6947, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6947, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1835, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6947, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6947, "Code5")
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
      if not (o6948.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6948 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6948.SetStateValue(o6948.GetCalculated())
end, StartCalculate = function()
  o6948["Value"] = o6948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6948.Value == L0) then
    o6948["Value"] = L0
    CallFunction(o6947, "ProcesseStateChange")
  end
end }
S_o6995 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6995, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6995, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6995, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1835, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o6995, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o6995, "Code5")
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
      if not (o6996.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6996 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6996.SetStateValue(o6996.GetCalculated())
end, StartCalculate = function()
  o6996["Value"] = o6996.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6996.Value == L0) then
    o6996["Value"] = L0
    CallFunction(o6995, "ProcesseStateChange")
  end
end }
S_o7043 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7043, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7043, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7043, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1835, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o7043, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7043, "Code5")
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
      if not (o7044.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7044 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7044.SetStateValue(o7044.GetCalculated())
end, StartCalculate = function()
  o7044["Value"] = o7044.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7044.Value == L0) then
    o7044["Value"] = L0
    CallFunction(o7043, "ProcesseStateChange")
  end
end }
S_o7091 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7091, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7091, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7091, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunPatrol(L0, 2, { {}, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol" }, 20, o1835, "/Scenario_Dynamic/Navigation/can_PatrolArea_1_patrol", 350, "E", "", "", "", 40, 1, "Code4")
  else
    CallFunction(o7091, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o7091, "Code5")
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
      if not (o7092.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7092 = { [nil] = {}, GetCalculated = function()
  if not (o1890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7092.SetStateValue(o7092.GetCalculated())
end, StartCalculate = function()
  o7092["Value"] = o7092.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7092.Value == L0) then
    o7092["Value"] = L0
    CallFunction(o7091, "ProcesseStateChange")
  end
end }
S_o7139 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6083.Node)
  CallFunction(o7139, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7144 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6131.Node)
  CallFunction(o7144, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7149 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6179.Node)
  CallFunction(o7149, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7154 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6227.Node)
  CallFunction(o7154, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7159 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o7456.Node)
  CallFunction(o7159, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7164 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4497.Node)
  CallFunction(o7164, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7169, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7169, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7174.SetStateValue(L1)
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
  if not (o4503.Value ~= True) then
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
    DelayedFunction(15, o7171, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7171.Value == L0) then
    o7171["Value"] = L0
    CallFunction(o7169, "ProcesseStateChange")
  end
end }
o7174 = { [nil] = {}, Start = function()
  o7174["Value"] = False
  o1889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7174.Value == L0) then
    o7174["Value"] = L0
    o1889.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7217, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7217, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7222.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7219.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7219 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7219.SetStateValue(o7219.GetCalculated())
end, StartCalculate = function()
  o7219["Value"] = o7219.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7219.Value == L0) then
    DelayedFunction(20, o7219, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7219.Value == L0) then
    o7219["Value"] = L0
    CallFunction(o7217, "ProcesseStateChange")
  end
end }
o7222 = { [nil] = {}, Start = function()
  o7222["Value"] = False
  o1889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7222.Value == L0) then
    o7222["Value"] = L0
    o1889.ReCalculate()
  end
end }
S_o7265 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7265, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7265, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7265, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7265, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7270.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7267.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7267 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7267.SetStateValue(o7267.GetCalculated())
end, StartCalculate = function()
  o7267["Value"] = o7267.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7267.Value == L0) then
    DelayedFunction(12, o7267, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7267.Value == L0) then
    o7267["Value"] = L0
    CallFunction(o7265, "ProcesseStateChange")
  end
end }
o7270 = { [nil] = {}, Start = function()
  o7270["Value"] = False
  o1889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7270.Value == L0) then
    o7270["Value"] = L0
    o1889.ReCalculate()
  end
end }
S_o7313 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7313, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7313, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7313, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7313, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7318.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7315.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7315 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7315.SetStateValue(o7315.GetCalculated())
end, StartCalculate = function()
  o7315["Value"] = o7315.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7315.Value == L0) then
    DelayedFunction(22, o7315, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7315.Value == L0) then
    o7315["Value"] = L0
    CallFunction(o7313, "ProcesseStateChange")
  end
end }
o7318 = { [nil] = {}, Start = function()
  o7318["Value"] = False
  o1889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7318.Value == L0) then
    o7318["Value"] = L0
    o1889.ReCalculate()
  end
end }
S_o7361 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7361, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7361, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7361, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "/Scenario_Dynamic/Navigation/HoleMap", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o7361, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o7366.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7363.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7363 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7363.SetStateValue(o7363.GetCalculated())
end, StartCalculate = function()
  o7363["Value"] = o7363.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7363.Value == L0) then
    DelayedFunction(5, o7363, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7363.Value == L0) then
    o7363["Value"] = L0
    CallFunction(o7361, "ProcesseStateChange")
  end
end }
o7366 = { [nil] = {}, Start = function()
  o7366["Value"] = False
  o1889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7366.Value == L0) then
    o7366["Value"] = L0
    o1889.ReCalculate()
  end
end }
S_o7409 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7409, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7409, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7409, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o7456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7456, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7456, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o7503 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7503, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7503, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7503, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardAreaRespawn(L0, 0, "/Scenario_Dynamic/Navigation/CamMeshFakeArea", "/Scenario_Dynamic/Navigation/CamMeshFakeArea", "/Scenario_Dynamic/Navigation/CamMeshFakeArea", "", "", "", "", 1, "/Scenario_Dynamic/Navigation/Position_5", "Code4")
  else
    CallFunction(o7503, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7505.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o7504.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7504 = { [nil] = {}, GetCalculated = function()
  if not (o4503.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7504.SetStateValue(o7504.GetCalculated())
end, StartCalculate = function()
  o7504["Value"] = o7504.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7504.Value == L0) then
    o7504["Value"] = L0
    CallFunction(o7503, "ProcesseStateChange")
  end
end }
o7505 = { [nil] = {}, GetCalculated = function()
  if not (o1852.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7505.SetStateValue(o7505.GetCalculated())
end, StartCalculate = function()
  o7505["Value"] = o7505.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7505.Value == L0) then
    o7505["Value"] = L0
    CallFunction(o7503, "ProcesseStateChange")
  end
end }
S_o7551 = { [nil] = {}, Start = function(L0)

end }
S_o7552 = { [nil] = {}, Start = function(L0)

end }
o7555 = FormationLib.CreateFormation("Triangle", "", "", "", 50, 50)
o7556 = FormationLib.CreateFormation("Claw", "", "", "", 30, 30)
S_o7557 = { [nil] = {}, Start = function(L0)

end }
S_o7558 = { [nil] = {}, Start = function(L0)

end }
S_o7559 = { [nil] = {}, Start = function(L0)

end }
S_o7560 = { [nil] = {}, Start = function(L0)

end }
S_o7561 = { [nil] = {}, Start = function(L0)

end }
S_o7562 = { [nil] = {}, Start = function(L0)

end }
S_o7563 = { [nil] = {}, Start = function(L0)

end }
S_o7564 = { [nil] = {}, Start = function(L0)

end }
S_o7565 = { [nil] = {}, Start = function(L0)

end }
S_o7566 = { [nil] = {}, Start = function(L0)

end }
S_o7567 = { [nil] = {}, Start = function(L0)

end }
S_o7568 = { [nil] = {}, Start = function(L0)

end }
S_o7569 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 2)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_1")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_chaka", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o7569, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code8")
  else
    CallFunction(o7569, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o1865.Node, o1865.Node, 1017)
  CallFunction(o7569, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code10")
  else
    CallFunction(o7569, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  CallFunction(o7569, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code12")
  else
    CallFunction(o7569, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_Cut(L0.Node, 1)
  CallFunction(o7569, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o7569, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  o1870.SetStateValue(True)
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o4929.Node)
  CallFunction(o1919, "Code5")
  CallFunction(o1967, "Code5")
  CallFunction(o2015, "Code5")
  CallFunction(o2063, "Code5")
  CallFunction(o2111, "Code5")
  SED_SetTaskTextKey(1323, -1, -1)
  CallFunction(o7569, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7575 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o7554, o7555, "/InGameSequences/Navigation/WngPath_1")
  CallFunction(o7575, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7554, o7555, "/InGameSequences/Navigation/WngPath_1", "pos_1", "pos_3", 1, 1, "Code2")
  else
    CallFunction(o7575, "Code2")
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
S_o7577 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o7553, o7556, "/InGameSequences/Navigation/PlaPath_1")
  CallFunction(o7577, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7553, o7556, "/InGameSequences/Navigation/PlaPath_1", "pos_1", "pos_4", 0.85, 1, "Code2")
  else
    CallFunction(o7577, "Code2")
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
S_o7579 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7579, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 2)
  o1890.SetStateValue(True)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/CamPosition_1")
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/CamPosition_4", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o7579, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code9")
  else
    CallFunction(o7579, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_2", 3, "MMMN", 0)
  CallFunction(o7579, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code11")
  else
    CallFunction(o7579, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SendRadioMessageTake(o1865.Node, o1865.Node, 1020)
  CallFunction(o7579, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code13")
  else
    CallFunction(o7579, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/CamPosition_3", 4, "MMMN", 0)
  CallFunction(o7579, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code15")
  else
    CallFunction(o7579, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o7553, o7556, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o7579, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code18")
  else
    CallFunction(o7579, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1324, -1, -1)
  Game_SetWayPoint(GetGameNode(), o7164.Node)
  CallFunction(o7579, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code22")
  else
    CallFunction(o7579, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SendRadioMessageTake(o2159.Node, o1865.Node, 1021)
  SendRadioMessageTake(o1865.Node, o1865.Node, 1022)
  SendRadioMessageTake(o2255.Node, o1865.Node, 1023)
  CallFunction(o7579, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 50, "Code26")
  else
    CallFunction(o7579, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  SendRadioMessageTake(o2255.Node, o1865.Node, 1024)
  Game_SetWayPoint(GetGameNode(), o7159.Node)
  o1878.SetStateValue(True)
  CallFunction(o7579, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7580.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7580 = { [nil] = {}, GetCalculated = function()
  if not (o1846.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7580.SetStateValue(o7580.GetCalculated())
end, StartCalculate = function()
  o7580["Value"] = o7580.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7580.Value == L0) then
    o7580["Value"] = L0
    CallFunction(o7579, "ProcesseStateChange")
  end
end }
S_o7589 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7589, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CamPosition_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/CamPosition_6", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 0.35, 0.35)
  Camera_Cut(L0.Node, 12)
  CallFunction(o7589, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code8")
  else
    CallFunction(o7589, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o2353.Node, o1865.Node, 1026)
  CallFunction(o7589, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code10")
  else
    CallFunction(o7589, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  o1879.SetStateValue(True)
  CallFunction(o7589, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code12")
  else
    CallFunction(o7589, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_Cut(L0.Node, 1)
  o1880.SetStateValue(True)
  CallFunction(o7589, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code15")
  else
    CallFunction(o7589, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  FormationLib.PlaceFormationPath(o7553, o7556, "/InGameSequences/Navigation/PlayerPath_2")
  Director_EndCutscene(L0.Node)
  CallFunction(o7589, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code18")
  else
    CallFunction(o7589, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  SendRadioMessageTake(o1865.Node, o1865.Node, 1028)
  SendRadioMessageTake(o1865.Node, o1865.Node, 1029)
  SendRadioMessageTake(o1865.Node, o1865.Node, 1030)
  CallFunction(o7589, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 25, "Code22")
  else
    CallFunction(o7589, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SendRadioMessageTake(o2303.Node, o1865.Node, 1031)
  SED_SetTaskTextKey(1325, -1, -1)
  CallFunction(o2303, "Code7")
  CallFunction(o7589, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code26")
  else
    CallFunction(o7589, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  o1884.SetStateValue(True)
  CallFunction(o7589, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code28")
  else
    CallFunction(o7589, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Game_SetWayPoint(GetGameNode(), o7139.Node)
  CallFunction(o7589, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 21, "Code30")
  else
    CallFunction(o7589, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  SendRadioMessageTake(o2303.Node, o1865.Node, 1032)
  SendRadioMessageTake(o2255.Node, o1865.Node, 1033)
  CallFunction(o7589, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7590.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7590 = { [nil] = {}, GetCalculated = function()
  if not (o1877.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7590.SetStateValue(o7590.GetCalculated())
end, StartCalculate = function()
  o7590["Value"] = o7590.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7590.Value == L0) then
    DelayedFunction(2, o7590, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7590.Value == L0) then
    o7590["Value"] = L0
    CallFunction(o7589, "ProcesseStateChange")
  end
end }
S_o7601 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7601, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o1826, o1827, "/InGameSequences/Navigation/SchaxPath_3")
  CallFunction(o7601, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o1826, o1827, "/InGameSequences/Navigation/SchaxPath_3", "pos_1", "pos_3", 0.7, 1, "Code3")
  else
    CallFunction(o7601, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7602.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7602 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7602.SetStateValue(o7602.GetCalculated())
end, StartCalculate = function()
  o7602["Value"] = o7602.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7602.Value == L0) then
    DelayedFunction(1e-05, o7602, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7602.Value == L0) then
    o7602["Value"] = L0
    CallFunction(o7601, "ProcesseStateChange")
  end
end }
S_o7604 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7604, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o1824, o1825, "/InGameSequences/Navigation/SchaxPath_2")
  CallFunction(o7604, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o1824, o1825, "/InGameSequences/Navigation/SchaxPath_2", "pos_1", "pos_3", 0.7, 1, "Code3")
  else
    CallFunction(o7604, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7605.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7605 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7605.SetStateValue(o7605.GetCalculated())
end, StartCalculate = function()
  o7605["Value"] = o7605.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7605.Value == L0) then
    DelayedFunction(1e-05, o7605, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7605.Value == L0) then
    o7605["Value"] = L0
    CallFunction(o7604, "ProcesseStateChange")
  end
end }
S_o7607 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7607, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o1822, o1823, "/InGameSequences/Navigation/SchaxPath_1")
  CallFunction(o7607, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o1822, o1823, "/InGameSequences/Navigation/SchaxPath_1", "pos_1", "pos_3", 0.7, 1, "Code3")
  else
    CallFunction(o7607, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7608.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7608 = { [nil] = {}, GetCalculated = function()
  if not (o1879.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7608.SetStateValue(o7608.GetCalculated())
end, StartCalculate = function()
  o7608["Value"] = o7608.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7608.Value == L0) then
    DelayedFunction(1e-05, o7608, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7608.Value == L0) then
    o7608["Value"] = L0
    CallFunction(o7607, "ProcesseStateChange")
  end
end }
S_o7610 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o7610, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7610, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o7610, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7610, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o7610, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 12, "Code6")
  else
    CallFunction(o7610, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o7610, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code8")
  else
    CallFunction(o7610, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o7610, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7611.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
o7611 = { [nil] = {}, GetCalculated = function()
  if not (o1846.Value == True) then
    if not (o1872.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o7611.SetStateValue(o7611.GetCalculated())
end, StartCalculate = function()
  o7611["Value"] = o7611.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7611.Value == L0) then
    o7611["Value"] = L0
    CallFunction(o7610, "ProcesseStateChange")
  end
end }
o7612 = { [nil] = {}, GetCalculated = function()
  if not (o1877.Value ~= True) then
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
    DelayedFunction(2, o7612, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7612.Value == L0) then
    o7612["Value"] = L0
    CallFunction(o7610, "ProcesseStateChange")
  end
end }
S_o7616 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 343)
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
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_trafo_1", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_1", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_2", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_3", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_4", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_5", S_o1220)
  o1254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabM_6", S_o1254)
  o1288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_1", S_o1288)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stabK_2", S_o1322)
  o1356 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_2", S_o1356)
  o1390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stern2_3", S_o1390)
  o1424 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_4", S_o1424)
  o1458 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o1458)
  o1496 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o1496)
  o1534 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o1534)
  o1572 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o1572)
  o1610 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o1610)
  o1648 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_6/Turm1", S_o1648)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_7/Turm1", S_o1686)
  o1724 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_8/Turm1", S_o1724)
  o1762 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_9/Turm1", S_o1762)
  o1800 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_101", S_o1800)
  o1802 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_102", S_o1802)
  o1804 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104", S_o1804)
  o1806 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104c", S_o1806)
  o1808 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104b", S_o1808)
  o1810 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104d", S_o1810)
  o1812 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104e", S_o1812)
  o1814 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104f", S_o1814)
  o1816 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_104g", S_o1816)
  o1818 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_105", S_o1818)
  o1828 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_1", S_o1828)
  o1829 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_2", S_o1829)
  o1830 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_3", S_o1830)
  o1831 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "RespawnPosition_4", S_o1831)
  o1836 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_1", S_o1836)
  o1837 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_2", S_o1837)
  o1838 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_3", S_o1838)
  o1839 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_4", S_o1839)
  o1840 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_5", S_o1840)
  o1841 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o1841)
  o1846.Start()
  o1847 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_2", S_o1847)
  o1852.Start()
  o1853 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Waypoint1To2Trigger", S_o1853)
  o1858.Start()
  o1859 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "AntriebTriggerPresence_1", S_o1859)
  o1864.Start()
  o1865 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1865)
  o1869.Start()
  o1870.Start()
  o1878.Start()
  o1879.Start()
  o1880.Start()
  o1884.Start()
  o1890.Start()
  o1919 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham", S_o1919)
  o1967 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange", S_o1967)
  o2015 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper", S_o2015)
  o2063 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico", S_o2063)
  o2111 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka", S_o2111)
  o2159 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c6_1", S_o2159)
  o2207 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_chaka_c6_1", S_o2207)
  o2255 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange_c6_1", S_o2255)
  o2303 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c6_1", S_o2303)
  o2353 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c6_1", S_o2353)
  o2401 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_1", S_o2401)
  o2436 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_2", S_o2436)
  o2471 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_3", S_o2471)
  o2506 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_4", S_o2506)
  o2541 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_5", S_o2541)
  o2576 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_6", S_o2576)
  o2611 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_7", S_o2611)
  o2646 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_8", S_o2646)
  o2681 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_9", S_o2681)
  o2716 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_10", S_o2716)
  o2751 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_11", S_o2751)
  o2786 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_12", S_o2786)
  o2821 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_13", S_o2821)
  o2856 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_14", S_o2856)
  o2891 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_15", S_o2891)
  o2926 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mine_Directory"), "des_mine02_cra_16", S_o2926)
  o2961 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_1_1", S_o2961)
  o3009 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_2_1", S_o3009)
  o3057 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_3_1", S_o3057)
  o3105 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_4_1", S_o3105)
  o3153 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_5_1", S_o3153)
  o3201 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_6_1", S_o3201)
  o3249 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_7_1", S_o3249)
  o3297 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_8_1", S_o3297)
  o3345 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_9_1", S_o3345)
  o3393 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_10_1", S_o3393)
  o3441 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_11_1", S_o3441)
  o3489 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_12_1", S_o3489)
  o3537 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_13_1", S_o3537)
  o3585 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_14_1", S_o3585)
  o3633 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_15_1", S_o3633)
  o3681 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_16_1", S_o3681)
  o3729 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_17_1", S_o3729)
  o3777 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_18_1", S_o3777)
  o3825 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_19_1", S_o3825)
  o3873 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_20_1", S_o3873)
  o3921 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_21_1", S_o3921)
  o3969 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_22_1", S_o3969)
  o4017 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_23_1", S_o4017)
  o4065 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_24_1", S_o4065)
  o4113 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_25_1", S_o4113)
  o4161 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_26_1", S_o4161)
  o4209 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_27_1", S_o4209)
  o4257 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_28_1", S_o4257)
  o4305 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_29_1", S_o4305)
  o4353 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_30_1", S_o4353)
  o4401 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_31_1", S_o4401)
  o4449 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_1"), "old_schax_raider_32_1", S_o4449)
  o4497 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_magmaeater_6h2_1", S_o4497)
  o4503.Start()
  o4545 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_bomber_respawn_1", S_o4545)
  o4593 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_respawn_1", S_o4593)
  o4641 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v2_respawn_1", S_o4641)
  o4689 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_first_2", S_o4689)
  o4737 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v1_first_4", S_o4737)
  o4785 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_respawn_2", S_o4785)
  o4833 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_first_4", S_o4833)
  o4881 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_first_5", S_o4881)
  o4929 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o4929)
  o4932.Start()
  o4934 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o4934)
  o4937.Start()
  o4939 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03_1", S_o4939)
  o4944 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank2_1", S_o4944)
  o4983 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank2_2", S_o4983)
  o5022 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank2_3", S_o5022)
  o5061 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o5061)
  o5109 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2", S_o5109)
  o5157 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1", S_o5157)
  o5205 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraAfterSchaxComeIn_Director_1"), "cra_scout2v1_1", S_o5205)
  o5253 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraAfterSchaxComeIn_Director_1"), "cra_scout2v1_2", S_o5253)
  o5301 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraAfterSchaxComeIn_Director_1"), "cra_scout2v2_1", S_o5301)
  o5349 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraAfterSchaxComeIn_Director_1"), "cra_scout1_1", S_o5349)
  o5397 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_1_2", S_o5397)
  o5446 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_2_2", S_o5446)
  o5495 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_3_2", S_o5495)
  o5544 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_4_2", S_o5544)
  o5593 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_5_2", S_o5593)
  o5642 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_6_2", S_o5642)
  o5691 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_7_2", S_o5691)
  o5740 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_8_2", S_o5740)
  o5789 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_9_2", S_o5789)
  o5838 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_10_2", S_o5838)
  o5887 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_11_2", S_o5887)
  o5936 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_12_2", S_o5936)
  o5985 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_13_2", S_o5985)
  o6034 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_2"), "old_schax_raider_14_2", S_o6034)
  o6083 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_1_3_pla", S_o6083)
  o6088.Start()
  o6131 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_2_3_pla", S_o6131)
  o6136.Start()
  o6179 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_3_3_pla", S_o6179)
  o6184.Start()
  o6227 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_4_3_pla", S_o6227)
  o6232.Start()
  o6275 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_5_3", S_o6275)
  o6323 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_6_3", S_o6323)
  o6371 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_bang_7_3", S_o6371)
  o6419 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_booster_1_3", S_o6419)
  o6467 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_booster_2_3", S_o6467)
  o6515 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_booster_3_3", S_o6515)
  o6563 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Schax_Directory_3"), "old_schax_booster_4_3", S_o6563)
  o6611 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_fregatte_1", S_o6611)
  o6659 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_bomber_6h1_1", S_o6659)
  o6707 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_1", S_o6707)
  o6755 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_2", S_o6755)
  o6803 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_3", S_o6803)
  o6851 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_4", S_o6851)
  o6899 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_bomber_6h1_2", S_o6899)
  o6947 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_5", S_o6947)
  o6995 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_6", S_o6995)
  o7043 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_7", S_o7043)
  o7091 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CraCanyon_Directory_1"), "can_cra_scout2v2_6h1_8", S_o7091)
  o7139 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o7139)
  o7144 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o7144)
  o7149 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_3", S_o7149)
  o7154 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_4", S_o7154)
  o7159 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_5", S_o7159)
  o7164 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_04_1", S_o7164)
  o7169 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "end_cra_scout1_1", S_o7169)
  o7174.Start()
  o7217 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "end_cra_scout1_2", S_o7217)
  o7222.Start()
  o7265 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "end_cra_scout2v1_1", S_o7265)
  o7270.Start()
  o7313 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "end_cra_scout2v1_2", S_o7313)
  o7318.Start()
  o7361 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "end_cra_scout2v2_1", S_o7361)
  o7366.Start()
  o7409 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_2h3_1", S_o7409)
  o7456 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_2h3_2", S_o7456)
  o7503 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2", S_o7503)
  o7551 = BindEasy(Node_Find("/"), "Camera", S_o7551)
  o7552 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o7552)
  o7557 = BindEasy(Node_Find("/InGameSequences/Navigation"), "WngPosition_1", S_o7557)
  o7558 = BindEasy(Node_Find("/InGameSequences/Navigation"), "WngPosition_2", S_o7558)
  o7559 = BindEasy(Node_Find("/InGameSequences/Navigation"), "WngPosition_3", S_o7559)
  o7560 = BindEasy(Node_Find("/InGameSequences/Navigation"), "WngPosition_4", S_o7560)
  o7561 = BindEasy(Node_Find("/InGameSequences/Navigation"), "WngPosition_5", S_o7561)
  o7562 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_1", S_o7562)
  o7563 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_2", S_o7563)
  o7564 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_3", S_o7564)
  o7565 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_4", S_o7565)
  o7566 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_5", S_o7566)
  o7567 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CamPosition_6", S_o7567)
  o7568 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_5", S_o7568)
  o7616 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_1", S_o7616)
  o7569 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1V", S_o7569)
  o7575 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1Addon_1", S_o7575)
  o7577 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1Addon_2", S_o7577)
  o7579 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter2V", S_o7579)
  o7589 = BindEasy(Node_Find("/InGameSequences/Director"), "SchaxComeInV", S_o7589)
  o7601 = BindEasy(Node_Find("/InGameSequences/Director"), "SchaxComeInAddon", S_o7601)
  o7604 = BindEasy(Node_Find("/InGameSequences/Director"), "SchaxComeInAddon_2", S_o7604)
  o7607 = BindEasy(Node_Find("/InGameSequences/Director"), "SchaxComeInAddon_3", S_o7607)
  o7610 = BindEasy(Node_Find("/InGameSequences/Director"), "Music", S_o7610)
  o1822 = { {}, o2961, o3009, o3057, o3105, o3153, o3729, o3777, o3825, o3873, o3921 }()
  o1824 = { {}, o3201, o3249, o3297, o3345, o3393, o3969, o4017, o4065, o4113, o4161 }()
  o1826 = { {}, o3441, o3489, o3537, o3585, o3633, o3681, o4209, o4257, o4305, o4353, o4401, o4449 }()
  o1832 = { {}, o6659, o6707, o6755, o6803, o6851 }()
  o1834 = { {}, o6899, o6947, o6995, o7043, o7091 }()
  o7553 = { {}, o1865 }()
  o7554 = { {}, o2111, o1919, o1967, o2015, o2063 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end