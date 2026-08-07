-- dekompiliert aus map\5n2\script\5n2.sco
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
  Terrain_LoadTerrain(node1, "map/5N2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/5N2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/5N2/Lmsh/", "map/5N2/Ltex/")
  Game_SetTerrainDepth(node0, 3545)
  Game_SetDecompressionHeight(node0, 512)
  Game_SetAmbientLight(node0, 0.070588, 0.12549, 0.015686)
  Game_SetParallelLightT(node0, 0.141176, 0.25098, 0.031373)
  Game_SetParallelLightB(node0, 0.666667, 0.443137, 0.172549)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_5N2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track02.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "tz_element07a_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(3803.712813, 477.224715, 423.251845), MAT_Vector3(90.201321, 0, 0))
  Node_ParseIniFile(node8, "osd/tz/tz_element07a.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3450.050912, 947.381275, 412.925981), MAT_Vector3(-47.566263, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "tz_element03a_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(3743.390859, 652.025869, 417.277887), MAT_Vector3(-179.937736, 0, 0))
  Node_ParseIniFile(node10, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "tz_element05a_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3710.226275, 818.181332, 412.99485), MAT_Vector3(-89.907658, 0, 0))
  Node_ParseIniFile(node11, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "tz_element01a_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3767.162857, 298.836212, 428.367512), MAT_Vector3(90.205389, 0, 0))
  Node_ParseIniFile(node12, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "tz_element01a_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3711.403058, 1086.529322, 521.143732), MAT_Vector3(-89.577999, 0, 0))
  Node_ParseIniFile(node13, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "tz_element06_raw_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(3733.120703, 910.363022, 428.172926), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node14, "osd/tz/tz_element06_raw.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "tz_element03a_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3714.49609, 1161.543947, 501.446049), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node15, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "tz_element05a_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3886.241329, 1026.340205, 502.13691), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node16, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "tz_geb_add_palace_big_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3750.134543, 1024.456093, 700.645609), MAT_Vector3(90.111667, 0, 0))
  Node_ParseIniFile(node17, "osd/tz/tz_geb_add_palace_big.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "tz_geb_add_china_big_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3684.526617, 718.75579, 578.896299), MAT_Vector3(179.921699, 0, 0))
  Node_ParseIniFile(node18, "osd/tz/tz_geb_add_china_big.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "tz_geb_addon01_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3713.906334, 1195.931929, 763.106604), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/tz/tz_geb_addon01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "tz_geb_addon01_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3839.717927, 519.232867, 607.529422), MAT_Vector3(-90.178907, 0, 0))
  Node_ParseIniFile(node20, "osd/tz/tz_geb_addon01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_geb_addon01_3")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(3585.281279, 738.326844, 662.215957), MAT_Vector3(179.780384, 0, 0))
  Node_ParseIniFile(node21, "osd/tz/tz_geb_addon01.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_element03a_3")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3896.50781, 968.330057, 493.870427), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node22, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "tz_element03a_4")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(3381.524637, 1180.655739, 412.388742), MAT_Vector3(-179.934468, 0, 0))
  Node_ParseIniFile(node23, "osd/tz/tz_element03a.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "tz_element05_raw_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3480.653668, 1195.054453, 404.165981), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/tz/tz_element05_raw.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "tz_element04_1_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3678.041127, 1199.325771, 470.328258), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "tz_element04_1_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3664.683964, 775.179399, 413.837298), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node26, "osd/tz/tz_element04_1.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "tz_element01a_3")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3894.093252, 935.905456, 500.203619), MAT_Vector3(179.392514, 0, 0))
  Node_ParseIniFile(node27, "osd/tz/tz_element01a.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "tz_element06a_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3694.426643, 580.339067, 416.448286), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/tz/tz_element06a.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "tz_element01_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3604.605818, 760.385685, 428.390618), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3093.46534, 606.929876, 440.065053), MAT_Vector3(-0.100047, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(3472.271869, 769.160195, 404.310551), MAT_Vector3(90.163334, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(3076.466723, 477.939419, 450.911109), MAT_Vector3(-90.031794, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "tz_element05a_3")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2983.114448, 507.443546, 458.359252), MAT_Vector3(90.365947, 0, 0))
  Node_ParseIniFile(node33, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "tz_element01_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2986.564332, 651.305036, 456.568744), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(3536.896639, 723.318511, 399.716089), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_tank_sml2_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3627.221168, 1140.68053, 483.951202), MAT_Vector3(-28.829568, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node37)
  Node_ParseIniFile(node37, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node38)
  Node_ParseIniFile(node38, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_fx_sky", "fx_sky_07_1")
  Node_AddSon(node7, node39)
  Node_ParseIniFile(node39, "osd/fx_sky/fx_sky_07.osd")
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_fungus", "fungus_01_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3492.866494, 155.348265, 362.728344), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_fungus", "fungus_01_2")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3430.95161, 303.256044, 364.00818), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_fungus", "fungus_01_3")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2698.292144, 733.22052, 408.645882), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_fungus", "fungus_01_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1091.358017, 3386.317345, 361.483618), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/fungus/fungus_01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2941.083577, 1151.138265, 273.647179), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2999.558746, 1178.655992, 248.213546), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1545.400503, 3124.898944, 356.544744), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1541.960788, 3032.026617, 300.13995), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_fungus", "fungus_02_5")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1968.485547, 2939.154291, 311.160645), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_fungus", "fungus_02_6")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1952.593316, 2795.45207, 269.206342), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_fungus", "fungus_02_7")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2133.180382, 2859.126642, 264.502227), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_fungus", "fungus_02_8")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2582.804134, 2460.564957, 278.656173), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fungus", "fungus_02_9")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2561.239355, 2550.404929, 276.87067), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_fungus", "fungus_02_10")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2317.652932, 1858.321607, 352.948848), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_fungus", "fungus_02_11")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2428.016922, 1927.409007, 335.010772), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_fungus", "fungus_02_12")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1825.501874, 2847.703397, 305.989898), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_fungus", "fungus_02_13")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2399.885642, 2557.34024, 268.746364), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_fungus", "fungus_02_14")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2634.544126, 2174.699562, 286.011532), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_fungus", "fungus_02_15")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2642.427308, 2103.309105, 263.974496), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_fungus", "fungus_02_16")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1247.804952, 3324.222665, 268.826789), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fungus", "fungus_02_17")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1218.82338, 3246.150013, 276.3429), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node60, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node61)
  Node_ParseIniFile(node61, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node61, "map/5N2/Terrain/grass01.tga")
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node62)
  Node_ParseIniFile(node62, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node62, "map/5N2/Terrain/stone01.tga")
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node63)
  Node_ParseIniFile(node63, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node63, "map/5N2/Terrain/coral01.tga")
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node64)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node64, node65)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node64, node66)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node66, node67)
  PatrolArea_SetPosition(node67, MAT_Vector3(2286.812099, 2676.824211, 422.269509))
  PatrolArea_SetRadius(node67, 150)
  PatrolArea_SetMinZ(node67, -80)
  PatrolArea_SetMaxZ(node67, 80)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1_2")
  Node_AddSon(node66, node68)
  PatrolArea_SetPosition(node68, MAT_Vector3(2286.812, 2676.824, 422.2695))
  PatrolArea_SetRadius(node68, 250)
  PatrolArea_SetMinZ(node68, -80)
  PatrolArea_SetMaxZ(node68, 80)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node66, node69)
  PatrolArea_SetPosition(node69, MAT_Vector3(2373.258095, 1686.752509, 422.2695))
  PatrolArea_SetRadius(node69, 200)
  PatrolArea_SetMinZ(node69, -80)
  PatrolArea_SetMaxZ(node69, 80)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_3")
  Node_AddSon(node66, node70)
  PatrolArea_SetPosition(node70, MAT_Vector3(2609.857818, 2307.07776, 412.23588))
  PatrolArea_SetRadius(node70, 100)
  PatrolArea_SetMinZ(node70, -80)
  PatrolArea_SetMaxZ(node70, 80)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node66, node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node71, node72)
  Position_SetPosition(node72, MAT_Vector3(2508.371527, 2478.226296, 440.865828))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node71, node73)
  Position_SetPosition(node73, MAT_Vector3(2598.095101, 2153.696667, 443.380074))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node71, node74)
  Position_SetPosition(node74, MAT_Vector3(2361.811893, 1750.879005, 460.39872))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node66, node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node75, node76)
  Position_SetPosition(node76, MAT_Vector3(2408.347312, 1544.831185, 500.978265))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node75, node77)
  Position_SetPosition(node77, MAT_Vector3(2273.482534, 1654.928844, 469.78036))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node75, node78)
  Position_SetPosition(node78, MAT_Vector3(2322.331374, 1794.784866, 457.416742))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node75, node79)
  Position_SetPosition(node79, MAT_Vector3(2415.104949, 1802.012773, 459.101801))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node75, node80)
  Position_SetPosition(node80, MAT_Vector3(2491.418136, 1730.002017, 466.447624))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node75, node81)
  Position_SetPosition(node81, MAT_Vector3(2489.139916, 1652.436892, 459.252451))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node75, node82)
  Position_SetPosition(node82, MAT_Vector3(2438.820126, 1568.139776, 458.156658))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node75, node83)
  Position_SetPosition(node83, MAT_Vector3(2527.850621, 1485.424726, 458.815424))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node64, node84)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node64, node85)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node85, node86)
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetPosition(node86, MAT_Vector3(2445.246013, 1587.449872, 471.813618))
  Trigger_SetPresenceSphere(node86, 25)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2")
  Node_AddSon(node85, node87)
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetPosition(node87, MAT_Vector3(2361.229733, 1596.966648, 471.813618))
  Trigger_SetPresenceSphere(node87, 25)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Trigger", "TriggerPresence_3")
  Node_AddSon(node85, node88)
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetPosition(node88, MAT_Vector3(2293.521238, 1647.482331, 471.813618))
  Trigger_SetPresenceSphere(node88, 25)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Trigger", "TriggerPresence_4")
  Node_AddSon(node85, node89)
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetPosition(node89, MAT_Vector3(2284.43696, 1714.288075, 471.813618))
  Trigger_SetPresenceSphere(node89, 25)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Trigger", "TriggerPresence_5")
  Node_AddSon(node85, node90)
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetPosition(node90, MAT_Vector3(2320.027186, 1785.167309, 471.813618))
  Trigger_SetPresenceSphere(node90, 25)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Trigger", "TriggerPresence_6")
  Node_AddSon(node85, node91)
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetPosition(node91, MAT_Vector3(2430.630841, 1781.851323, 471.813618))
  Trigger_SetPresenceSphere(node91, 25)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Trigger", "TriggerPresence_7")
  Node_AddSon(node85, node92)
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetPosition(node92, MAT_Vector3(2486.201894, 1737.610822, 471.813618))
  Trigger_SetPresenceSphere(node92, 25)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Trigger", "TriggerPresence_8")
  Node_AddSon(node85, node93)
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetPosition(node93, MAT_Vector3(2493.142437, 1672.24671, 471.813618))
  Trigger_SetPresenceSphere(node93, 25)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Trigger", "TriggerPresence_9")
  Node_AddSon(node85, node94)
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetPosition(node94, MAT_Vector3(2477.745954, 1626.689723, 471.813618))
  Trigger_SetPresenceSphere(node94, 25)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Trigger", "TriggerPresence_10")
  Node_AddSon(node85, node95)
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetPosition(node95, MAT_Vector3(2374.395266, 1792.45579, 471.813618))
  Trigger_SetPresenceSphere(node95, 25)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node85, node96)
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetCS(node96, MAT_Vector3(2541.041784, 2273.713254, 422.461354), MAT_Vector3(31.416934, 0, 0))
  Trigger_SetBoxMode(node96, 380, 40, 220)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node64, node97)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node97, node98)
  Body_SetCS(node98, MAT_Vector3(2089.387681, 2790.295382, 512.814997), MAT_Vector3(-125.837485, 0, 0))
  Node_ParseIniFile(node98, "osd/pla/pla_succubus2.osd")
  Body_SetFriendOrFoeID(node98, 1)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Directory", "EscapePods")
  Node_AddSon(node97, node99)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "gen_escapepod_1_1")
  Node_AddSon(node99, node100)
  Body_SetCS(node100, MAT_Vector3(2445.76, 1587.781, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node100, 3)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, 1146, 0)
  Body_SetCargoKey(node100, 1147, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "gen_escapepod_1_2")
  Node_AddSon(node99, node101)
  Body_SetCS(node101, MAT_Vector3(2477.58, 1573.562, 441.0217), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node101, 3)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, 1144, 0)
  Body_SetCargoKey(node101, 1145, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "gen_escapepod_1_3")
  Node_AddSon(node99, node102)
  Body_SetCS(node102, MAT_Vector3(2429.432, 1623.313, 506.938), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node102, 3)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, 1148, 0)
  Body_SetCargoKey(node102, 1149, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "gen_escapepod_1_4")
  Node_AddSon(node99, node103)
  Body_SetCS(node103, MAT_Vector3(2413.927358, 1589.39833, 474.445723), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node103, 3)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, 1150, 0)
  Body_SetCargoKey(node103, 1151, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "gen_escapepod_2_1")
  Node_AddSon(node99, node104)
  Body_SetCS(node104, MAT_Vector3(2360.902, 1596.36, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node104, 3)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "gen_escapepod_2_2")
  Node_AddSon(node99, node105)
  Body_SetCS(node105, MAT_Vector3(2355.219, 1568.099, 441.5587), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node105, 3)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "gen_escapepod_2_3")
  Node_AddSon(node99, node106)
  Body_SetCS(node106, MAT_Vector3(2374.602, 1611.183, 433.0882), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node106, 3)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "gen_escapepod_2_4")
  Node_AddSon(node99, node107)
  Body_SetCS(node107, MAT_Vector3(2347.516, 1635.683, 490.0037), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node107, 3)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "gen_escapepod_3_1")
  Node_AddSon(node99, node108)
  Body_SetCS(node108, MAT_Vector3(2293.552, 1647.574, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node108, 3)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "gen_escapepod_3_2")
  Node_AddSon(node99, node109)
  Body_SetCS(node109, MAT_Vector3(2334.898, 1670.436, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node109, 3)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "gen_escapepod_3_3")
  Node_AddSon(node99, node110)
  Body_SetCS(node110, MAT_Vector3(2265.809, 1662.094, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node110, 3)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "gen_escapepod_3_4")
  Node_AddSon(node99, node111)
  Body_SetCS(node111, MAT_Vector3(2288.202, 1634.694, 437.9225), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node111, 3)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "gen_escapepod_4_1")
  Node_AddSon(node99, node112)
  Body_SetCS(node112, MAT_Vector3(2285.032, 1714.05, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node112, 3)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "gen_escapepod_4_2")
  Node_AddSon(node99, node113)
  Body_SetCS(node113, MAT_Vector3(2265.94, 1753.07, 436.8522), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node113, 3)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "gen_escapepod_4_3")
  Node_AddSon(node99, node114)
  Body_SetCS(node114, MAT_Vector3(2259.046, 1714.308, 500.8886), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node114, 3)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "gen_escapepod_4_4")
  Node_AddSon(node99, node115)
  Body_SetCS(node115, MAT_Vector3(2335.678, 1716.117, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node115, 3)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "gen_escapepod_5_1")
  Node_AddSon(node99, node116)
  Body_SetCS(node116, MAT_Vector3(2319.914, 1784.162, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node116, 3)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "gen_escapepod_5_2")
  Node_AddSon(node99, node117)
  Body_SetCS(node117, MAT_Vector3(2311.959, 1798.386, 487.2894), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node117, 3)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "gen_escapepod_5_3")
  Node_AddSon(node99, node118)
  Body_SetCS(node118, MAT_Vector3(2333.172, 1781.495, 443.6101), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node118, 3)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "gen_escapepod_5_4")
  Node_AddSon(node99, node119)
  Body_SetCS(node119, MAT_Vector3(2306.391, 1783.94, 453.8791), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node119, 3)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "gen_escapepod_6_1")
  Node_AddSon(node99, node120)
  Body_SetCS(node120, MAT_Vector3(2429.996, 1783.438, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node120, 3)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "gen_escapepod_6_2")
  Node_AddSon(node99, node121)
  Body_SetCS(node121, MAT_Vector3(2437.353, 1802.024, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node121, 3)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "gen_escapepod_6_3")
  Node_AddSon(node99, node122)
  Body_SetCS(node122, MAT_Vector3(2425.349, 1763.949, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node122, 3)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "gen_escapepod_6_4")
  Node_AddSon(node99, node123)
  Body_SetCS(node123, MAT_Vector3(2444.71, 1785.245, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node123, 3)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, 1168, 0)
  Body_SetCargoKey(node123, 1169, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "gen_escapepod_7_1")
  Node_AddSon(node99, node124)
  Body_SetCS(node124, MAT_Vector3(2484.261, 1735.54, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node124, 3)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, 1170, 0)
  Body_SetCargoKey(node124, 1171, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "gen_escapepod_7_2")
  Node_AddSon(node99, node125)
  Body_SetCS(node125, MAT_Vector3(2500.911, 1746.124, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node125, 3)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, 1172, 0)
  Body_SetCargoKey(node125, 1173, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "gen_escapepod_7_3")
  Node_AddSon(node99, node126)
  Body_SetCS(node126, MAT_Vector3(2464.513, 1736.573, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node126, 3)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, 1174, 0)
  Body_SetCargoKey(node126, 1175, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "gen_escapepod_7_4")
  Node_AddSon(node99, node127)
  Body_SetCS(node127, MAT_Vector3(2494.328, 1718.761, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node127, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node127, 3)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "gen_escapepod_8_1")
  Node_AddSon(node99, node128)
  Body_SetCS(node128, MAT_Vector3(2493.095, 1672.074, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node128, 3)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, 1176, 0)
  Body_SetCargoKey(node128, 1177, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "gen_escapepod_8_2")
  Node_AddSon(node99, node129)
  Body_SetCS(node129, MAT_Vector3(2517.514877, 1686.688926, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node129, 3)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, 1178, 0)
  Body_SetCargoKey(node129, 1179, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "gen_escapepod_8_3")
  Node_AddSon(node99, node130)
  Body_SetCS(node130, MAT_Vector3(2466.270135, 1698.528867, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node130, 3)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, 1133, 0)
  Body_SetCargoKey(node130, 1134, 1)
  Body_SetCargoKey(node130, 1135, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "gen_escapepod_8_4")
  Node_AddSon(node99, node131)
  Body_SetCS(node131, MAT_Vector3(2518.99487, 1656.719077, 449.508642), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node131, 3)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "gen_escapepod_9_1")
  Node_AddSon(node99, node132)
  Body_SetCS(node132, MAT_Vector3(2477.806, 1626.716, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node132, 3)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, 1152, 0)
  Body_SetCargoKey(node132, 1153, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "gen_escapepod_9_2")
  Node_AddSon(node99, node133)
  Body_SetCS(node133, MAT_Vector3(2499.549, 1630.163, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node133, 3)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, 1154, 0)
  Body_SetCargoKey(node133, 1155, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vessel", "gen_escapepod_9_3")
  Node_AddSon(node99, node134)
  Body_SetCS(node134, MAT_Vector3(2458.714, 1624.86, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node134, 3)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, 1156, 0)
  Body_SetCargoKey(node134, 1157, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "gen_escapepod_9_4")
  Node_AddSon(node99, node135)
  Body_SetCS(node135, MAT_Vector3(2488.943, 1612.397, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node135, 3)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, 1158, 0)
  Body_SetCargoKey(node135, 1159, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_vessel", "gen_escapepod_10_1")
  Node_AddSon(node99, node136)
  Body_SetCS(node136, MAT_Vector3(2374.301, 1794.547, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node136, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node136, 3)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, 1160, 0)
  Body_SetCargoKey(node136, 1161, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vessel", "gen_escapepod_10_2")
  Node_AddSon(node99, node137)
  Body_SetCS(node137, MAT_Vector3(2363.429, 1782.615, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node137, 3)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, 1162, 0)
  Body_SetCargoKey(node137, 1163, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "gen_escapepod_10_3")
  Node_AddSon(node99, node138)
  Body_SetCS(node138, MAT_Vector3(2369.528, 1814.7, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node138, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node138, 3)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, 1164, 0)
  Body_SetCargoKey(node138, 1165, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "gen_escapepod_10_4")
  Node_AddSon(node99, node139)
  Body_SetCS(node139, MAT_Vector3(2386.499, 1773.599, 471.8136), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node139, "osd/gen/gen_escapepod.osd")
  Body_SetFriendOrFoeID(node139, 3)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, 1166, 0)
  Body_SetCargoKey(node139, 1167, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vessel", "wng_harper_c5_1")
  Node_AddSon(node97, node140)
  Body_SetCS(node140, MAT_Vector3(1635.005323, 3032.031117, 461.768647), MAT_Vector3(-126.053862, 0, 0))
  Node_ParseIniFile(node140, "osd/wng/wng_harper_c5.osd")
  Body_SetFriendOrFoeID(node140, 2)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vessel", "wng_pico_c5_1")
  Node_AddSon(node97, node141)
  Body_SetCS(node141, MAT_Vector3(1589.17355, 2969.177309, 461.768647), MAT_Vector3(-113.5685, 0, 0))
  Node_ParseIniFile(node141, "osd/wng/wng_pico_c5.osd")
  Body_SetFriendOrFoeID(node141, 2)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "atl_scout1_1_emp")
  Node_AddSon(node97, node142)
  Body_SetCS(node142, MAT_Vector3(2332.766113, 2706.572676, 436.522521), MAT_Vector3(-15.486652, 44.799449, -61.947895))
  Node_ParseIniFile(node142, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node142, 3)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "atl_scout1_2_emp")
  Node_AddSon(node97, node143)
  Body_SetCS(node143, MAT_Vector3(2280.672556, 2751.806592, 436.718181), MAT_Vector3(-81.361612, 67.116405, -19.829965))
  Node_ParseIniFile(node143, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node143, 3)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vessel", "atl_scout1_3_emp")
  Node_AddSon(node97, node144)
  Body_SetCS(node144, MAT_Vector3(2352.398413, 2627.2037, 404.69334), MAT_Vector3(-75.942612, 25.35877, 16.205352))
  Node_ParseIniFile(node144, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node144, 3)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "atl_scout2_1_emp")
  Node_AddSon(node97, node145)
  Body_SetCS(node145, MAT_Vector3(2252.528658, 2683.22298, 424.5694), MAT_Vector3(-165.4409, -0.956202, 54.049217))
  Node_ParseIniFile(node145, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node145, 3)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "atl_scout2_2_emp")
  Node_AddSon(node97, node146)
  Body_SetCS(node146, MAT_Vector3(2236.386131, 2642.441887, 513.294793), MAT_Vector3(31.113234, 65.495216, -147.676105))
  Node_ParseIniFile(node146, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node146, 3)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "atl_scout1_4_emp")
  Node_AddSon(node97, node147)
  Body_SetCS(node147, MAT_Vector3(2419.724389, 1735.142165, 411.58409), MAT_Vector3(-70.504135, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_vessel", "atl_scout1_5_emp")
  Node_AddSon(node97, node148)
  Body_SetCS(node148, MAT_Vector3(2359.703482, 1641.731779, 416.767206), MAT_Vector3(65.567131, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_vessel", "atl_scout1_6_emp")
  Node_AddSon(node97, node149)
  Body_SetCS(node149, MAT_Vector3(2411.170267, 1623.509949, 396.180214), MAT_Vector3(-147.794308, 0, 0))
  Node_ParseIniFile(node149, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node97, node150)
  Body_SetPosition(node150, MAT_Vector3(2287.342566, 2679.930128, 422.143489))
  WayPoint_SetRadius(node150, 205)
  Node_ParseIniFile(node150, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node97, node151)
  Body_SetPosition(node151, MAT_Vector3(2373.597488, 1686.87221, 428.647777))
  WayPoint_SetRadius(node151, 200)
  Node_ParseIniFile(node151, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vessel", "gen_freighter1_1")
  Node_AddSon(node97, node152)
  Body_SetCS(node152, MAT_Vector3(2685.483281, 1415.927385, 479.931163), MAT_Vector3(51.192142, 0, 0))
  Node_ParseIniFile(node152, "osd/gen/gen_freighter1.osd")
  Body_SetFriendOrFoeID(node152, 0)
  Body_SetNameKey(node152, 100)
  Body_SetCargoKey(node152, 1139, 0)
  Body_SetCargoKey(node152, 1138, 1)
  Body_SetCargoKey(node152, 1140, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "bio_scout_5n2_1")
  Node_AddSon(node97, node153)
  Body_SetCS(node153, MAT_Vector3(2173.294427, 2673.867482, 569.9104), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/bio/bio_scout_5n2.osd")
  Body_SetFriendOrFoeID(node153, 4)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "bio_scout_5n2_2")
  Node_AddSon(node97, node154)
  Body_SetCS(node154, MAT_Vector3(2299.761642, 2714.157922, 569.9104), MAT_Vector3(-80.878668, 0, 0))
  Node_ParseIniFile(node154, "osd/bio/bio_scout_5n2.osd")
  Body_SetFriendOrFoeID(node154, 4)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "bio_scout_5n2_3")
  Node_AddSon(node97, node155)
  Body_SetCS(node155, MAT_Vector3(2410.560353, 2623.504431, 569.9104), MAT_Vector3(-120.499463, 0, 0))
  Node_ParseIniFile(node155, "osd/bio/bio_scout_5n2.osd")
  Body_SetFriendOrFoeID(node155, 5)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "bio_scout_5n2_4")
  Node_AddSon(node97, node156)
  Body_SetCS(node156, MAT_Vector3(2276.258885, 2566.426307, 569.9104), MAT_Vector3(-65.841879, 0, 0))
  Node_ParseIniFile(node156, "osd/bio/bio_scout_5n2.osd")
  Body_SetFriendOrFoeID(node156, 5)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "bio_scout_5n2_5")
  Node_AddSon(node97, node157)
  Body_SetCS(node157, MAT_Vector3(2180.0095, 2588.809885, 569.9104), MAT_Vector3(-63.330449, 0, 0))
  Node_ParseIniFile(node157, "osd/bio/bio_scout_5n2.osd")
  Body_SetFriendOrFoeID(node157, 5)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vessel", "bio_bomber_5n2_1")
  Node_AddSon(node97, node158)
  Body_SetCS(node158, MAT_Vector3(2662.493096, 2313.555203, 443.068615), MAT_Vector3(69.435528, 0, 0))
  Node_ParseIniFile(node158, "osd/bio/bio_bomber_5n2.osd")
  Body_SetFriendOrFoeID(node158, 4)
  Body_SetNameKey(node158, 8)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node159)
  Camera_SetBackPlane(node159, 512)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node160, node161)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node160, node162)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Path", "PlaWngPath_1")
  Node_AddSon(node162, node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node163, node164)
  Position_SetPosition(node164, MAT_Vector3(1269.572097, 3258.59427, 444.589539))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node163, node165)
  Position_SetPosition(node165, MAT_Vector3(1486.03066, 3113.166595, 451.233561))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node163, node166)
  Position_SetPosition(node166, MAT_Vector3(1844.479058, 2880.98519, 441.596782))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node163, node167)
  Position_SetPosition(node167, MAT_Vector3(1954.392525, 2886.75276, 451.83521))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node163, node168)
  Position_SetPosition(node168, MAT_Vector3(2073.062191, 2838.110378, 443.496506))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node162, node169)
  Position_SetPosition(node169, MAT_Vector3(1308.123757, 3129.021198, 505.482767))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node162, node170)
  Position_SetPosition(node170, MAT_Vector3(1677.023331, 3139.728253, 464.298509))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node162, node171)
  Position_SetPosition(node171, MAT_Vector3(2120.129337, 2707.201869, 461.474078))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node162, node172)
  Position_SetPosition(node172, MAT_Vector3(1888.76499, 2838.374515, 455.667086))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node162, node173)
  Position_SetPosition(node173, MAT_Vector3(3615.265706, 700.722734, 502.784213))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "Position_6")
  Node_AddSon(node162, node174)
  Position_SetPosition(node174, MAT_Vector3(3629.97868, 590.299493, 487.44765))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "Position_7")
  Node_AddSon(node162, node175)
  Position_SetPosition(node175, MAT_Vector3(3535.308855, 637.243396, 485.05471))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "Position_8")
  Node_AddSon(node162, node176)
  Position_SetPosition(node176, MAT_Vector3(3564.55343, 750.997925, 489.885139))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node160, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Director", "IntroChapter1V")
  Node_AddSon(node177, node178)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Director", "IntroChapter1Addon")
  Node_AddSon(node177, node179)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node160, node180)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node160, node181)
  Node_EnterSimulation(node181)
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
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, E)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, E)
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
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, N)
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
                                                            if not (o1097.Value ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2609 0009")
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
                                                            if not (o1121.Value == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1016, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1016, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1016, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1016, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1016, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1021.SetStateValue(L1)
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
o1021 = { [nil] = {}, Start = function()
  o1021["Value"] = False
  o1092.StartCalculate()
  o1096.StartCalculate()
  o1127.StartCalculate()
  o1175.StartCalculate()
  o1223.StartCalculate()
  o1271.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1021.Value == L0) then
    o1021["Value"] = L0
    o1092.ReCalculate()
    o1096.ReCalculate()
    o1127.ReCalculate()
    o1175.ReCalculate()
    o1223.ReCalculate()
    o1271.ReCalculate()
  end
end }
S_o1022 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1022, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1022, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1022, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1022, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1022, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1022, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1027.SetStateValue(L1)
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
o1027 = { [nil] = {}, Start = function()
  o1027["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o1319.StartCalculate()
  o1367.StartCalculate()
  o1415.StartCalculate()
  o1463.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1027.Value == L0) then
    o1027["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o1319.ReCalculate()
    o1367.ReCalculate()
    o1415.ReCalculate()
    o1463.ReCalculate()
  end
end }
S_o1028 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1028, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1028, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1028, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1028, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1028, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1028, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1033.SetStateValue(L1)
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
o1033 = { [nil] = {}, Start = function()
  o1033["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o1511.StartCalculate()
  o1559.StartCalculate()
  o1607.StartCalculate()
  o1655.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1033.Value == L0) then
    o1033["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o1511.ReCalculate()
    o1559.ReCalculate()
    o1607.ReCalculate()
    o1655.ReCalculate()
  end
end }
S_o1034 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1034, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1034, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1034, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1034, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1034, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1034, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1039.SetStateValue(L1)
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
o1039 = { [nil] = {}, Start = function()
  o1039["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o1703.StartCalculate()
  o1751.StartCalculate()
  o1799.StartCalculate()
  o1847.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1039.Value == L0) then
    o1039["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o1703.ReCalculate()
    o1751.ReCalculate()
    o1799.ReCalculate()
    o1847.ReCalculate()
  end
end }
S_o1040 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1040, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1040, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1040, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1040, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1040, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1040, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1045.SetStateValue(L1)
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
o1045 = { [nil] = {}, Start = function()
  o1045["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o1895.StartCalculate()
  o1943.StartCalculate()
  o1991.StartCalculate()
  o2039.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1045.Value == L0) then
    o1045["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o1895.ReCalculate()
    o1943.ReCalculate()
    o1991.ReCalculate()
    o2039.ReCalculate()
  end
end }
S_o1046 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1046, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1046, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1046, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1046, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1046, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1046, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1051.SetStateValue(L1)
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
o1051 = { [nil] = {}, Start = function()
  o1051["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o2087.StartCalculate()
  o2135.StartCalculate()
  o2183.StartCalculate()
  o2231.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1051.Value == L0) then
    o1051["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o2087.ReCalculate()
    o2135.ReCalculate()
    o2183.ReCalculate()
    o2231.ReCalculate()
  end
end }
S_o1052 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1052, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1052, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1052, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1052, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1052, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1052, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1057.SetStateValue(L1)
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
o1057 = { [nil] = {}, Start = function()
  o1057["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o2279.StartCalculate()
  o2327.StartCalculate()
  o2375.StartCalculate()
  o2423.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1057.Value == L0) then
    o1057["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o2279.ReCalculate()
    o2327.ReCalculate()
    o2375.ReCalculate()
    o2423.ReCalculate()
  end
end }
S_o1058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1058, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1058, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1058, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1058, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1058, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1058, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1063.SetStateValue(L1)
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
o1063 = { [nil] = {}, Start = function()
  o1063["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o2471.StartCalculate()
  o2519.StartCalculate()
  o2567.StartCalculate()
  o2615.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1063.Value == L0) then
    o1063["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o2471.ReCalculate()
    o2519.ReCalculate()
    o2567.ReCalculate()
    o2615.ReCalculate()
  end
end }
S_o1064 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1064, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1064, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1064, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1064, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1064, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1064, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1069.SetStateValue(L1)
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
o1069 = { [nil] = {}, Start = function()
  o1069["Value"] = False
  o1091.StartCalculate()
  o1092.StartCalculate()
  o2663.StartCalculate()
  o2711.StartCalculate()
  o2759.StartCalculate()
  o2807.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1069.Value == L0) then
    o1069["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o2663.ReCalculate()
    o2711.ReCalculate()
    o2759.ReCalculate()
    o2807.ReCalculate()
  end
end }
S_o1070 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1070, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1070, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1070, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freighter1_1", "", "", "", False, False, True)
  CallFunction(o1070, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1070, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1070, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
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
  o1091.StartCalculate()
  o1092.StartCalculate()
  o2855.StartCalculate()
  o2903.StartCalculate()
  o2951.StartCalculate()
  o2999.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1075.Value == L0) then
    o1075["Value"] = L0
    o1091.ReCalculate()
    o1092.ReCalculate()
    o2855.ReCalculate()
    o2903.ReCalculate()
    o2951.ReCalculate()
    o2999.ReCalculate()
  end
end }
S_o1076 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1076, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1076, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1076, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o1076, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1076, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1076, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1081.SetStateValue(L1)
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
o1081 = { [nil] = {}, Start = function()
  o1081["Value"] = False
  o1090.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1081.Value == L0) then
    o1081["Value"] = L0
    o1090.ReCalculate()
  end
end }
S_o1082 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 3000)
  Body_AddItem(L0.Node, "torpedo_leech", 3)
  Body_AddItem(L0.Node, "torpedo_maneater", 9)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "device_repair", 1)
  CallFunction(o1082, "Code8")
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
o1087 = { [nil] = {}, GetCalculated = function()
  if not (o3601.Value == True) then
    if not (o3652.Value == True) then
      if not (o3703.Value == True) then
        if not (o3754.Value == True) then
          if not (o3805.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1087.SetStateValue(o1087.GetCalculated())
end, StartCalculate = function()
  o1087["Value"] = o1087.GetCalculated()
  o1088.StartCalculate()
  o3584.StartCalculate()
  o3635.StartCalculate()
  o3686.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1087.Value == L0) then
    DelayedFunction(2, o1087, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1087.Value == L0) then
    o1087["Value"] = L0
    o1088.ReCalculate()
    o3584.ReCalculate()
    o3635.ReCalculate()
    o3686.ReCalculate()
  end
end }
o1088 = { [nil] = {}, GetCalculated = function()
  if not (o1087.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1088.SetStateValue(o1088.GetCalculated())
end, StartCalculate = function()
  o1088["Value"] = o1088.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1082.Node, o1082.Node, 301)
  Game_SetWayPoint(GetGameNode(), o3530.Node)
end, SetStateValue = function(L0)
  if not (o1088.Value == L0) then
    DelayedFunction(10, o1088, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1088.Value == L0) then
    o1088["Value"] = L0
    if not (L0 ~= 1) then
      o1088.ChangeTo1()
    end
  end
end }
o1089 = { [nil] = {}, GetCalculated = function()
  if not (o3533.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1089.SetStateValue(o1089.GetCalculated())
end, StartCalculate = function()
  o1089["Value"] = o1089.GetCalculated()
  o3537.StartCalculate()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(1366, -1, -1)
end, SetStateValue = function(L0)
  if not (o1089.Value == L0) then
    DelayedFunction(10, o1089, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1089.Value == L0) then
    o1089["Value"] = L0
    o3537.ReCalculate()
    if not (L0 ~= 1) then
      o1089.ChangeTo1()
    end
  end
end }
o1090 = { [nil] = {}, GetCalculated = function()
  if not (o1081.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1090.SetStateValue(o1090.GetCalculated())
end, StartCalculate = function()
  o1090["Value"] = o1090.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1082.Node, o1082.Node, 303)
  CallFunction(o3045, "Code10")
  CallFunction(o3097, "Code10")
end, SetStateValue = function(L0)
  if not (o1090.Value == L0) then
    o1090["Value"] = L0
    if not (L0 ~= 1) then
      o1090.ChangeTo1()
    end
  end
end }
o1091 = { [nil] = {}, GetCalculated = function()
  if not (o1096.Value ~= True) then
    if not (o1027.Value ~= True) then
      if not (o1033.Value ~= True) then
        if not (o1039.Value ~= True) then
          if not (o1045.Value ~= True) then
            if not (o1051.Value ~= True) then
              if not (o1057.Value ~= True) then
                if not (o1063.Value ~= True) then
                  if not (o1069.Value ~= True) then
                    if not (o1075.Value ~= True) then
                      if not (o3540.Value ~= False) then
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
end, ReCalculate = function()
  o1091.SetStateValue(o1091.GetCalculated())
end, StartCalculate = function()
  o1091["Value"] = o1091.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1082.Node, o1082.Node, 312)
  SendRadioMessageTake(o1082.Node, o1082.Node, 1221)
end, SetStateValue = function(L0)
  if not (o1091.Value == L0) then
    o1091["Value"] = L0
    if not (L0 ~= 1) then
      o1091.ChangeTo1()
    end
  end
end }
o1092 = { [nil] = {}, GetCalculated = function()
  if not (o1021.Value ~= True) then
    if not (o1027.Value ~= True) then
      if not (o1033.Value ~= True) then
        if not (o1039.Value ~= True) then
          if not (o1045.Value ~= True) then
            if not (o1051.Value ~= True) then
              if not (o1057.Value ~= True) then
                if not (o1063.Value ~= True) then
                  if not (o1069.Value ~= True) then
                    if not (o1075.Value ~= True) then
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
  o1092.SetStateValue(o1092.GetCalculated())
end, StartCalculate = function()
  o1092["Value"] = o1092.GetCalculated()
  o1097.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1092.Value == L0) then
    DelayedFunction(15, o1092, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1092.Value == L0) then
    o1092["Value"] = L0
    o1097.ReCalculate()
  end
end }
o1094 = { [nil] = {}, GetCalculated = function()
  if not (o1130.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1178.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1226.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1274.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1322.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1370.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1418.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1466.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1514.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1562.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1610.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1658.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1706.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1754.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1802.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1850.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1898.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1946.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1994.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2042.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2090.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2138.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2186.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2234.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2282.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2330.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2378.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2426.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2474.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2522.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2570.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2618.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2666.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2714.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2762.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2810.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2858.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2906.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2954.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3002.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1094.SetStateValue(o1094.GetCalculated())
end, StartCalculate = function()
  o1094["Value"] = o1094.GetCalculated()
  o1095.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1094.Value == L0) then
    o1094["Value"] = L0
    o1095.ReCalculate()
  end
end }
o1095 = { [nil] = {}, GetCalculated = function()
  if not (o1094.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1095.SetStateValue(o1095.GetCalculated())
end, StartCalculate = function()
  o1095["Value"] = o1095.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1082.Node, o1082.Node, 1222)
end, SetStateValue = function(L0)
  if not (o1095.Value == L0) then
    DelayedFunction(3, o1095, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1095.Value == L0) then
    o1095["Value"] = L0
    if not (L0 ~= 1) then
      o1095.ChangeTo1()
    end
  end
end }
o1096 = { [nil] = {}, GetCalculated = function()
  if not (o1021.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1096.SetStateValue(o1096.GetCalculated())
end, StartCalculate = function()
  o1096["Value"] = o1096.GetCalculated()
  o1091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1096.Value == L0) then
    DelayedFunction(3, o1096, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1096.Value == L0) then
    o1096["Value"] = L0
    o1091.ReCalculate()
  end
end }
o1097 = { [nil] = {}, GetCalculated = function()
  if not (o1092.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1097.SetStateValue(o1097.GetCalculated())
end, StartCalculate = function()
  o1097["Value"] = o1097.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Mission is won")
end, SetStateValue = function(L0)
  if not (o1097.Value == L0) then
    o1097["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o1097.ChangeTo1()
    end
  end
end }
o1121 = { [nil] = {}, GetCalculated = function()
  if not (o3540.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1121.SetStateValue(o1121.GetCalculated())
end, StartCalculate = function()
  o1121["Value"] = o1121.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1121.Value == L0) then
    o1121["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1125 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1125, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1125, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1125, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1125, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1125, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1125, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1125, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1130.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1127.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1127 = { [nil] = {}, GetCalculated = function()
  if not (o1021.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1127.SetStateValue(o1127.GetCalculated())
end, StartCalculate = function()
  o1127["Value"] = o1127.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1127.Value == L0) then
    o1127["Value"] = L0
    CallFunction(o1125, "ProcesseStateChange")
  end
end }
o1130 = { [nil] = {}, Start = function()
  o1130["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1130.Value == L0) then
    o1130["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1173 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1173, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1173, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1173, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1173, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1173, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1173, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1173, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1178.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1175.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1175 = { [nil] = {}, GetCalculated = function()
  if not (o1021.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1175.SetStateValue(o1175.GetCalculated())
end, StartCalculate = function()
  o1175["Value"] = o1175.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1175.Value == L0) then
    o1175["Value"] = L0
    CallFunction(o1173, "ProcesseStateChange")
  end
end }
o1178 = { [nil] = {}, Start = function()
  o1178["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1178.Value == L0) then
    o1178["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1221 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1221, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1221, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1221, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1221, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1221, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1221, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1221, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1226.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1223.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1223 = { [nil] = {}, GetCalculated = function()
  if not (o1021.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1223.SetStateValue(o1223.GetCalculated())
end, StartCalculate = function()
  o1223["Value"] = o1223.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1223.Value == L0) then
    o1223["Value"] = L0
    CallFunction(o1221, "ProcesseStateChange")
  end
end }
o1226 = { [nil] = {}, Start = function()
  o1226["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1226.Value == L0) then
    o1226["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1269 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1269, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1269, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1269, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1269, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1269, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1269, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1269, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1274.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1271.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1271 = { [nil] = {}, GetCalculated = function()
  if not (o1021.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1271.SetStateValue(o1271.GetCalculated())
end, StartCalculate = function()
  o1271["Value"] = o1271.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1271.Value == L0) then
    o1271["Value"] = L0
    CallFunction(o1269, "ProcesseStateChange")
  end
end }
o1274 = { [nil] = {}, Start = function()
  o1274["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1274.Value == L0) then
    o1274["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1317 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1317, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1317, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1317, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1317, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1317, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1317, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1317, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1322.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1319.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1319 = { [nil] = {}, GetCalculated = function()
  if not (o1027.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1319.SetStateValue(o1319.GetCalculated())
end, StartCalculate = function()
  o1319["Value"] = o1319.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1319.Value == L0) then
    o1319["Value"] = L0
    CallFunction(o1317, "ProcesseStateChange")
  end
end }
o1322 = { [nil] = {}, Start = function()
  o1322["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1322.Value == L0) then
    o1322["Value"] = L0
    o1094.ReCalculate()
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
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1365, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1365, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1365, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1365, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1370.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1367.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1367 = { [nil] = {}, GetCalculated = function()
  if not (o1027.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1367.SetStateValue(o1367.GetCalculated())
end, StartCalculate = function()
  o1367["Value"] = o1367.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1367.Value == L0) then
    o1367["Value"] = L0
    CallFunction(o1365, "ProcesseStateChange")
  end
end }
o1370 = { [nil] = {}, Start = function()
  o1370["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1370.Value == L0) then
    o1370["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1413 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1413, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1413, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1413, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1413, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1413, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1413, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1413, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1418.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1415.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1415 = { [nil] = {}, GetCalculated = function()
  if not (o1027.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1415.SetStateValue(o1415.GetCalculated())
end, StartCalculate = function()
  o1415["Value"] = o1415.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1415.Value == L0) then
    o1415["Value"] = L0
    CallFunction(o1413, "ProcesseStateChange")
  end
end }
o1418 = { [nil] = {}, Start = function()
  o1418["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1418.Value == L0) then
    o1418["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1461, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1461, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1461, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1461, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1466.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1463.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1463 = { [nil] = {}, GetCalculated = function()
  if not (o1027.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1463.SetStateValue(o1463.GetCalculated())
end, StartCalculate = function()
  o1463["Value"] = o1463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1463.Value == L0) then
    o1463["Value"] = L0
    CallFunction(o1461, "ProcesseStateChange")
  end
end }
o1466 = { [nil] = {}, Start = function()
  o1466["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1466.Value == L0) then
    o1466["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1509, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1509, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1509, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1509, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1514.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1511.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1511 = { [nil] = {}, GetCalculated = function()
  if not (o1033.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1511.SetStateValue(o1511.GetCalculated())
end, StartCalculate = function()
  o1511["Value"] = o1511.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1511.Value == L0) then
    o1511["Value"] = L0
    CallFunction(o1509, "ProcesseStateChange")
  end
end }
o1514 = { [nil] = {}, Start = function()
  o1514["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1514.Value == L0) then
    o1514["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1557 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1557, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1557, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1557, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1557, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1557, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1557, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1557, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1562.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1559.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1559 = { [nil] = {}, GetCalculated = function()
  if not (o1033.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1559.SetStateValue(o1559.GetCalculated())
end, StartCalculate = function()
  o1559["Value"] = o1559.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1559.Value == L0) then
    o1559["Value"] = L0
    CallFunction(o1557, "ProcesseStateChange")
  end
end }
o1562 = { [nil] = {}, Start = function()
  o1562["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1562.Value == L0) then
    o1562["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1605 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1605, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1605, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1605, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1605, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1605, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1605, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1605, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1610.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1607.Value ~= True) then
        L1 = 0
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
  if not (o1033.Value ~= True) then
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
    CallFunction(o1605, "ProcesseStateChange")
  end
end }
o1610 = { [nil] = {}, Start = function()
  o1610["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1610.Value == L0) then
    o1610["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1653 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1653, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1653, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1653, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1653, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1653, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1653, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1653, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1658.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1655.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1655 = { [nil] = {}, GetCalculated = function()
  if not (o1033.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1655.SetStateValue(o1655.GetCalculated())
end, StartCalculate = function()
  o1655["Value"] = o1655.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1655.Value == L0) then
    o1655["Value"] = L0
    CallFunction(o1653, "ProcesseStateChange")
  end
end }
o1658 = { [nil] = {}, Start = function()
  o1658["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1658.Value == L0) then
    o1658["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1701 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1701, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1701, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1701, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1701, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1701, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1701, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1701, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1706.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1703.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1703 = { [nil] = {}, GetCalculated = function()
  if not (o1039.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1703.SetStateValue(o1703.GetCalculated())
end, StartCalculate = function()
  o1703["Value"] = o1703.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1703.Value == L0) then
    o1703["Value"] = L0
    CallFunction(o1701, "ProcesseStateChange")
  end
end }
o1706 = { [nil] = {}, Start = function()
  o1706["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1706.Value == L0) then
    o1706["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1749 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1749, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1749, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1749, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1749, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1749, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1749, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1749, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1754.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1751.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1751 = { [nil] = {}, GetCalculated = function()
  if not (o1039.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1751.SetStateValue(o1751.GetCalculated())
end, StartCalculate = function()
  o1751["Value"] = o1751.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1751.Value == L0) then
    o1751["Value"] = L0
    CallFunction(o1749, "ProcesseStateChange")
  end
end }
o1754 = { [nil] = {}, Start = function()
  o1754["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1754.Value == L0) then
    o1754["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1797, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1797, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1797, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1797, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1797, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1797, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1797, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1802.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1799.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1799 = { [nil] = {}, GetCalculated = function()
  if not (o1039.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1799.SetStateValue(o1799.GetCalculated())
end, StartCalculate = function()
  o1799["Value"] = o1799.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1799.Value == L0) then
    o1799["Value"] = L0
    CallFunction(o1797, "ProcesseStateChange")
  end
end }
o1802 = { [nil] = {}, Start = function()
  o1802["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1802.Value == L0) then
    o1802["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1845, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1845, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1845, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1845, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1845, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1845, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1845, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1850.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1847.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1847 = { [nil] = {}, GetCalculated = function()
  if not (o1039.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1847.SetStateValue(o1847.GetCalculated())
end, StartCalculate = function()
  o1847["Value"] = o1847.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1847.Value == L0) then
    o1847["Value"] = L0
    CallFunction(o1845, "ProcesseStateChange")
  end
end }
o1850 = { [nil] = {}, Start = function()
  o1850["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1850.Value == L0) then
    o1850["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1893 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1893, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1893, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1893, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1893, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1893, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1893, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1893, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1898.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1895.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1895 = { [nil] = {}, GetCalculated = function()
  if not (o1045.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1895.SetStateValue(o1895.GetCalculated())
end, StartCalculate = function()
  o1895["Value"] = o1895.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1895.Value == L0) then
    o1895["Value"] = L0
    CallFunction(o1893, "ProcesseStateChange")
  end
end }
o1898 = { [nil] = {}, Start = function()
  o1898["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1898.Value == L0) then
    o1898["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1941 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1941, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1941, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1941, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1941, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1941, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1941, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1941, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1946.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1943.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1943 = { [nil] = {}, GetCalculated = function()
  if not (o1045.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1943.SetStateValue(o1943.GetCalculated())
end, StartCalculate = function()
  o1943["Value"] = o1943.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1943.Value == L0) then
    o1943["Value"] = L0
    CallFunction(o1941, "ProcesseStateChange")
  end
end }
o1946 = { [nil] = {}, Start = function()
  o1946["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1946.Value == L0) then
    o1946["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o1989 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1989, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1989, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1989, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o1989, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1989, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1989, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1989, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1994.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1991.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1991 = { [nil] = {}, GetCalculated = function()
  if not (o1045.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1991.SetStateValue(o1991.GetCalculated())
end, StartCalculate = function()
  o1991["Value"] = o1991.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1991.Value == L0) then
    o1991["Value"] = L0
    CallFunction(o1989, "ProcesseStateChange")
  end
end }
o1994 = { [nil] = {}, Start = function()
  o1994["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1994.Value == L0) then
    o1994["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2037 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2037, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2037, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2037, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2037, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2037, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2037, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2037, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2042.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
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
  if not (o1045.Value ~= True) then
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
    o2039["Value"] = L0
    CallFunction(o2037, "ProcesseStateChange")
  end
end }
o2042 = { [nil] = {}, Start = function()
  o2042["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2042.Value == L0) then
    o2042["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2085 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2085, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2085, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2085, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2085, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2085, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2085, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2085, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2090.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2087.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2087 = { [nil] = {}, GetCalculated = function()
  if not (o1051.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2087.SetStateValue(o2087.GetCalculated())
end, StartCalculate = function()
  o2087["Value"] = o2087.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2087.Value == L0) then
    o2087["Value"] = L0
    CallFunction(o2085, "ProcesseStateChange")
  end
end }
o2090 = { [nil] = {}, Start = function()
  o2090["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2090.Value == L0) then
    o2090["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2133 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2133, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2133, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2133, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2133, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2133, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2133, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2133, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2138.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2135.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2135 = { [nil] = {}, GetCalculated = function()
  if not (o1051.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2135.SetStateValue(o2135.GetCalculated())
end, StartCalculate = function()
  o2135["Value"] = o2135.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2135.Value == L0) then
    o2135["Value"] = L0
    CallFunction(o2133, "ProcesseStateChange")
  end
end }
o2138 = { [nil] = {}, Start = function()
  o2138["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2138.Value == L0) then
    o2138["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2181, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2181, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2181, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2181, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2181, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2181, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2186.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2183.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2183 = { [nil] = {}, GetCalculated = function()
  if not (o1051.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2183.SetStateValue(o2183.GetCalculated())
end, StartCalculate = function()
  o2183["Value"] = o2183.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2183.Value == L0) then
    o2183["Value"] = L0
    CallFunction(o2181, "ProcesseStateChange")
  end
end }
o2186 = { [nil] = {}, Start = function()
  o2186["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2186.Value == L0) then
    o2186["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2229 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2229, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2229, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2229, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2229, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2229, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2229, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2229, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2234.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2231.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2231 = { [nil] = {}, GetCalculated = function()
  if not (o1051.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2231.SetStateValue(o2231.GetCalculated())
end, StartCalculate = function()
  o2231["Value"] = o2231.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2231.Value == L0) then
    o2231["Value"] = L0
    CallFunction(o2229, "ProcesseStateChange")
  end
end }
o2234 = { [nil] = {}, Start = function()
  o2234["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2234.Value == L0) then
    o2234["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2277 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2277, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2277, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2277, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2277, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2277, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2277, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2277, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2282.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2279.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2279 = { [nil] = {}, GetCalculated = function()
  if not (o1057.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2279.SetStateValue(o2279.GetCalculated())
end, StartCalculate = function()
  o2279["Value"] = o2279.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2279.Value == L0) then
    o2279["Value"] = L0
    CallFunction(o2277, "ProcesseStateChange")
  end
end }
o2282 = { [nil] = {}, Start = function()
  o2282["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2282.Value == L0) then
    o2282["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2325 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2325, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2325, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2325, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2325, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2325, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2325, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2325, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2330.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2327.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2327 = { [nil] = {}, GetCalculated = function()
  if not (o1057.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2327.SetStateValue(o2327.GetCalculated())
end, StartCalculate = function()
  o2327["Value"] = o2327.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2327.Value == L0) then
    o2327["Value"] = L0
    CallFunction(o2325, "ProcesseStateChange")
  end
end }
o2330 = { [nil] = {}, Start = function()
  o2330["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2330.Value == L0) then
    o2330["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2373 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2373, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2373, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2373, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2373, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2373, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2373, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2373, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2378.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2375.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2375 = { [nil] = {}, GetCalculated = function()
  if not (o1057.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2375.SetStateValue(o2375.GetCalculated())
end, StartCalculate = function()
  o2375["Value"] = o2375.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2375.Value == L0) then
    o2375["Value"] = L0
    CallFunction(o2373, "ProcesseStateChange")
  end
end }
o2378 = { [nil] = {}, Start = function()
  o2378["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2378.Value == L0) then
    o2378["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2421 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2421, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2421, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2421, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2421, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2421, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2421, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2421, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2426.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2423.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2423 = { [nil] = {}, GetCalculated = function()
  if not (o1057.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2423.SetStateValue(o2423.GetCalculated())
end, StartCalculate = function()
  o2423["Value"] = o2423.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2423.Value == L0) then
    o2423["Value"] = L0
    CallFunction(o2421, "ProcesseStateChange")
  end
end }
o2426 = { [nil] = {}, Start = function()
  o2426["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2426.Value == L0) then
    o2426["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2469 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2469, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2469, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2469, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2469, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2469, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2469, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2469, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2474.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2471.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2471 = { [nil] = {}, GetCalculated = function()
  if not (o1063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2471.SetStateValue(o2471.GetCalculated())
end, StartCalculate = function()
  o2471["Value"] = o2471.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2471.Value == L0) then
    o2471["Value"] = L0
    CallFunction(o2469, "ProcesseStateChange")
  end
end }
o2474 = { [nil] = {}, Start = function()
  o2474["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2474.Value == L0) then
    o2474["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2517 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2517, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2517, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2517, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2517, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2517, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2517, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2517, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2522.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2519.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2519 = { [nil] = {}, GetCalculated = function()
  if not (o1063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2519.SetStateValue(o2519.GetCalculated())
end, StartCalculate = function()
  o2519["Value"] = o2519.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2519.Value == L0) then
    o2519["Value"] = L0
    CallFunction(o2517, "ProcesseStateChange")
  end
end }
o2522 = { [nil] = {}, Start = function()
  o2522["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2522.Value == L0) then
    o2522["Value"] = L0
    o1094.ReCalculate()
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
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2565, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2565, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2565, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2565, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2570.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2567.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2567 = { [nil] = {}, GetCalculated = function()
  if not (o1063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2567.SetStateValue(o2567.GetCalculated())
end, StartCalculate = function()
  o2567["Value"] = o2567.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2567.Value == L0) then
    o2567["Value"] = L0
    CallFunction(o2565, "ProcesseStateChange")
  end
end }
o2570 = { [nil] = {}, Start = function()
  o2570["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2570.Value == L0) then
    o2570["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2613 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2613, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2613, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2613, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2613, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2613, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2613, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2613, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2618.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2615.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2615 = { [nil] = {}, GetCalculated = function()
  if not (o1063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2615.SetStateValue(o2615.GetCalculated())
end, StartCalculate = function()
  o2615["Value"] = o2615.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2615.Value == L0) then
    o2615["Value"] = L0
    CallFunction(o2613, "ProcesseStateChange")
  end
end }
o2618 = { [nil] = {}, Start = function()
  o2618["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2618.Value == L0) then
    o2618["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2661 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2661, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2661, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2661, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2661, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2661, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2661, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2661, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2666.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2663.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2663 = { [nil] = {}, GetCalculated = function()
  if not (o1069.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2663.SetStateValue(o2663.GetCalculated())
end, StartCalculate = function()
  o2663["Value"] = o2663.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2663.Value == L0) then
    o2663["Value"] = L0
    CallFunction(o2661, "ProcesseStateChange")
  end
end }
o2666 = { [nil] = {}, Start = function()
  o2666["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2666.Value == L0) then
    o2666["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2709 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2709, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2709, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2709, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2709, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2709, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2709, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2709, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2714.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2711.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2711 = { [nil] = {}, GetCalculated = function()
  if not (o1069.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2711.SetStateValue(o2711.GetCalculated())
end, StartCalculate = function()
  o2711["Value"] = o2711.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2711.Value == L0) then
    o2711["Value"] = L0
    CallFunction(o2709, "ProcesseStateChange")
  end
end }
o2714 = { [nil] = {}, Start = function()
  o2714["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2714.Value == L0) then
    o2714["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2757 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2757, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2757, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2757, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2757, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2757, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2757, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2757, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2762.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2759.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2759 = { [nil] = {}, GetCalculated = function()
  if not (o1069.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2759.SetStateValue(o2759.GetCalculated())
end, StartCalculate = function()
  o2759["Value"] = o2759.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2759.Value == L0) then
    o2759["Value"] = L0
    CallFunction(o2757, "ProcesseStateChange")
  end
end }
o2762 = { [nil] = {}, Start = function()
  o2762["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2762.Value == L0) then
    o2762["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2805, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2805, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2805, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2805, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2805, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2805, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2805, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2810.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2807.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2807 = { [nil] = {}, GetCalculated = function()
  if not (o1069.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2807.SetStateValue(o2807.GetCalculated())
end, StartCalculate = function()
  o2807["Value"] = o2807.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2807.Value == L0) then
    o2807["Value"] = L0
    CallFunction(o2805, "ProcesseStateChange")
  end
end }
o2810 = { [nil] = {}, Start = function()
  o2810["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2810.Value == L0) then
    o2810["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2853 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2853, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2853, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2853, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2853, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2853, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2853, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2853, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2858.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2855.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2855 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2855.SetStateValue(o2855.GetCalculated())
end, StartCalculate = function()
  o2855["Value"] = o2855.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2855.Value == L0) then
    o2855["Value"] = L0
    CallFunction(o2853, "ProcesseStateChange")
  end
end }
o2858 = { [nil] = {}, Start = function()
  o2858["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2858.Value == L0) then
    o2858["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2901 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2901, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2901, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2901, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2901, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2901, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2901, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2901, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2906.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2903.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2903 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2903.SetStateValue(o2903.GetCalculated())
end, StartCalculate = function()
  o2903["Value"] = o2903.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2903.Value == L0) then
    o2903["Value"] = L0
    CallFunction(o2901, "ProcesseStateChange")
  end
end }
o2906 = { [nil] = {}, Start = function()
  o2906["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2906.Value == L0) then
    o2906["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o2949 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2949, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2949, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2949, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2949, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2949, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2949, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2949, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2954.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2951.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2951 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2951.SetStateValue(o2951.GetCalculated())
end, StartCalculate = function()
  o2951["Value"] = o2951.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2951.Value == L0) then
    o2951["Value"] = L0
    CallFunction(o2949, "ProcesseStateChange")
  end
end }
o2954 = { [nil] = {}, Start = function()
  o2954["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2954.Value == L0) then
    o2954["Value"] = L0
    o1094.ReCalculate()
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
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1082.Node)
  CallFunction(o2997, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2997, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2997, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2997, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o3002.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2999.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2999 = { [nil] = {}, GetCalculated = function()
  if not (o1075.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2999.SetStateValue(o2999.GetCalculated())
end, StartCalculate = function()
  o2999["Value"] = o2999.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2999.Value == L0) then
    o2999["Value"] = L0
    CallFunction(o2997, "ProcesseStateChange")
  end
end }
o3002 = { [nil] = {}, Start = function()
  o3002["Value"] = False
  o1094.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3002.Value == L0) then
    o3002["Value"] = L0
    o1094.ReCalculate()
  end
end }
S_o3045 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3045, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3045, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3045, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o3045, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o3045, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3045, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o3045, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o3045, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o3045, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3045, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o3045, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "E", "", "", "", 1, "Code12")
  else
    CallFunction(o3045, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  CallFunction(o3045, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code14")
  else
    CallFunction(o3045, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3045, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
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
S_o3097 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3097, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3097, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3097, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o3097, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o3097, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3097, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o3097, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o3097, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o3097, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3097, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o3097, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "E", "", "", "", 1, "Code12")
  else
    CallFunction(o3097, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  StopAllActiveBehaviours(L0)
  CallFunction(o3097, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code14")
  else
    CallFunction(o3097, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3097, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
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
S_o3149 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3149, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3149, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3149, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3149, "Code4")
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
S_o3196 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3196, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3196, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3196, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3196, "Code4")
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
S_o3243 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3243, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3243, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3243, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3243, "Code4")
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
S_o3290 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3290, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3290, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3290, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3290, "Code4")
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
S_o3337 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3337, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3337, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3337, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3337, "Code4")
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
S_o3384 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3384, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3384, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3384, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3384, "Code4")
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
S_o3431 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3431, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3431, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3431, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3431, "Code4")
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
S_o3478 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3478, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3478, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3478, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3478, "Code4")
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
S_o3525 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3525, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3530 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 60)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o3530, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3533.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3533 = { [nil] = {}, Start = function()
  o3533["Value"] = False
  o1089.StartCalculate()
  o3737.StartCalculate()
  o3788.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3533.Value == L0) then
    o3533["Value"] = L0
    o1089.ReCalculate()
    o3737.ReCalculate()
    o3788.ReCalculate()
  end
end }
S_o3535 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3535, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3535, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3535, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_2", 0.5, 0.54 } }("Code4")
  else
    CallFunction(o3535, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o3535, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o3539.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o3540.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3537.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3537 = { [nil] = {}, GetCalculated = function()
  if not (o1089.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3537.SetStateValue(o3537.GetCalculated())
end, StartCalculate = function()
  o3537["Value"] = o3537.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3537.Value == L0) then
    DelayedFunction(10, o3537, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3537.Value == L0) then
    o3537["Value"] = L0
    CallFunction(o3535, "ProcesseStateChange")
  end
end }
o3539 = { [nil] = {}, Start = function()
  o3539["Value"] = False
  o3586.StartCalculate()
  o3637.StartCalculate()
  o3688.StartCalculate()
  o3739.StartCalculate()
  o3790.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3539.Value == L0) then
    o3539["Value"] = L0
    o3586.ReCalculate()
    o3637.ReCalculate()
    o3688.ReCalculate()
    o3739.ReCalculate()
    o3790.ReCalculate()
  end
end }
o3540 = { [nil] = {}, Start = function()
  o3540["Value"] = False
  o1091.StartCalculate()
  o1121.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3540.Value == L0) then
    o3540["Value"] = L0
    o1091.ReCalculate()
    o1121.ReCalculate()
  end
end }
S_o3583 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3583, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3583, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3583, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 0.2, "Code4")
  else
    CallFunction(o3583, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o3583, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen", "pla", "wng", "", 0.2, "Code6")
  else
    CallFunction(o3583, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen_freighter1_1", "pla", "", "", 0.2, "Code7")
  else
    CallFunction(o3583, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3601.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3584.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
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
o3584 = { [nil] = {}, GetCalculated = function()
  if not (o1087.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3584.SetStateValue(o3584.GetCalculated())
end, StartCalculate = function()
  o3584["Value"] = o3584.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3584.Value == L0) then
    o3584["Value"] = L0
    CallFunction(o3583, "ProcesseStateChange")
  end
end }
o3586 = { [nil] = {}, GetCalculated = function()
  if not (o3539.Value ~= True) then
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
    CallFunction(o3583, "ProcesseStateChange")
  end
end }
o3601 = { [nil] = {}, Start = function()
  o3601["Value"] = False
  o1087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3601.Value == L0) then
    o3601["Value"] = L0
    o1087.ReCalculate()
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3634, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 0.2, "Code4")
  else
    CallFunction(o3634, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o3634, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen", "pla", "wng", "", 0.2, "Code6")
  else
    CallFunction(o3634, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen_freighter1_1", "pla", "", "", 0.2, "Code7")
  else
    CallFunction(o3634, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3652.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3635.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3637.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3635 = { [nil] = {}, GetCalculated = function()
  if not (o1087.Value ~= True) then
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
    DelayedFunction(3, o3635, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3635.Value == L0) then
    o3635["Value"] = L0
    CallFunction(o3634, "ProcesseStateChange")
  end
end }
o3637 = { [nil] = {}, GetCalculated = function()
  if not (o3539.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3637.SetStateValue(o3637.GetCalculated())
end, StartCalculate = function()
  o3637["Value"] = o3637.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3637.Value == L0) then
    o3637["Value"] = L0
    CallFunction(o3634, "ProcesseStateChange")
  end
end }
o3652 = { [nil] = {}, Start = function()
  o3652["Value"] = False
  o1087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3652.Value == L0) then
    o3652["Value"] = L0
    o1087.ReCalculate()
  end
end }
S_o3685 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3685, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3685, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3685, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 0.2, "Code4")
  else
    CallFunction(o3685, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o3685, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen", "pla", "wng", "", 0.2, "Code6")
  else
    CallFunction(o3685, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen_freighter1_1", "pla", "", "", 0.2, "Code7")
  else
    CallFunction(o3685, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3703.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3686.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3688.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3686 = { [nil] = {}, GetCalculated = function()
  if not (o1087.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3686.SetStateValue(o3686.GetCalculated())
end, StartCalculate = function()
  o3686["Value"] = o3686.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3686.Value == L0) then
    DelayedFunction(5, o3686, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3686.Value == L0) then
    o3686["Value"] = L0
    CallFunction(o3685, "ProcesseStateChange")
  end
end }
o3688 = { [nil] = {}, GetCalculated = function()
  if not (o3539.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3688.SetStateValue(o3688.GetCalculated())
end, StartCalculate = function()
  o3688["Value"] = o3688.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3688.Value == L0) then
    o3688["Value"] = L0
    CallFunction(o3685, "ProcesseStateChange")
  end
end }
o3703 = { [nil] = {}, Start = function()
  o3703["Value"] = False
  o1087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3703.Value == L0) then
    o3703["Value"] = L0
    o1087.ReCalculate()
  end
end }
S_o3736 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3736, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3736, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3736, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 0.2, "Code4")
  else
    CallFunction(o3736, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o3736, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen", "pla", "wng", "", 0.2, "Code6")
  else
    CallFunction(o3736, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen_freighter1_1", "pla", "", "", 0.2, "Code7")
  else
    CallFunction(o3736, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3754.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3737.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3739.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3737 = { [nil] = {}, GetCalculated = function()
  if not (o3533.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3737.SetStateValue(o3737.GetCalculated())
end, StartCalculate = function()
  o3737["Value"] = o3737.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3737.Value == L0) then
    o3737["Value"] = L0
    CallFunction(o3736, "ProcesseStateChange")
  end
end }
o3739 = { [nil] = {}, GetCalculated = function()
  if not (o3539.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3739.SetStateValue(o3739.GetCalculated())
end, StartCalculate = function()
  o3739["Value"] = o3739.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3739.Value == L0) then
    o3739["Value"] = L0
    CallFunction(o3736, "ProcesseStateChange")
  end
end }
o3754 = { [nil] = {}, Start = function()
  o3754["Value"] = False
  o1087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3754.Value == L0) then
    o3754["Value"] = L0
    o1087.ReCalculate()
  end
end }
S_o3787 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3787, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3787, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3787, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1_2", "E", "", "", "", 0.2, "Code4")
  else
    CallFunction(o3787, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o3787, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen", "pla", "wng", "", 0.2, "Code6")
  else
    CallFunction(o3787, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "gen_freighter1_1", "pla", "", "", 0.2, "Code7")
  else
    CallFunction(o3787, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o3805.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3788.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o3790.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3788 = { [nil] = {}, GetCalculated = function()
  if not (o3533.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3788.SetStateValue(o3788.GetCalculated())
end, StartCalculate = function()
  o3788["Value"] = o3788.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3788.Value == L0) then
    o3788["Value"] = L0
    CallFunction(o3787, "ProcesseStateChange")
  end
end }
o3790 = { [nil] = {}, GetCalculated = function()
  if not (o3539.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3790.SetStateValue(o3790.GetCalculated())
end, StartCalculate = function()
  o3790["Value"] = o3790.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3790.Value == L0) then
    o3790["Value"] = L0
    CallFunction(o3787, "ProcesseStateChange")
  end
end }
o3805 = { [nil] = {}, Start = function()
  o3805["Value"] = False
  o1087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3805.Value == L0) then
    o3805["Value"] = L0
    o1087.ReCalculate()
  end
end }
S_o3838 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3838, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3838, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3838, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o3838, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o3838, "Code5")
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
S_o3886 = { [nil] = {}, Start = function(L0)

end }
o3888 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 20)
S_o3889 = { [nil] = {}, Start = function(L0)

end }
S_o3890 = { [nil] = {}, Start = function(L0)

end }
S_o3891 = { [nil] = {}, Start = function(L0)

end }
S_o3892 = { [nil] = {}, Start = function(L0)

end }
S_o3893 = { [nil] = {}, Start = function(L0)

end }
S_o3894 = { [nil] = {}, Start = function(L0)

end }
S_o3895 = { [nil] = {}, Start = function(L0)

end }
S_o3896 = { [nil] = {}, Start = function(L0)

end }
S_o3897 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_harper_c5_1", 0, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3897, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code8")
  else
    CallFunction(o3897, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o3045.Node, o1082.Node, 294)
  CallFunction(o3897, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 18, "Code10")
  else
    CallFunction(o3897, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_2", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_pico_c5_1", 2, "MMMN", 0)
  SendRadioMessageTake(o3097.Node, o1082.Node, 295)
  CallFunction(o3897, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 16, "Code14")
  else
    CallFunction(o3897, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Game_PlayMusic(GetGameNode(), "agressive")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_3", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_scout1_2_emp", 2, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3897, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0, "Code19")
  else
    CallFunction(o3897, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o1082.Node, o1082.Node, 296)
  CallFunction(o3897, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code21")
  else
    CallFunction(o3897, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_4", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_harper_c5_1", 2, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3897, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code25")
  else
    CallFunction(o3897, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  SendRadioMessageTake(o3045.Node, o1082.Node, 297)
  CallFunction(o3897, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code27")
  else
    CallFunction(o3897, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_3", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/atl_scout2_1_emp", 1, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3897, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code31")
  else
    CallFunction(o3897, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/tz_geb_add_china_big_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3897, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code36")
  else
    CallFunction(o3897, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  SendRadioMessageTake(o1082.Node, o1082.Node, 298)
  CallFunction(o3897, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code38")
  else
    CallFunction(o3897, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Position_6", 4, "MMMN", 0)
  CallFunction(o3897, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code40")
  else
    CallFunction(o3897, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Position_7", 4, "MMMN", 0)
  CallFunction(o3897, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3897, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Position_8", 4, "MMMN", 0)
  CallFunction(o3897, "Code43")
end, Code43 = function(L0)
  L0["CodeIndex"] = 43
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code44")
  else
    CallFunction(o3897, "Code44")
  end
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  Camera_LookAt(L0.Node, "/Scenario_Static/Object/tz_geb_add_china_big_1", 4, "MMMN", 0)
  CallFunction(o3897, "Code45")
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code46")
  else
    CallFunction(o3897, "Code46")
  end
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  Camera_Cut(L0.Node, 1)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Position_3")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bio_scout_5n2_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3897, "Code50")
end, Code50 = function(L0)
  L0["CodeIndex"] = 50
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code51")
  else
    CallFunction(o3897, "Code51")
  end
end }, Code51 = function(L0)
  L0["CodeIndex"] = 51
  SendRadioMessageTake(o3097.Node, o1082.Node, 299)
  SendRadioMessageTake(o3045.Node, o1082.Node, 300)
  CallFunction(o3897, "Code53")
end, Code53 = function(L0)
  L0["CodeIndex"] = 53
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 12, "Code54")
  else
    CallFunction(o3897, "Code54")
  end
end, Code54 = function(L0)
  L0["CodeIndex"] = 54
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_4", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_harper_c5_1", 2, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o3897, "Code57")
end, Code57 = function(L0)
  L0["CodeIndex"] = 57
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code58")
  else
    CallFunction(o3897, "Code58")
  end
end, Code58 = function(L0)
  L0["CodeIndex"] = 58
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 13, "Code59")
  else
    CallFunction(o3897, "Code59")
  end
end, Code59 = function(L0)
  L0["CodeIndex"] = 59
  Camera_Cut(L0.Node, 1)
  CallFunction(o3897, "Code60")
end, Code60 = function(L0)
  L0["CodeIndex"] = 60
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code61")
  else
    CallFunction(o3897, "Code61")
  end
end, Code61 = function(L0)
  L0["CodeIndex"] = 61
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o3525.Node)
  CallFunction(o3045, "Code6")
  CallFunction(o3097, "Code6")
  SED_SetTaskTextKey(1365, -1, -1)
  CallFunction(o3897, "Code66")
end, Code66 = function(L0)
  L0["CodeIndex"] = 66
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o3887, o3888, "/InGameSequences/Navigation/PlaWngPath_1")
  CallFunction(o3918, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3887, o3888, "/InGameSequences/Navigation/PlaWngPath_1", "pos_1", "pos_3", 0.4, 1, "Code2")
  else
    CallFunction(o3918, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  CallFunction(o3045, "Code12")
  CallFunction(o3097, "Code12")
  CallFunction(o3918, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 181)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element07a_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_2", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_raw_1", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_2", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_2", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_palace_big_1", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_china_big_1", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_2", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_3", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_3", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_4", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_1", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_1", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_2", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_3", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06a_1", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_3", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_2", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o1016)
  o1021.Start()
  o1022 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2", S_o1022)
  o1027.Start()
  o1028 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_3", S_o1028)
  o1033.Start()
  o1034 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_4", S_o1034)
  o1039.Start()
  o1040 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_5", S_o1040)
  o1045.Start()
  o1046 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_6", S_o1046)
  o1051.Start()
  o1052 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_7", S_o1052)
  o1057.Start()
  o1058 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_8", S_o1058)
  o1063.Start()
  o1064 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_9", S_o1064)
  o1069.Start()
  o1070 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_10", S_o1070)
  o1075.Start()
  o1076 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o1076)
  o1081.Start()
  o1082 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1082)
  o1125 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_1_1", S_o1125)
  o1130.Start()
  o1173 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_1_2", S_o1173)
  o1178.Start()
  o1221 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_1_3", S_o1221)
  o1226.Start()
  o1269 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_1_4", S_o1269)
  o1274.Start()
  o1317 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_2_1", S_o1317)
  o1322.Start()
  o1365 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_2_2", S_o1365)
  o1370.Start()
  o1413 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_2_3", S_o1413)
  o1418.Start()
  o1461 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_2_4", S_o1461)
  o1466.Start()
  o1509 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_3_1", S_o1509)
  o1514.Start()
  o1557 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_3_2", S_o1557)
  o1562.Start()
  o1605 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_3_3", S_o1605)
  o1610.Start()
  o1653 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_3_4", S_o1653)
  o1658.Start()
  o1701 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_4_1", S_o1701)
  o1706.Start()
  o1749 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_4_2", S_o1749)
  o1754.Start()
  o1797 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_4_3", S_o1797)
  o1802.Start()
  o1845 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_4_4", S_o1845)
  o1850.Start()
  o1893 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_5_1", S_o1893)
  o1898.Start()
  o1941 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_5_2", S_o1941)
  o1946.Start()
  o1989 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_5_3", S_o1989)
  o1994.Start()
  o2037 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_5_4", S_o2037)
  o2042.Start()
  o2085 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_6_1", S_o2085)
  o2090.Start()
  o2133 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_6_2", S_o2133)
  o2138.Start()
  o2181 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_6_3", S_o2181)
  o2186.Start()
  o2229 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_6_4", S_o2229)
  o2234.Start()
  o2277 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_7_1", S_o2277)
  o2282.Start()
  o2325 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_7_2", S_o2325)
  o2330.Start()
  o2373 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_7_3", S_o2373)
  o2378.Start()
  o2421 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_7_4", S_o2421)
  o2426.Start()
  o2469 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_8_1", S_o2469)
  o2474.Start()
  o2517 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_8_2", S_o2517)
  o2522.Start()
  o2565 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_8_3", S_o2565)
  o2570.Start()
  o2613 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_8_4", S_o2613)
  o2618.Start()
  o2661 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_9_1", S_o2661)
  o2666.Start()
  o2709 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_9_2", S_o2709)
  o2714.Start()
  o2757 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_9_3", S_o2757)
  o2762.Start()
  o2805 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_9_4", S_o2805)
  o2810.Start()
  o2853 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_10_1", S_o2853)
  o2858.Start()
  o2901 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_10_2", S_o2901)
  o2906.Start()
  o2949 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_10_3", S_o2949)
  o2954.Start()
  o2997 = BindEasy(Node_Find("/Scenario_Dynamic/Object/EscapePods"), "gen_escapepod_10_4", S_o2997)
  o3002.Start()
  o3045 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper_c5_1", S_o3045)
  o3097 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico_c5_1", S_o3097)
  o3149 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1_emp", S_o3149)
  o3196 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_2_emp", S_o3196)
  o3243 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_3_emp", S_o3243)
  o3290 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1_emp", S_o3290)
  o3337 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2_emp", S_o3337)
  o3384 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_4_emp", S_o3384)
  o3431 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_5_emp", S_o3431)
  o3478 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_6_emp", S_o3478)
  o3525 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o3525)
  o3530 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o3530)
  o3533.Start()
  o3535 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter1_1", S_o3535)
  o3539.Start()
  o3540.Start()
  o3583 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_5n2_1", S_o3583)
  o3601.Start()
  o3634 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_5n2_2", S_o3634)
  o3652.Start()
  o3685 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_5n2_3", S_o3685)
  o3703.Start()
  o3736 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_5n2_4", S_o3736)
  o3754.Start()
  o3787 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_5n2_5", S_o3787)
  o3805.Start()
  o3838 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_bomber_5n2_1", S_o3838)
  o3886 = BindEasy(Node_Find("/"), "Camera", S_o3886)
  o3889 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o3889)
  o3890 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o3890)
  o3891 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o3891)
  o3892 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_4", S_o3892)
  o3893 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_5", S_o3893)
  o3894 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_6", S_o3894)
  o3895 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_7", S_o3895)
  o3896 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_8", S_o3896)
  o3897 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1V", S_o3897)
  o3918 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroChapter1Addon", S_o3918)
  o3887 = { {}, o1082, o3045, o3097 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end