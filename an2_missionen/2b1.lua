-- dekompiliert aus 2b1.sco
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
  Terrain_LoadTerrain(node1, "map/2B1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2B1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/2B1/Lmsh/", "map/2B1/Ltex/")
  Game_SetTerrainDepth(node0, 2654)
  Game_SetDecompressionHeight(node0, 120)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.090196, 0.105882, 0.129412)
  Game_SetParallelLightT(node0, 0.184314, 0.215686, 0.258824)
  Game_SetParallelLightB(node0, 0.090196, 0.105882, 0.129412)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_2b1.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_2B1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/2B1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(190.25188, 252.511779, 37.502397), MAT_Vector3(76.011968, 0, 0))
  Node_ParseIniFile(node8, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(733.129581, 813.59477, 96.883683), MAT_Vector3(-72.70993, 0, 0))
  Node_ParseIniFile(node9, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(2966.10484, 1358.776531, 30.802611), MAT_Vector3(-17.554857, 0, 0))
  Node_ParseIniFile(node10, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3003.221078, 1454.425293, -30.031334), MAT_Vector3(156.797639, 0, 0))
  Node_ParseIniFile(node11, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3040.084124, 1541.379824, 30.48505), MAT_Vector3(-21.108428, 0, 0))
  Node_ParseIniFile(node12, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(553.167136, 692.843987, 51.047619), MAT_Vector3(11.147631, 0, 0))
  Node_ParseIniFile(node13, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(451.363041, 458.622123, 48.318082), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(498.212724, 595.12875, 50.621366), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_hoses_l_01_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1193.323675, 892.725779, 45.484596), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node16, "osd/ter/ter_hoses_l_01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_hoses_l_01_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1382.655027, 953.198785, 93.616363), MAT_Vector3(-90.879727, 0, 90))
  Node_ParseIniFile(node17, "osd/ter/ter_hoses_l_01.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_hoses_l_01_3")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1597.191992, 675.065267, 32.434785), MAT_Vector3(78.233778, 0, 90))
  Node_ParseIniFile(node18, "osd/ter/ter_hoses_l_01.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1004.67785, 721.730531, 165.181251), MAT_Vector3(-23.022256, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_claw_l_01_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(939.054763, 607.703815, 132.639779), MAT_Vector3(149.170047, 0, 0))
  Node_ParseIniFile(node20, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_claw_l_01_3")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1045.364348, 683.033919, 135.457144), MAT_Vector3(-23.02226, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_claw_l_01_4")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(992.407803, 594.661239, 131.386856), MAT_Vector3(149.17, 0, 0))
  Node_ParseIniFile(node22, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1950.851222, 735.573364, 32.179197), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_hoses_l_02_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(440.658146, 534.245983, 59.204843), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_hoses_l_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_hoses_l_02_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(563.66772, 625.71787, 59.20484), MAT_Vector3(148.256736, 0, 0))
  Node_ParseIniFile(node25, "osd/ter/ter_hoses_l_02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_hoses_l_03_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1619.090126, 716.602737, 31.020689), MAT_Vector3(-38.597002, 0, 0))
  Node_ParseIniFile(node26, "osd/ter/ter_hoses_l_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_hoses_l_03_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2511.361948, 1024.517213, 56.814631), MAT_Vector3(-72.497259, 75.284807, 86.507267))
  Node_ParseIniFile(node27, "osd/ter/ter_hoses_l_03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_hoses_l_03_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2602.277986, 979.439521, 47.340266), MAT_Vector3(109.727456, 75.28481, 86.50727))
  Node_ParseIniFile(node28, "osd/ter/ter_hoses_l_03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_hoses_l_03_4")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2678.701331, 1063.334817, 49.116709), MAT_Vector3(-82.755158, 75.28481, 86.50727))
  Node_ParseIniFile(node29, "osd/ter/ter_hoses_l_03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_hoses_l_03_5")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2769.157368, 1012.304495, 57.110702), MAT_Vector3(96.500124, 75.28481, 86.50727))
  Node_ParseIniFile(node30, "osd/ter/ter_hoses_l_03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2081.402364, 777.647084, 148.867263), MAT_Vector3(-143.133296, 90, -105.407369))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2100.307418, 718.799884, 144.004746), MAT_Vector3(-173.873733, 90, 15.806348))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_fx_sky", "fx_sky_2B1_1")
  Node_AddSon(node7, node33)
  Node_ParseIniFile(node33, "osd/fx_sky/fx_sky_2B1.osd")
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_fx_rays", "fx_rays_2B1_1")
  Node_AddSon(node7, node34)
  Node_ParseIniFile(node34, "osd/fx_rays/fx_rays_2B1.osd")
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_fx_flare", "fx_flare_2B1_1")
  Node_AddSon(node7, node35)
  Node_ParseIniFile(node35, "osd/fx_flare/fx_flare_2B1.osd")
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node7, node36)
  Node_ParseIniFile(node36, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node37)
  Node_ParseIniFile(node37, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node37, "map/2B1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node38)
  Node_ParseIniFile(node38, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node38, "map/2B1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node39)
  Node_ParseIniFile(node39, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node39, "map/2B1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node40)
  Node_ParseIniFile(node40, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node40, "map/2B1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_fx_plant", "org_tube_1")
  Node_AddSon(node7, node41)
  Node_ParseIniFile(node41, "osd/fx_plant/org_tube.osd")
  FX_Plant_SetMap(node41, "map/2B1/Terrain/org_tubes.tga")
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_fx_plant", "org_redcoral_1")
  Node_AddSon(node7, node42)
  Node_ParseIniFile(node42, "osd/fx_plant/org_redcoral.osd")
  FX_Plant_SetMap(node42, "map/2B1/Terrain/org_redcoral.tga")
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node43)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node43, node44)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node43, node45)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node45, node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node46, node47)
  Position_SetPosition(node47, MAT_Vector3(190.060496, 224.789957, 70))
  Position_SetRadius(node47, 5)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node46, node48)
  Position_SetPosition(node48, MAT_Vector3(292.092449, 221.546959, 70))
  Position_SetRadius(node48, 5)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node46, node49)
  Position_SetPosition(node49, MAT_Vector3(352.917268, 255.507151, 70))
  Position_SetRadius(node49, 5)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node46, node50)
  Position_SetPosition(node50, MAT_Vector3(414.587877, 315.549041, 70))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node46, node51)
  Position_SetPosition(node51, MAT_Vector3(432.691265, 414.830137, 70))
  Position_SetRadius(node51, 5)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node46, node52)
  Position_SetPosition(node52, MAT_Vector3(428.359401, 468.569638, 70))
  Position_SetRadius(node52, 5)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node46, node53)
  Position_SetPosition(node53, MAT_Vector3(503.448313, 514.064926, 70))
  Position_SetRadius(node53, 5)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node46, node54)
  Position_SetPosition(node54, MAT_Vector3(474.803589, 607.459319, 70))
  Position_SetRadius(node54, 5)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node46, node55)
  Position_SetPosition(node55, MAT_Vector3(579.071836, 658.372722, 70))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node46, node56)
  Position_SetPosition(node56, MAT_Vector3(625.845397, 725.158728, 70))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node45, node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node57, node58)
  Position_SetPosition(node58, MAT_Vector3(633.541181, 741.410409, 70.167558))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node57, node59)
  Position_SetPosition(node59, MAT_Vector3(709.144117, 801.400326, 64.834195))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node57, node60)
  Position_SetPosition(node60, MAT_Vector3(835.22828, 800.916125, 71.456935))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Path", "Path_3")
  Node_AddSon(node45, node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node61, node62)
  Position_SetPosition(node62, MAT_Vector3(891.265568, 802.03215, 68.683332))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node61, node63)
  Position_SetPosition(node63, MAT_Vector3(936.784381, 729.80132, 70.252509))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "Path_4")
  Node_AddSon(node45, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(950.284098, 704.42345, 70))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(966.522358, 679.613369, 70))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(1043.531592, 640.642687, 70))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(1090.582359, 639.156742, 70.692326))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node64, node69)
  Position_SetPosition(node69, MAT_Vector3(1160.433175, 685.148957, 71.246238))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node64, node70)
  Position_SetPosition(node70, MAT_Vector3(1199.230073, 722.423515, 70.240589))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node64, node71)
  Position_SetPosition(node71, MAT_Vector3(1193.059651, 760.066666, 80.640039))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node64, node72)
  Position_SetPosition(node72, MAT_Vector3(1186.993504, 819.340408, 94.798659))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Path", "Path_5")
  Node_AddSon(node45, node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node73, node74)
  Position_SetPosition(node74, MAT_Vector3(1185.271231, 871.83159, 52.673778))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node73, node75)
  Position_SetPosition(node75, MAT_Vector3(1204.986127, 893.325576, 49.857611))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node73, node76)
  Position_SetPosition(node76, MAT_Vector3(1249.474559, 901.831225, 48.75986))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Path", "Path_6")
  Node_AddSon(node45, node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node77, node78)
  Position_SetPosition(node78, MAT_Vector3(1265.186248, 904.339504, 49.70545))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node77, node79)
  Position_SetPosition(node79, MAT_Vector3(1381.602187, 886.879684, 61.008724))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node77, node80)
  Position_SetPosition(node80, MAT_Vector3(1563.69065, 748.184344, 44.162375))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node77, node81)
  Position_SetPosition(node81, MAT_Vector3(1690.176862, 720.844288, 48.010633))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node77, node82)
  Position_SetPosition(node82, MAT_Vector3(1786.045181, 720.014928, 60.624828))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node77, node83)
  Position_SetPosition(node83, MAT_Vector3(1881.087033, 724.020486, 51.299201))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Path", "Path_7")
  Node_AddSon(node45, node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node84, node85)
  Position_SetPosition(node85, MAT_Vector3(1912.291963, 727.679503, 97.850767))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node84, node86)
  Position_SetPosition(node86, MAT_Vector3(2010.83513, 759.008401, 129.986051))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node84, node87)
  Position_SetPosition(node87, MAT_Vector3(2049.645626, 778.555942, 81.021144))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node84, node88)
  Position_SetPosition(node88, MAT_Vector3(2283.901664, 891.935242, 77.86414))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node84, node89)
  Position_SetPosition(node89, MAT_Vector3(2378.93308, 946.578404, 76.401789))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Path", "Path_8")
  Node_AddSon(node45, node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node90, node91)
  Position_SetPosition(node91, MAT_Vector3(2507.325, 999.7791, 59.94239))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node90, node92)
  Position_SetPosition(node92, MAT_Vector3(2559.168, 991.3372, 64.69211))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node90, node93)
  Position_SetPosition(node93, MAT_Vector3(2623.067, 1012.411, 71.40761))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node90, node94)
  Position_SetPosition(node94, MAT_Vector3(2663.022, 1037.199, 66.60942))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node90, node95)
  Position_SetPosition(node95, MAT_Vector3(2700.165, 1039.566, 73.76811))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node90, node96)
  Position_SetPosition(node96, MAT_Vector3(2753.238, 1028.703, 64.90456))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node90, node97)
  Position_SetPosition(node97, MAT_Vector3(2863.375162, 1102.066813, 69.02699))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Path", "Path_9")
  Node_AddSon(node45, node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node98, node99)
  Position_SetPosition(node99, MAT_Vector3(2878.288613, 1113.910347, 56.056833))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node98, node100)
  Position_SetPosition(node100, MAT_Vector3(2906.959336, 1193.695628, 63.703222))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node98, node101)
  Position_SetPosition(node101, MAT_Vector3(2932.403915, 1268.23174, 56.158382))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Path", "Path_10")
  Node_AddSon(node45, node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node102, node103)
  Position_SetPosition(node103, MAT_Vector3(2936.895626, 1292.134352, 62.312558))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node102, node104)
  Position_SetPosition(node104, MAT_Vector3(2999.038574, 1462.883115, 100.262125))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node102, node105)
  Position_SetPosition(node105, MAT_Vector3(3016.006068, 1497.593845, 71.50468))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node102, node106)
  Position_SetPosition(node106, MAT_Vector3(3123.554929, 1595.841342, 72.291071))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node43, node107)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node43, node108)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Trigger", "PlaTriggerPresenceBox_First")
  Node_AddSon(node108, node109)
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetCS(node109, MAT_Vector3(3136.66864, 1610.791446, 100), MAT_Vector3(43.246292, 0, 0))
  Trigger_SetBoxMode(node109, 80, 80, 80)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Trigger", "PlaTriggerPresenceBox_Win")
  Node_AddSon(node108, node110)
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetCS(node110, MAT_Vector3(3136.669, 1610.791, 100), MAT_Vector3(43.24629, 0, 0))
  Trigger_SetBoxMode(node110, 80, 80, 80)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Trigger", "StoneyTriggerPresenceBox_1")
  Node_AddSon(node108, node111)
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetCS(node111, MAT_Vector3(3136.867506, 1610.702498, 100), MAT_Vector3(43.24629, 0, 0))
  Trigger_SetBoxMode(node111, 80, 80, 80)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node43, node112)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node112, node113)
  Body_SetCS(node113, MAT_Vector3(178.573447, 242.848455, 68.926381), MAT_Vector3(-95.239567, 0, 0))
  Node_ParseIniFile(node113, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "wng_stoney_2b1_1")
  Node_AddSon(node112, node114)
  Body_SetCS(node114, MAT_Vector3(177.243935, 224.462814, 68.651746), MAT_Vector3(-93.96275, 0, 0))
  Node_ParseIniFile(node114, "osd/wng/wng_stoney_2b1.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node112, node115)
  Body_SetPosition(node115, MAT_Vector3(405.07735, 323.302563, 74.620499))
  WayPoint_SetRadius(node115, 10)
  Node_ParseIniFile(node115, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node116)
  Camera_SetBackPlane(node116, 1024)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node117, node118)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node117, node119)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "IntroPosition_1")
  Node_AddSon(node119, node120)
  Position_SetPosition(node120, MAT_Vector3(190.173504, 217.646635, 70.636719))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "IntroPosition_2")
  Node_AddSon(node119, node121)
  Position_SetPosition(node121, MAT_Vector3(190.794803, 244.448117, 70.230938))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "IntroPosition_3")
  Node_AddSon(node119, node122)
  Position_SetPosition(node122, MAT_Vector3(190.791807, 233.744911, 70.23094))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "IntroPosition_4")
  Node_AddSon(node119, node123)
  Position_SetPosition(node123, MAT_Vector3(177.883978, 234.443313, 70.23094))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node119, node124)
  Position_SetPosition(node124, MAT_Vector3(0, 0, 0))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node119, node125)
  Position_SetPosition(node125, MAT_Vector3(0, 0, 0))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node119, node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node126, node127)
  Position_SetPosition(node127, MAT_Vector3(211.035969, 224.207406, 75.528849))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node126, node128)
  Position_SetPosition(node128, MAT_Vector3(263.895416, 223.59137, 176.835827))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node119, node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node129, node130)
  Position_SetPosition(node130, MAT_Vector3(3271.062252, 1595.505347, 214.469803))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node129, node131)
  Position_SetPosition(node131, MAT_Vector3(3372.523026, 1552.363318, 210.836387))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node117, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node132, node133)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Director", "WrongShip")
  Node_AddSon(node132, node134)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node132, node135)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node117, node136)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node117, node137)
  Node_EnterSimulation(node137)
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
SetEnemyMatrixElement(2, 1, N)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, N)
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
                                                    if not (o1224.Value ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  Game_MissionEnd(GetGameNode(), 2)
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
    end
  end
end }
o10 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (o1232.Value ~= True) then
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
end, ReCalculate = function()
  o10.SetStateValue(o10.GetCalculated())
end, StartCalculate = function()
  o10["Value"] = o10.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2101)
end, SetStateValue = function(L0)
  if not (o10.Value == L0) then
    o10["Value"] = L0
    if not (L0 ~= 1) then
      o10.ChangeTo1()
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
                                                    if not (o1248.Value == True) then
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
                                                    if not (o1249.Value == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2102)
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o27.Value == L0) then
    o27["Value"] = L0
    if not (L0 ~= 1) then
      o27.ChangeTo1()
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1180, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1180, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1180, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o1180, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1180, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1180, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1185.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1181.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1182.Value ~= True) then
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
o1181 = { [nil] = {}, GetCalculated = function()
  if not (o1272.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1181.SetStateValue(o1181.GetCalculated())
end, StartCalculate = function()
  o1181["Value"] = o1181.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1181.Value == L0) then
    o1181["Value"] = L0
    CallFunction(o1180, "ProcesseStateChange")
  end
end }
o1182 = { [nil] = {}, GetCalculated = function()
  if not (o1213.Value == True) then
    if not (o1218.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1182.SetStateValue(o1182.GetCalculated())
end, StartCalculate = function()
  o1182["Value"] = o1182.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1182.Value == L0) then
    o1182["Value"] = L0
    CallFunction(o1180, "ProcesseStateChange")
  end
end }
o1185 = { [nil] = {}, Start = function()
  o1185["Value"] = False
  o1214.StartCalculate()
  o1216.StartCalculate()
  o1223.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1185.Value == L0) then
    o1185["Value"] = L0
    o1214.ReCalculate()
    o1216.ReCalculate()
    o1223.ReCalculate()
  end
end }
S_o1186 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1186, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1186, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1186, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o1186, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1186, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1186, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1191.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1187.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1188.Value ~= True) then
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
o1187 = { [nil] = {}, GetCalculated = function()
  if not (o1272.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1187.SetStateValue(o1187.GetCalculated())
end, StartCalculate = function()
  o1187["Value"] = o1187.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1187.Value == L0) then
    o1187["Value"] = L0
    CallFunction(o1186, "ProcesseStateChange")
  end
end }
o1188 = { [nil] = {}, GetCalculated = function()
  if not (o1218.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1188.SetStateValue(o1188.GetCalculated())
end, StartCalculate = function()
  o1188["Value"] = o1188.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1188.Value == L0) then
    o1188["Value"] = L0
    CallFunction(o1186, "ProcesseStateChange")
  end
end }
o1191 = { [nil] = {}, Start = function()
  o1191["Value"] = False
  o1215.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1191.Value == L0) then
    o1191["Value"] = L0
    o1215.ReCalculate()
  end
end }
S_o1192 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1192, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1192, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1192, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "wng", "", "", "", False, False, True)
  CallFunction(o1192, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1192, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1192, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1197.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1194.Value ~= True) then
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
o1194 = { [nil] = {}, GetCalculated = function()
  if not (o1214.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1194.SetStateValue(o1194.GetCalculated())
end, StartCalculate = function()
  o1194["Value"] = o1194.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1194.Value == L0) then
    o1194["Value"] = L0
    CallFunction(o1192, "ProcesseStateChange")
  end
end }
o1197 = { [nil] = {}, Start = function()
  o1197["Value"] = False
  o1213.StartCalculate()
  o1217.StartCalculate()
  o1223.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1197.Value == L0) then
    o1197["Value"] = L0
    o1213.ReCalculate()
    o1217.ReCalculate()
    o1223.ReCalculate()
  end
end }
S_o1198 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_leech", 2)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  CallFunction(o1198, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Ship1 = function(L0, L1)
  o1203.SetStateValue(L1)
end, SetStateValue_Ship2 = function(L0, L1)
  o1204.SetStateValue(L1)
end, SetStateValue_Ship3 = function(L0, L1)
  o1205.SetStateValue(L1)
end, SetStateValue_Ship4 = function(L0, L1)
  o1206.SetStateValue(L1)
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
o1203 = { [nil] = {}, Start = function()
  o1203["Value"] = False
  o1337.StartCalculate()
  o1356.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1203.Value == L0) then
    o1203["Value"] = L0
    o1337.ReCalculate()
    o1356.ReCalculate()
  end
end }
o1204 = { [nil] = {}, Start = function()
  o1204["Value"] = False
  o1218.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1204.Value == L0) then
    o1204["Value"] = L0
    o1218.ReCalculate()
  end
end }
o1205 = { [nil] = {}, Start = function()
  o1205["Value"] = False
  o1218.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1205.Value == L0) then
    o1205["Value"] = L0
    o1218.ReCalculate()
  end
end }
o1206 = { [nil] = {}, Start = function()
  o1206["Value"] = False
  o1218.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1206.Value == L0) then
    o1206["Value"] = L0
    o1218.ReCalculate()
  end
end }
o1212 = { [nil] = {}, Start = function()
  o1212["Value"] = False
  o1265.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1212.Value == L0) then
    o1212["Value"] = L0
    o1265.ReCalculate()
  end
end }
o1213 = { [nil] = {}, GetCalculated = function()
  if not (o1197.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1213.SetStateValue(o1213.GetCalculated())
end, StartCalculate = function()
  o1213["Value"] = o1213.GetCalculated()
  o1182.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1213.Value == L0) then
    o1213["Value"] = L0
    o1182.ReCalculate()
  end
end }
o1214 = { [nil] = {}, GetCalculated = function()
  if not (o1185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1214.SetStateValue(o1214.GetCalculated())
end, StartCalculate = function()
  o1214["Value"] = o1214.GetCalculated()
  o1194.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1214.Value == L0) then
    o1214["Value"] = L0
    o1194.ReCalculate()
  end
end }
o1215 = { [nil] = {}, GetCalculated = function()
  if not (o1191.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1215.SetStateValue(o1215.GetCalculated())
end, StartCalculate = function()
  o1215["Value"] = o1215.GetCalculated()
  o1224.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1215.Value == L0) then
    DelayedFunction(1, o1215, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1215.Value == L0) then
    o1215["Value"] = L0
    o1224.ReCalculate()
    if not (L0 ~= 1) then
      o1215.ChangeTo1()
    end
  end
end }
o1216 = { [nil] = {}, GetCalculated = function()
  if not (o1185.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1216.SetStateValue(o1216.GetCalculated())
end, StartCalculate = function()
  o1216["Value"] = o1216.GetCalculated()
  o1217.StartCalculate()
  o1232.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1252.Node, o1198.Node, 154)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1216.Value == L0) then
    o1216["Value"] = L0
    o1217.ReCalculate()
    o1232.ReCalculate()
    if not (L0 ~= 1) then
      o1216.ChangeTo1()
    end
  end
end }
o1217 = { [nil] = {}, GetCalculated = function()
  if not (o1197.Value ~= True) then
    if not (o1216.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1217.SetStateValue(o1217.GetCalculated())
end, StartCalculate = function()
  o1217["Value"] = o1217.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1252.Node, o1198.Node, 155)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1217.Value == L0) then
    o1217["Value"] = L0
    if not (L0 ~= 1) then
      o1217.ChangeTo1()
    end
  end
end }
o1218 = { [nil] = {}, GetCalculated = function()
  if not (o1204.Value == True) then
    if not (o1205.Value == True) then
      if not (o1206.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1218.SetStateValue(o1218.GetCalculated())
end, StartCalculate = function()
  o1218["Value"] = o1218.GetCalculated()
  o1182.StartCalculate()
  o1188.StartCalculate()
  o1348.StartCalculate()
end, ChangeTo1 = function()
  CallFunction(o1252, "Code31")
end, SetStateValue = function(L0)
  if not (o1218.Value == L0) then
    o1218["Value"] = L0
    o1182.ReCalculate()
    o1188.ReCalculate()
    o1348.ReCalculate()
    if not (L0 ~= 1) then
      o1218.ChangeTo1()
    end
  end
end }
o1219 = { [nil] = {}, Start = function()
  o1219["Value"] = False
  o1268.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1219.Value == L0) then
    o1219["Value"] = L0
    o1268.ReCalculate()
  end
end }
o1220 = { [nil] = {}, GetCalculated = function()
  if not (o1221.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1220.SetStateValue(o1220.GetCalculated())
end, StartCalculate = function()
  o1220["Value"] = o1220.GetCalculated()
  o1249.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1220.Value == L0) then
    o1220["Value"] = L0
    o1249.ReCalculate()
    if not (L0 ~= 1) then
      o1220.ChangeTo1()
    end
  end
end }
o1221 = { [nil] = {}, Start = function()
  o1221["Value"] = False
  o1220.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1221.Value == L0) then
    o1221["Value"] = L0
    o1220.ReCalculate()
  end
end }
o1222 = { [nil] = {}, GetCalculated = function()
  if not (o1289.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1222.SetStateValue(o1222.GetCalculated())
end, StartCalculate = function()
  o1222["Value"] = o1222.GetCalculated()
  o1248.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1222.Value == L0) then
    o1222["Value"] = L0
    o1248.ReCalculate()
    if not (L0 ~= 1) then
      o1222.ChangeTo1()
    end
  end
end }
o1223 = { [nil] = {}, GetCalculated = function()
  if not (o1197.Value == True) then
    if not (o1185.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1223.SetStateValue(o1223.GetCalculated())
end, StartCalculate = function()
  o1223["Value"] = o1223.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o1252, "Code39")
end, SetStateValue = function(L0)
  if not (o1223.Value == L0) then
    DelayedFunction(30, o1223, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1223.Value == L0) then
    o1223["Value"] = L0
    if not (L0 ~= 1) then
      o1223.ChangeTo1()
    end
  end
end }
o1224 = { [nil] = {}, GetCalculated = function()
  if not (o1215.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1224.SetStateValue(o1224.GetCalculated())
end, StartCalculate = function()
  o1224["Value"] = o1224.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1224.Value == L0) then
    o1224["Value"] = L0
    o2.ReCalculate()
  end
end }
o1232 = { [nil] = {}, GetCalculated = function()
  if not (o1216.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1232.SetStateValue(o1232.GetCalculated())
end, StartCalculate = function()
  o1232["Value"] = o1232.GetCalculated()
  o10.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1232.Value == L0) then
    o1232["Value"] = L0
    o10.ReCalculate()
  end
end }
o1248 = { [nil] = {}, GetCalculated = function()
  if not (o1222.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1248.SetStateValue(o1248.GetCalculated())
end, StartCalculate = function()
  o1248["Value"] = o1248.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1248.Value == L0) then
    o1248["Value"] = L0
    o26.ReCalculate()
  end
end }
o1249 = { [nil] = {}, GetCalculated = function()
  if not (o1220.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1249.SetStateValue(o1249.GetCalculated())
end, StartCalculate = function()
  o1249["Value"] = o1249.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1249.Value == L0) then
    o1249["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o1252 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  Vessel_DeactivateTurningInEmp(L0.Node)
  Body_SetObservedDestroyer(L0.Node, 1, o1198.Node)
  CallFunction(o1252, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1252, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1252, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1252, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code8")
  else
    CallFunction(o1252, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o1252, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1252, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 0.6, 1 } }("Code11")
  else
    CallFunction(o1252, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_2", 1, 1 } }("Code12")
  else
    CallFunction(o1252, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SendRadioMessageTake(o1252.Node, o1198.Node, 151)
  CallFunction(o1252, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_3", 0.6, 1 } }("Code14")
  else
    CallFunction(o1252, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_4", 0.8, 1 } }("Code15")
  else
    CallFunction(o1252, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Vessel_CollisionObjects(L0.Node, 0)
  SendRadioMessageTake(o1252.Node, o1198.Node, 152)
  CallFunction(o1252, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_5", 0.4, 1 } }("Code18")
  else
    CallFunction(o1252, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o1252, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_6", 0.8, 1 } }("Code20")
  else
    CallFunction(o1252, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_7", 1, 1 } }("Code21")
  else
    CallFunction(o1252, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_8", 0.6, 1 } }("Code22")
  else
    CallFunction(o1252, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  SendRadioMessageTake(o1252.Node, o1198.Node, 153)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1252, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_9", "pos_1", "pos_2", 0.4, 1 } }("Code25")
  else
    CallFunction(o1252, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Vessel_CollisionObjects(L0.Node, 1)
  CallFunction(o1252, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_9", "pos_2", "pos_3", 0.4, 1 } }("Code27")
  else
    CallFunction(o1252, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_10", 1, 1 } }("Code28")
  else
    CallFunction(o1252, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Vessel_AttackTurretsStop(L0.Node, "")
  CallFunction(o1252, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code30")
  else
    CallFunction(o1252, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1252, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  StopAllActiveBehaviours(L0)
  CallFunction(o1252, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code33")
  else
    CallFunction(o1252, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code34")
  else
    CallFunction(o1252, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1252, "Code35")
  end
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/Path_1", 1, 1 } }("Code36")
  else
    CallFunction(o1252, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code37")
  else
    CallFunction(o1252, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code38")
  else
    CallFunction(o1252, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1252, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  StopAllActiveBehaviours(L0)
  CallFunction(o1252, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/Path_2", 1, 1 } }("Code41")
  else
    CallFunction(o1252, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code42")
  else
    CallFunction(o1252, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
end, SetStateValue_Born = function(L0, L1)
  o1272.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o1289.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o1265.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 34) then
    if not (L0.CodeIndex >= 35) then
      if not (o1268.Value ~= True) then
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
o1265 = { [nil] = {}, GetCalculated = function()
  if not (o1212.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1265.SetStateValue(o1265.GetCalculated())
end, StartCalculate = function()
  o1265["Value"] = o1265.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1265.Value == L0) then
    o1265["Value"] = L0
    CallFunction(o1252, "ProcesseStateChange")
  end
end }
o1268 = { [nil] = {}, GetCalculated = function()
  if not (o1219.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1268.SetStateValue(o1268.GetCalculated())
end, StartCalculate = function()
  o1268["Value"] = o1268.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1268.Value == L0) then
    o1268["Value"] = L0
    CallFunction(o1252, "ProcesseStateChange")
  end
end }
o1272 = { [nil] = {}, Start = function()
  o1272["Value"] = False
  o1181.StartCalculate()
  o1187.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1272.Value == L0) then
    o1272["Value"] = L0
    o1181.ReCalculate()
    o1187.ReCalculate()
  end
end }
o1289 = { [nil] = {}, Start = function()
  o1289["Value"] = False
  o1222.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1289.Value == L0) then
    o1289["Value"] = L0
    o1222.ReCalculate()
  end
end }
S_o1324 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1252.Node)
  CallFunction(o1324, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1329 = { [nil] = {}, Start = function(L0)

end }
S_o1330 = { [nil] = {}, Start = function(L0)

end }
S_o1331 = { [nil] = {}, Start = function(L0)

end }
S_o1332 = { [nil] = {}, Start = function(L0)

end }
S_o1333 = { [nil] = {}, Start = function(L0)

end }
S_o1334 = { [nil] = {}, Start = function(L0)

end }
S_o1335 = { [nil] = {}, Start = function(L0)

end }
S_o1336 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1336, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o1336, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o1336, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_stoney_2b1_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o1336, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.8, "Code10")
  else
    CallFunction(o1336, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_2", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  CallFunction(o1336, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code13")
  else
    CallFunction(o1336, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_3", 1, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/IntroPosition_4", 1, "MMMN", 0)
  CallFunction(o1336, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code16")
  else
    CallFunction(o1336, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  o1212.SetStateValue(True)
  CallFunction(o1336, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o1336, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_ShakeHit(L0.Node, 0.5, 0.5, 0.5, 0.5)
  CallFunction(o1336, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o1336, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_Cut(L0.Node, 1)
  CallFunction(o1336, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code22")
  else
    CallFunction(o1336, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Director_EndCutscene(L0.Node)
  CallFunction(o1336, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code24")
  else
    CallFunction(o1336, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Game_SetWayPoint(GetGameNode(), o1324.Node)
  CallFunction(o1336, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1337.Value ~= True) then
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
o1337 = { [nil] = {}, GetCalculated = function()
  if not (o1203.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1337.SetStateValue(o1337.GetCalculated())
end, StartCalculate = function()
  o1337["Value"] = o1337.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1337.Value == L0) then
    o1337["Value"] = L0
    CallFunction(o1336, "ProcesseStateChange")
  end
end }
S_o1347 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1347, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_stoney_2b1_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o1347, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code8")
  else
    CallFunction(o1347, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_2", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  SendRadioMessageTake(o1252.Node, o1198.Node, 694)
  CallFunction(o1347, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code12")
  else
    CallFunction(o1347, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_3", 1, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_stoney_2b1_1", 1, "MMMN", 0)
  o1219.SetStateValue(True)
  CallFunction(o1347, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code16")
  else
    CallFunction(o1347, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_Cut(L0.Node, 1)
  CallFunction(o1347, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code18")
  else
    CallFunction(o1347, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Director_EndCutscene(L0.Node)
  CallFunction(o1347, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code20")
  else
    CallFunction(o1347, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  o1221.SetStateValue(True)
  CallFunction(o1347, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1348.Value ~= True) then
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
o1348 = { [nil] = {}, GetCalculated = function()
  if not (o1218.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1348.SetStateValue(o1348.GetCalculated())
end, StartCalculate = function()
  o1348["Value"] = o1348.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1348.Value == L0) then
    o1348["Value"] = L0
    CallFunction(o1347, "ProcesseStateChange")
  end
end }
S_o1355 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1355, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o1355, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o1252.Node, o1198.Node, 147)
  CallFunction(o1355, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5.5, "Code4")
  else
    CallFunction(o1355, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o1252.Node, o1198.Node, 148)
  CallFunction(o1355, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code6")
  else
    CallFunction(o1355, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  SendRadioMessageTake(o1252.Node, o1198.Node, 149)
  CallFunction(o1355, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code8")
  else
    CallFunction(o1355, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o1252.Node, o1198.Node, 150)
  CallFunction(o1355, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o1356.Value ~= True) then
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
o1356 = { [nil] = {}, GetCalculated = function()
  if not (o1203.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1356.SetStateValue(o1356.GetCalculated())
end, StartCalculate = function()
  o1356["Value"] = o1356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1356.Value == L0) then
    o1356["Value"] = L0
    CallFunction(o1355, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 137)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_5", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_01_1", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_01_2", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_01_3", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_2", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_3", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_4", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_02_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_02_2", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_03_1", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_03_2", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_03_3", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_03_4", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_hoses_l_03_5", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PlaTriggerPresenceBox_First", S_o1180)
  o1185.Start()
  o1186 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "PlaTriggerPresenceBox_Win", S_o1186)
  o1191.Start()
  o1192 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "StoneyTriggerPresenceBox_1", S_o1192)
  o1197.Start()
  o1198 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1198)
  o1203.Start()
  o1204.Start()
  o1205.Start()
  o1206.Start()
  o1212.Start()
  o1219.Start()
  o1221.Start()
  o1252 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_2b1_1", S_o1252)
  o1272.Start()
  o1289.Start()
  o1324 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o1324)
  o1329 = BindEasy(Node_Find("/"), "Camera", S_o1329)
  o1330 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_1", S_o1330)
  o1331 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_2", S_o1331)
  o1332 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_3", S_o1332)
  o1333 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_4", S_o1333)
  o1334 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o1334)
  o1335 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_4", S_o1335)
  o1336 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o1336)
  o1347 = BindEasy(Node_Find("/InGameSequences/Director"), "WrongShip", S_o1347)
  o1355 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_1", S_o1355)
  Game_LoadProgress_Leave(Node_Find("/"))
end
