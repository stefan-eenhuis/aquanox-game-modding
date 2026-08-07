-- dekompiliert aus map\2n3\script\sta_entroxhq.sco
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
  node22 = Node_CreateNode("nod_generic", "ent_hq_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2005.178155, 3104.918716, 460.3562), MAT_Vector3(-10.15446, 0, 0))
  Node_ParseIniFile(node22, "osd/ent/ent_hgeb.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_gangG_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1949.836297, 2896.652337, 579.876701), MAT_Vector3(-5.334218, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_gangG_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2004.965074, 3230.554804, 526.682964), MAT_Vector3(1.769881, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_gangG_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1932.030764, 2582.104564, 623.104786), MAT_Vector3(-3.127314, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_gangK_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2039.478113, 2741.745138, 543.712321), MAT_Vector3(-95.353534, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1883.734123, 2732.033939, 532.591259), MAT_Vector3(-94.838548, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_fx_sky", "fx_sky_06_1")
  Node_AddSon(node7, node28)
  Node_ParseIniFile(node28, "osd/fx_sky/fx_sky_06.osd")
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node29)
  Node_ParseIniFile(node29, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node30)
  Node_ParseIniFile(node30, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_kai2_ent_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1642.660508, 2705.897742, 495.991805), MAT_Vector3(175.151464, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_kai2_ent.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ent_dock1_1_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1682.01817, 2485.140804, 554.350189), MAT_Vector3(-135.304233, 0, 0))
  Node_ParseIniFile(node32, "osd/ent/ent_dock1_1.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_turbine_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1710.670643, 2917.073667, 526.370445), MAT_Vector3(-60.150944, 1.299783, 0.259057))
  Node_ParseIniFile(node33, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_turbine_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1750.606504, 2889.067322, 526.3704), MAT_Vector3(-60.15094, 1.299783, 0.259058))
  Node_ParseIniFile(node34, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node35)
  Node_ParseIniFile(node35, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node35, "map/2N3/Terrain/coral_01.tga")
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node36)
  Node_ParseIniFile(node36, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node36, "map/2N3/Terrain/grass_01.tga")
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node37)
  Node_ParseIniFile(node37, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node37, "map/2N3/Terrain/stone_01.tga")
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node38)
  Camera_SetBackPlane(node38, 512)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node39)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node39, node40)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node39, node41)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("NOD_PatrolArea", "GrubArea_1")
  Node_AddSon(node41, node42)
  PatrolArea_SetPosition(node42, MAT_Vector3(1054.317, 3301.212, 460.2283))
  PatrolArea_SetRadius(node42, 160)
  PatrolArea_SetMinZ(node42, -20)
  PatrolArea_SetMaxZ(node42, 20)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("NOD_Path", "TiburonPath_1")
  Node_AddSon(node41, node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node43, node44)
  Position_SetPosition(node44, MAT_Vector3(2054.215, 2756.566, 565))
  Position_SetRadius(node44, 5)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node43, node45)
  Position_SetPosition(node45, MAT_Vector3(2062.482, 2884.106, 565))
  Position_SetRadius(node45, 5)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node43, node46)
  Position_SetPosition(node46, MAT_Vector3(2006.978, 2950.238, 565))
  Position_SetRadius(node46, 5)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node43, node47)
  Position_SetPosition(node47, MAT_Vector3(1695.213, 2990.39, 565))
  Position_SetRadius(node47, 5)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node43, node48)
  Position_SetPosition(node48, MAT_Vector3(1663.328, 2594.779, 565))
  Position_SetRadius(node48, 5)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node43, node49)
  Position_SetPosition(node49, MAT_Vector3(1852.277, 2532.19, 565))
  Position_SetRadius(node49, 5)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node43, node50)
  Position_SetPosition(node50, MAT_Vector3(2024.693, 2521.562, 565))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node43, node51)
  Position_SetPosition(node51, MAT_Vector3(2040.045, 2634.931, 565))
  Position_SetRadius(node51, 5)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Path", "BomberPath_1")
  Node_AddSon(node41, node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node52, node53)
  Position_SetPosition(node53, MAT_Vector3(2000.606, 2914.483, 687))
  Position_SetRadius(node53, 5)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node52, node54)
  Position_SetPosition(node54, MAT_Vector3(1716.07, 2948.972, 687))
  Position_SetRadius(node54, 5)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node52, node55)
  Position_SetPosition(node55, MAT_Vector3(1732.165, 2586.261, 687))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node52, node56)
  Position_SetPosition(node56, MAT_Vector3(1993.133, 2558.095, 687))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node52, node57)
  Position_SetPosition(node57, MAT_Vector3(2079.356, 2733.99, 687))
  Position_SetRadius(node57, 5)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node52, node58)
  Position_SetPosition(node58, MAT_Vector3(2086.254, 2848.379, 687))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Path", "PolicePath_1")
  Node_AddSon(node41, node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node59, node60)
  Position_SetPosition(node60, MAT_Vector3(1741.195, 2950.878, 590))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node59, node61)
  Position_SetPosition(node61, MAT_Vector3(2035.503, 2915.239, 590))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node59, node62)
  Position_SetPosition(node62, MAT_Vector3(2050.448, 2853.733, 590))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node59, node63)
  Position_SetPosition(node63, MAT_Vector3(2048.724, 2742.793, 590))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node59, node64)
  Position_SetPosition(node64, MAT_Vector3(1912.492, 2532.409, 590))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node59, node65)
  Position_SetPosition(node65, MAT_Vector3(1577.947, 2622.656, 590))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node59, node66)
  Position_SetPosition(node66, MAT_Vector3(1490.574, 2966.973, 590))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node59, node67)
  Position_SetPosition(node67, MAT_Vector3(1626.232, 2962.949, 590))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Path", "BombaPath_1")
  Node_AddSon(node41, node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node68, node69)
  Position_SetPosition(node69, MAT_Vector3(1608.927, 2933.221, 590))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node68, node70)
  Position_SetPosition(node70, MAT_Vector3(1949.035, 2897.793, 590))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node68, node71)
  Position_SetPosition(node71, MAT_Vector3(2044.628, 2854.443, 590))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node68, node72)
  Position_SetPosition(node72, MAT_Vector3(2048.077, 2771.669, 590))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node68, node73)
  Position_SetPosition(node73, MAT_Vector3(2026.234, 2584.278, 590))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node68, node74)
  Position_SetPosition(node74, MAT_Vector3(1439.312, 2637.42, 590))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node68, node75)
  Position_SetPosition(node75, MAT_Vector3(1424.362, 2948.923, 590))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node39, node76)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node39, node77)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node39, node78)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node78, node79)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_vessel", "gen_tiburon_1")
  Node_AddSon(node79, node80)
  Body_SetCS(node80, MAT_Vector3(2049.913, 2719.702, 565), MAT_Vector3(-5.497915, 0, 0))
  Node_ParseIniFile(node80, "osd/gen/gen_tiburon.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_vessel", "ent_bomber_1")
  Node_AddSon(node79, node81)
  Body_SetCS(node81, MAT_Vector3(2044.8, 2883.751, 687), MAT_Vector3(47.89226, 0, 0))
  Node_ParseIniFile(node81, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_vessel", "ent_scout_1")
  Node_AddSon(node79, node82)
  Body_SetCS(node82, MAT_Vector3(2055.174, 2812.536, 687), MAT_Vector3(43.92401, 0, 0))
  Node_ParseIniFile(node82, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_vessel", "ent_scout_2")
  Node_AddSon(node79, node83)
  Body_SetCS(node83, MAT_Vector3(2115.53, 2857.372, 687), MAT_Vector3(44.0298, 0, 0))
  Node_ParseIniFile(node83, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_vessel", "ent_pscout_1")
  Node_AddSon(node79, node84)
  Body_SetCS(node84, MAT_Vector3(1681.102, 2958.148, 590), MAT_Vector3(-98.28626, 0, 0))
  Node_ParseIniFile(node84, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_vessel", "ent_pscout_2")
  Node_AddSon(node79, node85)
  Body_SetCS(node85, MAT_Vector3(1669.606, 2979.991, 590), MAT_Vector3(-98.28626, 0, 0))
  Node_ParseIniFile(node85, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_vessel", "ent_pscout_3")
  Node_AddSon(node79, node86)
  Body_SetCS(node86, MAT_Vector3(1662.708, 2941.478, 590), MAT_Vector3(-98.28626, 0, 0))
  Node_ParseIniFile(node86, "osd/ent/ent_pscout.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_vessel", "ent_bomber_2")
  Node_AddSon(node79, node87)
  Body_SetCS(node87, MAT_Vector3(1500.973, 2941.163, 560), MAT_Vector3(-97.65161, 0, 0))
  Node_ParseIniFile(node87, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Scenario", "entroxhq-cam")
  Node_AddSon(node0, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node88, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node88, node90)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "MoveFrom")
  Node_AddSon(node90, node91)
  Position_SetPosition(node91, MAT_Vector3(1578.094087, 2958.597406, 554.1135))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "LookFrom")
  Node_AddSon(node90, node92)
  Position_SetPosition(node92, MAT_Vector3(1745.61793, 2979.029494, 554.113503))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "LookAt")
  Node_AddSon(node90, node93)
  Position_SetPosition(node93, MAT_Vector3(2203.628115, 2996.958718, 615.973956))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node88, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Director", "stationcamera")
  Node_AddSon(node94, node95)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node88, node96)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node88, node97)
  Node_EnterSimulation(node97)
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
o856 = FormationLib.CreateFormation("Triangle", "", "", "", 40, 25)
o858 = FormationLib.CreateFormation("Row", "", "", "", 15, 15)
S_o859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o859, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o859, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o859, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o859, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o859, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TiburonPath_1", 0.5, 1 } }("Code7")
  else
    CallFunction(o859, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o859, "Code6")
  else
    CallFunction(o859, "Code8")
  end
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
S_o907 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o907, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o907, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o907, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o907, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o907, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o855, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.75, 1 } }, o856, "/Scenario_Dynamic/Navigation/GrubArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o907, "Code7")
  end
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
S_o955 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o955, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o955, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o955, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o955, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o955, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o855, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.75, 1 } }, o856, "/Scenario_Dynamic/Navigation/GrubArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o955, "Code7")
  end
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
S_o1003 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1003, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1003, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1003, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1003, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o1003, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o855, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberPath_1", 0.75, 1 } }, o856, "/Scenario_Dynamic/Navigation/GrubArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o1003, "Code7")
  end
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
S_o1051 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1051, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1051, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1051, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1051, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o1051, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o857, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 0.75, 1 } }, o858, "/Scenario_Dynamic/Navigation/GrubArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o1051, "Code7")
  end
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
S_o1099 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1099, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1099, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1099, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1099, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o1099, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o857, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 0.75, 1 } }, o858, "/Scenario_Dynamic/Navigation/GrubArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o1099, "Code7")
  end
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
S_o1147 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1147, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1147, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1147, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1147, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o1147, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o857, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 0.75, 1 } }, o858, "/Scenario_Dynamic/Navigation/GrubArea_1", 0, "", "", "", "", 0, 1, True, "Code7")
  else
    CallFunction(o1147, "Code7")
  end
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
S_o1195 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1195, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1195, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1195, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1195, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o1195, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BombaPath_1", 0.5, 1 } }("Code7")
  else
    CallFunction(o1195, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o1195, "Code6")
  else
    CallFunction(o1195, "Code8")
  end
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
S_o1243 = { [nil] = {}, Start = function(L0)

end }
S_o1244 = { [nil] = {}, Start = function(L0)

end }
S_o1245 = { [nil] = {}, Start = function(L0)

end }
S_o1246 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Camera_MoveTo(L0.Node, "/entroxhq-cam/Navigation/MoveFrom", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/entroxhq-cam/Navigation/LookAt", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o1246, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.15, "Code4")
  else
    CallFunction(o1246, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/entroxhq-cam/Navigation/LookFrom", 3, "MMMN", 0)
  CallFunction(o1246, "Code5")
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
  Game_LoadProgress_Enter(Node_Find("/"), 97)
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
  o514 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_hq_1", S_o514)
  o548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangG_1", S_o548)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangG_2", S_o582)
  o616 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangG_3", S_o616)
  o650 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangK_1", S_o650)
  o684 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o684)
  o718 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_ent_1", S_o718)
  o752 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock1_1_1", S_o752)
  o786 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_1", S_o786)
  o820 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_2", S_o820)
  o854 = BindEasy(Node_Find("/"), "Camera", S_o854)
  o859 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_tiburon_1", S_o859)
  o907 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_bomber_1", S_o907)
  o955 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_scout_1", S_o955)
  o1003 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_scout_2", S_o1003)
  o1051 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_pscout_1", S_o1051)
  o1099 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_pscout_2", S_o1099)
  o1147 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_pscout_3", S_o1147)
  o1195 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_bomber_2", S_o1195)
  o1243 = BindEasy(Node_Find("/entroxhq-cam/Navigation"), "MoveFrom", S_o1243)
  o1244 = BindEasy(Node_Find("/entroxhq-cam/Navigation"), "LookFrom", S_o1244)
  o1245 = BindEasy(Node_Find("/entroxhq-cam/Navigation"), "LookAt", S_o1245)
  o1246 = BindEasy(Node_Find("/entroxhq-cam/Director"), "stationcamera", S_o1246)
  o855 = MacroFuse({})
  o857 = { {}, o1051, o1099, o1147 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end