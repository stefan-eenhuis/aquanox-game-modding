-- dekompiliert aus map\2n3\script\2n3.sco
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
  Terrain_LoadTerrain(node1, "map/2N3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2N3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/2N3/Lmsh/", "map/2N3/Ltex/")
  Game_SetTerrainDepth(node0, 1798)
  Game_SetDecompressionHeight(node0, 800)
  Game_SetAmbientLight(node0, 0.019608, 0.141176, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.282353, 0.282353)
  Game_SetParallelLightB(node0, 0.639216, 0.639216, 0.439216)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_2N3_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track03.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "gen_stab2_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1553.317, 2517.038, 579.8054), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_stab2_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1616.885, 2980.789, 536.7987), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1903.757, 2704.546, 516.0891), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_stab3_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1916.369, 2828.95, 515.6904), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_kannon_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1650.005844, 2787.954797, 536.865582), MAT_Vector3(-124.4858, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_kannon_5")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1598.768472, 2593.742983, 518.539744), MAT_Vector3(62.08121, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_kannon_6")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1624.922, 2927.733, 522.5879), MAT_Vector3(120.2823, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_kannon_13")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1591.957, 2713.515, 490.6304), MAT_Vector3(91.82845, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ent_wb3a_1_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1938.250365, 3361.2625, 512.014422), MAT_Vector3(-178.300537, 0, 0))
  Node_ParseIniFile(node16, "osd/ent/ent_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ent_wb3b_1_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2086.753051, 2738.379556, 529.546274), MAT_Vector3(-93.467988, 0, 0))
  Node_ParseIniFile(node17, "osd/ent/ent_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ent_dock3_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2123.371715, 3336.185949, 524.35195), MAT_Vector3(-11.423333, 0, 0))
  Node_ParseIniFile(node18, "osd/ent/ent_dock3.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ent_wb3a_5_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1860.200611, 2479.551168, 529.256232), MAT_Vector3(-4.470003, 0, 0))
  Node_ParseIniFile(node19, "osd/ent/ent_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ent_wb3a_5_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2011.142372, 2531.466717, 529.284966), MAT_Vector3(-137.768236, 0, 0))
  Node_ParseIniFile(node20, "osd/ent/ent_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ent_wb3a_5_3")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2257.291036, 2891.817004, 624.408592), MAT_Vector3(-75.933829, 0, 0))
  Node_ParseIniFile(node21, "osd/ent/ent_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ent_wb3b_3_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1078.21843, 3590.885253, 407.163855), MAT_Vector3(-43.891275, 0, 0))
  Node_ParseIniFile(node22, "osd/ent/ent_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ent_hq_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2005.178155, 3104.918716, 460.3562), MAT_Vector3(-10.15446, 0, 0))
  Node_ParseIniFile(node23, "osd/ent/ent_hgeb.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_gangM_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2008.084932, 2628.07253, 543.357755), MAT_Vector3(40.791081, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_gangG_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1949.836297, 2896.652337, 579.876701), MAT_Vector3(-5.334218, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_gangG_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2004.965074, 3230.554804, 526.682964), MAT_Vector3(1.769881, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_gangG_3")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1932.030764, 2582.104564, 623.104786), MAT_Vector3(-3.127314, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_gangK_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2039.478113, 2741.745138, 543.712321), MAT_Vector3(-95.353534, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1883.734123, 2732.033939, 532.591259), MAT_Vector3(-94.838548, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_fx_sky", "fx_sky_06_1")
  Node_AddSon(node7, node30)
  Node_ParseIniFile(node30, "osd/fx_sky/fx_sky_06.osd")
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node31)
  Node_ParseIniFile(node31, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node32)
  Node_ParseIniFile(node32, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_kai2_ent_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1642.660508, 2705.897742, 495.991805), MAT_Vector3(175.151464, 0, 0))
  Node_ParseIniFile(node33, "osd/gen/gen_kai2_ent.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ent_dock1_1_1")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1682.01817, 2485.140804, 554.350189), MAT_Vector3(-135.304233, 0, 0))
  Node_ParseIniFile(node34, "osd/ent/ent_dock1_1.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ent_dock1_1_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(856.846013, 3652.030833, 419.945548), MAT_Vector3(-135.3042, 0, 0))
  Node_ParseIniFile(node35, "osd/ent/ent_dock1_1.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_turbine_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1710.670643, 2917.073667, 526.370445), MAT_Vector3(-60.150944, 1.299783, 0.259057))
  Node_ParseIniFile(node36, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_turbine_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1750.606504, 2889.067322, 526.3704), MAT_Vector3(-60.15094, 1.299783, 0.259058))
  Node_ParseIniFile(node37, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_turbine_3")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1074.039965, 3476.300178, 418.70743), MAT_Vector3(-15.388207, 1.299783, 0.259058))
  Node_ParseIniFile(node38, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_turbine_4")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1137.741027, 3435.11584, 421.126765), MAT_Vector3(-15.061537, 1.299783, 0.259058))
  Node_ParseIniFile(node39, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_vehiclestation_docking_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(976.050573, 3533.332758, 410.477634), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_vehiclestation_docking.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_pole_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1208.835104, 3314.185331, 391.608047), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(828.335162, 3495.279931, 418.717767), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node43)
  Node_ParseIniFile(node43, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node43, "map/2N3/Terrain/coral_01.tga")
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node44)
  Node_ParseIniFile(node44, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node44, "map/2N3/Terrain/grass_01.tga")
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node45)
  Node_ParseIniFile(node45, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node45, "map/2N3/Terrain/stone_01.tga")
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1014.720989, 1919.530659, 458.572519), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1162.93738, 1791.163305, 447.551953), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(654.911581, 2228.706367, 420.751986), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1344.561941, 2515.793552, 420.740458), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node50)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node50, node51)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node50, node52)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_PatrolArea", "GrubArea_1")
  Node_AddSon(node52, node53)
  PatrolArea_SetPosition(node53, MAT_Vector3(1054.317122, 3301.212462, 460.228285))
  PatrolArea_SetRadius(node53, 160)
  PatrolArea_SetMinZ(node53, -20)
  PatrolArea_SetMaxZ(node53, 20)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node52, node54)
  PatrolArea_SetPosition(node54, MAT_Vector3(968.027204, 3245.147214, 462.51519))
  PatrolArea_SetRadius(node54, 250)
  PatrolArea_SetMinZ(node54, -80)
  PatrolArea_SetMaxZ(node54, 300)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Path", "PolPath_1")
  Node_AddSon(node52, node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node55, node56)
  Position_SetPosition(node56, MAT_Vector3(767.459914, 3589.816098, 498.854849))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node55, node57)
  Position_SetPosition(node57, MAT_Vector3(860.611977, 3521.915346, 491.574129))
  Position_SetRadius(node57, 5)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node55, node58)
  Position_SetPosition(node58, MAT_Vector3(944.070809, 3608.207607, 495.625857))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node55, node59)
  Position_SetPosition(node59, MAT_Vector3(1015.77801, 3613.287796, 471.996193))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node55, node60)
  Position_SetPosition(node60, MAT_Vector3(988.105458, 3488.282056, 466.45031))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Path", "PolPath_2")
  Node_AddSon(node52, node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node61, node62)
  Position_SetPosition(node62, MAT_Vector3(1225.365041, 3227.273704, 509.899732))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node61, node63)
  Position_SetPosition(node63, MAT_Vector3(1225.136581, 3386.957398, 502.037504))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node61, node64)
  Position_SetPosition(node64, MAT_Vector3(1212.169069, 3547.020683, 498.713756))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node61, node65)
  Position_SetPosition(node65, MAT_Vector3(1083.170569, 3539.712703, 485.145963))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node61, node66)
  Position_SetPosition(node66, MAT_Vector3(1070.582292, 3481.10924, 477.797331))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node50, node67)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node50, node68)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node50, node69)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node69, node70)
  Body_SetCS(node70, MAT_Vector3(1301.49504, 3095.757129, 500.301975), MAT_Vector3(56.788878, 0, 0))
  Node_ParseIniFile(node70, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node70, 5)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_vessel", "wng_bonham_c2_1")
  Node_AddSon(node69, node71)
  Body_SetCS(node71, MAT_Vector3(1249.355862, 3322.705645, 648.145655), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/wng/wng_bonham_c2.osd")
  Body_SetFriendOrFoeID(node71, 4)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_vehicle", "ent_raupe_1")
  Node_AddSon(node69, node72)
  Body_SetCS(node72, MAT_Vector3(988.703195, 3396.606891, 542.425844), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node72, 1)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_vehicle", "ent_raupe_2")
  Node_AddSon(node69, node73)
  Body_SetCS(node73, MAT_Vector3(1172.976277, 3364.067261, 542.425844), MAT_Vector3(44.986942, 0, 0))
  Node_ParseIniFile(node73, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node73, 1)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_vehicle", "ent_raupe_3")
  Node_AddSon(node69, node74)
  Body_SetCS(node74, MAT_Vector3(980.772639, 3230.652289, 542.425844), MAT_Vector3(-35.561535, 0, 0))
  Node_ParseIniFile(node74, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node74, 1)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_vehicle", "ent_raupe_4")
  Node_AddSon(node69, node75)
  Body_SetCS(node75, MAT_Vector3(1084.882935, 3210.495075, 542.425844), MAT_Vector3(-87.166164, 0, 0))
  Node_ParseIniFile(node75, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node75, 1)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_vehicle", "ent_raupe_5")
  Node_AddSon(node69, node76)
  Body_SetCS(node76, MAT_Vector3(1061.674188, 3329.716783, 542.425844), MAT_Vector3(114.405529, 0, 0))
  Node_ParseIniFile(node76, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node76, 1)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_vessel", "ent_scout_2h2_1")
  Node_AddSon(node69, node77)
  Body_SetCS(node77, MAT_Vector3(821.12367, 2955.924296, 542.425844), MAT_Vector3(-9.644822, 0, 0))
  Node_ParseIniFile(node77, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node77, 2)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_vessel", "ent_scout_2h2_2")
  Node_AddSon(node69, node78)
  Body_SetCS(node78, MAT_Vector3(1016.533967, 2922.444107, 542.425844), MAT_Vector3(0.438219, 0, 0))
  Node_ParseIniFile(node78, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node78, 2)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_vessel", "ent_scout_2h2_3")
  Node_AddSon(node69, node79)
  Body_SetCS(node79, MAT_Vector3(1138.743343, 2953.328611, 542.425844), MAT_Vector3(40.279412, 0, 0))
  Node_ParseIniFile(node79, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node79, 2)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_vessel", "ent_scout_2h2_4")
  Node_AddSon(node69, node80)
  Body_SetCS(node80, MAT_Vector3(1260.04636, 3014.545165, 542.425844), MAT_Vector3(37.405748, 0, 0))
  Node_ParseIniFile(node80, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node80, 3)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_vessel", "ent_scout_2h2_5")
  Node_AddSon(node69, node81)
  Body_SetCS(node81, MAT_Vector3(677.975693, 2971.386297, 680.305905), MAT_Vector3(-18.972115, 0, 0))
  Node_ParseIniFile(node81, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node81, 3)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_vessel", "ent_scout_2h2_6")
  Node_AddSon(node69, node82)
  Body_SetCS(node82, MAT_Vector3(1130.089181, 2237.963033, 542.4258), MAT_Vector3(-9.644822, 0, 0))
  Node_ParseIniFile(node82, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node82, 2)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_vessel", "ent_scout_2h2_7")
  Node_AddSon(node69, node83)
  Body_SetCS(node83, MAT_Vector3(1069.566783, 2250.472826, 542.4258), MAT_Vector3(0.438219, 0, 0))
  Node_ParseIniFile(node83, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node83, 2)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "ent_scout_2h2_8")
  Node_AddSon(node69, node84)
  Body_SetCS(node84, MAT_Vector3(956.163514, 2249.174027, 542.4258), MAT_Vector3(-9.546683, 0, 0))
  Node_ParseIniFile(node84, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node84, 2)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_vessel", "ent_scout_2h2_9")
  Node_AddSon(node69, node85)
  Body_SetCS(node85, MAT_Vector3(1194.849314, 2242.502694, 542.4258), MAT_Vector3(5.558023, 0, 0))
  Node_ParseIniFile(node85, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node85, 3)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_vessel", "ent_scout_2h2_10")
  Node_AddSon(node69, node86)
  Body_SetCS(node86, MAT_Vector3(1011.879715, 2242.57236, 542.4258), MAT_Vector3(-18.97212, 0, 0))
  Node_ParseIniFile(node86, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node86, 3)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node69, node87)
  Body_SetCS(node87, MAT_Vector3(1026.479874, 3485.460063, 472.829814), MAT_Vector3(178.352046, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node87, 6)
  Body_SetNameKey(node87, 12)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_vessel", "ent_pscout_1")
  Node_AddSon(node69, node88)
  Body_SetCS(node88, MAT_Vector3(737.50402, 3625.547198, 500.060855), MAT_Vector3(-148.573873, 0, 0))
  Node_ParseIniFile(node88, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node88, 6)
  Body_SetNameKey(node88, 14)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "ent_pscout_2")
  Node_AddSon(node69, node89)
  Body_SetCS(node89, MAT_Vector3(1230.20836, 3167.174329, 512.902621), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node89, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node89, 6)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node90)
  Camera_SetBackPlane(node90, 512)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node91)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node91, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node91, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(1109.831405, 3147.070351, 455.207278))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node93, node95)
  Position_SetPosition(node95, MAT_Vector3(1008.910371, 3400.010188, 491.21622))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node91, node96)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Director", "IntroV")
  Node_AddSon(node96, node97)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Director", "Music")
  Node_AddSon(node96, node98)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node91, node99)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node91, node100)
  Node_EnterSimulation(node100)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, E)
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
SetEnemyMatrixElement(1, 5, F)
SetEnemyMatrixElement(2, 5, E)
SetEnemyMatrixElement(3, 5, E)
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
                                                                  if not (o1133.Value ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2509 1600")
  SendRadioMessageTake(o1126.Node, o1126.Node, 172)
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
                                                                  if not (o1157.Value == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
  SendRadioMessageTake(o1126.Node, o1126.Node, 1263)
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
S_o202 = { [nil] = {}, Start = function(L0)

end }
S_o238 = { [nil] = {}, Start = function(L0)

end }
S_o274 = { [nil] = {}, Start = function(L0)

end }
S_o310 = { [nil] = {}, Start = function(L0)

end }
S_o344 = { [nil] = {}, Start = function(L0)

end }
S_o378 = { [nil] = {}, Start = function(L0)

end }
S_o412 = { [nil] = {}, Start = function(L0)

end }
S_o446 = { [nil] = {}, Start = function(L0)

end }
S_o480 = { [nil] = {}, Start = function(L0)

end }
S_o514 = { [nil] = {}, Start = function(L0)

end }
S_o548 = { [nil] = {}, Start = function(L0)

end }
S_o582 = { [nil] = {}, Start = function(L0)

end }
S_o616 = { [nil] = {}, Start = function(L0)

end }
S_o650 = { [nil] = {}, Start = function(L0)

end }
S_o684 = { [nil] = {}, Start = function(L0)

end }
S_o718 = { [nil] = {}, Start = function(L0)

end }
S_o752 = { [nil] = {}, Start = function(L0)

end }
S_o786 = { [nil] = {}, Start = function(L0)

end }
S_o820 = { [nil] = {}, Start = function(L0)

end }
S_o854 = { [nil] = {}, Start = function(L0)

end }
S_o888 = { [nil] = {}, Start = function(L0)

end }
S_o922 = { [nil] = {}, Start = function(L0)

end }
S_o956 = { [nil] = {}, Start = function(L0)

end }
S_o990 = { [nil] = {}, Start = function(L0)

end }
S_o1024 = { [nil] = {}, Start = function(L0)

end }
S_o1058 = { [nil] = {}, Start = function(L0)

end }
S_o1092 = { [nil] = {}, Start = function(L0)

end }
S_o1126 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o1126, "Code8")
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
o1131 = { [nil] = {}, GetCalculated = function()
  if not (o1409.Value ~= True) then
    if not (o1457.Value ~= True) then
      if not (o1505.Value ~= True) then
        if not (o1553.Value ~= True) then
          if not (o1601.Value ~= True) then
            if not (o1649.Value ~= True) then
              if not (o1697.Value ~= True) then
                if not (o1745.Value ~= True) then
                  if not (o1793.Value ~= True) then
                    if not (o1841.Value ~= True) then
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
  o1131.SetStateValue(o1131.GetCalculated())
end, StartCalculate = function()
  o1131["Value"] = o1131.GetCalculated()
  o1133.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1131.Value == L0) then
    DelayedFunction(4, o1131, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1131.Value == L0) then
    o1131["Value"] = L0
    o1133.ReCalculate()
  end
end }
o1132 = { [nil] = {}, GetCalculated = function()
  if not (o1214.Value == True) then
    if not (o1253.Value == True) then
      if not (o1292.Value == True) then
        if not (o1331.Value == True) then
          if not (o1370.Value == True) then
            if not (o1888.Value ~= True) then
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
  o1132.SetStateValue(o1132.GetCalculated())
end, StartCalculate = function()
  o1132["Value"] = o1132.GetCalculated()
  o1157.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1132.Value == L0) then
    o1132["Value"] = L0
    o1157.ReCalculate()
  end
end }
o1133 = { [nil] = {}, GetCalculated = function()
  if not (o1131.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1133.SetStateValue(o1133.GetCalculated())
end, StartCalculate = function()
  o1133["Value"] = o1133.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1133.Value == L0) then
    o1133["Value"] = L0
    o2.ReCalculate()
  end
end }
o1157 = { [nil] = {}, GetCalculated = function()
  if not (o1132.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1157.SetStateValue(o1157.GetCalculated())
end, StartCalculate = function()
  o1157["Value"] = o1157.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1157.Value == L0) then
    o1157["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1161, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1161, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1161, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1161, "Code4")
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
S_o1209 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1209, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1209, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1209, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/GrubArea_1", "/Scenario_Dynamic/Navigation/GrubArea_1" }, 1, "Code4")
  else
    CallFunction(o1209, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1214.SetStateValue(L1)
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
o1214 = { [nil] = {}, Start = function()
  o1214["Value"] = False
  o1132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1214.Value == L0) then
    o1214["Value"] = L0
    o1132.ReCalculate()
  end
end }
S_o1248 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1248, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1248, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1248, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/GrubArea_1", "/Scenario_Dynamic/Navigation/GrubArea_1" }, 1, "Code4")
  else
    CallFunction(o1248, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1253.SetStateValue(L1)
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
o1253 = { [nil] = {}, Start = function()
  o1253["Value"] = False
  o1132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1253.Value == L0) then
    o1253["Value"] = L0
    o1132.ReCalculate()
  end
end }
S_o1287 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1287, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1287, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1287, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/GrubArea_1", "/Scenario_Dynamic/Navigation/GrubArea_1" }, 1, "Code4")
  else
    CallFunction(o1287, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1292.SetStateValue(L1)
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
o1292 = { [nil] = {}, Start = function()
  o1292["Value"] = False
  o1132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1292.Value == L0) then
    o1292["Value"] = L0
    o1132.ReCalculate()
  end
end }
S_o1326 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1326, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1326, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1326, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/GrubArea_1", "/Scenario_Dynamic/Navigation/GrubArea_1" }, 1, "Code4")
  else
    CallFunction(o1326, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1331.SetStateValue(L1)
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
o1331 = { [nil] = {}, Start = function()
  o1331["Value"] = False
  o1132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1331.Value == L0) then
    o1331["Value"] = L0
    o1132.ReCalculate()
  end
end }
S_o1365 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1365, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1365, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1365, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/GrubArea_1", "/Scenario_Dynamic/Navigation/GrubArea_1" }, 1, "Code4")
  else
    CallFunction(o1365, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1370.SetStateValue(L1)
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
o1370 = { [nil] = {}, Start = function()
  o1370["Value"] = False
  o1132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1370.Value == L0) then
    o1370["Value"] = L0
    o1132.ReCalculate()
  end
end }
S_o1404 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1404, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1404, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1404, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "ent_raupe", "E", "", "", 1, "Code4")
  else
    CallFunction(o1404, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Born = function(L0, L1)
  o1408.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1409.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1406.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1406 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1406.SetStateValue(o1406.GetCalculated())
end, StartCalculate = function()
  o1406["Value"] = o1406.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1406.Value == L0) then
    DelayedFunction(50, o1406, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1406.Value == L0) then
    o1406["Value"] = L0
    CallFunction(o1404, "ProcesseStateChange")
  end
end }
o1408 = { [nil] = {}, Start = function()
  o1408["Value"] = False
  o1646.StartCalculate()
  o1694.StartCalculate()
  o1742.StartCalculate()
  o1790.StartCalculate()
  o1838.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1408.Value == L0) then
    o1408["Value"] = L0
    o1646.ReCalculate()
    o1694.ReCalculate()
    o1742.ReCalculate()
    o1790.ReCalculate()
    o1838.ReCalculate()
  end
end }
o1409 = { [nil] = {}, Start = function()
  o1409["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1409.Value == L0) then
    o1409["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1452 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1452, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1452, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1452, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "ent_raupe", "E", "", "", 1, "Code4")
  else
    CallFunction(o1452, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1457.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1454.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1454 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1454.SetStateValue(o1454.GetCalculated())
end, StartCalculate = function()
  o1454["Value"] = o1454.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1454.Value == L0) then
    DelayedFunction(50, o1454, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1454.Value == L0) then
    o1454["Value"] = L0
    CallFunction(o1452, "ProcesseStateChange")
  end
end }
o1457 = { [nil] = {}, Start = function()
  o1457["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1457.Value == L0) then
    o1457["Value"] = L0
    o1131.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1500, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "ent_raupe", "E", "", "", 1, "Code4")
  else
    CallFunction(o1500, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1505.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1502.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1502 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1502.SetStateValue(o1502.GetCalculated())
end, StartCalculate = function()
  o1502["Value"] = o1502.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1502.Value == L0) then
    DelayedFunction(50, o1502, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1502.Value == L0) then
    o1502["Value"] = L0
    CallFunction(o1500, "ProcesseStateChange")
  end
end }
o1505 = { [nil] = {}, Start = function()
  o1505["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1505.Value == L0) then
    o1505["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1548 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1548, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1548, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1548, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "ent_raupe", "E", "", "", 1, "Code4")
  else
    CallFunction(o1548, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1553.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1550.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1550 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1550.SetStateValue(o1550.GetCalculated())
end, StartCalculate = function()
  o1550["Value"] = o1550.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1550.Value == L0) then
    DelayedFunction(50, o1550, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1550.Value == L0) then
    o1550["Value"] = L0
    CallFunction(o1548, "ProcesseStateChange")
  end
end }
o1553 = { [nil] = {}, Start = function()
  o1553["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1553.Value == L0) then
    o1553["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1596 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1596, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1596, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1596, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "ent_raupe", "E", "", "", 1, "Code4")
  else
    CallFunction(o1596, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1601.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1598.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1598 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1598.SetStateValue(o1598.GetCalculated())
end, StartCalculate = function()
  o1598["Value"] = o1598.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1598.Value == L0) then
    DelayedFunction(50, o1598, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1598.Value == L0) then
    o1598["Value"] = L0
    CallFunction(o1596, "ProcesseStateChange")
  end
end }
o1601 = { [nil] = {}, Start = function()
  o1601["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1601.Value == L0) then
    o1601["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1644 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1644, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1644, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1644, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "E", "", "", 1, "Code4")
  else
    CallFunction(o1644, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1649.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1646.Value ~= True) then
        L1 = 0
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
  if not (o1408.Value ~= True) then
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
    DelayedFunction(40, o1646, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1646.Value == L0) then
    o1646["Value"] = L0
    CallFunction(o1644, "ProcesseStateChange")
  end
end }
o1649 = { [nil] = {}, Start = function()
  o1649["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1649.Value == L0) then
    o1649["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1692 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1692, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1692, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1692, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "E", "", "", 1, "Code4")
  else
    CallFunction(o1692, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1697.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1694.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1694 = { [nil] = {}, GetCalculated = function()
  if not (o1408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1694.SetStateValue(o1694.GetCalculated())
end, StartCalculate = function()
  o1694["Value"] = o1694.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1694.Value == L0) then
    DelayedFunction(40, o1694, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1694.Value == L0) then
    o1694["Value"] = L0
    CallFunction(o1692, "ProcesseStateChange")
  end
end }
o1697 = { [nil] = {}, Start = function()
  o1697["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1697.Value == L0) then
    o1697["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1740 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1740, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1740, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1740, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "E", "", "", 1, "Code4")
  else
    CallFunction(o1740, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1745.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1742.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1742 = { [nil] = {}, GetCalculated = function()
  if not (o1408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1742.SetStateValue(o1742.GetCalculated())
end, StartCalculate = function()
  o1742["Value"] = o1742.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1742.Value == L0) then
    DelayedFunction(40, o1742, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1742.Value == L0) then
    o1742["Value"] = L0
    CallFunction(o1740, "ProcesseStateChange")
  end
end }
o1745 = { [nil] = {}, Start = function()
  o1745["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1745.Value == L0) then
    o1745["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1788 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1788, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1788, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1788, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "E", "", "", 1, "Code4")
  else
    CallFunction(o1788, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1793.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1790.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1790 = { [nil] = {}, GetCalculated = function()
  if not (o1408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1790.SetStateValue(o1790.GetCalculated())
end, StartCalculate = function()
  o1790["Value"] = o1790.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1790.Value == L0) then
    DelayedFunction(40, o1790, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1790.Value == L0) then
    o1790["Value"] = L0
    CallFunction(o1788, "ProcesseStateChange")
  end
end }
o1793 = { [nil] = {}, Start = function()
  o1793["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1793.Value == L0) then
    o1793["Value"] = L0
    o1131.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1836, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "pla", "E", "", "", 1, "Code4")
  else
    CallFunction(o1836, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1841.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
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
o1838 = { [nil] = {}, GetCalculated = function()
  if not (o1408.Value ~= True) then
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
    DelayedFunction(40, o1838, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1838.Value == L0) then
    o1838["Value"] = L0
    CallFunction(o1836, "ProcesseStateChange")
  end
end }
o1841 = { [nil] = {}, Start = function()
  o1841["Value"] = False
  o1131.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1841.Value == L0) then
    o1841["Value"] = L0
    o1131.ReCalculate()
  end
end }
S_o1884 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1884, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1884, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1884, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Born = function(L0, L1)
  o1887.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1888.SetStateValue(L1)
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
o1887 = { [nil] = {}, Start = function()
  o1887["Value"] = False
  o1406.StartCalculate()
  o1454.StartCalculate()
  o1502.StartCalculate()
  o1550.StartCalculate()
  o1598.StartCalculate()
  o1933.StartCalculate()
  o1982.StartCalculate()
  o2039.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1887.Value == L0) then
    o1887["Value"] = L0
    o1406.ReCalculate()
    o1454.ReCalculate()
    o1502.ReCalculate()
    o1550.ReCalculate()
    o1598.ReCalculate()
    o1933.ReCalculate()
    o1982.ReCalculate()
    o2039.ReCalculate()
  end
end }
o1888 = { [nil] = {}, Start = function()
  o1888["Value"] = False
  o1132.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1888.Value == L0) then
    o1888["Value"] = L0
    o1132.ReCalculate()
  end
end }
S_o1931 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1931, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1931, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1931, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1931, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_1", 1, 1 } }("Code5")
  else
    CallFunction(o1931, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1931, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1931, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1933.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1933 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1933.SetStateValue(o1933.GetCalculated())
end, StartCalculate = function()
  o1933["Value"] = o1933.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1933.Value == L0) then
    DelayedFunction(65, o1933, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1933.Value == L0) then
    o1933["Value"] = L0
    CallFunction(o1931, "ProcesseStateChange")
  end
end }
S_o1980 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1980, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1980, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1980, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1980, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1126.Node, o1126.Node, 100)
  CallFunction(o1980, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolPath_2", 1, 1 } }("Code6")
  else
    CallFunction(o1980, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1980, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1980, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1982.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1982 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1982.SetStateValue(o1982.GetCalculated())
end, StartCalculate = function()
  o1982["Value"] = o1982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1982.Value == L0) then
    DelayedFunction(65, o1982, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1982.Value == L0) then
    o1982["Value"] = L0
    CallFunction(o1980, "ProcesseStateChange")
  end
end }
S_o2029 = { [nil] = {}, Start = function(L0)

end }
S_o2030 = { [nil] = {}, Start = function(L0)

end }
S_o2031 = { [nil] = {}, Start = function(L0)

end }
S_o2032 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/ent_raupe_4", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o2032, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code7")
  else
    CallFunction(o2032, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SendRadioMessageTake(o1126.Node, o1126.Node, 99)
  CallFunction(o2032, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code9")
  else
    CallFunction(o2032, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/gen_freighter1_1", 4, "MMMN", 0)
  CallFunction(o2032, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code12")
  else
    CallFunction(o2032, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_Cut(L0.Node, 1)
  CallFunction(o2032, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o2032, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Director_EndCutscene(L0.Node)
  SED_SetTaskTextKey(1358, -1, -1)
  CallFunction(o2032, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2038 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  CallFunction(o2038, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2038, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o2038, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2039.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2039 = { [nil] = {}, GetCalculated = function()
  if not (o1887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2039.SetStateValue(o2039.GetCalculated())
end, StartCalculate = function()
  o2039["Value"] = o2039.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2039.Value == L0) then
    DelayedFunction(50, o2039, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2039.Value == L0) then
    o2039["Value"] = L0
    CallFunction(o2038, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 100)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab2_2", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_2", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_1/Turm1", S_o166)
  o202 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_5/Turm1", S_o202)
  o238 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_6/Turm1", S_o238)
  o274 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kannon_13/Turm1", S_o274)
  o310 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wb3a_1_1", S_o310)
  o344 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wb3b_1_1", S_o344)
  o378 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock3_1", S_o378)
  o412 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wb3a_5_1", S_o412)
  o446 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wb3a_5_2", S_o446)
  o480 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wb3a_5_3", S_o480)
  o514 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wb3b_3_1", S_o514)
  o548 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_hq_1", S_o548)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_2", S_o582)
  o616 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangG_1", S_o616)
  o650 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangG_2", S_o650)
  o684 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangG_3", S_o684)
  o718 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangK_1", S_o718)
  o752 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o752)
  o786 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_ent_1", S_o786)
  o820 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock1_1_1", S_o820)
  o854 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock1_1_2", S_o854)
  o888 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_1", S_o888)
  o922 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_2", S_o922)
  o956 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_3", S_o956)
  o990 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_4", S_o990)
  o1024 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_docking_1", S_o1024)
  o1058 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_1", S_o1058)
  o1092 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o1092)
  o1126 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1126)
  o1161 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_c2_1", S_o1161)
  o1209 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_raupe_1", S_o1209)
  o1214.Start()
  o1248 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_raupe_2", S_o1248)
  o1253.Start()
  o1287 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_raupe_3", S_o1287)
  o1292.Start()
  o1326 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_raupe_4", S_o1326)
  o1331.Start()
  o1365 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_raupe_5", S_o1365)
  o1370.Start()
  o1404 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_1", S_o1404)
  o1408.Start()
  o1409.Start()
  o1452 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_2", S_o1452)
  o1457.Start()
  o1500 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_3", S_o1500)
  o1505.Start()
  o1548 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_4", S_o1548)
  o1553.Start()
  o1596 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_5", S_o1596)
  o1601.Start()
  o1644 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_6", S_o1644)
  o1649.Start()
  o1692 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_7", S_o1692)
  o1697.Start()
  o1740 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_8", S_o1740)
  o1745.Start()
  o1788 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_9", S_o1788)
  o1793.Start()
  o1836 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_10", S_o1836)
  o1841.Start()
  o1884 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_1", S_o1884)
  o1887.Start()
  o1888.Start()
  o1931 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_1", S_o1931)
  o1980 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_pscout_2", S_o1980)
  o2029 = BindEasy(Node_Find("/"), "Camera", S_o2029)
  o2030 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o2030)
  o2031 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o2031)
  o2032 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroV", S_o2032)
  o2038 = BindEasy(Node_Find("/InGameSequences/Director"), "Music", S_o2038)
  Game_LoadProgress_Leave(Node_Find("/"))
end