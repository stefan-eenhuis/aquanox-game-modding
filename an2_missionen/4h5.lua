-- dekompiliert aus 4h5.sco
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
  Game_LoadTextTable(node0, "dat/sty/de/minfo_4h5.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_4H5.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_orden.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_tears.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension1.sam", 4)
  Game_LoadMusic(node0, "sfx/sample/music/music_mute.sam", 5)
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
  Body_SetFriendOrFoeID(node8, 2)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_rays", "fx_rays_4H4_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_rays/fx_rays_4H4.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_sky", "fx_sky_4H4_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_sky/fx_sky_4H4.osd")
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
  Body_SetCS(node13, MAT_Vector3(1873.924, 785.7912, 169.3681), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node14, MAT_Vector3(2062.607, 823.6128, 129.7988), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node15, MAT_Vector3(1462.415, 1951.62, 143.6973), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node16, MAT_Vector3(1515.205, 1183.024, 156.1276), MAT_Vector3(-6.662292, -1.149282, 4.255062))
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
  Body_SetCS(node17, MAT_Vector3(1558.953, 2684.316, 85.24347), MAT_Vector3(-155.166, -1.149282, 4.255062))
  Node_ParseIniFile(node17, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1464.837, 2602.581, 111.2485), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1a")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1623.237, 1211.101, 162.8915), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1b")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1636.712, 2718.818, 122.7683), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1473.958, 2660.47, 99.52169), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1a")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1381.899, 1928.468, 198.6388), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1b")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2005.661, 841.2777, 133.8629), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1598.914, 1230.605, 178.8187), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1a")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(1401.497, 1958.743, 180.0504), MAT_Vector3(59.1774, 18.38563, 10.42877))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1b")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(1601.037, 1152.821, 154.2643), MAT_Vector3(-7.761447, 21.2001, 27.00485))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1c")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1830.045, 786.6142, 160.8933), MAT_Vector3(-34.2724, 24.8924, 2.429863))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1620.773, 2658.208, 117.1749), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1533.687, 1949.914, 159.1751), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1015.282, 2881.161, 104.3752), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2090.385, 1099.124, 137.3049), MAT_Vector3(-65.794, 33.4626, -88.29021))
  Node_ParseIniFile(node31, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_rock_l_01_1a")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1903.533, 2487.665, 111.8451), MAT_Vector3(163.8256, 43.36829, 124.7945))
  Node_ParseIniFile(node32, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2090.213, 1172.444, 133.484), MAT_Vector3(19.39245, 57.11002, 14.97298))
  Node_ParseIniFile(node33, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_rock_m_01_1a")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2111.605, 1137.693, 128.3465), MAT_Vector3(-92.7476, -39.39906, 12.15384))
  Node_ParseIniFile(node34, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_rock_m_01_1c")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1057.493, 2861.466, 102.8578), MAT_Vector3(-92.7476, -39.39906, 12.15384))
  Node_ParseIniFile(node35, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2100.839, 1141.237, 156.7801), MAT_Vector3(-46.29829, -45.39246, 1.397324))
  Node_ParseIniFile(node36, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_rock_s_01_1c")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1041.18, 2824.288, 104.5813), MAT_Vector3(-5.142987, -42.00823, -59.31166))
  Node_ParseIniFile(node37, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_rock_m_01_1b")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1832.637, 2453.882, 94.98271), MAT_Vector3(50.97769, -9.745723, 73.32981))
  Node_ParseIniFile(node38, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node39)
  Node_ParseIniFile(node39, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node39, "map/4H4/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node40)
  Node_ParseIniFile(node40, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node40, "map/4H4/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node41)
  Node_ParseIniFile(node41, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node41, "map/4H4/Terrain/org_seetang.tga")
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node42)
  Node_ParseIniFile(node42, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node42, "map/4H4/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node43)
  Node_ParseIniFile(node43, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node43, "map/4H4/Terrain/org_stone_l.tga")
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
  node47 = Node_CreateNode("NOD_Path", "AngelinaPath_1")
  Node_AddSon(node46, node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node47, node48)
  Position_SetPosition(node48, MAT_Vector3(1843.997093, 1333.636282, 380.2676))
  Position_SetRadius(node48, 5)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node47, node49)
  Position_SetPosition(node49, MAT_Vector3(1698.566037, 1024.897261, 381.8213))
  Position_SetRadius(node49, 5)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node47, node50)
  Position_SetPosition(node50, MAT_Vector3(1924.672748, 1124.702155, 348.356744))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node47, node51)
  Position_SetPosition(node51, MAT_Vector3(2084.276571, 1440.10869, 330.725206))
  Position_SetRadius(node51, 5)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_PatrolArea", "PlaPatrolArea_1")
  Node_AddSon(node46, node52)
  PatrolArea_SetPosition(node52, MAT_Vector3(1585.049491, 1022.052035, 273.202292))
  PatrolArea_SetRadius(node52, 512)
  PatrolArea_SetMinZ(node52, -220)
  PatrolArea_SetMaxZ(node52, 220)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_PatrolArea", "APatrolArea_1")
  Node_AddSon(node46, node53)
  PatrolArea_SetPosition(node53, MAT_Vector3(2298.100845, 1550.521918, 273.2023))
  PatrolArea_SetRadius(node53, 312)
  PatrolArea_SetMinZ(node53, -220)
  PatrolArea_SetMaxZ(node53, 220)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Path", "Amer_scout1_wide_4_Path_1")
  Node_AddSon(node46, node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node54, node55)
  Position_SetPosition(node55, MAT_Vector3(1862.927208, 898.130375, 352.226345))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node54, node56)
  Position_SetPosition(node56, MAT_Vector3(2219.31449, 1319.147926, 344.557964))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Path", "Amer_scout1_wide_3_Path_1")
  Node_AddSon(node46, node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node57, node58)
  Position_SetPosition(node58, MAT_Vector3(1862.183169, 898.430471, 393.132205))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node57, node59)
  Position_SetPosition(node59, MAT_Vector3(2280.234959, 1276.005619, 369.021335))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Path", "Amer_scout2_wide_2_Path_1")
  Node_AddSon(node46, node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node60, node61)
  Position_SetPosition(node61, MAT_Vector3(1833.350467, 907.338633, 393.1322))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node60, node62)
  Position_SetPosition(node62, MAT_Vector3(2169.164866, 1334.506736, 369.0213))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Path", "Amer_bomber_1_Path_1")
  Node_AddSon(node46, node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node63, node64)
  Position_SetPosition(node64, MAT_Vector3(1803.484189, 915.888002, 393.1322))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node63, node65)
  Position_SetPosition(node65, MAT_Vector3(2188.850098, 1325.692183, 427.713986))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Path", "Amer_scout2_wide_1_Path_1")
  Node_AddSon(node46, node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node66, node67)
  Position_SetPosition(node67, MAT_Vector3(1782.128105, 960.902474, 393.1322))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node66, node68)
  Position_SetPosition(node68, MAT_Vector3(2152.242412, 1359.384803, 311.894943))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Path", "Amer_scout1_wide_1_Path_1")
  Node_AddSon(node46, node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node69, node70)
  Position_SetPosition(node70, MAT_Vector3(1756.963329, 954.922853, 396.58112))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node69, node71)
  Position_SetPosition(node71, MAT_Vector3(2121.320402, 1362.679714, 283.13272))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Path", "Amer_scout1_wide_2_Path_1")
  Node_AddSon(node46, node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node72, node73)
  Position_SetPosition(node73, MAT_Vector3(1756.963, 954.9229, 359.221889))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node72, node74)
  Position_SetPosition(node74, MAT_Vector3(2085.023535, 1377.77227, 283.1327))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Path", "Amer_scout2_wide_3_Path_1")
  Node_AddSon(node46, node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node75, node76)
  Position_SetPosition(node76, MAT_Vector3(1728.923666, 956.242486, 359.2219))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node75, node77)
  Position_SetPosition(node77, MAT_Vector3(2058.613086, 1399.954249, 283.1327))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Path", "mer_bomb_1_Path_1")
  Node_AddSon(node46, node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node78, node79)
  Position_SetPosition(node79, MAT_Vector3(1605.263131, 993.371946, 374.737941))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node78, node80)
  Position_SetPosition(node80, MAT_Vector3(1858.624204, 1408.7925, 385.265501))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Path", "mer_scout1_wide_3_Path_1")
  Node_AddSon(node46, node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node81, node82)
  Position_SetPosition(node82, MAT_Vector3(1463.379807, 959.85388, 396.006239))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node81, node83)
  Position_SetPosition(node83, MAT_Vector3(1363.571744, 1009.93922, 377.403175))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Path", "mer_scout1_wide_4_Path_1")
  Node_AddSon(node46, node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node84, node85)
  Position_SetPosition(node85, MAT_Vector3(1463.38, 959.8539, 358.216464))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node84, node86)
  Position_SetPosition(node86, MAT_Vector3(1366.716242, 1046.18239, 350.241827))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Path", "mer_scout2_wide_2_Path_1")
  Node_AddSon(node46, node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node87, node88)
  Position_SetPosition(node88, MAT_Vector3(1493.092431, 964.599082, 334.648881))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node87, node89)
  Position_SetPosition(node89, MAT_Vector3(1374.455468, 1066.656539, 350.2418))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Path", "mer_scout2_wide_1_Path_1")
  Node_AddSon(node46, node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node90, node91)
  Position_SetPosition(node91, MAT_Vector3(1620.240471, 940.115059, 334.6489))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node90, node92)
  Position_SetPosition(node92, MAT_Vector3(1481.709629, 1014.415967, 350.2418))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Path", "mer_scout1_wide_1_Path_1")
  Node_AddSon(node46, node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(1652.669757, 927.570356, 395.617972))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node93, node95)
  Position_SetPosition(node95, MAT_Vector3(1481.71, 1014.416, 427.688999))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Path", "mer_scout1_wide_2_Path_1")
  Node_AddSon(node46, node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node96, node97)
  Position_SetPosition(node97, MAT_Vector3(1652.67, 927.5704, 375.844247))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node96, node98)
  Position_SetPosition(node98, MAT_Vector3(1481.71, 1014.416, 406.267434))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Path", "mer_scout2_wide_3_Path_1")
  Node_AddSon(node46, node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node99, node100)
  Position_SetPosition(node100, MAT_Vector3(1688.461312, 917.217989, 375.8442))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node99, node101)
  Position_SetPosition(node101, MAT_Vector3(1472.814118, 978.411238, 406.2674))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Path", "mer_bomber_1_Path_1")
  Node_AddSon(node46, node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node102, node103)
  Position_SetPosition(node103, MAT_Vector3(1649.855675, 1385.892617, 352.780271))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node102, node104)
  Position_SetPosition(node104, MAT_Vector3(1405.503893, 1293.505529, 290.029517))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Path", "mer_bomber_2_Path_1")
  Node_AddSon(node46, node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node105, node106)
  Position_SetPosition(node106, MAT_Vector3(1883.753671, 1290.89511, 352.7803))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node105, node107)
  Position_SetPosition(node107, MAT_Vector3(1974.062247, 1101.42822, 290.0295))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Path", "ABombPath_1")
  Node_AddSon(node46, node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node108, node109)
  Position_SetPosition(node109, MAT_Vector3(2507.198912, 1691.191527, 377.2084))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node108, node110)
  Position_SetPosition(node110, MAT_Vector3(2013.221933, 1612.581211, 373.9448))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node44, node111)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node44, node112)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node112, node113)
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetPosition(node113, MAT_Vector3(1818.865108, 1364.51392, 383.577292))
  Trigger_SetPresenceSphere(node113, 50)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2")
  Node_AddSon(node112, node114)
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetPosition(node114, MAT_Vector3(2300.365456, 1551.107136, 301.869941))
  Trigger_SetPresenceSphere(node114, 350)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node44, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node115, node116)
  Body_SetCS(node116, MAT_Vector3(1987.581164, 1872.582837, 378.514357), MAT_Vector3(73.2009, 0, 0))
  Node_ParseIniFile(node116, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node116, 1)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "wng_angelina_1")
  Node_AddSon(node115, node117)
  Body_SetCS(node117, MAT_Vector3(1856.254767, 1364.984033, 382.546651), MAT_Vector3(160.169865, 0, 0))
  Node_ParseIniFile(node117, "osd/wng/wng_angelina.osd")
  Body_SetFriendOrFoeID(node117, 2)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "mer_bomb_l_1")
  Node_AddSon(node115, node118)
  Body_SetCS(node118, MAT_Vector3(1598.569442, 900.837878, 379.859221), MAT_Vector3(-5.663331, 0, 0))
  Node_ParseIniFile(node118, "osd/mer/mer_bomb_l.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "mer_bomber_1")
  Node_AddSon(node115, node119)
  Body_SetCS(node119, MAT_Vector3(1575.420959, 887.893645, 390.486645), MAT_Vector3(-6.822164, 0, 0))
  Node_ParseIniFile(node119, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "mer_bomber_2")
  Node_AddSon(node115, node120)
  Body_SetCS(node120, MAT_Vector3(1617.539677, 883.357539, 391.667469), MAT_Vector3(-5.260457, 0, 0))
  Node_ParseIniFile(node120, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "mer_scout2_wide_1")
  Node_AddSon(node115, node121)
  Body_SetCS(node121, MAT_Vector3(1648.530105, 881.144408, 379.859221), MAT_Vector3(-3.629101, 0, 0))
  Node_ParseIniFile(node121, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "mer_scout2_wide_2")
  Node_AddSon(node115, node122)
  Body_SetCS(node122, MAT_Vector3(1545.239403, 889.361159, 379.859221), MAT_Vector3(-3.952254, 0, 0))
  Node_ParseIniFile(node122, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "mer_scout2_wide_3")
  Node_AddSon(node115, node123)
  Body_SetCS(node123, MAT_Vector3(1691.390398, 877.647364, 379.8592), MAT_Vector3(-3.629101, 0, 0))
  Node_ParseIniFile(node123, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_vessel", "mer_scout1_wide_1")
  Node_AddSon(node115, node124)
  Body_SetCS(node124, MAT_Vector3(1670.870575, 877.645679, 396.390769), MAT_Vector3(-7.25781, 0, 0))
  Node_ParseIniFile(node124, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vessel", "mer_scout1_wide_2")
  Node_AddSon(node115, node125)
  Body_SetCS(node125, MAT_Vector3(1670.539708, 877.164677, 362.146847), MAT_Vector3(-2.735533, 0, 0))
  Node_ParseIniFile(node125, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vessel", "mer_scout1_wide_3")
  Node_AddSon(node115, node126)
  Body_SetCS(node126, MAT_Vector3(1520.057037, 891.993102, 397.571594), MAT_Vector3(-0.074346, 0, 0))
  Node_ParseIniFile(node126, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vessel", "mer_scout1_wide_4")
  Node_AddSon(node115, node127)
  Body_SetCS(node127, MAT_Vector3(1520.848167, 891.358059, 355.061862), MAT_Vector3(2.537049, 0, 0))
  Node_ParseIniFile(node127, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vessel", "Amer_bomber_1")
  Node_AddSon(node115, node128)
  Body_SetCS(node128, MAT_Vector3(1796.016017, 865.79548, 390.4866), MAT_Vector3(-6.822164, 0, 0))
  Node_ParseIniFile(node128, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vessel", "Amer_scout2_wide_1")
  Node_AddSon(node115, node129)
  Body_SetCS(node129, MAT_Vector3(1767.686435, 866.471169, 379.8592), MAT_Vector3(-3.629101, 0, 0))
  Node_ParseIniFile(node129, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vessel", "Amer_scout2_wide_2")
  Node_AddSon(node115, node130)
  Body_SetCS(node130, MAT_Vector3(1828.757695, 867.001527, 379.8592), MAT_Vector3(-3.952254, 0, 0))
  Node_ParseIniFile(node130, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vessel", "Amer_scout2_wide_3")
  Node_AddSon(node115, node131)
  Body_SetCS(node131, MAT_Vector3(1726.888468, 876.454648, 379.8592), MAT_Vector3(-3.629101, 0, 0))
  Node_ParseIniFile(node131, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vessel", "Amer_scout1_wide_1")
  Node_AddSon(node115, node132)
  Body_SetCS(node132, MAT_Vector3(1741.386292, 868.622325, 396.3908), MAT_Vector3(-7.25781, 0, 0))
  Node_ParseIniFile(node132, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vessel", "Amer_scout1_wide_2")
  Node_AddSon(node115, node133)
  Body_SetCS(node133, MAT_Vector3(1741.861356, 867.970792, 362.1468), MAT_Vector3(-2.735533, 0, 0))
  Node_ParseIniFile(node133, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vessel", "Amer_scout1_wide_3")
  Node_AddSon(node115, node134)
  Body_SetCS(node134, MAT_Vector3(1848.155172, 863.350686, 397.5716), MAT_Vector3(-0.074346, 0, 0))
  Node_ParseIniFile(node134, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vessel", "Amer_scout1_wide_4")
  Node_AddSon(node115, node135)
  Body_SetCS(node135, MAT_Vector3(1847.673145, 862.651993, 355.0619), MAT_Vector3(2.537049, 0, 0))
  Node_ParseIniFile(node135, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_waypoint", "nav_attack_1")
  Node_AddSon(node115, node136)
  Body_SetPosition(node136, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node136, 5)
  Node_ParseIniFile(node136, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node115, node137)
  Body_SetPosition(node137, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node137, 5)
  Node_ParseIniFile(node137, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vessel", "Amer_bomb_1")
  Node_AddSon(node115, node138)
  Body_SetCS(node138, MAT_Vector3(2525.671, 1693.096, 375.9077), MAT_Vector3(98.72363, 0, 0))
  Node_ParseIniFile(node138, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "Amer_bomber_2")
  Node_AddSon(node115, node139)
  Body_SetCS(node139, MAT_Vector3(2572.678, 1667.169, 385.7946), MAT_Vector3(98.64776, 0, 0))
  Node_ParseIniFile(node139, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vessel", "Amer_bomber_3")
  Node_AddSon(node115, node140)
  Body_SetCS(node140, MAT_Vector3(2557.397, 1725.129, 386.1167), MAT_Vector3(97.85172, 0, 0))
  Node_ParseIniFile(node140, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node141)
  Camera_SetBackPlane(node141, 1024)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node142)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node142, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node142, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Path", "IntroPlaPath_1")
  Node_AddSon(node144, node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node145, node146)
  Position_SetPosition(node146, MAT_Vector3(2082.815996, 1855.933949, 380.26758))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node145, node147)
  Position_SetPosition(node147, MAT_Vector3(2178.530119, 1820.553409, 381.821267))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node145, node148)
  Position_SetPosition(node148, MAT_Vector3(2151.687147, 1729.767741, 382.98763))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Path", "IntroPlaPath_2")
  Node_AddSon(node144, node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node149, node150)
  Position_SetPosition(node150, MAT_Vector3(1962.610567, 1397.31837, 314.629684))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node149, node151)
  Position_SetPosition(node151, MAT_Vector3(1903.842127, 1372.264099, 380.2676))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node149, node152)
  Position_SetPosition(node152, MAT_Vector3(1882.134368, 1321.880736, 381.8213))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "IntroPosition_1")
  Node_AddSon(node144, node153)
  Position_SetPosition(node153, MAT_Vector3(2129.26057, 1787.646689, 386.55456))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "IntroPosition_2")
  Node_AddSon(node144, node154)
  Position_SetPosition(node154, MAT_Vector3(2107.103904, 1714.498017, 386.5546))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "IntroPosition_3")
  Node_AddSon(node144, node155)
  Position_SetPosition(node155, MAT_Vector3(1894.622782, 1426.410577, 430.375493))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "IntroPosition_3_1")
  Node_AddSon(node144, node156)
  Position_SetPosition(node156, MAT_Vector3(1875.645709, 1434.081008, 430.3755))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "IntroPosition_4")
  Node_AddSon(node144, node157)
  Position_SetPosition(node157, MAT_Vector3(1885.179984, 1400.475576, 407.25455))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "IntroPosition_5")
  Node_AddSon(node144, node158)
  Position_SetPosition(node158, MAT_Vector3(1879.217313, 1380.074465, 380.384935))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "IntroPosition_6")
  Node_AddSon(node144, node159)
  Position_SetPosition(node159, MAT_Vector3(1599.387456, 779.532037, 380.3849))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Path", "ABombPath_1")
  Node_AddSon(node144, node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node160, node161)
  Position_SetPosition(node161, MAT_Vector3(2274.429904, 1644.852984, 377.208372))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node160, node162)
  Position_SetPosition(node162, MAT_Vector3(2050.997607, 1598.701618, 373.944802))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "APosition_1")
  Node_AddSon(node144, node163)
  Position_SetPosition(node163, MAT_Vector3(2338.633699, 1668.181166, 393.038004))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "APosition_2")
  Node_AddSon(node144, node164)
  Position_SetPosition(node164, MAT_Vector3(2274.776739, 1655.741799, 389.640538))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "APosition_3")
  Node_AddSon(node144, node165)
  Position_SetPosition(node165, MAT_Vector3(2645.180082, 1703.515884, 421.928657))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "APosition_4")
  Node_AddSon(node144, node166)
  Position_SetPosition(node166, MAT_Vector3(2222.933656, 1550.539997, 375.249869))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "APosition_5")
  Node_AddSon(node144, node167)
  Position_SetPosition(node167, MAT_Vector3(2183.75709, 1572.615505, 342.242592))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "APosition_6")
  Node_AddSon(node144, node168)
  Position_SetPosition(node168, MAT_Vector3(2233.938177, 1532.647482, 375.2499))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Path", "AStregaPath_1")
  Node_AddSon(node144, node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node169, node170)
  Position_SetPosition(node170, MAT_Vector3(2576.836056, 1690.599255, 402.007914))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node169, node171)
  Position_SetPosition(node171, MAT_Vector3(2050.998, 1598.702, 399.925243))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Path", "AStregaPath_2")
  Node_AddSon(node144, node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node172, node173)
  Position_SetPosition(node173, MAT_Vector3(2404.875729, 1714.301462, 410.218028))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node172, node174)
  Position_SetPosition(node174, MAT_Vector3(2331.198892, 1844.312491, 373.9448))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node172, node175)
  Position_SetPosition(node175, MAT_Vector3(2243.117527, 1785.176784, 373.503783))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node172, node176)
  Position_SetPosition(node176, MAT_Vector3(2222.084602, 1642.515933, 371.37651))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Path", "AAngelinaPath_1")
  Node_AddSon(node144, node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node177, node178)
  Position_SetPosition(node178, MAT_Vector3(2325.392897, 1748.408876, 392.833524))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node177, node179)
  Position_SetPosition(node179, MAT_Vector3(2360.776555, 1566.11021, 372.439137))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Path", "AAngelinaPath_2")
  Node_AddSon(node144, node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node180, node181)
  Position_SetPosition(node181, MAT_Vector3(2207.73657, 1650.559989, 406.263233))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node180, node182)
  Position_SetPosition(node182, MAT_Vector3(2363.890759, 1677.415961, 406.077149))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Path", "AAngelinaPath_3")
  Node_AddSon(node144, node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node183, node184)
  Position_SetPosition(node184, MAT_Vector3(2149.070875, 1561.326394, 412.855837))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node183, node185)
  Position_SetPosition(node185, MAT_Vector3(2444.356819, 1689.191045, 406.0771))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Path", "APlayerPath_1")
  Node_AddSon(node144, node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node186, node187)
  Position_SetPosition(node187, MAT_Vector3(1796.571706, 1526.729838, 380.2676))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node186, node188)
  Position_SetPosition(node188, MAT_Vector3(1805.72959, 1460.023205, 381.8213))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Path", "APlayerPath_2")
  Node_AddSon(node144, node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node189, node190)
  Position_SetPosition(node190, MAT_Vector3(2243.271899, 1427.028572, 375.315302))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node189, node191)
  Position_SetPosition(node191, MAT_Vector3(2242.663663, 1488.686103, 376.254717))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node142, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node192, node193)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Director", "IntroSteeringPlayer")
  Node_AddSon(node192, node194)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Director", "AngelinaDying")
  Node_AddSon(node192, node195)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node142, node196)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node142, node197)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "mer_strega_1")
  Node_AddSon(node197, node198)
  Body_SetCS(node198, MAT_Vector3(2630.155393, 1701.583667, 403.9759), MAT_Vector3(100.111179, -0.260827, 0.289015))
  Node_ParseIniFile(node198, "osd/mer/mer_strega.osd")
  Body_SetFriendOrFoeID(node198, 0)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "mer_strega_2")
  Node_AddSon(node197, node199)
  Body_SetCS(node199, MAT_Vector3(2447.265484, 1692.252345, 408.424016), MAT_Vector3(100.1112, -0.260827, 0.289015))
  Node_ParseIniFile(node199, "osd/mer/mer_strega.osd")
  Body_SetFriendOrFoeID(node199, 0)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "mer_bomb_1")
  Node_AddSon(node197, node200)
  Body_SetCS(node200, MAT_Vector3(2415.549607, 1664.085309, 375.9077), MAT_Vector3(98.72363, 0, 0))
  Node_ParseIniFile(node200, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node200, 0)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "mer_bomber_1")
  Node_AddSon(node197, node201)
  Body_SetCS(node201, MAT_Vector3(2454.817983, 1640.082291, 385.7946), MAT_Vector3(98.64776, 0, 0))
  Node_ParseIniFile(node201, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node201, 0)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "mer_bomber_2")
  Node_AddSon(node197, node202)
  Body_SetCS(node202, MAT_Vector3(2445.310381, 1702.343832, 386.1167), MAT_Vector3(97.85172, 0, 0))
  Node_ParseIniFile(node202, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node202, 0)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "wng_angelina_1")
  Node_AddSon(node197, node203)
  Body_SetCS(node203, MAT_Vector3(2185.693066, 1646.686744, 402.440124), MAT_Vector3(-77.345449, 0, 0))
  Node_ParseIniFile(node203, "osd/wng/wng_angelina_cut.osd")
  Body_SetFriendOrFoeID(node203, 0)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "wng_angelina_2")
  Node_AddSon(node197, node204)
  Body_SetCS(node204, MAT_Vector3(2316.055621, 1791.811123, 394.201036), MAT_Vector3(-169.159084, 0, 0))
  Node_ParseIniFile(node204, "osd/wng/wng_angelina_cut.osd")
  Body_SetFriendOrFoeID(node204, 0)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "Depot")
  Node_AddSon(node197, node205)
  Body_SetCS(node205, MAT_Vector3(2335.843274, 1680.686104, 200.025428), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node205, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node205, 0)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_vessel", "mer_scout2_wide_1")
  Node_AddSon(node197, node206)
  Body_SetCS(node206, MAT_Vector3(2473.272037, 1776.960182, 390.11018), MAT_Vector3(144.218029, -20, 0))
  Node_ParseIniFile(node206, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node206, 0)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_vessel", "mer_scout2_wide_2")
  Node_AddSon(node197, node207)
  Body_SetCS(node207, MAT_Vector3(2235.632079, 1424.704494, 250.7605), MAT_Vector3(14.038938, 0, 0))
  Node_ParseIniFile(node207, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node207, 0)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
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
SetEnemyMatrixElement(2, 1, F)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
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
o3 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (o1317.Value ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
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
end, ReCalculate = function()
  o3.SetStateValue(o3.GetCalculated())
end, StartCalculate = function()
  o3["Value"] = o3.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 2)
end, SetStateValue = function(L0)
  if not (o3.Value == L0) then
    o3["Value"] = L0
    if not (L0 ~= 1) then
      o3.ChangeTo1()
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
                                                        if not (o1340.Value == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
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
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (o1341.Value == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
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
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o30, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o34.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
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
  if not (o1340.Value ~= True) then
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
  o1341.StartCalculate()
end, SetStateValue = function(L0)
  if not (o34.Value == L0) then
    o34["Value"] = L0
    o1341.ReCalculate()
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
o1275 = FormationLib.CreateFormation("Row", "", "", "", 20, 20)
o1276 = FormationLib.CreateFormation("Row", "", "", "", 20, 20)
S_o1278 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1278, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1278, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1278, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "mer_bomb_l_1", "", "", "", False, False, True)
  CallFunction(o1278, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1278, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1278, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1283.SetStateValue(L1)
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
o1283 = { [nil] = {}, Start = function()
  o1283["Value"] = False
  o1460.StartCalculate()
  o1519.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1283.Value == L0) then
    o1283["Value"] = L0
    o1460.ReCalculate()
    o1519.ReCalculate()
  end
end }
S_o1284 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1284, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1284, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1284, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o1284, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1284, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1284, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1289.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1285.Value ~= True) then
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
o1285 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1285.SetStateValue(o1285.GetCalculated())
end, StartCalculate = function()
  o1285["Value"] = o1285.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1285.Value == L0) then
    o1285["Value"] = L0
    CallFunction(o1284, "ProcesseStateChange")
  end
end }
o1289 = { [nil] = {}, Start = function()
  o1289["Value"] = False
  o1310.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1289.Value == L0) then
    o1289["Value"] = L0
    o1310.ReCalculate()
  end
end }
S_o1290 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 999)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_maneater", 2)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 1)
  Body_AddItem(L0.Node, "torpedo_stanley", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  Body_AddItem(L0.Node, "ammo_rocket", 999)
  Body_AddItem(L0.Node, "gun_nailgun", 1)
  CallFunction(o1290, "Code13")
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
o1304 = { [nil] = {}, Start = function()
  o1304["Value"] = False
  o1348.StartCalculate()
  o1405.StartCalculate()
  o1464.StartCalculate()
  o1523.StartCalculate()
  o1581.StartCalculate()
  o1639.StartCalculate()
  o1697.StartCalculate()
  o1755.StartCalculate()
  o1813.StartCalculate()
  o1871.StartCalculate()
  o1929.StartCalculate()
  o1987.StartCalculate()
  o2045.StartCalculate()
  o2103.StartCalculate()
  o2161.StartCalculate()
  o2219.StartCalculate()
  o2277.StartCalculate()
  o2335.StartCalculate()
  o2393.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1304.Value == L0) then
    o1304["Value"] = L0
    o1348.ReCalculate()
    o1405.ReCalculate()
    o1464.ReCalculate()
    o1523.ReCalculate()
    o1581.ReCalculate()
    o1639.ReCalculate()
    o1697.ReCalculate()
    o1755.ReCalculate()
    o1813.ReCalculate()
    o1871.ReCalculate()
    o1929.ReCalculate()
    o1987.ReCalculate()
    o2045.ReCalculate()
    o2103.ReCalculate()
    o2161.ReCalculate()
    o2219.ReCalculate()
    o2277.ReCalculate()
    o2335.ReCalculate()
    o2393.ReCalculate()
  end
end }
o1305 = { [nil] = {}, Start = function()
  o1305["Value"] = False
  o1345.StartCalculate()
  o1346.StartCalculate()
  o1460.StartCalculate()
  o1461.StartCalculate()
  o1462.StartCalculate()
  o1519.StartCalculate()
  o1520.StartCalculate()
  o1521.StartCalculate()
  o1578.StartCalculate()
  o1579.StartCalculate()
  o1636.StartCalculate()
  o1637.StartCalculate()
  o1694.StartCalculate()
  o1695.StartCalculate()
  o1752.StartCalculate()
  o1753.StartCalculate()
  o1810.StartCalculate()
  o1811.StartCalculate()
  o1868.StartCalculate()
  o1869.StartCalculate()
  o1926.StartCalculate()
  o1927.StartCalculate()
  o1984.StartCalculate()
  o1985.StartCalculate()
  o2042.StartCalculate()
  o2043.StartCalculate()
  o2100.StartCalculate()
  o2101.StartCalculate()
  o2158.StartCalculate()
  o2159.StartCalculate()
  o2216.StartCalculate()
  o2217.StartCalculate()
  o2274.StartCalculate()
  o2275.StartCalculate()
  o2332.StartCalculate()
  o2333.StartCalculate()
  o2390.StartCalculate()
  o2391.StartCalculate()
  o2516.StartCalculate()
  o2572.StartCalculate()
  o2797.StartCalculate()
  o2853.StartCalculate()
  o2909.StartCalculate()
  o3022.StartCalculate()
  o3134.StartCalculate()
  o3189.StartCalculate()
  o3190.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1305.Value == L0) then
    o1305["Value"] = L0
    o1345.ReCalculate()
    o1346.ReCalculate()
    o1460.ReCalculate()
    o1461.ReCalculate()
    o1462.ReCalculate()
    o1519.ReCalculate()
    o1520.ReCalculate()
    o1521.ReCalculate()
    o1578.ReCalculate()
    o1579.ReCalculate()
    o1636.ReCalculate()
    o1637.ReCalculate()
    o1694.ReCalculate()
    o1695.ReCalculate()
    o1752.ReCalculate()
    o1753.ReCalculate()
    o1810.ReCalculate()
    o1811.ReCalculate()
    o1868.ReCalculate()
    o1869.ReCalculate()
    o1926.ReCalculate()
    o1927.ReCalculate()
    o1984.ReCalculate()
    o1985.ReCalculate()
    o2042.ReCalculate()
    o2043.ReCalculate()
    o2100.ReCalculate()
    o2101.ReCalculate()
    o2158.ReCalculate()
    o2159.ReCalculate()
    o2216.ReCalculate()
    o2217.ReCalculate()
    o2274.ReCalculate()
    o2275.ReCalculate()
    o2332.ReCalculate()
    o2333.ReCalculate()
    o2390.ReCalculate()
    o2391.ReCalculate()
    o2516.ReCalculate()
    o2572.ReCalculate()
    o2797.ReCalculate()
    o2853.ReCalculate()
    o2909.ReCalculate()
    o3022.ReCalculate()
    o3134.ReCalculate()
    o3189.ReCalculate()
    o3190.ReCalculate()
  end
end }
o1306 = { [nil] = {}, Start = function()
  o1306["Value"] = False
  o1307.StartCalculate()
  o1308.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1306.Value == L0) then
    o1306["Value"] = L0
    o1307.ReCalculate()
    o1308.ReCalculate()
  end
end }
o1307 = { [nil] = {}, GetCalculated = function()
  if not (o1408.Value ~= True) then
    if not (o1306.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1307.SetStateValue(o1307.GetCalculated())
end, StartCalculate = function()
  o1307["Value"] = o1307.GetCalculated()
  o1340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1307.Value == L0) then
    o1307["Value"] = L0
    o1340.ReCalculate()
  end
end }
o1308 = { [nil] = {}, GetCalculated = function()
  if not (o1408.Value ~= True) then
    if not (o1306.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1308.SetStateValue(o1308.GetCalculated())
end, StartCalculate = function()
  o1308["Value"] = o1308.GetCalculated()
  o1285.StartCalculate()
  o1316.StartCalculate()
  o2459.StartCalculate()
  o2517.StartCalculate()
  o2573.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1290.Node, o1290.Node, 669)
  Game_SetWayPoint(GetGameNode(), o2452.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o1308.Value == L0) then
    DelayedFunction(3, o1308, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1308.Value == L0) then
    o1308["Value"] = L0
    o1285.ReCalculate()
    o1316.ReCalculate()
    o2459.ReCalculate()
    o2517.ReCalculate()
    o2573.ReCalculate()
    if not (L0 ~= 1) then
      o1308.ChangeTo1()
    end
  end
end }
o1309 = { [nil] = {}, GetCalculated = function()
  if not (o1310.Value == True) then
    if not (o2470.Value == True) then
      if not (o2526.Value == True) then
        if not (o2582.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o1309.SetStateValue(o1309.GetCalculated())
end, StartCalculate = function()
  o1309["Value"] = o1309.GetCalculated()
  o2663.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1309.Value == L0) then
    DelayedFunction(5, o1309, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1309.Value == L0) then
    o1309["Value"] = L0
    o2663.ReCalculate()
  end
end }
o1310 = { [nil] = {}, GetCalculated = function()
  if not (o1289.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1310.SetStateValue(o1310.GetCalculated())
end, StartCalculate = function()
  o1310["Value"] = o1310.GetCalculated()
  o1309.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1310.Value == L0) then
    DelayedFunction(25, o1310, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1310.Value == L0) then
    o1310["Value"] = L0
    o1309.ReCalculate()
  end
end }
o1311 = { [nil] = {}, Start = function()
  o1311["Value"] = False
  o2684.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1311.Value == L0) then
    o1311["Value"] = L0
    o2684.ReCalculate()
  end
end }
o1312 = { [nil] = {}, Start = function()
  o1312["Value"] = False
  o2683.StartCalculate()
  o2740.StartCalculate()
  o2965.StartCalculate()
  o3021.StartCalculate()
  o3077.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1312.Value == L0) then
    o1312["Value"] = L0
    o2683.ReCalculate()
    o2740.ReCalculate()
    o2965.ReCalculate()
    o3021.ReCalculate()
    o3077.ReCalculate()
  end
end }
o1313 = { [nil] = {}, Start = function()
  o1313["Value"] = False
  o2741.StartCalculate()
  o2796.StartCalculate()
  o2852.StartCalculate()
  o2908.StartCalculate()
  o2964.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1313.Value == L0) then
    o1313["Value"] = L0
    o2741.ReCalculate()
    o2796.ReCalculate()
    o2852.ReCalculate()
    o2908.ReCalculate()
    o2964.ReCalculate()
  end
end }
o1314 = { [nil] = {}, Start = function()
  o1314["Value"] = False
  o1315.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1314.Value == L0) then
    o1314["Value"] = L0
    o1315.ReCalculate()
  end
end }
o1315 = { [nil] = {}, GetCalculated = function()
  if not (o1314.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1315.SetStateValue(o1315.GetCalculated())
end, StartCalculate = function()
  o1315["Value"] = o1315.GetCalculated()
  o1317.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1290.Node, o1290.Node, 676)
end, SetStateValue = function(L0)
  if not (o1315.Value == L0) then
    o1315["Value"] = L0
    o1317.ReCalculate()
    if not (L0 ~= 1) then
      o1315.ChangeTo1()
    end
  end
end }
o1316 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1316.SetStateValue(o1316.GetCalculated())
end, StartCalculate = function()
  o1316["Value"] = o1316.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
end, SetStateValue = function(L0)
  if not (o1316.Value == L0) then
    o1316["Value"] = L0
    if not (L0 ~= 1) then
      o1316.ChangeTo1()
    end
  end
end }
o1317 = { [nil] = {}, GetCalculated = function()
  if not (o1315.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1317.SetStateValue(o1317.GetCalculated())
end, StartCalculate = function()
  o1317["Value"] = o1317.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1317.Value == L0) then
    o1317["Value"] = L0
    o3.ReCalculate()
  end
end }
o1340 = { [nil] = {}, GetCalculated = function()
  if not (o1307.Value == True) then
    if not (o2464.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1340.SetStateValue(o1340.GetCalculated())
end, StartCalculate = function()
  o1340["Value"] = o1340.GetCalculated()
  o26.StartCalculate()
  o31.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
end, SetStateValue = function(L0)
  if not (o1340.Value == L0) then
    o1340["Value"] = L0
    o26.ReCalculate()
    o31.ReCalculate()
    if not (L0 ~= 1) then
      o1340.ChangeTo1()
    end
  end
end }
o1341 = { [nil] = {}, GetCalculated = function()
  if not (o34.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1341.SetStateValue(o1341.GetCalculated())
end, StartCalculate = function()
  o1341["Value"] = o1341.GetCalculated()
  o27.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2102)
end, SetStateValue = function(L0)
  if not (o1341.Value == L0) then
    o1341["Value"] = L0
    o27.ReCalculate()
    if not (L0 ~= 1) then
      o1341.ChangeTo1()
    end
  end
end }
S_o1344 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1344, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1344, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1344, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1344, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o1344, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1344, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1344, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o1344, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code9")
  else
    CallFunction(o1344, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "Amer", "", "", "", 1, "Code10")
  else
    CallFunction(o1344, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1344, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1348.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1345.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o1346.Value ~= True) then
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
o1345 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1345.SetStateValue(o1345.GetCalculated())
end, StartCalculate = function()
  o1345["Value"] = o1345.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1345.Value == L0) then
    o1345["Value"] = L0
    CallFunction(o1344, "ProcesseStateChange")
  end
end }
o1346 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1346.SetStateValue(o1346.GetCalculated())
end, StartCalculate = function()
  o1346["Value"] = o1346.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1346.Value == L0) then
    o1346["Value"] = L0
    CallFunction(o1344, "ProcesseStateChange")
  end
end }
o1348 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
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
    CallFunction(o1344, "ProcesseStateChange")
  end
end }
S_o1402 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1402, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1402, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1402, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1402, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_SuspendCollisionReaction(L0.Node)
  CallFunction(o1402, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o1402, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1402, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1274, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_bomb_1_Path_1", 0.6, 2 } }, o1275, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", 1, "", "", "", "", 1, 1, False, "Code8")
  else
    CallFunction(o1402, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  o1306.SetStateValue(True)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o1402, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o1408.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1405.Value ~= True) then
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
o1405 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1405.SetStateValue(o1405.GetCalculated())
end, StartCalculate = function()
  o1405["Value"] = o1405.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1405.Value == L0) then
    o1405["Value"] = L0
    CallFunction(o1402, "ProcesseStateChange")
  end
end }
o1408 = { [nil] = {}, Start = function()
  o1408["Value"] = False
  o1307.StartCalculate()
  o1308.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1408.Value == L0) then
    o1408["Value"] = L0
    o1307.ReCalculate()
    o1308.ReCalculate()
  end
end }
S_o1459 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1459, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1459, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1459, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1459, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1459, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1459, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o1459, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.FollowInFormation(L0, o1275, "Code8")
  else
    CallFunction(o1459, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_bomber_1_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o1459, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "player1", "", "", "", 1, "Code10")
  else
    CallFunction(o1459, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1459, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1464.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1460.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1461.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o1462.Value ~= True) then
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
o1460 = { [nil] = {}, GetCalculated = function()
  if not (o1283.Value == True) then
    if not (o1305.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1460.SetStateValue(o1460.GetCalculated())
end, StartCalculate = function()
  o1460["Value"] = o1460.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1460.Value == L0) then
    o1460["Value"] = L0
    CallFunction(o1459, "ProcesseStateChange")
  end
end }
o1461 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1461.SetStateValue(o1461.GetCalculated())
end, StartCalculate = function()
  o1461["Value"] = o1461.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1461.Value == L0) then
    o1461["Value"] = L0
    CallFunction(o1459, "ProcesseStateChange")
  end
end }
o1462 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1462.SetStateValue(o1462.GetCalculated())
end, StartCalculate = function()
  o1462["Value"] = o1462.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1462.Value == L0) then
    o1462["Value"] = L0
    CallFunction(o1459, "ProcesseStateChange")
  end
end }
o1464 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1464.SetStateValue(o1464.GetCalculated())
end, StartCalculate = function()
  o1464["Value"] = o1464.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1464.Value == L0) then
    DelayedFunction(2, o1464, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1464.Value == L0) then
    o1464["Value"] = L0
    CallFunction(o1459, "ProcesseStateChange")
  end
end }
S_o1518 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1518, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1518, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1518, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1518, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1518, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1518, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o1518, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.FollowInFormation(L0, o1275, "Code8")
  else
    CallFunction(o1518, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_bomber_2_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o1518, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "player1", "", "", "", 1, "Code10")
  else
    CallFunction(o1518, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1518, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1523.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1519.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1520.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o1521.Value ~= True) then
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
o1519 = { [nil] = {}, GetCalculated = function()
  if not (o1283.Value == True) then
    if not (o1305.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o1519.SetStateValue(o1519.GetCalculated())
end, StartCalculate = function()
  o1519["Value"] = o1519.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1519.Value == L0) then
    o1519["Value"] = L0
    CallFunction(o1518, "ProcesseStateChange")
  end
end }
o1520 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1520.SetStateValue(o1520.GetCalculated())
end, StartCalculate = function()
  o1520["Value"] = o1520.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1520.Value == L0) then
    o1520["Value"] = L0
    CallFunction(o1518, "ProcesseStateChange")
  end
end }
o1521 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1521.SetStateValue(o1521.GetCalculated())
end, StartCalculate = function()
  o1521["Value"] = o1521.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1521.Value == L0) then
    o1521["Value"] = L0
    CallFunction(o1518, "ProcesseStateChange")
  end
end }
o1523 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1523.SetStateValue(o1523.GetCalculated())
end, StartCalculate = function()
  o1523["Value"] = o1523.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1523.Value == L0) then
    DelayedFunction(2, o1523, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1523.Value == L0) then
    o1523["Value"] = L0
    CallFunction(o1518, "ProcesseStateChange")
  end
end }
S_o1577 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1577, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1577, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1577, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1577, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1577, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1577, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout2_wide_1_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1577, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1577, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "player1", "", "", "", 1, "Code9")
  else
    CallFunction(o1577, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1577, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1581.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1578.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1579.Value ~= True) then
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
o1578 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1578.SetStateValue(o1578.GetCalculated())
end, StartCalculate = function()
  o1578["Value"] = o1578.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1578.Value == L0) then
    o1578["Value"] = L0
    CallFunction(o1577, "ProcesseStateChange")
  end
end }
o1579 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1579.SetStateValue(o1579.GetCalculated())
end, StartCalculate = function()
  o1579["Value"] = o1579.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1579.Value == L0) then
    o1579["Value"] = L0
    CallFunction(o1577, "ProcesseStateChange")
  end
end }
o1581 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1581.SetStateValue(o1581.GetCalculated())
end, StartCalculate = function()
  o1581["Value"] = o1581.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1581.Value == L0) then
    o1581["Value"] = L0
    CallFunction(o1577, "ProcesseStateChange")
  end
end }
S_o1635 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1635, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1635, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1635, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1635, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1635, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1635, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout2_wide_2_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1635, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1635, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "", "", "", "", 1, "Code9")
  else
    CallFunction(o1635, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1635, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1639.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1636.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1637.Value ~= True) then
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
o1636 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1636.SetStateValue(o1636.GetCalculated())
end, StartCalculate = function()
  o1636["Value"] = o1636.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1636.Value == L0) then
    o1636["Value"] = L0
    CallFunction(o1635, "ProcesseStateChange")
  end
end }
o1637 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1637.SetStateValue(o1637.GetCalculated())
end, StartCalculate = function()
  o1637["Value"] = o1637.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1637.Value == L0) then
    o1637["Value"] = L0
    CallFunction(o1635, "ProcesseStateChange")
  end
end }
o1639 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1639.SetStateValue(o1639.GetCalculated())
end, StartCalculate = function()
  o1639["Value"] = o1639.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1639.Value == L0) then
    o1639["Value"] = L0
    CallFunction(o1635, "ProcesseStateChange")
  end
end }
S_o1693 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1693, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1693, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1693, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1693, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1693, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1693, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout2_wide_3_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1693, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1693, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "", "", "", "", 1, "Code9")
  else
    CallFunction(o1693, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1693, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1697.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1694.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1695.Value ~= True) then
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
  if not (o1305.Value ~= True) then
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
    o1694["Value"] = L0
    CallFunction(o1693, "ProcesseStateChange")
  end
end }
o1695 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1695.SetStateValue(o1695.GetCalculated())
end, StartCalculate = function()
  o1695["Value"] = o1695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1695.Value == L0) then
    o1695["Value"] = L0
    CallFunction(o1693, "ProcesseStateChange")
  end
end }
o1697 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1697.SetStateValue(o1697.GetCalculated())
end, StartCalculate = function()
  o1697["Value"] = o1697.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1697.Value == L0) then
    o1697["Value"] = L0
    CallFunction(o1693, "ProcesseStateChange")
  end
end }
S_o1751 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1751, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1751, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1751, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1751, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1751, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1751, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout1_wide_1_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1751, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1751, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "player1", "", "", "", 1, "Code9")
  else
    CallFunction(o1751, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1751, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1755.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1752.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1753.Value ~= True) then
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
o1752 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1752.SetStateValue(o1752.GetCalculated())
end, StartCalculate = function()
  o1752["Value"] = o1752.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1752.Value == L0) then
    o1752["Value"] = L0
    CallFunction(o1751, "ProcesseStateChange")
  end
end }
o1753 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1753.SetStateValue(o1753.GetCalculated())
end, StartCalculate = function()
  o1753["Value"] = o1753.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1753.Value == L0) then
    o1753["Value"] = L0
    CallFunction(o1751, "ProcesseStateChange")
  end
end }
o1755 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1755.SetStateValue(o1755.GetCalculated())
end, StartCalculate = function()
  o1755["Value"] = o1755.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1755.Value == L0) then
    o1755["Value"] = L0
    CallFunction(o1751, "ProcesseStateChange")
  end
end }
S_o1809 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1809, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1809, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1809, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1809, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1809, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1809, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout1_wide_2_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1809, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1809, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "player1", "", "", "", 1, "Code9")
  else
    CallFunction(o1809, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1809, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1813.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1810.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
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
o1810 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1810.SetStateValue(o1810.GetCalculated())
end, StartCalculate = function()
  o1810["Value"] = o1810.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1810.Value == L0) then
    o1810["Value"] = L0
    CallFunction(o1809, "ProcesseStateChange")
  end
end }
o1811 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
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
    CallFunction(o1809, "ProcesseStateChange")
  end
end }
o1813 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
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
    CallFunction(o1809, "ProcesseStateChange")
  end
end }
S_o1867 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1867, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1867, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1867, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1867, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1867, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1867, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout1_wide_3_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1867, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1867, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "", "", "", "", 1, "Code9")
  else
    CallFunction(o1867, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1867, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1871.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1868.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1869.Value ~= True) then
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
o1868 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1868.SetStateValue(o1868.GetCalculated())
end, StartCalculate = function()
  o1868["Value"] = o1868.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1868.Value == L0) then
    o1868["Value"] = L0
    CallFunction(o1867, "ProcesseStateChange")
  end
end }
o1869 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1869.SetStateValue(o1869.GetCalculated())
end, StartCalculate = function()
  o1869["Value"] = o1869.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1869.Value == L0) then
    o1869["Value"] = L0
    CallFunction(o1867, "ProcesseStateChange")
  end
end }
o1871 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1871.SetStateValue(o1871.GetCalculated())
end, StartCalculate = function()
  o1871["Value"] = o1871.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1871.Value == L0) then
    o1871["Value"] = L0
    CallFunction(o1867, "ProcesseStateChange")
  end
end }
S_o1925 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1925, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1925, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1925, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1925, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1925, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1925, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/mer_scout1_wide_4_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o1925, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o1925, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "/Scenario_Dynamic/Navigation/PlaPatrolArea_1", "", "", "", "", 1, "Code9")
  else
    CallFunction(o1925, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1925, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1929.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o1926.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1927.Value ~= True) then
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
o1926 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1926.SetStateValue(o1926.GetCalculated())
end, StartCalculate = function()
  o1926["Value"] = o1926.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1926.Value == L0) then
    o1926["Value"] = L0
    CallFunction(o1925, "ProcesseStateChange")
  end
end }
o1927 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1927.SetStateValue(o1927.GetCalculated())
end, StartCalculate = function()
  o1927["Value"] = o1927.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1927.Value == L0) then
    o1927["Value"] = L0
    CallFunction(o1925, "ProcesseStateChange")
  end
end }
o1929 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1929.SetStateValue(o1929.GetCalculated())
end, StartCalculate = function()
  o1929["Value"] = o1929.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1929.Value == L0) then
    o1929["Value"] = L0
    CallFunction(o1925, "ProcesseStateChange")
  end
end }
S_o1983 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1983, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1983, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1983, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1983, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1983, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1983, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o1983, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_bomber_1_Path_1", 1, 1 } }("Code8")
  else
    CallFunction(o1983, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Vessel_AttackTurretsStop(L0.Node, "")
  CallFunction(o1983, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code10")
  else
    CallFunction(o1983, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code11")
  else
    CallFunction(o1983, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  DipolLib.LeaveSimulation(L0)
  CallFunction(o1983, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1987.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1984.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o1985.Value ~= True) then
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
o1984 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1984.SetStateValue(o1984.GetCalculated())
end, StartCalculate = function()
  o1984["Value"] = o1984.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1984.Value == L0) then
    o1984["Value"] = L0
    CallFunction(o1983, "ProcesseStateChange")
  end
end }
o1985 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1985.SetStateValue(o1985.GetCalculated())
end, StartCalculate = function()
  o1985["Value"] = o1985.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1985.Value == L0) then
    o1985["Value"] = L0
    CallFunction(o1983, "ProcesseStateChange")
  end
end }
o1987 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1987.SetStateValue(o1987.GetCalculated())
end, StartCalculate = function()
  o1987["Value"] = o1987.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1987.Value == L0) then
    o1987["Value"] = L0
    CallFunction(o1983, "ProcesseStateChange")
  end
end }
S_o2041 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2041, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2041, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2041, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2041, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2041, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2041, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout2_wide_1_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2041, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2041, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2041, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2041, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2045.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2042.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2043.Value ~= True) then
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
o2042 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2042.SetStateValue(o2042.GetCalculated())
end, StartCalculate = function()
  o2042["Value"] = o2042.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2042.Value == L0) then
    o2042["Value"] = L0
    CallFunction(o2041, "ProcesseStateChange")
  end
end }
o2043 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2043.SetStateValue(o2043.GetCalculated())
end, StartCalculate = function()
  o2043["Value"] = o2043.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2043.Value == L0) then
    o2043["Value"] = L0
    CallFunction(o2041, "ProcesseStateChange")
  end
end }
o2045 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2045.SetStateValue(o2045.GetCalculated())
end, StartCalculate = function()
  o2045["Value"] = o2045.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2045.Value == L0) then
    o2045["Value"] = L0
    CallFunction(o2041, "ProcesseStateChange")
  end
end }
S_o2099 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2099, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2099, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2099, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2099, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2099, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2099, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout2_wide_2_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2099, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2099, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2099, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2099, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2103.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2100.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2101.Value ~= True) then
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
o2100 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2100.SetStateValue(o2100.GetCalculated())
end, StartCalculate = function()
  o2100["Value"] = o2100.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2100.Value == L0) then
    o2100["Value"] = L0
    CallFunction(o2099, "ProcesseStateChange")
  end
end }
o2101 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2101.SetStateValue(o2101.GetCalculated())
end, StartCalculate = function()
  o2101["Value"] = o2101.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2101.Value == L0) then
    o2101["Value"] = L0
    CallFunction(o2099, "ProcesseStateChange")
  end
end }
o2103 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2103.SetStateValue(o2103.GetCalculated())
end, StartCalculate = function()
  o2103["Value"] = o2103.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2103.Value == L0) then
    o2103["Value"] = L0
    CallFunction(o2099, "ProcesseStateChange")
  end
end }
S_o2157 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2157, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2157, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2157, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2157, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2157, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2157, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout2_wide_3_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2157, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2157, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2157, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2157, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2161.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2158.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2159.Value ~= True) then
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
o2158 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2158.SetStateValue(o2158.GetCalculated())
end, StartCalculate = function()
  o2158["Value"] = o2158.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2158.Value == L0) then
    o2158["Value"] = L0
    CallFunction(o2157, "ProcesseStateChange")
  end
end }
o2159 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2159.SetStateValue(o2159.GetCalculated())
end, StartCalculate = function()
  o2159["Value"] = o2159.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2159.Value == L0) then
    o2159["Value"] = L0
    CallFunction(o2157, "ProcesseStateChange")
  end
end }
o2161 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
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
    CallFunction(o2157, "ProcesseStateChange")
  end
end }
S_o2215 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2215, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2215, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2215, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2215, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2215, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2215, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout1_wide_1_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2215, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2215, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2215, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2215, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2219.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2216.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2217.Value ~= True) then
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
o2216 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2216.SetStateValue(o2216.GetCalculated())
end, StartCalculate = function()
  o2216["Value"] = o2216.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2216.Value == L0) then
    o2216["Value"] = L0
    CallFunction(o2215, "ProcesseStateChange")
  end
end }
o2217 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2217.SetStateValue(o2217.GetCalculated())
end, StartCalculate = function()
  o2217["Value"] = o2217.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2217.Value == L0) then
    o2217["Value"] = L0
    CallFunction(o2215, "ProcesseStateChange")
  end
end }
o2219 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2219.SetStateValue(o2219.GetCalculated())
end, StartCalculate = function()
  o2219["Value"] = o2219.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2219.Value == L0) then
    o2219["Value"] = L0
    CallFunction(o2215, "ProcesseStateChange")
  end
end }
S_o2273 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2273, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2273, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2273, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2273, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2273, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2273, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout1_wide_2_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2273, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2273, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2273, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2273, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2277.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2274.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2275.Value ~= True) then
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
o2274 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2274.SetStateValue(o2274.GetCalculated())
end, StartCalculate = function()
  o2274["Value"] = o2274.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2274.Value == L0) then
    o2274["Value"] = L0
    CallFunction(o2273, "ProcesseStateChange")
  end
end }
o2275 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2275.SetStateValue(o2275.GetCalculated())
end, StartCalculate = function()
  o2275["Value"] = o2275.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2275.Value == L0) then
    o2275["Value"] = L0
    CallFunction(o2273, "ProcesseStateChange")
  end
end }
o2277 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2277.SetStateValue(o2277.GetCalculated())
end, StartCalculate = function()
  o2277["Value"] = o2277.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2277.Value == L0) then
    o2277["Value"] = L0
    CallFunction(o2273, "ProcesseStateChange")
  end
end }
S_o2331 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2331, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2331, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2331, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2331, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2331, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2331, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout1_wide_3_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2331, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2331, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2331, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2331, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2335.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2332.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2333.Value ~= True) then
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
o2332 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2332.SetStateValue(o2332.GetCalculated())
end, StartCalculate = function()
  o2332["Value"] = o2332.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2332.Value == L0) then
    o2332["Value"] = L0
    CallFunction(o2331, "ProcesseStateChange")
  end
end }
o2333 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2333.SetStateValue(o2333.GetCalculated())
end, StartCalculate = function()
  o2333["Value"] = o2333.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2333.Value == L0) then
    o2333["Value"] = L0
    CallFunction(o2331, "ProcesseStateChange")
  end
end }
o2335 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2335.SetStateValue(o2335.GetCalculated())
end, StartCalculate = function()
  o2335["Value"] = o2335.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2335.Value == L0) then
    o2335["Value"] = L0
    CallFunction(o2331, "ProcesseStateChange")
  end
end }
S_o2389 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2389, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2389, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2389, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2389, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2389, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2389, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Amer_scout1_wide_4_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o2389, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o2389, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "wng", "player1", "", "", 1, "Code9")
  else
    CallFunction(o2389, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2389, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2393.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2390.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o2391.Value ~= True) then
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
o2390 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2390.SetStateValue(o2390.GetCalculated())
end, StartCalculate = function()
  o2390["Value"] = o2390.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2390.Value == L0) then
    o2390["Value"] = L0
    CallFunction(o2389, "ProcesseStateChange")
  end
end }
o2391 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2391.SetStateValue(o2391.GetCalculated())
end, StartCalculate = function()
  o2391["Value"] = o2391.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2391.Value == L0) then
    o2391["Value"] = L0
    CallFunction(o2389, "ProcesseStateChange")
  end
end }
o2393 = { [nil] = {}, GetCalculated = function()
  if not (o1304.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2393.SetStateValue(o2393.GetCalculated())
end, StartCalculate = function()
  o2393["Value"] = o2393.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2393.Value == L0) then
    o2393["Value"] = L0
    CallFunction(o2389, "ProcesseStateChange")
  end
end }
S_o2447 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1402.Node)
  CallFunction(o2447, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2452 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1344.Node)
  CallFunction(o2452, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2457 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2457, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2457, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2457, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2457, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2457, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  CallFunction(o2457, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1277, { {}, "Goto", "/Scenario_Dynamic/Navigation/ABombPath_1", 0.6, 2 } }, o1276, "/Scenario_Dynamic/Navigation/APatrolArea_1", 1, "", "", "", "", 1, 1, False, "Code7")
  else
    CallFunction(o2457, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2457, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o2457, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2457, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2457, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o2457, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2457, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Destroyed = function(L0, L1)
  o2464.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o2470.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2459.Value ~= True) then
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
o2459 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2459.SetStateValue(o2459.GetCalculated())
end, StartCalculate = function()
  o2459["Value"] = o2459.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2459.Value == L0) then
    o2459["Value"] = L0
    CallFunction(o2457, "ProcesseStateChange")
  end
end }
o2464 = { [nil] = {}, Start = function()
  o2464["Value"] = False
  o1340.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2464.Value == L0) then
    o2464["Value"] = L0
    o1340.ReCalculate()
  end
end }
o2470 = { [nil] = {}, Start = function()
  o2470["Value"] = False
  o1309.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2470.Value == L0) then
    o2470["Value"] = L0
    o1309.ReCalculate()
  end
end }
S_o2515 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2515, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2515, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2515, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2515, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2515, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2515, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.FollowInFormation(L0, o1276, "Code7")
  else
    CallFunction(o2515, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2515, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_KineticShield50 = function(L0, L1)
  o2526.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2517.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2516.Value ~= True) then
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
o2516 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2516.SetStateValue(o2516.GetCalculated())
end, StartCalculate = function()
  o2516["Value"] = o2516.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2516.Value == L0) then
    o2516["Value"] = L0
    CallFunction(o2515, "ProcesseStateChange")
  end
end }
o2517 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2517.SetStateValue(o2517.GetCalculated())
end, StartCalculate = function()
  o2517["Value"] = o2517.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2517.Value == L0) then
    o2517["Value"] = L0
    CallFunction(o2515, "ProcesseStateChange")
  end
end }
o2526 = { [nil] = {}, Start = function()
  o2526["Value"] = False
  o1309.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2526.Value == L0) then
    o2526["Value"] = L0
    o1309.ReCalculate()
  end
end }
S_o2571 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2571, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2571, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2571, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2571, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2571, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2571, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.FollowInFormation(L0, o1276, "Code7")
  else
    CallFunction(o2571, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2571, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_KineticShield50 = function(L0, L1)
  o2582.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2573.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2572.Value ~= True) then
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
o2572 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2572.SetStateValue(o2572.GetCalculated())
end, StartCalculate = function()
  o2572["Value"] = o2572.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2572.Value == L0) then
    o2572["Value"] = L0
    CallFunction(o2571, "ProcesseStateChange")
  end
end }
o2573 = { [nil] = {}, GetCalculated = function()
  if not (o1308.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2573.SetStateValue(o2573.GetCalculated())
end, StartCalculate = function()
  o2573["Value"] = o2573.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2573.Value == L0) then
    o2573["Value"] = L0
    CallFunction(o2571, "ProcesseStateChange")
  end
end }
o2582 = { [nil] = {}, Start = function()
  o2582["Value"] = False
  o1309.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2582.Value == L0) then
    o2582["Value"] = L0
    o1309.ReCalculate()
  end
end }
S_o2627 = { [nil] = {}, Start = function(L0)

end }
o2629 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o2630 = { [nil] = {}, Start = function(L0)

end }
S_o2631 = { [nil] = {}, Start = function(L0)

end }
S_o2632 = { [nil] = {}, Start = function(L0)

end }
S_o2633 = { [nil] = {}, Start = function(L0)

end }
S_o2634 = { [nil] = {}, Start = function(L0)

end }
S_o2635 = { [nil] = {}, Start = function(L0)

end }
S_o2636 = { [nil] = {}, Start = function(L0)

end }
o2638 = FormationLib.CreateFormation("Row", "", "", "", 20, 20)
S_o2639 = { [nil] = {}, Start = function(L0)

end }
S_o2640 = { [nil] = {}, Start = function(L0)

end }
S_o2641 = { [nil] = {}, Start = function(L0)

end }
S_o2642 = { [nil] = {}, Start = function(L0)

end }
S_o2643 = { [nil] = {}, Start = function(L0)

end }
S_o2644 = { [nil] = {}, Start = function(L0)

end }
S_o2645 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "track3")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o2645, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o2645, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o2645, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code9")
  else
    CallFunction(o2645, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_2", 5, "MMMN", 0)
  CallFunction(o2645, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code11")
  else
    CallFunction(o2645, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_Cut(L0.Node, 1)
  CallFunction(o2645, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code13")
  else
    CallFunction(o2645, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_3_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_angelina_1", 0, "MMMN", 0)
  CallFunction(o2645, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o2645, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_3", 3, "MMMN", 0)
  CallFunction(o2645, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.5, "Code18")
  else
    CallFunction(o2645, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  SendRadioMessageTake(o1290.Node, o1290.Node, 663)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_4", 2, "MMMN", 0)
  CallFunction(o2645, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code21")
  else
    CallFunction(o2645, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_5", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/IntroPosition_6", 2, "MMMN", 0)
  CallFunction(o2645, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code24")
  else
    CallFunction(o2645, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/IntroPosition_6", 3, "MMMN", 0)
  CallFunction(o2645, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code26")
  else
    CallFunction(o2645, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  o1304.SetStateValue(True)
  CallFunction(o2645, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code28")
  else
    CallFunction(o2645, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_Cut(L0.Node, 1)
  CallFunction(o2645, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code30")
  else
    CallFunction(o2645, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Director_EndCutscene(L0.Node)
  CallFunction(o2645, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code32")
  else
    CallFunction(o2645, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Game_SetWayPoint(GetGameNode(), o2447.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o2645, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code35")
  else
    CallFunction(o2645, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  SendRadioMessageTake(o1290.Node, o1290.Node, 665)
  SendRadioMessageTake(o1290.Node, o1290.Node, 667)
  CallFunction(o2645, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2660 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o2628, o2629, "/InGameSequences/Navigation/IntroPlaPath_1")
  CallFunction(o2660, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2628, o2629, "/InGameSequences/Navigation/IntroPlaPath_1", "pos_1", "pos_3", 1, 1, "Code2")
  else
    CallFunction(o2660, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  FormationLib.PlaceFormationPath(o2628, o2629, "/InGameSequences/Navigation/IntroPlaPath_2")
  CallFunction(o2660, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2628, o2629, "/InGameSequences/Navigation/IntroPlaPath_2", "pos_3", "pos_2", 0.8, 1, "Code4")
  else
    CallFunction(o2660, "Code4")
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
S_o2662 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2662, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 2)
  CallFunction(o2662, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o2662, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o2628, o2629, "/InGameSequences/Navigation/APlayerPath_1")
  o1305.SetStateValue(True)
  CallFunction(o2457, "Code10")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/APosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Object/mer_bomb_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o2662, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code12")
  else
    CallFunction(o2662, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/APosition_2", 4, "MMMN", 0)
  CallFunction(o2662, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code14")
  else
    CallFunction(o2662, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/APosition_3", 3, "MMMN", 0)
  CallFunction(o2662, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code16")
  else
    CallFunction(o2662, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_PlayMusic(GetGameNode(), "track5")
  o1311.SetStateValue(True)
  CallFunction(o2662, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code19")
  else
    CallFunction(o2662, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_MoveTo(L0.Node, "/InGameSequences/Object/mer_strega_1", 8, "MMTN", 30)
  SendRadioMessageTake(o1290.Node, o1290.Node, 670)
  CallFunction(o2662, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code22")
  else
    CallFunction(o2662, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o2662, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code24")
  else
    CallFunction(o2662, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/InGameSequences/Object/mer_strega_1", 3, "MMTN", 0)
  SendRadioMessageTake(o1290.Node, o1290.Node, 671)
  CallFunction(o2662, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code27")
  else
    CallFunction(o2662, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_Cut(L0.Node, 1)
  CallFunction(o2662, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code29")
  else
    CallFunction(o2662, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  o1312.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/APosition_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Object/wng_angelina_1", 0, "MMMN", 0)
  CallFunction(o2662, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code33")
  else
    CallFunction(o2662, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  SendRadioMessageTake(o1290.Node, o1290.Node, 672)
  SendRadioMessageTake(o1290.Node, o1290.Node, 673)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/APosition_5", 0, "MMMN", 0)
  CallFunction(o2662, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.5, "Code37")
  else
    CallFunction(o2662, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  o1313.SetStateValue(True)
  CallFunction(o2662, "Code38")
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code39")
  else
    CallFunction(o2662, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/APosition_6", 3, "MMMN", 0)
  CallFunction(o2662, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code41")
  else
    CallFunction(o2662, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  SendRadioMessageTake(o1290.Node, o1290.Node, 674)
  CallFunction(o2662, "Code42")
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code43")
  else
    CallFunction(o2662, "Code43")
  end
end, Code43 = function(L0)
  L0["CodeIndex"] = 43
  Camera_Cut(L0.Node, 1)
  CallFunction(o2662, "Code44")
end }, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code45")
  else
    CallFunction(o2662, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  FormationLib.PlaceFormationPath(o2628, o2629, "/InGameSequences/Navigation/APlayerPath_2")
  CallFunction(o2662, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code47")
  else
    CallFunction(o2662, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o2662, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code49")
  else
    CallFunction(o2662, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o1314.SetStateValue(True)
  CallFunction(o2662, "Code50")
end, Code50 = function(L0)
  L0["CodeIndex"] = 50
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
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
  if not (o1309.Value ~= True) then
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
    CallFunction(o2662, "ProcesseStateChange")
  end
end }
S_o2682 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2682, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2682, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2682, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2682, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2682, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  CallFunction(o2682, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/AStregaPath_1", 0.6, 1 } }("Code7")
  else
    CallFunction(o2682, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2682, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2684.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2683.Value ~= True) then
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
o2683 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2683.SetStateValue(o2683.GetCalculated())
end, StartCalculate = function()
  o2683["Value"] = o2683.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2683.Value == L0) then
    o2683["Value"] = L0
    CallFunction(o2682, "ProcesseStateChange")
  end
end }
o2684 = { [nil] = {}, GetCalculated = function()
  if not (o1311.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2684.SetStateValue(o2684.GetCalculated())
end, StartCalculate = function()
  o2684["Value"] = o2684.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2684.Value == L0) then
    o2684["Value"] = L0
    CallFunction(o2682, "ProcesseStateChange")
  end
end }
S_o2738 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2738, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2738, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2738, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2738, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2738, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/AStregaPath_2", 1, 1 } }("Code6")
  else
    CallFunction(o2738, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o2738, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2740.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2741.Value ~= True) then
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
o2740 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2740.SetStateValue(o2740.GetCalculated())
end, StartCalculate = function()
  o2740["Value"] = o2740.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2740.Value == L0) then
    o2740["Value"] = L0
    CallFunction(o2738, "ProcesseStateChange")
  end
end }
o2741 = { [nil] = {}, GetCalculated = function()
  if not (o1313.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2741.SetStateValue(o2741.GetCalculated())
end, StartCalculate = function()
  o2741["Value"] = o2741.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2741.Value == L0) then
    o2741["Value"] = L0
    CallFunction(o2738, "ProcesseStateChange")
  end
end }
S_o2795 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2795, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2795, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2795, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2795, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2795, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  CallFunction(o2795, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o2637, { {}, "Goto", "/InGameSequences/Navigation/ABombPath_1", 0.6, 2 } }, o2638, "/Scenario_Dynamic/Navigation/APatrolArea_1", 1, "", "", "", "", 1, 1, False, "Code7")
  else
    CallFunction(o2795, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2795, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2797.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o2796.Value ~= True) then
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
o2796 = { [nil] = {}, GetCalculated = function()
  if not (o1313.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2796.SetStateValue(o2796.GetCalculated())
end, StartCalculate = function()
  o2796["Value"] = o2796.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2796.Value == L0) then
    o2796["Value"] = L0
    CallFunction(o2795, "ProcesseStateChange")
  end
end }
o2797 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2797.SetStateValue(o2797.GetCalculated())
end, StartCalculate = function()
  o2797["Value"] = o2797.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2797.Value == L0) then
    o2797["Value"] = L0
    CallFunction(o2795, "ProcesseStateChange")
  end
end }
S_o2851 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2851, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2851, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2851, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2851, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2851, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2851, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.FollowInFormation(L0, o2638, "Code8")
  else
    CallFunction(o2851, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2851, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2853.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o2852.Value ~= True) then
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
o2852 = { [nil] = {}, GetCalculated = function()
  if not (o1313.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2852.SetStateValue(o2852.GetCalculated())
end, StartCalculate = function()
  o2852["Value"] = o2852.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2852.Value == L0) then
    DelayedFunction(1.5, o2852, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2852.Value == L0) then
    o2852["Value"] = L0
    CallFunction(o2851, "ProcesseStateChange")
  end
end }
o2853 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2853.SetStateValue(o2853.GetCalculated())
end, StartCalculate = function()
  o2853["Value"] = o2853.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2853.Value == L0) then
    o2853["Value"] = L0
    CallFunction(o2851, "ProcesseStateChange")
  end
end }
S_o2907 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2907, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2907, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2907, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o2907, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2907, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2907, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.FollowInFormation(L0, o2638, "Code8")
  else
    CallFunction(o2907, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o2907, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2909.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o2908.Value ~= True) then
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
o2908 = { [nil] = {}, GetCalculated = function()
  if not (o1313.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2908.SetStateValue(o2908.GetCalculated())
end, StartCalculate = function()
  o2908["Value"] = o2908.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2908.Value == L0) then
    DelayedFunction(1, o2908, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2908.Value == L0) then
    o2908["Value"] = L0
    CallFunction(o2907, "ProcesseStateChange")
  end
end }
o2909 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2909.SetStateValue(o2909.GetCalculated())
end, StartCalculate = function()
  o2909["Value"] = o2909.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2909.Value == L0) then
    o2909["Value"] = L0
    CallFunction(o2907, "ProcesseStateChange")
  end
end }
S_o2963 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2963, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2963, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2963, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2963, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o2963, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "mer_strega", "", "", "")
  CallFunction(o2963, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/AAngelinaPath_2", 0.3, 1 } }("Code8")
  else
    CallFunction(o2963, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o2963, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2965.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o2964.Value ~= True) then
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
o2964 = { [nil] = {}, GetCalculated = function()
  if not (o1313.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2964.SetStateValue(o2964.GetCalculated())
end, StartCalculate = function()
  o2964["Value"] = o2964.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2964.Value == L0) then
    DelayedFunction(0.5, o2964, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2964.Value == L0) then
    o2964["Value"] = L0
    CallFunction(o2963, "ProcesseStateChange")
  end
end }
o2965 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2965.SetStateValue(o2965.GetCalculated())
end, StartCalculate = function()
  o2965["Value"] = o2965.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2965.Value == L0) then
    o2965["Value"] = L0
    CallFunction(o2963, "ProcesseStateChange")
  end
end }
S_o3019 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3019, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3019, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3019, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3019, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o3019, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_SuspendCollisionReaction(L0.Node)
  CallFunction(o3019, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/AAngelinaPath_1", 0.8, 1 } }("Code7")
  else
    CallFunction(o3019, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Vessel_AttackTurrets(L0.Node, "", "mer_strega", "", "", "")
  CallFunction(o3019, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/AAngelinaPath_3", 0.8, 1 } }("Code9")
  else
    CallFunction(o3019, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  DipolLib.LeaveSimulation(L0)
  CallFunction(o3019, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3022.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3021.Value ~= True) then
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
o3021 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3021.SetStateValue(o3021.GetCalculated())
end, StartCalculate = function()
  o3021["Value"] = o3021.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3021.Value == L0) then
    o3021["Value"] = L0
    CallFunction(o3019, "ProcesseStateChange")
  end
end }
o3022 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3022.SetStateValue(o3022.GetCalculated())
end, StartCalculate = function()
  o3022["Value"] = o3022.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3022.Value == L0) then
    o3022["Value"] = L0
    CallFunction(o3019, "ProcesseStateChange")
  end
end }
S_o3076 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code1")
  else
    CallFunction(o3076, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3076, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "mer_strega", "", "", "", 1, "Code3")
  else
    CallFunction(o3076, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o3077.Value ~= True) then
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
o3077 = { [nil] = {}, GetCalculated = function()
  if not (o1312.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3077.SetStateValue(o3077.GetCalculated())
end, StartCalculate = function()
  o3077["Value"] = o3077.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3077.Value == L0) then
    o3077["Value"] = L0
    CallFunction(o3076, "ProcesseStateChange")
  end
end }
S_o3132 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3132, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3132, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3132, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o3132, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3132, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3134.Value ~= True) then
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
o3134 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3134.SetStateValue(o3134.GetCalculated())
end, StartCalculate = function()
  o3134["Value"] = o3134.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3134.Value == L0) then
    o3134["Value"] = L0
    CallFunction(o3132, "ProcesseStateChange")
  end
end }
S_o3188 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3188, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3188, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3188, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "/Scenario_Dynamic/Navigation/APatrolArea_1", "mer_bombe", "", "", "", 1, "Code4")
  else
    CallFunction(o3188, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3188, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3190.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3189.Value ~= True) then
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
o3189 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3189.SetStateValue(o3189.GetCalculated())
end, StartCalculate = function()
  o3189["Value"] = o3189.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3189.Value == L0) then
    DelayedFunction(4, o3189, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3189.Value == L0) then
    o3189["Value"] = L0
    CallFunction(o3188, "ProcesseStateChange")
  end
end }
o3190 = { [nil] = {}, GetCalculated = function()
  if not (o1305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3190.SetStateValue(o3190.GetCalculated())
end, StartCalculate = function()
  o3190["Value"] = o3190.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3190.Value == L0) then
    o3190["Value"] = L0
    CallFunction(o3188, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 207)
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
  o1278 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o1278)
  o1283.Start()
  o1284 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2", S_o1284)
  o1289.Start()
  o1290 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1290)
  o1304.Start()
  o1305.Start()
  o1306.Start()
  o1311.Start()
  o1312.Start()
  o1313.Start()
  o1314.Start()
  o1344 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_angelina_1", S_o1344)
  o1402 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_l_1", S_o1402)
  o1408.Start()
  o1459 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_1", S_o1459)
  o1518 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_2", S_o1518)
  o1577 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_1", S_o1577)
  o1635 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_2", S_o1635)
  o1693 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_3", S_o1693)
  o1751 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_1", S_o1751)
  o1809 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_2", S_o1809)
  o1867 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_3", S_o1867)
  o1925 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_4", S_o1925)
  o1983 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_bomber_1", S_o1983)
  o2041 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout2_wide_1", S_o2041)
  o2099 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout2_wide_2", S_o2099)
  o2157 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout2_wide_3", S_o2157)
  o2215 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout1_wide_1", S_o2215)
  o2273 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout1_wide_2", S_o2273)
  o2331 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout1_wide_3", S_o2331)
  o2389 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_scout1_wide_4", S_o2389)
  o2447 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_1", S_o2447)
  o2452 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o2452)
  o2457 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_bomb_1", S_o2457)
  o2464.Start()
  o2470.Start()
  o2515 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_bomber_2", S_o2515)
  o2526.Start()
  o2571 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Amer_bomber_3", S_o2571)
  o2582.Start()
  o2627 = BindEasy(Node_Find("/"), "Camera", S_o2627)
  o2630 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_1", S_o2630)
  o2631 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_2", S_o2631)
  o2632 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_3", S_o2632)
  o2633 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_3_1", S_o2633)
  o2634 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_4", S_o2634)
  o2635 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_5", S_o2635)
  o2636 = BindEasy(Node_Find("/InGameSequences/Navigation"), "IntroPosition_6", S_o2636)
  o2639 = BindEasy(Node_Find("/InGameSequences/Navigation"), "APosition_1", S_o2639)
  o2640 = BindEasy(Node_Find("/InGameSequences/Navigation"), "APosition_2", S_o2640)
  o2641 = BindEasy(Node_Find("/InGameSequences/Navigation"), "APosition_3", S_o2641)
  o2642 = BindEasy(Node_Find("/InGameSequences/Navigation"), "APosition_4", S_o2642)
  o2643 = BindEasy(Node_Find("/InGameSequences/Navigation"), "APosition_5", S_o2643)
  o2644 = BindEasy(Node_Find("/InGameSequences/Navigation"), "APosition_6", S_o2644)
  o2682 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_strega_1", S_o2682)
  o2738 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_strega_2", S_o2738)
  o2795 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_bomb_1", S_o2795)
  o2851 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_bomber_1", S_o2851)
  o2907 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_bomber_2", S_o2907)
  o2963 = BindEasy(Node_Find("/InGameSequences/Object"), "wng_angelina_1", S_o2963)
  o3019 = BindEasy(Node_Find("/InGameSequences/Object"), "wng_angelina_2", S_o3019)
  o3076 = BindEasy(Node_Find("/InGameSequences/Object"), "Depot", S_o3076)
  o3132 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_scout2_wide_1", S_o3132)
  o3188 = BindEasy(Node_Find("/InGameSequences/Object"), "mer_scout2_wide_2", S_o3188)
  o2645 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o2645)
  o2660 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroSteeringPlayer", S_o2660)
  o2662 = BindEasy(Node_Find("/InGameSequences/Director"), "AngelinaDying", S_o2662)
  o1274 = { {}, o1402, o1459, o1518 }()
  o1277 = { {}, o2457, o2515, o2571 }()
  o2628 = { {}, o1290 }()
  o2637 = MacroFuse({})
  Game_LoadProgress_Leave(Node_Find("/"))
end
