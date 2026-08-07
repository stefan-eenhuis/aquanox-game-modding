-- dekompiliert aus instant5.sco
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
  Terrain_LoadTerrain(node1, "map/Instant5/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/Instant5/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/Instant5/Lmsh/", "map/Instant5/Ltex/")
  Game_SetTerrainDepth(node0, 2498)
  Game_SetDecompressionHeight(node0, 450)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.109804, 0.101961, 0.082353)
  Game_SetParallelLightT(node0, 0.219608, 0.203922, 0.164706)
  Game_SetParallelLightB(node0, 0.109804, 0.101961, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_instant5.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 1)
  Game_SetNPCHitFactor(node0, 3)
  Game_SetEnvironmentCubeMap(node0, "map/Instant5/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1013.401985, 3596.9783, 114.456958), MAT_Vector3(-34.243689, 0, 0))
  Node_ParseIniFile(node8, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(924.052885, 2440.811511, 107.200761), MAT_Vector3(-16.322259, 0, 0))
  Node_ParseIniFile(node9, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(266.318555, 3636.139539, 101.225221), MAT_Vector3(47.943205, 0, 0))
  Node_ParseIniFile(node10, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(810.363149, 1007.565562, 269.09738), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(744.05008, 1034.792423, 228.732391), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_turret_socket_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(762.050998, 977.61848, 339.118181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_turret_socket.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_fx_rays", "fx_rays_3H2_1")
  Node_AddSon(node7, node14)
  Node_ParseIniFile(node14, "osd/fx_rays/fx_rays_3H2.osd")
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_fx_sky", "fx_sky_3H2_1")
  Node_AddSon(node7, node15)
  Node_ParseIniFile(node15, "osd/fx_sky/fx_sky_3H2.osd")
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_fx_flare", "fx_flare_3H2_1")
  Node_AddSon(node7, node16)
  Node_ParseIniFile(node16, "osd/fx_flare/fx_flare_3H2.osd")
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_fx_plankton", "fx_plankton_amber_n_1")
  Node_AddSon(node7, node17)
  Node_ParseIniFile(node17, "osd/fx_plankton/fx_plankton_amber_n.osd")
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1135.525831, 2796.95224, 121.238209), MAT_Vector3(-12.466366, 8.902586, 6.482866))
  Node_ParseIniFile(node18, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1955.496439, 1195.582997, 248.724188), MAT_Vector3(-8.723773, -8.955964, -2.576793))
  Node_ParseIniFile(node19, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(977.974535, 1348.96431, 193.627716), MAT_Vector3(-0.053288, 37.021465, -21.054106))
  Node_ParseIniFile(node20, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(740.501345, 2133.211212, 110.93834), MAT_Vector3(-3.461461, 3.811635, 0.561936))
  Node_ParseIniFile(node21, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3861.522849, 1708.270416, 247.910172), MAT_Vector3(-5.770761, 4.606539, 1.061199))
  Node_ParseIniFile(node22, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2x")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(-234.477151, 1708.270416, 247.910172), MAT_Vector3(-5.770761, 4.606539, 1.061199))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(376.287296, 2878.64355, 99.809363), MAT_Vector3(76.885524, -3.384787, -0.491192))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(939.415176, 265.036377, 162.5002), MAT_Vector3(92.867797, -5.787939, 11.03321))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2083.794179, 3180.123084, 118.991664), MAT_Vector3(101.168725, -6.318408, 0.924487))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(789.186066, 1104.094061, 145.469613), MAT_Vector3(105.305253, 18.786762, 22.167083))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3649.248708, 2461.680059, 364.163003), MAT_Vector3(93.309282, -0.287029, -16.816108))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(285.248055, 2897.646436, 97.860129), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(619.477061, 2339.5683, 141.043279), MAT_Vector3(5.376076, -8.561704, -3.856841))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1983.972237, 3051.379488, 163.403071), MAT_Vector3(-37.826106, 3.486543, -5.230049))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1150.742553, 2721.728611, 147.136705), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(928.69696, 391.670931, 176.037709), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(485.394066, 2003.486083, 117.548043), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(319.192342, 2822.846409, 98.924311), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(489.389651, 2035.846883, 108.321914), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2022.096746, 3126.450146, 148.058594), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1018.94312, 3050.978501, -0.929178), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(673.847302, 2321.467982, 128.547236), MAT_Vector3(-7.986901, 10.518171, 6.306371))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1997.148438, 3034.894115, 180.04713), MAT_Vector3(-10.671958, 7.527671, 6.030585))
  Node_ParseIniFile(node40, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(707.26111, 2161.296582, 122.423432), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1679.903646, 1185.550808, 136.465431), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node42, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2279.891955, 1512.67676, 285.008588), MAT_Vector3(46.307354, 28.168138, -49.151511))
  Node_ParseIniFile(node43, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_rock_l_01_4")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(593.367083, 1556.307849, 110.512719), MAT_Vector3(126.774346, 38.346994, 26.678369))
  Node_ParseIniFile(node44, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2396.572084, 1122.480774, 271.704141), MAT_Vector3(47.78711, 57.45902, -37.818116))
  Node_ParseIniFile(node45, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(326.145276, 1770.148546, 110.441415), MAT_Vector3(173.530948, -5.743609, 33.331968))
  Node_ParseIniFile(node46, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(788.309716, 1957.901804, 120.017328), MAT_Vector3(48.217593, 57.158808, -37.934286))
  Node_ParseIniFile(node47, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2207.891213, 1512.068684, 290.771291), MAT_Vector3(17.392597, 45.509452, 18.316038))
  Node_ParseIniFile(node48, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(548.562132, 1645.166783, 119.739044), MAT_Vector3(-154.774562, 28.833922, 62.273309))
  Node_ParseIniFile(node49, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_rock_s_01_4")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(306.586907, 1879.588284, 108.026141), MAT_Vector3(144.177489, 1.343612, 6.397873))
  Node_ParseIniFile(node50, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(803.25864, 2522.898418, 117.612308), MAT_Vector3(141.200012, 0, 0))
  Node_ParseIniFile(node51, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node52)
  Node_ParseIniFile(node52, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node52, "map/Instant5/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node53)
  Node_ParseIniFile(node53, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node53, "map/Instant5/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node54)
  Node_ParseIniFile(node54, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node54, "map/Instant5/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node55)
  Node_ParseIniFile(node55, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node55, "map/Instant5/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node56)
  Node_ParseIniFile(node56, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node56, "map/Instant5/Terrain/org_fungus_s01.tga")
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
  node60 = Node_CreateNode("NOD_PatrolArea", "Grab_Area1")
  Node_AddSon(node59, node60)
  PatrolArea_SetPosition(node60, MAT_Vector3(573.527903, 1657.356938, 100))
  PatrolArea_SetRadius(node60, 300)
  PatrolArea_SetMinZ(node60, 0)
  PatrolArea_SetMaxZ(node60, 100)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_PatrolArea", "DockArea")
  Node_AddSon(node59, node61)
  PatrolArea_SetPosition(node61, MAT_Vector3(654.952824, 2407.0571, 100))
  PatrolArea_SetRadius(node61, 250)
  PatrolArea_SetMinZ(node61, 0)
  PatrolArea_SetMaxZ(node61, 100)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_PatrolArea", "Grab_Area3")
  Node_AddSon(node59, node62)
  PatrolArea_SetPosition(node62, MAT_Vector3(204.85616, 3342.792, 97.198472))
  PatrolArea_SetRadius(node62, 250)
  PatrolArea_SetMinZ(node62, 0)
  PatrolArea_SetMaxZ(node62, 100)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_PatrolArea", "Grab_Area4")
  Node_AddSon(node59, node63)
  PatrolArea_SetPosition(node63, MAT_Vector3(778.6368, 3520.142367, 97.19847))
  PatrolArea_SetRadius(node63, 250)
  PatrolArea_SetMinZ(node63, 0)
  PatrolArea_SetMaxZ(node63, 100)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "Frigate2_Path")
  Node_AddSon(node59, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(791.575873, 2187.147681, 265.8082))
  Position_SetRadius(node65, 20)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(951.8289, 2005.407, 247.2547))
  Position_SetRadius(node66, 20)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(1409.842, 1489.02, 164.7923))
  Position_SetRadius(node67, 20)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(1728.518965, 1292.256879, 247.1001))
  Position_SetRadius(node68, 20)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node64, node69)
  Position_SetPosition(node69, MAT_Vector3(2115.034, 1267.975, 391.8122))
  Position_SetRadius(node69, 20)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node64, node70)
  Position_SetPosition(node70, MAT_Vector3(2312.695885, 1243.00914, 303.261))
  Position_SetRadius(node70, 20)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node64, node71)
  Position_SetPosition(node71, MAT_Vector3(2589.189669, 1227.067418, 381.7086))
  Position_SetRadius(node71, 20)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Path", "TechBomber_Path")
  Node_AddSon(node59, node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node72, node73)
  Position_SetPosition(node73, MAT_Vector3(860.2907, 2226.765, 194.9831))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node72, node74)
  Position_SetPosition(node74, MAT_Vector3(1015.474, 2067.21, 217.8228))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node72, node75)
  Position_SetPosition(node75, MAT_Vector3(1239.142, 1829.7, 175.9588))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node72, node76)
  Position_SetPosition(node76, MAT_Vector3(1376.839, 1662.131, 154.8957))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node72, node77)
  Position_SetPosition(node77, MAT_Vector3(1514.537, 1543.376, 175.0327))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node72, node78)
  Position_SetPosition(node78, MAT_Vector3(1666.806, 1422.435, 236.8649))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node72, node79)
  Position_SetPosition(node79, MAT_Vector3(1759.333, 1363.422, 251.2945))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node72, node80)
  Position_SetPosition(node80, MAT_Vector3(1913.059, 1345.936, 311.3013))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node72, node81)
  Position_SetPosition(node81, MAT_Vector3(2111.956, 1348.122, 359.566))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node72, node82)
  Position_SetPosition(node82, MAT_Vector3(2308.667, 1344.479, 285.4747))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node72, node83)
  Position_SetPosition(node83, MAT_Vector3(2501.735, 1332.822, 303.993882))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node72, node84)
  Position_SetPosition(node84, MAT_Vector3(2669.046257, 1350.450593, 310.527124))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Path", "Bomber1_Path")
  Node_AddSon(node59, node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node85, node86)
  Position_SetPosition(node86, MAT_Vector3(886.5188, 2261.007, 194.9831))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node85, node87)
  Position_SetPosition(node87, MAT_Vector3(1042.431, 2100.724, 217.8228))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node85, node88)
  Position_SetPosition(node88, MAT_Vector3(1263.184, 1861.028, 175.9588))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node85, node89)
  Position_SetPosition(node89, MAT_Vector3(1398.696, 1697.83, 154.8957))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node85, node90)
  Position_SetPosition(node90, MAT_Vector3(1537.122, 1580.533, 175.0327))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node85, node91)
  Position_SetPosition(node91, MAT_Vector3(1685.02, 1454.492, 236.8649))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node85, node92)
  Position_SetPosition(node92, MAT_Vector3(1768.804, 1401.307, 294.6584))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node85, node93)
  Position_SetPosition(node93, MAT_Vector3(1912.33, 1385.279, 300.126))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node85, node94)
  Position_SetPosition(node94, MAT_Vector3(2112.685, 1386.007, 359.566))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node85, node95)
  Position_SetPosition(node95, MAT_Vector3(2314.495, 1378.721, 334.413371))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node85, node96)
  Position_SetPosition(node96, MAT_Vector3(2495.178, 1367.064, 323.817141))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node85, node97)
  Position_SetPosition(node97, MAT_Vector3(2548.612323, 1369.384091, 315.122492))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node85, node98)
  Position_SetPosition(node98, MAT_Vector3(2624.792837, 1384.981403, 326.2844))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Path", "Bomber2_Path")
  Node_AddSon(node59, node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node99, node100)
  Position_SetPosition(node100, MAT_Vector3(836.2482, 2196.165, 194.9831))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node99, node101)
  Position_SetPosition(node101, MAT_Vector3(989.2462, 2033.697, 217.8228))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node99, node102)
  Position_SetPosition(node102, MAT_Vector3(1212.913, 1794.729, 175.9588))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node99, node103)
  Position_SetPosition(node103, MAT_Vector3(1354.254, 1629.345, 154.8957))
  Position_SetRadius(node103, 5)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node99, node104)
  Position_SetPosition(node104, MAT_Vector3(1494.137, 1507.677, 175.0327))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node99, node105)
  Position_SetPosition(node105, MAT_Vector3(1645.678, 1388.193, 236.8649))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node99, node106)
  Position_SetPosition(node106, MAT_Vector3(1750.59, 1325.537, 294.6584))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node99, node107)
  Position_SetPosition(node107, MAT_Vector3(1914.516, 1312.423, 300.126))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node99, node108)
  Position_SetPosition(node108, MAT_Vector3(2113.414, 1313.151, 359.566))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node99, node109)
  Position_SetPosition(node109, MAT_Vector3(2308.667, 1307.322, 312.731681))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node99, node110)
  Position_SetPosition(node110, MAT_Vector3(2498.821, 1302.951, 303.064667))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node99, node111)
  Position_SetPosition(node111, MAT_Vector3(2687.517, 1313.88, 317.9521))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node59, node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node112, node113)
  Position_SetPosition(node113, MAT_Vector3(741.669344, 2354.037347, 201.702896))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node112, node114)
  Position_SetPosition(node114, MAT_Vector3(762.204733, 2468.502654, 202.557136))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Path", "DockPath_1")
  Node_AddSon(node59, node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node115, node116)
  Position_SetPosition(node116, MAT_Vector3(773.276389, 2483.638464, 201.430369))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node115, node117)
  Position_SetPosition(node117, MAT_Vector3(801.515443, 2521.523683, 196.040708))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node59, node118)
  PatrolArea_SetPosition(node118, MAT_Vector3(2297.431525, 1227.03339, 383.437152))
  PatrolArea_SetRadius(node118, 350)
  PatrolArea_SetMinZ(node118, -120)
  PatrolArea_SetMaxZ(node118, 120)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node59, node119)
  PatrolArea_SetPosition(node119, MAT_Vector3(1657.309235, 1397.583113, 383.4372))
  PatrolArea_SetRadius(node119, 350)
  PatrolArea_SetMinZ(node119, -180)
  PatrolArea_SetMaxZ(node119, 120)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_3")
  Node_AddSon(node59, node120)
  PatrolArea_SetPosition(node120, MAT_Vector3(865.722652, 2090.115335, 270.18624))
  PatrolArea_SetRadius(node120, 350)
  PatrolArea_SetMinZ(node120, -180)
  PatrolArea_SetMaxZ(node120, 120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node57, node121)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node57, node122)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node57, node123)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node123, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_vehicle", "gen_grab_1")
  Node_AddSon(node124, node125)
  Body_SetCS(node125, MAT_Vector3(628.805708, 1740.145837, 195.694418), MAT_Vector3(136.276816, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_vehicle", "gen_grab_2")
  Node_AddSon(node124, node126)
  Body_SetCS(node126, MAT_Vector3(435.616592, 1487.433588, 304.320682), MAT_Vector3(-98.401524, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_vehicle", "gen_grab_3")
  Node_AddSon(node124, node127)
  Body_SetCS(node127, MAT_Vector3(494.095459, 1718.216262, 304.320682), MAT_Vector3(-28.248466, 0, 0))
  Node_ParseIniFile(node127, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_vehicle", "gen_grab_4")
  Node_AddSon(node124, node128)
  Body_SetCS(node128, MAT_Vector3(690.417413, 1539.646601, 304.3207), MAT_Vector3(23.418852, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_vehicle", "gen_grab_5")
  Node_AddSon(node124, node129)
  Body_SetCS(node129, MAT_Vector3(434.572354, 1816.377356, 304.3207), MAT_Vector3(-47.008497, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_vehicle", "gen_grab_11")
  Node_AddSon(node124, node130)
  Body_SetCS(node130, MAT_Vector3(317.739056, 3458.884511, 122.455432), MAT_Vector3(136.2768, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_vehicle", "gen_grab_12")
  Node_AddSon(node124, node131)
  Body_SetCS(node131, MAT_Vector3(77.88688, 3298.98306, 103.486789), MAT_Vector3(-98.40152, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_vehicle", "gen_grab_13")
  Node_AddSon(node124, node132)
  Body_SetCS(node132, MAT_Vector3(305.438944, 3246.707586, 115.348397), MAT_Vector3(-28.24847, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_vehicle", "gen_grab_14")
  Node_AddSon(node124, node133)
  Body_SetCS(node133, MAT_Vector3(200.887996, 3197.50714, 107.642512), MAT_Vector3(23.41885, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_vehicle", "gen_grab_15")
  Node_AddSon(node124, node134)
  Body_SetCS(node134, MAT_Vector3(366.939502, 3323.583284, 118.480452), MAT_Vector3(-47.0085, 0, 0))
  Node_ParseIniFile(node134, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_vehicle", "gen_grab_16")
  Node_AddSon(node124, node135)
  Body_SetCS(node135, MAT_Vector3(762.853747, 3705.784531, 122.4554), MAT_Vector3(136.2768, 0, 0))
  Node_ParseIniFile(node135, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_vehicle", "gen_grab_17")
  Node_AddSon(node124, node136)
  Body_SetCS(node136, MAT_Vector3(735.126477, 3545.882531, 131.277335), MAT_Vector3(-98.40152, 0, 0))
  Node_ParseIniFile(node136, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_vehicle", "gen_grab_18")
  Node_AddSon(node124, node137)
  Body_SetCS(node137, MAT_Vector3(938.336289, 3479.697698, 140.87032), MAT_Vector3(-28.24847, 0, 0))
  Node_ParseIniFile(node137, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vehicle", "gen_grab_19")
  Node_AddSon(node124, node138)
  Body_SetCS(node138, MAT_Vector3(628.615356, 3458.316364, 137.134497), MAT_Vector3(23.41885, 0, 0))
  Node_ParseIniFile(node138, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vehicle", "gen_grab_20")
  Node_AddSon(node124, node139)
  Body_SetCS(node139, MAT_Vector3(801.621773, 3403.564538, 118.4805), MAT_Vector3(-47.0085, 0, 0))
  Node_ParseIniFile(node139, "osd/gen/gen_grab.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node123, node140)
  Body_SetCS(node140, MAT_Vector3(2702.169355, 641.591723, 429.517155), MAT_Vector3(86.439708, 0.525515, 1.545164))
  Node_ParseIniFile(node140, "osd/pla/pla_instant_atlscout.osd")
  Body_SetFriendOrFoeID(node140, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vehicle", "atl_buggy_1")
  Node_AddSon(node123, node141)
  Body_SetCS(node141, MAT_Vector3(2171.236481, 1258.64065, 396.134372), MAT_Vector3(83.393354, 0, 0))
  Node_ParseIniFile(node141, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node141, 5)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vehicle", "atl_buggy_2")
  Node_AddSon(node123, node142)
  Body_SetCS(node142, MAT_Vector3(2848.487729, 1258.150145, 396.134372), MAT_Vector3(84.79676, 0, 0))
  Node_ParseIniFile(node142, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node142, 5)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vehicle", "atl_buggy_3")
  Node_AddSon(node123, node143)
  Body_SetCS(node143, MAT_Vector3(2755.964744, 1248.067329, 396.134372), MAT_Vector3(86.524615, 0, 0))
  Node_ParseIniFile(node143, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node143, 5)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vehicle", "atl_buggy_4")
  Node_AddSon(node123, node144)
  Body_SetCS(node144, MAT_Vector3(2850.517776, 1319.863823, 396.134372), MAT_Vector3(94.106513, 0, 0))
  Node_ParseIniFile(node144, "osd/atl/atl_buggy.osd")
  Body_SetFriendOrFoeID(node144, 5)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vehicle", "atl_torpedobuggy_1")
  Node_AddSon(node123, node145)
  Body_SetCS(node145, MAT_Vector3(2172.253139, 1345.695303, 396.134372), MAT_Vector3(96.308472, 0, 0))
  Node_ParseIniFile(node145, "osd/atl/atl_torpedobuggy.osd")
  Body_SetFriendOrFoeID(node145, 5)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vehicle", "atl_torpedobuggy_2")
  Node_AddSon(node123, node146)
  Body_SetCS(node146, MAT_Vector3(2867.631855, 1453.727083, 396.134372), MAT_Vector3(125.766426, 0, 0))
  Node_ParseIniFile(node146, "osd/atl/atl_torpedobuggy.osd")
  Body_SetFriendOrFoeID(node146, 5)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vehicle", "atl_torpedobuggy_3")
  Node_AddSon(node123, node147)
  Body_SetCS(node147, MAT_Vector3(2755.744718, 1403.884745, 396.134372), MAT_Vector3(90.94474, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_torpedobuggy.osd")
  Body_SetFriendOrFoeID(node147, 5)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_vehicle", "atl_torpedobuggy_4")
  Node_AddSon(node123, node148)
  Body_SetCS(node148, MAT_Vector3(2763.78376, 1360.875262, 396.134372), MAT_Vector3(85.481974, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_torpedobuggy.osd")
  Body_SetFriendOrFoeID(node148, 5)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_vehicle", "atl_tank_1")
  Node_AddSon(node123, node149)
  Body_SetCS(node149, MAT_Vector3(2228.161536, 1308.669019, 396.134372), MAT_Vector3(93.15924, 0, 0))
  Node_ParseIniFile(node149, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node149, 5)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vehicle", "atl_tank_2")
  Node_AddSon(node123, node150)
  Body_SetCS(node150, MAT_Vector3(2172.037291, 1395.267187, 396.134372), MAT_Vector3(104.21078, 0, 0))
  Node_ParseIniFile(node150, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node150, 5)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_vehicle", "atl_tank_3")
  Node_AddSon(node123, node151)
  Body_SetCS(node151, MAT_Vector3(2761.658387, 1303.935205, 396.134372), MAT_Vector3(80.117432, 0, 0))
  Node_ParseIniFile(node151, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node151, 5)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_vehicle", "atl_tank_4")
  Node_AddSon(node123, node152)
  Body_SetCS(node152, MAT_Vector3(2863.343336, 1384.860662, 396.134372), MAT_Vector3(105.371784, 0, 0))
  Node_ParseIniFile(node152, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node152, 5)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_1")
  Node_AddSon(node123, node153)
  Body_SetCS(node153, MAT_Vector3(2524.165756, 1297.770311, 445.082877), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node153, 5)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_2")
  Node_AddSon(node123, node154)
  Body_SetCS(node154, MAT_Vector3(1591.078802, 1405.721511, 399.838767), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node154, 5)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_3")
  Node_AddSon(node123, node155)
  Body_SetCS(node155, MAT_Vector3(1031.051753, 1933.134554, 200.797905), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node155, 5)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node123, node156)
  Body_SetPosition(node156, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node156, 5)
  Node_ParseIniFile(node156, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node157)
  Camera_SetBackPlane(node157, 1024)
  Node_EnterSimulation(node157)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, F)
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
    if not (o3392.Value ~= True) then
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
    if not (o3416.Value ~= True) then
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
S_o304 = { [nil] = {}, Start = function(L0)

end }
S_o350 = { [nil] = {}, Start = function(L0)

end }
S_o396 = { [nil] = {}, Start = function(L0)

end }
S_o442 = { [nil] = {}, Start = function(L0)

end }
S_o488 = { [nil] = {}, Start = function(L0)

end }
S_o534 = { [nil] = {}, Start = function(L0)

end }
S_o580 = { [nil] = {}, Start = function(L0)

end }
S_o626 = { [nil] = {}, Start = function(L0)

end }
S_o672 = { [nil] = {}, Start = function(L0)

end }
S_o718 = { [nil] = {}, Start = function(L0)

end }
S_o764 = { [nil] = {}, Start = function(L0)

end }
S_o810 = { [nil] = {}, Start = function(L0)

end }
S_o856 = { [nil] = {}, Start = function(L0)

end }
S_o902 = { [nil] = {}, Start = function(L0)

end }
S_o948 = { [nil] = {}, Start = function(L0)

end }
S_o994 = { [nil] = {}, Start = function(L0)

end }
S_o1040 = { [nil] = {}, Start = function(L0)

end }
S_o1086 = { [nil] = {}, Start = function(L0)

end }
S_o1132 = { [nil] = {}, Start = function(L0)

end }
S_o1178 = { [nil] = {}, Start = function(L0)

end }
S_o1224 = { [nil] = {}, Start = function(L0)

end }
S_o1270 = { [nil] = {}, Start = function(L0)

end }
S_o1316 = { [nil] = {}, Start = function(L0)

end }
S_o1362 = { [nil] = {}, Start = function(L0)

end }
S_o1408 = { [nil] = {}, Start = function(L0)

end }
S_o1454 = { [nil] = {}, Start = function(L0)

end }
S_o1500 = { [nil] = {}, Start = function(L0)

end }
S_o1546 = { [nil] = {}, Start = function(L0)

end }
S_o1592 = { [nil] = {}, Start = function(L0)

end }
S_o1638 = { [nil] = {}, Start = function(L0)

end }
S_o1684 = { [nil] = {}, Start = function(L0)

end }
S_o1730 = { [nil] = {}, Start = function(L0)

end }
S_o1776 = { [nil] = {}, Start = function(L0)

end }
S_o1822 = { [nil] = {}, Start = function(L0)

end }
o1896 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_1", "/Scenario_Dynamic/Navigation/DockArea")
S_o1897 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1897, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1897, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1897, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o1897, "Code4")
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
S_o1944 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1944, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1944, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1944, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o1944, "Code4")
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
S_o1991 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1991, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1991, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1991, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o1991, "Code4")
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
S_o2038 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2038, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2038, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2038, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2038, "Code4")
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
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area1", "/Scenario_Dynamic/Navigation/Grab_Area1" }, 666666, "Code4")
  else
    CallFunction(o2085, "Code4")
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
S_o2132 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2132, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2132, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2132, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2132, "Code4")
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
S_o2179 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2179, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2179, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2179, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2179, "Code4")
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
S_o2226 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2226, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2226, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2226, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2226, "Code4")
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
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2273, "Code4")
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
S_o2320 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2320, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2320, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2320, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area3", "/Scenario_Dynamic/Navigation/Grab_Area3" }, 666666, "Code4")
  else
    CallFunction(o2320, "Code4")
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
S_o2367 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2367, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2367, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2367, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o2367, "Code4")
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
S_o2414 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2414, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2414, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2414, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o2414, "Code4")
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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o2461, "Code4")
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
S_o2508 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2508, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2508, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2508, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o2508, "Code4")
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
S_o2555 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2555, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2555, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2555, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VehicleGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/Grab_Area4", "/Scenario_Dynamic/Navigation/Grab_Area4" }, 666666, "Code4")
  else
    CallFunction(o2555, "Code4")
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
S_o2602 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "ammo_energy", 1000)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 2)
  Body_AddItem(L0.Node, "torpedo_stanley", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  CallFunction(o2602, "Code9")
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
o2616 = { [nil] = {}, GetCalculated = function()
  if not (o2618.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2616.SetStateValue(o2616.GetCalculated())
end, StartCalculate = function()
  o2616["Value"] = o2616.GetCalculated()
  o2651.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2616.Value == L0) then
    o2616["Value"] = L0
    o2651.ReCalculate()
  end
end }
o2617 = { [nil] = {}, GetCalculated = function()
  if not (o2625.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2617.SetStateValue(o2617.GetCalculated())
end, StartCalculate = function()
  o2617["Value"] = o2617.GetCalculated()
  o2627.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o2617.Value == L0) then
    o2617["Value"] = L0
    o2627.ReCalculate()
    if not (L0 ~= 1) then
      o2617.ChangeTo1()
    end
  end
end }
o2618 = { [nil] = {}, GetCalculated = function()
  if not (o2673.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2720.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2767.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2814.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2861.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2908.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2955.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3002.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3049.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3096.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3143.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3190.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 4) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2618.SetStateValue(o2618.GetCalculated())
end, StartCalculate = function()
  o2618["Value"] = o2618.GetCalculated()
  o2616.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2618.Value == L0) then
    o2618["Value"] = L0
    o2616.ReCalculate()
  end
end }
o2619 = { [nil] = {}, GetCalculated = function()
  if not (o2673.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2720.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2767.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2814.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2861.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2908.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2955.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3002.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3049.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3096.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3143.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3190.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 1) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2619.SetStateValue(o2619.GetCalculated())
end, StartCalculate = function()
  o2619["Value"] = o2619.GetCalculated()
  o2622.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2619.Value == L0) then
    o2619["Value"] = L0
    o2622.ReCalculate()
  end
end }
o2620 = { [nil] = {}, GetCalculated = function()
  if not (o2673.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2720.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2767.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2814.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2861.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2908.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2955.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3002.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3049.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3096.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3143.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3190.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 2) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2620.SetStateValue(o2620.GetCalculated())
end, StartCalculate = function()
  o2620["Value"] = o2620.GetCalculated()
  o2623.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2620.Value == L0) then
    o2620["Value"] = L0
    o2623.ReCalculate()
  end
end }
o2621 = { [nil] = {}, GetCalculated = function()
  if not (o2673.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2720.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2767.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2814.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2861.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2908.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2955.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3002.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3049.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3096.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3143.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3190.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2621.SetStateValue(o2621.GetCalculated())
end, StartCalculate = function()
  o2621["Value"] = o2621.GetCalculated()
  o2624.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2621.Value == L0) then
    o2621["Value"] = L0
    o2624.ReCalculate()
  end
end }
o2622 = { [nil] = {}, GetCalculated = function()
  if not (o2619.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2622.SetStateValue(o2622.GetCalculated())
end, StartCalculate = function()
  o2622["Value"] = o2622.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 0, 2101)
end, SetStateValue = function(L0)
  if not (o2622.Value == L0) then
    o2622["Value"] = L0
    if not (L0 ~= 1) then
      o2622.ChangeTo1()
    end
  end
end }
o2623 = { [nil] = {}, GetCalculated = function()
  if not (o2620.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2623.SetStateValue(o2623.GetCalculated())
end, StartCalculate = function()
  o2623["Value"] = o2623.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 0, 2102)
end, SetStateValue = function(L0)
  if not (o2623.Value == L0) then
    o2623["Value"] = L0
    if not (L0 ~= 1) then
      o2623.ChangeTo1()
    end
  end
end }
o2624 = { [nil] = {}, GetCalculated = function()
  if not (o2621.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2624.SetStateValue(o2624.GetCalculated())
end, StartCalculate = function()
  o2624["Value"] = o2624.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 0, 2103)
end, SetStateValue = function(L0)
  if not (o2624.Value == L0) then
    o2624["Value"] = L0
    if not (L0 ~= 1) then
      o2624.ChangeTo1()
    end
  end
end }
o2625 = { [nil] = {}, GetCalculated = function()
  if not (o2660.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2707.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2754.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2801.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2848.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2895.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2942.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o2989.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3036.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3083.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3130.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o3177.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 9) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2625.SetStateValue(o2625.GetCalculated())
end, StartCalculate = function()
  o2625["Value"] = o2625.GetCalculated()
  o2617.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2625.Value == L0) then
    o2625["Value"] = L0
    o2617.ReCalculate()
  end
end }
o2626 = { [nil] = {}, GetCalculated = function()
  if not (o2660.Value ~= True) then
    if not (o2707.Value ~= True) then
      if not (o2754.Value ~= True) then
        if not (o2801.Value ~= True) then
          if not (o2848.Value ~= True) then
            if not (o2895.Value ~= True) then
              if not (o2942.Value ~= True) then
                if not (o2989.Value ~= True) then
                  if not (o3036.Value ~= True) then
                    if not (o3083.Value ~= True) then
                      if not (o3130.Value ~= True) then
                        if not (o3177.Value ~= True) then
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
end, ReCalculate = function()
  o2626.SetStateValue(o2626.GetCalculated())
end, StartCalculate = function()
  o2626["Value"] = o2626.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 0, 2105)
end, SetStateValue = function(L0)
  if not (o2626.Value == L0) then
    o2626["Value"] = L0
    if not (L0 ~= 1) then
      o2626.ChangeTo1()
    end
  end
end }
o2627 = { [nil] = {}, GetCalculated = function()
  if not (o2617.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2627.SetStateValue(o2627.GetCalculated())
end, StartCalculate = function()
  o2627["Value"] = o2627.GetCalculated()
  o3392.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
end, SetStateValue = function(L0)
  if not (o2627.Value == L0) then
    o2627["Value"] = L0
    o3392.ReCalculate()
    if not (L0 ~= 1) then
      o2627.ChangeTo1()
    end
  end
end }
o2651 = { [nil] = {}, GetCalculated = function()
  if not (o2616.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2651.SetStateValue(o2651.GetCalculated())
end, StartCalculate = function()
  o2651["Value"] = o2651.GetCalculated()
  o3416.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2104)
end, SetStateValue = function(L0)
  if not (o2651.Value == L0) then
    o2651["Value"] = L0
    o3416.ReCalculate()
    if not (L0 ~= 1) then
      o2651.ChangeTo1()
    end
  end
end }
S_o2655 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2655, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2655, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2655, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "Agressive")
  Game_SetWayPoint(GetGameNode(), o3387.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2655, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Frigate2_Path", "pos_6", "pos_2", 1, 1 } }("Code8")
  else
    CallFunction(o2655, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code9")
  else
    CallFunction(o2655, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o2660.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2673.SetStateValue(L1)
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
o2660 = { [nil] = {}, Start = function()
  o2660["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2660.Value == L0) then
    o2660["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2673 = { [nil] = {}, Start = function()
  o2673["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2673.Value == L0) then
    o2673["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2702 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2702, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2702, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2702, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2702, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Frigate2_Path", "pos_9", "pos_2", 1, 1 } }("Code5")
  else
    CallFunction(o2702, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2702, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2707.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2720.SetStateValue(L1)
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
o2707 = { [nil] = {}, Start = function()
  o2707["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2707.Value == L0) then
    o2707["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2720 = { [nil] = {}, Start = function()
  o2720["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2720.Value == L0) then
    o2720["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2749 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2749, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2749, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2749, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2749, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Frigate2_Path", "pos_9", "pos_2", 1, 1 } }("Code5")
  else
    CallFunction(o2749, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2749, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2754.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2767.SetStateValue(L1)
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
o2754 = { [nil] = {}, Start = function()
  o2754["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2754.Value == L0) then
    o2754["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2767 = { [nil] = {}, Start = function()
  o2767["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2767.Value == L0) then
    o2767["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2796 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2796, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2796, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2796, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2796, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Bomber2_Path", "pos_18", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o2796, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2796, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2801.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2814.SetStateValue(L1)
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
o2801 = { [nil] = {}, Start = function()
  o2801["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2801.Value == L0) then
    o2801["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2814 = { [nil] = {}, Start = function()
  o2814["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2814.Value == L0) then
    o2814["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2843 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2843, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2843, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2843, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2843, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/TechBomber_Path", "pos_13", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o2843, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2843, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2848.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2861.SetStateValue(L1)
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
o2848 = { [nil] = {}, Start = function()
  o2848["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2848.Value == L0) then
    o2848["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2861 = { [nil] = {}, Start = function()
  o2861["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2861.Value == L0) then
    o2861["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2890 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2890, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2890, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2890, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2890, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Bomber1_Path", "pos_17", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o2890, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2890, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2895.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2908.SetStateValue(L1)
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
o2895 = { [nil] = {}, Start = function()
  o2895["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2895.Value == L0) then
    o2895["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2908 = { [nil] = {}, Start = function()
  o2908["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2908.Value == L0) then
    o2908["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2937 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2937, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2937, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2937, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2937, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Bomber1_Path", "pos_17", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o2937, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2937, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2942.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2955.SetStateValue(L1)
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
o2942 = { [nil] = {}, Start = function()
  o2942["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2942.Value == L0) then
    o2942["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o2955 = { [nil] = {}, Start = function()
  o2955["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2955.Value == L0) then
    o2955["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o2984 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2984, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2984, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2984, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o2984, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/TechBomber_Path", "pos_18", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o2984, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o2984, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2989.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o3002.SetStateValue(L1)
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
o2989 = { [nil] = {}, Start = function()
  o2989["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2989.Value == L0) then
    o2989["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o3002 = { [nil] = {}, Start = function()
  o3002["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3002.Value == L0) then
    o3002["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o3031 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3031, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3031, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3031, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o3031, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Bomber2_Path", "pos_13", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o3031, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o3031, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3036.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o3049.SetStateValue(L1)
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
o3036 = { [nil] = {}, Start = function()
  o3036["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3036.Value == L0) then
    o3036["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o3049 = { [nil] = {}, Start = function()
  o3049["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3049.Value == L0) then
    o3049["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o3078 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3078, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3078, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3078, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o3078, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Bomber1_Path", "pos_13", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o3078, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o3078, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3083.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o3096.SetStateValue(L1)
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
o3083 = { [nil] = {}, Start = function()
  o3083["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3083.Value == L0) then
    o3083["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o3096 = { [nil] = {}, Start = function()
  o3096["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3096.Value == L0) then
    o3096["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o3125 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3125, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3125, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3125, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o3125, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Bomber2_Path", "pos_18", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o3125, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o3125, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3130.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o3143.SetStateValue(L1)
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
o3130 = { [nil] = {}, Start = function()
  o3130["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3130.Value == L0) then
    o3130["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o3143 = { [nil] = {}, Start = function()
  o3143["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3143.Value == L0) then
    o3143["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o3172 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3172, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3172, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3172, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o3172, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/TechBomber_Path", "pos_18", "pos_5", 1, 2 } }("Code5")
  else
    CallFunction(o3172, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o1896, 0, "Code6")
  else
    CallFunction(o3172, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3177.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o3190.SetStateValue(L1)
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
o3177 = { [nil] = {}, Start = function()
  o3177["Value"] = False
  o2625.StartCalculate()
  o2626.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3177.Value == L0) then
    o3177["Value"] = L0
    o2625.ReCalculate()
    o2626.ReCalculate()
  end
end }
o3190 = { [nil] = {}, Start = function()
  o3190["Value"] = False
  o2618.StartCalculate()
  o2619.StartCalculate()
  o2620.StartCalculate()
  o2621.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3190.Value == L0) then
    o3190["Value"] = L0
    o2618.ReCalculate()
    o2619.ReCalculate()
    o2620.ReCalculate()
    o2621.ReCalculate()
  end
end }
S_o3219 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3219, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3219, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3219, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o3219, "Code4")
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
S_o3275 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3275, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3275, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3275, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_2", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o3275, "Code4")
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
S_o3331 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3331, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3331, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3331, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_3", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o3331, "Code4")
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
S_o3387 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1822.Node)
  CallFunction(o3387, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3392 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (o2627.Value ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
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
end, ReCalculate = function()
  o3392.SetStateValue(o3392.GetCalculated())
end, StartCalculate = function()
  o3392["Value"] = o3392.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3392.Value == L0) then
    o3392["Value"] = L0
    o2.ReCalculate()
  end
end }
o3416 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (o2651.Value == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
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
end, ReCalculate = function()
  o3416.SetStateValue(o3416.GetCalculated())
end, StartCalculate = function()
  o3416["Value"] = o3416.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3416.Value == L0) then
    o3416["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o3420 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 157)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_socket_1/Turm1", S_o260)
  o304 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o304)
  o350 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o350)
  o396 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o396)
  o442 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o442)
  o488 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o488)
  o534 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2x", S_o534)
  o580 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o580)
  o626 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o626)
  o672 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o672)
  o718 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o718)
  o764 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o764)
  o810 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o810)
  o856 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o856)
  o902 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o902)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o948)
  o994 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o994)
  o1040 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o1040)
  o1086 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o1086)
  o1132 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1132)
  o1178 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o1178)
  o1224 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o1224)
  o1270 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1270)
  o1316 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o1316)
  o1362 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o1362)
  o1408 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o1408)
  o1454 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o1454)
  o1500 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_4", S_o1500)
  o1546 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o1546)
  o1592 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o1592)
  o1638 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o1638)
  o1684 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o1684)
  o1730 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o1730)
  o1776 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_4", S_o1776)
  o1822 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o1822)
  o1897 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_1", S_o1897)
  o1944 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_2", S_o1944)
  o1991 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_3", S_o1991)
  o2038 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_4", S_o2038)
  o2085 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_5", S_o2085)
  o2132 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_11", S_o2132)
  o2179 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_12", S_o2179)
  o2226 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_13", S_o2226)
  o2273 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_14", S_o2273)
  o2320 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_15", S_o2320)
  o2367 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_16", S_o2367)
  o2414 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_17", S_o2414)
  o2461 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_18", S_o2461)
  o2508 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_19", S_o2508)
  o2555 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "gen_grab_20", S_o2555)
  o2602 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2602)
  o2655 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_1", S_o2655)
  o2660.Start()
  o2673.Start()
  o2702 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_2", S_o2702)
  o2707.Start()
  o2720.Start()
  o2749 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_3", S_o2749)
  o2754.Start()
  o2767.Start()
  o2796 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_buggy_4", S_o2796)
  o2801.Start()
  o2814.Start()
  o2843 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_torpedobuggy_1", S_o2843)
  o2848.Start()
  o2861.Start()
  o2890 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_torpedobuggy_2", S_o2890)
  o2895.Start()
  o2908.Start()
  o2937 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_torpedobuggy_3", S_o2937)
  o2942.Start()
  o2955.Start()
  o2984 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_torpedobuggy_4", S_o2984)
  o2989.Start()
  o3002.Start()
  o3031 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_1", S_o3031)
  o3036.Start()
  o3049.Start()
  o3078 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_2", S_o3078)
  o3083.Start()
  o3096.Start()
  o3125 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_3", S_o3125)
  o3130.Start()
  o3143.Start()
  o3172 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_4", S_o3172)
  o3177.Start()
  o3190.Start()
  o3219 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_1", S_o3219)
  o3275 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_2", S_o3275)
  o3331 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_3", S_o3331)
  o3387 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o3387)
  o3420 = BindEasy(Node_Find("/"), "Camera", S_o3420)
  Game_LoadProgress_Leave(Node_Find("/"))
end
