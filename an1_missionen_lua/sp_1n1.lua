-- dekompiliert aus map\1n1\script\sp_1n1.sco
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
  Terrain_LoadTerrain(node1, "map/1N1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1N1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/1N1/Lmsh/", "map/1N1/Ltex/")
  Game_SetTerrainDepth(node0, 1024)
  Game_SetDecompressionHeight(node0, 512)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.462745, 0.352941, 0.086275)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_1N1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track05.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2058.769, 790.8252, 278.103128), MAT_Vector3(83.9634, 0, 0))
  Node_ParseIniFile(node8, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_mhaus2_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(2110.426, 1254.377, 201.1383), MAT_Vector3(173.7709, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_mhaus2_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2128.953139, 1248.215531, 233.127234), MAT_Vector3(-87.85984, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_mhaus3_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1956.336, 1143.509, 234.420003), MAT_Vector3(72.60706, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "atl_wb3a_5_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2019.794797, 616.631932, 390.668731), MAT_Vector3(0.567907, -0.034663, -0.035034))
  Node_ParseIniFile(node12, "osd/atl/atl_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "atl_wb3a_b_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2646.546191, 1025.222954, 303.735246), MAT_Vector3(-75.078933, 0, 0))
  Node_ParseIniFile(node13, "osd/atl/atl_wblock3a_build.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "atl_wb3a_b_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2596.681645, 862.53211, 304.278112), MAT_Vector3(32.740683, 0, 0))
  Node_ParseIniFile(node14, "osd/atl/atl_wblock3a_build.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "atl_wb3a_b_3")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2429.865948, 1050.937961, 224.241165), MAT_Vector3(-168.825919, 0, 0))
  Node_ParseIniFile(node15, "osd/atl/atl_wblock3a_build.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "atl_wb3a_b_4")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2488.816687, 630.209903, 394.017205), MAT_Vector3(-135.173303, 0, 0))
  Node_ParseIniFile(node16, "osd/atl/atl_wblock3a_build.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_wb3a_s_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2473.570147, 780.710093, 304.351043), MAT_Vector3(-56.670535, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_wblock3a_build_a.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_wb3a_s_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2203.166362, 567.242257, 392.951946), MAT_Vector3(-91.10706, -0.385379, 0.698429))
  Node_ParseIniFile(node18, "osd/atl/atl_wblock3a_build_a.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(2126.630127, 889.277183, 255.166217), MAT_Vector3(-5.608774, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2384.401558, 540.403499, 388.460346), MAT_Vector3(-5.608774, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_tnk_k_3")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2343.096848, 543.665515, 388.939794), MAT_Vector3(-5.608774, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_rohrbM_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2140.312973, 592.309731, 404.341399), MAT_Vector3(-115.195581, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_gangM_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2146.096201, 589.289519, 426.857017), MAT_Vector3(64.716618, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1655.128, 1452.372, 153.7992), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2182.563, 1103.037, 293.9291), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_stab2_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2011.349, 1143.618, 367.0499), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_stab2_3")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1953.971, 1041.079, 392.6179), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1961.702, 1424.061, 223.0422), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_stab3_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2266.468, 1460.384, 392.0795), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_stab3_3")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2116.428, 1984.688, 399.8117), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_contain_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2259.591, 771.107, 224.595634), MAT_Vector3(37.53419, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_contain_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2266.6, 867.7601, 224.255357), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_contain_3")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2277.968, 867.7749, 224.962006), MAT_Vector3(0, 0, 90))
  Node_ParseIniFile(node33, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_contain_4")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2290.747, 860.93, 224.915306), MAT_Vector3(42.34626, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_contain_5")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2271.778, 866.7105, 232.034456), MAT_Vector3(0, 0, 34.32614))
  Node_ParseIniFile(node35, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_contain_6")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2264.207, 854.9593, 224.243307), MAT_Vector3(-56.4617, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_contain_7")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2252.657, 762.7135, 228.66172), MAT_Vector3(180, 90, 180))
  Node_ParseIniFile(node37, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_contain_8")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2275.738, 839.4337, 226.237805), MAT_Vector3(0, 90, -70))
  Node_ParseIniFile(node38, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_contain_9")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2440.96263, 776.14818, 309.515242), MAT_Vector3(-0.237, 3.845688, 1.926152))
  Node_ParseIniFile(node39, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_contain_10")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2431.162775, 779.09934, 310.907823), MAT_Vector3(64.19455, 82.94229, 180))
  Node_ParseIniFile(node40, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_contain_11")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2484.503, 814.9182, 309.726509), MAT_Vector3(93.67507, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_contain_12")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2435.006736, 740.894134, 309.718459), MAT_Vector3(59.442053, 37.228776, -26.222944))
  Node_ParseIniFile(node42, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_contain_13")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2428.458569, 751.236464, 309.465582), MAT_Vector3(93.67507, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_contain_15")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2289.876066, 538.92441, 396.742242), MAT_Vector3(-5.577461, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_contain_14")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2304.509542, 559.217435, 396.049725), MAT_Vector3(93.67507, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_contain_16")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2303.850749, 550.214082, 398.605504), MAT_Vector3(89.977415, 7.803504, -46.139585))
  Node_ParseIniFile(node46, "osd/gen/gen_container.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_fx_sky", "fx_sky_01_1")
  Node_AddSon(node7, node47)
  Node_ParseIniFile(node47, "osd/fx_sky/fx_sky_01.osd")
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node48)
  Node_ParseIniFile(node48, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node49)
  Node_ParseIniFile(node49, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node50)
  Node_ParseIniFile(node50, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node50, "map/1N1/Terrain/coral_01.tga")
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node51)
  Node_ParseIniFile(node51, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node51, "map/1N1/Terrain/grass_01.tga")
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node52)
  Node_ParseIniFile(node52, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node52, "map/1N1/Terrain/stone_01.tga")
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(3133.243346, 1433.456555, 269.799796), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1805.283477, 995.544588, 153.221218), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1936.180877, 2241.966515, 173.994528), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node56)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node56, node57)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node56, node58)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_PatrolArea", "AttackArea")
  Node_AddSon(node58, node59)
  PatrolArea_SetPosition(node59, MAT_Vector3(2283.708, 889.4129, 267.4869))
  PatrolArea_SetRadius(node59, 650)
  PatrolArea_SetMinZ(node59, -130)
  PatrolArea_SetMaxZ(node59, 250)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Path", "dock_appr")
  Node_AddSon(node58, node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node60, node61)
  Position_SetPosition(node61, MAT_Vector3(2104.178, 1083.718, 467))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node60, node62)
  Position_SetPosition(node62, MAT_Vector3(2078.572, 906.1567, 467))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Path", "dock_path")
  Node_AddSon(node58, node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node63, node64)
  Position_SetPosition(node64, MAT_Vector3(2074.239, 892.5657, 467))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node63, node65)
  Position_SetPosition(node65, MAT_Vector3(2061.194, 831.7954, 467))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_PatrolArea", "dockarea")
  Node_AddSon(node58, node66)
  PatrolArea_SetPosition(node66, MAT_Vector3(2102.757, 1086.202, 462.9592))
  PatrolArea_SetRadius(node66, 100)
  PatrolArea_SetMinZ(node66, -20)
  PatrolArea_SetMaxZ(node66, 50)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "frachtpos")
  Node_AddSon(node58, node67)
  Position_SetPosition(node67, MAT_Vector3(2282.817, 778.019, 534.4408))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node56, node68)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node56, node69)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node56, node70)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node70, node71)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node70, node80)
  Body_SetPosition(node80, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node80, 5)
  Node_ParseIniFile(node80, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node81)
  Camera_SetBackPlane(node81, 512)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node82)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node82, node83)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node82, node84)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node84, node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node85, node86)
  Position_SetPosition(node86, MAT_Vector3(2106.615909, 1527.896252, 302.304011))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node85, node87)
  Position_SetPosition(node87, MAT_Vector3(2285.542561, 1086.361272, 306.058588))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node84, node88)
  Position_SetPosition(node88, MAT_Vector3(2092.512977, 1566.027651, 315.629456))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node84, node89)
  Position_SetPosition(node89, MAT_Vector3(2325.63006, 992.792323, 297.342771))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node82, node90)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Director", "Chapter1IntroV")
  Node_AddSon(node90, node91)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Director", "Chapter1IntroAddon")
  Node_AddSon(node90, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node82, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node82, node94)
  Node_EnterSimulation(node94)
  node9999 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node70, node9999)
  Body_SetCS(node9999, MAT_Vector3(2102.5, 1537.2, 421.8), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node9999, "osd/pla/pla_phobocaster.osd")
  Body_SetFriendOrFoeID(node9999, 2)
  Node_EnterSimulation(node9999)
  Body_AddItem(node9999, "gun_lasergatlin", 1)
  Body_AddItem(node9999, "gun_vendettagatlin", 1)
  Body_AddItem(node9999, "gun_sizzler", 1)
  Body_AddItem(node9999, "gun_torpedolauncher", 1)
  Body_AddItem(node9999, "ammo_energy", 5000)
  Body_AddItem(node9999, "ammo_shell", 5000)
  Body_AddItem(node9999, "device_generator", 1)
  Body_AddItem(node9999, "device_repair", 1)
  Body_AddItem(node9999, "torpedo_hammerhead", 4)
  Body_AddItem(node9999, "torpedo_maneater", 4)
  nodePA = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node58, nodePA)
  PatrolArea_SetPosition(nodePA, MAT_Vector3(2200, 1000, 320))
  PatrolArea_SetRadius(nodePA, 700)
  PatrolArea_SetMinZ(nodePA, 150)
  PatrolArea_SetMaxZ(nodePA, 450)
  nodeT1 = Node_CreateNode("nod_vessel", "gen_toiler_inst_1")
  Node_AddSon(node70, nodeT1)
  Body_SetCS(nodeT1, MAT_Vector3(2356.1, 921.8, 328.5), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(nodeT1, "osd/gen/gen_toiler_inst.osd")
  Body_SetFriendOrFoeID(nodeT1, 4)
  Body_SetNameKey(nodeT1, -1)
  Body_SetCargoKey(nodeT1, -1, 0)
  Body_SetCargoKey(nodeT1, -1, 1)
  Body_SetCargoKey(nodeT1, -1, 2)
  Node_EnterSimulation(nodeT1)
  nodeT2 = Node_CreateNode("nod_vessel", "gen_toiler_inst_2")
  Node_AddSon(node70, nodeT2)
  Body_SetCS(nodeT2, MAT_Vector3(2363.2, 707.1, 328.5), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(nodeT2, "osd/gen/gen_toiler_inst.osd")
  Body_SetFriendOrFoeID(nodeT2, 4)
  Body_SetNameKey(nodeT2, -1)
  Body_SetCargoKey(nodeT2, -1, 0)
  Body_SetCargoKey(nodeT2, -1, 1)
  Body_SetCargoKey(nodeT2, -1, 2)
  Node_EnterSimulation(nodeT2)
  nodeT3 = Node_CreateNode("nod_vessel", "gen_toiler_inst_3")
  Node_AddSon(node70, nodeT3)
  Body_SetCS(nodeT3, MAT_Vector3(1902.5, 963.7, 328.5), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(nodeT3, "osd/gen/gen_toiler_inst.osd")
  Body_SetFriendOrFoeID(nodeT3, 4)
  Body_SetNameKey(nodeT3, -1)
  Body_SetCargoKey(nodeT3, -1, 0)
  Body_SetCargoKey(nodeT3, -1, 1)
  Body_SetCargoKey(nodeT3, -1, 2)
  Node_EnterSimulation(nodeT3)
  node1N1POL1 = Node_CreateNode("nod_vessel", "police_1n1_atl_01")
  Node_AddSon(node70, node1N1POL1)
  Body_SetCS(node1N1POL1, MAT_Vector3(2720, 1500, 350), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node1N1POL1, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL1, 6)
  Body_SetNameKey(node1N1POL1, 200)
  Body_SetCargoKey(node1N1POL1, -1, 0)
  Body_SetCargoKey(node1N1POL1, -1, 1)
  Body_SetCargoKey(node1N1POL1, -1, 2)
  Node_EnterSimulation(node1N1POL1)
  node1N1POL2 = Node_CreateNode("nod_vessel", "police_1n1_ent_02")
  Node_AddSon(node70, node1N1POL2)
  Body_SetCS(node1N1POL2, MAT_Vector3(2601.590536512467, 1770.3812160545376, 370), MAT_Vector3(126, 0, 0))
  Node_ParseIniFile(node1N1POL2, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL2, 6)
  Body_SetNameKey(node1N1POL2, 225)
  Body_SetCargoKey(node1N1POL2, -1, 0)
  Body_SetCargoKey(node1N1POL2, -1, 1)
  Body_SetCargoKey(node1N1POL2, -1, 2)
  Node_EnterSimulation(node1N1POL2)
  node1N1POL3 = Node_CreateNode("nod_vessel", "police_1n1_tz_03")
  Node_AddSon(node70, node1N1POL3)
  Body_SetCS(node1N1POL3, MAT_Vector3(2291.590536512467, 1937.4859974957706, 350), MAT_Vector3(162, 0, 0))
  Node_ParseIniFile(node1N1POL3, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL3, 6)
  Body_SetNameKey(node1N1POL3, 212)
  Body_SetCargoKey(node1N1POL3, -1, 0)
  Body_SetCargoKey(node1N1POL3, -1, 1)
  Body_SetCargoKey(node1N1POL3, -1, 2)
  Node_EnterSimulation(node1N1POL3)
  node1N1POL4 = Node_CreateNode("nod_vessel", "police_1n1_nv_04")
  Node_AddSon(node70, node1N1POL4)
  Body_SetCS(node1N1POL4, MAT_Vector3(1908.4094634875328, 1937.4859974957706, 370), MAT_Vector3(-162, 0, 0))
  Node_ParseIniFile(node1N1POL4, "osd/nv/nv_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL4, 6)
  Body_SetNameKey(node1N1POL4, 241)
  Body_SetCargoKey(node1N1POL4, -1, 0)
  Body_SetCargoKey(node1N1POL4, -1, 1)
  Body_SetCargoKey(node1N1POL4, -1, 2)
  Node_EnterSimulation(node1N1POL4)
  node1N1POL5 = Node_CreateNode("nod_vessel", "police_1n1_atl_05")
  Node_AddSon(node70, node1N1POL5)
  Body_SetCS(node1N1POL5, MAT_Vector3(1598.4094634875328, 1770.3812160545376, 350), MAT_Vector3(-126, 0, 0))
  Node_ParseIniFile(node1N1POL5, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL5, 6)
  Body_SetNameKey(node1N1POL5, 200)
  Body_SetCargoKey(node1N1POL5, -1, 0)
  Body_SetCargoKey(node1N1POL5, -1, 1)
  Body_SetCargoKey(node1N1POL5, -1, 2)
  Node_EnterSimulation(node1N1POL5)
  node1N1POL6 = Node_CreateNode("nod_vessel", "police_1n1_ent_06")
  Node_AddSon(node70, node1N1POL6)
  Body_SetCS(node1N1POL6, MAT_Vector3(1480, 1500, 370), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node1N1POL6, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL6, 6)
  Body_SetNameKey(node1N1POL6, 225)
  Body_SetCargoKey(node1N1POL6, -1, 0)
  Body_SetCargoKey(node1N1POL6, -1, 1)
  Body_SetCargoKey(node1N1POL6, -1, 2)
  Node_EnterSimulation(node1N1POL6)
  node1N1POL7 = Node_CreateNode("nod_vessel", "police_1n1_tz_07")
  Node_AddSon(node70, node1N1POL7)
  Body_SetCS(node1N1POL7, MAT_Vector3(1598.4094634875328, 1229.6187839454624, 350), MAT_Vector3(-54, 0, 0))
  Node_ParseIniFile(node1N1POL7, "osd/tz/tz_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL7, 6)
  Body_SetNameKey(node1N1POL7, 212)
  Body_SetCargoKey(node1N1POL7, -1, 0)
  Body_SetCargoKey(node1N1POL7, -1, 1)
  Body_SetCargoKey(node1N1POL7, -1, 2)
  Node_EnterSimulation(node1N1POL7)
  node1N1POL8 = Node_CreateNode("nod_vessel", "police_1n1_nv_08")
  Node_AddSon(node70, node1N1POL8)
  Body_SetCS(node1N1POL8, MAT_Vector3(1908.4094634875328, 1062.5140025042294, 370), MAT_Vector3(-18, 0, 0))
  Node_ParseIniFile(node1N1POL8, "osd/nv/nv_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL8, 6)
  Body_SetNameKey(node1N1POL8, 241)
  Body_SetCargoKey(node1N1POL8, -1, 0)
  Body_SetCargoKey(node1N1POL8, -1, 1)
  Body_SetCargoKey(node1N1POL8, -1, 2)
  Node_EnterSimulation(node1N1POL8)
  node1N1POL9 = Node_CreateNode("nod_vessel", "police_1n1_atl_09")
  Node_AddSon(node70, node1N1POL9)
  Body_SetCS(node1N1POL9, MAT_Vector3(2291.590536512467, 1062.5140025042294, 350), MAT_Vector3(18, 0, 0))
  Node_ParseIniFile(node1N1POL9, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL9, 6)
  Body_SetNameKey(node1N1POL9, 200)
  Body_SetCargoKey(node1N1POL9, -1, 0)
  Body_SetCargoKey(node1N1POL9, -1, 1)
  Body_SetCargoKey(node1N1POL9, -1, 2)
  Node_EnterSimulation(node1N1POL9)
  node1N1POL10 = Node_CreateNode("nod_vessel", "police_1n1_ent_10")
  Node_AddSon(node70, node1N1POL10)
  Body_SetCS(node1N1POL10, MAT_Vector3(2601.590536512467, 1229.6187839454624, 370), MAT_Vector3(54, 0, 0))
  Node_ParseIniFile(node1N1POL10, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node1N1POL10, 6)
  Body_SetNameKey(node1N1POL10, 225)
  Body_SetCargoKey(node1N1POL10, -1, 0)
  Body_SetCargoKey(node1N1POL10, -1, 1)
  Body_SetCargoKey(node1N1POL10, -1, 2)
  Node_EnterSimulation(node1N1POL10)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_fightclub_won.sam", 3)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
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
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, N)
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
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
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
                                                                                              if not (o1701.Value ~= True) then
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
                                                                                              if not (o1725.Value ~= True) then
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
o1357 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dock_appr", "/Scenario_Dynamic/Navigation/dock_path", "/Scenario_Dynamic/Navigation/dockarea")
S_o1358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o1362.SetStateValue(L1)
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
o1362 = { [nil] = {}, Start = function()
  o1362["Value"] = False
  o1700.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1362.Value == L0) then
    o1362["Value"] = L0
    o1700.ReCalculate()
  end
end }
S_o1405 = { [nil] = {}, Start = function(L0)

end }
S_o1451 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1451, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1451, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1451, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea" }, 20, 1, "Code4")
  else
    CallFunction(o1451, "Code4")
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
S_o1499 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1499, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1499, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1499, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea" }, 18, 1, "Code4")
  else
    CallFunction(o1499, "Code4")
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
S_o1547 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1547, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1547, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1547, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea" }, 20, 1, "Code4")
  else
    CallFunction(o1547, "Code4")
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
S_o1595 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1595, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1595, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1595, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea" }, 111, 1, "Code4")
  else
    CallFunction(o1595, "Code4")
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
S_o1643 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1643, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1643, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1643, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1643, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea", "gen_transp_1", "gen_transp_1", "pla", "", 1, "Code5")
  else
    CallFunction(o1643, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1643, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea", "/Scenario_Dynamic/Navigation/AttackArea", "gen_transp_1", "gen_transp_1", "pla", "", 1, "Code7")
  else
    CallFunction(o1643, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Born = function(L0, L1)
  o1648.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1649.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o1655.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o1656.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1644.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1644 = { [nil] = {}, GetCalculated = function()
  if not (o1648.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1644.SetStateValue(o1644.GetCalculated())
end, StartCalculate = function()
  o1644["Value"] = o1644.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1644.Value == L0) then
    DelayedFunction(13, o1644, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1644.Value == L0) then
    o1644["Value"] = L0
    CallFunction(o1643, "ProcesseStateChange")
  end
end }
o1648 = { [nil] = {}, Start = function()
  o1648["Value"] = False
  o1644.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1648.Value == L0) then
    o1648["Value"] = L0
    o1644.ReCalculate()
  end
end }
o1649 = { [nil] = {}, Start = function()
  o1649["Value"] = False
  o1699.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1649.Value == L0) then
    o1649["Value"] = L0
    o1699.ReCalculate()
  end
end }
o1655 = { [nil] = {}, Start = function()
  o1655["Value"] = False
  o1697.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1655.Value == L0) then
    o1655["Value"] = L0
    o1697.ReCalculate()
  end
end }
o1656 = { [nil] = {}, Start = function()
  o1656["Value"] = False
  o1698.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1656.Value == L0) then
    o1656["Value"] = L0
    o1698.ReCalculate()
  end
end }
S_o1692 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "ammo_shell", 255)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "TORPEDO_THRESHERSHARK", 2)
  Body_AddItem(L0.Node, "TORPEDO_STANLEY", 2)
  Body_AddItem(L0.Node, "BUZZER_NORMAL", 2)
  CallFunction(o1692, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
o1697 = { [nil] = {}, GetCalculated = function()
  if not (o1655.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1697.SetStateValue(o1697.GetCalculated())
end, StartCalculate = function()
  o1697["Value"] = o1697.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1692.Node, o1692.Node, 30)
end, SetStateValue = function(L0)
  if not (o1697.Value == L0) then
    o1697["Value"] = L0
    if not (L0 ~= 1) then
      o1697.ChangeTo1()
    end
  end
end }
o1698 = { [nil] = {}, GetCalculated = function()
  if not (o1656.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1698.SetStateValue(o1698.GetCalculated())
end, StartCalculate = function()
  o1698["Value"] = o1698.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1692.Node, o1692.Node, 31)
end, SetStateValue = function(L0)
  if not (o1698.Value == L0) then
    o1698["Value"] = L0
    if not (L0 ~= 1) then
      o1698.ChangeTo1()
    end
  end
end }
o1699 = { [nil] = {}, GetCalculated = function()
  if not (o1649.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1699.SetStateValue(o1699.GetCalculated())
end, StartCalculate = function()
  o1699["Value"] = o1699.GetCalculated()
  o1701.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1699.Value == L0) then
    DelayedFunction(3, o1699, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1699.Value == L0) then
    o1699["Value"] = L0
    o1701.ReCalculate()
  end
end }
o1700 = { [nil] = {}, GetCalculated = function()
  if not (o1362.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1700.SetStateValue(o1700.GetCalculated())
end, StartCalculate = function()
  o1700["Value"] = o1700.GetCalculated()
  o1725.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1692.Node, o1692.Node, 1263)
end, SetStateValue = function(L0)
  if not (o1700.Value == L0) then
    DelayedFunction(3, o1700, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1700.Value == L0) then
    o1700["Value"] = L0
    o1725.ReCalculate()
    if not (L0 ~= 1) then
      o1700.ChangeTo1()
    end
  end
end }
o1701 = { [nil] = {}, GetCalculated = function()
  if not (o1699.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1701.SetStateValue(o1701.GetCalculated())
end, StartCalculate = function()
  o1701["Value"] = o1701.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1692.Node, o1692.Node, 1129)
end, SetStateValue = function(L0)
  if not (o1701.Value == L0) then
    o1701["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o1701.ChangeTo1()
    end
  end
end }
o1725 = { [nil] = {}, GetCalculated = function()
  if not (o1700.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1725.SetStateValue(o1725.GetCalculated())
end, StartCalculate = function()
  o1725["Value"] = o1725.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1725.Value == L0) then
    o1725["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1729 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1643.Node)
  CallFunction(o1729, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1734 = { [nil] = {}, Start = function(L0)

end }
o1736 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o1737 = { [nil] = {}, Start = function(L0)

end }
S_o1738 = { [nil] = {}, Start = function(L0)

end }
S_o1739 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "agressive")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Position_2", 0, "MMMN", 0)
  CallFunction(o1739, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code6")
  else
    CallFunction(o1739, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  SendRadioMessageTake(o1692.Node, o1692.Node, 29)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 6, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/terror", 3, "MMMN", 0)
  CallFunction(o1739, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code10")
  else
    CallFunction(o1739, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1.5)
  CallFunction(o1739, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code12")
  else
    CallFunction(o1739, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o1729.Node)
  SED_SetTaskTextKey(1350, -1, -1)
  CallFunction(o1739, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
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
  FormationLib.PlaceFormationPath(o1735, o1736, "/InGameSequences/Navigation/PlaPath_1")
  CallFunction(o1744, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o1735, o1736, "/InGameSequences/Navigation/PlaPath_1", "pos_1", "pos_2", 0.5, 1, "Code2")
  else
    CallFunction(o1744, "Code2")
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
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 86)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o1759_1 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_toiler_inst_1", S_o1759_1)
  SetEngineValue(o1759_1, "Destroyed", 1)
  o1759_2 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_toiler_inst_2", S_o1759_2)
  SetEngineValue(o1759_2, "Destroyed", 1)
  o1759_3 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_toiler_inst_3", S_o1759_3)
  SetEngineValue(o1759_3, "Destroyed", 1)
  Vessel_CollisionTerrain(node1N1POL1, 1)
  Vessel_Patrol(node1N1POL1, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL2, 1)
  Vessel_Patrol(node1N1POL2, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL3, 1)
  Vessel_Patrol(node1N1POL3, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL4, 1)
  Vessel_Patrol(node1N1POL4, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL5, 1)
  Vessel_Patrol(node1N1POL5, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL6, 1)
  Vessel_Patrol(node1N1POL6, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL7, 1)
  Vessel_Patrol(node1N1POL7, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL8, 1)
  Vessel_Patrol(node1N1POL8, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL9, 1)
  Vessel_Patrol(node1N1POL9, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Vessel_CollisionTerrain(node1N1POL10, 1)
  Vessel_Patrol(node1N1POL10, "/Scenario_Dynamic/Navigation/AttackArea", -1, 45)
  Game_PlayMusic(GetGameNode(), "agressive")
  Game_LoadProgress_Leave(Node_Find("/"))
end
S_o1759_1 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1759_1, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1759_1, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1759_1, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1759_1, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1764.SetStateValue(L1)
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
S_o1759_2 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1759_2, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1759_2, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1759_2, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1759_2, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1764.SetStateValue(L1)
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
S_o1759_3 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1759_3, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1759_3, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1759_3, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1759_3, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1764.SetStateValue(L1)
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
S_o1759_4 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1759_4, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1759_4, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1759_4, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1759_4, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1764.SetStateValue(L1)
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
o1761 = {}
o1761["Value"] = True
G_Kills = 0
o1764 = { [nil] = {}, SetStateValue = function(L0)
  G_Kills = G_Kills + 1
  if not (G_Kills ~= 3) then
    nodeP = Node_CreateNode("nod_vessel", "gen_phobocaster_inst_1")
    Node_AddSon(Node_Find("/Scenario_Dynamic/Object"), nodeP)
    Body_SetCS(nodeP, MAT_Vector3(2145.8, 1005.6, 315), MAT_Vector3(0, 0, 0))
    Node_ParseIniFile(nodeP, "osd/gen/gen_phobocaster_inst.osd")
    Body_SetFriendOrFoeID(nodeP, 4)
    Body_SetNameKey(nodeP, -1)
    Body_SetCargoKey(nodeP, -1, 0)
    Body_SetCargoKey(nodeP, -1, 1)
    Body_SetCargoKey(nodeP, -1, 2)
    Node_EnterSimulation(nodeP)
    o1759_4 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_phobocaster_inst_1", S_o1759_4)
    SetEngineValue(o1759_4, "Destroyed", 1)
  end
  if not (G_Kills ~= 4) then
    Game_PlayMusic(GetGameNode(), "track3")
    Game_MissionEnd(GetGameNode(), 1)
  end
end }
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(2, 2, F)