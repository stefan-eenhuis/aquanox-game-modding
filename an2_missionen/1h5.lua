-- dekompiliert aus 1h5.sco
-- Quelle laut Bytecode: =(none)

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
  Terrain_LoadTerrain(node1, "map/1H5/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H5/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/1H5/lmsh/", "map/1H5/ltex/")
  Game_SetTerrainDepth(node0, 2540)
  Game_SetDecompressionHeight(node0, 650)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.113725, 0.113725, 0.082353)
  Game_SetParallelLightT(node0, 0.227451, 0.227451, 0.164706)
  Game_SetParallelLightB(node0, 0.113725, 0.113725, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_1h5.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_1H5.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 2)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/1H5/CubeMap/envcubemap.dds")
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
  node30 = Node_CreateNode("nod_generic", "ent_beacon_1")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3093.46534, 606.929876, 440.065053), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ent_beacon_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(3472.271869, 769.160195, 404.310551), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_beacon.osd")
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
  node37 = Node_CreateNode("nod_fx_rays", "fx_rays_1H5_1")
  Node_AddSon(node7, node37)
  Node_ParseIniFile(node37, "osd/fx_rays/fx_rays_1H5.osd")
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_fx_sky", "fx_sky_1H5_1")
  Node_AddSon(node7, node38)
  Node_ParseIniFile(node38, "osd/fx_sky/fx_sky_1H5.osd")
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_fx_flare", "fx_flare_1H5_1")
  Node_AddSon(node7, node39)
  Node_ParseIniFile(node39, "osd/fx_flare/fx_flare_1H5.osd")
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node40)
  Node_ParseIniFile(node40, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node40, "map/1H5/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node41)
  Node_ParseIniFile(node41, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node41, "map/1H5/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node42)
  Node_ParseIniFile(node42, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node42, "map/1H5/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node43)
  Node_ParseIniFile(node43, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node43, "map/1H5/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_fx_plant", "org_tube_1")
  Node_AddSon(node7, node44)
  Node_ParseIniFile(node44, "osd/fx_plant/org_tube.osd")
  FX_Plant_SetMap(node44, "map/1H5/Terrain/org_tubes.tga")
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node45)
  Node_ParseIniFile(node45, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node45, "map/1H5/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(743.6884, 1956.593, 387.3857), MAT_Vector3(84.83703, 0, 0))
  Node_ParseIniFile(node46, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_claw_l_02_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(604.5417, 1701.31, 379.7031), MAT_Vector3(-11.09042, -7.776002, 10.63478))
  Node_ParseIniFile(node47, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_claw_l_03")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(793.4698, 1580.876, 370.9958), MAT_Vector3(-71.20826, -12.63685, 51.2502))
  Node_ParseIniFile(node48, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_claw_s_01_1")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(569.0626, 1678.81, 381.2201), MAT_Vector3(114.6494, 0, 0))
  Node_ParseIniFile(node49, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_claw_s_02_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(734.3779, 1940.88, 393.183), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2236.398, 472.5229, 429.5849), MAT_Vector3(67.10858, 1.620414, 13.1324))
  Node_ParseIniFile(node51, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2110.626, 1019.449, 340.6878), MAT_Vector3(-4.268656, 25.92698, -4.038778))
  Node_ParseIniFile(node52, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2458.721, 822.4604, 308.5785), MAT_Vector3(-34.41419, -28.11355, -5.993313))
  Node_ParseIniFile(node53, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_megalith_l_04")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(3130.159, 1037.811, 355.1916), MAT_Vector3(67.10858, 1.620414, 13.1324))
  Node_ParseIniFile(node54, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2330.985, 847.1188, 375.4843), MAT_Vector3(-3.499875, -3.157318, 0.201345))
  Node_ParseIniFile(node55, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2606.944, 874.8357, 378.1096), MAT_Vector3(-26.26525, -22.46647, -3.090416))
  Node_ParseIniFile(node56, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2616.02, 684.2497, 404.5259), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2751.816, 697.1974, 428.1964), MAT_Vector3(-101.4668, 21.05338, -103.6683))
  Node_ParseIniFile(node58, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2612.145, 725.5095, 399.8922), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_rock_s_02")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(2585.06, 1687.582, 407.468), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node60, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_rock_l_02")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2578.281, 1628.318, 401.6205), MAT_Vector3(-137.0849, 4.068356, -74.23399))
  Node_ParseIniFile(node61, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3209.277, 937.5623, 393.097), MAT_Vector3(17.31668, -2.535095, -7.367854))
  Node_ParseIniFile(node62, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_megalith_s_06")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3094.867, 980.1085, 363.9654), MAT_Vector3(4.889897, 6.447457, 8.608376))
  Node_ParseIniFile(node63, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_megalith_l_05")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3592.674, 1912.933, 364.5897), MAT_Vector3(-4.268656, 25.92698, -4.038778))
  Node_ParseIniFile(node64, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(3523.269, 1832.266, 385.1113), MAT_Vector3(3.633624, -4.150293, 1.064674))
  Node_ParseIniFile(node65, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3539.826, 1793.876, 388.0483), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3033.711859, 2333.919256, 330.109677), MAT_Vector3(-70.491496, 0, 0))
  Node_ParseIniFile(node67, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2854.076932, 2283.932458, 396.511523), MAT_Vector3(102.055874, 0, 0))
  Node_ParseIniFile(node68, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2429.903434, 2099.041208, 351.328415), MAT_Vector3(-44.979162, -3.174166, 43.890801))
  Node_ParseIniFile(node69, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(2284.449555, 2733.227425, 354.716834), MAT_Vector3(28.800457, -23.268824, 18.033925))
  Node_ParseIniFile(node70, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2287.514452, 2640.108287, 362.938839), MAT_Vector3(-150.316791, 9.246293, 71.496777))
  Node_ParseIniFile(node71, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2350.036495, 2679.981941, 355.981755), MAT_Vector3(-39.719085, 2.594291, 34.526226))
  Node_ParseIniFile(node72, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2297.255533, 1804.302797, 374.815889), MAT_Vector3(-126.282627, 1.198015, 0.331173))
  Node_ParseIniFile(node73, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(3372.52594, 2796.934304, 309.607752), MAT_Vector3(151.342404, -2.128531, 8.301943))
  Node_ParseIniFile(node74, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2334.143845, 1750.769577, 379.787934), MAT_Vector3(-142.270702, -1.23399, -3.340403))
  Node_ParseIniFile(node75, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(2326.91052, 1828.728319, 377.61049), MAT_Vector3(-34.975087, 0, 0))
  Node_ParseIniFile(node76, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2307.25598, 1738.95648, 385.925287), MAT_Vector3(-65.643676, 0, 0))
  Node_ParseIniFile(node77, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(1948.809865, 2896.854785, 364.429674), MAT_Vector3(31.926001, 0, 0))
  Node_ParseIniFile(node78, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(1930.369666, 2907.472599, 363.013613), MAT_Vector3(-142.2707, -1.23399, -3.340403))
  Node_ParseIniFile(node79, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1908.365078, 2897.316636, 364.417583), MAT_Vector3(-100.505864, 0, 0))
  Node_ParseIniFile(node80, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1776.603767, 2965.801231, 370.153154), MAT_Vector3(-102.92633, 0, 0))
  Node_ParseIniFile(node81, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1581.947796, 2893.016825, 375.926468), MAT_Vector3(-57.643891, 0, 0))
  Node_ParseIniFile(node82, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1560.807102, 3141.360568, 365.343878), MAT_Vector3(-65.177461, 2.382343, 1.631283))
  Node_ParseIniFile(node83, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1567.256503, 3101.250218, 365.75593), MAT_Vector3(-70.697201, -1.096883, 0.873649))
  Node_ParseIniFile(node84, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(978.357664, 3646.124996, 365.557052), MAT_Vector3(157.709861, -0.436335, 8.603517))
  Node_ParseIniFile(node85, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(924.522281, 3686.436032, 366.041522), MAT_Vector3(-145.452362, 1.967864, 1.261685))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2257.072188, 2596.381439, 362.635761), MAT_Vector3(104.729152, -5.080692, -3.589766))
  Node_ParseIniFile(node87, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_l_02_4")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(2257.072, 2596.381, 362.6358), MAT_Vector3(104.7292, -5.080692, -3.589766))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_bridgering_m_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2505.866822, 2607.257885, 363.487414), MAT_Vector3(68.303433, -2.549697, -8.477503))
  Node_ParseIniFile(node89, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_bridgering_m_2")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(3327.363138, 215.330251, 385.030055), MAT_Vector3(7.759176, -27.492866, 18.278694))
  Node_ParseIniFile(node90, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(3637.867085, 251.86186, 340.378413), MAT_Vector3(-126.2826, 1.198015, 0.331173))
  Node_ParseIniFile(node91, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(3625.277907, 298.930139, 354.81029), MAT_Vector3(130.070908, -0.436335, 8.603517))
  Node_ParseIniFile(node92, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(3593.891935, 281.080918, 360.022841), MAT_Vector3(-39.443272, 3.829626, 2.941956))
  Node_ParseIniFile(node93, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3581.085194, 244.413626, 353.945821), MAT_Vector3(122.468687, -11.787568, 32.215741))
  Node_ParseIniFile(node94, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3202.59881, 567.097634, 371.659094), MAT_Vector3(172.260251, 1.967864, 1.261685))
  Node_ParseIniFile(node95, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(3161.452028, 610.942195, 436.726682), MAT_Vector3(-87.543423, 0.606601, 0.931319))
  Node_ParseIniFile(node96, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3170.367385, 634.544096, 440.51173), MAT_Vector3(-100.564906, -1.510743, -0.938563))
  Node_ParseIniFile(node97, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_megalith_s_01_4")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(3152.381763, 584.925298, 446.780105), MAT_Vector3(-61.921357, 3.165451, -0.564727))
  Node_ParseIniFile(node98, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1712.111986, 867.941155, 360.333617), MAT_Vector3(-36.44505, 9.246293, 71.49678))
  Node_ParseIniFile(node99, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(973.195192, 970.100195, 372.810339), MAT_Vector3(-8.608651, -4.955513, 86.803819))
  Node_ParseIniFile(node100, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_rock_m_01_5")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1242.272294, 948.745569, 380.260357), MAT_Vector3(134.873698, 5.623272, 157.059904))
  Node_ParseIniFile(node101, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_claw_l_01_2")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(949.993862, 1056.442698, 370.231327), MAT_Vector3(149.040826, 5.571617, -3.807062))
  Node_ParseIniFile(node102, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_claw_l_02_2")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(984.004098, 1029.736647, 366.094949), MAT_Vector3(-136.809143, 0, 0))
  Node_ParseIniFile(node103, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_claw_s_01_2")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1036.312716, 983.176229, 373.678308), MAT_Vector3(132.731472, 1.83297, -0.715001))
  Node_ParseIniFile(node104, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_claw_s_02_2")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1011.455356, 1008.683827, 369.54193), MAT_Vector3(140.60425, -21.976235, 4.907844))
  Node_ParseIniFile(node105, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_claw_l_01_3")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1077.804524, 1143.382582, 367.818413), MAT_Vector3(-55.363519, 5.571617, -3.807062))
  Node_ParseIniFile(node106, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_claw_l_02_3")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(1088.481298, 1115.138711, 349.204691), MAT_Vector3(18.140296, 5.731114, -9.860044))
  Node_ParseIniFile(node107, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_claw_s_01_3")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1123.685636, 1027.437338, 353.685808), MAT_Vector3(-81.130939, 13.766761, 11.271874))
  Node_ParseIniFile(node108, "osd/ter/ter_claw_s_01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_claw_s_02_3")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1101.166147, 1079.888826, 369.5419), MAT_Vector3(-70.861567, 1.263868, 22.772059))
  Node_ParseIniFile(node109, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(673.388208, 2201.988611, 387.024809), MAT_Vector3(67.638077, -0.597582, -2.457519))
  Node_ParseIniFile(node110, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_megalith_l_02_5")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(629.343524, 2154.115182, 382.341924), MAT_Vector3(88.062458, -0.182023, -2.796049))
  Node_ParseIniFile(node111, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(706.862131, 2162.909712, 396.334171), MAT_Vector3(-75.522657, -0.436335, 8.603517))
  Node_ParseIniFile(node112, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(591.761209, 2134.134482, 386.074357), MAT_Vector3(-33.606234, 3.589142, 0.789701))
  Node_ParseIniFile(node113, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "ter_megalith_s_03_5")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(622.215638, 2114.237639, 388.517286), MAT_Vector3(-31.825143, 2.68153, -2.417451))
  Node_ParseIniFile(node114, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "ter_megalith_s_02_5")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(713.619311, 2137.934888, 411.228305), MAT_Vector3(-106.316528, -5.15831, 1.552568))
  Node_ParseIniFile(node115, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "ter_megalith_s_01_5")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(568.050498, 2127.778924, 395.721306), MAT_Vector3(-61.92136, 3.165451, -0.564727))
  Node_ParseIniFile(node116, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "ter_rock_s_01_4")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(421.386864, 1718.09321, 383.205975), MAT_Vector3(-71.145704, -75.190912, 89.185183))
  Node_ParseIniFile(node117, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "ter_rock_s_01_5")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(581.449275, 1828.744187, 397.339828), MAT_Vector3(-7.25327, -5.12662, -15.81111))
  Node_ParseIniFile(node118, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "ter_rock_s_01_6")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(733.876573, 1587.037298, 396.378953), MAT_Vector3(-20.67901, -15.450432, -6.015562))
  Node_ParseIniFile(node119, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "ter_rock_s_01_7")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(487.45857, 2006.722239, 401.300506), MAT_Vector3(77.955085, 36.189229, -90.599126))
  Node_ParseIniFile(node120, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "ter_rock_s_01_8")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(3437.259094, 2612.53969, 313.057501), MAT_Vector3(77.95509, 36.18923, -90.59913))
  Node_ParseIniFile(node121, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "ter_megalith_l_02_6")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3374.586048, 2366.892704, 432.284131), MAT_Vector3(161.787309, 38.544256, 67.17252))
  Node_ParseIniFile(node122, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "ter_rock_l_01_4")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3322.052401, 2685.757403, 333.888659), MAT_Vector3(-37.580733, 5.243745, 23.541172))
  Node_ParseIniFile(node123, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "ter_megalith_s_01_6")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3407.510131, 2786.769161, 318.202929), MAT_Vector3(-41.515175, 0.188207, 2.140123))
  Node_ParseIniFile(node124, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "ter_rock_m_01_6")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(3387.057166, 2850.366385, 351.839979), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node125, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "ter_megalith_m_01_5")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(3429.52652, 2823.646274, 316.179402), MAT_Vector3(-36.030442, -1.796288, 3.264712))
  Node_ParseIniFile(node126, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(3889.467865, 3290.973122, 285.576605), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node127, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(3901.277292, 3451.579377, 323.470444), MAT_Vector3(-178.581377, 0, 0))
  Node_ParseIniFile(node128, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(3856.401689, 3103.204874, 296.32952), MAT_Vector3(159.525978, 0, 0))
  Node_ParseIniFile(node129, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "ter_bridgering_l_6")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(3855.221071, 3208.307702, 291.609347), MAT_Vector3(-4.140245, 0, 0))
  Node_ParseIniFile(node130, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "ter_bridgering_l_7")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(3874.115868, 3381.904598, 307.539816), MAT_Vector3(-0.829366, 0, 0))
  Node_ParseIniFile(node131, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "ter_megalith_s_01_7")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(1920.443909, 3430.666608, 361.480804), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node132, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "ter_megalith_m_02_7")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1823.680991, 3454.564181, 358.355035), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "ter_megalith_l_02_7")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(1858.247498, 3464.505346, 358.875997), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "ter_rock_l_01_5")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(730.433447, 1638.986032, 388.476194), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "ter_rock_l_01_6")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(593.227768, 1877.905285, 374.799154), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node136, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "ter_rock_s_01_9")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(763.228899, 1614.087361, 388.997155), MAT_Vector3(113.67189, -30.46535, -31.447861))
  Node_ParseIniFile(node137, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "ter_megalith_s_03_6")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(890.947148, 1823.479389, 388.763631), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node138, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "ter_megalith_m_01_6")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(994.31092, 1877.162898, 393.425328), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node139, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "ter_megalith_l_02_8")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(921.662536, 1890.424573, 391.601963), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(567.333193, 1501.427721, 387.434271), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node141, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "ter_megalith_m_02_8")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(896.899617, 1857.845442, 386.131867), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "ter_megalith_m_01_7")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(631.965355, 1462.791163, 391.341482), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_fx_plankton", "fx_plankton_tz_n_1")
  Node_AddSon(node7, node144)
  Node_ParseIniFile(node144, "osd/fx_plankton/fx_plankton_tz_n.osd")
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node145)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node145, node146)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node145, node147)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_PatrolArea", "FightArea_1")
  Node_AddSon(node147, node148)
  PatrolArea_SetPosition(node148, MAT_Vector3(1953.139968, 2284.110244, 435.091419))
  PatrolArea_SetRadius(node148, 2500)
  PatrolArea_SetMinZ(node148, -100)
  PatrolArea_SetMaxZ(node148, 250)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Path", "AvengerPath_1")
  Node_AddSon(node147, node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node149, node150)
  Position_SetPosition(node150, MAT_Vector3(749.377485, 3728.470081, 459.592183))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node149, node151)
  Position_SetPosition(node151, MAT_Vector3(822.113469, 3663.61062, 454.271795))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node149, node152)
  Position_SetPosition(node152, MAT_Vector3(891.767323, 3610.097805, 487.591161))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node149, node153)
  Position_SetPosition(node153, MAT_Vector3(952.068198, 3498.860374, 448.786978))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node149, node154)
  Position_SetPosition(node154, MAT_Vector3(1018.717299, 3428.250542, 493.894398))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node149, node155)
  Position_SetPosition(node155, MAT_Vector3(1110.069071, 3365.797697, 438.652779))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node149, node156)
  Position_SetPosition(node156, MAT_Vector3(1322.367919, 3248.118819, 472.322378))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node149, node157)
  Position_SetPosition(node157, MAT_Vector3(1426.523216, 3151.261821, 442.214243))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node149, node158)
  Position_SetPosition(node158, MAT_Vector3(1547.791351, 3043.348544, 457.319584))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node149, node159)
  Position_SetPosition(node159, MAT_Vector3(1668.907044, 2942.752659, 480.042703))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node149, node160)
  Position_SetPosition(node160, MAT_Vector3(1761.828818, 2863.530083, 453.121098))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node149, node161)
  Position_SetPosition(node161, MAT_Vector3(1878.134832, 2785.075328, 475.089902))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node149, node162)
  Position_SetPosition(node162, MAT_Vector3(2055.069411, 2755.00443, 460.82754))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node149, node163)
  Position_SetPosition(node163, MAT_Vector3(2156.301669, 2726.055461, 458.901576))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node149, node164)
  Position_SetPosition(node164, MAT_Vector3(2257.33734, 2700.861488, 444.199934))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node147, node165)
  Position_SetPosition(node165, MAT_Vector3(3317.820982, 2641.289057, 441.833918))
  Position_SetRadius(node165, 512)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Path", "ToilerPath_1")
  Node_AddSon(node147, node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node166, node167)
  Position_SetPosition(node167, MAT_Vector3(3546.650296, 3109.034611, 401.135474))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node166, node168)
  Position_SetPosition(node168, MAT_Vector3(3547.657983, 3005.750638, 425.9562))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node166, node169)
  Position_SetPosition(node169, MAT_Vector3(3580.240338, 2917.007767, 379.448476))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node166, node170)
  Position_SetPosition(node170, MAT_Vector3(3548.133465, 2847.167864, 432.666501))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node166, node171)
  Position_SetPosition(node171, MAT_Vector3(3523.376749, 2803.036188, 384.371214))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node166, node172)
  Position_SetPosition(node172, MAT_Vector3(3429.15509, 2701.553582, 388.430545))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node166, node173)
  Position_SetPosition(node173, MAT_Vector3(3336.248887, 2554.318478, 390.633715))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node166, node174)
  Position_SetPosition(node174, MAT_Vector3(3267.488095, 2413.779639, 412.009059))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node166, node175)
  Position_SetPosition(node175, MAT_Vector3(3259.007963, 2289.550544, 393.761769))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node166, node176)
  Position_SetPosition(node176, MAT_Vector3(3267.379944, 2179.669524, 391.996963))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node166, node177)
  Position_SetPosition(node177, MAT_Vector3(3313.732362, 2118.695385, 378.904361))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Path", "ToilerPath_2")
  Node_AddSon(node147, node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node178, node179)
  Position_SetPosition(node179, MAT_Vector3(3336.273969, 2080.200292, 372.344542))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node178, node180)
  Position_SetPosition(node180, MAT_Vector3(3347.788826, 2003.422464, 372.365835))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node178, node181)
  Position_SetPosition(node181, MAT_Vector3(3354.98334, 1857.305, 378.86417))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node178, node182)
  Position_SetPosition(node182, MAT_Vector3(3391.929489, 1725.462675, 358.745395))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node178, node183)
  Position_SetPosition(node183, MAT_Vector3(3427.556985, 1635.12825, 368.371134))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node178, node184)
  Position_SetPosition(node184, MAT_Vector3(3428.274392, 1532.198315, 414.910437))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node178, node185)
  Position_SetPosition(node185, MAT_Vector3(3448.54496, 1380.682126, 482.311853))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node178, node186)
  Position_SetPosition(node186, MAT_Vector3(3459.579274, 1274.392933, 490.73246))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node178, node187)
  Position_SetPosition(node187, MAT_Vector3(3235.555874, 1220.767011, 494.502847))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node178, node188)
  Position_SetPosition(node188, MAT_Vector3(3130.023672, 1107.255584, 490.444729))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "AvengerPath_2")
  Node_AddSon(node147, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(2292.301924, 2675.702161, 451.44837))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(2339.003814, 2638.204958, 448.818815))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node189, node192)
  Position_SetPosition(node192, MAT_Vector3(2399.515113, 2577.104967, 446.475623))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node189, node193)
  Position_SetPosition(node193, MAT_Vector3(2456.928791, 2479.596984, 445.717786))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node189, node194)
  Position_SetPosition(node194, MAT_Vector3(2504.298831, 2380.582693, 457.138531))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node189, node195)
  Position_SetPosition(node195, MAT_Vector3(2528.903447, 2285.000493, 464.489983))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node189, node196)
  Position_SetPosition(node196, MAT_Vector3(2536.685247, 2198.87641, 448.889507))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node189, node197)
  Position_SetPosition(node197, MAT_Vector3(2522.538197, 2099.193969, 444.618509))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node189, node198)
  Position_SetPosition(node198, MAT_Vector3(2504.206694, 2015.999875, 446.635069))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node189, node199)
  Position_SetPosition(node199, MAT_Vector3(2488.204529, 1915.26986, 453.008144))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node189, node200)
  Position_SetPosition(node200, MAT_Vector3(2498.175505, 1825.340157, 459.975027))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node189, node201)
  Position_SetPosition(node201, MAT_Vector3(2550.1016, 1713.571924, 488.690251))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node189, node202)
  Position_SetPosition(node202, MAT_Vector3(2615.783684, 1603.866764, 479.234575))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node189, node203)
  Position_SetPosition(node203, MAT_Vector3(2665.991094, 1527.004275, 463.45687))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node189, node204)
  Position_SetPosition(node204, MAT_Vector3(2736.832489, 1453.236395, 453.445616))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node189, node205)
  Position_SetPosition(node205, MAT_Vector3(2812.660186, 1369.667291, 445.46447))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node189, node206)
  Position_SetPosition(node206, MAT_Vector3(2858.304455, 1316.734892, 435.729541))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node189, node207)
  Position_SetPosition(node207, MAT_Vector3(2911.950862, 1240.388171, 412.399612))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node189, node208)
  Position_SetPosition(node208, MAT_Vector3(2970.067803, 1157.679223, 388.225642))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node189, node209)
  Position_SetPosition(node209, MAT_Vector3(3004.45615, 1092.50965, 369.63366))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node147, node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node210, node211)
  Position_SetPosition(node211, MAT_Vector3(3075.03193, 950.680793, 480.070257))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node210, node212)
  Position_SetPosition(node212, MAT_Vector3(3220.430698, 920.000541, 480.514936))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Path", "DockPath_2")
  Node_AddSon(node147, node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node213, node214)
  Position_SetPosition(node214, MAT_Vector3(3292.148283, 928.257118, 458.539166))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node213, node215)
  Position_SetPosition(node215, MAT_Vector3(3351.22181, 978.772801, 461.013325))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_PatrolArea", "DockArea_1")
  Node_AddSon(node147, node216)
  PatrolArea_SetPosition(node216, MAT_Vector3(3246.868475, 897.187309, 473.919784))
  PatrolArea_SetRadius(node216, 50)
  PatrolArea_SetMinZ(node216, -20)
  PatrolArea_SetMaxZ(node216, 20)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Path", "MightyPath_1")
  Node_AddSon(node147, node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node217, node218)
  Position_SetPosition(node218, MAT_Vector3(1738.95053, 737.456737, 439.836895))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node217, node219)
  Position_SetPosition(node219, MAT_Vector3(1850.580732, 742.141175, 439.328366))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node217, node220)
  Position_SetPosition(node220, MAT_Vector3(1958.299669, 785.596809, 447.575419))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node217, node221)
  Position_SetPosition(node221, MAT_Vector3(2044.532768, 819.347374, 450.297902))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node217, node222)
  Position_SetPosition(node222, MAT_Vector3(2126.033926, 876.563424, 449.468041))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node217, node223)
  Position_SetPosition(node223, MAT_Vector3(2239.16087, 884.72425, 449.193544))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node217, node224)
  Position_SetPosition(node224, MAT_Vector3(2338.768587, 892.112428, 454.166422))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node217, node225)
  Position_SetPosition(node225, MAT_Vector3(2438.762627, 892.740992, 452.730685))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node217, node226)
  Position_SetPosition(node226, MAT_Vector3(2511.977022, 908.793285, 445.086094))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node217, node227)
  Position_SetPosition(node227, MAT_Vector3(2592.126574, 930.328203, 428.813225))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node217, node228)
  Position_SetPosition(node228, MAT_Vector3(2671.841774, 929.797796, 410.756731))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node217, node229)
  Position_SetPosition(node229, MAT_Vector3(2770.339073, 926.949973, 386.160604))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node217, node230)
  Position_SetPosition(node230, MAT_Vector3(2848.074627, 931.392696, 370.282845))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node217, node231)
  Position_SetPosition(node231, MAT_Vector3(2927.161788, 971.516551, 371.100938))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node217, node232)
  Position_SetPosition(node232, MAT_Vector3(2991.474696, 973.496723, 423.442464))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Path", "TrafficPath_1")
  Node_AddSon(node147, node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node233, node234)
  Position_SetPosition(node234, MAT_Vector3(3194.816184, 1125.390959, 559.525729))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node233, node235)
  Position_SetPosition(node235, MAT_Vector3(3142.739995, 928.275751, 513.266371))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node233, node236)
  Position_SetPosition(node236, MAT_Vector3(3172.946273, 700.132891, 520.800178))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node233, node237)
  Position_SetPosition(node237, MAT_Vector3(3313.704527, 480.593803, 480.77676))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node233, node238)
  Position_SetPosition(node238, MAT_Vector3(3399.074315, 591.793821, 491.631297))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node233, node239)
  Position_SetPosition(node239, MAT_Vector3(3459.416706, 688.38594, 559.587591))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node233, node240)
  Position_SetPosition(node240, MAT_Vector3(3370.364219, 964.775337, 575.866197))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_PatrolArea", "TrafficArea_1")
  Node_AddSon(node147, node241)
  PatrolArea_SetPosition(node241, MAT_Vector3(3327.695431, 835.303798, 473.9198))
  PatrolArea_SetRadius(node241, 50)
  PatrolArea_SetMinZ(node241, -20)
  PatrolArea_SetMaxZ(node241, 20)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node145, node242)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node145, node243)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node243, node244)
  Body_SetFriendOrFoeID(node244, 0)
  Body_SetPosition(node244, MAT_Vector3(3551.373328, 912.808869, 462.095338))
  Trigger_SetPresenceSphere(node244, 512)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2_1")
  Node_AddSon(node243, node245)
  Body_SetFriendOrFoeID(node245, 0)
  Body_SetPosition(node245, MAT_Vector3(3551.373, 912.8089, 462.0953))
  Trigger_SetPresenceSphere(node245, 768)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2_2")
  Node_AddSon(node243, node246)
  Body_SetFriendOrFoeID(node246, 0)
  Body_SetPosition(node246, MAT_Vector3(3551.373, 912.8089, 462.0953))
  Trigger_SetPresenceSphere(node246, 768)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2_3")
  Node_AddSon(node243, node247)
  Body_SetFriendOrFoeID(node247, 0)
  Body_SetPosition(node247, MAT_Vector3(3551.373, 912.8089, 462.0953))
  Trigger_SetPresenceSphere(node247, 768)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Trigger", "BonusTriggerPresence_1")
  Node_AddSon(node243, node248)
  Body_SetFriendOrFoeID(node248, 0)
  Body_SetPosition(node248, MAT_Vector3(692.101288, 1862.53166, 462.0953))
  Trigger_SetPresenceSphere(node248, 512)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Trigger", "AvengerTriggerPresenceBox_1")
  Node_AddSon(node243, node249)
  Body_SetFriendOrFoeID(node249, 0)
  Body_SetCS(node249, MAT_Vector3(1462.685654, 3123.718673, 478.126708), MAT_Vector3(51.370717, 0, 0))
  Trigger_SetBoxMode(node249, 220, 40, 220)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node145, node250)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Directory", "Traffic")
  Node_AddSon(node250, node251)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_vessel", "tz_police_1")
  Node_AddSon(node251, node252)
  Body_SetCS(node252, MAT_Vector3(3212.424531, 1148.747812, 483.84864), MAT_Vector3(148.368316, 0, 0))
  Node_ParseIniFile(node252, "osd/tz/tz_police.osd")
  Body_SetFriendOrFoeID(node252, 0)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_vessel", "tz_police_2")
  Node_AddSon(node251, node253)
  Body_SetCS(node253, MAT_Vector3(3210.131496, 1191.961333, 474.431184), MAT_Vector3(162.094801, 0, 0))
  Node_ParseIniFile(node253, "osd/tz/tz_police.osd")
  Body_SetFriendOrFoeID(node253, 0)
  Body_SetNameKey(node253, -1)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_vessel", "tz_police_3")
  Node_AddSon(node251, node254)
  Body_SetCS(node254, MAT_Vector3(3248.386432, 1168.111912, 477.031699), MAT_Vector3(156.351011, 0, 0))
  Node_ParseIniFile(node254, "osd/tz/tz_police.osd")
  Body_SetFriendOrFoeID(node254, 0)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, -1, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_vehicle", "tz_buggy_1")
  Node_AddSon(node251, node255)
  Body_SetCS(node255, MAT_Vector3(3325.801038, 838.46112, 573.9198), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node255, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node255, 0)
  Body_SetNameKey(node255, -1)
  Body_SetCargoKey(node255, -1, 0)
  Body_SetCargoKey(node255, -1, 1)
  Body_SetCargoKey(node255, -1, 2)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_vehicle", "tz_buggy_2")
  Node_AddSon(node251, node256)
  Body_SetCS(node256, MAT_Vector3(3456.739203, 997.677037, 573.9198), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node256, "osd/tz/tz_buggy.osd")
  Body_SetFriendOrFoeID(node256, 0)
  Body_SetNameKey(node256, -1)
  Body_SetCargoKey(node256, -1, 0)
  Body_SetCargoKey(node256, -1, 1)
  Body_SetCargoKey(node256, -1, 2)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node250, node257)
  Body_SetCS(node257, MAT_Vector3(981.881061, 1144.159687, 408.090687), MAT_Vector3(-144.240054, 0, 0))
  Node_ParseIniFile(node257, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node257, 1)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_vessel", "gen_avenger_narrow_1")
  Node_AddSon(node250, node258)
  Body_SetCS(node258, MAT_Vector3(622.994252, 3791.174588, 403.769509), MAT_Vector3(-113.492065, 0, 0))
  Node_ParseIniFile(node258, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node258, 3)
  Body_SetNameKey(node258, -1)
  Body_SetCargoKey(node258, -1, 0)
  Body_SetCargoKey(node258, -1, 1)
  Body_SetCargoKey(node258, -1, 2)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node250, node259)
  Body_SetPosition(node259, MAT_Vector3(1691.866295, 3197.346668, 438.874784))
  WayPoint_SetRadius(node259, 100)
  Node_ParseIniFile(node259, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node250, node260)
  Body_SetPosition(node260, MAT_Vector3(1921.749148, 3444.384794, 437.195173))
  WayPoint_SetRadius(node260, 100)
  Node_ParseIniFile(node260, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_2")
  Node_AddSon(node250, node261)
  Body_SetPosition(node261, MAT_Vector3(3023.595994, 2332.063138, 373.419432))
  WayPoint_SetRadius(node261, 150)
  Node_ParseIniFile(node261, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_3")
  Node_AddSon(node250, node262)
  Body_SetPosition(node262, MAT_Vector3(3006.092866, 1089.604856, 405.143678))
  WayPoint_SetRadius(node262, 75)
  Node_ParseIniFile(node262, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_vessel", "gen_freighter_2")
  Node_AddSon(node250, node263)
  Body_SetCS(node263, MAT_Vector3(683.182153, 1870.704756, 634.097621), MAT_Vector3(-63.988385, 0, 0))
  Node_ParseIniFile(node263, "osd/gen/gen_freighter.osd")
  Body_SetFriendOrFoeID(node263, 0)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, 1114, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_vessel", "gen_freighter_1")
  Node_AddSon(node250, node264)
  Body_SetCS(node264, MAT_Vector3(2039.172127, 475.38722, 592.925529), MAT_Vector3(-73.426971, 0, 0))
  Node_ParseIniFile(node264, "osd/gen/gen_freighter.osd")
  Body_SetFriendOrFoeID(node264, 0)
  Body_SetNameKey(node264, -1)
  Body_SetCargoKey(node264, 1115, 0)
  Body_SetCargoKey(node264, -1, 1)
  Body_SetCargoKey(node264, -1, 2)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_vessel", "gen_toiler_narrow_1")
  Node_AddSon(node250, node265)
  Body_SetCS(node265, MAT_Vector3(3544.855593, 3152.883531, 407.351528), MAT_Vector3(172.158294, 0, 0))
  Node_ParseIniFile(node265, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node265, 3)
  Body_SetNameKey(node265, -1)
  Body_SetCargoKey(node265, -1, 0)
  Body_SetCargoKey(node265, -1, 1)
  Body_SetCargoKey(node265, -1, 2)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_waypoint", "nav_emp_1")
  Node_AddSon(node250, node266)
  Body_SetPosition(node266, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node266, 5)
  Node_ParseIniFile(node266, "osd/nav/nav_emp.osd")
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_waypoint", "nav_emp_2")
  Node_AddSon(node250, node267)
  Body_SetPosition(node267, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node267, 5)
  Node_ParseIniFile(node267, "osd/nav/nav_emp.osd")
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_waypoint", "nav_emp_3")
  Node_AddSon(node250, node268)
  Body_SetPosition(node268, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node268, 5)
  Node_ParseIniFile(node268, "osd/nav/nav_emp.osd")
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_vessel", "gen_mightymaggie_narrow_1")
  Node_AddSon(node250, node269)
  Body_SetCS(node269, MAT_Vector3(1653.309825, 734.212723, 415.421976), MAT_Vector3(-90.605487, 0, 0))
  Node_ParseIniFile(node269, "osd/gen/gen_mightymaggie_narrow.osd")
  Body_SetFriendOrFoeID(node269, 3)
  Body_SetNameKey(node269, -1)
  Body_SetCargoKey(node269, -1, 0)
  Body_SetCargoKey(node269, -1, 1)
  Body_SetCargoKey(node269, -1, 2)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node270)
  Camera_SetBackPlane(node270, 1024)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node271)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node271, node272)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node271, node273)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node273, node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node274, node275)
  Position_SetPosition(node275, MAT_Vector3(942.758885, 3531.467877, 475.651597))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node274, node276)
  Position_SetPosition(node276, MAT_Vector3(1037.499391, 3400.056882, 486.60093))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node274, node277)
  Position_SetPosition(node277, MAT_Vector3(1333.219821, 3247.4822, 482.216509))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node273, node278)
  Position_SetPosition(node278, MAT_Vector3(1031.748419, 3395.69887, 491.374997))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node273, node279)
  Position_SetPosition(node279, MAT_Vector3(1037.453, 3400.122, 440.608265))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node273, node280)
  Position_SetPosition(node280, MAT_Vector3(942.833788, 3531.452422, 475.796431))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node271, node281)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node281, node282)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Director", "Director_2")
  Node_AddSon(node281, node283)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node271, node284)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node271, node285)
  Node_EnterSimulation(node285)
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
SetEnemyMatrixElement(3, 2, E)
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
SetEnemyMatrixElement(2, 3, E)
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
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (o6212.Value ~= True) then
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
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (o6236.Value == True) then
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
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
S_o76 = { [nil] = {}, Start = function(L0)

end }
S_o122 = { [nil] = {}, Start = function(L0)

end }
S_o168 = { [nil] = {}, Start = function(L0)

end }
S_o214 = { [nil] = {}, Start = function(L0)

end }
S_o260 = { [nil] = {}, Start = function(L0)

end }
S_o306 = { [nil] = {}, Start = function(L0)

end }
S_o352 = { [nil] = {}, Start = function(L0)

end }
S_o398 = { [nil] = {}, Start = function(L0)

end }
S_o444 = { [nil] = {}, Start = function(L0)

end }
S_o490 = { [nil] = {}, Start = function(L0)

end }
S_o536 = { [nil] = {}, Start = function(L0)

end }
S_o582 = { [nil] = {}, Start = function(L0)

end }
S_o628 = { [nil] = {}, Start = function(L0)

end }
S_o674 = { [nil] = {}, Start = function(L0)

end }
S_o720 = { [nil] = {}, Start = function(L0)

end }
S_o766 = { [nil] = {}, Start = function(L0)

end }
S_o812 = { [nil] = {}, Start = function(L0)

end }
S_o858 = { [nil] = {}, Start = function(L0)

end }
S_o904 = { [nil] = {}, Start = function(L0)

end }
S_o950 = { [nil] = {}, Start = function(L0)

end }
S_o996 = { [nil] = {}, Start = function(L0)

end }
S_o1042 = { [nil] = {}, Start = function(L0)

end }
S_o1088 = { [nil] = {}, Start = function(L0)

end }
S_o1134 = { [nil] = {}, Start = function(L0)

end }
S_o1180 = { [nil] = {}, Start = function(L0)

end }
S_o1226 = { [nil] = {}, Start = function(L0)

end }
S_o1272 = { [nil] = {}, Start = function(L0)

end }
S_o1318 = { [nil] = {}, Start = function(L0)

end }
S_o1364 = { [nil] = {}, Start = function(L0)

end }
S_o1410 = { [nil] = {}, Start = function(L0)

end }
S_o1456 = { [nil] = {}, Start = function(L0)

end }
S_o1502 = { [nil] = {}, Start = function(L0)

end }
S_o1548 = { [nil] = {}, Start = function(L0)

end }
S_o1594 = { [nil] = {}, Start = function(L0)

end }
S_o1640 = { [nil] = {}, Start = function(L0)

end }
S_o1686 = { [nil] = {}, Start = function(L0)

end }
S_o1732 = { [nil] = {}, Start = function(L0)

end }
S_o1778 = { [nil] = {}, Start = function(L0)

end }
S_o1824 = { [nil] = {}, Start = function(L0)

end }
S_o1870 = { [nil] = {}, Start = function(L0)

end }
S_o1916 = { [nil] = {}, Start = function(L0)

end }
S_o1962 = { [nil] = {}, Start = function(L0)

end }
S_o2008 = { [nil] = {}, Start = function(L0)

end }
S_o2054 = { [nil] = {}, Start = function(L0)

end }
S_o2100 = { [nil] = {}, Start = function(L0)

end }
S_o2146 = { [nil] = {}, Start = function(L0)

end }
S_o2192 = { [nil] = {}, Start = function(L0)

end }
S_o2238 = { [nil] = {}, Start = function(L0)

end }
S_o2284 = { [nil] = {}, Start = function(L0)

end }
S_o2330 = { [nil] = {}, Start = function(L0)

end }
S_o2376 = { [nil] = {}, Start = function(L0)

end }
S_o2422 = { [nil] = {}, Start = function(L0)

end }
S_o2468 = { [nil] = {}, Start = function(L0)

end }
S_o2514 = { [nil] = {}, Start = function(L0)

end }
S_o2560 = { [nil] = {}, Start = function(L0)

end }
S_o2606 = { [nil] = {}, Start = function(L0)

end }
S_o2652 = { [nil] = {}, Start = function(L0)

end }
S_o2698 = { [nil] = {}, Start = function(L0)

end }
S_o2744 = { [nil] = {}, Start = function(L0)

end }
S_o2790 = { [nil] = {}, Start = function(L0)

end }
S_o2836 = { [nil] = {}, Start = function(L0)

end }
S_o2882 = { [nil] = {}, Start = function(L0)

end }
S_o2928 = { [nil] = {}, Start = function(L0)

end }
S_o2974 = { [nil] = {}, Start = function(L0)

end }
S_o3020 = { [nil] = {}, Start = function(L0)

end }
S_o3066 = { [nil] = {}, Start = function(L0)

end }
S_o3112 = { [nil] = {}, Start = function(L0)

end }
S_o3158 = { [nil] = {}, Start = function(L0)

end }
S_o3204 = { [nil] = {}, Start = function(L0)

end }
S_o3250 = { [nil] = {}, Start = function(L0)

end }
S_o3296 = { [nil] = {}, Start = function(L0)

end }
S_o3342 = { [nil] = {}, Start = function(L0)

end }
S_o3388 = { [nil] = {}, Start = function(L0)

end }
S_o3434 = { [nil] = {}, Start = function(L0)

end }
S_o3480 = { [nil] = {}, Start = function(L0)

end }
S_o3526 = { [nil] = {}, Start = function(L0)

end }
S_o3572 = { [nil] = {}, Start = function(L0)

end }
S_o3618 = { [nil] = {}, Start = function(L0)

end }
S_o3664 = { [nil] = {}, Start = function(L0)

end }
S_o3710 = { [nil] = {}, Start = function(L0)

end }
S_o3756 = { [nil] = {}, Start = function(L0)

end }
S_o3802 = { [nil] = {}, Start = function(L0)

end }
S_o3848 = { [nil] = {}, Start = function(L0)

end }
S_o3894 = { [nil] = {}, Start = function(L0)

end }
S_o3940 = { [nil] = {}, Start = function(L0)

end }
S_o3986 = { [nil] = {}, Start = function(L0)

end }
S_o4032 = { [nil] = {}, Start = function(L0)

end }
S_o4078 = { [nil] = {}, Start = function(L0)

end }
S_o4124 = { [nil] = {}, Start = function(L0)

end }
S_o4170 = { [nil] = {}, Start = function(L0)

end }
S_o4216 = { [nil] = {}, Start = function(L0)

end }
S_o4262 = { [nil] = {}, Start = function(L0)

end }
S_o4308 = { [nil] = {}, Start = function(L0)

end }
S_o4354 = { [nil] = {}, Start = function(L0)

end }
S_o4400 = { [nil] = {}, Start = function(L0)

end }
S_o4446 = { [nil] = {}, Start = function(L0)

end }
S_o4492 = { [nil] = {}, Start = function(L0)

end }
S_o4538 = { [nil] = {}, Start = function(L0)

end }
S_o4584 = { [nil] = {}, Start = function(L0)

end }
S_o4630 = { [nil] = {}, Start = function(L0)

end }
S_o4676 = { [nil] = {}, Start = function(L0)

end }
S_o4722 = { [nil] = {}, Start = function(L0)

end }
S_o4768 = { [nil] = {}, Start = function(L0)

end }
S_o4814 = { [nil] = {}, Start = function(L0)

end }
S_o4860 = { [nil] = {}, Start = function(L0)

end }
S_o4906 = { [nil] = {}, Start = function(L0)

end }
S_o4952 = { [nil] = {}, Start = function(L0)

end }
S_o4998 = { [nil] = {}, Start = function(L0)

end }
S_o5044 = { [nil] = {}, Start = function(L0)

end }
S_o5090 = { [nil] = {}, Start = function(L0)

end }
S_o5136 = { [nil] = {}, Start = function(L0)

end }
S_o5182 = { [nil] = {}, Start = function(L0)

end }
S_o5228 = { [nil] = {}, Start = function(L0)

end }
S_o5274 = { [nil] = {}, Start = function(L0)

end }
S_o5320 = { [nil] = {}, Start = function(L0)

end }
S_o5366 = { [nil] = {}, Start = function(L0)

end }
S_o5412 = { [nil] = {}, Start = function(L0)

end }
S_o5458 = { [nil] = {}, Start = function(L0)

end }
S_o5504 = { [nil] = {}, Start = function(L0)

end }
S_o5550 = { [nil] = {}, Start = function(L0)

end }
S_o5596 = { [nil] = {}, Start = function(L0)

end }
S_o5642 = { [nil] = {}, Start = function(L0)

end }
S_o5688 = { [nil] = {}, Start = function(L0)

end }
S_o5734 = { [nil] = {}, Start = function(L0)

end }
S_o5780 = { [nil] = {}, Start = function(L0)

end }
S_o5826 = { [nil] = {}, Start = function(L0)

end }
S_o5872 = { [nil] = {}, Start = function(L0)

end }
o5873 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_2", "/Scenario_Dynamic/Navigation/DockArea_1")
o5874 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o5879 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 40)
S_o5880 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5880, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5880, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5880, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_avenger", "gen_toiler", "gen_mightymaggie", "", False, False, True)
  CallFunction(o5880, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5880, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5880, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5885.SetStateValue(L1)
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
o5885 = { [nil] = {}, Start = function()
  o5885["Value"] = False
  o6190.StartCalculate()
  o6202.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5885.Value == L0) then
    o5885["Value"] = L0
    o6190.ReCalculate()
    o6202.ReCalculate()
  end
end }
S_o5886 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5886, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5886, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5886, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_avenger", "", "", "", False, False, True)
  CallFunction(o5886, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5886, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5886, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5891.SetStateValue(L1)
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
o5891 = { [nil] = {}, Start = function()
  o5891["Value"] = False
  o6205.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5891.Value == L0) then
    o5891["Value"] = L0
    o6205.ReCalculate()
  end
end }
S_o5892 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5892, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5892, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5892, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "", "gen_toiler", "", "", False, False, True)
  CallFunction(o5892, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5892, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5892, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5897.SetStateValue(L1)
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
o5897 = { [nil] = {}, Start = function()
  o5897["Value"] = False
  o6206.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5897.Value == L0) then
    o5897["Value"] = L0
    o6206.ReCalculate()
  end
end }
S_o5898 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5898, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5898, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5898, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "", "", "gen_mightymaggie", "", False, False, True)
  CallFunction(o5898, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5898, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5898, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5903.SetStateValue(L1)
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
o5903 = { [nil] = {}, Start = function()
  o5903["Value"] = False
  o6207.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5903.Value == L0) then
    o5903["Value"] = L0
    o6207.ReCalculate()
  end
end }
S_o5904 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5904, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5904, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5904, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5904, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5904, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5904, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5909.SetStateValue(L1)
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
o5909 = { [nil] = {}, Start = function()
  o5909["Value"] = False
  o6220.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5909.Value == L0) then
    o5909["Value"] = L0
    o6220.ReCalculate()
  end
end }
S_o5910 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5910, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5910, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5910, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_avenger_narrow_1", "", "", "", False, False, True)
  CallFunction(o5910, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5910, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5910, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5915.SetStateValue(L1)
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
o5915 = { [nil] = {}, Start = function()
  o5915["Value"] = False
  o6196.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5915.Value == L0) then
    o5915["Value"] = L0
    o6196.ReCalculate()
  end
end }
S_o5916 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5916, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5916, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5916, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5878, { {}, "Goto", "/Scenario_Dynamic/Navigation/TrafficPath_1", 1, 1 } }, o5879, "/Scenario_Dynamic/Navigation/FightArea_1", 1, "", "", "", "", 21, 1, True, "Code4")
  else
    CallFunction(o5916, "Code4")
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
S_o5972 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5972, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5972, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5972, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5878, { {}, "Goto", "/Scenario_Dynamic/Navigation/TrafficPath_1", 1, 1 } }, o5879, "/Scenario_Dynamic/Navigation/FightArea_1", 1, "", "", "", "", 21, 1, True, "Code4")
  else
    CallFunction(o5972, "Code4")
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
S_o6028 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6028, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6028, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6028, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5878, { {}, "Goto", "/Scenario_Dynamic/Navigation/TrafficPath_1", 1, 1 } }, o5879, "/Scenario_Dynamic/Navigation/FightArea_1", 1, "", "", "", "", 21, 1, True, "Code4")
  else
    CallFunction(o6028, "Code4")
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
S_o6084 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6084, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6084, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6084, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/TrafficArea_1", "/Scenario_Dynamic/Navigation/TrafficArea_1" }, 21, "Code4")
  else
    CallFunction(o6084, "Code4")
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
S_o6131 = { [nil] = {}, Start = function(L0)

end }
S_o6176 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "device_generator0", 1)
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "torpedo_flashshark", 2)
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  CallFunction(o6176, "Code9")
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
o6190 = { [nil] = {}, GetCalculated = function()
  if not (o6264.Value == True) then
    if not (o6437.Value == True) then
      if not (o6509.Value == True) then
        if not (o5885.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o6190.SetStateValue(o6190.GetCalculated())
end, StartCalculate = function()
  o6190["Value"] = o6190.GetCalculated()
  o6236.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2105)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o6190.Value == L0) then
    DelayedFunction(2, o6190, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6190.Value == L0) then
    o6190["Value"] = L0
    o6236.ReCalculate()
    if not (L0 ~= 1) then
      o6190.ChangeTo1()
    end
  end
end }
o6191 = { [nil] = {}, GetCalculated = function()
  if not (o6517.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6191.SetStateValue(o6191.GetCalculated())
end, StartCalculate = function()
  o6191["Value"] = o6191.GetCalculated()
  o6212.StartCalculate()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o6191.Value == L0) then
    DelayedFunction(1.3, o6191, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6191.Value == L0) then
    o6191["Value"] = L0
    o6212.ReCalculate()
    if not (L0 ~= 1) then
      o6191.ChangeTo1()
    end
  end
end }
o6192 = { [nil] = {}, GetCalculated = function()
  if not (o6302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6192.SetStateValue(o6192.GetCalculated())
end, StartCalculate = function()
  o6192["Value"] = o6192.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o6304.Node)
end, SetStateValue = function(L0)
  if not (o6192.Value == L0) then
    o6192["Value"] = L0
    if not (L0 ~= 1) then
      o6192.ChangeTo1()
    end
  end
end }
o6193 = { [nil] = {}, GetCalculated = function()
  if not (o6307.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6193.SetStateValue(o6193.GetCalculated())
end, StartCalculate = function()
  o6193["Value"] = o6193.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 109)
end, SetStateValue = function(L0)
  if not (o6193.Value == L0) then
    o6193["Value"] = L0
    if not (L0 ~= 1) then
      o6193.ChangeTo1()
    end
  end
end }
o6194 = { [nil] = {}, GetCalculated = function()
  if not (o6196.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6194.SetStateValue(o6194.GetCalculated())
end, StartCalculate = function()
  o6194["Value"] = o6194.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 110)
end, SetStateValue = function(L0)
  if not (o6194.Value == L0) then
    DelayedFunction(10, o6194, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6194.Value == L0) then
    o6194["Value"] = L0
    if not (L0 ~= 1) then
      o6194.ChangeTo1()
    end
  end
end }
o6195 = { [nil] = {}, GetCalculated = function()
  if not (o6256.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6195.SetStateValue(o6195.GetCalculated())
end, StartCalculate = function()
  o6195["Value"] = o6195.GetCalculated()
  o6198.StartCalculate()
end, ChangeTo1 = function()
  CallFunction(o6240, "Code9")
  SendRadioMessageTake(o6176.Node, o6176.Node, 111)
  SendRadioMessageTake(o6176.Node, o6176.Node, 112)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o6195.Value == L0) then
    o6195["Value"] = L0
    o6198.ReCalculate()
    if not (L0 ~= 1) then
      o6195.ChangeTo1()
    end
  end
end }
o6196 = { [nil] = {}, GetCalculated = function()
  if not (o5915.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6196.SetStateValue(o6196.GetCalculated())
end, StartCalculate = function()
  o6196["Value"] = o6196.GetCalculated()
  o6194.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 113)
  Game_SetWayPoint(GetGameNode(), o6488.Node)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o6196.Value == L0) then
    o6196["Value"] = L0
    o6194.ReCalculate()
    if not (L0 ~= 1) then
      o6196.ChangeTo1()
    end
  end
end }
o6197 = { [nil] = {}, GetCalculated = function()
  if not (o6435.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6197.SetStateValue(o6197.GetCalculated())
end, StartCalculate = function()
  o6197["Value"] = o6197.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 114)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o6197.Value == L0) then
    o6197["Value"] = L0
    if not (L0 ~= 1) then
      o6197.ChangeTo1()
    end
  end
end }
o6198 = { [nil] = {}, GetCalculated = function()
  if not (o6195.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6198.SetStateValue(o6198.GetCalculated())
end, StartCalculate = function()
  o6198["Value"] = o6198.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o6309.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o6198.Value == L0) then
    DelayedFunction(10, o6198, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6198.Value == L0) then
    o6198["Value"] = L0
    if not (L0 ~= 1) then
      o6198.ChangeTo1()
    end
  end
end }
o6199 = { [nil] = {}, GetCalculated = function()
  if not (o6445.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6199.SetStateValue(o6199.GetCalculated())
end, StartCalculate = function()
  o6199["Value"] = o6199.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o6314.Node)
end, SetStateValue = function(L0)
  if not (o6199.Value == L0) then
    DelayedFunction(5, o6199, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6199.Value == L0) then
    o6199["Value"] = L0
    if not (L0 ~= 1) then
      o6199.ChangeTo1()
    end
  end
end }
o6200 = { [nil] = {}, GetCalculated = function()
  if not (o6445.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6200.SetStateValue(o6200.GetCalculated())
end, StartCalculate = function()
  o6200["Value"] = o6200.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 699)
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  Game_PlayMusic(GetGameNode(), "Atmo")
  SED_SetTaskTextKey(2106, -1, -1)
end, SetStateValue = function(L0)
  if not (o6200.Value == L0) then
    DelayedFunction(2, o6200, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6200.Value == L0) then
    o6200["Value"] = L0
    if not (L0 ~= 1) then
      o6200.ChangeTo1()
    end
  end
end }
o6201 = { [nil] = {}, GetCalculated = function()
  if not (o6507.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6201.SetStateValue(o6201.GetCalculated())
end, StartCalculate = function()
  o6201["Value"] = o6201.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 700)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o6201.Value == L0) then
    o6201["Value"] = L0
    if not (L0 ~= 1) then
      o6201.ChangeTo1()
    end
  end
end }
o6202 = { [nil] = {}, GetCalculated = function()
  if not (o5885.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6202.SetStateValue(o6202.GetCalculated())
end, StartCalculate = function()
  o6202["Value"] = o6202.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 701)
end, SetStateValue = function(L0)
  if not (o6202.Value == L0) then
    o6202["Value"] = L0
    if not (L0 ~= 1) then
      o6202.ChangeTo1()
    end
  end
end }
o6203 = { [nil] = {}, GetCalculated = function()
  if not (o6517.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6203.SetStateValue(o6203.GetCalculated())
end, StartCalculate = function()
  o6203["Value"] = o6203.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 702)
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2102)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o6203.Value == L0) then
    o6203["Value"] = L0
    if not (L0 ~= 1) then
      o6203.ChangeTo1()
    end
  end
end }
o6204 = { [nil] = {}, GetCalculated = function()
  if not (o6264.Value == True) then
    if not (o6453.Value == True) then
      if not (o6525.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o6204.SetStateValue(o6204.GetCalculated())
end, StartCalculate = function()
  o6204["Value"] = o6204.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 703)
end, SetStateValue = function(L0)
  if not (o6204.Value == L0) then
    o6204["Value"] = L0
    if not (L0 ~= 1) then
      o6204.ChangeTo1()
    end
  end
end }
o6205 = { [nil] = {}, GetCalculated = function()
  if not (o5891.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6205.SetStateValue(o6205.GetCalculated())
end, StartCalculate = function()
  o6205["Value"] = o6205.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 704)
end, SetStateValue = function(L0)
  if not (o6205.Value == L0) then
    o6205["Value"] = L0
    if not (L0 ~= 1) then
      o6205.ChangeTo1()
    end
  end
end }
o6206 = { [nil] = {}, GetCalculated = function()
  if not (o5897.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6206.SetStateValue(o6206.GetCalculated())
end, StartCalculate = function()
  o6206["Value"] = o6206.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 704)
end, SetStateValue = function(L0)
  if not (o6206.Value == L0) then
    o6206["Value"] = L0
    if not (L0 ~= 1) then
      o6206.ChangeTo1()
    end
  end
end }
o6207 = { [nil] = {}, GetCalculated = function()
  if not (o5903.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6207.SetStateValue(o6207.GetCalculated())
end, StartCalculate = function()
  o6207["Value"] = o6207.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6176.Node, o6176.Node, 704)
end, SetStateValue = function(L0)
  if not (o6207.Value == L0) then
    o6207["Value"] = L0
    if not (L0 ~= 1) then
      o6207.ChangeTo1()
    end
  end
end }
o6208 = { [nil] = {}, GetCalculated = function()
  if not (o6387.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6208.SetStateValue(o6208.GetCalculated())
end, StartCalculate = function()
  o6208["Value"] = o6208.GetCalculated()
  o6221.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6208.Value == L0) then
    o6208["Value"] = L0
    o6221.ReCalculate()
  end
end }
o6209 = { [nil] = {}, GetCalculated = function()
  if not (o6379.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6209.SetStateValue(o6209.GetCalculated())
end, StartCalculate = function()
  o6209["Value"] = o6209.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o6209.Value == L0) then
    o6209["Value"] = L0
    if not (L0 ~= 1) then
      o6209.ChangeTo1()
    end
  end
end }
o6210 = { [nil] = {}, GetCalculated = function()
  if not (o6323.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6210.SetStateValue(o6210.GetCalculated())
end, StartCalculate = function()
  o6210["Value"] = o6210.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o6210.Value == L0) then
    o6210["Value"] = L0
    if not (L0 ~= 1) then
      o6210.ChangeTo1()
    end
  end
end }
o6211 = { [nil] = {}, GetCalculated = function()
  if not (o6312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6211.SetStateValue(o6211.GetCalculated())
end, StartCalculate = function()
  o6211["Value"] = o6211.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o6493.Node)
end, SetStateValue = function(L0)
  if not (o6211.Value == L0) then
    DelayedFunction(5, o6211, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6211.Value == L0) then
    o6211["Value"] = L0
    if not (L0 ~= 1) then
      o6211.ChangeTo1()
    end
  end
end }
o6212 = { [nil] = {}, GetCalculated = function()
  if not (o6191.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6212.SetStateValue(o6212.GetCalculated())
end, StartCalculate = function()
  o6212["Value"] = o6212.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6212.Value == L0) then
    o6212["Value"] = L0
    o2.ReCalculate()
  end
end }
o6220 = { [nil] = {}, GetCalculated = function()
  if not (o5909.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6220.SetStateValue(o6220.GetCalculated())
end, StartCalculate = function()
  o6220["Value"] = o6220.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2103)
end, SetStateValue = function(L0)
  if not (o6220.Value == L0) then
    o6220["Value"] = L0
    if not (L0 ~= 1) then
      o6220.ChangeTo1()
    end
  end
end }
o6221 = { [nil] = {}, GetCalculated = function()
  if not (o6208.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6221.SetStateValue(o6221.GetCalculated())
end, StartCalculate = function()
  o6221["Value"] = o6221.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o6221.Value == L0) then
    o6221["Value"] = L0
    if not (L0 ~= 1) then
      o6221.ChangeTo1()
    end
  end
end }
o6236 = { [nil] = {}, GetCalculated = function()
  if not (o6190.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6236.SetStateValue(o6236.GetCalculated())
end, StartCalculate = function()
  o6236["Value"] = o6236.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6236.Value == L0) then
    o6236["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o6240 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6240, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6240, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6240, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o6176.Node)
  CallFunction(o6240, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5875, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_1", 1, 3 } }, o5874, "/Scenario_Dynamic/Navigation/FightArea_1", 480, "player1", "", "", "", 1, 1, False, "Code5")
  else
    CallFunction(o6240, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5875, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_2", 1, 3 } }, o5874, "/Scenario_Dynamic/Navigation/FightArea_1", 480, "player1", "", "", "", 1, 1, False, "Code6")
  else
    CallFunction(o6240, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5873, nil, 0, "Code7")
  else
    CallFunction(o6240, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o6240, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6240, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_ActivateEscapePod(L0.Node)
  Body_ForceEjection(L0.Node)
  CallFunction(o6240, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Emp = function(L0, L1)
  o6256.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6264.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6244.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6244 = { [nil] = {}, GetCalculated = function()
  if not (o6307.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6244.SetStateValue(o6244.GetCalculated())
end, StartCalculate = function()
  o6244["Value"] = o6244.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6244.Value == L0) then
    o6244["Value"] = L0
    CallFunction(o6240, "ProcesseStateChange")
  end
end }
o6256 = { [nil] = {}, Start = function()
  o6256["Value"] = False
  o6195.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6256.Value == L0) then
    o6256["Value"] = L0
    o6195.ReCalculate()
  end
end }
o6264 = { [nil] = {}, Start = function()
  o6264["Value"] = False
  o6190.StartCalculate()
  o6204.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6264.Value == L0) then
    o6264["Value"] = L0
    o6190.ReCalculate()
    o6204.ReCalculate()
  end
end }
S_o6299 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6299, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6302.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6302 = { [nil] = {}, Start = function()
  o6302["Value"] = False
  o6192.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6302.Value == L0) then
    o6302["Value"] = L0
    o6192.ReCalculate()
  end
end }
S_o6304 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6304, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6307.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6307 = { [nil] = {}, Start = function()
  o6307["Value"] = False
  o6193.StartCalculate()
  o6244.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6307.Value == L0) then
    o6307["Value"] = L0
    o6193.ReCalculate()
    o6244.ReCalculate()
  end
end }
S_o6309 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6309, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6312.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6312 = { [nil] = {}, Start = function()
  o6312["Value"] = False
  o6211.StartCalculate()
  o6434.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6312.Value == L0) then
    o6312["Value"] = L0
    o6211.ReCalculate()
    o6434.ReCalculate()
  end
end }
S_o6314 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o6314, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o6317.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6317 = { [nil] = {}, Start = function()
  o6317["Value"] = False
  o6506.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6317.Value == L0) then
    o6317["Value"] = L0
    o6506.ReCalculate()
  end
end }
S_o6319 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6319, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6319, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6319, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o6319, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o6323.SetStateValue(L1)
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
o6323 = { [nil] = {}, Start = function()
  o6323["Value"] = False
  o6210.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6323.Value == L0) then
    o6323["Value"] = L0
    o6210.ReCalculate()
  end
end }
S_o6374 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6374, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6374, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6374, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o6374, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6374, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6374, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_FriendlyFireMode(L0.Node, 1)
  CallFunction(o6374, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o6379.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6387.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o6376.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6376 = { [nil] = {}, GetCalculated = function()
  if not (o6387.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6376.SetStateValue(o6376.GetCalculated())
end, StartCalculate = function()
  o6376["Value"] = o6376.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6376.Value == L0) then
    o6376["Value"] = L0
    CallFunction(o6374, "ProcesseStateChange")
  end
end }
o6379 = { [nil] = {}, Start = function()
  o6379["Value"] = False
  o6209.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6379.Value == L0) then
    o6379["Value"] = L0
    o6209.ReCalculate()
  end
end }
o6387 = { [nil] = {}, Start = function()
  o6387["Value"] = False
  o6208.StartCalculate()
  o6376.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6387.Value == L0) then
    o6387["Value"] = L0
    o6208.ReCalculate()
    o6376.ReCalculate()
  end
end }
S_o6430 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6430, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6430, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6430, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5876, { {}, "Goto", "/Scenario_Dynamic/Navigation/ToilerPath_1", 1, 3 } }, o5874, "/Scenario_Dynamic/Navigation/FightArea_1", 512, "player1", "", "", "", 1, 1, False, "Code4")
  else
    CallFunction(o6430, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5877, { {}, "Goto", "/Scenario_Dynamic/Navigation/ToilerPath_2", 1, 3 } }, o5874, "/Scenario_Dynamic/Navigation/FightArea_1", 512, "player1", "", "", "", 1, 1, False, "Code5")
  else
    CallFunction(o6430, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5873, nil, 0, "Code6")
  else
    CallFunction(o6430, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o6435.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6437.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6445.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6453.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6434.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6434 = { [nil] = {}, GetCalculated = function()
  if not (o6312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6434.SetStateValue(o6434.GetCalculated())
end, StartCalculate = function()
  o6434["Value"] = o6434.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6434.Value == L0) then
    o6434["Value"] = L0
    CallFunction(o6430, "ProcesseStateChange")
  end
end }
o6435 = { [nil] = {}, Start = function()
  o6435["Value"] = False
  o6197.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6435.Value == L0) then
    o6435["Value"] = L0
    o6197.ReCalculate()
  end
end }
o6437 = { [nil] = {}, Start = function()
  o6437["Value"] = False
  o6190.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6437.Value == L0) then
    o6437["Value"] = L0
    o6190.ReCalculate()
  end
end }
o6445 = { [nil] = {}, Start = function()
  o6445["Value"] = False
  o6199.StartCalculate()
  o6200.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6445.Value == L0) then
    o6445["Value"] = L0
    o6199.ReCalculate()
    o6200.ReCalculate()
  end
end }
o6453 = { [nil] = {}, Start = function()
  o6453["Value"] = False
  o6204.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6453.Value == L0) then
    o6453["Value"] = L0
    o6204.ReCalculate()
  end
end }
S_o6488 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6240.Node)
  CallFunction(o6488, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6493 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6430.Node)
  CallFunction(o6493, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6498 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6503.Node)
  CallFunction(o6498, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6503 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6503, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6503, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6503, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_SetWayPoint(GetGameNode(), o6498.Node)
  SED_SetTaskTextKey(2102, -1, -1)
  CallFunction(o6503, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o5877, { {}, "Goto", "/Scenario_Dynamic/Navigation/MightyPath_1", 1, 5 } }, o5874, "/Scenario_Dynamic/Navigation/FightArea_1", 512, "player1", "", "", "", 1, 1, False, "Code6")
  else
    CallFunction(o6503, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o5873, nil, 0, "Code7")
  else
    CallFunction(o6503, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o6507.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o6509.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o6517.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o6525.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6506.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6506 = { [nil] = {}, GetCalculated = function()
  if not (o6317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6506.SetStateValue(o6506.GetCalculated())
end, StartCalculate = function()
  o6506["Value"] = o6506.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6506.Value == L0) then
    o6506["Value"] = L0
    CallFunction(o6503, "ProcesseStateChange")
  end
end }
o6507 = { [nil] = {}, Start = function()
  o6507["Value"] = False
  o6201.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6507.Value == L0) then
    o6507["Value"] = L0
    o6201.ReCalculate()
  end
end }
o6509 = { [nil] = {}, Start = function()
  o6509["Value"] = False
  o6190.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6509.Value == L0) then
    o6509["Value"] = L0
    o6190.ReCalculate()
  end
end }
o6517 = { [nil] = {}, Start = function()
  o6517["Value"] = False
  o6191.StartCalculate()
  o6203.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6517.Value == L0) then
    o6517["Value"] = L0
    o6191.ReCalculate()
    o6203.ReCalculate()
  end
end }
o6525 = { [nil] = {}, Start = function()
  o6525["Value"] = False
  o6204.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6525.Value == L0) then
    o6525["Value"] = L0
    o6204.ReCalculate()
  end
end }
S_o6560 = { [nil] = {}, Start = function(L0)

end }
o6561 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o6563 = { [nil] = {}, Start = function(L0)

end }
S_o6564 = { [nil] = {}, Start = function(L0)

end }
S_o6565 = { [nil] = {}, Start = function(L0)

end }
S_o6566 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.5)
  CallFunction(o6566, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o6566, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.5, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o6566, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.8, "Code9")
  else
    CallFunction(o6566, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o6176.Node, o6176.Node, 108)
  CallFunction(o6566, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code11")
  else
    CallFunction(o6566, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MBMY", 25)
  CallFunction(o6566, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code13")
  else
    CallFunction(o6566, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Director_EndCutscene(L0.Node)
  CallFunction(o6566, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code15")
  else
    CallFunction(o6566, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o6299.Node)
  CallFunction(o6566, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6573 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o6562, o6561, "/InGameSequences/Navigation/Path_1")
  CallFunction(o6573, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o6562, o6561, "/InGameSequences/Navigation/Path_1", "pos_1", "pos_3", 1, 1, "Code2")
  else
    CallFunction(o6573, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 285)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element07a_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_2", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06_raw_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_2", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_2", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_palace_big_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_add_china_big_1", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_2", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_geb_addon01_3", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_3", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element03a_4", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05_raw_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_1", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element04_1_2", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01a_3", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element06a_1", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_1", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_beacon_2", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_3", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_2", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_1", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_1", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_03", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_1", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_1", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_04", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_02", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_02", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_06", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_05", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o2606)
  o2652 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o2652)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o2698)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o2744)
  o2790 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o2790)
  o2836 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o2836)
  o2882 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o2882)
  o2928 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o2928)
  o2974 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o2974)
  o3020 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o3020)
  o3066 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o3066)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o3112)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o3158)
  o3204 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o3204)
  o3250 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o3250)
  o3296 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_4", S_o3296)
  o3342 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_1", S_o3342)
  o3388 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o3388)
  o3434 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o3434)
  o3480 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o3480)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o3526)
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o3572)
  o3618 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o3618)
  o3664 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o3664)
  o3710 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o3710)
  o3756 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_4", S_o3756)
  o3802 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o3802)
  o3848 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o3848)
  o3894 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_5", S_o3894)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_2", S_o3940)
  o3986 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_2", S_o3986)
  o4032 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_2", S_o4032)
  o4078 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_2", S_o4078)
  o4124 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_3", S_o4124)
  o4170 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_3", S_o4170)
  o4216 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_01_3", S_o4216)
  o4262 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_3", S_o4262)
  o4308 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o4308)
  o4354 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o4354)
  o4400 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6", S_o4400)
  o4446 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o4446)
  o4492 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_5", S_o4492)
  o4538 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_5", S_o4538)
  o4584 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_5", S_o4584)
  o4630 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_4", S_o4630)
  o4676 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_5", S_o4676)
  o4722 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_6", S_o4722)
  o4768 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_7", S_o4768)
  o4814 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_8", S_o4814)
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6", S_o4860)
  o4906 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_4", S_o4906)
  o4952 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_6", S_o4952)
  o4998 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_6", S_o4998)
  o5044 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_5", S_o5044)
  o5090 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o5090)
  o5136 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o5136)
  o5182 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_5", S_o5182)
  o5228 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_6", S_o5228)
  o5274 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_7", S_o5274)
  o5320 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_7", S_o5320)
  o5366 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_7", S_o5366)
  o5412 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_7", S_o5412)
  o5458 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_5", S_o5458)
  o5504 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_6", S_o5504)
  o5550 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_9", S_o5550)
  o5596 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_6", S_o5596)
  o5642 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_6", S_o5642)
  o5688 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_8", S_o5688)
  o5734 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o5734)
  o5780 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_8", S_o5780)
  o5826 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_7", S_o5826)
  o5872 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Position_1", S_o5872)
  o5880 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o5880)
  o5885.Start()
  o5886 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2_1", S_o5886)
  o5891.Start()
  o5892 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2_2", S_o5892)
  o5897.Start()
  o5898 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2_3", S_o5898)
  o5903.Start()
  o5904 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BonusTriggerPresence_1", S_o5904)
  o5909.Start()
  o5910 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "AvengerTriggerPresenceBox_1", S_o5910)
  o5915.Start()
  o5916 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Traffic"), "tz_police_1", S_o5916)
  o5972 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Traffic"), "tz_police_2", S_o5972)
  o6028 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Traffic"), "tz_police_3", S_o6028)
  o6084 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Traffic"), "tz_buggy_1", S_o6084)
  o6131 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Traffic"), "tz_buggy_2", S_o6131)
  o6176 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o6176)
  o6240 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_avenger_narrow_1", S_o6240)
  o6256.Start()
  o6264.Start()
  o6299 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o6299)
  o6302.Start()
  o6304 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o6304)
  o6307.Start()
  o6309 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_2", S_o6309)
  o6312.Start()
  o6314 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_3", S_o6314)
  o6317.Start()
  o6319 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter_2", S_o6319)
  o6323.Start()
  o6374 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter_1", S_o6374)
  o6379.Start()
  o6387.Start()
  o6430 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_toiler_narrow_1", S_o6430)
  o6435.Start()
  o6437.Start()
  o6445.Start()
  o6453.Start()
  o6488 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_1", S_o6488)
  o6493 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_2", S_o6493)
  o6498 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_emp_3", S_o6498)
  o6503 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_mightymaggie_narrow_1", S_o6503)
  o6507.Start()
  o6509.Start()
  o6517.Start()
  o6525.Start()
  o6560 = BindEasy(Node_Find("/"), "Camera", S_o6560)
  o6563 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o6563)
  o6564 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o6564)
  o6565 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o6565)
  o6566 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_1", S_o6566)
  o6573 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_2", S_o6573)
  o5875 = { {}, o6240 }()
  o5876 = { {}, o6430 }()
  o5877 = { {}, o6503 }()
  o5878 = { {}, o5916, o5972, o6028 }()
  o6562 = { {}, o6176 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
