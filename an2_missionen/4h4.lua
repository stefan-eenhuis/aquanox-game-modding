-- dekompiliert aus 4h4.sco
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
  Terrain_LoadTerrain(node1, "map/4H4/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/4H4/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/4H4/Lmsh/", "map/4H4/Ltex/")
  Game_SetTerrainDepth(node0, 2024)
  Game_SetDecompressionHeight(node0, 512)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.098039, 0.109804, 0.078431)
  Game_SetParallelLightT(node0, 0.2, 0.219608, 0.156863)
  Game_SetParallelLightB(node0, 0.098039, 0.109804, 0.078431)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_4h4.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_4H4.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_orden.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_tears.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension2.sam", 4)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension1.sam", 5)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/4H4/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "pla_harvester_static_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1974.118711, 1675.089346, 400.636916), MAT_Vector3(162.354362, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 3)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_sky", "fx_sky_4H4_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_sky/fx_sky_4H4.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_rays", "fx_rays_4H4_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_rays/fx_rays_4H4.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_flare", "fx_flare_4H4_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_flare/fx_flare_4H4.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_n_1")
  Node_AddSon(node7, node12)
  Node_ParseIniFile(node12, "osd/fx_plankton/fx_plankton_green_n.osd")
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_megalithx_m_01_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1873.924368, 785.791157, 169.368085), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/ter/ter_megalithx_m_01.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2062.606826, 823.612797, 129.798848), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node15, MAT_Vector3(1462.415433, 1951.619834, 143.697272), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1515.20545, 1183.023641, 156.127619), MAT_Vector3(-6.662292, -1.149282, 4.255062))
  Node_ParseIniFile(node16, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1558.953229, 2684.31575, 85.243467), MAT_Vector3(-155.165993, -1.149282, 4.255062))
  Node_ParseIniFile(node17, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node18)
  Node_ParseIniFile(node18, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node18, "map/4H4/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node19)
  Node_ParseIniFile(node19, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node19, "map/4H4/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node20)
  Node_ParseIniFile(node20, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node20, "map/4H4/Terrain/org_seetang.tga")
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node21)
  Node_ParseIniFile(node21, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node21, "map/4H4/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node22)
  Node_ParseIniFile(node22, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node22, "map/4H4/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1464.837294, 2602.581473, 111.248471), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1a")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1623.237202, 1211.101224, 162.891466), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1b")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1636.711645, 2718.818159, 122.768338), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1473.958367, 2660.469701, 99.521694), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1a")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1381.898652, 1928.468487, 198.638815), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1b")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2005.6609, 841.277739, 133.862939), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1598.913715, 1230.604576, 178.818734), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1a")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1401.497204, 1958.743214, 180.050391), MAT_Vector3(59.177396, 18.385635, 10.428766))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1b")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1601.036621, 1152.821198, 154.264293), MAT_Vector3(-7.761447, 21.2001, 27.004848))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1c")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1830.044704, 786.614155, 160.893344), MAT_Vector3(-34.272402, 24.892403, 2.429863))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1620.773057, 2658.208373, 117.174927), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1533.687097, 1949.914471, 159.175084), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1015.281636, 2881.161487, 104.37522), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2090.385242, 1099.124479, 137.304892), MAT_Vector3(-65.793996, 33.462599, -88.290213))
  Node_ParseIniFile(node36, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_rock_l_01_1a")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1903.532673, 2487.664962, 111.845098), MAT_Vector3(163.825607, 43.36829, 124.794459))
  Node_ParseIniFile(node37, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2090.213336, 1172.443953, 133.483958), MAT_Vector3(19.392449, 57.110021, 14.972984))
  Node_ParseIniFile(node38, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_rock_m_01_1a")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2111.604838, 1137.692836, 128.346484), MAT_Vector3(-92.747598, -39.399055, 12.153837))
  Node_ParseIniFile(node39, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_rock_m_01_1c")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1057.493325, 2861.46591, 102.857804), MAT_Vector3(-92.7476, -39.39906, 12.15384))
  Node_ParseIniFile(node40, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2100.839481, 1141.237441, 156.780096), MAT_Vector3(-46.298295, -45.392456, 1.397324))
  Node_ParseIniFile(node41, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_rock_s_01_1c")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1041.179932, 2824.28825, 104.58127), MAT_Vector3(-5.142987, -42.008234, -59.311659))
  Node_ParseIniFile(node42, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_rock_m_01_1b")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1832.637206, 2453.882169, 94.982712), MAT_Vector3(50.977688, -9.745723, 73.329811))
  Node_ParseIniFile(node43, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node44)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node44, node45)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node44, node46)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node46, node47)
  PatrolArea_SetPosition(node47, MAT_Vector3(1815.463862, 1743.722031, 328.409842))
  PatrolArea_SetRadius(node47, 50)
  PatrolArea_SetMinZ(node47, -20)
  PatrolArea_SetMaxZ(node47, 20)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node46, node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node48, node49)
  Position_SetPosition(node49, MAT_Vector3(1844.722754, 1749.66634, 371.999929))
  Position_SetRadius(node49, 5)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node48, node50)
  Position_SetPosition(node50, MAT_Vector3(1908.375701, 1789.636645, 380))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Path", "DockPath_1")
  Node_AddSon(node46, node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node51, node52)
  Position_SetPosition(node52, MAT_Vector3(1921.291869, 1794.19342, 380))
  Position_SetRadius(node52, 5)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node51, node53)
  Position_SetPosition(node53, MAT_Vector3(1974.695414, 1819.207385, 380))
  Position_SetRadius(node53, 5)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node46, node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node54, node55)
  Position_SetPosition(node55, MAT_Vector3(1963.388294, 1884.962354, 380))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node54, node56)
  Position_SetPosition(node56, MAT_Vector3(1852.138548, 1926.553983, 380))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Path", "MerArmadaComeInPlaPath_1")
  Node_AddSon(node46, node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node57, node58)
  Position_SetPosition(node58, MAT_Vector3(1621.688625, 2349.811487, 380))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node57, node59)
  Position_SetPosition(node59, MAT_Vector3(1706.34, 2226.452, 380))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Path", "MerArmadaComeInPlaPath_2")
  Node_AddSon(node46, node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node60, node61)
  Position_SetPosition(node61, MAT_Vector3(1559.504571, 2440.03803, 380))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node60, node62)
  Position_SetPosition(node62, MAT_Vector3(1706.34, 2226.452, 380))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_PatrolArea", "AmiStoneyPatrolArea_1")
  Node_AddSon(node46, node63)
  PatrolArea_SetPosition(node63, MAT_Vector3(1783.40258, 1949.252891, 369.939531))
  PatrolArea_SetRadius(node63, 150)
  PatrolArea_SetMinZ(node63, -40)
  PatrolArea_SetMaxZ(node63, 40)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_PatrolArea", "FirstMerPatrolArea_1")
  Node_AddSon(node46, node64)
  PatrolArea_SetPosition(node64, MAT_Vector3(1458.486269, 2810.583384, 371.172238))
  PatrolArea_SetRadius(node64, 450)
  PatrolArea_SetMinZ(node64, -140)
  PatrolArea_SetMaxZ(node64, 140)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_PatrolArea", "HarvesterPatrolArea_1")
  Node_AddSon(node46, node65)
  PatrolArea_SetPosition(node65, MAT_Vector3(1974.364807, 1693.803984, 371.1722))
  PatrolArea_SetRadius(node65, 750)
  PatrolArea_SetMinZ(node65, -140)
  PatrolArea_SetMaxZ(node65, 140)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_PatrolArea", "AttackNatPatrolArea_1")
  Node_AddSon(node46, node66)
  PatrolArea_SetPosition(node66, MAT_Vector3(1974.365, 1693.804, 371.1722))
  PatrolArea_SetRadius(node66, 2048)
  PatrolArea_SetMinZ(node66, -140)
  PatrolArea_SetMaxZ(node66, 140)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Path", "TechBomberPath_1")
  Node_AddSon(node46, node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node67, node68)
  Position_SetPosition(node68, MAT_Vector3(1711.390309, 1783.06824, 371.256841))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node67, node69)
  Position_SetPosition(node69, MAT_Vector3(1101.188286, 1823.399961, 289.53157))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Path", "TechBomberPath_2")
  Node_AddSon(node46, node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node70, node71)
  Position_SetPosition(node71, MAT_Vector3(1048.141401, 1824.890388, 290.25012))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node70, node72)
  Position_SetPosition(node72, MAT_Vector3(943.270586, 1824.660708, 290.282898))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Path", "TechBomberPath_3")
  Node_AddSon(node46, node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node73, node74)
  Position_SetPosition(node74, MAT_Vector3(847.559285, 1827.592709, 290.2501))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node73, node75)
  Position_SetPosition(node75, MAT_Vector3(722.191064, 1823.097607, 290.2829))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Path", "AmitabPath_1")
  Node_AddSon(node46, node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node76, node77)
  Position_SetPosition(node77, MAT_Vector3(1716.163583, 1810.969193, 371.2568))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node76, node78)
  Position_SetPosition(node78, MAT_Vector3(1269.623234, 1835.43848, 289.5316))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Path", "AmitabPath_2")
  Node_AddSon(node46, node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node79, node80)
  Position_SetPosition(node80, MAT_Vector3(1077.54709, 1853.227185, 371.2568))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node79, node81)
  Position_SetPosition(node81, MAT_Vector3(754.994159, 1861.028045, 289.5316))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Path", "NatEMPPlaPath_1")
  Node_AddSon(node46, node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node82, node83)
  Position_SetPosition(node83, MAT_Vector3(1847.497455, 1810.387116, 371.2568))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node82, node84)
  Position_SetPosition(node84, MAT_Vector3(1101.188, 1823.4, 289.5316))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Path", "BombPath_1")
  Node_AddSon(node46, node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node85, node86)
  Position_SetPosition(node86, MAT_Vector3(1175.718307, 1367.916498, 385.081105))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node85, node87)
  Position_SetPosition(node87, MAT_Vector3(1909.237052, 1640.617709, 389.721606))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node44, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node44, node89)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node44, node90)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node90, node91)
  Body_SetCS(node91, MAT_Vector3(1998.776571, 1870.499496, 380.059609), MAT_Vector3(69.227093, 0, 0))
  Node_ParseIniFile(node91, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node91, 1)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "wng_bomber_1")
  Node_AddSon(node90, node92)
  Body_SetCS(node92, MAT_Vector3(1829.802245, 1851.974428, 380), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node92, "osd/wng/wng_bomber.osd")
  Body_SetFriendOrFoeID(node92, 2)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node90, node93)
  Body_SetCS(node93, MAT_Vector3(1880.832445, 1851.215495, 380), MAT_Vector3(18.018782, 0, 0))
  Node_ParseIniFile(node93, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node93, 3)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "mer_scout2_wide_1")
  Node_AddSon(node90, node94)
  Body_SetCS(node94, MAT_Vector3(1579.845166, 2407.951086, 373.259401), MAT_Vector3(-142.257021, 0, 0))
  Node_ParseIniFile(node94, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_vessel", "mer_scout1_wide_1")
  Node_AddSon(node90, node95)
  Body_SetCS(node95, MAT_Vector3(1398.963611, 2904.980256, 309.696988), MAT_Vector3(-149.361677, 0, 0))
  Node_ParseIniFile(node95, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_waypoint", "nav_attack_1")
  Node_AddSon(node90, node96)
  Body_SetPosition(node96, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node96, 5)
  Node_ParseIniFile(node96, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_waypoint", "nav_attack_2")
  Node_AddSon(node90, node97)
  Body_SetPosition(node97, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node97, 5)
  Node_ParseIniFile(node97, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_vessel", "mer_scout2_wide_2")
  Node_AddSon(node90, node98)
  Body_SetCS(node98, MAT_Vector3(1771.637129, 2282.312228, 374.914712), MAT_Vector3(-160.893736, 0, 0))
  Node_ParseIniFile(node98, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_vessel", "1mer_scout2_wide_2")
  Node_AddSon(node90, node99)
  Body_SetCS(node99, MAT_Vector3(1771.637, 2282.312, 346.84838), MAT_Vector3(-160.8937, 0, 0))
  Node_ParseIniFile(node99, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_vessel", "2mer_scout2_wide_2")
  Node_AddSon(node90, node100)
  Body_SetCS(node100, MAT_Vector3(1613.55966, 1572.672367, 374.9147), MAT_Vector3(-16.101561, 0, 0))
  Node_ParseIniFile(node100, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_vessel", "mer_scout2_wide_3")
  Node_AddSon(node90, node101)
  Body_SetCS(node101, MAT_Vector3(1635.181889, 2204.7951, 340.175905), MAT_Vector3(-146.535226, 0, 0))
  Node_ParseIniFile(node101, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_vessel", "1mer_scout2_wide_3")
  Node_AddSon(node90, node102)
  Body_SetCS(node102, MAT_Vector3(1657.948657, 2218.247863, 315.638416), MAT_Vector3(-146.5352, 0, 0))
  Node_ParseIniFile(node102, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_vessel", "2mer_scout2_wide_3")
  Node_AddSon(node90, node103)
  Body_SetCS(node103, MAT_Vector3(1352.528149, 1959.299665, 340.1759), MAT_Vector3(-146.5352, 0, 0))
  Node_ParseIniFile(node103, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_vessel", "mer_scout1_wide_2")
  Node_AddSon(node90, node104)
  Body_SetCS(node104, MAT_Vector3(1696.212089, 2245.116976, 363.873154), MAT_Vector3(-150.777941, 0, 0))
  Node_ParseIniFile(node104, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_vessel", "1mer_scout1_wide_2")
  Node_AddSon(node90, node105)
  Body_SetCS(node105, MAT_Vector3(1677.114301, 2237.827473, 342.260835), MAT_Vector3(-150.7779, 0, 0))
  Node_ParseIniFile(node105, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_vessel", "2mer_scout1_wide_2")
  Node_AddSon(node90, node106)
  Body_SetCS(node106, MAT_Vector3(1477.442262, 1459.429455, 363.8732), MAT_Vector3(15.506075, 0, 0))
  Node_ParseIniFile(node106, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "mer_scout1_wide_3")
  Node_AddSon(node90, node107)
  Body_SetCS(node107, MAT_Vector3(1729.851684, 2266.170337, 404.497008), MAT_Vector3(-164.259147, 0, 0))
  Node_ParseIniFile(node107, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "1mer_scout1_wide_3")
  Node_AddSon(node90, node108)
  Body_SetCS(node108, MAT_Vector3(1750.657658, 2269.257675, 377.19717), MAT_Vector3(-164.2591, 0, 0))
  Node_ParseIniFile(node108, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "2mer_scout1_wide_3")
  Node_AddSon(node90, node109)
  Body_SetCS(node109, MAT_Vector3(1642.395729, 1966.215418, 404.497), MAT_Vector3(-177.123148, 0, 0))
  Node_ParseIniFile(node109, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "mer_scout1_wide_4")
  Node_AddSon(node90, node110)
  Body_SetCS(node110, MAT_Vector3(1806.787959, 2302.132683, 353.71719), MAT_Vector3(-171.730225, 0, 0))
  Node_ParseIniFile(node110, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "mer_bomber_1")
  Node_AddSon(node90, node111)
  Body_SetCS(node111, MAT_Vector3(1593.004903, 2128.865827, 365.565814), MAT_Vector3(-133.006799, 0, 0))
  Node_ParseIniFile(node111, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "mer_bomber_2")
  Node_AddSon(node90, node112)
  Body_SetCS(node112, MAT_Vector3(1877.293819, 2262.474582, 367.258475), MAT_Vector3(171.089423, 0, 0))
  Node_ParseIniFile(node112, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "wng_bomber_2")
  Node_AddSon(node90, node113)
  Body_SetCS(node113, MAT_Vector3(1814.045883, 1909.405727, 381.097485), MAT_Vector3(46.225436, 0, 0))
  Node_ParseIniFile(node113, "osd/wng/wng_bomber.osd")
  Body_SetFriendOrFoeID(node113, 2)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "wng_stoney_2")
  Node_AddSon(node90, node114)
  Body_SetCS(node114, MAT_Vector3(1836.786522, 1958.72661, 377.156346), MAT_Vector3(55.949617, 0, 0))
  Node_ParseIniFile(node114, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node114, 3)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "mer_strega_1")
  Node_AddSon(node90, node115)
  Body_SetCS(node115, MAT_Vector3(792.038781, 1728.777967, 285.637727), MAT_Vector3(-85.693471, 0, 0))
  Node_ParseIniFile(node115, "osd/mer/mer_strega.osd")
  Body_SetFriendOrFoeID(node115, 7)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "mer_bomb_1")
  Node_AddSon(node90, node116)
  Body_SetCS(node116, MAT_Vector3(793.553262, 1742.369764, 281.478907), MAT_Vector3(-90.329728, 0, 0))
  Node_ParseIniFile(node116, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node116, 5)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "wng_techbomber_1")
  Node_AddSon(node90, node117)
  Body_SetCS(node117, MAT_Vector3(2036.614644, 1830.143601, 189.566587), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node117, 4)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "mer_scout1_emp_cut_1")
  Node_AddSon(node90, node118)
  Body_SetCS(node118, MAT_Vector3(1179.784628, 1853.110622, 287.337825), MAT_Vector3(103.443071, 0, 0))
  Node_ParseIniFile(node118, "osd/mer/mer_scout1_emp_cut.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "mer_scout1_emp_cut_2")
  Node_AddSon(node90, node119)
  Body_SetCS(node119, MAT_Vector3(1145.598393, 1923.554015, 287.3378), MAT_Vector3(142.658338, 0, 0))
  Node_ParseIniFile(node119, "osd/mer/mer_scout1_emp_cut.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "mer_scout2_cut_1")
  Node_AddSon(node90, node120)
  Body_SetCS(node120, MAT_Vector3(1024.119806, 1771.580229, 282.489346), MAT_Vector3(-45.982246, 10, 0))
  Node_ParseIniFile(node120, "osd/mer/mer_scout2_cut.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "mer_scout2_cut_2")
  Node_AddSon(node90, node121)
  Body_SetCS(node121, MAT_Vector3(1011.466473, 1884.335231, 298.555564), MAT_Vector3(-127.998804, -10, 0))
  Node_ParseIniFile(node121, "osd/mer/mer_scout2_cut.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "mer_scout2_wide_4")
  Node_AddSon(node90, node122)
  Body_SetCS(node122, MAT_Vector3(1382.117794, 1551.000716, 399.3944), MAT_Vector3(-45.317619, 0, 0))
  Node_ParseIniFile(node122, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node122, 6)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "mer_scout2_wide_5")
  Node_AddSon(node90, node123)
  Body_SetCS(node123, MAT_Vector3(1540.042, 1536.347, 399.3944), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node123, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node123, 6)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "mer_bomb_2")
  Node_AddSon(node90, node124)
  Body_SetCS(node124, MAT_Vector3(1046.596503, 1741.453101, 281.4789), MAT_Vector3(-91.378189, 0, 0))
  Node_ParseIniFile(node124, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node124, 5)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "wng_techbomber_2")
  Node_AddSon(node90, node125)
  Body_SetCS(node125, MAT_Vector3(1065.574156, 1823.929711, 287.267663), MAT_Vector3(87.533579, 0, 0))
  Node_ParseIniFile(node125, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node125, 4)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_1")
  Node_AddSon(node90, node126)
  Body_SetCS(node126, MAT_Vector3(1058.173681, 1824.01886, 286.798624), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node126, "osd/dir/dir_cammesh_emitter.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "wng_bomber_3")
  Node_AddSon(node90, node127)
  Body_SetCS(node127, MAT_Vector3(1790.707583, 1812.717374, 369.854682), MAT_Vector3(88.34574, 0, 0))
  Node_ParseIniFile(node127, "osd/wng/wng_bomber.osd")
  Body_SetFriendOrFoeID(node127, 2)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "mer_scout2_wide_6")
  Node_AddSon(node90, node128)
  Body_SetCS(node128, MAT_Vector3(1515.658652, 1649.44318, 388.307107), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node128, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "mer_scout2_wide_7")
  Node_AddSon(node90, node129)
  Body_SetCS(node129, MAT_Vector3(1650.281347, 1931.267348, 388.307107), MAT_Vector3(161.440341, 0, 0))
  Node_ParseIniFile(node129, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "mer_scout2_wide_8")
  Node_AddSon(node90, node130)
  Body_SetCS(node130, MAT_Vector3(1477.576697, 1675.582714, 388.307107), MAT_Vector3(-13.130518, 0, 0))
  Node_ParseIniFile(node130, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "mer_scout2_wide_9")
  Node_AddSon(node90, node131)
  Body_SetCS(node131, MAT_Vector3(1732.734602, 1557.546433, 388.307107), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node131, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "mer_scout2_wide_10")
  Node_AddSon(node90, node132)
  Body_SetCS(node132, MAT_Vector3(1087.744988, 2078.392394, 388.307107), MAT_Vector3(-142.227769, 0, 0))
  Node_ParseIniFile(node132, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "mer_bomb_3")
  Node_AddSon(node90, node133)
  Body_SetCS(node133, MAT_Vector3(1160.32085, 1362.455459, 384.814809), MAT_Vector3(-68.277109, 0, 0))
  Node_ParseIniFile(node133, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node133, 6)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_waypoint", "nav_attack_3")
  Node_AddSon(node90, node134)
  Body_SetPosition(node134, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node134, 5)
  Node_ParseIniFile(node134, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node135)
  Camera_SetBackPlane(node135, 1024)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node136)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node136, node137)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node136, node138)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "IntroPosition_1")
  Node_AddSon(node138, node139)
  Position_SetPosition(node139, MAT_Vector3(1591.221415, 2384.951475, 367.477556))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "IntroPosition_2")
  Node_AddSon(node138, node140)
  Position_SetPosition(node140, MAT_Vector3(1815.837307, 1857.437348, 389.2566))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "MerArmadaComeInPosition_1")
  Node_AddSon(node138, node141)
  Position_SetPosition(node141, MAT_Vector3(1650.197539, 2289.942624, 378.516691))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "MerArmadaComeInPosition_2")
  Node_AddSon(node138, node142)
  Position_SetPosition(node142, MAT_Vector3(1750.650749, 2107.671486, 366.8631))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "MerArmadaComeInPosition_3")
  Node_AddSon(node138, node143)
  Position_SetPosition(node143, MAT_Vector3(1973.056192, 1870.654723, 419.480735))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "StregaBombSequencePosition_1")
  Node_AddSon(node138, node144)
  Position_SetPosition(node144, MAT_Vector3(810.518815, 1753.751835, 289.40753))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "StregaBombSequencePosition_2")
  Node_AddSon(node138, node145)
  Position_SetPosition(node145, MAT_Vector3(786.26746, 1753.88073, 289.4075))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Path", "StregaBombSequencePath_1")
  Node_AddSon(node138, node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node146, node147)
  Position_SetPosition(node147, MAT_Vector3(861.557951, 1741.706322, 281.478907))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node146, node148)
  Position_SetPosition(node148, MAT_Vector3(1272.535771, 1740.957156, 291.926424))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "NatGoPosition_1")
  Node_AddSon(node138, node149)
  Position_SetPosition(node149, MAT_Vector3(1931.497487, 1718.435544, 389.2566))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "NatGoPosition_2")
  Node_AddSon(node138, node150)
  Position_SetPosition(node150, MAT_Vector3(1095.867651, 1753.576203, 273.304574))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Path", "NatGoPath_1")
  Node_AddSon(node138, node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node151, node152)
  Position_SetPosition(node152, MAT_Vector3(1084.499181, 1740.857617, 281.4789))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node151, node153)
  Position_SetPosition(node153, MAT_Vector3(1272.536, 1740.957, 291.9264))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "EMPNatPosition_1")
  Node_AddSon(node138, node154)
  Position_SetPosition(node154, MAT_Vector3(1116.676228, 1867.23431, 284.4379))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "EMPNatPosition_2")
  Node_AddSon(node138, node155)
  Position_SetPosition(node155, MAT_Vector3(1810.656793, 1802.712794, 390.029919))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node136, node156)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node156, node157)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Director", "IntroPlayerSteering")
  Node_AddSon(node156, node158)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Director", "MerArmadaComeIn")
  Node_AddSon(node156, node159)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Director", "StregaBomb")
  Node_AddSon(node156, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Director", "GoNat")
  Node_AddSon(node156, node161)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Director", "EMPNat")
  Node_AddSon(node156, node162)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Director", "DieAmitab")
  Node_AddSon(node156, node163)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node136, node164)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node136, node165)
  Node_EnterSimulation(node165)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, F)
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
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, F)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, E)
SetEnemyMatrixElement(6, 1, E)
SetEnemyMatrixElement(7, 1, N)
SetEnemyMatrixElement(8, 1, N)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, F)
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
SetEnemyMatrixElement(0, 3, E)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, N)
SetEnemyMatrixElement(5, 3, N)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, E)
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
SetEnemyMatrixElement(2, 4, F)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, N)
SetEnemyMatrixElement(6, 4, E)
SetEnemyMatrixElement(7, 4, N)
SetEnemyMatrixElement(8, 4, N)
SetEnemyMatrixElement(9, 4, N)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, F)
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, N)
SetEnemyMatrixElement(3, 5, N)
SetEnemyMatrixElement(4, 5, N)
SetEnemyMatrixElement(5, 5, N)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, F)
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
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, E)
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
SetEnemyMatrixElement(1, 7, E)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, E)
SetEnemyMatrixElement(4, 7, N)
SetEnemyMatrixElement(5, 7, F)
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
                                                        if not (o1327.Value ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2102)
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
                                                        if not (o1351.Value == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2102)
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
                                                        if not (o1352.Value == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
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
end, ReCalculate = function()
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
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
  ShieldedBody_MakeInvulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.33)
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
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o31.Value ~= True) then
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
o31 = { [nil] = {}, GetCalculated = function()
  if not (o1320.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o31.SetStateValue(o31.GetCalculated())
end, StartCalculate = function()
  o31["Value"] = o31.GetCalculated()
end, SetStateValue = function(L0)
  if not (o31.Value == L0) then
    o31["Value"] = L0
    CallFunction(o30, "ProcesseStateChange")
  end
end }
o34 = { [nil] = {}, Start = function()
  o34["Value"] = False
  o1352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o34.Value == L0) then
    o34["Value"] = L0
    o1352.ReCalculate()
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
o1274 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_1", "/Scenario_Dynamic/Navigation/DockArea")
o1275 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o1277 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "torpedo_maneater", 2)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 1)
  Body_AddItem(L0.Node, "torpedo_stanley", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  Body_AddItem(L0.Node, "ammo_rocket", 999)
  Body_AddItem(L0.Node, "gun_nailgun", 1)
  CallFunction(o1277, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
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
o1291 = { [nil] = {}, Start = function()
  o1291["Value"] = False
  o1475.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1291.Value == L0) then
    o1291["Value"] = L0
    o1475.ReCalculate()
  end
end }
o1292 = { [nil] = {}, GetCalculated = function()
  if not (o1536.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1292.SetStateValue(o1292.GetCalculated())
end, StartCalculate = function()
  o1292["Value"] = o1292.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1277.Node, o1277.Node, 390)
end, SetStateValue = function(L0)
  if not (o1292.Value == L0) then
    DelayedFunction(3, o1292, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1292.Value == L0) then
    o1292["Value"] = L0
    if not (L0 ~= 1) then
      o1292.ChangeTo1()
    end
  end
end }
o1293 = { [nil] = {}, GetCalculated = function()
  if not (o1478.Value ~= True) then
    if not (o1537.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1293.SetStateValue(o1293.GetCalculated())
end, StartCalculate = function()
  o1293["Value"] = o1293.GetCalculated()
  o3669.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1293.Value == L0) then
    DelayedFunction(3, o1293, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1293.Value == L0) then
    o1293["Value"] = L0
    o3669.ReCalculate()
  end
end }
o1294 = { [nil] = {}, GetCalculated = function()
  if not (o1478.Value ~= True) then
    if not (o1537.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1294.SetStateValue(o1294.GetCalculated())
end, StartCalculate = function()
  o1294["Value"] = o1294.GetCalculated()
  o1602.StartCalculate()
  o1660.StartCalculate()
  o1776.StartCalculate()
  o1834.StartCalculate()
  o1950.StartCalculate()
  o2008.StartCalculate()
  o2124.StartCalculate()
  o2182.StartCalculate()
  o2298.StartCalculate()
  o2356.StartCalculate()
  o2414.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1294.Value == L0) then
    DelayedFunction(4, o1294, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1294.Value == L0) then
    o1294["Value"] = L0
    o1602.ReCalculate()
    o1660.ReCalculate()
    o1776.ReCalculate()
    o1834.ReCalculate()
    o1950.ReCalculate()
    o2008.ReCalculate()
    o2124.ReCalculate()
    o2182.ReCalculate()
    o2298.ReCalculate()
    o2356.ReCalculate()
    o2414.ReCalculate()
  end
end }
o1295 = { [nil] = {}, Start = function()
  o1295["Value"] = False
  o1357.StartCalculate()
  o1414.StartCalculate()
  o2470.StartCalculate()
  o2527.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1295.Value == L0) then
    o1295["Value"] = L0
    o1357.ReCalculate()
    o1414.ReCalculate()
    o2470.ReCalculate()
    o2527.ReCalculate()
  end
end }
o1296 = { [nil] = {}, Start = function()
  o1296["Value"] = False
  o1470.StartCalculate()
  o1530.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1296.Value == L0) then
    o1296["Value"] = L0
    o1470.ReCalculate()
    o1530.ReCalculate()
  end
end }
o1297 = { [nil] = {}, Start = function()
  o1297["Value"] = False
  o3681.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1297.Value == L0) then
    o1297["Value"] = L0
    o3681.ReCalculate()
  end
end }
o1298 = { [nil] = {}, Start = function()
  o1298["Value"] = False
  o2585.StartCalculate()
  o2642.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1298.Value == L0) then
    o1298["Value"] = L0
    o2585.ReCalculate()
    o2642.ReCalculate()
  end
end }
o1299 = { [nil] = {}, Start = function()
  o1299["Value"] = False
  o2643.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1299.Value == L0) then
    o1299["Value"] = L0
    o2643.ReCalculate()
  end
end }
o1300 = { [nil] = {}, Start = function()
  o1300["Value"] = False
  o2586.StartCalculate()
  o2641.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1300.Value == L0) then
    o1300["Value"] = L0
    o2586.ReCalculate()
    o2641.ReCalculate()
  end
end }
o1301 = { [nil] = {}, Start = function()
  o1301["Value"] = False
  o2699.StartCalculate()
  o3693.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1301.Value == L0) then
    o1301["Value"] = L0
    o2699.ReCalculate()
    o3693.ReCalculate()
  end
end }
o1302 = { [nil] = {}, Start = function()
  o1302["Value"] = False
  o3091.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1302.Value == L0) then
    o1302["Value"] = L0
    o3091.ReCalculate()
  end
end }
o1303 = { [nil] = {}, Start = function()
  o1303["Value"] = False
  o2979.StartCalculate()
  o3035.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1303.Value == L0) then
    o1303["Value"] = L0
    o2979.ReCalculate()
    o3035.ReCalculate()
  end
end }
o1304 = { [nil] = {}, Start = function()
  o1304["Value"] = False
  o3090.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1304.Value == L0) then
    o1304["Value"] = L0
    o3090.ReCalculate()
  end
end }
o1305 = { [nil] = {}, Start = function()
  o1305["Value"] = False
  o3705.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1305.Value == L0) then
    o1305["Value"] = L0
    o3705.ReCalculate()
  end
end }
o1306 = { [nil] = {}, Start = function()
  o1306["Value"] = False
  o2754.StartCalculate()
  o2810.StartCalculate()
  o2866.StartCalculate()
  o2922.StartCalculate()
  o2978.StartCalculate()
  o3034.StartCalculate()
  o3147.StartCalculate()
  o3203.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1306.Value == L0) then
    o1306["Value"] = L0
    o2754.ReCalculate()
    o2810.ReCalculate()
    o2866.ReCalculate()
    o2922.ReCalculate()
    o2978.ReCalculate()
    o3034.ReCalculate()
    o3147.ReCalculate()
    o3203.ReCalculate()
  end
end }
o1308 = { [nil] = {}, Start = function()
  o1308["Value"] = False
  o1310.StartCalculate()
  o2469.StartCalculate()
  o3252.StartCalculate()
  o3308.StartCalculate()
  o3364.StartCalculate()
  o3420.StartCalculate()
  o3476.StartCalculate()
  o3532.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1308.Value == L0) then
    o1308["Value"] = L0
    o1310.ReCalculate()
    o2469.ReCalculate()
    o3252.ReCalculate()
    o3308.ReCalculate()
    o3364.ReCalculate()
    o3420.ReCalculate()
    o3476.ReCalculate()
    o3532.ReCalculate()
  end
end }
o1309 = { [nil] = {}, Start = function()
  o1309["Value"] = False
  o2755.StartCalculate()
  o2811.StartCalculate()
  o2867.StartCalculate()
  o2923.StartCalculate()
  o3202.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1309.Value == L0) then
    o1309["Value"] = L0
    o2755.ReCalculate()
    o2811.ReCalculate()
    o2867.ReCalculate()
    o2923.ReCalculate()
    o3202.ReCalculate()
  end
end }
o1310 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1310.SetStateValue(o1310.GetCalculated())
end, StartCalculate = function()
  o1310["Value"] = o1310.GetCalculated()
  o1471.StartCalculate()
  o1531.StartCalculate()
  o1599.StartCalculate()
  o1657.StartCalculate()
  o1715.StartCalculate()
  o1773.StartCalculate()
  o1831.StartCalculate()
  o1889.StartCalculate()
  o1947.StartCalculate()
  o2005.StartCalculate()
  o2063.StartCalculate()
  o2121.StartCalculate()
  o2179.StartCalculate()
  o2237.StartCalculate()
  o2295.StartCalculate()
  o2353.StartCalculate()
  o2411.StartCalculate()
  o2582.StartCalculate()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(0, 1, N)
  SetEnemyMatrixElement(0, 3, N)
  SetEnemyMatrixElement(0, 4, N)
  SetEnemyMatrixElement(6, 1, N)
  SetEnemyMatrixElement(3, 0, N)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o1310.Value == L0) then
    DelayedFunction(2, o1310, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1310.Value == L0) then
    o1310["Value"] = L0
    o1471.ReCalculate()
    o1531.ReCalculate()
    o1599.ReCalculate()
    o1657.ReCalculate()
    o1715.ReCalculate()
    o1773.ReCalculate()
    o1831.ReCalculate()
    o1889.ReCalculate()
    o1947.ReCalculate()
    o2005.ReCalculate()
    o2063.ReCalculate()
    o2121.ReCalculate()
    o2179.ReCalculate()
    o2237.ReCalculate()
    o2295.ReCalculate()
    o2353.ReCalculate()
    o2411.ReCalculate()
    o2582.ReCalculate()
    if not (L0 ~= 1) then
      o1310.ChangeTo1()
    end
  end
end }
o1311 = { [nil] = {}, GetCalculated = function()
  if not (o1319.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1311.SetStateValue(o1311.GetCalculated())
end, StartCalculate = function()
  o1311["Value"] = o1311.GetCalculated()
  o1472.StartCalculate()
  o1532.StartCalculate()
  o1600.StartCalculate()
  o1658.StartCalculate()
  o1716.StartCalculate()
  o1774.StartCalculate()
  o1832.StartCalculate()
  o1890.StartCalculate()
  o1948.StartCalculate()
  o2006.StartCalculate()
  o2064.StartCalculate()
  o2122.StartCalculate()
  o2180.StartCalculate()
  o2238.StartCalculate()
  o2296.StartCalculate()
  o2354.StartCalculate()
  o2412.StartCalculate()
  o2583.StartCalculate()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(0, 1, E)
  SetEnemyMatrixElement(0, 3, E)
  SetEnemyMatrixElement(0, 4, E)
  SetEnemyMatrixElement(6, 1, E)
end, SetStateValue = function(L0)
  if not (o1311.Value == L0) then
    o1311["Value"] = L0
    o1472.ReCalculate()
    o1532.ReCalculate()
    o1600.ReCalculate()
    o1658.ReCalculate()
    o1716.ReCalculate()
    o1774.ReCalculate()
    o1832.ReCalculate()
    o1890.ReCalculate()
    o1948.ReCalculate()
    o2006.ReCalculate()
    o2064.ReCalculate()
    o2122.ReCalculate()
    o2180.ReCalculate()
    o2238.ReCalculate()
    o2296.ReCalculate()
    o2354.ReCalculate()
    o2412.ReCalculate()
    o2583.ReCalculate()
    if not (L0 ~= 1) then
      o1311.ChangeTo1()
    end
  end
end }
o1312 = { [nil] = {}, GetCalculated = function()
  if not (o3591.Value ~= True) then
    if not (o1320.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1312.SetStateValue(o1312.GetCalculated())
end, StartCalculate = function()
  o1312["Value"] = o1312.GetCalculated()
  o1323.StartCalculate()
  o1327.StartCalculate()
  o1473.StartCalculate()
  o1533.StartCalculate()
  o1601.StartCalculate()
  o1659.StartCalculate()
  o1717.StartCalculate()
  o1775.StartCalculate()
  o1833.StartCalculate()
  o1891.StartCalculate()
  o1949.StartCalculate()
  o2007.StartCalculate()
  o2065.StartCalculate()
  o2123.StartCalculate()
  o2181.StartCalculate()
  o2239.StartCalculate()
  o2297.StartCalculate()
  o2355.StartCalculate()
  o2413.StartCalculate()
  o2525.StartCalculate()
  o2584.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1312.Value == L0) then
    DelayedFunction(2, o1312, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1312.Value == L0) then
    o1312["Value"] = L0
    o1323.ReCalculate()
    o1327.ReCalculate()
    o1473.ReCalculate()
    o1533.ReCalculate()
    o1601.ReCalculate()
    o1659.ReCalculate()
    o1717.ReCalculate()
    o1775.ReCalculate()
    o1833.ReCalculate()
    o1891.ReCalculate()
    o1949.ReCalculate()
    o2007.ReCalculate()
    o2065.ReCalculate()
    o2123.ReCalculate()
    o2181.ReCalculate()
    o2239.ReCalculate()
    o2297.ReCalculate()
    o2355.ReCalculate()
    o2413.ReCalculate()
    o2525.ReCalculate()
    o2584.ReCalculate()
  end
end }
o1313 = { [nil] = {}, GetCalculated = function()
  if not (o3591.Value ~= True) then
    if not (o1320.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1313.SetStateValue(o1313.GetCalculated())
end, StartCalculate = function()
  o1313["Value"] = o1313.GetCalculated()
  o1351.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1313.Value == L0) then
    o1313["Value"] = L0
    o1351.ReCalculate()
  end
end }
o1314 = { [nil] = {}, Start = function()
  o1314["Value"] = False
  o2582.StartCalculate()
  o2583.StartCalculate()
  o2584.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1314.Value == L0) then
    o1314["Value"] = L0
    o2582.ReCalculate()
    o2583.ReCalculate()
    o2584.ReCalculate()
  end
end }
o1317 = { [nil] = {}, Start = function()
  o1317["Value"] = False
  o3307.StartCalculate()
  o3363.StartCalculate()
  o3419.StartCalculate()
  o3475.StartCalculate()
  o3531.StartCalculate()
  o3588.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1317.Value == L0) then
    o1317["Value"] = L0
    o3307.ReCalculate()
    o3363.ReCalculate()
    o3419.ReCalculate()
    o3475.ReCalculate()
    o3531.ReCalculate()
    o3588.ReCalculate()
  end
end }
o1318 = { [nil] = {}, Start = function()
  o1318["Value"] = False
  o3251.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1318.Value == L0) then
    o1318["Value"] = L0
    o3251.ReCalculate()
  end
end }
o1319 = { [nil] = {}, Start = function()
  o1319["Value"] = False
  o1311.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1319.Value == L0) then
    o1319["Value"] = L0
    o1311.ReCalculate()
  end
end }
o1320 = { [nil] = {}, Start = function()
  o1320["Value"] = False
  o31.StartCalculate()
  o1312.StartCalculate()
  o1313.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1320.Value == L0) then
    o1320["Value"] = L0
    o31.ReCalculate()
    o1312.ReCalculate()
    o1313.ReCalculate()
  end
end }
o1321 = { [nil] = {}, GetCalculated = function()
  if not (o3590.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1321.SetStateValue(o1321.GetCalculated())
end, StartCalculate = function()
  o1321["Value"] = o1321.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1277.Node, o1277.Node, 400)
  Game_SetWayPoint(GetGameNode(), o3642.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o1321.Value == L0) then
    DelayedFunction(20, o1321, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1321.Value == L0) then
    o1321["Value"] = L0
    if not (L0 ~= 1) then
      o1321.ChangeTo1()
    end
  end
end }
o1322 = { [nil] = {}, Start = function()
  o1322["Value"] = False
  o3722.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1322.Value == L0) then
    o1322["Value"] = L0
    o3722.ReCalculate()
  end
end }
o1323 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1323.SetStateValue(o1323.GetCalculated())
end, StartCalculate = function()
  o1323["Value"] = o1323.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1277.Node, o1277.Node, 402)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o1323.Value == L0) then
    DelayedFunction(5, o1323, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1323.Value == L0) then
    o1323["Value"] = L0
    if not (L0 ~= 1) then
      o1323.ChangeTo1()
    end
  end
end }
o1324 = { [nil] = {}, Start = function()
  o1324["Value"] = False
  o3146.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1324.Value == L0) then
    o1324["Value"] = L0
    o3146.ReCalculate()
  end
end }
o1326 = { [nil] = {}, GetCalculated = function()
  if not (o1478.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1326.SetStateValue(o1326.GetCalculated())
end, StartCalculate = function()
  o1326["Value"] = o1326.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o1593.Node)
end, SetStateValue = function(L0)
  if not (o1326.Value == L0) then
    DelayedFunction(2, o1326, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1326.Value == L0) then
    o1326["Value"] = L0
    if not (L0 ~= 1) then
      o1326.ChangeTo1()
    end
  end
end }
o1327 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1327.SetStateValue(o1327.GetCalculated())
end, StartCalculate = function()
  o1327["Value"] = o1327.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1327.Value == L0) then
    o1327["Value"] = L0
    o2.ReCalculate()
  end
end }
o1351 = { [nil] = {}, GetCalculated = function()
  if not (o1313.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1351.SetStateValue(o1351.GetCalculated())
end, StartCalculate = function()
  o1351["Value"] = o1351.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1351.Value == L0) then
    o1351["Value"] = L0
    o26.ReCalculate()
  end
end }
o1352 = { [nil] = {}, GetCalculated = function()
  if not (o34.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1352.SetStateValue(o1352.GetCalculated())
end, StartCalculate = function()
  o1352["Value"] = o1352.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1352.Value == L0) then
    o1352["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o1355 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1355, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1355, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1355, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0.1)
  CallFunction(o1355, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 13 } }("Code6")
  else
    CallFunction(o1355, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/AmiStoneyPatrolArea_1", "/Scenario_Dynamic/Navigation/AmiStoneyPatrolArea_1" }, 21, 1, "Code7")
  else
    CallFunction(o1355, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1355, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1357.Value ~= True) then
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
o1357 = { [nil] = {}, GetCalculated = function()
  if not (o1295.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1357.SetStateValue(o1357.GetCalculated())
end, StartCalculate = function()
  o1357["Value"] = o1357.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1357.Value == L0) then
    o1357["Value"] = L0
    CallFunction(o1355, "ProcesseStateChange")
  end
end }
S_o1412 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1412, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1412, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1412, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1412, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 13 } }("Code5")
  else
    CallFunction(o1412, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/AmiStoneyPatrolArea_1", "/Scenario_Dynamic/Navigation/AmiStoneyPatrolArea_1" }, 21, 1, "Code6")
  else
    CallFunction(o1412, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1412, "Code7")
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
      if not (o1414.Value ~= True) then
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
o1414 = { [nil] = {}, GetCalculated = function()
  if not (o1295.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1414.SetStateValue(o1414.GetCalculated())
end, StartCalculate = function()
  o1414["Value"] = o1414.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1414.Value == L0) then
    o1414["Value"] = L0
    CallFunction(o1412, "ProcesseStateChange")
  end
end }
S_o1469 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1469, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1469, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1469, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o1469, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1469, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FirstMerPatrolArea_1", "/Scenario_Dynamic/Navigation/FirstMerPatrolArea_1", "/Scenario_Dynamic/Navigation/FirstMerPatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o1469, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o1469, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o1469, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o1469, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1469, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o1476.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1478.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1475.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1470.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1471.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1472.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1473.Value ~= True) then
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
o1470 = { [nil] = {}, GetCalculated = function()
  if not (o1296.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1470.SetStateValue(o1470.GetCalculated())
end, StartCalculate = function()
  o1470["Value"] = o1470.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1470.Value == L0) then
    o1470["Value"] = L0
    CallFunction(o1469, "ProcesseStateChange")
  end
end }
o1471 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1471.SetStateValue(o1471.GetCalculated())
end, StartCalculate = function()
  o1471["Value"] = o1471.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1471.Value == L0) then
    o1471["Value"] = L0
    CallFunction(o1469, "ProcesseStateChange")
  end
end }
o1472 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1472.SetStateValue(o1472.GetCalculated())
end, StartCalculate = function()
  o1472["Value"] = o1472.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1472.Value == L0) then
    o1472["Value"] = L0
    CallFunction(o1469, "ProcesseStateChange")
  end
end }
o1473 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1473.SetStateValue(o1473.GetCalculated())
end, StartCalculate = function()
  o1473["Value"] = o1473.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1473.Value == L0) then
    o1473["Value"] = L0
    CallFunction(o1469, "ProcesseStateChange")
  end
end }
o1475 = { [nil] = {}, GetCalculated = function()
  if not (o1291.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1475.SetStateValue(o1475.GetCalculated())
end, StartCalculate = function()
  o1475["Value"] = o1475.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1475.Value == L0) then
    o1475["Value"] = L0
    CallFunction(o1469, "ProcesseStateChange")
  end
end }
o1476 = { [nil] = {}, Start = function()
  o1476["Value"] = False
  o1534.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1476.Value == L0) then
    o1476["Value"] = L0
    o1534.ReCalculate()
  end
end }
o1478 = { [nil] = {}, Start = function()
  o1478["Value"] = False
  o1293.StartCalculate()
  o1294.StartCalculate()
  o1326.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1478.Value == L0) then
    o1478["Value"] = L0
    o1293.ReCalculate()
    o1294.ReCalculate()
    o1326.ReCalculate()
  end
end }
S_o1529 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1529, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1529, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1529, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FirstMerPatrolArea_1", "/Scenario_Dynamic/Navigation/FirstMerPatrolArea_1", "/Scenario_Dynamic/Navigation/FirstMerPatrolArea_1", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o1529, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1529, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1529, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o1529, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o1529, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Born = function(L0, L1)
  o1536.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1537.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1534.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1530.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1531.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1532.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1533.Value ~= True) then
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
o1530 = { [nil] = {}, GetCalculated = function()
  if not (o1296.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1530.SetStateValue(o1530.GetCalculated())
end, StartCalculate = function()
  o1530["Value"] = o1530.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1530.Value == L0) then
    o1530["Value"] = L0
    CallFunction(o1529, "ProcesseStateChange")
  end
end }
o1531 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1531.SetStateValue(o1531.GetCalculated())
end, StartCalculate = function()
  o1531["Value"] = o1531.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1531.Value == L0) then
    o1531["Value"] = L0
    CallFunction(o1529, "ProcesseStateChange")
  end
end }
o1532 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1532.SetStateValue(o1532.GetCalculated())
end, StartCalculate = function()
  o1532["Value"] = o1532.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1532.Value == L0) then
    o1532["Value"] = L0
    CallFunction(o1529, "ProcesseStateChange")
  end
end }
o1533 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1533.SetStateValue(o1533.GetCalculated())
end, StartCalculate = function()
  o1533["Value"] = o1533.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1533.Value == L0) then
    o1533["Value"] = L0
    CallFunction(o1529, "ProcesseStateChange")
  end
end }
o1534 = { [nil] = {}, GetCalculated = function()
  if not (o1476.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1534.SetStateValue(o1534.GetCalculated())
end, StartCalculate = function()
  o1534["Value"] = o1534.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1534.Value == L0) then
    DelayedFunction(3, o1534, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1534.Value == L0) then
    o1534["Value"] = L0
    CallFunction(o1529, "ProcesseStateChange")
  end
end }
o1536 = { [nil] = {}, Start = function()
  o1536["Value"] = False
  o1292.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1536.Value == L0) then
    o1536["Value"] = L0
    o1292.ReCalculate()
  end
end }
o1537 = { [nil] = {}, Start = function()
  o1537["Value"] = False
  o1293.StartCalculate()
  o1294.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1537.Value == L0) then
    o1537["Value"] = L0
    o1293.ReCalculate()
    o1294.ReCalculate()
  end
end }
S_o1588 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1469.Node)
  CallFunction(o1588, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1529.Node)
  CallFunction(o1593, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1598 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1598, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1598, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1598, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1598, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1598, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1598, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1598, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1605.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1602.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1599.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1600.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1601.Value ~= True) then
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
o1599 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1599.SetStateValue(o1599.GetCalculated())
end, StartCalculate = function()
  o1599["Value"] = o1599.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1599.Value == L0) then
    o1599["Value"] = L0
    CallFunction(o1598, "ProcesseStateChange")
  end
end }
o1600 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1600.SetStateValue(o1600.GetCalculated())
end, StartCalculate = function()
  o1600["Value"] = o1600.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1600.Value == L0) then
    o1600["Value"] = L0
    CallFunction(o1598, "ProcesseStateChange")
  end
end }
o1601 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1601.SetStateValue(o1601.GetCalculated())
end, StartCalculate = function()
  o1601["Value"] = o1601.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1601.Value == L0) then
    o1601["Value"] = L0
    CallFunction(o1598, "ProcesseStateChange")
  end
end }
o1602 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1602.SetStateValue(o1602.GetCalculated())
end, StartCalculate = function()
  o1602["Value"] = o1602.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1602.Value == L0) then
    o1602["Value"] = L0
    CallFunction(o1598, "ProcesseStateChange")
  end
end }
o1605 = { [nil] = {}, Start = function()
  o1605["Value"] = False
  o1718.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1605.Value == L0) then
    o1605["Value"] = L0
    o1718.ReCalculate()
  end
end }
S_o1656 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1656, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1656, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1656, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1656, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1656, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1656, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1656, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1660.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1657.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1658.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1659.Value ~= True) then
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
o1657 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1657.SetStateValue(o1657.GetCalculated())
end, StartCalculate = function()
  o1657["Value"] = o1657.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1657.Value == L0) then
    o1657["Value"] = L0
    CallFunction(o1656, "ProcesseStateChange")
  end
end }
o1658 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1658.SetStateValue(o1658.GetCalculated())
end, StartCalculate = function()
  o1658["Value"] = o1658.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1658.Value == L0) then
    o1658["Value"] = L0
    CallFunction(o1656, "ProcesseStateChange")
  end
end }
o1659 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1659.SetStateValue(o1659.GetCalculated())
end, StartCalculate = function()
  o1659["Value"] = o1659.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1659.Value == L0) then
    o1659["Value"] = L0
    CallFunction(o1656, "ProcesseStateChange")
  end
end }
o1660 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1660.SetStateValue(o1660.GetCalculated())
end, StartCalculate = function()
  o1660["Value"] = o1660.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1660.Value == L0) then
    o1660["Value"] = L0
    CallFunction(o1656, "ProcesseStateChange")
  end
end }
S_o1714 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1714, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1714, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1714, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1714, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1714, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1714, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1714, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1718.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1715.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1716.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1717.Value ~= True) then
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
o1715 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1715.SetStateValue(o1715.GetCalculated())
end, StartCalculate = function()
  o1715["Value"] = o1715.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1715.Value == L0) then
    o1715["Value"] = L0
    CallFunction(o1714, "ProcesseStateChange")
  end
end }
o1716 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1716.SetStateValue(o1716.GetCalculated())
end, StartCalculate = function()
  o1716["Value"] = o1716.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1716.Value == L0) then
    o1716["Value"] = L0
    CallFunction(o1714, "ProcesseStateChange")
  end
end }
o1717 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1717.SetStateValue(o1717.GetCalculated())
end, StartCalculate = function()
  o1717["Value"] = o1717.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1717.Value == L0) then
    o1717["Value"] = L0
    CallFunction(o1714, "ProcesseStateChange")
  end
end }
o1718 = { [nil] = {}, GetCalculated = function()
  if not (o1605.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1718.SetStateValue(o1718.GetCalculated())
end, StartCalculate = function()
  o1718["Value"] = o1718.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1718.Value == L0) then
    DelayedFunction(4, o1718, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1718.Value == L0) then
    o1718["Value"] = L0
    CallFunction(o1714, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1772, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1772, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1772, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1772, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1772, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1779.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1776.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1773.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1774.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1775.Value ~= True) then
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
o1773 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1773.SetStateValue(o1773.GetCalculated())
end, StartCalculate = function()
  o1773["Value"] = o1773.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1773.Value == L0) then
    o1773["Value"] = L0
    CallFunction(o1772, "ProcesseStateChange")
  end
end }
o1774 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
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
o1775 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1775.SetStateValue(o1775.GetCalculated())
end, StartCalculate = function()
  o1775["Value"] = o1775.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1775.Value == L0) then
    o1775["Value"] = L0
    CallFunction(o1772, "ProcesseStateChange")
  end
end }
o1776 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1776.SetStateValue(o1776.GetCalculated())
end, StartCalculate = function()
  o1776["Value"] = o1776.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1776.Value == L0) then
    o1776["Value"] = L0
    CallFunction(o1772, "ProcesseStateChange")
  end
end }
o1779 = { [nil] = {}, Start = function()
  o1779["Value"] = False
  o1892.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1779.Value == L0) then
    o1779["Value"] = L0
    o1892.ReCalculate()
  end
end }
S_o1830 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1830, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1830, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1830, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1830, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1830, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1830, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1830, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1834.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1831.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1832.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1833.Value ~= True) then
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
o1831 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1831.SetStateValue(o1831.GetCalculated())
end, StartCalculate = function()
  o1831["Value"] = o1831.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1831.Value == L0) then
    o1831["Value"] = L0
    CallFunction(o1830, "ProcesseStateChange")
  end
end }
o1832 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1832.SetStateValue(o1832.GetCalculated())
end, StartCalculate = function()
  o1832["Value"] = o1832.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1832.Value == L0) then
    o1832["Value"] = L0
    CallFunction(o1830, "ProcesseStateChange")
  end
end }
o1833 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1833.SetStateValue(o1833.GetCalculated())
end, StartCalculate = function()
  o1833["Value"] = o1833.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1833.Value == L0) then
    o1833["Value"] = L0
    CallFunction(o1830, "ProcesseStateChange")
  end
end }
o1834 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1834.SetStateValue(o1834.GetCalculated())
end, StartCalculate = function()
  o1834["Value"] = o1834.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1834.Value == L0) then
    o1834["Value"] = L0
    CallFunction(o1830, "ProcesseStateChange")
  end
end }
S_o1888 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1888, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1888, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1888, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1888, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1888, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1888, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1888, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1892.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1889.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1890.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1891.Value ~= True) then
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
o1889 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1889.SetStateValue(o1889.GetCalculated())
end, StartCalculate = function()
  o1889["Value"] = o1889.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1889.Value == L0) then
    o1889["Value"] = L0
    CallFunction(o1888, "ProcesseStateChange")
  end
end }
o1890 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1890.SetStateValue(o1890.GetCalculated())
end, StartCalculate = function()
  o1890["Value"] = o1890.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1890.Value == L0) then
    o1890["Value"] = L0
    CallFunction(o1888, "ProcesseStateChange")
  end
end }
o1891 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1891.SetStateValue(o1891.GetCalculated())
end, StartCalculate = function()
  o1891["Value"] = o1891.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1891.Value == L0) then
    o1891["Value"] = L0
    CallFunction(o1888, "ProcesseStateChange")
  end
end }
o1892 = { [nil] = {}, GetCalculated = function()
  if not (o1779.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1892.SetStateValue(o1892.GetCalculated())
end, StartCalculate = function()
  o1892["Value"] = o1892.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1892.Value == L0) then
    DelayedFunction(5, o1892, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1892.Value == L0) then
    o1892["Value"] = L0
    CallFunction(o1888, "ProcesseStateChange")
  end
end }
S_o1946 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1946, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1946, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1946, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o1946, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1946, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o1946, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o1946, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o1953.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1950.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1947.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1948.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1949.Value ~= True) then
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
o1947 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1947.SetStateValue(o1947.GetCalculated())
end, StartCalculate = function()
  o1947["Value"] = o1947.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1947.Value == L0) then
    o1947["Value"] = L0
    CallFunction(o1946, "ProcesseStateChange")
  end
end }
o1948 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1948.SetStateValue(o1948.GetCalculated())
end, StartCalculate = function()
  o1948["Value"] = o1948.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1948.Value == L0) then
    o1948["Value"] = L0
    CallFunction(o1946, "ProcesseStateChange")
  end
end }
o1949 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1949.SetStateValue(o1949.GetCalculated())
end, StartCalculate = function()
  o1949["Value"] = o1949.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1949.Value == L0) then
    o1949["Value"] = L0
    CallFunction(o1946, "ProcesseStateChange")
  end
end }
o1950 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1950.SetStateValue(o1950.GetCalculated())
end, StartCalculate = function()
  o1950["Value"] = o1950.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1950.Value == L0) then
    o1950["Value"] = L0
    CallFunction(o1946, "ProcesseStateChange")
  end
end }
o1953 = { [nil] = {}, Start = function()
  o1953["Value"] = False
  o2066.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1953.Value == L0) then
    o1953["Value"] = L0
    o2066.ReCalculate()
  end
end }
S_o2004 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2004, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2004, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2004, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2004, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2004, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2004, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2004, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2008.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2005.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2006.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2007.Value ~= True) then
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
o2005 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2005.SetStateValue(o2005.GetCalculated())
end, StartCalculate = function()
  o2005["Value"] = o2005.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2005.Value == L0) then
    o2005["Value"] = L0
    CallFunction(o2004, "ProcesseStateChange")
  end
end }
o2006 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2006.SetStateValue(o2006.GetCalculated())
end, StartCalculate = function()
  o2006["Value"] = o2006.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2006.Value == L0) then
    o2006["Value"] = L0
    CallFunction(o2004, "ProcesseStateChange")
  end
end }
o2007 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2007.SetStateValue(o2007.GetCalculated())
end, StartCalculate = function()
  o2007["Value"] = o2007.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2007.Value == L0) then
    o2007["Value"] = L0
    CallFunction(o2004, "ProcesseStateChange")
  end
end }
o2008 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
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
    CallFunction(o2004, "ProcesseStateChange")
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2062, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2062, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2062, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2062, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2062, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2066.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2063.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2064.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2065.Value ~= True) then
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
o2063 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2063.SetStateValue(o2063.GetCalculated())
end, StartCalculate = function()
  o2063["Value"] = o2063.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2063.Value == L0) then
    o2063["Value"] = L0
    CallFunction(o2062, "ProcesseStateChange")
  end
end }
o2064 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
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
o2065 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2065.SetStateValue(o2065.GetCalculated())
end, StartCalculate = function()
  o2065["Value"] = o2065.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2065.Value == L0) then
    o2065["Value"] = L0
    CallFunction(o2062, "ProcesseStateChange")
  end
end }
o2066 = { [nil] = {}, GetCalculated = function()
  if not (o1953.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2066.SetStateValue(o2066.GetCalculated())
end, StartCalculate = function()
  o2066["Value"] = o2066.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2066.Value == L0) then
    o2066["Value"] = L0
    CallFunction(o2062, "ProcesseStateChange")
  end
end }
S_o2120 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2120, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2120, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2120, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2120, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2120, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2120, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2120, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o2127.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2124.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2121.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2122.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2123.Value ~= True) then
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
o2121 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
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
    o2121["Value"] = L0
    CallFunction(o2120, "ProcesseStateChange")
  end
end }
o2122 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2122.SetStateValue(o2122.GetCalculated())
end, StartCalculate = function()
  o2122["Value"] = o2122.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2122.Value == L0) then
    o2122["Value"] = L0
    CallFunction(o2120, "ProcesseStateChange")
  end
end }
o2123 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2123.SetStateValue(o2123.GetCalculated())
end, StartCalculate = function()
  o2123["Value"] = o2123.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2123.Value == L0) then
    o2123["Value"] = L0
    CallFunction(o2120, "ProcesseStateChange")
  end
end }
o2124 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2124.SetStateValue(o2124.GetCalculated())
end, StartCalculate = function()
  o2124["Value"] = o2124.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2124.Value == L0) then
    o2124["Value"] = L0
    CallFunction(o2120, "ProcesseStateChange")
  end
end }
o2127 = { [nil] = {}, Start = function()
  o2127["Value"] = False
  o2240.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2127.Value == L0) then
    o2127["Value"] = L0
    o2240.ReCalculate()
  end
end }
S_o2178 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2178, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2178, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2178, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2178, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2178, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2178, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2178, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2182.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2179.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2180.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2181.Value ~= True) then
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
o2179 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2179.SetStateValue(o2179.GetCalculated())
end, StartCalculate = function()
  o2179["Value"] = o2179.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2179.Value == L0) then
    o2179["Value"] = L0
    CallFunction(o2178, "ProcesseStateChange")
  end
end }
o2180 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2180.SetStateValue(o2180.GetCalculated())
end, StartCalculate = function()
  o2180["Value"] = o2180.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2180.Value == L0) then
    o2180["Value"] = L0
    CallFunction(o2178, "ProcesseStateChange")
  end
end }
o2181 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2181.SetStateValue(o2181.GetCalculated())
end, StartCalculate = function()
  o2181["Value"] = o2181.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2181.Value == L0) then
    o2181["Value"] = L0
    CallFunction(o2178, "ProcesseStateChange")
  end
end }
o2182 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
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
    o2182["Value"] = L0
    CallFunction(o2178, "ProcesseStateChange")
  end
end }
S_o2236 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2236, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2236, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2236, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2236, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2236, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2236, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2236, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2240.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2237.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2238.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2239.Value ~= True) then
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
o2237 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2237.SetStateValue(o2237.GetCalculated())
end, StartCalculate = function()
  o2237["Value"] = o2237.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2237.Value == L0) then
    o2237["Value"] = L0
    CallFunction(o2236, "ProcesseStateChange")
  end
end }
o2238 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
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
    o2238["Value"] = L0
    CallFunction(o2236, "ProcesseStateChange")
  end
end }
o2239 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
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
    o2239["Value"] = L0
    CallFunction(o2236, "ProcesseStateChange")
  end
end }
o2240 = { [nil] = {}, GetCalculated = function()
  if not (o2127.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2240.SetStateValue(o2240.GetCalculated())
end, StartCalculate = function()
  o2240["Value"] = o2240.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2240.Value == L0) then
    DelayedFunction(2, o2240, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2240.Value == L0) then
    o2240["Value"] = L0
    CallFunction(o2236, "ProcesseStateChange")
  end
end }
S_o2294 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2294, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2294, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2294, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2294, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2294, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2294, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2294, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2298.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2295.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2296.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2297.Value ~= True) then
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
  if not (o1310.Value ~= True) then
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
    o2295["Value"] = L0
    CallFunction(o2294, "ProcesseStateChange")
  end
end }
o2296 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2296.SetStateValue(o2296.GetCalculated())
end, StartCalculate = function()
  o2296["Value"] = o2296.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2296.Value == L0) then
    o2296["Value"] = L0
    CallFunction(o2294, "ProcesseStateChange")
  end
end }
o2297 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2297.SetStateValue(o2297.GetCalculated())
end, StartCalculate = function()
  o2297["Value"] = o2297.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2297.Value == L0) then
    o2297["Value"] = L0
    CallFunction(o2294, "ProcesseStateChange")
  end
end }
o2298 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2298.SetStateValue(o2298.GetCalculated())
end, StartCalculate = function()
  o2298["Value"] = o2298.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2298.Value == L0) then
    o2298["Value"] = L0
    CallFunction(o2294, "ProcesseStateChange")
  end
end }
S_o2352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2352, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2352, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2352, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2352, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2352, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2356.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2353.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2354.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
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
o2353 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2353.SetStateValue(o2353.GetCalculated())
end, StartCalculate = function()
  o2353["Value"] = o2353.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2353.Value == L0) then
    o2353["Value"] = L0
    CallFunction(o2352, "ProcesseStateChange")
  end
end }
o2354 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2354.SetStateValue(o2354.GetCalculated())
end, StartCalculate = function()
  o2354["Value"] = o2354.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2354.Value == L0) then
    o2354["Value"] = L0
    CallFunction(o2352, "ProcesseStateChange")
  end
end }
o2355 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
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
    CallFunction(o2352, "ProcesseStateChange")
  end
end }
o2356 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2356.SetStateValue(o2356.GetCalculated())
end, StartCalculate = function()
  o2356["Value"] = o2356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2356.Value == L0) then
    o2356["Value"] = L0
    CallFunction(o2352, "ProcesseStateChange")
  end
end }
S_o2410 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2410, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2410, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2410, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o2410, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2410, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code6")
  else
    CallFunction(o2410, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2410, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2414.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o2411.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2412.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2413.Value ~= True) then
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
o2411 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2411.SetStateValue(o2411.GetCalculated())
end, StartCalculate = function()
  o2411["Value"] = o2411.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2411.Value == L0) then
    o2411["Value"] = L0
    CallFunction(o2410, "ProcesseStateChange")
  end
end }
o2412 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2412.SetStateValue(o2412.GetCalculated())
end, StartCalculate = function()
  o2412["Value"] = o2412.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2412.Value == L0) then
    o2412["Value"] = L0
    CallFunction(o2410, "ProcesseStateChange")
  end
end }
o2413 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2413.SetStateValue(o2413.GetCalculated())
end, StartCalculate = function()
  o2413["Value"] = o2413.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2413.Value == L0) then
    o2413["Value"] = L0
    CallFunction(o2410, "ProcesseStateChange")
  end
end }
o2414 = { [nil] = {}, GetCalculated = function()
  if not (o1294.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2414.SetStateValue(o2414.GetCalculated())
end, StartCalculate = function()
  o2414["Value"] = o2414.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2414.Value == L0) then
    o2414["Value"] = L0
    CallFunction(o2410, "ProcesseStateChange")
  end
end }
S_o2468 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2468, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2468, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2468, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2468, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2468, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2468, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2470.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2469.Value ~= True) then
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
o2469 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2469.SetStateValue(o2469.GetCalculated())
end, StartCalculate = function()
  o2469["Value"] = o2469.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2469.Value == L0) then
    o2469["Value"] = L0
    CallFunction(o2468, "ProcesseStateChange")
  end
end }
o2470 = { [nil] = {}, GetCalculated = function()
  if not (o1295.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2470.SetStateValue(o2470.GetCalculated())
end, StartCalculate = function()
  o2470["Value"] = o2470.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2470.Value == L0) then
    o2470["Value"] = L0
    CallFunction(o2468, "ProcesseStateChange")
  end
end }
S_o2524 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2524, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2524, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2524, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2524, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o2524, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1274, nil, 0, "Code6")
  else
    CallFunction(o2524, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2527.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2525.Value ~= True) then
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
o2525 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2525.SetStateValue(o2525.GetCalculated())
end, StartCalculate = function()
  o2525["Value"] = o2525.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2525.Value == L0) then
    o2525["Value"] = L0
    CallFunction(o2524, "ProcesseStateChange")
  end
end }
o2527 = { [nil] = {}, GetCalculated = function()
  if not (o1295.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2527.SetStateValue(o2527.GetCalculated())
end, StartCalculate = function()
  o2527["Value"] = o2527.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2527.Value == L0) then
    o2527["Value"] = L0
    CallFunction(o2524, "ProcesseStateChange")
  end
end }
S_o2581 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2581, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2581, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2581, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2581, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2581, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2581, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "/Scenario_Dynamic/Navigation/HarvesterPatrolArea_1", "E", "", "", "", 1, "Code7")
  else
    CallFunction(o2581, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o2581, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "E", "", "", "", 1, "Code9")
  else
    CallFunction(o2581, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o2581, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2585.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2586.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2582.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o2583.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2584.Value ~= True) then
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
o2582 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value == True) then
    if not (o1314.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2582.SetStateValue(o2582.GetCalculated())
end, StartCalculate = function()
  o2582["Value"] = o2582.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2582.Value == L0) then
    o2582["Value"] = L0
    CallFunction(o2581, "ProcesseStateChange")
  end
end }
o2583 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value == True) then
    if not (o1314.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2583.SetStateValue(o2583.GetCalculated())
end, StartCalculate = function()
  o2583["Value"] = o2583.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2583.Value == L0) then
    o2583["Value"] = L0
    CallFunction(o2581, "ProcesseStateChange")
  end
end }
o2584 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value == True) then
    if not (o1314.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2584.SetStateValue(o2584.GetCalculated())
end, StartCalculate = function()
  o2584["Value"] = o2584.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2584.Value == L0) then
    o2584["Value"] = L0
    CallFunction(o2581, "ProcesseStateChange")
  end
end }
o2585 = { [nil] = {}, GetCalculated = function()
  if not (o1298.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2585.SetStateValue(o2585.GetCalculated())
end, StartCalculate = function()
  o2585["Value"] = o2585.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2585.Value == L0) then
    o2585["Value"] = L0
    CallFunction(o2581, "ProcesseStateChange")
  end
end }
o2586 = { [nil] = {}, GetCalculated = function()
  if not (o1300.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2586.SetStateValue(o2586.GetCalculated())
end, StartCalculate = function()
  o2586["Value"] = o2586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2586.Value == L0) then
    o2586["Value"] = L0
    CallFunction(o2581, "ProcesseStateChange")
  end
end }
S_o2640 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2640, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2640, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2640, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2640, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2640, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2640, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/StregaBombSequencePath_1", 0.5, 1 } }("Code7")
  else
    CallFunction(o2640, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2640, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2642.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2643.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2641.Value ~= True) then
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
o2641 = { [nil] = {}, GetCalculated = function()
  if not (o1300.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2641.SetStateValue(o2641.GetCalculated())
end, StartCalculate = function()
  o2641["Value"] = o2641.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2641.Value == L0) then
    o2641["Value"] = L0
    CallFunction(o2640, "ProcesseStateChange")
  end
end }
o2642 = { [nil] = {}, GetCalculated = function()
  if not (o1298.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2642.SetStateValue(o2642.GetCalculated())
end, StartCalculate = function()
  o2642["Value"] = o2642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2642.Value == L0) then
    o2642["Value"] = L0
    CallFunction(o2640, "ProcesseStateChange")
  end
end }
o2643 = { [nil] = {}, GetCalculated = function()
  if not (o1299.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2643.SetStateValue(o2643.GetCalculated())
end, StartCalculate = function()
  o2643["Value"] = o2643.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2643.Value == L0) then
    o2643["Value"] = L0
    CallFunction(o2640, "ProcesseStateChange")
  end
end }
S_o2697 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o1274)
  CallFunction(o2697, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2697, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o1274, "Code3")
  else
    CallFunction(o2697, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0, 0.1)
  Vessel_AttackTurrets(L0.Node, "", "", "", "", "")
  CallFunction(o2697, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomberPath_1", 0.6, 1 } }("Code6")
  else
    CallFunction(o2697, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0, 0)
  Body_SetEmpShield(L0.Node, 0.1)
  o1305.SetStateValue(True)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2697, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2699.Value ~= True) then
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
o2699 = { [nil] = {}, GetCalculated = function()
  if not (o1301.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2699.SetStateValue(o2699.GetCalculated())
end, StartCalculate = function()
  o2699["Value"] = o2699.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2699.Value == L0) then
    o2699["Value"] = L0
    CallFunction(o2697, "ProcesseStateChange")
  end
end }
S_o2753 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2753, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2753, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2753, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "dir", "", "", "")
  CallFunction(o2753, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2753, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2753, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2753, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2754.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2755.Value ~= True) then
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
o2754 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2754.SetStateValue(o2754.GetCalculated())
end, StartCalculate = function()
  o2754["Value"] = o2754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2754.Value == L0) then
    o2754["Value"] = L0
    CallFunction(o2753, "ProcesseStateChange")
  end
end }
o2755 = { [nil] = {}, GetCalculated = function()
  if not (o1309.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2755.SetStateValue(o2755.GetCalculated())
end, StartCalculate = function()
  o2755["Value"] = o2755.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2755.Value == L0) then
    o2755["Value"] = L0
    CallFunction(o2753, "ProcesseStateChange")
  end
end }
S_o2809 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2809, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2809, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2809, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "dir", "", "", "")
  CallFunction(o2809, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2809, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2809, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2809, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2810.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2811.Value ~= True) then
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
o2810 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2810.SetStateValue(o2810.GetCalculated())
end, StartCalculate = function()
  o2810["Value"] = o2810.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2810.Value == L0) then
    o2810["Value"] = L0
    CallFunction(o2809, "ProcesseStateChange")
  end
end }
o2811 = { [nil] = {}, GetCalculated = function()
  if not (o1309.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2811.SetStateValue(o2811.GetCalculated())
end, StartCalculate = function()
  o2811["Value"] = o2811.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2811.Value == L0) then
    o2811["Value"] = L0
    CallFunction(o2809, "ProcesseStateChange")
  end
end }
S_o2865 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2865, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2865, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2865, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "dir", "", "", "")
  CallFunction(o2865, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2865, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2865, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2865, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2866.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2867.Value ~= True) then
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
o2866 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2866.SetStateValue(o2866.GetCalculated())
end, StartCalculate = function()
  o2866["Value"] = o2866.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2866.Value == L0) then
    o2866["Value"] = L0
    CallFunction(o2865, "ProcesseStateChange")
  end
end }
o2867 = { [nil] = {}, GetCalculated = function()
  if not (o1309.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2867.SetStateValue(o2867.GetCalculated())
end, StartCalculate = function()
  o2867["Value"] = o2867.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2867.Value == L0) then
    o2867["Value"] = L0
    CallFunction(o2865, "ProcesseStateChange")
  end
end }
S_o2921 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2921, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2921, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2921, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "dir", "", "", "")
  CallFunction(o2921, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2921, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2921, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2921, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2922.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2923.Value ~= True) then
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
o2922 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2922.SetStateValue(o2922.GetCalculated())
end, StartCalculate = function()
  o2922["Value"] = o2922.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2922.Value == L0) then
    o2922["Value"] = L0
    CallFunction(o2921, "ProcesseStateChange")
  end
end }
o2923 = { [nil] = {}, GetCalculated = function()
  if not (o1309.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2923.SetStateValue(o2923.GetCalculated())
end, StartCalculate = function()
  o2923["Value"] = o2923.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2923.Value == L0) then
    o2923["Value"] = L0
    CallFunction(o2921, "ProcesseStateChange")
  end
end }
S_o2977 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2977, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2977, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2977, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetBullet(L0.Node, "bul_empactor_p", 0.12)
  CallFunction(o2977, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_techbomber", "", "", "", 1, "Code5")
  else
    CallFunction(o2977, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2977, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2979.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2978.Value ~= True) then
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
o2978 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2978.SetStateValue(o2978.GetCalculated())
end, StartCalculate = function()
  o2978["Value"] = o2978.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2978.Value == L0) then
    o2978["Value"] = L0
    CallFunction(o2977, "ProcesseStateChange")
  end
end }
o2979 = { [nil] = {}, GetCalculated = function()
  if not (o1303.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2979.SetStateValue(o2979.GetCalculated())
end, StartCalculate = function()
  o2979["Value"] = o2979.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2979.Value == L0) then
    o2979["Value"] = L0
    CallFunction(o2977, "ProcesseStateChange")
  end
end }
S_o3033 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3033, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3033, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3033, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Gun_SetBullet(L0.Node, "bul_empactor_p", 0.12)
  CallFunction(o3033, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_techbomber", "", "", "", 1, "Code5")
  else
    CallFunction(o3033, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3033, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3035.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3034.Value ~= True) then
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
o3034 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3034.SetStateValue(o3034.GetCalculated())
end, StartCalculate = function()
  o3034["Value"] = o3034.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3034.Value == L0) then
    o3034["Value"] = L0
    CallFunction(o3033, "ProcesseStateChange")
  end
end }
o3035 = { [nil] = {}, GetCalculated = function()
  if not (o1303.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3035.SetStateValue(o3035.GetCalculated())
end, StartCalculate = function()
  o3035["Value"] = o3035.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3035.Value == L0) then
    o3035["Value"] = L0
    CallFunction(o3033, "ProcesseStateChange")
  end
end }
S_o3089 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3089, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3089, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3089, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/NatGoPath_1", 0.5, 2 } }("Code4")
  else
    CallFunction(o3089, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3089, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3091.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3090.Value ~= True) then
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
o3090 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3090.SetStateValue(o3090.GetCalculated())
end, StartCalculate = function()
  o3090["Value"] = o3090.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3090.Value == L0) then
    o3090["Value"] = L0
    CallFunction(o3089, "ProcesseStateChange")
  end
end }
o3091 = { [nil] = {}, GetCalculated = function()
  if not (o1302.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3091.SetStateValue(o3091.GetCalculated())
end, StartCalculate = function()
  o3091["Value"] = o3091.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3091.Value == L0) then
    o3091["Value"] = L0
    CallFunction(o3089, "ProcesseStateChange")
  end
end }
S_o3145 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3145, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3145, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3145, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3145, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  Body_SetEmpShield(L0.Node, 0.2)
  CallFunction(o3145, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomberPath_3", 1, 2 } }("Code7")
  else
    CallFunction(o3145, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3145, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3147.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3146.Value ~= True) then
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
o3146 = { [nil] = {}, GetCalculated = function()
  if not (o1324.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3146.SetStateValue(o3146.GetCalculated())
end, StartCalculate = function()
  o3146["Value"] = o3146.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3146.Value == L0) then
    o3146["Value"] = L0
    CallFunction(o3145, "ProcesseStateChange")
  end
end }
o3147 = { [nil] = {}, GetCalculated = function()
  if not (o1306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3147.SetStateValue(o3147.GetCalculated())
end, StartCalculate = function()
  o3147["Value"] = o3147.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3147.Value == L0) then
    o3147["Value"] = L0
    CallFunction(o3145, "ProcesseStateChange")
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3201, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3201, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3203.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
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
  if not (o1309.Value ~= True) then
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
  if not (o1306.Value ~= True) then
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
  Body_SetKineticShield(L0.Node, 0, 1)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  ShieldedBody_SetShieldBarrier(L0.Node, 0.24, 1)
  CallFunction(o3249, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AmitabPath_1", 1, 1 } }("Code7")
  else
    CallFunction(o3249, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  o1322.SetStateValue(True)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3249, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AmitabPath_2", 1, 1 } }("Code10")
  else
    CallFunction(o3249, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  ShieldedBody_SetShieldBarrier(L0.Node, 0, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3249, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3252.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o3251.Value ~= True) then
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
o3251 = { [nil] = {}, GetCalculated = function()
  if not (o1318.Value ~= True) then
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
o3252 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3252.SetStateValue(o3252.GetCalculated())
end, StartCalculate = function()
  o3252["Value"] = o3252.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3252.Value == L0) then
    o3252["Value"] = L0
    CallFunction(o3249, "ProcesseStateChange")
  end
end }
S_o3306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_bomber", "", "", "", 1, "Code4")
  else
    CallFunction(o3306, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3306, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3308.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3307.Value ~= True) then
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
o3307 = { [nil] = {}, GetCalculated = function()
  if not (o1317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3307.SetStateValue(o3307.GetCalculated())
end, StartCalculate = function()
  o3307["Value"] = o3307.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3307.Value == L0) then
    o3307["Value"] = L0
    CallFunction(o3306, "ProcesseStateChange")
  end
end }
o3308 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3308.SetStateValue(o3308.GetCalculated())
end, StartCalculate = function()
  o3308["Value"] = o3308.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3308.Value == L0) then
    o3308["Value"] = L0
    CallFunction(o3306, "ProcesseStateChange")
  end
end }
S_o3362 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3362, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3362, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3362, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_bomber", "", "", "", 1, "Code4")
  else
    CallFunction(o3362, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3362, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3364.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3363.Value ~= True) then
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
o3363 = { [nil] = {}, GetCalculated = function()
  if not (o1317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3363.SetStateValue(o3363.GetCalculated())
end, StartCalculate = function()
  o3363["Value"] = o3363.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3363.Value == L0) then
    o3363["Value"] = L0
    CallFunction(o3362, "ProcesseStateChange")
  end
end }
o3364 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3364.SetStateValue(o3364.GetCalculated())
end, StartCalculate = function()
  o3364["Value"] = o3364.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3364.Value == L0) then
    o3364["Value"] = L0
    CallFunction(o3362, "ProcesseStateChange")
  end
end }
S_o3418 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3418, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3418, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3418, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_bomber", "", "", "", 1, "Code4")
  else
    CallFunction(o3418, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3418, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3420.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3419.Value ~= True) then
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
o3419 = { [nil] = {}, GetCalculated = function()
  if not (o1317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3419.SetStateValue(o3419.GetCalculated())
end, StartCalculate = function()
  o3419["Value"] = o3419.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3419.Value == L0) then
    o3419["Value"] = L0
    CallFunction(o3418, "ProcesseStateChange")
  end
end }
o3420 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3420.SetStateValue(o3420.GetCalculated())
end, StartCalculate = function()
  o3420["Value"] = o3420.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3420.Value == L0) then
    o3420["Value"] = L0
    CallFunction(o3418, "ProcesseStateChange")
  end
end }
S_o3474 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3474, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3474, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3474, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_bomber", "", "", "", 1, "Code4")
  else
    CallFunction(o3474, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3474, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3476.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3475.Value ~= True) then
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
o3475 = { [nil] = {}, GetCalculated = function()
  if not (o1317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3475.SetStateValue(o3475.GetCalculated())
end, StartCalculate = function()
  o3475["Value"] = o3475.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3475.Value == L0) then
    o3475["Value"] = L0
    CallFunction(o3474, "ProcesseStateChange")
  end
end }
o3476 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3476.SetStateValue(o3476.GetCalculated())
end, StartCalculate = function()
  o3476["Value"] = o3476.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3476.Value == L0) then
    o3476["Value"] = L0
    CallFunction(o3474, "ProcesseStateChange")
  end
end }
S_o3530 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3530, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3530, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3530, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "/Scenario_Dynamic/Navigation/AttackNatPatrolArea_1", "wng_bomber", "", "", "", 1, "Code4")
  else
    CallFunction(o3530, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3530, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3532.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3531.Value ~= True) then
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
o3531 = { [nil] = {}, GetCalculated = function()
  if not (o1317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3531.SetStateValue(o3531.GetCalculated())
end, StartCalculate = function()
  o3531["Value"] = o3531.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3531.Value == L0) then
    o3531["Value"] = L0
    CallFunction(o3530, "ProcesseStateChange")
  end
end }
o3532 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3532.SetStateValue(o3532.GetCalculated())
end, StartCalculate = function()
  o3532["Value"] = o3532.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3532.Value == L0) then
    o3532["Value"] = L0
    CallFunction(o3530, "ProcesseStateChange")
  end
end }
S_o3586 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3586, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3586, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3586, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3586, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BombPath_1", 1, 2 } }("Code5")
  else
    CallFunction(o3586, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o1320.SetStateValue(True)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3586, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Born = function(L0, L1)
  o3590.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o3591.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3588.Value ~= True) then
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
o3588 = { [nil] = {}, GetCalculated = function()
  if not (o1317.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3588.SetStateValue(o3588.GetCalculated())
end, StartCalculate = function()
  o3588["Value"] = o3588.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3588.Value == L0) then
    o3588["Value"] = L0
    CallFunction(o3586, "ProcesseStateChange")
  end
end }
o3590 = { [nil] = {}, Start = function()
  o3590["Value"] = False
  o1321.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3590.Value == L0) then
    o3590["Value"] = L0
    o1321.ReCalculate()
  end
end }
o3591 = { [nil] = {}, Start = function()
  o3591["Value"] = False
  o1312.StartCalculate()
  o1313.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3591.Value == L0) then
    o3591["Value"] = L0
    o1312.ReCalculate()
    o1313.ReCalculate()
  end
end }
S_o3642 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3586.Node)
  CallFunction(o3642, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3647 = { [nil] = {}, Start = function(L0)

end }
S_o3648 = { [nil] = {}, Start = function(L0)

end }
S_o3649 = { [nil] = {}, Start = function(L0)

end }
S_o3650 = { [nil] = {}, Start = function(L0)

end }
S_o3651 = { [nil] = {}, Start = function(L0)

end }
S_o3652 = { [nil] = {}, Start = function(L0)

end }
S_o3653 = { [nil] = {}, Start = function(L0)

end }
S_o3654 = { [nil] = {}, Start = function(L0)

end }
S_o3655 = { [nil] = {}, Start = function(L0)

end }
S_o3656 = { [nil] = {}, Start = function(L0)

end }
S_o3657 = { [nil] = {}, Start = function(L0)

end }
S_o3658 = { [nil] = {}, Start = function(L0)

end }
S_o3659 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "track3")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.5)
  CallFunction(o3659, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3659, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3659, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.8, "Code9")
  else
    CallFunction(o3659, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1277.Node, o1277.Node, 389)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_1", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mer_scout2_wide_1", 2, "MMMN", 0)
  CallFunction(o3659, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code13")
  else
    CallFunction(o3659, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_Cut(L0.Node, 1)
  CallFunction(o3659, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code15")
  else
    CallFunction(o3659, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Director_EndCutscene(L0.Node)
  CallFunction(o3659, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code17")
  else
    CallFunction(o3659, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Game_SetWayPoint(GetGameNode(), o1588.Node)
  o1291.SetStateValue(True)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o3659, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3666 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o1276, o1275, "/Scenario_Dynamic/Navigation/PlaPath_1", "pos_1", "pos_2", 1, 1, "Code1")
  else
    CallFunction(o3666, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3668 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3668, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(0, 1, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3668, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o3668, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o1295.SetStateValue(True)
  FormationLib.PlaceFormationPath(o1276, o1275, "/Scenario_Dynamic/Navigation/MerArmadaComeInPlaPath_1")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/MerArmadaComeInPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/MerArmadaComeInPosition_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3668, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code12")
  else
    CallFunction(o3668, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_Cut(L0.Node, 1)
  CallFunction(o3668, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code14")
  else
    CallFunction(o3668, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/MerArmadaComeInPosition_3", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/MerArmadaComeInPosition_2", 0, "MMMN", 0)
  CallFunction(o3668, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code17")
  else
    CallFunction(o3668, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/MerArmadaComeInPosition_2", 8, "MMMN", 0)
  CallFunction(o3668, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code19")
  else
    CallFunction(o3668, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_Cut(L0.Node, 1)
  CallFunction(o3668, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code21")
  else
    CallFunction(o3668, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  FormationLib.PlaceFormationPath(o1276, o1275, "/Scenario_Dynamic/Navigation/MerArmadaComeInPlaPath_2")
  CallFunction(o3668, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code24")
  else
    CallFunction(o3668, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Director_EndCutscene(L0.Node)
  o1296.SetStateValue(True)
  CallFunction(o3668, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code27")
  else
    CallFunction(o3668, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  SetEnemyMatrixElement(0, 1, E)
  SendRadioMessageTake(o1277.Node, o1277.Node, 391)
  CallFunction(o3668, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 40, "Code30")
  else
    CallFunction(o3668, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  o1297.SetStateValue(True)
  CallFunction(o3668, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3669.Value ~= True) then
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
o3669 = { [nil] = {}, GetCalculated = function()
  if not (o1293.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3669.SetStateValue(o3669.GetCalculated())
end, StartCalculate = function()
  o3669["Value"] = o3669.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3669.Value == L0) then
    o3669["Value"] = L0
    CallFunction(o3668, "ProcesseStateChange")
  end
end }
S_o3680 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3680, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track5")
  SetEnemyMatrixElement(0, 1, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3680, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code6")
  else
    CallFunction(o3680, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  o1298.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/StregaBombSequencePosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mer_bomb_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  SendRadioMessageTake(o1277.Node, o1277.Node, 392)
  CallFunction(o3680, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code13")
  else
    CallFunction(o3680, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/StregaBombSequencePosition_2", 6, "MMMN", 0)
  CallFunction(o3680, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code15")
  else
    CallFunction(o3680, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o1299.SetStateValue(True)
  CallFunction(o3680, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code17")
  else
    CallFunction(o3680, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o3680, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.7, "Code19")
  else
    CallFunction(o3680, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_Cut(L0.Node, 1)
  CallFunction(o3680, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code21")
  else
    CallFunction(o3680, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  o1300.SetStateValue(True)
  CallFunction(o3680, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code23")
  else
    CallFunction(o3680, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Director_EndCutscene(L0.Node)
  CallFunction(o3680, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code25")
  else
    CallFunction(o3680, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  SetEnemyMatrixElement(0, 1, E)
  CallFunction(o3680, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 13, "Code27")
  else
    CallFunction(o3680, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  o1301.SetStateValue(True)
  CallFunction(o3680, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3681.Value ~= True) then
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
o3681 = { [nil] = {}, GetCalculated = function()
  if not (o1297.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3681.SetStateValue(o3681.GetCalculated())
end, StartCalculate = function()
  o3681["Value"] = o3681.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3681.Value == L0) then
    o3681["Value"] = L0
    CallFunction(o3680, "ProcesseStateChange")
  end
end }
S_o3692 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3692, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(0, 1, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3692, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o3692, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o1303.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/NatGoPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_techbomber_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3692, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code11")
  else
    CallFunction(o3692, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SendRadioMessageTake(o1277.Node, o1277.Node, 393)
  o1302.SetStateValue(True)
  CallFunction(o3692, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3692, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_Cut(L0.Node, 1)
  CallFunction(o3692, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code16")
  else
    CallFunction(o3692, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/NatGoPosition_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mer_bomb_2", 0, "MMMN", 0)
  CallFunction(o3692, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code19")
  else
    CallFunction(o3692, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_Cut(L0.Node, 1)
  CallFunction(o3692, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code21")
  else
    CallFunction(o3692, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  o1304.SetStateValue(True)
  CallFunction(o3692, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code23")
  else
    CallFunction(o3692, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Director_EndCutscene(L0.Node)
  CallFunction(o3692, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code25")
  else
    CallFunction(o3692, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  SetEnemyMatrixElement(0, 1, E)
  CallFunction(o3692, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code27")
  else
    CallFunction(o3692, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  SendRadioMessageTake(o1277.Node, o1277.Node, 394)
  CallFunction(o3692, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3693.Value ~= True) then
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
o3693 = { [nil] = {}, GetCalculated = function()
  if not (o1301.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3693.SetStateValue(o3693.GetCalculated())
end, StartCalculate = function()
  o3693["Value"] = o3693.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3693.Value == L0) then
    DelayedFunction(2, o3693, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3693.Value == L0) then
    o3693["Value"] = L0
    CallFunction(o3692, "ProcesseStateChange")
  end
end }
S_o3704 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3704, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(0, 1, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3704, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o3704, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  o1306.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/EMPNatPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_techbomber_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3704, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o3704, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  o1324.SetStateValue(True)
  CallFunction(o3704, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code14")
  else
    CallFunction(o3704, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  SendRadioMessageTake(o1277.Node, o1277.Node, 395)
  Game_PlayMusic(GetGameNode(), "track5")
  CallFunction(o3704, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code17")
  else
    CallFunction(o3704, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_Cut(L0.Node, 1)
  CallFunction(o3704, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code19")
  else
    CallFunction(o3704, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  o1308.SetStateValue(True)
  CallFunction(o3704, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.4, "Code22")
  else
    CallFunction(o3704, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Game_PlayMusic(GetGameNode(), "track3")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/EMPNatPosition_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_bomber_3", 0, "MMMN", 0)
  CallFunction(o3704, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.8, "Code26")
  else
    CallFunction(o3704, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  SendRadioMessageTake(o1277.Node, o1277.Node, 396)
  CallFunction(o3704, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code28")
  else
    CallFunction(o3704, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_techbomber_2", 2, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/EMPNatPosition_1", 3, "MMMN", 0)
  CallFunction(o3704, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code31")
  else
    CallFunction(o3704, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code32")
  else
    CallFunction(o3704, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_Cut(L0.Node, 1)
  CallFunction(o3704, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code34")
  else
    CallFunction(o3704, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  o1309.SetStateValue(True)
  FormationLib.PlaceFormationPath(o1276, o1275, "/Scenario_Dynamic/Navigation/NatEMPPlaPath_1")
  CallFunction(o3704, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code37")
  else
    CallFunction(o3704, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  Director_EndCutscene(L0.Node)
  CallFunction(o3704, "Code38")
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code39")
  else
    CallFunction(o3704, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  SendRadioMessageTake(o1277.Node, o1277.Node, 397)
  CallFunction(o3704, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code41")
  else
    CallFunction(o3704, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  o1314.SetStateValue(True)
  CallFunction(o3704, "Code42")
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
end }, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3705.Value ~= True) then
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
o3705 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3705.SetStateValue(o3705.GetCalculated())
end, StartCalculate = function()
  o3705["Value"] = o3705.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3705.Value == L0) then
    o3705["Value"] = L0
    CallFunction(o3704, "ProcesseStateChange")
  end
end }
S_o3721 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3721, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3721, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3721, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/wng_bomber_3", 0, "RBTN", 30)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_bomber_3", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3721, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.8, "Code9")
  else
    CallFunction(o3721, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o1277.Node, o1277.Node, 398)
  Game_PlayMusic(GetGameNode(), "track6")
  CallFunction(o3721, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code12")
  else
    CallFunction(o3721, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  o1318.SetStateValue(True)
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o3721, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code15")
  else
    CallFunction(o3721, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  o1317.SetStateValue(True)
  CallFunction(o3721, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code17")
  else
    CallFunction(o3721, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_Cut(L0.Node, 1)
  CallFunction(o3721, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code19")
  else
    CallFunction(o3721, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Director_EndCutscene(L0.Node)
  CallFunction(o3721, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code21")
  else
    CallFunction(o3721, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  SendRadioMessageTake(o1277.Node, o1277.Node, 399)
  CallFunction(o3721, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code23")
  else
    CallFunction(o3721, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  o1319.SetStateValue(True)
  CallFunction(o3721, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3722.Value ~= True) then
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
o3722 = { [nil] = {}, GetCalculated = function()
  if not (o1322.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3722.SetStateValue(o3722.GetCalculated())
end, StartCalculate = function()
  o3722["Value"] = o3722.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3722.Value == L0) then
    o3722["Value"] = L0
    CallFunction(o3721, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 165)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_static_1", S_o30)
  o34.Start()
  o78 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalithx_m_01_1", S_o78)
  o124 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o124)
  o170 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o170)
  o216 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o216)
  o262 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o262)
  o308 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o308)
  o354 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1a", S_o354)
  o400 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1b", S_o400)
  o446 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o446)
  o492 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1a", S_o492)
  o538 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1b", S_o538)
  o584 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o584)
  o630 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1a", S_o630)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1b", S_o676)
  o722 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1c", S_o722)
  o768 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o768)
  o814 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o814)
  o860 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o860)
  o906 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o906)
  o952 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1a", S_o952)
  o998 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o998)
  o1044 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1a", S_o1044)
  o1090 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1c", S_o1090)
  o1136 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o1136)
  o1182 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1c", S_o1182)
  o1228 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1b", S_o1228)
  o1277 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1277)
  o1291.Start()
  o1295.Start()
  o1296.Start()
  o1297.Start()
  o1298.Start()
  o1299.Start()
  o1300.Start()
  o1301.Start()
  o1302.Start()
  o1303.Start()
  o1304.Start()
  o1305.Start()
  o1306.Start()
  o1308.Start()
  o1309.Start()
  o1314.Start()
  o1317.Start()
  o1318.Start()
  o1319.Start()
  o1320.Start()
  o1322.Start()
  o1324.Start()
  o1355 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bomber_1", S_o1355)
  o1412 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o1412)
  o1469 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_1", S_o1469)
  o1476.Start()
  o1478.Start()
  o1529 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_1", S_o1529)
  o1536.Start()
  o1537.Start()
  o1588 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_1", S_o1588)
  o1593 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_2", S_o1593)
  o1598 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_2", S_o1598)
  o1605.Start()
  o1656 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1mer_scout2_wide_2", S_o1656)
  o1714 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2mer_scout2_wide_2", S_o1714)
  o1772 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_3", S_o1772)
  o1779.Start()
  o1830 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1mer_scout2_wide_3", S_o1830)
  o1888 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2mer_scout2_wide_3", S_o1888)
  o1946 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_2", S_o1946)
  o1953.Start()
  o2004 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1mer_scout1_wide_2", S_o2004)
  o2062 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2mer_scout1_wide_2", S_o2062)
  o2120 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_3", S_o2120)
  o2127.Start()
  o2178 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "1mer_scout1_wide_3", S_o2178)
  o2236 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "2mer_scout1_wide_3", S_o2236)
  o2294 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_4", S_o2294)
  o2352 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_1", S_o2352)
  o2410 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_2", S_o2410)
  o2468 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bomber_2", S_o2468)
  o2524 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_2", S_o2524)
  o2581 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_strega_1", S_o2581)
  o2640 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_1", S_o2640)
  o2697 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_1", S_o2697)
  o2753 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_emp_cut_1", S_o2753)
  o2809 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_emp_cut_2", S_o2809)
  o2865 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_cut_1", S_o2865)
  o2921 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_cut_2", S_o2921)
  o2977 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_4", S_o2977)
  o3033 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_5", S_o3033)
  o3089 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_2", S_o3089)
  o3145 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_2", S_o3145)
  o3201 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_emitter_1", S_o3201)
  o3249 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bomber_3", S_o3249)
  o3306 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_6", S_o3306)
  o3362 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_7", S_o3362)
  o3418 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_8", S_o3418)
  o3474 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_9", S_o3474)
  o3530 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_10", S_o3530)
  o3586 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_3", S_o3586)
  o3590.Start()
  o3591.Start()
  o3642 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_3", S_o3642)
  o3647 = BindEasy(Node_Find("/"), "Camera", S_o3647)
  o3648 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_1", S_o3648)
  o3649 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_2", S_o3649)
  o3650 = BindEasy(Node_Find("/InGameSequences/Navigation"), "MerArmadaComeInPosition_1", S_o3650)
  o3651 = BindEasy(Node_Find("/InGameSequences/Navigation"), "MerArmadaComeInPosition_2", S_o3651)
  o3652 = BindEasy(Node_Find("/InGameSequences/Navigation"), "MerArmadaComeInPosition_3", S_o3652)
  o3653 = BindEasy(Node_Find("/InGameSequences/Navigation"), "StregaBombSequencePosition_1", S_o3653)
  o3654 = BindEasy(Node_Find("/InGameSequences/Navigation"), "StregaBombSequencePosition_2", S_o3654)
  o3655 = BindEasy(Node_Find("/InGameSequences/Navigation"), "NatGoPosition_1", S_o3655)
  o3656 = BindEasy(Node_Find("/InGameSequences/Navigation"), "NatGoPosition_2", S_o3656)
  o3657 = BindEasy(Node_Find("/InGameSequences/Navigation"), "EMPNatPosition_1", S_o3657)
  o3658 = BindEasy(Node_Find("/InGameSequences/Navigation"), "EMPNatPosition_2", S_o3658)
  o3659 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o3659)
  o3666 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroPlayerSteering", S_o3666)
  o3668 = BindEasy(Node_Find("/InGameSequences/Director"), "MerArmadaComeIn", S_o3668)
  o3680 = BindEasy(Node_Find("/InGameSequences/Director"), "StregaBomb", S_o3680)
  o3692 = BindEasy(Node_Find("/InGameSequences/Director"), "GoNat", S_o3692)
  o3704 = BindEasy(Node_Find("/InGameSequences/Director"), "EMPNat", S_o3704)
  o3721 = BindEasy(Node_Find("/InGameSequences/Director"), "DieAmitab", S_o3721)
  o1276 = { {}, o1277 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
