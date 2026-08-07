-- dekompiliert aus 3h5.sco
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
  Terrain_LoadTerrain(node1, "map/3H5/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H5/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3H5/Lmsh/", "map/3H5/Ltex/")
  Game_SetTerrainDepth(node0, 4445)
  Game_SetDecompressionHeight(node0, 300)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.098039, 0.109804, 0.078431)
  Game_SetParallelLightT(node0, 0.2, 0.219608, 0.156863)
  Game_SetParallelLightB(node0, 0.098039, 0.109804, 0.078431)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3h5.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3H5.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_orden.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 3)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/3H5/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_fx_rays", "fx_rays_3H5_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_rays/fx_rays_3H5.osd")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_sky", "fx_sky_3H5_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_sky/fx_sky_3H5.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2460, 1918, 210), MAT_Vector3(30, 0, 0))
  Node_ParseIniFile(node10, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node10, 1)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_flare", "fx_flare_3H5_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_flare/fx_flare_3H5.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_n_1")
  Node_AddSon(node7, node12)
  Node_ParseIniFile(node12, "osd/fx_plankton/fx_plankton_green_n.osd")
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3043.431814, 2061.180732, 119.600797), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2966.471546, 1332.40827, 111.749736), MAT_Vector3(-126.827781, 0.931182, -1.072166))
  Node_ParseIniFile(node14, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1864.49402, 1150.183355, 108.215792), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1622.717349, 428.261187, 84.794241), MAT_Vector3(-13.310458, -75.615511, 73.91991))
  Node_ParseIniFile(node16, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2227.51399, 1716.655605, 38.957013), MAT_Vector3(-27.201255, -9.38088, 3.008033))
  Node_ParseIniFile(node17, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2900.734472, 1400.496476, 93.171636), MAT_Vector3(-27.20126, -9.38088, 3.008033))
  Node_ParseIniFile(node18, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(2456.679077, 1336.87615, 41.803264), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1x")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2855.245914, 1452.458688, 96.052968), MAT_Vector3(-24.014363, 15.440954, -8.454256))
  Node_ParseIniFile(node20, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1986.912437, 999.196853, 67.419525), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2037.737861, 1040.788327, 64.573274), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2d")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2814.33257, 1426.868761, 92.054972), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2446.405112, 1551.913159, 43.700765), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2439.030209, 1374.169313, 50.816393), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2d")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2829.327019, 1385.1021, 111.541196), MAT_Vector3(6.812971, -3.419861, 3.30404))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node27)
  Node_ParseIniFile(node27, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node27, "map/3H5/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node28)
  Node_ParseIniFile(node28, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node28, "map/3H5/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node29)
  Node_ParseIniFile(node29, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node29, "map/3H5/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node30)
  Node_ParseIniFile(node30, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node30, "map/3H5/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node31)
  Node_ParseIniFile(node31, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node31, "map/3H5/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1921.513271, 750.839623, 87.117961), MAT_Vector3(42.530306, 4.408047, -39.425964))
  Node_ParseIniFile(node32, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1963.718482, 736.113508, 87.577172), MAT_Vector3(-41.899336, -39.233832, 35.182194))
  Node_ParseIniFile(node33, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2359.419074, 2387.02471, 31.418089), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2a")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1966.828071, 986.1597, 70.503746), MAT_Vector3(9.641133, -10.01571, 20.895555))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2b")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2599.819873, 2195.298465, 68.816048), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2c")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2172.089257, 1040.335485, 31.508937), MAT_Vector3(-72.229296, -22.046055, 11.101315))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2345.896819, 2408.608717, 32.161911), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2341.153707, 2350.384988, 27.698983), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2b")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2630.720334, 2174.509957, 68.609148), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2c")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2220.31414, 873.840254, 63.30484), MAT_Vector3(-11.015704, -9.630087, 7.012734))
  Node_ParseIniFile(node41, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2632.460654, 2214.008772, 69.352973), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2224.327728, 925.785888, 32.791935), MAT_Vector3(-12.513471, -11.107419, 7.871966))
  Node_ParseIniFile(node43, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2317.381361, 2393.309611, 26.769207), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1986.771804, 2037.296398, 46.788892), MAT_Vector3(-41.748757, -24.084428, 30.843376))
  Node_ParseIniFile(node45, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2062.398835, 2029.745146, 37.104938), MAT_Vector3(25.703471, -9.383799, -20.797892))
  Node_ParseIniFile(node46, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2013.255958, 1935.643872, 86.971179), MAT_Vector3(28.421484, 18.879685, -11.499118))
  Node_ParseIniFile(node47, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2042.193212, 1921.090202, 96.098953), MAT_Vector3(145.260741, -62.014099, -62.957303))
  Node_ParseIniFile(node48, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2028.388234, 1995.76824, 54.268548), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2090.12219, 2039.367005, 62.176835), MAT_Vector3(-139.801715, -72.858376, 11.747508))
  Node_ParseIniFile(node50, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_rock_m_01_5")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2023.418426, 2046.725859, 75.190708), MAT_Vector3(-73.663847, -43.907033, 43.48977))
  Node_ParseIniFile(node51, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2077.8132, 2052.421668, 69.711024), MAT_Vector3(-72.88537, -51.087203, 26.752504))
  Node_ParseIniFile(node52, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2030.927819, 1889.316872, 93.478169), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_rock_s_01_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1994.93857, 1999.36878, 76.567264), MAT_Vector3(-22.225647, -21.241665, -1.546584))
  Node_ParseIniFile(node54, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_rock_s_01_5")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2143.775336, 2012.037037, 42.806359), MAT_Vector3(-17.46615, -0.05822, 17.426991))
  Node_ParseIniFile(node55, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_rock_s_01_6")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1971.947658, 2026.859497, 82.964491), MAT_Vector3(-70.498643, -43.995825, -30.995556))
  Node_ParseIniFile(node56, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node57)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node57, node58)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node57, node59)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_PatrolArea", "Harvester_FightingArea")
  Node_AddSon(node59, node60)
  PatrolArea_SetPosition(node60, MAT_Vector3(2450.961741, 1927.017472, 265))
  PatrolArea_SetRadius(node60, 1000)
  PatrolArea_SetMinZ(node60, -280)
  PatrolArea_SetMaxZ(node60, 40)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Path", "Bomb1Path_1")
  Node_AddSon(node59, node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node61, node62)
  Position_SetPosition(node62, MAT_Vector3(2110.807835, 603.193919, 220))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node61, node63)
  Position_SetPosition(node63, MAT_Vector3(2109.983907, 740.786319, 220))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node61, node64)
  Position_SetPosition(node64, MAT_Vector3(2109.984, 1352.819073, 220))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node61, node65)
  Position_SetPosition(node65, MAT_Vector3(2106.506541, 2020.491116, 220))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node61, node66)
  Position_SetPosition(node66, MAT_Vector3(2318.26833, 2093.324486, 220))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_PatrolArea", "Overall_FightingArea")
  Node_AddSon(node59, node67)
  PatrolArea_SetPosition(node67, MAT_Vector3(2000, 2000, 265))
  PatrolArea_SetRadius(node67, 2500)
  PatrolArea_SetMinZ(node67, -280)
  PatrolArea_SetMaxZ(node67, 40)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Path", "Bomb1Path_2")
  Node_AddSon(node59, node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node68, node69)
  Position_SetPosition(node69, MAT_Vector3(2325.775945, 1603.556541, 220))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node68, node70)
  Position_SetPosition(node70, MAT_Vector3(2465.442806, 1874.869158, 220))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Path", "Bomb2Path_1")
  Node_AddSon(node59, node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node71, node72)
  Position_SetPosition(node72, MAT_Vector3(2233.443401, 2299.836583, 250))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node71, node73)
  Position_SetPosition(node73, MAT_Vector3(2315.154209, 2166.982906, 200))
  Position_SetRadius(node73, 15)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Path", "Bomb3Path_1")
  Node_AddSon(node59, node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node74, node75)
  Position_SetPosition(node75, MAT_Vector3(2005.161159, 2672.556144, 119.184498))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node74, node76)
  Position_SetPosition(node76, MAT_Vector3(2278.083398, 2227.824576, 58.947))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node74, node77)
  Position_SetPosition(node77, MAT_Vector3(2315.131968, 2167.028682, 200))
  Position_SetRadius(node77, 15)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Path", "Bomb4Path_1")
  Node_AddSon(node59, node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node78, node79)
  Position_SetPosition(node79, MAT_Vector3(2962.275412, 1073.637215, 180))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node78, node80)
  Position_SetPosition(node80, MAT_Vector3(2667.224807, 1652.266777, 132.04767))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node78, node81)
  Position_SetPosition(node81, MAT_Vector3(2647.034578, 1682.079225, 175))
  Position_SetRadius(node81, 15)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Path", "Bomb5Path_1")
  Node_AddSon(node59, node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node82, node83)
  Position_SetPosition(node83, MAT_Vector3(2950.141209, 1066.918013, 180))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node82, node84)
  Position_SetPosition(node84, MAT_Vector3(2581.489909, 1603.137768, 166.799955))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node82, node85)
  Position_SetPosition(node85, MAT_Vector3(2564.599082, 1635.389358, 175))
  Position_SetRadius(node85, 15)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node57, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node57, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Trigger", "Bomb1_BOOMER")
  Node_AddSon(node87, node88)
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetPosition(node88, MAT_Vector3(2461.188823, 1874.382298, 220))
  Trigger_SetPresenceSphere(node88, 30)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Trigger", "Bomb1_BOOMER_dau")
  Node_AddSon(node87, node89)
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetPosition(node89, MAT_Vector3(2302.078868, 2084.271962, 220))
  Trigger_SetPresenceSphere(node89, 30)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node57, node90)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node90, node91)
  Body_SetCS(node91, MAT_Vector3(2486.56615, 1776.250014, 185), MAT_Vector3(78.739618, 0, 0))
  Node_ParseIniFile(node91, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "mer_hammlet_1")
  Node_AddSon(node90, node92)
  Body_SetCS(node92, MAT_Vector3(2328.036096, 1559.922116, 195.444712), MAT_Vector3(-11.820724, 0, 0))
  Node_ParseIniFile(node92, "osd/mer/mer_hammlet_wide.osd")
  Body_SetFriendOrFoeID(node92, 2)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "mer_scout_weak_1")
  Node_AddSon(node90, node93)
  Body_SetCS(node93, MAT_Vector3(2363.163172, 1554.561814, 190.134028), MAT_Vector3(-25.586846, 0, 0))
  Node_ParseIniFile(node93, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node93, 2)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "mer_scout_weak_2")
  Node_AddSon(node90, node94)
  Body_SetCS(node94, MAT_Vector3(2279.487722, 1587.561728, 189.317), MAT_Vector3(-28.780883, 0, 0))
  Node_ParseIniFile(node94, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node94, 2)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vessel", "mer_bomb_1")
  Node_AddSon(node90, node95)
  Body_SetCS(node95, MAT_Vector3(2109.804331, 573.941791, 220), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node95, 3)
  Body_SetNameKey(node95, 210)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node90, node96)
  Body_SetPosition(node96, MAT_Vector3(2110.190657, 575.618881, 212.478548))
  WayPoint_SetRadius(node96, 100)
  Node_ParseIniFile(node96, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_vessel", "mer_scout_weak_3")
  Node_AddSon(node90, node97)
  Body_SetCS(node97, MAT_Vector3(1957.768369, 467.713084, 190.134), MAT_Vector3(0.538453, 0, 0))
  Node_ParseIniFile(node97, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node97, 2)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "mer_scout_weak_4")
  Node_AddSon(node90, node98)
  Body_SetCS(node98, MAT_Vector3(2241.196135, 481.087517, 189.317), MAT_Vector3(0.260178, 0, 0))
  Node_ParseIniFile(node98, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node98, 2)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "mer_bomb_2")
  Node_AddSon(node90, node99)
  Body_SetCS(node99, MAT_Vector3(2208.556204, 2337.901335, 261.790547), MAT_Vector3(-152.885887, -11.536356, -5.083004))
  Node_ParseIniFile(node99, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node99, 3)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "mer_bomb_3")
  Node_AddSon(node90, node100)
  Body_SetCS(node100, MAT_Vector3(1992.285501, 2690.640119, 120.419848), MAT_Vector3(-146.937692, 0, 0))
  Node_ParseIniFile(node100, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node100, 3)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "mer_bomb_4")
  Node_AddSon(node90, node101)
  Body_SetCS(node101, MAT_Vector3(2959.13787, 1052.438966, 180), MAT_Vector3(36.35671, 0, 0))
  Node_ParseIniFile(node101, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node101, 3)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "mer_bomb_5")
  Node_AddSon(node90, node102)
  Body_SetCS(node102, MAT_Vector3(2970.578076, 1060.474259, 180), MAT_Vector3(37.49144, 0, 0))
  Node_ParseIniFile(node102, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node102, 3)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node90, node103)
  Body_SetPosition(node103, MAT_Vector3(2179.681366, 2387.258324, 147.935626))
  WayPoint_SetRadius(node103, 5)
  Node_ParseIniFile(node103, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_waypoint", "nav_waypoint_3")
  Node_AddSon(node90, node104)
  Body_SetPosition(node104, MAT_Vector3(2959.1737, 1065.780623, 190.920924))
  WayPoint_SetRadius(node104, 5)
  Node_ParseIniFile(node104, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node105)
  Camera_SetBackPlane(node105, 2048)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node106)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node106, node107)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node106, node108)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Path", "ScoutPath_1")
  Node_AddSon(node108, node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node109, node110)
  Position_SetPosition(node110, MAT_Vector3(2407.870109, 1484.098997, 190))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node109, node111)
  Position_SetPosition(node111, MAT_Vector3(2484.099757, 1662.651362, 190))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Path", "ScoutPath_2")
  Node_AddSon(node108, node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node112, node113)
  Position_SetPosition(node113, MAT_Vector3(2365.283197, 1464.120676, 190))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node112, node114)
  Position_SetPosition(node114, MAT_Vector3(2468.445778, 1680.776941, 190))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Path", "ScoutPath_3")
  Node_AddSon(node108, node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node115, node116)
  Position_SetPosition(node116, MAT_Vector3(2429.756897, 1447.256167, 195))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node115, node117)
  Position_SetPosition(node117, MAT_Vector3(2497.282853, 1635.461615, 195))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node108, node118)
  Position_SetPosition(node118, MAT_Vector3(2417.149977, 1813.427462, 193.778341))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node108, node119)
  Position_SetPosition(node119, MAT_Vector3(2445.449376, 1571.792877, 189.962492))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node108, node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node120, node121)
  Position_SetPosition(node121, MAT_Vector3(2507.400126, 1769.289569, 185))
  Position_SetRadius(node121, 10)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node120, node122)
  Position_SetPosition(node122, MAT_Vector3(2310.350193, 1840.759563, 168.493234))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node106, node123)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node123, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Director", "IntroAddOn")
  Node_AddSon(node123, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Director", "IntroAudio")
  Node_AddSon(node123, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node106, node127)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node106, node128)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "mer_scout_emptorpedo_1")
  Node_AddSon(node128, node129)
  Body_SetCS(node129, MAT_Vector3(2387.962956, 1446.726018, 190), MAT_Vector3(-31.359342, 0, 0))
  Node_ParseIniFile(node129, "osd/mer/mer_scout_emptorpedo.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_1")
  Node_AddSon(node128, node130)
  Body_SetCS(node130, MAT_Vector3(2487.106295, 1671.846664, 190), MAT_Vector3(159.260667, 0, 0))
  Node_ParseIniFile(node130, "osd/dir/dir_cammesh_emitter.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "mer_scout_emptorpedo_2")
  Node_AddSon(node128, node131)
  Body_SetCS(node131, MAT_Vector3(2353.819832, 1444.611659, 190), MAT_Vector3(-31.35934, 0, 0))
  Node_ParseIniFile(node131, "osd/mer/mer_scout_emptorpedo.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_2")
  Node_AddSon(node128, node132)
  Body_SetCS(node132, MAT_Vector3(2473.286065, 1692.919475, 190), MAT_Vector3(149.325542, 0, 0))
  Node_ParseIniFile(node132, "osd/dir/dir_cammesh_emitter.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "mer_hammlet_emptorpedo_1")
  Node_AddSon(node128, node133)
  Body_SetCS(node133, MAT_Vector3(2423.513022, 1424.454859, 195.313263), MAT_Vector3(-16.611906, 0, 0))
  Node_ParseIniFile(node133, "osd/mer/mer_hammlet_emptorpedo.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_3")
  Node_AddSon(node128, node134)
  Body_SetCS(node134, MAT_Vector3(2501.237635, 1644.891909, 195), MAT_Vector3(155.701922, 0, 0))
  Node_ParseIniFile(node134, "osd/dir/dir_cammesh_emitter.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, U)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, U)
SetEnemyMatrixElement(8, 0, U)
SetEnemyMatrixElement(9, 0, U)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, U)
SetEnemyMatrixElement(6, 1, N)
SetEnemyMatrixElement(7, 1, U)
SetEnemyMatrixElement(8, 1, U)
SetEnemyMatrixElement(9, 1, U)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, U)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, U)
SetEnemyMatrixElement(8, 2, U)
SetEnemyMatrixElement(9, 2, U)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, U)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, U)
SetEnemyMatrixElement(8, 3, U)
SetEnemyMatrixElement(9, 3, U)
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
SetEnemyMatrixElement(5, 4, U)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, U)
SetEnemyMatrixElement(8, 4, U)
SetEnemyMatrixElement(9, 4, U)
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
SetEnemyMatrixElement(5, 5, U)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, U)
SetEnemyMatrixElement(8, 5, U)
SetEnemyMatrixElement(9, 5, U)
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
SetEnemyMatrixElement(7, 6, U)
SetEnemyMatrixElement(8, 6, U)
SetEnemyMatrixElement(9, 6, U)
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
SetEnemyMatrixElement(7, 7, U)
SetEnemyMatrixElement(8, 7, U)
SetEnemyMatrixElement(9, 7, U)
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
SetEnemyMatrixElement(7, 8, U)
SetEnemyMatrixElement(8, 8, U)
SetEnemyMatrixElement(9, 8, U)
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
SetEnemyMatrixElement(7, 9, U)
SetEnemyMatrixElement(8, 9, U)
SetEnemyMatrixElement(9, 9, U)
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
                                                                                  if not (o1922.Value ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
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
                                                                                  if not (o1946.Value == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o30, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o30, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  Body_SetKineticShield(L0.Node, 0, 0.811535)
  Body_SetEmpShield(L0.Node, 0.1)
  CallFunction(o30, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o30, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o34.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o35.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o36.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o37.SetStateValue(L1)
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
o34 = { [nil] = {}, Start = function()
  o34["Value"] = False
  o1909.StartCalculate()
  o1921.StartCalculate()
end, SetStateValue = function(L0)
  if not (o34.Value == L0) then
    o34["Value"] = L0
    o1909.ReCalculate()
    o1921.ReCalculate()
  end
end }
o35 = { [nil] = {}, Start = function()
  o35["Value"] = False
  o1906.StartCalculate()
end, SetStateValue = function(L0)
  if not (o35.Value == L0) then
    o35["Value"] = L0
    o1906.ReCalculate()
  end
end }
o36 = { [nil] = {}, Start = function()
  o36["Value"] = False
  o1907.StartCalculate()
end, SetStateValue = function(L0)
  if not (o36.Value == L0) then
    o36["Value"] = L0
    o1907.ReCalculate()
  end
end }
o37 = { [nil] = {}, Start = function()
  o37["Value"] = False
  o1908.StartCalculate()
end, SetStateValue = function(L0)
  if not (o37.Value == L0) then
    o37["Value"] = L0
    o1908.ReCalculate()
  end
end }
S_o78 = { [nil] = {}, Start = function(L0)

end }
S_o124 = { [nil] = {}, Start = function(L0)

end }
S_o170 = { [nil] = {}, Start = function(L0)

end }
S_o216 = { [nil] = {}, Start = function(L0)

end }
S_o262 = { [nil] = {}, Start = function(L0)

end }
S_o308 = { [nil] = {}, Start = function(L0)

end }
S_o354 = { [nil] = {}, Start = function(L0)

end }
S_o400 = { [nil] = {}, Start = function(L0)

end }
S_o446 = { [nil] = {}, Start = function(L0)

end }
S_o492 = { [nil] = {}, Start = function(L0)

end }
S_o538 = { [nil] = {}, Start = function(L0)

end }
S_o584 = { [nil] = {}, Start = function(L0)

end }
S_o630 = { [nil] = {}, Start = function(L0)

end }
S_o676 = { [nil] = {}, Start = function(L0)

end }
S_o722 = { [nil] = {}, Start = function(L0)

end }
S_o768 = { [nil] = {}, Start = function(L0)

end }
S_o814 = { [nil] = {}, Start = function(L0)

end }
S_o860 = { [nil] = {}, Start = function(L0)

end }
S_o906 = { [nil] = {}, Start = function(L0)

end }
S_o952 = { [nil] = {}, Start = function(L0)

end }
S_o998 = { [nil] = {}, Start = function(L0)

end }
S_o1044 = { [nil] = {}, Start = function(L0)

end }
S_o1090 = { [nil] = {}, Start = function(L0)

end }
S_o1136 = { [nil] = {}, Start = function(L0)

end }
S_o1182 = { [nil] = {}, Start = function(L0)

end }
S_o1228 = { [nil] = {}, Start = function(L0)

end }
S_o1274 = { [nil] = {}, Start = function(L0)

end }
S_o1320 = { [nil] = {}, Start = function(L0)

end }
S_o1366 = { [nil] = {}, Start = function(L0)

end }
S_o1412 = { [nil] = {}, Start = function(L0)

end }
S_o1458 = { [nil] = {}, Start = function(L0)

end }
S_o1504 = { [nil] = {}, Start = function(L0)

end }
S_o1550 = { [nil] = {}, Start = function(L0)

end }
S_o1596 = { [nil] = {}, Start = function(L0)

end }
S_o1642 = { [nil] = {}, Start = function(L0)

end }
S_o1688 = { [nil] = {}, Start = function(L0)

end }
S_o1734 = { [nil] = {}, Start = function(L0)

end }
S_o1780 = { [nil] = {}, Start = function(L0)

end }
S_o1826 = { [nil] = {}, Start = function(L0)

end }
S_o1872 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1872, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1872, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1872, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mer_bomb_1", "", "", "", False, False, True)
  CallFunction(o1872, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1872, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1872, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1877.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1873.Value ~= True) then
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
o1873 = { [nil] = {}, GetCalculated = function()
  if not (o1914.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1873.SetStateValue(o1873.GetCalculated())
end, StartCalculate = function()
  o1873["Value"] = o1873.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1873.Value == L0) then
    o1873["Value"] = L0
    CallFunction(o1872, "ProcesseStateChange")
  end
end }
o1877 = { [nil] = {}, Start = function()
  o1877["Value"] = False
  o1915.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1877.Value == L0) then
    o1877["Value"] = L0
    o1915.ReCalculate()
  end
end }
S_o1878 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1878, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1878, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1878, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mer_bomb_1", "", "", "", False, False, True)
  CallFunction(o1878, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1878, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1878, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1883.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1879.Value ~= True) then
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
o1879 = { [nil] = {}, GetCalculated = function()
  if not (o1914.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1879.SetStateValue(o1879.GetCalculated())
end, StartCalculate = function()
  o1879["Value"] = o1879.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1879.Value == L0) then
    o1879["Value"] = L0
    CallFunction(o1878, "ProcesseStateChange")
  end
end }
o1883 = { [nil] = {}, Start = function()
  o1883["Value"] = False
  o1910.StartCalculate()
  o1915.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1883.Value == L0) then
    o1883["Value"] = L0
    o1910.ReCalculate()
    o1915.ReCalculate()
  end
end }
S_o1884 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_tigershark", 4)
  Body_AddItem(L0.Node, "gun_nailgun", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  Body_AddItem(L0.Node, "device_repair1", 1)
  CallFunction(o1884, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
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
o1898 = { [nil] = {}, GetCalculated = function()
  if not (o1965.Value ~= True) then
    if not (o2021.Value ~= True) then
      if not (o2077.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1898.SetStateValue(o1898.GetCalculated())
end, StartCalculate = function()
  o1898["Value"] = o1898.GetCalculated()
  o2121.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
  SendRadioMessageTake(o30.Node, o1884.Node, 280)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1898.Value == L0) then
    DelayedFunction(2, o1898, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1898.Value == L0) then
    o1898["Value"] = L0
    o2121.ReCalculate()
    if not (L0 ~= 1) then
      o1898.ChangeTo1()
    end
  end
end }
o1899 = { [nil] = {}, GetCalculated = function()
  if not (o1965.Value ~= True) then
    if not (o2021.Value ~= False) then
      if not (o2077.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1899.SetStateValue(o1899.GetCalculated())
end, StartCalculate = function()
  o1899["Value"] = o1899.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2101)
  SendRadioMessageTake(o30.Node, o1884.Node, 281)
end, SetStateValue = function(L0)
  if not (o1899.Value == L0) then
    o1899["Value"] = L0
    if not (L0 ~= 1) then
      o1899.ChangeTo1()
    end
  end
end }
o1900 = { [nil] = {}, GetCalculated = function()
  if not (o2021.Value ~= True) then
    if not (o2077.Value ~= True) then
      if not (o1955.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1900.SetStateValue(o1900.GetCalculated())
end, StartCalculate = function()
  o1900["Value"] = o1900.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o1900.Value == L0) then
    o1900["Value"] = L0
    if not (L0 ~= 1) then
      o1900.ChangeTo1()
    end
  end
end }
o1901 = { [nil] = {}, GetCalculated = function()
  if not (o2762.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1901.SetStateValue(o1901.GetCalculated())
end, StartCalculate = function()
  o1901["Value"] = o1901.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1950.Node, o1884.Node, 270)
end, SetStateValue = function(L0)
  if not (o1901.Value == L0) then
    DelayedFunction(18, o1901, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1901.Value == L0) then
    o1901["Value"] = L0
    if not (L0 ~= 1) then
      o1901.ChangeTo1()
    end
  end
end }
o1902 = { [nil] = {}, GetCalculated = function()
  if not (o2762.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1902.SetStateValue(o1902.GetCalculated())
end, StartCalculate = function()
  o1902["Value"] = o1902.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1950.Node, o1884.Node, 271)
  SendRadioMessageTake(o1950.Node, o1884.Node, 272)
end, SetStateValue = function(L0)
  if not (o1902.Value == L0) then
    DelayedFunction(28, o1902, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1902.Value == L0) then
    o1902["Value"] = L0
    if not (L0 ~= 1) then
      o1902.ChangeTo1()
    end
  end
end }
o1903 = { [nil] = {}, GetCalculated = function()
  if not (o1960.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1903.SetStateValue(o1903.GetCalculated())
end, StartCalculate = function()
  o1903["Value"] = o1903.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1950.Node, o1884.Node, 273)
end, SetStateValue = function(L0)
  if not (o1903.Value == L0) then
    o1903["Value"] = L0
    if not (L0 ~= 1) then
      o1903.ChangeTo1()
    end
  end
end }
o1904 = { [nil] = {}, GetCalculated = function()
  if not (o1961.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1904.SetStateValue(o1904.GetCalculated())
end, StartCalculate = function()
  o1904["Value"] = o1904.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1950.Node, o1884.Node, 274)
end, SetStateValue = function(L0)
  if not (o1904.Value == L0) then
    o1904["Value"] = L0
    if not (L0 ~= 1) then
      o1904.ChangeTo1()
    end
  end
end }
o1905 = { [nil] = {}, GetCalculated = function()
  if not (o1962.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1905.SetStateValue(o1905.GetCalculated())
end, StartCalculate = function()
  o1905["Value"] = o1905.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1950.Node, o1884.Node, 275)
end, SetStateValue = function(L0)
  if not (o1905.Value == L0) then
    o1905["Value"] = L0
    if not (L0 ~= 1) then
      o1905.ChangeTo1()
    end
  end
end }
o1906 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    if not (o1921.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1906.SetStateValue(o1906.GetCalculated())
end, StartCalculate = function()
  o1906["Value"] = o1906.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 276)
end, SetStateValue = function(L0)
  if not (o1906.Value == L0) then
    o1906["Value"] = L0
    if not (L0 ~= 1) then
      o1906.ChangeTo1()
    end
  end
end }
o1907 = { [nil] = {}, GetCalculated = function()
  if not (o36.Value ~= True) then
    if not (o1921.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1907.SetStateValue(o1907.GetCalculated())
end, StartCalculate = function()
  o1907["Value"] = o1907.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 277)
end, SetStateValue = function(L0)
  if not (o1907.Value == L0) then
    o1907["Value"] = L0
    if not (L0 ~= 1) then
      o1907.ChangeTo1()
    end
  end
end }
o1908 = { [nil] = {}, GetCalculated = function()
  if not (o37.Value ~= True) then
    if not (o1921.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1908.SetStateValue(o1908.GetCalculated())
end, StartCalculate = function()
  o1908["Value"] = o1908.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 278)
end, SetStateValue = function(L0)
  if not (o1908.Value == L0) then
    o1908["Value"] = L0
    if not (L0 ~= 1) then
      o1908.ChangeTo1()
    end
  end
end }
o1909 = { [nil] = {}, GetCalculated = function()
  if not (o34.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1909.SetStateValue(o1909.GetCalculated())
end, StartCalculate = function()
  o1909["Value"] = o1909.GetCalculated()
  o1946.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 279)
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
end, SetStateValue = function(L0)
  if not (o1909.Value == L0) then
    o1909["Value"] = L0
    o1946.ReCalculate()
    if not (L0 ~= 1) then
      o1909.ChangeTo1()
    end
  end
end }
o1910 = { [nil] = {}, GetCalculated = function()
  if not (o1883.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1910.SetStateValue(o1910.GetCalculated())
end, StartCalculate = function()
  o1910["Value"] = o1910.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o30, "Code7")
end, SetStateValue = function(L0)
  if not (o1910.Value == L0) then
    o1910["Value"] = L0
    if not (L0 ~= 1) then
      o1910.ChangeTo1()
    end
  end
end }
o1911 = { [nil] = {}, GetCalculated = function()
  if not (o2124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1911.SetStateValue(o1911.GetCalculated())
end, StartCalculate = function()
  o1911["Value"] = o1911.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2102, -1, -1)
  Game_SetWayPoint(GetGameNode(), o2176.Node)
  SendRadioMessageTake(o30.Node, o1884.Node, 655)
end, SetStateValue = function(L0)
  if not (o1911.Value == L0) then
    DelayedFunction(5, o1911, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1911.Value == L0) then
    o1911["Value"] = L0
    if not (L0 ~= 1) then
      o1911.ChangeTo1()
    end
  end
end }
o1912 = { [nil] = {}, GetCalculated = function()
  if not (o2179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1912.SetStateValue(o1912.GetCalculated())
end, StartCalculate = function()
  o1912["Value"] = o1912.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 660)
end, SetStateValue = function(L0)
  if not (o1912.Value == L0) then
    DelayedFunction(1, o1912, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1912.Value == L0) then
    o1912["Value"] = L0
    if not (L0 ~= 1) then
      o1912.ChangeTo1()
    end
  end
end }
o1913 = { [nil] = {}, GetCalculated = function()
  if not (o2179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1913.SetStateValue(o1913.GetCalculated())
end, StartCalculate = function()
  o1913["Value"] = o1913.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o1913.Value == L0) then
    DelayedFunction(22, o1913, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1913.Value == L0) then
    o1913["Value"] = L0
    if not (L0 ~= 1) then
      o1913.ChangeTo1()
    end
  end
end }
o1914 = { [nil] = {}, GetCalculated = function()
  if not (o2179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1914.SetStateValue(o1914.GetCalculated())
end, StartCalculate = function()
  o1914["Value"] = o1914.GetCalculated()
  o1873.StartCalculate()
  o1879.StartCalculate()
  o2119.StartCalculate()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), o2176.Node)
  SendRadioMessageTake(o30.Node, o1884.Node, 656)
  SetEnemyMatrixElement(0, 3, E)
  SetEnemyMatrixElement(3, 0, E)
end, SetStateValue = function(L0)
  if not (o1914.Value == L0) then
    DelayedFunction(26, o1914, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1914.Value == L0) then
    o1914["Value"] = L0
    o1873.ReCalculate()
    o1879.ReCalculate()
    o2119.ReCalculate()
    if not (L0 ~= 1) then
      o1914.ChangeTo1()
    end
  end
end }
o1915 = { [nil] = {}, GetCalculated = function()
  if not (o1877.Value == True) then
    if not (o1883.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1915.SetStateValue(o1915.GetCalculated())
end, StartCalculate = function()
  o1915["Value"] = o1915.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o2118, "Code10")
end, SetStateValue = function(L0)
  if not (o1915.Value == L0) then
    o1915["Value"] = L0
    if not (L0 ~= 1) then
      o1915.ChangeTo1()
    end
  end
end }
o1916 = { [nil] = {}, GetCalculated = function()
  if not (o2353.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1916.SetStateValue(o1916.GetCalculated())
end, StartCalculate = function()
  o1916["Value"] = o1916.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 657)
  Game_PlayMusic(GetGameNode(), "Track4")
  Game_SetWayPoint(GetGameNode(), o2517.Node)
end, SetStateValue = function(L0)
  if not (o1916.Value == L0) then
    DelayedFunction(1, o1916, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1916.Value == L0) then
    o1916["Value"] = L0
    if not (L0 ~= 1) then
      o1916.ChangeTo1()
    end
  end
end }
o1917 = { [nil] = {}, Start = function()
  o1917["Value"] = False
  o1918.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1917.Value == L0) then
    o1917["Value"] = L0
    o1918.ReCalculate()
  end
end }
o1918 = { [nil] = {}, GetCalculated = function()
  if not (o1917.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1918.SetStateValue(o1918.GetCalculated())
end, StartCalculate = function()
  o1918["Value"] = o1918.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 658)
  SED_SetTaskTextKey(2104, -1, -1)
end, SetStateValue = function(L0)
  if not (o1918.Value == L0) then
    DelayedFunction(3, o1918, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1918.Value == L0) then
    o1918["Value"] = L0
    if not (L0 ~= 1) then
      o1918.ChangeTo1()
    end
  end
end }
o1919 = { [nil] = {}, GetCalculated = function()
  if not (o2465.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1919.SetStateValue(o1919.GetCalculated())
end, StartCalculate = function()
  o1919["Value"] = o1919.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1884.Node, 677)
  Game_SetWayPoint(GetGameNode(), o2522.Node)
end, SetStateValue = function(L0)
  if not (o1919.Value == L0) then
    o1919["Value"] = L0
    if not (L0 ~= 1) then
      o1919.ChangeTo1()
    end
  end
end }
o1920 = { [nil] = {}, GetCalculated = function()
  if not (o2135.Value ~= True) then
    if not (o2308.Value ~= True) then
      if not (o2364.Value ~= True) then
        if not (o2420.Value ~= True) then
          if not (o2476.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o1920.SetStateValue(o1920.GetCalculated())
end, StartCalculate = function()
  o1920["Value"] = o1920.GetCalculated()
  o1921.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1920.Value == L0) then
    o1920["Value"] = L0
    o1921.ReCalculate()
  end
end }
o1921 = { [nil] = {}, GetCalculated = function()
  if not (o1920.Value ~= True) then
    if not (o34.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1921.SetStateValue(o1921.GetCalculated())
end, StartCalculate = function()
  o1921["Value"] = o1921.GetCalculated()
  o1906.StartCalculate()
  o1907.StartCalculate()
  o1908.StartCalculate()
  o1922.StartCalculate()
  o2182.StartCalculate()
  o2238.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2104)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SendRadioMessageTake(o30.Node, o1884.Node, 659)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1921.Value == L0) then
    o1921["Value"] = L0
    o1906.ReCalculate()
    o1907.ReCalculate()
    o1908.ReCalculate()
    o1922.ReCalculate()
    o2182.ReCalculate()
    o2238.ReCalculate()
    if not (L0 ~= 1) then
      o1921.ChangeTo1()
    end
  end
end }
o1922 = { [nil] = {}, GetCalculated = function()
  if not (o1921.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1922.SetStateValue(o1922.GetCalculated())
end, StartCalculate = function()
  o1922["Value"] = o1922.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1922.Value == L0) then
    o1922["Value"] = L0
    o2.ReCalculate()
  end
end }
o1946 = { [nil] = {}, GetCalculated = function()
  if not (o1909.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1946.SetStateValue(o1946.GetCalculated())
end, StartCalculate = function()
  o1946["Value"] = o1946.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1946.Value == L0) then
    o1946["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1950 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1950, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1950, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1950, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Harvester_FightingArea", "/Scenario_Dynamic/Navigation/Harvester_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "player1", "pla_harvester_1", "", "", 0.5, "Code4")
  else
    CallFunction(o1950, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1955.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o1960.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o1961.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o1962.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1965.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1952.Value ~= True) then
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
o1952 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1952.SetStateValue(o1952.GetCalculated())
end, StartCalculate = function()
  o1952["Value"] = o1952.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1952.Value == L0) then
    o1952["Value"] = L0
    CallFunction(o1950, "ProcesseStateChange")
  end
end }
o1955 = { [nil] = {}, Start = function()
  o1955["Value"] = False
  o1900.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1955.Value == L0) then
    o1955["Value"] = L0
    o1900.ReCalculate()
  end
end }
o1960 = { [nil] = {}, Start = function()
  o1960["Value"] = False
  o1903.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1960.Value == L0) then
    o1960["Value"] = L0
    o1903.ReCalculate()
  end
end }
o1961 = { [nil] = {}, Start = function()
  o1961["Value"] = False
  o1904.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1961.Value == L0) then
    o1961["Value"] = L0
    o1904.ReCalculate()
  end
end }
o1962 = { [nil] = {}, Start = function()
  o1962["Value"] = False
  o1905.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1962.Value == L0) then
    o1962["Value"] = L0
    o1905.ReCalculate()
  end
end }
o1965 = { [nil] = {}, Start = function()
  o1965["Value"] = False
  o1898.StartCalculate()
  o1899.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1965.Value == L0) then
    o1965["Value"] = L0
    o1898.ReCalculate()
    o1899.ReCalculate()
  end
end }
S_o2006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Harvester_FightingArea", "/Scenario_Dynamic/Navigation/Harvester_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "player1", "pla_harvester_1", "", "", 0.5, "Code4")
  else
    CallFunction(o2006, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2021.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2008.Value ~= True) then
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
o2008 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2008.SetStateValue(o2008.GetCalculated())
end, StartCalculate = function()
  o2008["Value"] = o2008.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2008.Value == L0) then
    o2008["Value"] = L0
    CallFunction(o2006, "ProcesseStateChange")
  end
end }
o2021 = { [nil] = {}, Start = function()
  o2021["Value"] = False
  o1898.StartCalculate()
  o1899.StartCalculate()
  o1900.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2021.Value == L0) then
    o2021["Value"] = L0
    o1898.ReCalculate()
    o1899.ReCalculate()
    o1900.ReCalculate()
  end
end }
S_o2062 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2062, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2062, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2062, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Harvester_FightingArea", "/Scenario_Dynamic/Navigation/Harvester_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "player1", "pla_harvester_1", "", "", 0.5, "Code4")
  else
    CallFunction(o2062, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_DestEmp = function(L0, L1)
  o2077.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2064.Value ~= True) then
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
o2064 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2064.SetStateValue(o2064.GetCalculated())
end, StartCalculate = function()
  o2064["Value"] = o2064.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2064.Value == L0) then
    o2064["Value"] = L0
    CallFunction(o2062, "ProcesseStateChange")
  end
end }
o2077 = { [nil] = {}, Start = function()
  o2077["Value"] = False
  o1898.StartCalculate()
  o1899.StartCalculate()
  o1900.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2077.Value == L0) then
    o2077["Value"] = L0
    o1898.ReCalculate()
    o1899.ReCalculate()
    o1900.ReCalculate()
  end
end }
S_o2118 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2118, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2118, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2118, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2118, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2118, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb1Path_1", 0.5, 1 } }("Code6")
  else
    CallFunction(o2118, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2118, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb1Path_2", 1, 2 } }("Code8")
  else
    CallFunction(o2118, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o2118, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2118, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2118, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Born = function(L0, L1)
  o2124.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o2132.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2135.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2121.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2119.Value ~= True) then
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
o2119 = { [nil] = {}, GetCalculated = function()
  if not (o1914.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2119.SetStateValue(o2119.GetCalculated())
end, StartCalculate = function()
  o2119["Value"] = o2119.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2119.Value == L0) then
    o2119["Value"] = L0
    CallFunction(o2118, "ProcesseStateChange")
  end
end }
o2121 = { [nil] = {}, GetCalculated = function()
  if not (o1898.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2121.SetStateValue(o2121.GetCalculated())
end, StartCalculate = function()
  o2121["Value"] = o2121.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2121.Value == L0) then
    DelayedFunction(10, o2121, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2121.Value == L0) then
    o2121["Value"] = L0
    CallFunction(o2118, "ProcesseStateChange")
  end
end }
o2124 = { [nil] = {}, Start = function()
  o2124["Value"] = False
  o1911.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2124.Value == L0) then
    o2124["Value"] = L0
    o1911.ReCalculate()
  end
end }
o2132 = { [nil] = {}, Start = function()
  o2132["Value"] = False
  o2295.StartCalculate()
  o2351.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2132.Value == L0) then
    o2132["Value"] = L0
    o2295.ReCalculate()
    o2351.ReCalculate()
  end
end }
o2135 = { [nil] = {}, Start = function()
  o2135["Value"] = False
  o1920.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2135.Value == L0) then
    o2135["Value"] = L0
    o1920.ReCalculate()
  end
end }
S_o2176 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2118.Node)
  CallFunction(o2176, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2179.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2179 = { [nil] = {}, Start = function()
  o2179["Value"] = False
  o1912.StartCalculate()
  o1913.StartCalculate()
  o1914.StartCalculate()
  o2183.StartCalculate()
  o2239.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2179.Value == L0) then
    o2179["Value"] = L0
    o1912.ReCalculate()
    o1913.ReCalculate()
    o1914.ReCalculate()
    o2183.ReCalculate()
    o2239.ReCalculate()
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
    DipolLib.InUtero_DipolInRelative(L0, 50, -75, 12, o2118.Node, "Code3")
  else
    CallFunction(o2181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "pla", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2181, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2181, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2183.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2182.Value ~= True) then
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
o2182 = { [nil] = {}, GetCalculated = function()
  if not (o1921.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2182.SetStateValue(o2182.GetCalculated())
end, StartCalculate = function()
  o2182["Value"] = o2182.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2182.Value == L0) then
    DelayedFunction(3, o2182, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2182.Value == L0) then
    o2182["Value"] = L0
    CallFunction(o2181, "ProcesseStateChange")
  end
end }
o2183 = { [nil] = {}, GetCalculated = function()
  if not (o2179.Value ~= True) then
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
    DelayedFunction(23.5, o2183, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2183.Value == L0) then
    o2183["Value"] = L0
    CallFunction(o2181, "ProcesseStateChange")
  end
end }
S_o2237 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2237, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2237, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolInRelative(L0, -50, -75, -12, o2118.Node, "Code3")
  else
    CallFunction(o2237, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Overall_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "/Scenario_Dynamic/Navigation/Overall_FightingArea", "pla", "", "", "", 0.5, "Code4")
  else
    CallFunction(o2237, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o2237, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2239.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2238.Value ~= True) then
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
o2238 = { [nil] = {}, GetCalculated = function()
  if not (o1921.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2238.SetStateValue(o2238.GetCalculated())
end, StartCalculate = function()
  o2238["Value"] = o2238.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2238.Value == L0) then
    DelayedFunction(3, o2238, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2238.Value == L0) then
    o2238["Value"] = L0
    CallFunction(o2237, "ProcesseStateChange")
  end
end }
o2239 = { [nil] = {}, GetCalculated = function()
  if not (o2179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2239.SetStateValue(o2239.GetCalculated())
end, StartCalculate = function()
  o2239["Value"] = o2239.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2239.Value == L0) then
    DelayedFunction(23, o2239, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2239.Value == L0) then
    o2239["Value"] = L0
    CallFunction(o2237, "ProcesseStateChange")
  end
end }
S_o2293 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2293, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2293, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2293, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2293, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb2Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o2293, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o1917.SetStateValue(True)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2293, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DestEmp = function(L0, L1)
  o2308.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2295.Value ~= True) then
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
o2295 = { [nil] = {}, GetCalculated = function()
  if not (o2132.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2295.SetStateValue(o2295.GetCalculated())
end, StartCalculate = function()
  o2295["Value"] = o2295.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2295.Value == L0) then
    DelayedFunction(2, o2295, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2295.Value == L0) then
    o2295["Value"] = L0
    CallFunction(o2293, "ProcesseStateChange")
  end
end }
o2308 = { [nil] = {}, Start = function()
  o2308["Value"] = False
  o1920.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2308.Value == L0) then
    o2308["Value"] = L0
    o1920.ReCalculate()
  end
end }
S_o2349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2349, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb3Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o2349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2349, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o2353.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o2354.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2364.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2351.Value ~= True) then
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
o2351 = { [nil] = {}, GetCalculated = function()
  if not (o2132.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2351.SetStateValue(o2351.GetCalculated())
end, StartCalculate = function()
  o2351["Value"] = o2351.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2351.Value == L0) then
    DelayedFunction(4, o2351, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2351.Value == L0) then
    o2351["Value"] = L0
    CallFunction(o2349, "ProcesseStateChange")
  end
end }
o2353 = { [nil] = {}, Start = function()
  o2353["Value"] = False
  o1916.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2353.Value == L0) then
    o2353["Value"] = L0
    o1916.ReCalculate()
  end
end }
o2354 = { [nil] = {}, Start = function()
  o2354["Value"] = False
  o2407.StartCalculate()
  o2463.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2354.Value == L0) then
    o2354["Value"] = L0
    o2407.ReCalculate()
    o2463.ReCalculate()
  end
end }
o2364 = { [nil] = {}, Start = function()
  o2364["Value"] = False
  o1920.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2364.Value == L0) then
    o2364["Value"] = L0
    o1920.ReCalculate()
  end
end }
S_o2405 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2405, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2405, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2405, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2405, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb4Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o2405, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2405, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestEmp = function(L0, L1)
  o2420.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2407.Value ~= True) then
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
o2407 = { [nil] = {}, GetCalculated = function()
  if not (o2354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2407.SetStateValue(o2407.GetCalculated())
end, StartCalculate = function()
  o2407["Value"] = o2407.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2407.Value == L0) then
    DelayedFunction(2, o2407, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2407.Value == L0) then
    o2407["Value"] = L0
    CallFunction(o2405, "ProcesseStateChange")
  end
end }
o2420 = { [nil] = {}, Start = function()
  o2420["Value"] = False
  o1920.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2420.Value == L0) then
    o2420["Value"] = L0
    o1920.ReCalculate()
  end
end }
S_o2461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2461, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb5Path_1", 1, 1 } }("Code5")
  else
    CallFunction(o2461, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2461, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Born = function(L0, L1)
  o2465.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2476.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2463.Value ~= True) then
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
o2463 = { [nil] = {}, GetCalculated = function()
  if not (o2354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2463.SetStateValue(o2463.GetCalculated())
end, StartCalculate = function()
  o2463["Value"] = o2463.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2463.Value == L0) then
    DelayedFunction(2, o2463, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2463.Value == L0) then
    o2463["Value"] = L0
    CallFunction(o2461, "ProcesseStateChange")
  end
end }
o2465 = { [nil] = {}, Start = function()
  o2465["Value"] = False
  o1919.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2465.Value == L0) then
    o2465["Value"] = L0
    o1919.ReCalculate()
  end
end }
o2476 = { [nil] = {}, Start = function()
  o2476["Value"] = False
  o1920.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2476.Value == L0) then
    o2476["Value"] = L0
    o1920.ReCalculate()
  end
end }
S_o2517 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2517, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2522 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2522, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2527 = { [nil] = {}, Start = function(L0)

end }
S_o2528 = { [nil] = {}, Start = function(L0)

end }
S_o2529 = { [nil] = {}, Start = function(L0)

end }
o2531 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o2532 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 0.2)
  CallFunction(o2532, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o2532, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o2530, o2531, "/IngameScenes/Navigation/PlayerPath_1")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.25, "MMMN", 0)
  CallFunction(o2532, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code10")
  else
    CallFunction(o2532, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_LookAt(L0.Node, "/IngameScenes/Navigation/LookAt_1", 2, "MMMN", 0)
  CallFunction(o2532, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code12")
  else
    CallFunction(o2532, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  o2538.SetStateValue(True)
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o1950.Node, o1884.Node, 269)
  CallFunction(o2532, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code16")
  else
    CallFunction(o2532, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o2532, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2538 = { [nil] = {}, Start = function()
  o2538["Value"] = False
  o1952.StartCalculate()
  o2008.StartCalculate()
  o2064.StartCalculate()
  o2549.StartCalculate()
  o2605.StartCalculate()
  o2654.StartCalculate()
  o2710.StartCalculate()
  o2759.StartCalculate()
  o2815.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2538.Value == L0) then
    o2538["Value"] = L0
    o1952.ReCalculate()
    o2008.ReCalculate()
    o2064.ReCalculate()
    o2549.ReCalculate()
    o2605.ReCalculate()
    o2654.ReCalculate()
    o2710.ReCalculate()
    o2759.ReCalculate()
    o2815.ReCalculate()
  end
end }
S_o2539 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code1")
  else
    CallFunction(o2539, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2530, o2531, "/IngameScenes/Navigation/PlayerPath_1", "pos_1", "pos_2", 1, 1, "Code2")
  else
    CallFunction(o2539, "Code2")
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
S_o2543 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.5, "Code1")
  else
    CallFunction(o2543, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o30.Node, o1884.Node, 268)
  CallFunction(o2543, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2547 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2547, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2547, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2547, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "dir_cammesh_emitter_1", "", "", "")
  CallFunction(o2547, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.75 } }("Code5")
  else
    CallFunction(o2547, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameScenes/Navigation/ScoutPath_1", 0.8, 2 } }("Code6")
  else
    CallFunction(o2547, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2547, "Code7")
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
      if not (o2549.Value ~= True) then
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
o2549 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2549.SetStateValue(o2549.GetCalculated())
end, StartCalculate = function()
  o2549["Value"] = o2549.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2549.Value == L0) then
    o2549["Value"] = L0
    CallFunction(o2547, "ProcesseStateChange")
  end
end }
S_o2604 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2604, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2604, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2604, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2604, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2604, "Code5")
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
      if not (o2605.Value ~= True) then
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
o2605 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2605.SetStateValue(o2605.GetCalculated())
end, StartCalculate = function()
  o2605["Value"] = o2605.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2605.Value == L0) then
    o2605["Value"] = L0
    CallFunction(o2604, "ProcesseStateChange")
  end
end }
S_o2652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "dir_cammesh_emitter_2", "", "", "")
  CallFunction(o2652, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.75 } }("Code5")
  else
    CallFunction(o2652, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameScenes/Navigation/ScoutPath_2", 0.8, 2 } }("Code6")
  else
    CallFunction(o2652, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2652, "Code7")
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
      if not (o2654.Value ~= True) then
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
o2654 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2654.SetStateValue(o2654.GetCalculated())
end, StartCalculate = function()
  o2654["Value"] = o2654.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2654.Value == L0) then
    o2654["Value"] = L0
    CallFunction(o2652, "ProcesseStateChange")
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2709, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2709, "Code5")
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
      if not (o2710.Value ~= True) then
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
o2710 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2710.SetStateValue(o2710.GetCalculated())
end, StartCalculate = function()
  o2710["Value"] = o2710.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2710.Value == L0) then
    o2710["Value"] = L0
    CallFunction(o2709, "ProcesseStateChange")
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
  Vessel_AttackTurrets(L0.Node, "", "dir_cammesh_emitter_3", "", "", "")
  CallFunction(o2757, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0.75 } }("Code5")
  else
    CallFunction(o2757, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameScenes/Navigation/ScoutPath_3", 0.8, 2 } }("Code6")
  else
    CallFunction(o2757, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2757, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Born = function(L0, L1)
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
  if not (o2538.Value ~= True) then
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
  o1901.StartCalculate()
  o1902.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2762.Value == L0) then
    o2762["Value"] = L0
    o1901.ReCalculate()
    o1902.ReCalculate()
  end
end }
S_o2814 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2814, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2814, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2814, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2814, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2814, "Code5")
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
      if not (o2815.Value ~= True) then
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
o2815 = { [nil] = {}, GetCalculated = function()
  if not (o2538.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2815.SetStateValue(o2815.GetCalculated())
end, StartCalculate = function()
  o2815["Value"] = o2815.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2815.Value == L0) then
    o2815["Value"] = L0
    CallFunction(o2814, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 134)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o34.Start()
  o35.Start()
  o36.Start()
  o37.Start()
  o78 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o78)
  o124 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o124)
  o170 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o170)
  o216 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o216)
  o262 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o262)
  o308 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o308)
  o354 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o354)
  o400 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1x", S_o400)
  o446 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o446)
  o492 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o492)
  o538 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2d", S_o538)
  o584 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o584)
  o630 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o630)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2d", S_o676)
  o722 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o722)
  o768 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o768)
  o814 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o814)
  o860 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2a", S_o860)
  o906 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2b", S_o906)
  o952 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2c", S_o952)
  o998 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o998)
  o1044 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1044)
  o1090 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2b", S_o1090)
  o1136 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2c", S_o1136)
  o1182 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o1182)
  o1228 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o1228)
  o1274 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o1274)
  o1320 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o1320)
  o1366 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o1366)
  o1412 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o1412)
  o1458 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o1458)
  o1504 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o1504)
  o1550 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o1550)
  o1596 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_5", S_o1596)
  o1642 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o1642)
  o1688 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o1688)
  o1734 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_4", S_o1734)
  o1780 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_5", S_o1780)
  o1826 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_6", S_o1826)
  o1872 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bomb1_BOOMER", S_o1872)
  o1877.Start()
  o1878 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Bomb1_BOOMER_dau", S_o1878)
  o1883.Start()
  o1884 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1884)
  o1917.Start()
  o1950 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_hammlet_1", S_o1950)
  o1955.Start()
  o1960.Start()
  o1961.Start()
  o1962.Start()
  o1965.Start()
  o2006 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout_weak_1", S_o2006)
  o2021.Start()
  o2062 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout_weak_2", S_o2062)
  o2077.Start()
  o2118 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_1", S_o2118)
  o2124.Start()
  o2132.Start()
  o2135.Start()
  o2176 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o2176)
  o2179.Start()
  o2181 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout_weak_3", S_o2181)
  o2237 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout_weak_4", S_o2237)
  o2293 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_2", S_o2293)
  o2308.Start()
  o2349 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_3", S_o2349)
  o2353.Start()
  o2354.Start()
  o2364.Start()
  o2405 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_4", S_o2405)
  o2420.Start()
  o2461 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_5", S_o2461)
  o2465.Start()
  o2476.Start()
  o2517 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o2517)
  o2522 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_3", S_o2522)
  o2527 = BindEasy(Node_Find("/"), "Camera", S_o2527)
  o2528 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o2528)
  o2529 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookAt_1", S_o2529)
  o2538.Start()
  o2547 = BindEasy(Node_Find("/IngameScenes/Object"), "mer_scout_emptorpedo_1", S_o2547)
  o2604 = BindEasy(Node_Find("/IngameScenes/Object"), "dir_cammesh_emitter_1", S_o2604)
  o2652 = BindEasy(Node_Find("/IngameScenes/Object"), "mer_scout_emptorpedo_2", S_o2652)
  o2709 = BindEasy(Node_Find("/IngameScenes/Object"), "dir_cammesh_emitter_2", S_o2709)
  o2757 = BindEasy(Node_Find("/IngameScenes/Object"), "mer_hammlet_emptorpedo_1", S_o2757)
  o2762.Start()
  o2814 = BindEasy(Node_Find("/IngameScenes/Object"), "dir_cammesh_emitter_3", S_o2814)
  o2532 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o2532)
  o2539 = BindEasy(Node_Find("/IngameScenes/Director"), "IntroAddOn", S_o2539)
  o2543 = BindEasy(Node_Find("/IngameScenes/Director"), "IntroAudio", S_o2543)
  o2530 = { {}, o1884 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
