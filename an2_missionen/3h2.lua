-- dekompiliert aus 3h2.sco
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
  Terrain_LoadTerrain(node1, "map/3H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3H2/Lmsh/", "map/3H2/Ltex/")
  Game_SetTerrainDepth(node0, 2826)
  Game_SetDecompressionHeight(node0, 450)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.109804, 0.101961, 0.082353)
  Game_SetParallelLightT(node0, 0.219608, 0.203922, 0.164706)
  Game_SetParallelLightB(node0, 0.109804, 0.101961, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3h2.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit1.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy1.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension2.sam", 3)
  Game_SetNPCHitFactor(node0, 0.75)
  Game_SetEnvironmentCubeMap(node0, "map/3H3/CubeMap/envcubemap.dds")
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
  Body_SetCS(node8, MAT_Vector3(787.229924, 592.42764, 602.851883), MAT_Vector3(-66.14219, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 3)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(1013.401985, 3596.9783, 114.456958), MAT_Vector3(-34.243689, 0, 0))
  Node_ParseIniFile(node9, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(924.052885, 2440.811511, 107.200761), MAT_Vector3(-16.322259, 0, 0))
  Node_ParseIniFile(node10, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(266.318555, 3636.139539, 101.225221), MAT_Vector3(47.943205, 0, 0))
  Node_ParseIniFile(node11, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(810.363149, 1007.565562, 269.09738), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(744.05008, 1034.792423, 228.732391), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(762.050998, 977.61848, 339.118181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_fx_rays", "fx_rays_3H2_1")
  Node_AddSon(node7, node15)
  Node_ParseIniFile(node15, "osd/fx_rays/fx_rays_3H2.osd")
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_fx_sky", "fx_sky_3H2_1")
  Node_AddSon(node7, node16)
  Node_ParseIniFile(node16, "osd/fx_sky/fx_sky_3H2.osd")
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_fx_flare", "fx_flare_3H2_1")
  Node_AddSon(node7, node17)
  Node_ParseIniFile(node17, "osd/fx_flare/fx_flare_3H2.osd")
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_fx_plankton", "fx_plankton_amber_n_1")
  Node_AddSon(node7, node18)
  Node_ParseIniFile(node18, "osd/fx_plankton/fx_plankton_amber_n.osd")
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1135.525831, 2796.95224, 121.238209), MAT_Vector3(-12.466366, 8.902586, 6.482866))
  Node_ParseIniFile(node19, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1955.496439, 1195.582997, 248.724188), MAT_Vector3(-8.723773, -8.955964, -2.576793))
  Node_ParseIniFile(node20, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(977.974535, 1348.96431, 193.627716), MAT_Vector3(-0.053288, 37.021465, -21.054106))
  Node_ParseIniFile(node21, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2538.46424, 1057.852937, 272.161191), MAT_Vector3(-41.026791, -26.351037, -5.504944))
  Node_ParseIniFile(node22, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(740.501345, 2133.211212, 110.93834), MAT_Vector3(-3.461461, 3.811635, 0.561936))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3861.522849, 1708.270416, 247.910172), MAT_Vector3(-5.770761, 4.606539, 1.061199))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2x")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(-234.477151, 1708.270416, 247.910172), MAT_Vector3(-5.770761, 4.606539, 1.061199))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(376.287296, 2878.64355, 99.809363), MAT_Vector3(76.885524, -3.384787, -0.491192))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(939.415176, 265.036377, 162.5002), MAT_Vector3(92.867797, -5.787939, 11.03321))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2083.794179, 3180.123084, 118.991664), MAT_Vector3(101.168725, -6.318408, 0.924487))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(789.186066, 1104.094061, 145.469613), MAT_Vector3(105.305253, 18.786762, 22.167083))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3649.248708, 2461.680059, 364.163003), MAT_Vector3(93.309282, -0.287029, -16.816108))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(285.248055, 2897.646436, 97.860129), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(619.477061, 2339.5683, 141.043279), MAT_Vector3(5.376076, -8.561704, -3.856841))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1434.008842, 1759.051589, 121.167439), MAT_Vector3(-28.306503, 12.603907, -0.036382))
  Node_ParseIniFile(node33, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1983.972237, 3051.379488, 163.403071), MAT_Vector3(-37.826106, 3.486543, -5.230049))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_m_01_5")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2478.216359, 1121.675218, 280.988549), MAT_Vector3(-37.82611, 3.486543, -5.230049))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1150.742553, 2721.728611, 147.136705), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(928.69696, 391.670931, 176.037709), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(485.394066, 2003.486083, 117.548043), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(319.192342, 2822.846409, 98.924311), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(489.389651, 2035.846883, 108.321914), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2022.096746, 3126.450146, 148.058594), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1018.94312, 3050.978501, -0.929178), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(673.847302, 2321.467982, 128.547236), MAT_Vector3(-7.986901, 10.518171, 6.306371))
  Node_ParseIniFile(node43, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1997.148438, 3034.894115, 180.04713), MAT_Vector3(-10.671958, 7.527671, 6.030585))
  Node_ParseIniFile(node44, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(707.26111, 2161.296582, 122.423432), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1423.441883, 1794.662642, 134.037658), MAT_Vector3(-94.870442, 15.956769, 14.436159))
  Node_ParseIniFile(node46, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2362.167987, 1164.198538, 288.194125), MAT_Vector3(-100.421894, -10.637684, -2.832601))
  Node_ParseIniFile(node47, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1365.680956, 1560.874295, 74.925343), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1697.207569, 1220.298906, 136.465431), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2279.891955, 1512.67676, 285.008588), MAT_Vector3(46.307354, 28.168138, -49.151511))
  Node_ParseIniFile(node50, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_rock_l_01_4")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(593.367083, 1556.307849, 110.512719), MAT_Vector3(126.774346, 38.346994, 26.678369))
  Node_ParseIniFile(node51, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1478.303027, 1584.704177, 91.901384), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node52, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2258.946233, 1424.072064, 264.940995), MAT_Vector3(47.78711, 57.45902, -37.818116))
  Node_ParseIniFile(node53, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(326.145276, 1770.148546, 110.441415), MAT_Vector3(173.530948, -5.743609, 33.331968))
  Node_ParseIniFile(node54, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(788.309716, 1957.901804, 120.017328), MAT_Vector3(48.217593, 57.158808, -37.934286))
  Node_ParseIniFile(node55, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1744.758589, 1295.471265, 150.54589), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node56, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(2207.891213, 1512.068684, 290.771291), MAT_Vector3(17.392597, 45.509452, 18.316038))
  Node_ParseIniFile(node57, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(548.562132, 1645.166783, 119.739044), MAT_Vector3(-154.774562, 28.833922, 62.273309))
  Node_ParseIniFile(node58, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_rock_s_01_4")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(306.586907, 1879.588284, 108.026141), MAT_Vector3(144.177489, 1.343612, 6.397873))
  Node_ParseIniFile(node59, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node60)
  Node_ParseIniFile(node60, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node60, "map/3H2/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node61)
  Node_ParseIniFile(node61, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node61, "map/3H2/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node62)
  Node_ParseIniFile(node62, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node62, "map/3H2/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node63)
  Node_ParseIniFile(node63, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node63, "map/3H2/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node64)
  Node_ParseIniFile(node64, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node64, "map/3H2/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node65)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node65, node66)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node65, node67)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_PatrolArea", "Wing_Area")
  Node_AddSon(node67, node68)
  PatrolArea_SetPosition(node68, MAT_Vector3(0, 0, 0))
  PatrolArea_SetRadius(node68, 400)
  PatrolArea_SetMinZ(node68, -350)
  PatrolArea_SetMaxZ(node68, 300)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_PatrolArea", "Bonus_Raid_Area")
  Node_AddSon(node67, node69)
  PatrolArea_SetPosition(node69, MAT_Vector3(1971.235611, 2982.677551, 263.058196))
  PatrolArea_SetRadius(node69, 350)
  PatrolArea_SetMinZ(node69, -125)
  PatrolArea_SetMaxZ(node69, 175)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_PatrolArea", "Convoy_Raid_Area")
  Node_AddSon(node67, node70)
  PatrolArea_SetPosition(node70, MAT_Vector3(2558.808753, 1284.014703, 170.126429))
  PatrolArea_SetRadius(node70, 800)
  PatrolArea_SetMinZ(node70, 0)
  PatrolArea_SetMaxZ(node70, 275)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_PatrolArea", "cra_guard1_area")
  Node_AddSon(node67, node71)
  PatrolArea_SetPosition(node71, MAT_Vector3(2827.068197, 1216.320309, 330.362014))
  PatrolArea_SetRadius(node71, 50)
  PatrolArea_SetMinZ(node71, -20)
  PatrolArea_SetMaxZ(node71, 20)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_PatrolArea", "cra_guard2_area")
  Node_AddSon(node67, node72)
  PatrolArea_SetPosition(node72, MAT_Vector3(2819.048356, 1524.652594, 395.917686))
  PatrolArea_SetRadius(node72, 50)
  PatrolArea_SetMinZ(node72, -20)
  PatrolArea_SetMaxZ(node72, 20)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_PatrolArea", "cra_guard3_area")
  Node_AddSon(node67, node73)
  PatrolArea_SetPosition(node73, MAT_Vector3(2933.628637, 1348.61905, 321.842142))
  PatrolArea_SetRadius(node73, 50)
  PatrolArea_SetMinZ(node73, -20)
  PatrolArea_SetMaxZ(node73, 20)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Path", "Wing1Path_1")
  Node_AddSon(node67, node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node74, node75)
  Position_SetPosition(node75, MAT_Vector3(616.463982, 656.799307, 490.990484))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node74, node76)
  Position_SetPosition(node76, MAT_Vector3(609.693339, 893.771793, 363.400947))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node74, node77)
  Position_SetPosition(node77, MAT_Vector3(584.30343, 1145.978225, 253.231513))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node74, node78)
  Position_SetPosition(node78, MAT_Vector3(518.289666, 1437.115851, 205.619988))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node74, node79)
  Position_SetPosition(node79, MAT_Vector3(487.821775, 1755.336047, 206.421427))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node74, node80)
  Position_SetPosition(node80, MAT_Vector3(447.19792, 1965.225963, 188.503611))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node74, node81)
  Position_SetPosition(node81, MAT_Vector3(357.486908, 2186.964503, 185.462765))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node74, node82)
  Position_SetPosition(node82, MAT_Vector3(228.844701, 2452.71222, 220.019943))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Path", "Wing1Path_2")
  Node_AddSon(node67, node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node83, node84)
  Position_SetPosition(node84, MAT_Vector3(733.257582, 668.647924, 490.9905))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node83, node85)
  Position_SetPosition(node85, MAT_Vector3(710.215818, 916.666972, 364.725303))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node83, node86)
  Position_SetPosition(node86, MAT_Vector3(723.10157, 1174.75323, 253.2315))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node83, node87)
  Position_SetPosition(node87, MAT_Vector3(718.023653, 1472.661873, 205.62))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node83, node88)
  Position_SetPosition(node88, MAT_Vector3(663.858504, 1758.721321, 206.4214))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node83, node89)
  Position_SetPosition(node89, MAT_Vector3(655.428485, 2026.267916, 155.720927))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node83, node90)
  Position_SetPosition(node90, MAT_Vector3(534.341901, 2297.443019, 164.420015))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node83, node91)
  Position_SetPosition(node91, MAT_Vector3(371.318569, 2516.656104, 188.005485))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Path", "Wing1Path_3")
  Node_AddSon(node67, node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node92, node93)
  Position_SetPosition(node93, MAT_Vector3(679.092443, 660.184621, 490.9905))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node92, node94)
  Position_SetPosition(node94, MAT_Vector3(653.702476, 925.932352, 363.4009))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node92, node95)
  Position_SetPosition(node95, MAT_Vector3(640.1612, 1186.601855, 253.2315))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node92, node96)
  Position_SetPosition(node96, MAT_Vector3(609.693373, 1462.505909, 205.62))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node92, node97)
  Position_SetPosition(node97, MAT_Vector3(570.76217, 1799.345176, 206.4214))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node92, node98)
  Position_SetPosition(node98, MAT_Vector3(543.377209, 1985.896579, 193.844814))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node92, node99)
  Position_SetPosition(node99, MAT_Vector3(447.804049, 2214.9426, 148.039935))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node92, node100)
  Position_SetPosition(node100, MAT_Vector3(283.846646, 2472.82535, 204.825642))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Path", "WingmenEscapePath")
  Node_AddSon(node67, node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node101, node102)
  Position_SetPosition(node102, MAT_Vector3(701.081558, 1034.45297, 364.527643))
  Position_SetRadius(node102, 20)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node101, node103)
  Position_SetPosition(node103, MAT_Vector3(691.344537, 764.033197, 391.277956))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Path", "Harvester_1_ApproachPath")
  Node_AddSon(node67, node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node104, node105)
  Position_SetPosition(node105, MAT_Vector3(689.304274, 731.388998, 396.438417))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node104, node106)
  Position_SetPosition(node106, MAT_Vector3(670.941912, 642.637581, 571.48607))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Path", "Harvester_1_DockPath")
  Node_AddSon(node67, node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node107, node108)
  Position_SetPosition(node108, MAT_Vector3(660.740581, 617.134296, 575))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node107, node109)
  Position_SetPosition(node109, MAT_Vector3(647.478894, 586.530363, 575))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_PatrolArea", "Harvester_1_DockArea")
  Node_AddSon(node67, node110)
  PatrolArea_SetPosition(node110, MAT_Vector3(765.072873, 741.340183, 552.352126))
  PatrolArea_SetRadius(node110, 100)
  PatrolArea_SetMinZ(node110, -50)
  PatrolArea_SetMaxZ(node110, 50)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Path", "Frigate1_Path")
  Node_AddSon(node67, node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node111, node112)
  Position_SetPosition(node112, MAT_Vector3(146.5631, 2808.323, 250))
  Position_SetRadius(node112, 20)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node111, node113)
  Position_SetPosition(node113, MAT_Vector3(433.5368, 2805.329, 265.8082))
  Position_SetRadius(node113, 20)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node111, node114)
  Position_SetPosition(node114, MAT_Vector3(1065.605, 2153.008, 247.2547))
  Position_SetRadius(node114, 20)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node111, node115)
  Position_SetPosition(node115, MAT_Vector3(1557.443, 1627.396, 245))
  Position_SetRadius(node115, 20)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node111, node116)
  Position_SetPosition(node116, MAT_Vector3(1775.679, 1437.393, 316.6688))
  Position_SetRadius(node116, 20)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node111, node117)
  Position_SetPosition(node117, MAT_Vector3(2115.034, 1437.102, 391.8122))
  Position_SetRadius(node117, 20)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node111, node118)
  Position_SetPosition(node118, MAT_Vector3(2509.332, 1420.297, 429.871))
  Position_SetRadius(node118, 20)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node111, node119)
  Position_SetPosition(node119, MAT_Vector3(2692.887, 1483.31, 462.4273))
  Position_SetRadius(node119, 20)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node111, node120)
  Position_SetPosition(node120, MAT_Vector3(2835.131, 1433.768, 381.7086))
  Position_SetRadius(node120, 20)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node111, node121)
  Position_SetPosition(node121, MAT_Vector3(3016.589, 1494.836, 390.0625))
  Position_SetRadius(node121, 20)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node111, node122)
  Position_SetPosition(node122, MAT_Vector3(3250.337, 1805.567, 386.6519))
  Position_SetRadius(node122, 20)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node111, node123)
  Position_SetPosition(node123, MAT_Vector3(3542.907, 1965.672, 383.6534))
  Position_SetRadius(node123, 20)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node111, node124)
  Position_SetPosition(node124, MAT_Vector3(3793.317, 1964.176, 363.6256))
  Position_SetRadius(node124, 20)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node111, node125)
  Position_SetPosition(node125, MAT_Vector3(3984.057, 1963.528, 363.6256))
  Position_SetRadius(node125, 20)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Path", "Frigate2_Path")
  Node_AddSon(node67, node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node126, node127)
  Position_SetPosition(node127, MAT_Vector3(146.563052, 2614.595503, 250))
  Position_SetRadius(node127, 20)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node126, node128)
  Position_SetPosition(node128, MAT_Vector3(448.911921, 2611.60195, 265.808244))
  Position_SetRadius(node128, 20)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node126, node129)
  Position_SetPosition(node129, MAT_Vector3(951.828853, 2005.407434, 247.254659))
  Position_SetRadius(node129, 20)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node126, node130)
  Position_SetPosition(node130, MAT_Vector3(1409.842487, 1489.019513, 164.792347))
  Position_SetRadius(node130, 20)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node126, node131)
  Position_SetPosition(node131, MAT_Vector3(1704.952705, 1268.265808, 247.100147))
  Position_SetRadius(node131, 20)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node126, node132)
  Position_SetPosition(node132, MAT_Vector3(2115.033602, 1267.974965, 391.812212))
  Position_SetRadius(node132, 20)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node126, node133)
  Position_SetPosition(node133, MAT_Vector3(2502.895978, 1267.974964, 303.261024))
  Position_SetRadius(node133, 20)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node126, node134)
  Position_SetPosition(node134, MAT_Vector3(2658.560743, 1157.213497, 390.837788))
  Position_SetRadius(node134, 20)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node126, node135)
  Position_SetPosition(node135, MAT_Vector3(2785.786752, 1281.445954, 381.708641))
  Position_SetRadius(node135, 20)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node126, node136)
  Position_SetPosition(node136, MAT_Vector3(3020.880379, 1327.496891, 390.062473))
  Position_SetRadius(node136, 20)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node126, node137)
  Position_SetPosition(node137, MAT_Vector3(3342.588022, 1666.117914, 386.651895))
  Position_SetRadius(node137, 20)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node126, node138)
  Position_SetPosition(node138, MAT_Vector3(3553.63352, 1776.879381, 383.653373))
  Position_SetRadius(node138, 20)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node126, node139)
  Position_SetPosition(node139, MAT_Vector3(3797.608102, 1775.382604, 363.625587))
  Position_SetRadius(node139, 20)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node126, node140)
  Position_SetPosition(node140, MAT_Vector3(3986.201849, 1776.879777, 363.6256))
  Position_SetRadius(node140, 20)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Path", "TechBomber_Path")
  Node_AddSon(node67, node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node141, node142)
  Position_SetPosition(node142, MAT_Vector3(109.146024, 2703.971151, 212))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node141, node143)
  Position_SetPosition(node143, MAT_Vector3(329.170956, 2706.885388, 184.181237))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node141, node144)
  Position_SetPosition(node144, MAT_Vector3(440.640541, 2695.956998, 200.915584))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node141, node145)
  Position_SetPosition(node145, MAT_Vector3(631.523098, 2494.14605, 219.604951))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node141, node146)
  Position_SetPosition(node146, MAT_Vector3(860.290743, 2226.764758, 194.983096))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node141, node147)
  Position_SetPosition(node147, MAT_Vector3(1015.47389, 2067.210255, 217.822782))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node141, node148)
  Position_SetPosition(node148, MAT_Vector3(1239.141619, 1829.699897, 175.958793))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node141, node149)
  Position_SetPosition(node149, MAT_Vector3(1376.839342, 1662.13124, 154.895726))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node141, node150)
  Position_SetPosition(node150, MAT_Vector3(1514.537064, 1543.376062, 175.03269))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node141, node151)
  Position_SetPosition(node151, MAT_Vector3(1666.805974, 1422.435205, 236.864926))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node141, node152)
  Position_SetPosition(node152, MAT_Vector3(1759.333015, 1363.421896, 251.29446))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node141, node153)
  Position_SetPosition(node153, MAT_Vector3(1913.059044, 1345.93647, 311.301316))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node141, node154)
  Position_SetPosition(node154, MAT_Vector3(2111.955754, 1348.122149, 359.566005))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node141, node155)
  Position_SetPosition(node155, MAT_Vector3(2308.666786, 1344.479352, 285.474726))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node141, node156)
  Position_SetPosition(node156, MAT_Vector3(2501.735021, 1332.822402, 280.763502))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node141, node157)
  Position_SetPosition(node157, MAT_Vector3(2542.534346, 1386.007236, 395.751507))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node141, node158)
  Position_SetPosition(node158, MAT_Vector3(2616.118844, 1410.049696, 316.766792))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node141, node159)
  Position_SetPosition(node159, MAT_Vector3(2669.303678, 1333.550961, 256.322939))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node141, node160)
  Position_SetPosition(node160, MAT_Vector3(2749.44521, 1340.836555, 312.883424))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node141, node161)
  Position_SetPosition(node161, MAT_Vector3(2837.600894, 1364.150455, 316.572052))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node141, node162)
  Position_SetPosition(node162, MAT_Vector3(2954.898954, 1416.60673, 374.652187))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node141, node163)
  Position_SetPosition(node163, MAT_Vector3(3043.783198, 1426.806561, 364.361132))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node141, node164)
  Position_SetPosition(node164, MAT_Vector3(3155.252783, 1556.490131, 372.133937))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node141, node165)
  Position_SetPosition(node165, MAT_Vector3(3240.49423, 1673.78819, 378.560093))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node141, node166)
  Position_SetPosition(node166, MAT_Vector3(3309.707371, 1742.272772, 378.221524))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node141, node167)
  Position_SetPosition(node167, MAT_Vector3(3455.419247, 1816.585829, 376.684711))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node141, node168)
  Position_SetPosition(node168, MAT_Vector3(3543.574931, 1858.842272, 399.203041))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node141, node169)
  Position_SetPosition(node169, MAT_Vector3(3786.185204, 1865.399307, 343.669541))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_29")
  Node_AddSon(node141, node170)
  Position_SetPosition(node170, MAT_Vector3(3982.896236, 1864.670747, 308.971812))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Path", "Bomber1_Path")
  Node_AddSon(node67, node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node171, node172)
  Position_SetPosition(node172, MAT_Vector3(66.160997, 2738.94185, 212))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node171, node173)
  Position_SetPosition(node173, MAT_Vector3(327.713881, 2738.941613, 184.1812))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node171, node174)
  Position_SetPosition(node174, MAT_Vector3(444.283297, 2726.556494, 200.9156))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node171, node175)
  Position_SetPosition(node175, MAT_Vector3(654.837, 2517.4599, 219.605))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node171, node176)
  Position_SetPosition(node176, MAT_Vector3(886.518838, 2261.007291, 194.9831))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node171, node177)
  Position_SetPosition(node177, MAT_Vector3(1042.430697, 2100.723731, 217.8228))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node171, node178)
  Position_SetPosition(node178, MAT_Vector3(1263.184459, 1861.028053, 175.9588))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node171, node179)
  Position_SetPosition(node179, MAT_Vector3(1398.695781, 1697.83041, 154.8957))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node171, node180)
  Position_SetPosition(node180, MAT_Vector3(1537.122341, 1580.532528, 175.0327))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node171, node181)
  Position_SetPosition(node181, MAT_Vector3(1685.019984, 1454.491613, 236.8649))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node171, node182)
  Position_SetPosition(node182, MAT_Vector3(1768.804272, 1401.307088, 294.658392))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node171, node183)
  Position_SetPosition(node183, MAT_Vector3(1912.330469, 1385.278781, 300.125967))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node171, node184)
  Position_SetPosition(node184, MAT_Vector3(2112.684559, 1386.007088, 359.566))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node171, node185)
  Position_SetPosition(node185, MAT_Vector3(2314.495475, 1378.721291, 285.4747))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node171, node186)
  Position_SetPosition(node186, MAT_Vector3(2495.177966, 1367.064291, 280.7635))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node171, node187)
  Position_SetPosition(node187, MAT_Vector3(2552.733831, 1361.964541, 242.643679))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node171, node188)
  Position_SetPosition(node188, MAT_Vector3(2631.327462, 1368.97125, 326.284411))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node171, node189)
  Position_SetPosition(node189, MAT_Vector3(2688.975103, 1379.450241, 333.428418))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node171, node190)
  Position_SetPosition(node190, MAT_Vector3(2832.605062, 1396.039031, 360.203578))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node171, node191)
  Position_SetPosition(node191, MAT_Vector3(2949.903121, 1444.852509, 372.912666))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node171, node192)
  Position_SetPosition(node192, MAT_Vector3(3032.95889, 1463.795053, 365.197295))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node171, node193)
  Position_SetPosition(node193, MAT_Vector3(3118.200338, 1570.164722, 382.818321))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node171, node194)
  Position_SetPosition(node194, MAT_Vector3(3202.713225, 1686.005663, 386.819966))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node171, node195)
  Position_SetPosition(node195, MAT_Vector3(3282.126198, 1767.604313, 389.928031))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node171, node196)
  Position_SetPosition(node196, MAT_Vector3(3441.680701, 1850.660083, 391.65173))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node171, node197)
  Position_SetPosition(node197, MAT_Vector3(3540.036217, 1904.573476, 401.875368))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node171, node198)
  Position_SetPosition(node198, MAT_Vector3(3787.017846, 1910.401952, 342.949706))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node171, node199)
  Position_SetPosition(node199, MAT_Vector3(3983.000319, 1908.216273, 313.01805))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Path", "Bomber2_Path")
  Node_AddSon(node67, node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node200, node201)
  Position_SetPosition(node201, MAT_Vector3(60.132325, 2668.725672, 212))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node200, node202)
  Position_SetPosition(node202, MAT_Vector3(328.423156, 2670.853439, 184.1812))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node200, node203)
  Position_SetPosition(node203, MAT_Vector3(435.417602, 2662.722974, 200.9156))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node200, node204)
  Position_SetPosition(node204, MAT_Vector3(611.123437, 2471.560759, 219.605))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node200, node205)
  Position_SetPosition(node205, MAT_Vector3(836.248203, 2196.165215, 194.9831))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node200, node206)
  Position_SetPosition(node206, MAT_Vector3(989.246165, 2033.696537, 217.8228))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node200, node207)
  Position_SetPosition(node207, MAT_Vector3(1212.913403, 1794.729097, 175.9588))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node200, node208)
  Position_SetPosition(node208, MAT_Vector3(1354.253878, 1629.345418, 154.8957))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node200, node209)
  Position_SetPosition(node209, MAT_Vector3(1494.136997, 1507.677062, 175.0327))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node200, node210)
  Position_SetPosition(node210, MAT_Vector3(1645.677794, 1388.193097, 236.8649))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node200, node211)
  Position_SetPosition(node211, MAT_Vector3(1750.590016, 1325.536825, 294.6584))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node200, node212)
  Position_SetPosition(node212, MAT_Vector3(1914.515678, 1312.423062, 300.126))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node200, node213)
  Position_SetPosition(node213, MAT_Vector3(2113.413559, 1313.151062, 359.566))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node200, node214)
  Position_SetPosition(node214, MAT_Vector3(2308.666525, 1307.322181, 285.4747))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node200, node215)
  Position_SetPosition(node215, MAT_Vector3(2498.820797, 1302.950775, 280.7635))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node200, node216)
  Position_SetPosition(node216, MAT_Vector3(2594.990444, 1237.381346, 286.722728))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node200, node217)
  Position_SetPosition(node217, MAT_Vector3(2646.71816, 1195.124902, 362.936608))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node200, node218)
  Position_SetPosition(node218, MAT_Vector3(2687.517485, 1313.880081, 317.952103))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node200, node219)
  Position_SetPosition(node219, MAT_Vector3(2749.445032, 1295.666097, 339.069875))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node200, node220)
  Position_SetPosition(node220, MAT_Vector3(2758.187745, 1398.392969, 433.69007))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node200, node221)
  Position_SetPosition(node221, MAT_Vector3(2957.084455, 1379.450425, 403.655596))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node200, node222)
  Position_SetPosition(node222, MAT_Vector3(3051.068614, 1398.392969, 364.706469))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node200, node223)
  Position_SetPosition(node223, MAT_Vector3(3179.295065, 1538.276369, 359.329105))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node200, node224)
  Position_SetPosition(node224, MAT_Vector3(3260.997778, 1656.134415, 366.922579))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node200, node225)
  Position_SetPosition(node225, MAT_Vector3(3324.382444, 1715.876284, 372.90342))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node200, node226)
  Position_SetPosition(node226, MAT_Vector3(3467.180082, 1787.275103, 370.701002))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node200, node227)
  Position_SetPosition(node227, MAT_Vector3(3546.593054, 1825.88875, 375.847313))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node200, node228)
  Position_SetPosition(node228, MAT_Vector3(3784.831971, 1830.260106, 342.50839))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_29")
  Node_AddSon(node200, node229)
  Position_SetPosition(node229, MAT_Vector3(3981.543003, 1828.074428, 308.877067))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "MayDay_Path")
  Node_AddSon(node67, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(251.469616, 2706.004195, 320))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(329.171, 2706.885, 290))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node230, node233)
  Position_SetPosition(node233, MAT_Vector3(440.6405, 2695.957, 270.9156))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node230, node234)
  Position_SetPosition(node234, MAT_Vector3(631.5231, 2494.146, 289.605))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node230, node235)
  Position_SetPosition(node235, MAT_Vector3(860.2907, 2226.765, 264.9831))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node230, node236)
  Position_SetPosition(node236, MAT_Vector3(1015.474, 2067.21, 287.8228))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node230, node237)
  Position_SetPosition(node237, MAT_Vector3(1239.142, 1829.7, 245.9588))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node230, node238)
  Position_SetPosition(node238, MAT_Vector3(1376.839, 1662.131, 224.8957))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node230, node239)
  Position_SetPosition(node239, MAT_Vector3(1514.537, 1543.376, 245.0327))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node230, node240)
  Position_SetPosition(node240, MAT_Vector3(1666.806, 1422.435, 306.8649))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node230, node241)
  Position_SetPosition(node241, MAT_Vector3(1759.333, 1363.422, 321.2945))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node230, node242)
  Position_SetPosition(node242, MAT_Vector3(1913.059, 1345.936, 381.3013))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node230, node243)
  Position_SetPosition(node243, MAT_Vector3(2111.956, 1348.122, 429.566))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node230, node244)
  Position_SetPosition(node244, MAT_Vector3(2308.667, 1344.479, 355.4747))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node230, node245)
  Position_SetPosition(node245, MAT_Vector3(2633.433597, 1341.346203, 290.198513))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node230, node246)
  Position_SetPosition(node246, MAT_Vector3(2919.562771, 1400.869138, 323.654643))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node230, node247)
  Position_SetPosition(node247, MAT_Vector3(3084.654166, 1536.866369, 376.563085))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Path", "Animal_Path")
  Node_AddSon(node67, node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node248, node249)
  Position_SetPosition(node249, MAT_Vector3(251.69, 2738.942, 320))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node248, node250)
  Position_SetPosition(node250, MAT_Vector3(327.7139, 2738.942, 290))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node248, node251)
  Position_SetPosition(node251, MAT_Vector3(444.2833, 2726.556, 270.9156))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node248, node252)
  Position_SetPosition(node252, MAT_Vector3(654.837, 2517.46, 289.605))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node248, node253)
  Position_SetPosition(node253, MAT_Vector3(886.5188, 2261.007, 264.9831))
  Position_SetRadius(node253, 5)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node248, node254)
  Position_SetPosition(node254, MAT_Vector3(1042.431, 2100.724, 287.8228))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node248, node255)
  Position_SetPosition(node255, MAT_Vector3(1263.184, 1861.028, 245.9588))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node248, node256)
  Position_SetPosition(node256, MAT_Vector3(1398.696, 1697.83, 224.8957))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node248, node257)
  Position_SetPosition(node257, MAT_Vector3(1537.122, 1580.533, 245.0327))
  Position_SetRadius(node257, 5)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node248, node258)
  Position_SetPosition(node258, MAT_Vector3(1685.02, 1454.492, 306.8649))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node248, node259)
  Position_SetPosition(node259, MAT_Vector3(1768.804, 1401.307, 364.6584))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node248, node260)
  Position_SetPosition(node260, MAT_Vector3(1912.33, 1385.279, 370.126))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node248, node261)
  Position_SetPosition(node261, MAT_Vector3(2112.685, 1386.007, 429.566))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node248, node262)
  Position_SetPosition(node262, MAT_Vector3(2314.495, 1378.721, 355.4747))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node248, node263)
  Position_SetPosition(node263, MAT_Vector3(2495.178, 1367.064, 350.7635))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node248, node264)
  Position_SetPosition(node264, MAT_Vector3(2922.282625, 1424.498607, 397.602101))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node248, node265)
  Position_SetPosition(node265, MAT_Vector3(3107.628009, 1503.44987, 366.631222))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Path", "Stoney_Path")
  Node_AddSon(node67, node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node266, node267)
  Position_SetPosition(node267, MAT_Vector3(250.744316, 2670.759195, 320))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node266, node268)
  Position_SetPosition(node268, MAT_Vector3(328.4232, 2670.853, 290))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node266, node269)
  Position_SetPosition(node269, MAT_Vector3(435.4176, 2662.723, 270.9156))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node266, node270)
  Position_SetPosition(node270, MAT_Vector3(611.1234, 2471.561, 289.605))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node266, node271)
  Position_SetPosition(node271, MAT_Vector3(836.2482, 2196.165, 264.9831))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node266, node272)
  Position_SetPosition(node272, MAT_Vector3(989.2462, 2033.697, 287.8228))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node266, node273)
  Position_SetPosition(node273, MAT_Vector3(1212.913, 1794.729, 245.9588))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node266, node274)
  Position_SetPosition(node274, MAT_Vector3(1354.254, 1629.345, 224.8957))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node266, node275)
  Position_SetPosition(node275, MAT_Vector3(1494.137, 1507.677, 245.0327))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node266, node276)
  Position_SetPosition(node276, MAT_Vector3(1645.678, 1388.193, 306.8649))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node266, node277)
  Position_SetPosition(node277, MAT_Vector3(1750.59, 1325.537, 364.6584))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node266, node278)
  Position_SetPosition(node278, MAT_Vector3(1914.516, 1312.423, 370.126))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node266, node279)
  Position_SetPosition(node279, MAT_Vector3(2113.414, 1313.151, 429.566))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node266, node280)
  Position_SetPosition(node280, MAT_Vector3(2308.667, 1307.322, 355.4747))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node266, node281)
  Position_SetPosition(node281, MAT_Vector3(2498.821, 1302.951, 350.7635))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node266, node282)
  Position_SetPosition(node282, MAT_Vector3(2922.792828, 1378.138122, 350.7635))
  Position_SetRadius(node282, 5)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node266, node283)
  Position_SetPosition(node283, MAT_Vector3(3115.982134, 1470.033372, 365.989586))
  Position_SetRadius(node283, 5)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Path", "MayDay_Path2")
  Node_AddSon(node67, node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node284, node285)
  Position_SetPosition(node285, MAT_Vector3(2951.494893, 1412.365069, 444.113926))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node284, node286)
  Position_SetPosition(node286, MAT_Vector3(3043.745971, 1427.382686, 433.968365))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node284, node287)
  Position_SetPosition(node287, MAT_Vector3(3155.305414, 1551.814373, 440.486514))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node284, node288)
  Position_SetPosition(node288, MAT_Vector3(3241.12037, 1671.955311, 447.206211))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node284, node289)
  Position_SetPosition(node289, MAT_Vector3(3307.626961, 1738.461902, 446.739028))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node284, node290)
  Position_SetPosition(node290, MAT_Vector3(3453.512386, 1817.840736, 446.877687))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node284, node291)
  Position_SetPosition(node291, MAT_Vector3(3545.763464, 1856.457467, 468.704357))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node284, node292)
  Position_SetPosition(node292, MAT_Vector3(3783.899967, 1865.038962, 413.859607))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node284, node293)
  Position_SetPosition(node293, MAT_Vector3(3882.587167, 1867.184336, 404.464515))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Path", "Animal_Path2")
  Node_AddSon(node67, node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node294, node295)
  Position_SetPosition(node295, MAT_Vector3(2951.495, 1444.545609, 444.1139))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node294, node296)
  Position_SetPosition(node296, MAT_Vector3(3030.873757, 1465.99973, 433.9684))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node294, node297)
  Position_SetPosition(node297, MAT_Vector3(3118.833644, 1573.267739, 440.4865))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node294, node298)
  Position_SetPosition(node298, MAT_Vector3(3198.212522, 1684.827243, 447.2062))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node294, node299)
  Position_SetPosition(node299, MAT_Vector3(3281.882513, 1768.497235, 446.739))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node294, node300)
  Position_SetPosition(node300, MAT_Vector3(3438.494383, 1852.166982, 446.8777))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node294, node301)
  Position_SetPosition(node301, MAT_Vector3(3541.472252, 1905.8006, 468.7044))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node294, node302)
  Position_SetPosition(node302, MAT_Vector3(3783.9, 1912.237226, 413.8596))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node294, node303)
  Position_SetPosition(node303, MAT_Vector3(3884.732374, 1914.382226, 404.4645))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Path", "Stoney_Path2")
  Node_AddSon(node67, node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node304, node305)
  Position_SetPosition(node305, MAT_Vector3(2957.931122, 1382.330157, 444.1139))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node304, node306)
  Position_SetPosition(node306, MAT_Vector3(3050.182365, 1397.348035, 433.9684))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node304, node307)
  Position_SetPosition(node307, MAT_Vector3(3176.759095, 1541.087391, 440.4865))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node304, node308)
  Position_SetPosition(node308, MAT_Vector3(3264.719591, 1652.646391, 447.2062))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node304, node309)
  Position_SetPosition(node309, MAT_Vector3(3326.935852, 1714.862652, 446.739))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node304, node310)
  Position_SetPosition(node310, MAT_Vector3(3470.674609, 1787.805783, 446.8777))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node304, node311)
  Position_SetPosition(node311, MAT_Vector3(3543.617374, 1826.422166, 468.7044))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node304, node312)
  Position_SetPosition(node312, MAT_Vector3(3786.045374, 1828.567418, 413.8596))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node304, node313)
  Position_SetPosition(node313, MAT_Vector3(3882.586626, 1830.712418, 404.4645))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_PatrolArea", "Grab_Area1")
  Node_AddSon(node67, node314)
  PatrolArea_SetPosition(node314, MAT_Vector3(573.527903, 1657.356938, 100))
  PatrolArea_SetRadius(node314, 300)
  PatrolArea_SetMinZ(node314, 0)
  PatrolArea_SetMaxZ(node314, 100)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_PatrolArea", "Grab_Area2")
  Node_AddSon(node67, node315)
  PatrolArea_SetPosition(node315, MAT_Vector3(654.952824, 2407.0571, 100))
  PatrolArea_SetRadius(node315, 250)
  PatrolArea_SetMinZ(node315, 0)
  PatrolArea_SetMaxZ(node315, 100)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_PatrolArea", "Grab_Area3")
  Node_AddSon(node67, node316)
  PatrolArea_SetPosition(node316, MAT_Vector3(204.85616, 3342.792, 97.198472))
  PatrolArea_SetRadius(node316, 250)
  PatrolArea_SetMinZ(node316, 0)
  PatrolArea_SetMaxZ(node316, 100)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_PatrolArea", "Grab_Area4")
  Node_AddSon(node67, node317)
  PatrolArea_SetPosition(node317, MAT_Vector3(778.6368, 3520.142367, 97.19847))
  PatrolArea_SetRadius(node317, 250)
  PatrolArea_SetMinZ(node317, 0)
  PatrolArea_SetMaxZ(node317, 100)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node65, node318)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node65, node319)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Trigger", "tReachConvoi")
  Node_AddSon(node319, node320)
  Body_SetFriendOrFoeID(node320, 0)
  Body_SetCS(node320, MAT_Vector3(192.207098, 2694.828198, 197.032673), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node320, 256, 256, 256)
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Trigger", "tActivateWP2")
  Node_AddSon(node319, node321)
  Body_SetFriendOrFoeID(node321, 5)
  Body_SetCS(node321, MAT_Vector3(445.398215, 2693.044628, 166.897919), MAT_Vector3(-2.682462, 0, 0))
  Trigger_SetBoxMode(node321, 30, 200, 250)
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Trigger", "tActivateWP3")
  Node_AddSon(node319, node322)
  Body_SetFriendOrFoeID(node322, 5)
  Body_SetCS(node322, MAT_Vector3(1002.08132, 2077.116301, 166.8979), MAT_Vector3(-47.682462, 0, 0))
  Trigger_SetBoxMode(node322, 30, 200, 250)
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Trigger", "tActivateWP4")
  Node_AddSon(node319, node323)
  Body_SetFriendOrFoeID(node323, 5)
  Body_SetCS(node323, MAT_Vector3(1909.214118, 1348.334478, 166.8979), MAT_Vector3(0.200503, 0, 0))
  Trigger_SetBoxMode(node323, 30, 200, 250)
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Trigger", "tMessage_014(228)")
  Node_AddSon(node319, node324)
  Body_SetFriendOrFoeID(node324, 5)
  Body_SetCS(node324, MAT_Vector3(2341.846325, 1344.582107, 255.689685), MAT_Vector3(0.200503, 0, 0))
  Trigger_SetBoxMode(node324, 50, 200, 250)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Trigger", "tCrawlerAmbush")
  Node_AddSon(node319, node325)
  Body_SetFriendOrFoeID(node325, 5)
  Body_SetCS(node325, MAT_Vector3(2517.198201, 1292.625566, 252.709352), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node325, 30, 200, 250)
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Trigger", "tMissionWon")
  Node_AddSon(node319, node326)
  Body_SetFriendOrFoeID(node326, 5)
  Body_SetCS(node326, MAT_Vector3(3793.313781, 1870.567861, 326.827265), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node326, 30, 200, 250)
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node65, node327)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node327, node328)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("nod_vehicle", "gen_grab_1")
  Node_AddSon(node328, node329)
  Body_SetCS(node329, MAT_Vector3(628.805708, 1740.145837, 195.694418), MAT_Vector3(136.276816, 0, 0))
  Node_ParseIniFile(node329, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node329, 0)
  Body_SetNameKey(node329, -1)
  Body_SetCargoKey(node329, -1, 0)
  Body_SetCargoKey(node329, -1, 1)
  Body_SetCargoKey(node329, -1, 2)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("nod_vehicle", "gen_grab_2")
  Node_AddSon(node328, node330)
  Body_SetCS(node330, MAT_Vector3(435.616592, 1487.433588, 304.320682), MAT_Vector3(-98.401524, 0, 0))
  Node_ParseIniFile(node330, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node330, 0)
  Body_SetNameKey(node330, -1)
  Body_SetCargoKey(node330, -1, 0)
  Body_SetCargoKey(node330, -1, 1)
  Body_SetCargoKey(node330, -1, 2)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("nod_vehicle", "gen_grab_3")
  Node_AddSon(node328, node331)
  Body_SetCS(node331, MAT_Vector3(494.095459, 1718.216262, 304.320682), MAT_Vector3(-28.248466, 0, 0))
  Node_ParseIniFile(node331, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node331, 0)
  Body_SetNameKey(node331, -1)
  Body_SetCargoKey(node331, -1, 0)
  Body_SetCargoKey(node331, -1, 1)
  Body_SetCargoKey(node331, -1, 2)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("nod_vehicle", "gen_grab_4")
  Node_AddSon(node328, node332)
  Body_SetCS(node332, MAT_Vector3(690.417413, 1539.646601, 304.3207), MAT_Vector3(23.418852, 0, 0))
  Node_ParseIniFile(node332, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node332, 0)
  Body_SetNameKey(node332, -1)
  Body_SetCargoKey(node332, -1, 0)
  Body_SetCargoKey(node332, -1, 1)
  Body_SetCargoKey(node332, -1, 2)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("nod_vehicle", "gen_grab_5")
  Node_AddSon(node328, node333)
  Body_SetCS(node333, MAT_Vector3(434.572354, 1816.377356, 304.3207), MAT_Vector3(-47.008497, 0, 0))
  Node_ParseIniFile(node333, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node333, 0)
  Body_SetNameKey(node333, -1)
  Body_SetCargoKey(node333, -1, 0)
  Body_SetCargoKey(node333, -1, 1)
  Body_SetCargoKey(node333, -1, 2)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("nod_vehicle", "gen_grab_6")
  Node_AddSon(node328, node334)
  Body_SetCS(node334, MAT_Vector3(755.132004, 2523.387606, 120.112504), MAT_Vector3(136.2768, 0, 0))
  Node_ParseIniFile(node334, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node334, 0)
  Body_SetNameKey(node334, -1)
  Body_SetCargoKey(node334, -1, 0)
  Body_SetCargoKey(node334, -1, 1)
  Body_SetCargoKey(node334, -1, 2)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("nod_vehicle", "gen_grab_7")
  Node_AddSon(node328, node335)
  Body_SetCS(node335, MAT_Vector3(571.92626, 2327.546984, 139.575059), MAT_Vector3(-98.40152, 0, 0))
  Node_ParseIniFile(node335, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node335, 0)
  Body_SetNameKey(node335, -1)
  Body_SetCargoKey(node335, -1, 0)
  Body_SetCargoKey(node335, -1, 1)
  Body_SetCargoKey(node335, -1, 2)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("nod_vehicle", "gen_grab_8")
  Node_AddSon(node328, node336)
  Body_SetCS(node336, MAT_Vector3(489.799548, 2485.48297, 159.342637), MAT_Vector3(-28.24847, 0, 0))
  Node_ParseIniFile(node336, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node336, 0)
  Body_SetNameKey(node336, -1)
  Body_SetCargoKey(node336, -1, 0)
  Body_SetCargoKey(node336, -1, 1)
  Body_SetCargoKey(node336, -1, 2)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("nod_vehicle", "gen_grab_9")
  Node_AddSon(node328, node337)
  Body_SetCS(node337, MAT_Vector3(742.497125, 2232.785392, 114.388613), MAT_Vector3(23.41885, 0, 0))
  Node_ParseIniFile(node337, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node337, 0)
  Body_SetNameKey(node337, -1)
  Body_SetCargoKey(node337, -1, 0)
  Body_SetCargoKey(node337, -1, 1)
  Body_SetCargoKey(node337, -1, 2)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("nod_vehicle", "gen_grab_10")
  Node_AddSon(node328, node338)
  Body_SetCS(node338, MAT_Vector3(843.576156, 2314.912105, 111.187799), MAT_Vector3(-47.0085, 0, 0))
  Node_ParseIniFile(node338, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node338, 0)
  Body_SetNameKey(node338, -1)
  Body_SetCargoKey(node338, -1, 0)
  Body_SetCargoKey(node338, -1, 1)
  Body_SetCargoKey(node338, -1, 2)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("nod_vehicle", "gen_grab_11")
  Node_AddSon(node328, node339)
  Body_SetCS(node339, MAT_Vector3(317.739056, 3458.884511, 122.455432), MAT_Vector3(136.2768, 0, 0))
  Node_ParseIniFile(node339, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node339, 0)
  Body_SetNameKey(node339, -1)
  Body_SetCargoKey(node339, -1, 0)
  Body_SetCargoKey(node339, -1, 1)
  Body_SetCargoKey(node339, -1, 2)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("nod_vehicle", "gen_grab_12")
  Node_AddSon(node328, node340)
  Body_SetCS(node340, MAT_Vector3(77.88688, 3298.98306, 103.486789), MAT_Vector3(-98.40152, 0, 0))
  Node_ParseIniFile(node340, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node340, 0)
  Body_SetNameKey(node340, -1)
  Body_SetCargoKey(node340, -1, 0)
  Body_SetCargoKey(node340, -1, 1)
  Body_SetCargoKey(node340, -1, 2)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("nod_vehicle", "gen_grab_13")
  Node_AddSon(node328, node341)
  Body_SetCS(node341, MAT_Vector3(305.438944, 3246.707586, 115.348397), MAT_Vector3(-28.24847, 0, 0))
  Node_ParseIniFile(node341, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node341, 0)
  Body_SetNameKey(node341, -1)
  Body_SetCargoKey(node341, -1, 0)
  Body_SetCargoKey(node341, -1, 1)
  Body_SetCargoKey(node341, -1, 2)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("nod_vehicle", "gen_grab_14")
  Node_AddSon(node328, node342)
  Body_SetCS(node342, MAT_Vector3(200.887996, 3197.50714, 107.642512), MAT_Vector3(23.41885, 0, 0))
  Node_ParseIniFile(node342, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node342, 0)
  Body_SetNameKey(node342, -1)
  Body_SetCargoKey(node342, -1, 0)
  Body_SetCargoKey(node342, -1, 1)
  Body_SetCargoKey(node342, -1, 2)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_vehicle", "gen_grab_15")
  Node_AddSon(node328, node343)
  Body_SetCS(node343, MAT_Vector3(366.939502, 3323.583284, 118.480452), MAT_Vector3(-47.0085, 0, 0))
  Node_ParseIniFile(node343, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node343, 0)
  Body_SetNameKey(node343, -1)
  Body_SetCargoKey(node343, -1, 0)
  Body_SetCargoKey(node343, -1, 1)
  Body_SetCargoKey(node343, -1, 2)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("nod_vehicle", "gen_grab_16")
  Node_AddSon(node328, node344)
  Body_SetCS(node344, MAT_Vector3(762.853747, 3705.784531, 122.4554), MAT_Vector3(136.2768, 0, 0))
  Node_ParseIniFile(node344, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node344, 0)
  Body_SetNameKey(node344, -1)
  Body_SetCargoKey(node344, -1, 0)
  Body_SetCargoKey(node344, -1, 1)
  Body_SetCargoKey(node344, -1, 2)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("nod_vehicle", "gen_grab_17")
  Node_AddSon(node328, node345)
  Body_SetCS(node345, MAT_Vector3(735.126477, 3545.882531, 131.277335), MAT_Vector3(-98.40152, 0, 0))
  Node_ParseIniFile(node345, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node345, 0)
  Body_SetNameKey(node345, -1)
  Body_SetCargoKey(node345, -1, 0)
  Body_SetCargoKey(node345, -1, 1)
  Body_SetCargoKey(node345, -1, 2)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_vehicle", "gen_grab_18")
  Node_AddSon(node328, node346)
  Body_SetCS(node346, MAT_Vector3(938.336289, 3479.697698, 140.87032), MAT_Vector3(-28.24847, 0, 0))
  Node_ParseIniFile(node346, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node346, 0)
  Body_SetNameKey(node346, -1)
  Body_SetCargoKey(node346, -1, 0)
  Body_SetCargoKey(node346, -1, 1)
  Body_SetCargoKey(node346, -1, 2)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_vehicle", "gen_grab_19")
  Node_AddSon(node328, node347)
  Body_SetCS(node347, MAT_Vector3(628.615356, 3458.316364, 137.134497), MAT_Vector3(23.41885, 0, 0))
  Node_ParseIniFile(node347, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node347, 0)
  Body_SetNameKey(node347, -1)
  Body_SetCargoKey(node347, -1, 0)
  Body_SetCargoKey(node347, -1, 1)
  Body_SetCargoKey(node347, -1, 2)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_vehicle", "gen_grab_20")
  Node_AddSon(node328, node348)
  Body_SetCS(node348, MAT_Vector3(801.621773, 3403.564538, 118.4805), MAT_Vector3(-47.0085, 0, 0))
  Node_ParseIniFile(node348, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node348, 0)
  Body_SetNameKey(node348, -1)
  Body_SetCargoKey(node348, -1, 0)
  Body_SetCargoKey(node348, -1, 1)
  Body_SetCargoKey(node348, -1, 2)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node327, node349)
  Body_SetCS(node349, MAT_Vector3(718.758184, 672.680626, 595), MAT_Vector3(-0.125478, 0, 0))
  Node_ParseIniFile(node349, "osd/pla/pla_ship1.osd")
  Body_SetFriendOrFoeID(node349, 2)
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("nod_vessel", "wng_mayday_1")
  Node_AddSon(node327, node350)
  Body_SetCS(node350, MAT_Vector3(617.227243, 613.864877, 495.38166), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node350, "osd/wng/wng_mayday.osd")
  Body_SetFriendOrFoeID(node350, 3)
  Body_SetNameKey(node350, -1)
  Body_SetCargoKey(node350, -1, 0)
  Body_SetCargoKey(node350, -1, 1)
  Body_SetCargoKey(node350, -1, 2)
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node327, node351)
  Body_SetCS(node351, MAT_Vector3(735.116243, 621.602146, 496.554576), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node351, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node351, 3)
  Body_SetNameKey(node351, -1)
  Body_SetCargoKey(node351, -1, 0)
  Body_SetCargoKey(node351, -1, 1)
  Body_SetCargoKey(node351, -1, 2)
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node327, node352)
  Body_SetCS(node352, MAT_Vector3(667.024602, 605.889459, 495.2815), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node352, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node352, 3)
  Body_SetNameKey(node352, -1)
  Body_SetCargoKey(node352, -1, 0)
  Body_SetCargoKey(node352, -1, 1)
  Body_SetCargoKey(node352, -1, 2)
  Node_EnterSimulation(node352)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("nod_vessel", "kon_frigate_1")
  Node_AddSon(node327, node353)
  Body_SetCS(node353, MAT_Vector3(70.196333, 2802.028112, 250), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node353, "osd/atl/atl_frigate.osd")
  Body_SetFriendOrFoeID(node353, 4)
  Body_SetNameKey(node353, -1)
  Body_SetCargoKey(node353, -1, 0)
  Body_SetCargoKey(node353, -1, 1)
  Body_SetCargoKey(node353, -1, 2)
  Node_EnterSimulation(node353)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("nod_vessel", "kon_frigate_2")
  Node_AddSon(node327, node354)
  Body_SetCS(node354, MAT_Vector3(67.83131, 2614.728349, 250), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node354, "osd/atl/atl_frigate.osd")
  Body_SetFriendOrFoeID(node354, 4)
  Body_SetNameKey(node354, -1)
  Body_SetCargoKey(node354, -1, 0)
  Body_SetCargoKey(node354, -1, 1)
  Body_SetCargoKey(node354, -1, 2)
  Node_EnterSimulation(node354)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("nod_vessel", "kon_techbomber_1")
  Node_AddSon(node327, node355)
  Body_SetCS(node355, MAT_Vector3(61.582572, 2702.653978, 230), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node355, "osd/atl/atl_techbomber.osd")
  Body_SetFriendOrFoeID(node355, 4)
  Body_SetNameKey(node355, -1)
  Body_SetCargoKey(node355, -1, 0)
  Body_SetCargoKey(node355, -1, 1)
  Body_SetCargoKey(node355, -1, 2)
  Node_EnterSimulation(node355)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("nod_vessel", "kon_bomber_1")
  Node_AddSon(node327, node356)
  Body_SetCS(node356, MAT_Vector3(23.284564, 2737.797371, 230), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node356, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node356, 4)
  Body_SetNameKey(node356, -1)
  Body_SetCargoKey(node356, -1, 0)
  Body_SetCargoKey(node356, -1, 1)
  Body_SetCargoKey(node356, -1, 2)
  Node_EnterSimulation(node356)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("nod_vessel", "kon_bomber_2")
  Node_AddSon(node327, node357)
  Body_SetCS(node357, MAT_Vector3(23.144599, 2670.448913, 230), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node357, "osd/atl/atl_bomber.osd")
  Body_SetFriendOrFoeID(node357, 4)
  Body_SetNameKey(node357, -1)
  Body_SetCargoKey(node357, -1, 0)
  Body_SetCargoKey(node357, -1, 1)
  Body_SetCargoKey(node357, -1, 2)
  Node_EnterSimulation(node357)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node327, node358)
  Body_SetPosition(node358, MAT_Vector3(195.536038, 2719.033224, 197.215794))
  WayPoint_SetRadius(node358, 56)
  Node_ParseIniFile(node358, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node358)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node327, node359)
  Body_SetPosition(node359, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node359, 192)
  Node_ParseIniFile(node359, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node359)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node327, node360)
  Body_SetPosition(node360, MAT_Vector3(1021.738741, 3025.351911, 43.600273))
  WayPoint_SetRadius(node360, 128)
  Node_ParseIniFile(node360, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node360)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("nod_waypoint", "nav_waypoint_3")
  Node_AddSon(node327, node361)
  Body_SetPosition(node361, MAT_Vector3(1940.448943, 2973.437573, 253.779064))
  WayPoint_SetRadius(node361, 400)
  Node_ParseIniFile(node361, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node361)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("nod_waypoint", "nav_waypoint_4")
  Node_AddSon(node327, node362)
  Body_SetPosition(node362, MAT_Vector3(2522.705527, 1285.941584, 222.954752))
  WayPoint_SetRadius(node362, 75)
  Node_ParseIniFile(node362, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node362)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("nod_trash", "gen_clunker_freighter_1")
  Node_AddSon(node327, node363)
  Body_SetCS(node363, MAT_Vector3(1973.866592, 2973.818978, 305.479281), MAT_Vector3(166.583038, -21.943936, 56.789369))
  Node_ParseIniFile(node363, "osd/gen/gen_clunker_freighter.osd")
  Body_SetFriendOrFoeID(node363, 1)
  Node_EnterSimulation(node363)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("nod_vessel", "cra_scout1_EMPOUT")
  Node_AddSon(node327, node364)
  Body_SetCS(node364, MAT_Vector3(2523.530561, 1283.64005, 210.418339), MAT_Vector3(-132.608734, -9.479425, -63.118109))
  Node_ParseIniFile(node364, "osd/cra/cra_lacewing_narrow.osd")
  Body_SetFriendOrFoeID(node364, 6)
  Body_SetNameKey(node364, -1)
  Body_SetCargoKey(node364, -1, 0)
  Body_SetCargoKey(node364, -1, 1)
  Body_SetCargoKey(node364, -1, 2)
  Node_EnterSimulation(node364)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("nod_vessel", "pir_tz_scout2_narrow_1")
  Node_AddSon(node327, node365)
  Body_SetCS(node365, MAT_Vector3(1934.873853, 3070.662986, 328.658848), MAT_Vector3(-177.585571, 0, 0))
  Node_ParseIniFile(node365, "osd/pir_tz/pir_tz_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node365, 5)
  Body_SetNameKey(node365, -1)
  Body_SetCargoKey(node365, -1, 0)
  Body_SetCargoKey(node365, -1, 1)
  Body_SetCargoKey(node365, -1, 2)
  Node_EnterSimulation(node365)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("nod_vessel", "pir_tz_scout1_narrow_1")
  Node_AddSon(node327, node366)
  Body_SetCS(node366, MAT_Vector3(1904.121574, 2880.665487, 309.444786), MAT_Vector3(-41.029735, 0, 0))
  Node_ParseIniFile(node366, "osd/pir_tz/pir_tz_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node366, 5)
  Body_SetNameKey(node366, -1)
  Body_SetCargoKey(node366, -1, 0)
  Body_SetCargoKey(node366, -1, 1)
  Body_SetCargoKey(node366, -1, 2)
  Node_EnterSimulation(node366)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("nod_vessel", "cra_guard_1")
  Node_AddSon(node327, node367)
  Body_SetCS(node367, MAT_Vector3(2826.809714, 1216.424797, 330.054331), MAT_Vector3(25.34697, 3.39809, -0.738869))
  Node_ParseIniFile(node367, "osd/cra/cra_guard.osd")
  Body_SetFriendOrFoeID(node367, 5)
  Body_SetNameKey(node367, -1)
  Body_SetCargoKey(node367, -1, 0)
  Body_SetCargoKey(node367, -1, 1)
  Body_SetCargoKey(node367, -1, 2)
  Node_EnterSimulation(node367)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("nod_vessel", "cra_guard_2")
  Node_AddSon(node327, node368)
  Body_SetCS(node368, MAT_Vector3(2819.534409, 1525.206613, 393.647295), MAT_Vector3(167.817766, 3.39809, -0.738869))
  Node_ParseIniFile(node368, "osd/cra/cra_guard.osd")
  Body_SetFriendOrFoeID(node368, 5)
  Body_SetNameKey(node368, -1)
  Body_SetCargoKey(node368, -1, 0)
  Body_SetCargoKey(node368, -1, 1)
  Body_SetCargoKey(node368, -1, 2)
  Node_EnterSimulation(node368)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("nod_vessel", "cra_guard_3")
  Node_AddSon(node327, node369)
  Body_SetCS(node369, MAT_Vector3(2933.917836, 1348.167049, 322.268576), MAT_Vector3(77.626982, 3.39809, -0.738869))
  Node_ParseIniFile(node369, "osd/cra/cra_guard.osd")
  Body_SetFriendOrFoeID(node369, 5)
  Body_SetNameKey(node369, -1)
  Body_SetCargoKey(node369, -1, 0)
  Body_SetCargoKey(node369, -1, 1)
  Body_SetCargoKey(node369, -1, 2)
  Node_EnterSimulation(node369)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_1")
  Node_AddSon(node327, node370)
  Body_SetCS(node370, MAT_Vector3(2467.669582, 1262.288749, 204.054593), MAT_Vector3(-56.478956, 9.956126, 6.328497))
  Node_ParseIniFile(node370, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node370, 5)
  Body_SetNameKey(node370, -1)
  Body_SetCargoKey(node370, -1, 0)
  Body_SetCargoKey(node370, -1, 1)
  Body_SetCargoKey(node370, -1, 2)
  Node_EnterSimulation(node370)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_2")
  Node_AddSon(node327, node371)
  Body_SetCS(node371, MAT_Vector3(2730.12447, 1393.325614, 283.29442), MAT_Vector3(105.191701, 9.956126, 6.328497))
  Node_ParseIniFile(node371, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node371, 5)
  Body_SetNameKey(node371, -1)
  Body_SetCargoKey(node371, -1, 0)
  Body_SetCargoKey(node371, -1, 1)
  Body_SetCargoKey(node371, -1, 2)
  Node_EnterSimulation(node371)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_3")
  Node_AddSon(node327, node372)
  Body_SetCS(node372, MAT_Vector3(3005.783592, 1432.011985, 290.33321), MAT_Vector3(105.1917, 9.956126, 6.328497))
  Node_ParseIniFile(node372, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node372, 5)
  Body_SetNameKey(node372, -1)
  Body_SetCargoKey(node372, -1, 0)
  Body_SetCargoKey(node372, -1, 1)
  Body_SetCargoKey(node372, -1, 2)
  Node_EnterSimulation(node372)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("nod_vessel", "cra_scout1_narrow_4")
  Node_AddSon(node327, node373)
  Body_SetCS(node373, MAT_Vector3(2751.047459, 1263.532571, 284.052294), MAT_Vector3(79.032937, 9.956126, 6.328497))
  Node_ParseIniFile(node373, "osd/cra/cra_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node373, 5)
  Body_SetNameKey(node373, -1)
  Body_SetCargoKey(node373, -1, 0)
  Body_SetCargoKey(node373, -1, 1)
  Body_SetCargoKey(node373, -1, 2)
  Node_EnterSimulation(node373)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("nod_vehicle", "cra_tank_1")
  Node_AddSon(node327, node374)
  Body_SetCS(node374, MAT_Vector3(2521.616624, 1342.177173, 203.96595), MAT_Vector3(149.229421, 0, 0))
  Node_ParseIniFile(node374, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node374, 5)
  Body_SetNameKey(node374, -1)
  Body_SetCargoKey(node374, -1, 0)
  Body_SetCargoKey(node374, -1, 1)
  Body_SetCargoKey(node374, -1, 2)
  Node_EnterSimulation(node374)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("nod_vehicle", "cra_tank_2")
  Node_AddSon(node327, node375)
  Body_SetCS(node375, MAT_Vector3(2568.888778, 1234.417677, 203.966), MAT_Vector3(56.672592, 0, 0))
  Node_ParseIniFile(node375, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node375, 5)
  Body_SetNameKey(node375, -1)
  Body_SetCargoKey(node375, -1, 0)
  Body_SetCargoKey(node375, -1, 1)
  Body_SetCargoKey(node375, -1, 2)
  Node_EnterSimulation(node375)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("nod_vehicle", "cra_tank_3")
  Node_AddSon(node327, node376)
  Body_SetCS(node376, MAT_Vector3(2383.868276, 1303.546622, 205.927199), MAT_Vector3(-10.721334, 0, 0))
  Node_ParseIniFile(node376, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node376, 5)
  Body_SetNameKey(node376, -1)
  Body_SetCargoKey(node376, -1, 0)
  Body_SetCargoKey(node376, -1, 1)
  Body_SetCargoKey(node376, -1, 2)
  Node_EnterSimulation(node376)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("nod_vehicle", "cra_tank_4")
  Node_AddSon(node327, node377)
  Body_SetCS(node377, MAT_Vector3(2427.969261, 1375.683056, 207.234666), MAT_Vector3(-128.9057, 0, 0))
  Node_ParseIniFile(node377, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node377, 5)
  Body_SetNameKey(node377, -1)
  Body_SetCargoKey(node377, -1, 0)
  Body_SetCargoKey(node377, -1, 1)
  Body_SetCargoKey(node377, -1, 2)
  Node_EnterSimulation(node377)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("nod_vehicle", "cra_tank_5")
  Node_AddSon(node327, node378)
  Body_SetCS(node378, MAT_Vector3(2701.284706, 1202.229112, 286.663268), MAT_Vector3(133.328532, 0, 0))
  Node_ParseIniFile(node378, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node378, 5)
  Body_SetNameKey(node378, -1)
  Body_SetCargoKey(node378, -1, 0)
  Body_SetCargoKey(node378, -1, 1)
  Body_SetCargoKey(node378, -1, 2)
  Node_EnterSimulation(node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("nod_vehicle", "cra_tank_6")
  Node_AddSon(node327, node379)
  Body_SetCS(node379, MAT_Vector3(2740.201196, 1236.654866, 288.94377), MAT_Vector3(82.291809, 0, 0))
  Node_ParseIniFile(node379, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node379, 5)
  Body_SetNameKey(node379, -1)
  Body_SetCargoKey(node379, -1, 0)
  Body_SetCargoKey(node379, -1, 1)
  Body_SetCargoKey(node379, -1, 2)
  Node_EnterSimulation(node379)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("nod_vehicle", "cra_tank_7")
  Node_AddSon(node327, node380)
  Body_SetCS(node380, MAT_Vector3(2854.589525, 1318.247735, 292.691859), MAT_Vector3(82.29181, 0, 0))
  Node_ParseIniFile(node380, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node380, 5)
  Body_SetNameKey(node380, -1)
  Body_SetCargoKey(node380, -1, 0)
  Body_SetCargoKey(node380, -1, 1)
  Body_SetCargoKey(node380, -1, 2)
  Node_EnterSimulation(node380)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("nod_vehicle", "cra_tank_8")
  Node_AddSon(node327, node381)
  Body_SetCS(node381, MAT_Vector3(2995.143803, 1335.858013, 291.286378), MAT_Vector3(82.29181, 0, 0))
  Node_ParseIniFile(node381, "osd/cra/cra_tank.osd")
  Body_SetFriendOrFoeID(node381, 5)
  Body_SetNameKey(node381, -1)
  Body_SetCargoKey(node381, -1, 0)
  Body_SetCargoKey(node381, -1, 1)
  Body_SetCargoKey(node381, -1, 2)
  Node_EnterSimulation(node381)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("nod_turret", "cra_sniper_1")
  Node_AddSon(node327, node382)
  Body_SetCS(node382, MAT_Vector3(2506.063421, 1425.063678, 366.247134), MAT_Vector3(-151.489552, -2.413675, -0.657299))
  Node_ParseIniFile(node382, "osd/cra/cra_sniper.osd")
  Body_SetFriendOrFoeID(node382, 5)
  Node_EnterSimulation(node382)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("nod_turret", "cra_sniper_2")
  Node_AddSon(node327, node383)
  Body_SetCS(node383, MAT_Vector3(2788.804599, 1213.656495, 322.292682), MAT_Vector3(45.983632, -2.413675, -0.657299))
  Node_ParseIniFile(node383, "osd/cra/cra_sniper.osd")
  Body_SetFriendOrFoeID(node383, 5)
  Node_EnterSimulation(node383)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node384)
  Camera_SetBackPlane(node384, 1024)
  Node_EnterSimulation(node384)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node385)
  Node_EnterSimulation(node385)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node385, node386)
  Node_EnterSimulation(node386)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node385, node387)
  Node_EnterSimulation(node387)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node387, node388)
  Position_SetPosition(node388, MAT_Vector3(658.431538, 691.386158, 541.326701))
  Position_SetRadius(node388, 5)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node387, node389)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node389, node390)
  Position_SetPosition(node390, MAT_Vector3(642.666441, 561.264988, 575))
  Position_SetRadius(node390, 5)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node389, node391)
  Position_SetPosition(node391, MAT_Vector3(660.7406, 617.1343, 575))
  Position_SetRadius(node391, 5)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node389, node392)
  Position_SetPosition(node392, MAT_Vector3(681.465186, 767.006091, 425))
  Position_SetRadius(node392, 5)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node389, node393)
  Position_SetPosition(node393, MAT_Vector3(681.4652, 840.396106, 425))
  Position_SetRadius(node393, 5)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node385, node394)
  Node_EnterSimulation(node394)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node394, node395)
  Node_EnterSimulation(node395)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("NOD_Director", "CrawlerAmbush")
  Node_AddSon(node394, node396)
  Node_EnterSimulation(node396)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node385, node397)
  Node_EnterSimulation(node397)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node385, node398)
  Node_EnterSimulation(node398)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, F)
SetEnemyMatrixElement(5, 0, E)
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
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, N)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, N)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, F)
SetEnemyMatrixElement(5, 2, E)
SetEnemyMatrixElement(6, 2, E)
SetEnemyMatrixElement(7, 2, N)
SetEnemyMatrixElement(8, 2, N)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, F)
SetEnemyMatrixElement(1, 3, N)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
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
SetEnemyMatrixElement(0, 4, F)
SetEnemyMatrixElement(1, 4, N)
SetEnemyMatrixElement(2, 4, F)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
SetEnemyMatrixElement(5, 4, E)
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
SetEnemyMatrixElement(0, 5, E)
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, E)
SetEnemyMatrixElement(3, 5, E)
SetEnemyMatrixElement(4, 5, E)
SetEnemyMatrixElement(5, 5, F)
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
SetEnemyMatrixElement(0, 6, F)
SetEnemyMatrixElement(1, 6, N)
SetEnemyMatrixElement(2, 6, E)
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
    if not (o4905.Value ~= True) then
      return 1
    else
      return 0
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
    if not (o4929.Value ~= True) then
      return 1
    else
      return 0
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
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o30, "Code4")
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
S_o77 = { [nil] = {}, Start = function(L0)

end }
S_o123 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o215 = { [nil] = {}, Start = function(L0)

end }
S_o261 = { [nil] = {}, Start = function(L0)

end }
S_o307 = { [nil] = {}, Start = function(L0)

end }
S_o351 = { [nil] = {}, Start = function(L0)

end }
S_o397 = { [nil] = {}, Start = function(L0)

end }
S_o443 = { [nil] = {}, Start = function(L0)

end }
S_o489 = { [nil] = {}, Start = function(L0)

end }
S_o535 = { [nil] = {}, Start = function(L0)

end }
S_o581 = { [nil] = {}, Start = function(L0)

end }
S_o627 = { [nil] = {}, Start = function(L0)

end }
S_o673 = { [nil] = {}, Start = function(L0)

end }
S_o719 = { [nil] = {}, Start = function(L0)

end }
S_o765 = { [nil] = {}, Start = function(L0)

end }
S_o811 = { [nil] = {}, Start = function(L0)

end }
S_o857 = { [nil] = {}, Start = function(L0)

end }
S_o903 = { [nil] = {}, Start = function(L0)

end }
S_o949 = { [nil] = {}, Start = function(L0)

end }
S_o995 = { [nil] = {}, Start = function(L0)

end }
S_o1041 = { [nil] = {}, Start = function(L0)

end }
S_o1087 = { [nil] = {}, Start = function(L0)

end }
S_o1133 = { [nil] = {}, Start = function(L0)

end }
S_o1179 = { [nil] = {}, Start = function(L0)

end }
S_o1225 = { [nil] = {}, Start = function(L0)

end }
S_o1271 = { [nil] = {}, Start = function(L0)

end }
S_o1317 = { [nil] = {}, Start = function(L0)

end }
S_o1363 = { [nil] = {}, Start = function(L0)

end }
S_o1409 = { [nil] = {}, Start = function(L0)

end }
S_o1455 = { [nil] = {}, Start = function(L0)

end }
S_o1501 = { [nil] = {}, Start = function(L0)

end }
S_o1547 = { [nil] = {}, Start = function(L0)

end }
S_o1593 = { [nil] = {}, Start = function(L0)

end }
S_o1639 = { [nil] = {}, Start = function(L0)

end }
S_o1685 = { [nil] = {}, Start = function(L0)

end }
S_o1731 = { [nil] = {}, Start = function(L0)

end }
S_o1777 = { [nil] = {}, Start = function(L0)

end }
S_o1823 = { [nil] = {}, Start = function(L0)

end }
S_o1869 = { [nil] = {}, Start = function(L0)

end }
S_o1915 = { [nil] = {}, Start = function(L0)

end }
S_o1961 = { [nil] = {}, Start = function(L0)

end }
S_o2007 = { [nil] = {}, Start = function(L0)

end }
S_o2053 = { [nil] = {}, Start = function(L0)

end }
S_o2099 = { [nil] = {}, Start = function(L0)

end }
S_o2145 = { [nil] = {}, Start = function(L0)

end }
S_o2191 = { [nil] = {}, Start = function(L0)

end }
o2266 = FormationLib.CreateFormation("Triangle", "", "", "", 35, 35)
o2267 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
o2269 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/Harvester_1_ApproachPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockPath", "/Scenario_Dynamic/Navigation/Harvester_1_DockArea")
S_o2270 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2270, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2270, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2270, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o2270, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2270, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2270, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2275.SetStateValue(L1)
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
o2275 = { [nil] = {}, Start = function()
  o2275["Value"] = False
  o3266.StartCalculate()
  o3267.StartCalculate()
  o3324.StartCalculate()
  o3388.StartCalculate()
  o3452.StartCalculate()
  o3512.StartCalculate()
  o3569.StartCalculate()
  o3626.StartCalculate()
  o3683.StartCalculate()
  o3740.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2275.Value == L0) then
    o2275["Value"] = L0
    o3266.ReCalculate()
    o3267.ReCalculate()
    o3324.ReCalculate()
    o3388.ReCalculate()
    o3452.ReCalculate()
    o3512.ReCalculate()
    o3569.ReCalculate()
    o3626.ReCalculate()
    o3683.ReCalculate()
    o3740.ReCalculate()
  end
end }
S_o2276 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2276, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2276, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2276, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "kon", "", "", "", False, False, True)
  CallFunction(o2276, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2276, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2276, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2281.SetStateValue(L1)
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
o2281 = { [nil] = {}, Start = function()
  o2281["Value"] = False
  o3271.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2281.Value == L0) then
    o2281["Value"] = L0
    o3271.ReCalculate()
  end
end }
S_o2282 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2282, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2282, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2282, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "kon", "", "", "", False, False, True)
  CallFunction(o2282, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2282, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2282, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2287.SetStateValue(L1)
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
o2287 = { [nil] = {}, Start = function()
  o2287["Value"] = False
  o3273.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2287.Value == L0) then
    o2287["Value"] = L0
    o3273.ReCalculate()
  end
end }
S_o2288 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2288, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2288, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2288, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "kon", "", "", "", False, False, True)
  CallFunction(o2288, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2288, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2288, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2293.SetStateValue(L1)
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
o2293 = { [nil] = {}, Start = function()
  o2293["Value"] = False
  o3275.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2293.Value == L0) then
    o2293["Value"] = L0
    o3275.ReCalculate()
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2294, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "kon", "", "", "", False, False, True)
  CallFunction(o2294, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2294, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2294, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2299.SetStateValue(L1)
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
o2299 = { [nil] = {}, Start = function()
  o2299["Value"] = False
  o3277.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2299.Value == L0) then
    o2299["Value"] = L0
    o3277.ReCalculate()
  end
end }
S_o2300 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2300, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2300, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2300, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "kon", "", "", "", False, False, True)
  CallFunction(o2300, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2300, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2300, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2305.SetStateValue(L1)
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
o2305 = { [nil] = {}, Start = function()
  o2305["Value"] = False
  o3278.StartCalculate()
  o3279.StartCalculate()
  o3280.StartCalculate()
  o4942.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2305.Value == L0) then
    o2305["Value"] = L0
    o3278.ReCalculate()
    o3279.ReCalculate()
    o3280.ReCalculate()
    o4942.ReCalculate()
  end
end }
S_o2306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2306, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2306, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2306, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "kon", "", "", "", False, False, True)
  CallFunction(o2306, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2306, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2306, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o2311.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2308.Value ~= True) then
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
o2308 = { [nil] = {}, GetCalculated = function()
  if not (o3287.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2308.SetStateValue(o2308.GetCalculated())
end, StartCalculate = function()
  o2308["Value"] = o2308.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2308.Value == L0) then
    o2308["Value"] = L0
    CallFunction(o2306, "ProcesseStateChange")
  end
end }
o2311 = { [nil] = {}, Start = function()
  o2311["Value"] = False
  o3288.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2311.Value == L0) then
    o2311["Value"] = L0
    o3288.ReCalculate()
  end
end }
S_o2312 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2312, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2312, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2312, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2312, "Code4")
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
S_o2359 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2359, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2359, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2359, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2359, "Code4")
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
S_o2406 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2406, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2406, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2406, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2406, "Code4")
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
S_o2453 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2453, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2453, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2453, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2453, "Code4")
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
S_o2500 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2500, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2500, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2500, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2500, "Code4")
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area2", "/Scenario_Dynamic/Navigation/Grab_Area2" }, 666666, "Code4")
  else
    CallFunction(o2547, "Code4")
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
S_o2594 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2594, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2594, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2594, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area2", "/Scenario_Dynamic/Navigation/Grab_Area2" }, 666666, "Code4")
  else
    CallFunction(o2594, "Code4")
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
S_o2641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area2", "/Scenario_Dynamic/Navigation/Grab_Area2" }, 666666, "Code4")
  else
    CallFunction(o2641, "Code4")
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
S_o2688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area2", "/Scenario_Dynamic/Navigation/Grab_Area2" }, 666666, "Code4")
  else
    CallFunction(o2688, "Code4")
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
S_o2735 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2735, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2735, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2735, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area2", "/Scenario_Dynamic/Navigation/Grab_Area2" }, 666666, "Code4")
  else
    CallFunction(o2735, "Code4")
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
S_o2782 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2782, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2782, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2782, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2782, "Code4")
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
S_o2829 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2829, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2829, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2829, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2829, "Code4")
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
S_o2876 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2876, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2876, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2876, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2876, "Code4")
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
S_o2923 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2923, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2923, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2923, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2923, "Code4")
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
S_o2970 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2970, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2970, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2970, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2970, "Code4")
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
S_o3017 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3017, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3017, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3017, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o3017, "Code4")
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
S_o3064 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3064, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3064, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3064, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o3064, "Code4")
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
S_o3111 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3111, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3111, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3111, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o3111, "Code4")
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
S_o3158 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3158, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3158, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3158, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o3158, "Code4")
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
S_o3205 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3205, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3205, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3205, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o3205, "Code4")
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
S_o3252 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_tigershark", 2)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  CallFunction(o3252, "Code9")
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
o3266 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3266.SetStateValue(o3266.GetCalculated())
end, StartCalculate = function()
  o3266["Value"] = o3266.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 215)
  SendRadioMessageTake(o3445.Node, o3252.Node, 216)
  SendRadioMessageTake(o3381.Node, o3252.Node, 217)
  SendRadioMessageTake(o3317.Node, o3252.Node, 218)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o3266.Value == L0) then
    DelayedFunction(2, o3266, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3266.Value == L0) then
    o3266["Value"] = L0
    if not (L0 ~= 1) then
      o3266.ChangeTo1()
    end
  end
end }
o3267 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3267.SetStateValue(o3267.GetCalculated())
end, StartCalculate = function()
  o3267["Value"] = o3267.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o3267.Value == L0) then
    DelayedFunction(8, o3267, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3267.Value == L0) then
    o3267["Value"] = L0
    if not (L0 ~= 1) then
      o3267.ChangeTo1()
    end
  end
end }
o3268 = { [nil] = {}, GetCalculated = function()
  if not (o3473.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3268.SetStateValue(o3268.GetCalculated())
end, StartCalculate = function()
  o3268["Value"] = o3268.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3445, "Code13")
end, SetStateValue = function(L0)
  if not (o3268.Value == L0) then
    o3268["Value"] = L0
    if not (L0 ~= 1) then
      o3268.ChangeTo1()
    end
  end
end }
o3269 = { [nil] = {}, GetCalculated = function()
  if not (o3345.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3269.SetStateValue(o3269.GetCalculated())
end, StartCalculate = function()
  o3269["Value"] = o3269.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3317, "Code13")
end, SetStateValue = function(L0)
  if not (o3269.Value == L0) then
    o3269["Value"] = L0
    if not (L0 ~= 1) then
      o3269.ChangeTo1()
    end
  end
end }
o3270 = { [nil] = {}, GetCalculated = function()
  if not (o3409.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3270.SetStateValue(o3270.GetCalculated())
end, StartCalculate = function()
  o3270["Value"] = o3270.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3381, "Code13")
end, SetStateValue = function(L0)
  if not (o3270.Value == L0) then
    o3270["Value"] = L0
    if not (L0 ~= 1) then
      o3270.ChangeTo1()
    end
  end
end }
o3271 = { [nil] = {}, GetCalculated = function()
  if not (o2281.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3271.SetStateValue(o3271.GetCalculated())
end, StartCalculate = function()
  o3271["Value"] = o3271.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 219)
  Game_SetWayPoint(GetGameNode(), o3804.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o3271.Value == L0) then
    o3271["Value"] = L0
    if not (L0 ~= 1) then
      o3271.ChangeTo1()
    end
  end
end }
o3272 = { [nil] = {}, GetCalculated = function()
  if not (o3807.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3272.SetStateValue(o3272.GetCalculated())
end, StartCalculate = function()
  o3272["Value"] = o3272.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 220)
  Game_SetWayPoint(GetGameNode(), o3799.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o3272.Value == L0) then
    o3272["Value"] = L0
    if not (L0 ~= 1) then
      o3272.ChangeTo1()
    end
  end
end }
o3273 = { [nil] = {}, GetCalculated = function()
  if not (o2287.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3273.SetStateValue(o3273.GetCalculated())
end, StartCalculate = function()
  o3273["Value"] = o3273.GetCalculated()
  o3820.StartCalculate()
  o3919.StartCalculate()
  o3975.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 221)
  Game_SetWayPoint(GetGameNode(), o3809.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o3273.Value == L0) then
    o3273["Value"] = L0
    o3820.ReCalculate()
    o3919.ReCalculate()
    o3975.ReCalculate()
    if not (L0 ~= 1) then
      o3273.ChangeTo1()
    end
  end
end }
o3274 = { [nil] = {}, GetCalculated = function()
  if not (o3812.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3274.SetStateValue(o3274.GetCalculated())
end, StartCalculate = function()
  o3274["Value"] = o3274.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 222)
  Game_SetWayPoint(GetGameNode(), o3799.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o3274.Value == L0) then
    o3274["Value"] = L0
    if not (L0 ~= 1) then
      o3274.ChangeTo1()
    end
  end
end }
o3275 = { [nil] = {}, GetCalculated = function()
  if not (o2293.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3275.SetStateValue(o3275.GetCalculated())
end, StartCalculate = function()
  o3275["Value"] = o3275.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 223)
  Game_SetWayPoint(GetGameNode(), o3814.Node)
  SED_SetTaskTextKey(2102, -1, -1)
end, SetStateValue = function(L0)
  if not (o3275.Value == L0) then
    o3275["Value"] = L0
    if not (L0 ~= 1) then
      o3275.ChangeTo1()
    end
  end
end }
o3276 = { [nil] = {}, GetCalculated = function()
  if not (o3817.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3276.SetStateValue(o3276.GetCalculated())
end, StartCalculate = function()
  o3276["Value"] = o3276.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3252.Node, 224)
  SendRadioMessageTake(o30.Node, o3252.Node, 225)
  Game_SetWayPoint(GetGameNode(), o3799.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o3276.Value == L0) then
    o3276["Value"] = L0
    if not (L0 ~= 1) then
      o3276.ChangeTo1()
    end
  end
end }
o3277 = { [nil] = {}, GetCalculated = function()
  if not (o2299.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3277.SetStateValue(o3277.GetCalculated())
end, StartCalculate = function()
  o3277["Value"] = o3277.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3381.Node, o3252.Node, 228)
end, SetStateValue = function(L0)
  if not (o3277.Value == L0) then
    o3277["Value"] = L0
    if not (L0 ~= 1) then
      o3277.ChangeTo1()
    end
  end
end }
o3278 = { [nil] = {}, GetCalculated = function()
  if not (o2305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3278.SetStateValue(o3278.GetCalculated())
end, StartCalculate = function()
  o3278["Value"] = o3278.GetCalculated()
  o4031.StartCalculate()
  o4087.StartCalculate()
  o4143.StartCalculate()
  o4199.StartCalculate()
  o4255.StartCalculate()
  o4311.StartCalculate()
  o4367.StartCalculate()
  o4424.StartCalculate()
  o4473.StartCalculate()
  o4522.StartCalculate()
  o4571.StartCalculate()
  o4620.StartCalculate()
  o4669.StartCalculate()
  o4718.StartCalculate()
  o4767.StartCalculate()
  o4815.StartCalculate()
  o4861.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3278.Value == L0) then
    o3278["Value"] = L0
    o4031.ReCalculate()
    o4087.ReCalculate()
    o4143.ReCalculate()
    o4199.ReCalculate()
    o4255.ReCalculate()
    o4311.ReCalculate()
    o4367.ReCalculate()
    o4424.ReCalculate()
    o4473.ReCalculate()
    o4522.ReCalculate()
    o4571.ReCalculate()
    o4620.ReCalculate()
    o4669.ReCalculate()
    o4718.ReCalculate()
    o4767.ReCalculate()
    o4815.ReCalculate()
    o4861.ReCalculate()
  end
end }
o3279 = { [nil] = {}, GetCalculated = function()
  if not (o2305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3279.SetStateValue(o3279.GetCalculated())
end, StartCalculate = function()
  o3279["Value"] = o3279.GetCalculated()
  o3319.StartCalculate()
  o3383.StartCalculate()
  o3447.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3509.Node, o3252.Node, 229)
end, SetStateValue = function(L0)
  if not (o3279.Value == L0) then
    DelayedFunction(4, o3279, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3279.Value == L0) then
    o3279["Value"] = L0
    o3319.ReCalculate()
    o3383.ReCalculate()
    o3447.ReCalculate()
    if not (L0 ~= 1) then
      o3279.ChangeTo1()
    end
  end
end }
o3280 = { [nil] = {}, GetCalculated = function()
  if not (o2305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3280.SetStateValue(o3280.GetCalculated())
end, StartCalculate = function()
  o3280["Value"] = o3280.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3381.Node, o3252.Node, 230)
  SendRadioMessageTake(o3509.Node, o3252.Node, 226)
  SendRadioMessageTake(o3566.Node, o3252.Node, 227)
  SendRadioMessageTake(o3381.Node, o3252.Node, 231)
end, SetStateValue = function(L0)
  if not (o3280.Value == L0) then
    DelayedFunction(10, o3280, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3280.Value == L0) then
    o3280["Value"] = L0
    if not (L0 ~= 1) then
      o3280.ChangeTo1()
    end
  end
end }
o3281 = { [nil] = {}, GetCalculated = function()
  if not (o3930.Value ~= True) then
    if not (o3986.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3281.SetStateValue(o3281.GetCalculated())
end, StartCalculate = function()
  o3281["Value"] = o3281.GetCalculated()
  o3282.StartCalculate()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2103)
  SendRadioMessageTake(o30.Node, o3252.Node, 234)
end, SetStateValue = function(L0)
  if not (o3281.Value == L0) then
    DelayedFunction(2, o3281, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3281.Value == L0) then
    o3281["Value"] = L0
    o3282.ReCalculate()
    if not (L0 ~= 1) then
      o3281.ChangeTo1()
    end
  end
end }
o3282 = { [nil] = {}, GetCalculated = function()
  if not (o3281.Value ~= True) then
    if not (o3922.Value ~= True) then
      if not (o3978.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3282.SetStateValue(o3282.GetCalculated())
end, StartCalculate = function()
  o3282["Value"] = o3282.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o3282.Value == L0) then
    DelayedFunction(2, o3282, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3282.Value == L0) then
    o3282["Value"] = L0
    if not (L0 ~= 1) then
      o3282.ChangeTo1()
    end
  end
end }
o3283 = { [nil] = {}, GetCalculated = function()
  if not (o3934.Value ~= True) then
    if not (o3990.Value ~= True) then
      if not (o3823.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3283.SetStateValue(o3283.GetCalculated())
end, StartCalculate = function()
  o3283["Value"] = o3283.GetCalculated()
  o3284.StartCalculate()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2104)
  SendRadioMessageTake(o30.Node, o3252.Node, 654)
end, SetStateValue = function(L0)
  if not (o3283.Value == L0) then
    DelayedFunction(2, o3283, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3283.Value == L0) then
    o3283["Value"] = L0
    o3284.ReCalculate()
    if not (L0 ~= 1) then
      o3283.ChangeTo1()
    end
  end
end }
o3284 = { [nil] = {}, GetCalculated = function()
  if not (o3283.Value ~= True) then
    if not (o3823.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3284.SetStateValue(o3284.GetCalculated())
end, StartCalculate = function()
  o3284["Value"] = o3284.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o3284.Value == L0) then
    DelayedFunction(2, o3284, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3284.Value == L0) then
    o3284["Value"] = L0
    if not (L0 ~= 1) then
      o3284.ChangeTo1()
    end
  end
end }
o3285 = { [nil] = {}, GetCalculated = function()
  if not (o3525.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3572.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3696.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3753.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3639.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3285.SetStateValue(o3285.GetCalculated())
end, StartCalculate = function()
  o3285["Value"] = o3285.GetCalculated()
  o3287.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3285.Value == L0) then
    o3285["Value"] = L0
    o3287.ReCalculate()
  end
end }
o3286 = { [nil] = {}, GetCalculated = function()
  if not (o3525.Value ~= True) then
    if not (o3582.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3286.SetStateValue(o3286.GetCalculated())
end, StartCalculate = function()
  o3286["Value"] = o3286.GetCalculated()
  o3287.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3286.Value == L0) then
    o3286["Value"] = L0
    o3287.ReCalculate()
  end
end }
o3287 = { [nil] = {}, GetCalculated = function()
  if not (o3285.Value == True) then
    if not (o3286.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3287.SetStateValue(o3287.GetCalculated())
end, StartCalculate = function()
  o3287["Value"] = o3287.GetCalculated()
  o2308.StartCalculate()
  o3288.StartCalculate()
  o3313.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2101)
  SendRadioMessageTake(o30.Node, o3252.Node, 232)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o3287.Value == L0) then
    DelayedFunction(2, o3287, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3287.Value == L0) then
    o3287["Value"] = L0
    o2308.ReCalculate()
    o3288.ReCalculate()
    o3313.ReCalculate()
    if not (L0 ~= 1) then
      o3287.ChangeTo1()
    end
  end
end }
o3288 = { [nil] = {}, GetCalculated = function()
  if not (o2311.Value ~= True) then
    if not (o3287.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o3288.SetStateValue(o3288.GetCalculated())
end, StartCalculate = function()
  o3288["Value"] = o3288.GetCalculated()
  o3289.StartCalculate()
  o3320.StartCalculate()
  o3384.StartCalculate()
  o3448.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2001, 2101)
  SendRadioMessageTake(o3509.Node, o3252.Node, 233)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o3288.Value == L0) then
    o3288["Value"] = L0
    o3289.ReCalculate()
    o3320.ReCalculate()
    o3384.ReCalculate()
    o3448.ReCalculate()
    if not (L0 ~= 1) then
      o3288.ChangeTo1()
    end
  end
end }
o3289 = { [nil] = {}, GetCalculated = function()
  if not (o3288.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3289.SetStateValue(o3289.GetCalculated())
end, StartCalculate = function()
  o3289["Value"] = o3289.GetCalculated()
  o4905.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3289.Value == L0) then
    o3289["Value"] = L0
    o4905.ReCalculate()
  end
end }
o3313 = { [nil] = {}, GetCalculated = function()
  if not (o3287.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3313.SetStateValue(o3313.GetCalculated())
end, StartCalculate = function()
  o3313["Value"] = o3313.GetCalculated()
  o4929.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3313.Value == L0) then
    o3313["Value"] = L0
    o4929.ReCalculate()
  end
end }
S_o3317 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3317, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3317, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3317, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o3317, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Wing1Path_1", 0.95, 1 } }("Code5")
  else
    CallFunction(o3317, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3317, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3317, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MayDay_Path", 0.175, 1 } }("Code8")
  else
    CallFunction(o3317, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 0.5, "Code9")
  else
    CallFunction(o3317, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code10")
  else
    CallFunction(o3317, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o2269, nil, 1e+32, "Code11")
  else
    CallFunction(o3317, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code12")
  else
    CallFunction(o3317, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3317, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3317, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code16")
  else
    CallFunction(o3317, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3317, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code19")
  else
    CallFunction(o3317, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o2269, nil, 1e+32, "Code20")
  else
    CallFunction(o3317, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, SetStateValue_KineticShield10 = function(L0, L1)
  o3345.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3324.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3319.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3320.Value ~= True) then
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
o3319 = { [nil] = {}, GetCalculated = function()
  if not (o3279.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3319.SetStateValue(o3319.GetCalculated())
end, StartCalculate = function()
  o3319["Value"] = o3319.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3319.Value == L0) then
    o3319["Value"] = L0
    CallFunction(o3317, "ProcesseStateChange")
  end
end }
o3320 = { [nil] = {}, GetCalculated = function()
  if not (o3288.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3320.SetStateValue(o3320.GetCalculated())
end, StartCalculate = function()
  o3320["Value"] = o3320.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3320.Value == L0) then
    DelayedFunction(15, o3320, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3320.Value == L0) then
    o3320["Value"] = L0
    CallFunction(o3317, "ProcesseStateChange")
  end
end }
o3324 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3324.SetStateValue(o3324.GetCalculated())
end, StartCalculate = function()
  o3324["Value"] = o3324.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3324.Value == L0) then
    DelayedFunction(8, o3324, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3324.Value == L0) then
    o3324["Value"] = L0
    CallFunction(o3317, "ProcesseStateChange")
  end
end }
o3345 = { [nil] = {}, Start = function()
  o3345["Value"] = False
  o3269.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3345.Value == L0) then
    o3345["Value"] = L0
    o3269.ReCalculate()
  end
end }
S_o3381 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3381, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3381, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3381, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o3381, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Wing1Path_2", 0.95, 1 } }("Code5")
  else
    CallFunction(o3381, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3381, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3381, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Animal_Path", 0.14, 1 } }("Code8")
  else
    CallFunction(o3381, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 0.5, "Code9")
  else
    CallFunction(o3381, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o3381, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3381, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code12")
  else
    CallFunction(o3381, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o2269, nil, 1e+32, "Code13")
  else
    CallFunction(o3381, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3381, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code16")
  else
    CallFunction(o3381, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3381, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code19")
  else
    CallFunction(o3381, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o2269, nil, 1e+32, "Code20")
  else
    CallFunction(o3381, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, SetStateValue_KineticShield10 = function(L0, L1)
  o3409.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3388.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3383.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3384.Value ~= True) then
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
o3383 = { [nil] = {}, GetCalculated = function()
  if not (o3279.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3383.SetStateValue(o3383.GetCalculated())
end, StartCalculate = function()
  o3383["Value"] = o3383.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3383.Value == L0) then
    o3383["Value"] = L0
    CallFunction(o3381, "ProcesseStateChange")
  end
end }
o3384 = { [nil] = {}, GetCalculated = function()
  if not (o3288.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3384.SetStateValue(o3384.GetCalculated())
end, StartCalculate = function()
  o3384["Value"] = o3384.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3384.Value == L0) then
    DelayedFunction(15, o3384, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3384.Value == L0) then
    o3384["Value"] = L0
    CallFunction(o3381, "ProcesseStateChange")
  end
end }
o3388 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3388.SetStateValue(o3388.GetCalculated())
end, StartCalculate = function()
  o3388["Value"] = o3388.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3388.Value == L0) then
    DelayedFunction(8, o3388, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3388.Value == L0) then
    o3388["Value"] = L0
    CallFunction(o3381, "ProcesseStateChange")
  end
end }
o3409 = { [nil] = {}, Start = function()
  o3409["Value"] = False
  o3270.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3409.Value == L0) then
    o3409["Value"] = L0
    o3270.ReCalculate()
  end
end }
S_o3445 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3445, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3445, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3445, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o3445, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Wing1Path_3", 0.95, 1 } }("Code5")
  else
    CallFunction(o3445, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3445, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3445, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Stoney_Path", 0.152174, 1 } }("Code8")
  else
    CallFunction(o3445, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 0.5, "Code9")
  else
    CallFunction(o3445, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code10")
  else
    CallFunction(o3445, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o2269, nil, 1e+32, "Code11")
  else
    CallFunction(o3445, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code12")
  else
    CallFunction(o3445, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3445, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  StopAllActiveBehaviours(L0)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3445, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code16")
  else
    CallFunction(o3445, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3445, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/WingmenEscapePath", 1, 2 } }("Code19")
  else
    CallFunction(o3445, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o2269, nil, 1e+32, "Code20")
  else
    CallFunction(o3445, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, SetStateValue_KineticShield10 = function(L0, L1)
  o3473.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3452.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3447.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3448.Value ~= True) then
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
o3447 = { [nil] = {}, GetCalculated = function()
  if not (o3279.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3447.SetStateValue(o3447.GetCalculated())
end, StartCalculate = function()
  o3447["Value"] = o3447.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3447.Value == L0) then
    o3447["Value"] = L0
    CallFunction(o3445, "ProcesseStateChange")
  end
end }
o3448 = { [nil] = {}, GetCalculated = function()
  if not (o3288.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3448.SetStateValue(o3448.GetCalculated())
end, StartCalculate = function()
  o3448["Value"] = o3448.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3448.Value == L0) then
    DelayedFunction(15, o3448, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3448.Value == L0) then
    o3448["Value"] = L0
    CallFunction(o3445, "ProcesseStateChange")
  end
end }
o3452 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3452.SetStateValue(o3452.GetCalculated())
end, StartCalculate = function()
  o3452["Value"] = o3452.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3452.Value == L0) then
    DelayedFunction(8, o3452, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3452.Value == L0) then
    o3452["Value"] = L0
    CallFunction(o3445, "ProcesseStateChange")
  end
end }
o3473 = { [nil] = {}, Start = function()
  o3473["Value"] = False
  o3268.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3473.Value == L0) then
    o3473["Value"] = L0
    o3268.ReCalculate()
  end
end }
S_o3509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o3509, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o3509, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3509, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3509, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Game_SetWayPoint(GetGameNode(), o3799.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  CallFunction(o3509, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Frigate1_Path", 0.35, 1 } }("Code10")
  else
    CallFunction(o3509, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code11")
  else
    CallFunction(o3509, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_DestEmp = function(L0, L1)
  o3525.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3512.Value ~= True) then
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
o3512 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3512.SetStateValue(o3512.GetCalculated())
end, StartCalculate = function()
  o3512["Value"] = o3512.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3512.Value == L0) then
    DelayedFunction(10, o3512, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3512.Value == L0) then
    o3512["Value"] = L0
    CallFunction(o3509, "ProcesseStateChange")
  end
end }
o3525 = { [nil] = {}, Start = function()
  o3525["Value"] = False
  o3285.StartCalculate()
  o3286.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3525.Value == L0) then
    o3525["Value"] = L0
    o3285.ReCalculate()
    o3286.ReCalculate()
  end
end }
S_o3566 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3566, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3566, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3566, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o3566, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o3566, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3566, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3566, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Frigate2_Path", 0.35, 1 } }("Code8")
  else
    CallFunction(o3566, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o3566, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o3572.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o3582.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3569.Value ~= True) then
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
o3569 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3569.SetStateValue(o3569.GetCalculated())
end, StartCalculate = function()
  o3569["Value"] = o3569.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3569.Value == L0) then
    DelayedFunction(10, o3569, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3569.Value == L0) then
    o3569["Value"] = L0
    CallFunction(o3566, "ProcesseStateChange")
  end
end }
o3572 = { [nil] = {}, Start = function()
  o3572["Value"] = False
  o3285.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3572.Value == L0) then
    o3572["Value"] = L0
    o3285.ReCalculate()
  end
end }
o3582 = { [nil] = {}, Start = function()
  o3582["Value"] = False
  o3286.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3582.Value == L0) then
    o3582["Value"] = L0
    o3286.ReCalculate()
  end
end }
S_o3623 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3623, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3623, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3623, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o3623, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o3623, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3623, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3623, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TechBomber_Path", 0.25, 1 } }("Code8")
  else
    CallFunction(o3623, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o3623, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DestEmp = function(L0, L1)
  o3639.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3626.Value ~= True) then
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
o3626 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3626.SetStateValue(o3626.GetCalculated())
end, StartCalculate = function()
  o3626["Value"] = o3626.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3626.Value == L0) then
    DelayedFunction(10, o3626, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3626.Value == L0) then
    o3626["Value"] = L0
    CallFunction(o3623, "ProcesseStateChange")
  end
end }
o3639 = { [nil] = {}, Start = function()
  o3639["Value"] = False
  o3285.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3639.Value == L0) then
    o3639["Value"] = L0
    o3285.ReCalculate()
  end
end }
S_o3680 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3680, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3680, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3680, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o3680, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o3680, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3680, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3680, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomber1_Path", 0.25, 1 } }("Code8")
  else
    CallFunction(o3680, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o3680, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DestEmp = function(L0, L1)
  o3696.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3683.Value ~= True) then
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
o3683 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3683.SetStateValue(o3683.GetCalculated())
end, StartCalculate = function()
  o3683["Value"] = o3683.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3683.Value == L0) then
    DelayedFunction(10, o3683, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3683.Value == L0) then
    o3683["Value"] = L0
    CallFunction(o3680, "ProcesseStateChange")
  end
end }
o3696 = { [nil] = {}, Start = function()
  o3696["Value"] = False
  o3285.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3696.Value == L0) then
    o3696["Value"] = L0
    o3285.ReCalculate()
  end
end }
S_o3737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3737, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3737, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3737, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o3737, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o3737, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3737, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3737, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomber2_Path", 0.25, 1 } }("Code8")
  else
    CallFunction(o3737, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o3737, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DestEmp = function(L0, L1)
  o3753.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3740.Value ~= True) then
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
o3740 = { [nil] = {}, GetCalculated = function()
  if not (o2275.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3740.SetStateValue(o3740.GetCalculated())
end, StartCalculate = function()
  o3740["Value"] = o3740.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3740.Value == L0) then
    DelayedFunction(10, o3740, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3740.Value == L0) then
    o3740["Value"] = L0
    CallFunction(o3737, "ProcesseStateChange")
  end
end }
o3753 = { [nil] = {}, Start = function()
  o3753["Value"] = False
  o3285.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3753.Value == L0) then
    o3753["Value"] = L0
    o3285.ReCalculate()
  end
end }
S_o3794 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3794, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3799 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3623.Node)
  CallFunction(o3799, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3804 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3804, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3807.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3807 = { [nil] = {}, Start = function()
  o3807["Value"] = False
  o3272.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3807.Value == L0) then
    o3807["Value"] = L0
    o3272.ReCalculate()
  end
end }
S_o3809 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3809, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3812.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3812 = { [nil] = {}, Start = function()
  o3812["Value"] = False
  o3274.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3812.Value == L0) then
    o3812["Value"] = L0
    o3274.ReCalculate()
  end
end }
S_o3814 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3814, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3817.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3817 = { [nil] = {}, Start = function()
  o3817["Value"] = False
  o3276.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3817.Value == L0) then
    o3817["Value"] = L0
    o3276.ReCalculate()
  end
end }
S_o3819 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3819, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3819, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3819, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3819, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3819, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0.716549)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3819, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o3823.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3820.Value ~= True) then
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
o3820 = { [nil] = {}, GetCalculated = function()
  if not (o3273.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3820.SetStateValue(o3820.GetCalculated())
end, StartCalculate = function()
  o3820["Value"] = o3820.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3820.Value == L0) then
    o3820["Value"] = L0
    CallFunction(o3819, "ProcesseStateChange")
  end
end }
o3823 = { [nil] = {}, Start = function()
  o3823["Value"] = False
  o3283.StartCalculate()
  o3284.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3823.Value == L0) then
    o3823["Value"] = L0
    o3283.ReCalculate()
    o3284.ReCalculate()
  end
end }
S_o3862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.4)
  Body_SetEmpShield(L0.Node, 0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o3862, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
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
S_o3917 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3917, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3917, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3917, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Bonus_Raid_Area", "E", "", "", "", 10, 0.4, "Code4")
  else
    CallFunction(o3917, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3922.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o3930.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3934.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3919.Value ~= True) then
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
o3919 = { [nil] = {}, GetCalculated = function()
  if not (o3273.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3919.SetStateValue(o3919.GetCalculated())
end, StartCalculate = function()
  o3919["Value"] = o3919.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3919.Value == L0) then
    o3919["Value"] = L0
    CallFunction(o3917, "ProcesseStateChange")
  end
end }
o3922 = { [nil] = {}, Start = function()
  o3922["Value"] = False
  o3282.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3922.Value == L0) then
    o3922["Value"] = L0
    o3282.ReCalculate()
  end
end }
o3930 = { [nil] = {}, Start = function()
  o3930["Value"] = False
  o3281.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3930.Value == L0) then
    o3930["Value"] = L0
    o3281.ReCalculate()
  end
end }
o3934 = { [nil] = {}, Start = function()
  o3934["Value"] = False
  o3283.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3934.Value == L0) then
    o3934["Value"] = L0
    o3283.ReCalculate()
  end
end }
S_o3973 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3973, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3973, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3973, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/Bonus_Raid_Area", "E", "", "", "", 10, 0.4, "Code4")
  else
    CallFunction(o3973, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o3978.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o3986.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o3990.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3975.Value ~= True) then
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
o3975 = { [nil] = {}, GetCalculated = function()
  if not (o3273.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3975.SetStateValue(o3975.GetCalculated())
end, StartCalculate = function()
  o3975["Value"] = o3975.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3975.Value == L0) then
    o3975["Value"] = L0
    CallFunction(o3973, "ProcesseStateChange")
  end
end }
o3978 = { [nil] = {}, Start = function()
  o3978["Value"] = False
  o3282.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3978.Value == L0) then
    o3978["Value"] = L0
    o3282.ReCalculate()
  end
end }
o3986 = { [nil] = {}, Start = function()
  o3986["Value"] = False
  o3281.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3986.Value == L0) then
    o3986["Value"] = L0
    o3281.ReCalculate()
  end
end }
o3990 = { [nil] = {}, Start = function()
  o3990["Value"] = False
  o3283.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3990.Value == L0) then
    o3990["Value"] = L0
    o3283.ReCalculate()
  end
end }
S_o4029 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4029, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4029, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4029, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4029, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/cra_guard1_area", "/Scenario_Dynamic/Navigation/cra_guard1_area" }, 666, 1, "Code5")
  else
    CallFunction(o4029, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4031.Value ~= True) then
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
o4031 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4031.SetStateValue(o4031.GetCalculated())
end, StartCalculate = function()
  o4031["Value"] = o4031.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4031.Value == L0) then
    DelayedFunction(0.465499, o4031, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4031.Value == L0) then
    o4031["Value"] = L0
    CallFunction(o4029, "ProcesseStateChange")
  end
end }
S_o4085 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4085, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4085, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4085, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4085, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/cra_guard2_area", "/Scenario_Dynamic/Navigation/cra_guard2_area" }, 666, 1, "Code5")
  else
    CallFunction(o4085, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4087.Value ~= True) then
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
o4087 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4087.SetStateValue(o4087.GetCalculated())
end, StartCalculate = function()
  o4087["Value"] = o4087.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4087.Value == L0) then
    DelayedFunction(1.867897, o4087, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4087.Value == L0) then
    o4087["Value"] = L0
    CallFunction(o4085, "ProcesseStateChange")
  end
end }
S_o4141 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4141, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4141, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4141, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4141, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/cra_guard3_area", "/Scenario_Dynamic/Navigation/cra_guard3_area" }, 666, 1, "Code5")
  else
    CallFunction(o4141, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4143.Value ~= True) then
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
o4143 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4143.SetStateValue(o4143.GetCalculated())
end, StartCalculate = function()
  o4143["Value"] = o4143.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4143.Value == L0) then
    DelayedFunction(0.987562, o4143, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4143.Value == L0) then
    o4143["Value"] = L0
    CallFunction(o4141, "ProcesseStateChange")
  end
end }
S_o4197 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4197, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4197, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4197, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4197, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4199.Value ~= True) then
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
o4199 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4199.SetStateValue(o4199.GetCalculated())
end, StartCalculate = function()
  o4199["Value"] = o4199.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4199.Value == L0) then
    DelayedFunction(0.004654, o4199, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4199.Value == L0) then
    o4199["Value"] = L0
    CallFunction(o4197, "ProcesseStateChange")
  end
end }
S_o4253 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4253, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4253, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4253, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4253, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4255.Value ~= True) then
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
o4255 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4255.SetStateValue(o4255.GetCalculated())
end, StartCalculate = function()
  o4255["Value"] = o4255.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4255.Value == L0) then
    DelayedFunction(0.265789, o4255, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4255.Value == L0) then
    o4255["Value"] = L0
    CallFunction(o4253, "ProcesseStateChange")
  end
end }
S_o4309 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4309, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4309, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4309, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4309, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4311.Value ~= True) then
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
o4311 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4311.SetStateValue(o4311.GetCalculated())
end, StartCalculate = function()
  o4311["Value"] = o4311.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4311.Value == L0) then
    DelayedFunction(2.489798, o4311, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4311.Value == L0) then
    o4311["Value"] = L0
    CallFunction(o4309, "ProcesseStateChange")
  end
end }
S_o4365 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4365, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4365, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4365, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 1, "Code4")
  else
    CallFunction(o4365, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4367.Value ~= True) then
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
o4367 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4367.SetStateValue(o4367.GetCalculated())
end, StartCalculate = function()
  o4367["Value"] = o4367.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4367.Value == L0) then
    DelayedFunction(3.498747, o4367, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4367.Value == L0) then
    o4367["Value"] = L0
    CallFunction(o4365, "ProcesseStateChange")
  end
end }
S_o4421 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4421, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4421, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4421, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4421, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4421, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4421, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4421, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4424.Value ~= True) then
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
o4424 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4424.SetStateValue(o4424.GetCalculated())
end, StartCalculate = function()
  o4424["Value"] = o4424.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4424.Value == L0) then
    DelayedFunction(0.254565, o4424, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4424.Value == L0) then
    o4424["Value"] = L0
    CallFunction(o4421, "ProcesseStateChange")
  end
end }
S_o4470 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4470, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4470, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4470, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4470, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4470, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4470, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4470, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4473.Value ~= True) then
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
o4473 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4473.SetStateValue(o4473.GetCalculated())
end, StartCalculate = function()
  o4473["Value"] = o4473.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4473.Value == L0) then
    o4473["Value"] = L0
    CallFunction(o4470, "ProcesseStateChange")
  end
end }
S_o4519 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4519, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4519, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4519, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4519, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4519, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4519, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4519, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4522.Value ~= True) then
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
o4522 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4522.SetStateValue(o4522.GetCalculated())
end, StartCalculate = function()
  o4522["Value"] = o4522.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4522.Value == L0) then
    DelayedFunction(2.895798, o4522, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4522.Value == L0) then
    o4522["Value"] = L0
    CallFunction(o4519, "ProcesseStateChange")
  end
end }
S_o4568 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4568, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4568, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4568, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4568, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4568, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4568, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4568, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4571.Value ~= True) then
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
o4571 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4571.SetStateValue(o4571.GetCalculated())
end, StartCalculate = function()
  o4571["Value"] = o4571.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4571.Value == L0) then
    DelayedFunction(1.897984, o4571, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4571.Value == L0) then
    o4571["Value"] = L0
    CallFunction(o4568, "ProcesseStateChange")
  end
end }
S_o4617 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4617, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4617, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4617, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4617, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4617, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4617, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4617, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4620.Value ~= True) then
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
o4620 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4620.SetStateValue(o4620.GetCalculated())
end, StartCalculate = function()
  o4620["Value"] = o4620.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4620.Value == L0) then
    DelayedFunction(1.554485, o4620, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4620.Value == L0) then
    o4620["Value"] = L0
    CallFunction(o4617, "ProcesseStateChange")
  end
end }
S_o4666 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4666, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4666, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4666, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4666, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4666, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4666, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4666, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4669.Value ~= True) then
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
o4669 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4669.SetStateValue(o4669.GetCalculated())
end, StartCalculate = function()
  o4669["Value"] = o4669.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4669.Value == L0) then
    DelayedFunction(2.987894, o4669, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4669.Value == L0) then
    o4669["Value"] = L0
    CallFunction(o4666, "ProcesseStateChange")
  end
end }
S_o4715 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4715, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4715, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4715, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4715, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4715, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4715, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4715, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4718.Value ~= True) then
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
o4718 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4718.SetStateValue(o4718.GetCalculated())
end, StartCalculate = function()
  o4718["Value"] = o4718.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4718.Value == L0) then
    DelayedFunction(3.789465, o4718, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4718.Value == L0) then
    o4718["Value"] = L0
    CallFunction(o4715, "ProcesseStateChange")
  end
end }
S_o4764 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4764, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4764, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_VehicleDipolIn(L0, "Code3")
  else
    CallFunction(o4764, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleAttackLib.GuardArea(L0, "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "/Scenario_Dynamic/Navigation/Convoy_Raid_Area", "E", "", "", "", 10, "Code4")
  else
    CallFunction(o4764, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o4764, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4764, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4764, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4767.Value ~= True) then
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
o4767 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4767.SetStateValue(o4767.GetCalculated())
end, StartCalculate = function()
  o4767["Value"] = o4767.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4767.Value == L0) then
    DelayedFunction(3.165417, o4767, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4767.Value == L0) then
    o4767["Value"] = L0
    CallFunction(o4764, "ProcesseStateChange")
  end
end }
S_o4813 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o4813, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4813, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o4813, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -70, 70)
  CallFunction(o4813, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 450, 450, "E", "", "", "", "Code5")
  else
    CallFunction(o4813, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4815.Value ~= True) then
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
o4815 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4815.SetStateValue(o4815.GetCalculated())
end, StartCalculate = function()
  o4815["Value"] = o4815.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4815.Value == L0) then
    DelayedFunction(4.464896, o4815, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4815.Value == L0) then
    o4815["Value"] = L0
    CallFunction(o4813, "ProcesseStateChange")
  end
end }
S_o4859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Turret_DipolInLeaveSimulation(L0.Node)
  CallFunction(o4859, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4859, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_TurretDipolIn(L0, "Code3")
  else
    CallFunction(o4859, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -70, 70)
  CallFunction(o4859, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 450, 450, "E", "", "", "", "Code5")
  else
    CallFunction(o4859, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4861.Value ~= True) then
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
o4861 = { [nil] = {}, GetCalculated = function()
  if not (o3278.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4861.SetStateValue(o4861.GetCalculated())
end, StartCalculate = function()
  o4861["Value"] = o4861.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4861.Value == L0) then
    DelayedFunction(7.464896, o4861, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4861.Value == L0) then
    o4861["Value"] = L0
    CallFunction(o4859, "ProcesseStateChange")
  end
end }
o4905 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (o3289.Value ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
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
end, ReCalculate = function()
  o4905.SetStateValue(o4905.GetCalculated())
end, StartCalculate = function()
  o4905["Value"] = o4905.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4905.Value == L0) then
    o4905["Value"] = L0
    o2.ReCalculate()
  end
end }
o4929 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (o3313.Value == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
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
end, ReCalculate = function()
  o4929.SetStateValue(o4929.GetCalculated())
end, StartCalculate = function()
  o4929["Value"] = o4929.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4929.Value == L0) then
    o4929["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o4933 = { [nil] = {}, Start = function(L0)

end }
o4935 = FormationLib.CreateFormation("Row", "", "", "", 30, 30)
S_o4936 = { [nil] = {}, Start = function(L0)

end }
S_o4937 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o4934, o4935, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_Cut(L0.Node, 1)
  CallFunction(o4937, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o4937, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.9, "MMMN", 0)
  CallFunction(o4937, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4934, o4935, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_4", 1, 1, "Code10")
  else
    CallFunction(o4937, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  CallFunction(o4937, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o4937, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3794.Node)
  CallFunction(o4937, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4941 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4941, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Track4")
  CallFunction(o4941, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code3")
  else
    CallFunction(o4941, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "Agressive")
  CallFunction(o4941, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4942.Value ~= True) then
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
o4942 = { [nil] = {}, GetCalculated = function()
  if not (o2305.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4942.SetStateValue(o4942.GetCalculated())
end, StartCalculate = function()
  o4942["Value"] = o4942.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4942.Value == L0) then
    o4942["Value"] = L0
    CallFunction(o4941, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 398)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_static_1", S_o30)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o307)
  o351 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o351)
  o397 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o397)
  o443 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o443)
  o489 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o489)
  o535 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o535)
  o581 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o581)
  o627 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2x", S_o627)
  o673 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o673)
  o719 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o719)
  o765 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o765)
  o811 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o811)
  o857 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o857)
  o903 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o903)
  o949 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o949)
  o995 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o995)
  o1041 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o1041)
  o1087 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_5", S_o1087)
  o1133 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o1133)
  o1179 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o1179)
  o1225 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o1225)
  o1271 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o1271)
  o1317 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1317)
  o1363 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o1363)
  o1409 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o1409)
  o1455 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1455)
  o1501 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o1501)
  o1547 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o1547)
  o1593 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o1593)
  o1639 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o1639)
  o1685 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o1685)
  o1731 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o1731)
  o1777 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o1777)
  o1823 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_4", S_o1823)
  o1869 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o1869)
  o1915 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o1915)
  o1961 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o1961)
  o2007 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o2007)
  o2053 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o2053)
  o2099 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o2099)
  o2145 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o2145)
  o2191 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_4", S_o2191)
  o2270 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tReachConvoi", S_o2270)
  o2275.Start()
  o2276 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tActivateWP2", S_o2276)
  o2281.Start()
  o2282 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tActivateWP3", S_o2282)
  o2287.Start()
  o2288 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tActivateWP4", S_o2288)
  o2293.Start()
  o2294 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tMessage_014(228)", S_o2294)
  o2299.Start()
  o2300 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tCrawlerAmbush", S_o2300)
  o2305.Start()
  o2306 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tMissionWon", S_o2306)
  o2311.Start()
  o2312 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_1", S_o2312)
  o2359 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_2", S_o2359)
  o2406 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_3", S_o2406)
  o2453 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_4", S_o2453)
  o2500 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_5", S_o2500)
  o2547 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_6", S_o2547)
  o2594 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_7", S_o2594)
  o2641 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_8", S_o2641)
  o2688 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_9", S_o2688)
  o2735 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_10", S_o2735)
  o2782 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_11", S_o2782)
  o2829 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_12", S_o2829)
  o2876 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_13", S_o2876)
  o2923 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_14", S_o2923)
  o2970 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_15", S_o2970)
  o3017 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_16", S_o3017)
  o3064 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_17", S_o3064)
  o3111 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_18", S_o3111)
  o3158 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_19", S_o3158)
  o3205 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_20", S_o3205)
  o3252 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o3252)
  o3317 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_mayday_1", S_o3317)
  o3345.Start()
  o3381 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o3381)
  o3409.Start()
  o3445 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o3445)
  o3473.Start()
  o3509 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "kon_frigate_1", S_o3509)
  o3525.Start()
  o3566 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "kon_frigate_2", S_o3566)
  o3572.Start()
  o3582.Start()
  o3623 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "kon_techbomber_1", S_o3623)
  o3639.Start()
  o3680 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "kon_bomber_1", S_o3680)
  o3696.Start()
  o3737 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "kon_bomber_2", S_o3737)
  o3753.Start()
  o3794 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o3794)
  o3799 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o3799)
  o3804 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o3804)
  o3807.Start()
  o3809 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_3", S_o3809)
  o3812.Start()
  o3814 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_4", S_o3814)
  o3817.Start()
  o3819 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker_freighter_1", S_o3819)
  o3823.Start()
  o3862 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_EMPOUT", S_o3862)
  o3917 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout2_narrow_1", S_o3917)
  o3922.Start()
  o3930.Start()
  o3934.Start()
  o3973 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_tz_scout1_narrow_1", S_o3973)
  o3978.Start()
  o3986.Start()
  o3990.Start()
  o4029 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_guard_1", S_o4029)
  o4085 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_guard_2", S_o4085)
  o4141 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_guard_3", S_o4141)
  o4197 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_narrow_1", S_o4197)
  o4253 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_narrow_2", S_o4253)
  o4309 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_narrow_3", S_o4309)
  o4365 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout1_narrow_4", S_o4365)
  o4421 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_1", S_o4421)
  o4470 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_2", S_o4470)
  o4519 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_3", S_o4519)
  o4568 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_4", S_o4568)
  o4617 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_5", S_o4617)
  o4666 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_6", S_o4666)
  o4715 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_7", S_o4715)
  o4764 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_tank_8", S_o4764)
  o4813 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_sniper_1/Turm1", S_o4813)
  o4859 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_sniper_2/Turm1", S_o4859)
  o4933 = BindEasy(Node_Find("/"), "Camera", S_o4933)
  o4936 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o4936)
  o4937 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro", S_o4937)
  o4941 = BindEasy(Node_Find("/IngameSequences/Director"), "CrawlerAmbush", S_o4941)
  o2265 = { {}, o3623, o3680, o3737 }()
  o2268 = { {}, o3317, o3381, o3445 }()
  o4934 = { {}, o3252 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
