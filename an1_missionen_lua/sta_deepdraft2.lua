-- dekompiliert aus map\4h2\script\sta_deepdraft2.sco
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
  Body_SetCS(node71, MAT_Vector3(1105.95155, 3130.698352, 53.546383), MAT_Vector3(0, 0, 0))
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
  node90 = Node_CreateNode("NOD_Path", "Freighter1Path_1")
  Node_AddSon(node89, node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node90, node91)
  Position_SetPosition(node91, MAT_Vector3(602.647507, 3809.405123, 330))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node90, node92)
  Position_SetPosition(node92, MAT_Vector3(706.944191, 3890.85586, 330))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node90, node93)
  Position_SetPosition(node93, MAT_Vector3(810.411798, 3765.545441, 330))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node90, node94)
  Position_SetPosition(node94, MAT_Vector3(810.4118, 3481.009053, 330))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "Freighter1Position_1")
  Node_AddSon(node89, node95)
  Position_SetPosition(node95, MAT_Vector3(444.663896, 3693.876555, 330))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Path", "PolPath_1")
  Node_AddSon(node89, node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node96, node97)
  Position_SetPosition(node97, MAT_Vector3(526.260006, 3459.796489, 260))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node96, node98)
  Position_SetPosition(node98, MAT_Vector3(676.849427, 3574.078876, 260))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node96, node99)
  Position_SetPosition(node99, MAT_Vector3(781.466657, 3706.287622, 260))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node96, node100)
  Position_SetPosition(node100, MAT_Vector3(656.155919, 3847.693743, 300))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node96, node101)
  Position_SetPosition(node101, MAT_Vector3(619.367414, 3703.414156, 300))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node96, node102)
  Position_SetPosition(node102, MAT_Vector3(358.399077, 3520.04639, 300))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node96, node103)
  Position_SetPosition(node103, MAT_Vector3(311.09076, 3475.664583, 300))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node96, node104)
  Position_SetPosition(node104, MAT_Vector3(270.719379, 3327.361821, 260))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node96, node105)
  Position_SetPosition(node105, MAT_Vector3(361.349121, 3359.494355, 260))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node96, node106)
  Position_SetPosition(node106, MAT_Vector3(422.318185, 3399.041514, 260))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node89, node107)
  PatrolArea_SetPosition(node107, MAT_Vector3(500, 500, 500))
  PatrolArea_SetRadius(node107, 50)
  PatrolArea_SetMinZ(node107, -20)
  PatrolArea_SetMaxZ(node107, 20)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Path", "BomberPath_1")
  Node_AddSon(node89, node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node108, node109)
  Position_SetPosition(node109, MAT_Vector3(732.149367, 3676.464463, 289))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node108, node110)
  Position_SetPosition(node110, MAT_Vector3(406.706313, 3454.009231, 289))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node108, node111)
  Position_SetPosition(node111, MAT_Vector3(517.109778, 3323.007858, 289))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node108, node112)
  Position_SetPosition(node112, MAT_Vector3(832.666009, 3492.732749, 289))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node108, node113)
  Position_SetPosition(node113, MAT_Vector3(953.780263, 3493.556907, 289))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node108, node114)
  Position_SetPosition(node114, MAT_Vector3(943.069515, 3842.893377, 289))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node108, node115)
  Position_SetPosition(node115, MAT_Vector3(830.194276, 3747.320317, 289))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node87, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node87, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node87, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node118, node119)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "gen_freighter2_1")
  Node_AddSon(node119, node120)
  Body_SetCS(node120, MAT_Vector3(860.391134, 3593.625091, 343.417367), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node119, node121)
  Body_SetCS(node121, MAT_Vector3(448.354519, 3696.109665, 290), MAT_Vector3(-51.929165, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "gen_freighter1_2")
  Node_AddSon(node119, node122)
  Body_SetCS(node122, MAT_Vector3(705.526354, 3735.717167, 263.504381), MAT_Vector3(-142.721192, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "atl_pscout_1")
  Node_AddSon(node119, node123)
  Body_SetCS(node123, MAT_Vector3(448.431499, 3415.029436, 260), MAT_Vector3(-52.861384, 0, 0))
  Node_ParseIniFile(node123, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "atl_pscout_2")
  Node_AddSon(node119, node124)
  Body_SetCS(node124, MAT_Vector3(421.242584, 3415.852907, 260), MAT_Vector3(-54.06627, 0, 0))
  Node_ParseIniFile(node124, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "atl_pscout_3")
  Node_AddSon(node119, node125)
  Body_SetCS(node125, MAT_Vector3(446.783703, 3390.311897, 260), MAT_Vector3(-54.06627, 0, 0))
  Node_ParseIniFile(node125, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "atl_bomber_1")
  Node_AddSon(node119, node126)
  Body_SetCS(node126, MAT_Vector3(828.338647, 3746.545959, 289), MAT_Vector3(130, 0, 0))
  Node_ParseIniFile(node126, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node119, node127)
  Body_SetCS(node127, MAT_Vector3(839.331235, 3788.932498, 290.410243), MAT_Vector3(130.832027, 0, 0))
  Node_ParseIniFile(node127, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node119, node128)
  Body_SetCS(node128, MAT_Vector3(871.540245, 3757.50378, 290.4102), MAT_Vector3(130.832, 0, 0))
  Node_ParseIniFile(node128, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node129)
  Camera_SetBackPlane(node129, 512)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Scenario", "deepdraft2_station")
  Node_AddSon(node0, node130)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node130, node131)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node130, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "MoveFrom")
  Node_AddSon(node132, node133)
  Position_SetPosition(node133, MAT_Vector3(155.097888, 3707.993963, 302.1128))
  Position_SetRadius(node133, 15)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "LookFrom")
  Node_AddSon(node132, node134)
  Position_SetPosition(node134, MAT_Vector3(360.579611, 3657.213924, 302.112782))
  Position_SetRadius(node134, 15)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "LookAt")
  Node_AddSon(node132, node135)
  Position_SetPosition(node135, MAT_Vector3(708.585785, 3583.410937, 223.793931))
  Position_SetRadius(node135, 15)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node130, node136)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Director", "stationcamera")
  Node_AddSon(node136, node137)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node130, node138)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node130, node139)
  Node_EnterSimulation(node139)
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
SetEnemyMatrixElement(1, 3, N)
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
SetEnemyMatrixElement(1, 4, N)
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
S_o1725 = { [nil] = {}, Start = function(L0)

end }
o1727 = FormationLib.CreateFormation("Triangle", "", "", "", 15, 15)
o1729 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 30, 30)
S_o1730 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1730, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o1730, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1776 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1776, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o1776, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Sink", "/Scenario_Dynamic/Navigation/Freighter1Position_1", 0.25, 1 } }("Code4")
  else
    CallFunction(o1776, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Freighter1Path_1", "pos_1", 10 } }("Code5")
  else
    CallFunction(o1776, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Freighter1Path_1", 0.5, 1 } }("Code6")
  else
    CallFunction(o1776, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1776, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1825 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1825, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o1825, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1871 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1871, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o1871, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1726, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_1", 0.5, 1 } }, o1727, "/Scenario_Dynamic/Navigation/PatrolArea_1", 0, "", "", "", "", 0, 1, True, "Code4")
  else
    CallFunction(o1871, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1918, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o1918, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1726, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_1", 0.5, 1 } }, o1727, "/Scenario_Dynamic/Navigation/PatrolArea_1", 0, "", "", "", "", 0, 1, True, "Code4")
  else
    CallFunction(o1918, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1965 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o1965, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o1965, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1726, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_1", 0.5, 1 } }, o1727, "/Scenario_Dynamic/Navigation/PatrolArea_1", 0, "", "", "", "", 0, 1, True, "Code4")
  else
    CallFunction(o1965, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2012, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o2012, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1728, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.5, 1 } }, o1729, "/Scenario_Dynamic/Navigation/PatrolArea_1", 0, "", "", "", "", 0, 1, True, "Code4")
  else
    CallFunction(o2012, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2059 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2059, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o2059, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1728, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.5, 1 } }, o1729, "/Scenario_Dynamic/Navigation/PatrolArea_1", 0, "", "", "", "", 0, 1, True, "Code4")
  else
    CallFunction(o2059, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2106 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o2106, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code3")
  else
    CallFunction(o2106, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1728, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.5, 1 } }, o1729, "/Scenario_Dynamic/Navigation/PatrolArea_1", 0, "", "", "", "", 0, 1, True, "Code4")
  else
    CallFunction(o2106, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2153 = { [nil] = {}, Start = function(L0)

end }
S_o2154 = { [nil] = {}, Start = function(L0)

end }
S_o2155 = { [nil] = {}, Start = function(L0)

end }
S_o2156 = { [nil] = {}, Start = function(L0)

end }
S_o2157 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Camera_MoveTo(L0.Node, "/deepdraft2_station/Navigation/MoveFrom", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/deepdraft2_station/Navigation/LookAt", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o2157, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.15, "Code4")
  else
    CallFunction(o2157, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/deepdraft2_station/Navigation/LookFrom", 3, "MMMN", 0)
  CallFunction(o2157, "Code5")
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
  Game_LoadProgress_Enter(Node_Find("/"), 139)
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
  o1725 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Freighter1Position_1", S_o1725)
  o1730 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_freighter2_1", S_o1730)
  o1776 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_freighter1_1", S_o1776)
  o1825 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_freighter1_2", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_pscout_1", S_o1871)
  o1918 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_pscout_2", S_o1918)
  o1965 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_pscout_3", S_o1965)
  o2012 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_bomber_1", S_o2012)
  o2059 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_1", S_o2059)
  o2106 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_2", S_o2106)
  o2153 = BindEasy(Node_Find("/"), "Camera", S_o2153)
  o2154 = BindEasy(Node_Find("/deepdraft2_station/Navigation"), "MoveFrom", S_o2154)
  o2155 = BindEasy(Node_Find("/deepdraft2_station/Navigation"), "LookFrom", S_o2155)
  o2156 = BindEasy(Node_Find("/deepdraft2_station/Navigation"), "LookAt", S_o2156)
  o2157 = BindEasy(Node_Find("/deepdraft2_station/Director"), "stationcamera", S_o2157)
  o1726 = { {}, o1871, o1918, o1965 }()
  o1728 = { {}, o2012, o2059 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end