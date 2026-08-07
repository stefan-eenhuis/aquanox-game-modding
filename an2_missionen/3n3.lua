-- dekompiliert aus 3n3.sco
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
  Terrain_LoadTerrain(node1, "map/3N3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3N3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3N3/Lmsh/", "map/3N3/Ltex/")
  Game_SetTerrainDepth(node0, 1036)
  Game_SetDecompressionHeight(node0, 550)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.105882, 0.117647, 0.082353)
  Game_SetParallelLightT(node0, 0.286275, 0.313725, 0.223529)
  Game_SetParallelLightB(node0, 0.105882, 0.117647, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3n3.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3N3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit1.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/3N3/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "gen_shelter_docking_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(596.040155, 2997.521176, 55.286557), MAT_Vector3(88.190857, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(683.623758, 2952.345873, 39.713691), MAT_Vector3(87.533332, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(683.300009, 2982.422039, 39.71369), MAT_Vector3(87.53333, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_gangway02_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(685.785846, 2974.05607, 70.057848), MAT_Vector3(87.41468, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "ent_dock4_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(783.742115, 3017.808431, 32.854505), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/ent/ent_dock4.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1842.216, 2891.22, 252.4642), MAT_Vector3(0, 0.25, 1))
  Node_ParseIniFile(node13, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2422.481, 2857.221, 210.1718), MAT_Vector3(0, 2, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(938.2975, 2534.095, 277.2637), MAT_Vector3(0, 2, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_stab1_5")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(2921.448, 2626.609, 301.5844), MAT_Vector3(0, -2, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "SpStern_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(635.2062, 3028.362, 712.4882), MAT_Vector3(-34.406972, 0, 0))
  Node_ParseIniFile(node17, "osd/ent/ent_jumpstar.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2967.31, 2569.039, 308.4564), MAT_Vector3(-90.3798, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(2908.488, 2512.563, 301.5476), MAT_Vector3(0, 0.5, 1))
  Node_ParseIniFile(node19, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_fx_sky", "fx_sky_3N3_1")
  Node_AddSon(node7, node20)
  Node_ParseIniFile(node20, "osd/fx_sky/fx_sky_3N3.osd")
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_fx_rays", "fx_rays_3N3_1")
  Node_AddSon(node7, node21)
  Node_ParseIniFile(node21, "osd/fx_rays/fx_rays_3N3.osd")
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_fx_flare", "fx_flare_3N3_1")
  Node_AddSon(node7, node22)
  Node_ParseIniFile(node22, "osd/fx_flare/fx_flare_3N3.osd")
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_l_1")
  Node_AddSon(node7, node23)
  Node_ParseIniFile(node23, "osd/fx_plankton/fx_plankton_green_l.osd")
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3104.621282, 982.331821, 125.762862), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3664.811386, 1077.069933, 187.320956), MAT_Vector3(-13.836599, 32.667168, -60.097912))
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
  Body_SetCS(node26, MAT_Vector3(3488.172708, 1384.171847, 36.75836), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node27, MAT_Vector3(1887.705062, 1680.477138, 305.598191), MAT_Vector3(-7.07176, 2.557363, 7.285914))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3185.394501, 975.394338, 89.22803), MAT_Vector3(8.58834, 4.181402, 2.748703))
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
  Body_SetCS(node29, MAT_Vector3(3521.034957, 1052.786799, 180.933706), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node30, MAT_Vector3(1875.298975, 1511.447352, 285.337088), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(3225.407809, 1020.445132, 85.196026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(3590.235469, 1063.18881, 167.580967), MAT_Vector3(26.076776, 0, 0))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3454.004079, 1289.249591, 45.071095), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1888.314974, 1468.511735, 287.810774), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2499.864615, 1784.131762, 276.448226), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2507.608432, 1792.729221, 319.970975), MAT_Vector3(8.399935, 33.155377, 3.223838))
  Node_ParseIniFile(node36, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2506.277088, 1787.385668, 352.989421), MAT_Vector3(-140.955034, 0, 0))
  Node_ParseIniFile(node37, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2492.569974, 1782.989171, 330.116834), MAT_Vector3(37.167943, -7.284316, -51.89399))
  Node_ParseIniFile(node38, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2513.312885, 1787.873821, 339.357682), MAT_Vector3(105.132605, -21.873752, -169.48228))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2470.409993, 1769.096641, 259.757863), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(2487.819199, 1841.256348, 358.53728), MAT_Vector3(-76.401316, -48.267795, 82.913443))
  Node_ParseIniFile(node41, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2483.030283, 1840.541947, 363.706246), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node42, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2491.309865, 1843.989064, 363.115469), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node43, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_pole2_4")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2482.826232, 1838.671815, 356.321985), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node44, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_pole2_5")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2484.495741, 1838.76458, 354.3803), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node45, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_pole2_6")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2486.920712, 1840.116427, 353.368278), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node46, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "gen_pole2_7")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2489.246894, 1842.259426, 352.388992), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node47, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "gen_pole2_8")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(2491.408402, 1843.724545, 353.387508), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node48, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "gen_pole2_9")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2493.216132, 1844.271968, 355.316475), MAT_Vector3(-76.40132, -48.2678, 82.91344))
  Node_ParseIniFile(node49, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node50)
  Node_ParseIniFile(node50, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node50, "map/3N3/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node51)
  Node_ParseIniFile(node51, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node51, "map/3N3/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node52)
  Node_ParseIniFile(node52, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node52, "map/3N3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node53)
  Node_ParseIniFile(node53, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node53, "map/3N3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node54)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node54, node55)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node54, node56)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node56, node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node57, node58)
  Position_SetPosition(node58, MAT_Vector3(651.469651, 3018.285346, 800))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node57, node59)
  Position_SetPosition(node59, MAT_Vector3(1164.471761, 3267.363921, 800))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node57, node60)
  Position_SetPosition(node60, MAT_Vector3(1694.031829, 2741.286577, 218.787138))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node57, node61)
  Position_SetPosition(node61, MAT_Vector3(678.107607, 2473.930211, 494.342241))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node56, node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node62, node63)
  Position_SetPosition(node63, MAT_Vector3(433.887792, 2965.809558, 550))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node62, node64)
  Position_SetPosition(node64, MAT_Vector3(93.355936, 2676.873438, 550))
  Position_SetRadius(node64, 5)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node62, node65)
  Position_SetPosition(node65, MAT_Vector3(797.484815, 2242.352127, 550))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Path", "FreemanPath_1")
  Node_AddSon(node56, node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node66, node67)
  Position_SetPosition(node67, MAT_Vector3(3056.555844, 1812.897912, 194.397187))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node66, node68)
  Position_SetPosition(node68, MAT_Vector3(3088.875271, 2045.452993, 116.49793))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node66, node69)
  Position_SetPosition(node69, MAT_Vector3(3222.633821, 2324.796643, 202.131725))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node66, node70)
  Position_SetPosition(node70, MAT_Vector3(3278.345955, 2362.608184, 84.817062))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Path", "FreemanPath_2")
  Node_AddSon(node56, node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node71, node72)
  Position_SetPosition(node72, MAT_Vector3(3285.549107, 2430.991916, 156.96874))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node71, node73)
  Position_SetPosition(node73, MAT_Vector3(3261.987219, 2584.664406, 179.073119))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node71, node74)
  Position_SetPosition(node74, MAT_Vector3(3144.283361, 2658.238813, 144.739974))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node71, node75)
  Position_SetPosition(node75, MAT_Vector3(3086.335753, 2810.510421, 138.282542))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node71, node76)
  Position_SetPosition(node76, MAT_Vector3(2971.405191, 2867.747689, 155.323418))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node71, node77)
  Position_SetPosition(node77, MAT_Vector3(2857.280054, 2953.843023, 126.484679))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node71, node78)
  Position_SetPosition(node78, MAT_Vector3(2573.596361, 2874.460587, 170.416168))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node71, node79)
  Position_SetPosition(node79, MAT_Vector3(2330.161883, 3058.493543, 147.645232))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node71, node80)
  Position_SetPosition(node80, MAT_Vector3(2241.314583, 3166.233613, 193.009699))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node71, node81)
  Position_SetPosition(node81, MAT_Vector3(2154.932253, 3165.21665, 196.928826))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node71, node82)
  Position_SetPosition(node82, MAT_Vector3(2063.675168, 3163.609964, 196.9288))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_PatrolArea", "FreemanFight_PatrolArea")
  Node_AddSon(node56, node83)
  PatrolArea_SetPosition(node83, MAT_Vector3(2026.255222, 3171.660681, 241.181359))
  PatrolArea_SetRadius(node83, 100)
  PatrolArea_SetMinZ(node83, 0)
  PatrolArea_SetMaxZ(node83, 100)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_PatrolArea", "FreemanFight_TriggerArea")
  Node_AddSon(node56, node84)
  PatrolArea_SetPosition(node84, MAT_Vector3(2120.7507, 3048.287113, 150))
  PatrolArea_SetRadius(node84, 500)
  PatrolArea_SetMinZ(node84, -140)
  PatrolArea_SetMaxZ(node84, 410)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_PatrolArea", "FreemanFight_FollowArea")
  Node_AddSon(node56, node85)
  PatrolArea_SetPosition(node85, MAT_Vector3(2120.751, 3048.287, 150))
  PatrolArea_SetRadius(node85, 700)
  PatrolArea_SetMinZ(node85, -140)
  PatrolArea_SetMaxZ(node85, 390)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Path", "DM_JumpstarXX_ApproachPath")
  Node_AddSon(node56, node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node86, node87)
  Position_SetPosition(node87, MAT_Vector3(1073.69903, 2987.704716, 168.222316))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node86, node88)
  Position_SetPosition(node88, MAT_Vector3(924.011356, 3011.917626, 224))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Path", "DM_JumpstarXX_DockPath")
  Node_AddSon(node56, node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node89, node90)
  Position_SetPosition(node90, MAT_Vector3(873.702089, 3015.376569, 224))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node89, node91)
  Position_SetPosition(node91, MAT_Vector3(821.437314, 3015.573831, 224))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_PatrolArea", "DM_JumpstarXX_Area")
  Node_AddSon(node56, node92)
  PatrolArea_SetPosition(node92, MAT_Vector3(932.914237, 2867.714406, 200))
  PatrolArea_SetRadius(node92, 128)
  PatrolArea_SetMinZ(node92, -25)
  PatrolArea_SetMaxZ(node92, 25)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Path", "FreemanPath_ToJumpstar")
  Node_AddSon(node56, node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(1981.825543, 3104.108334, 164.231632))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node93, node95)
  Position_SetPosition(node95, MAT_Vector3(1712.405028, 3105.1526, 158.676856))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node93, node96)
  Position_SetPosition(node96, MAT_Vector3(1626.775252, 3158.410143, 152.571673))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node93, node97)
  Position_SetPosition(node97, MAT_Vector3(1569.340646, 3217.93328, 183.710002))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node93, node98)
  Position_SetPosition(node98, MAT_Vector3(1464.91409, 3174.074127, 139.083339))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node93, node99)
  Position_SetPosition(node99, MAT_Vector3(1279.034821, 3187.649579, 175.227005))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node93, node100)
  Position_SetPosition(node100, MAT_Vector3(1215.334621, 3149.011753, 171.059357))
  Position_SetRadius(node100, 5)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node93, node101)
  Position_SetPosition(node101, MAT_Vector3(1199.670638, 3056.072118, 161.317327))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node93, node102)
  Position_SetPosition(node102, MAT_Vector3(1128.66058, 3016.390027, 103.797632))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node54, node103)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node54, node104)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node104, node105)
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetCS(node105, MAT_Vector3(3173.754518, 2293.430659, 116.980074), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node105, 120, 120, 120)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Trigger", "tBonus1")
  Node_AddSon(node104, node106)
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetPosition(node106, MAT_Vector3(3313.276691, 521.638147, 91.868226))
  Trigger_SetPresenceSphere(node106, 400)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Trigger", "tBonus2")
  Node_AddSon(node104, node107)
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetPosition(node107, MAT_Vector3(366.772174, 1010.194742, 480.90855))
  Trigger_SetPresenceSphere(node107, 300)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node54, node108)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node108, node109)
  Body_SetCS(node109, MAT_Vector3(3532.193756, 1775.024537, 136.854822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/pla/pla_ship2.osd")
  Body_SetFriendOrFoeID(node109, 3)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node108, node110)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "ent_scout_1")
  Node_AddSon(node110, node111)
  Body_SetCS(node111, MAT_Vector3(626.511872, 2601.199693, 800), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/ent/ent_scout_wide.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "ent_bomber_1")
  Node_AddSon(node110, node112)
  Body_SetCS(node112, MAT_Vector3(942.965717, 2353.540161, 550), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "ent_jumpship_1")
  Node_AddSon(node108, node113)
  Body_SetCS(node113, MAT_Vector3(363.845971, 3506.3671, 770.322474), MAT_Vector3(-150.635797, 0, 0))
  Node_ParseIniFile(node113, "osd/ent/ent_jumpship.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node108, node114)
  Body_SetPosition(node114, MAT_Vector3(3302.577941, 2364.253429, 105.075257))
  WayPoint_SetRadius(node114, 100)
  Node_ParseIniFile(node114, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_waypoint", "nav_follow_1")
  Node_AddSon(node108, node115)
  Body_SetPosition(node115, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node115, 5)
  Node_ParseIniFile(node115, "osd/nav/nav_follow.osd")
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "gen_freeman_1")
  Node_AddSon(node108, node116)
  Body_SetCS(node116, MAT_Vector3(3052.008503, 1773.314365, 141.215671), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_freeman_narrow.osd")
  Body_SetFriendOrFoeID(node116, 3)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node108, node117)
  Body_SetCS(node117, MAT_Vector3(2031.647106, 2994.385628, 195.047532), MAT_Vector3(4.734711, 0, 0))
  Node_ParseIniFile(node117, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node117, 1)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "atl_scout2_2")
  Node_AddSon(node108, node118)
  Body_SetCS(node118, MAT_Vector3(1940.09717, 3009.501551, 195.0475), MAT_Vector3(-59.168213, 0, 0))
  Node_ParseIniFile(node118, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node118, 1)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node108, node119)
  Body_SetCS(node119, MAT_Vector3(1930.115929, 3172.883784, 195.0475), MAT_Vector3(-97.382367, 0, 0))
  Node_ParseIniFile(node119, "osd/atl/atl_scout1_narrow.osd")
  Body_SetFriendOrFoeID(node119, 1)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_trash", "gen_clunker_freighter_bonus1")
  Node_AddSon(node108, node120)
  Body_SetCS(node120, MAT_Vector3(3311.224719, 518.487589, 133.357559), MAT_Vector3(-9.395449, -1.700177, 5.470536))
  Node_ParseIniFile(node120, "osd/gen/gen_clunker_freighter.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_trash", "gen_clunker_freighter_bonus2")
  Node_AddSon(node108, node121)
  Body_SetCS(node121, MAT_Vector3(368.41912, 1011.587279, 551.189236), MAT_Vector3(-139.092329, -1.892965, -6.639493))
  Node_ParseIniFile(node121, "osd/gen/gen_clunker_freighter.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node122)
  Camera_SetBackPlane(node122, 1024)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node123)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node123, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node123, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Path", "PlaPath_1")
  Node_AddSon(node125, node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node126, node127)
  Position_SetPosition(node127, MAT_Vector3(3600.814666, 1385.567971, 140.940626))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node126, node128)
  Position_SetPosition(node128, MAT_Vector3(3593.87435, 1609.143112, 158.723786))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node125, node129)
  Position_SetPosition(node129, MAT_Vector3(3594.759002, 1439.983382, 121.972811))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node123, node130)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node130, node131)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node123, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node123, node133)
  Node_EnterSimulation(node133)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, E)
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
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, E)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
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
SetEnemyMatrixElement(3, 3, F)
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
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (o1825.Value ~= True) then
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
                                                                              if not (o1849.Value == True) then
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
o1778 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/DM_JumpstarXX_ApproachPath", "/Scenario_Dynamic/Navigation/DM_JumpstarXX_DockPath", "/Scenario_Dynamic/Navigation/DM_JumpstarXX_Area")
S_o1779 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1779, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1779, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1779, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_freeman", "", "", "", False, False, True)
  CallFunction(o1779, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1779, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1779, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1784.SetStateValue(L1)
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
o1784 = { [nil] = {}, Start = function()
  o1784["Value"] = False
  o1812.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1784.Value == L0) then
    o1784["Value"] = L0
    o1812.ReCalculate()
  end
end }
S_o1785 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1785, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1785, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1785, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1785, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1785, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1785, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1790.SetStateValue(L1)
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
o1790 = { [nil] = {}, Start = function()
  o1790["Value"] = False
  o1816.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1790.Value == L0) then
    o1790["Value"] = L0
    o1816.ReCalculate()
  end
end }
S_o1791 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1791, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1791, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1791, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o1791, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1791, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1791, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o1796.SetStateValue(L1)
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
o1796 = { [nil] = {}, Start = function()
  o1796["Value"] = False
  o1817.StartCalculate()
  o1818.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1796.Value == L0) then
    o1796["Value"] = L0
    o1817.ReCalculate()
    o1818.ReCalculate()
  end
end }
S_o1797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_tigershark", 2)
  Body_AddItem(L0.Node, "torpedo_flashshark", 1)
  Body_AddItem(L0.Node, "torpedo_stanley", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "device_repair2", 1)
  CallFunction(o1797, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
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
o1811 = { [nil] = {}, GetCalculated = function()
  if not (o2020.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1811.SetStateValue(o1811.GetCalculated())
end, StartCalculate = function()
  o1811["Value"] = o1811.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1797.Node, o1797.Node, 314)
end, SetStateValue = function(L0)
  if not (o1811.Value == L0) then
    DelayedFunction(0.5, o1811, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1811.Value == L0) then
    o1811["Value"] = L0
    if not (L0 ~= 1) then
      o1811.ChangeTo1()
    end
  end
end }
o1812 = { [nil] = {}, GetCalculated = function()
  if not (o1784.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1812.SetStateValue(o1812.GetCalculated())
end, StartCalculate = function()
  o1812["Value"] = o1812.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2027.Node, o1797.Node, 315)
  SendRadioMessageTake(o1797.Node, o1797.Node, 319)
  SendRadioMessageTake(o2027.Node, o1797.Node, 317)
  SendRadioMessageTake(o1797.Node, o1797.Node, 316)
  SendRadioMessageTake(o2027.Node, o1797.Node, 322)
  SendRadioMessageTake(o1797.Node, o1797.Node, 757)
  SendRadioMessageTake(o2027.Node, o1797.Node, 320)
  SendRadioMessageTake(o1797.Node, o1797.Node, 321)
  SendRadioMessageTake(o1797.Node, o1797.Node, 758)
end, SetStateValue = function(L0)
  if not (o1812.Value == L0) then
    o1812["Value"] = L0
    if not (L0 ~= 1) then
      o1812.ChangeTo1()
    end
  end
end }
o1813 = { [nil] = {}, Start = function()
  o1813["Value"] = False
  o2091.StartCalculate()
  o2148.StartCalculate()
  o2205.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1813.Value == L0) then
    o1813["Value"] = L0
    o2091.ReCalculate()
    o2148.ReCalculate()
    o2205.ReCalculate()
  end
end }
o1814 = { [nil] = {}, GetCalculated = function()
  if not (o2059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1814.SetStateValue(o1814.GetCalculated())
end, StartCalculate = function()
  o1814["Value"] = o1814.GetCalculated()
  o1825.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SendRadioMessageTake(o1797.Node, o1797.Node, 334)
end, SetStateValue = function(L0)
  if not (o1814.Value == L0) then
    o1814["Value"] = L0
    o1825.ReCalculate()
    if not (L0 ~= 1) then
      o1814.ChangeTo1()
    end
  end
end }
o1815 = { [nil] = {}, GetCalculated = function()
  if not (o2262.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1815.SetStateValue(o1815.GetCalculated())
end, StartCalculate = function()
  o1815["Value"] = o1815.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o1815.Value == L0) then
    o1815["Value"] = L0
    if not (L0 ~= 1) then
      o1815.ChangeTo1()
    end
  end
end }
o1816 = { [nil] = {}, GetCalculated = function()
  if not (o1790.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1816.SetStateValue(o1816.GetCalculated())
end, StartCalculate = function()
  o1816["Value"] = o1816.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2103)
  SendRadioMessageTake(o1797.Node, o1797.Node, 743)
end, SetStateValue = function(L0)
  if not (o1816.Value == L0) then
    o1816["Value"] = L0
    if not (L0 ~= 1) then
      o1816.ChangeTo1()
    end
  end
end }
o1817 = { [nil] = {}, GetCalculated = function()
  if not (o1796.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1817.SetStateValue(o1817.GetCalculated())
end, StartCalculate = function()
  o1817["Value"] = o1817.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o1817.Value == L0) then
    o1817["Value"] = L0
    if not (L0 ~= 1) then
      o1817.ChangeTo1()
    end
  end
end }
o1818 = { [nil] = {}, GetCalculated = function()
  if not (o1796.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1818.SetStateValue(o1818.GetCalculated())
end, StartCalculate = function()
  o1818["Value"] = o1818.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2104)
end, SetStateValue = function(L0)
  if not (o1818.Value == L0) then
    o1818["Value"] = L0
    if not (L0 ~= 1) then
      o1818.ChangeTo1()
    end
  end
end }
o1819 = { [nil] = {}, GetCalculated = function()
  if not (o2099.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1819.SetStateValue(o1819.GetCalculated())
end, StartCalculate = function()
  o1819["Value"] = o1819.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2027.Node, o1797.Node, 329)
end, SetStateValue = function(L0)
  if not (o1819.Value == L0) then
    o1819["Value"] = L0
    if not (L0 ~= 1) then
      o1819.ChangeTo1()
    end
  end
end }
o1820 = { [nil] = {}, GetCalculated = function()
  if not (o2043.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1820.SetStateValue(o1820.GetCalculated())
end, StartCalculate = function()
  o1820["Value"] = o1820.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2027.Node, o1797.Node, 330)
end, SetStateValue = function(L0)
  if not (o1820.Value == L0) then
    o1820["Value"] = L0
    if not (L0 ~= 1) then
      o1820.ChangeTo1()
    end
  end
end }
o1821 = { [nil] = {}, GetCalculated = function()
  if not (o2044.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1821.SetStateValue(o1821.GetCalculated())
end, StartCalculate = function()
  o1821["Value"] = o1821.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2027.Node, o1797.Node, 331)
end, SetStateValue = function(L0)
  if not (o1821.Value == L0) then
    o1821["Value"] = L0
    if not (L0 ~= 1) then
      o1821.ChangeTo1()
    end
  end
end }
o1822 = { [nil] = {}, GetCalculated = function()
  if not (o2037.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1822.SetStateValue(o1822.GetCalculated())
end, StartCalculate = function()
  o1822["Value"] = o1822.GetCalculated()
  o1823.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1797.Node, o1797.Node, 332)
end, SetStateValue = function(L0)
  if not (o1822.Value == L0) then
    DelayedFunction(1, o1822, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1822.Value == L0) then
    o1822["Value"] = L0
    o1823.ReCalculate()
    if not (L0 ~= 1) then
      o1822.ChangeTo1()
    end
  end
end }
o1823 = { [nil] = {}, GetCalculated = function()
  if not (o1822.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1823.SetStateValue(o1823.GetCalculated())
end, StartCalculate = function()
  o1823["Value"] = o1823.GetCalculated()
  o1849.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2101)
end, SetStateValue = function(L0)
  if not (o1823.Value == L0) then
    DelayedFunction(2, o1823, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1823.Value == L0) then
    o1823["Value"] = L0
    o1849.ReCalculate()
    if not (L0 ~= 1) then
      o1823.ChangeTo1()
    end
  end
end }
o1824 = { [nil] = {}, GetCalculated = function()
  if not (o2104.Value ~= True) then
    if not (o2161.Value ~= True) then
      if not (o2218.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1824.SetStateValue(o1824.GetCalculated())
end, StartCalculate = function()
  o1824["Value"] = o1824.GetCalculated()
  o2031.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o1824.Value == L0) then
    DelayedFunction(2, o1824, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1824.Value == L0) then
    o1824["Value"] = L0
    o2031.ReCalculate()
    if not (L0 ~= 1) then
      o1824.ChangeTo1()
    end
  end
end }
o1825 = { [nil] = {}, GetCalculated = function()
  if not (o1814.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1825.SetStateValue(o1825.GetCalculated())
end, StartCalculate = function()
  o1825["Value"] = o1825.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1825.Value == L0) then
    o1825["Value"] = L0
    o2.ReCalculate()
  end
end }
o1849 = { [nil] = {}, GetCalculated = function()
  if not (o1823.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1849.SetStateValue(o1849.GetCalculated())
end, StartCalculate = function()
  o1849["Value"] = o1849.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1849.Value == L0) then
    o1849["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o1853 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o1853, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_1", 1, 1 } }("Code2")
  else
    CallFunction(o1853, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o1853, "Code1")
  else
    CallFunction(o1853, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1908 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code1")
  else
    CallFunction(o1908, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Path_2", 1, 1 } }("Code2")
  else
    CallFunction(o1908, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o1908, "Code1")
  else
    CallFunction(o1908, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1963 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1963, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2017 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2017, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2020.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2020 = { [nil] = {}, Start = function()
  o2020["Value"] = False
  o1811.StartCalculate()
  o2034.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2020.Value == L0) then
    o2020["Value"] = L0
    o1811.ReCalculate()
    o2034.ReCalculate()
  end
end }
S_o2022 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2027.Node)
  CallFunction(o2022, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2027 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2027, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2027, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2027, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o2027, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreemanPath_1", 1, 1 } }("Code5")
  else
    CallFunction(o2027, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Game_SetWayPoint(GetGameNode(), o2022.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  CallFunction(o2027, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreemanPath_2", 1, 1 } }("Code8")
  else
    CallFunction(o2027, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o2088.Node, o1797.Node, 323)
  SendRadioMessageTake(o2027.Node, o1797.Node, 324)
  SendRadioMessageTake(o2088.Node, o1797.Node, 325)
  CallFunction(o2027, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 17 } }("Code12")
  else
    CallFunction(o2027, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  o1813.SetStateValue(True)
  SED_SetTaskTextKey(2102, -1, -1)
  SendRadioMessageTake(o1797.Node, o1797.Node, 327)
  CallFunction(o2027, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FreemanFight_TriggerArea", "/Scenario_Dynamic/Navigation/FreemanFight_TriggerArea", "/Scenario_Dynamic/Navigation/FreemanFight_TriggerArea", "E", "", "", "", 1, "Code16")
  else
    CallFunction(o2027, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  SendRadioMessageTake(o1797.Node, o1797.Node, 328)
  SED_SetTaskTextKey(2101, -1, -1)
  CallFunction(o2027, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreemanPath_ToJumpstar", 1, 1 } }("Code19")
  else
    CallFunction(o2027, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o2027.Node, o1797.Node, 333)
  CallFunction(o2027, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1778, nil, 0, "Code21")
  else
    CallFunction(o2027, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, SetStateValue_Destroyed = function(L0, L1)
  o2037.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o2043.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o2044.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o2059.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2034.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o2031.Value ~= True) then
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
o2031 = { [nil] = {}, GetCalculated = function()
  if not (o1824.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2031.SetStateValue(o2031.GetCalculated())
end, StartCalculate = function()
  o2031["Value"] = o2031.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2031.Value == L0) then
    DelayedFunction(10, o2031, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2031.Value == L0) then
    o2031["Value"] = L0
    CallFunction(o2027, "ProcesseStateChange")
  end
end }
o2034 = { [nil] = {}, GetCalculated = function()
  if not (o2020.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2034.SetStateValue(o2034.GetCalculated())
end, StartCalculate = function()
  o2034["Value"] = o2034.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2034.Value == L0) then
    o2034["Value"] = L0
    CallFunction(o2027, "ProcesseStateChange")
  end
end }
o2037 = { [nil] = {}, Start = function()
  o2037["Value"] = False
  o1822.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2037.Value == L0) then
    o2037["Value"] = L0
    o1822.ReCalculate()
  end
end }
o2043 = { [nil] = {}, Start = function()
  o2043["Value"] = False
  o1820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2043.Value == L0) then
    o2043["Value"] = L0
    o1820.ReCalculate()
  end
end }
o2044 = { [nil] = {}, Start = function()
  o2044["Value"] = False
  o1821.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2044.Value == L0) then
    o2044["Value"] = L0
    o1821.ReCalculate()
  end
end }
o2059 = { [nil] = {}, Start = function()
  o2059["Value"] = False
  o1814.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2059.Value == L0) then
    o2059["Value"] = L0
    o1814.ReCalculate()
  end
end }
S_o2088 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2088, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2088, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2088, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2088, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2088, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2088, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_PlayMusic(GetGameNode(), "Agressive")
  SetEnemyMatrixElement(1, 3, E)
  SetEnemyMatrixElement(3, 1, E)
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2088, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FreemanFight_PatrolArea", "/Scenario_Dynamic/Navigation/FreemanFight_TriggerArea", "/Scenario_Dynamic/Navigation/FreemanFight_FollowArea", "E", "", "", "", 1, "Code11")
  else
    CallFunction(o2088, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_KineticShield75 = function(L0, L1)
  o2099.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o2104.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2091.Value ~= True) then
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
o2091 = { [nil] = {}, GetCalculated = function()
  if not (o1813.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2091.SetStateValue(o2091.GetCalculated())
end, StartCalculate = function()
  o2091["Value"] = o2091.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2091.Value == L0) then
    o2091["Value"] = L0
    CallFunction(o2088, "ProcesseStateChange")
  end
end }
o2099 = { [nil] = {}, Start = function()
  o2099["Value"] = False
  o1819.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2099.Value == L0) then
    o2099["Value"] = L0
    o1819.ReCalculate()
  end
end }
o2104 = { [nil] = {}, Start = function()
  o2104["Value"] = False
  o1824.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2104.Value == L0) then
    o2104["Value"] = L0
    o1824.ReCalculate()
  end
end }
S_o2145 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2145, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2145, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2145, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2145, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2145, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2145, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2145, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FreemanFight_PatrolArea", "/Scenario_Dynamic/Navigation/FreemanFight_TriggerArea", "/Scenario_Dynamic/Navigation/FreemanFight_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o2145, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DestEmp = function(L0, L1)
  o2161.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2148.Value ~= True) then
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
o2148 = { [nil] = {}, GetCalculated = function()
  if not (o1813.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2148.SetStateValue(o2148.GetCalculated())
end, StartCalculate = function()
  o2148["Value"] = o2148.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2148.Value == L0) then
    o2148["Value"] = L0
    CallFunction(o2145, "ProcesseStateChange")
  end
end }
o2161 = { [nil] = {}, Start = function()
  o2161["Value"] = False
  o1824.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2161.Value == L0) then
    o2161["Value"] = L0
    o1824.ReCalculate()
  end
end }
S_o2202 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2202, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2202, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2202, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o2202, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o2202, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2202, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o2202, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FreemanFight_PatrolArea", "/Scenario_Dynamic/Navigation/FreemanFight_TriggerArea", "/Scenario_Dynamic/Navigation/FreemanFight_FollowArea", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o2202, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DestEmp = function(L0, L1)
  o2218.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o2205.Value ~= True) then
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
o2205 = { [nil] = {}, GetCalculated = function()
  if not (o1813.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2205.SetStateValue(o2205.GetCalculated())
end, StartCalculate = function()
  o2205["Value"] = o2205.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2205.Value == L0) then
    o2205["Value"] = L0
    CallFunction(o2202, "ProcesseStateChange")
  end
end }
o2218 = { [nil] = {}, Start = function()
  o2218["Value"] = False
  o1824.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2218.Value == L0) then
    o2218["Value"] = L0
    o1824.ReCalculate()
  end
end }
S_o2259 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2259, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2259, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2259, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.878647)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2259, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o2262.SetStateValue(L1)
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
o2262 = { [nil] = {}, Start = function()
  o2262["Value"] = False
  o1815.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2262.Value == L0) then
    o2262["Value"] = L0
    o1815.ReCalculate()
  end
end }
S_o2301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2301, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2301, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2301, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetKineticShield(L0.Node, 0, 0.878647)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o2301, "Code5")
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
S_o2343 = { [nil] = {}, Start = function(L0)

end }
o2344 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o2346 = { [nil] = {}, Start = function(L0)

end }
S_o2347 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o2347, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o2347, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.75, "MMMN", 0)
  FormationLib.PlaceFormationPath(o2345, o2344, "/InGameSequences/Navigation/PlaPath_1")
  CallFunction(o2347, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2345, o2344, "/InGameSequences/Navigation/PlaPath_1", "pos_1", "pos_2", 1, 1, "Code10")
  else
    CallFunction(o2347, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  CallFunction(o2347, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o2347, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SendRadioMessageTake(o1797.Node, o1797.Node, 313)
  Game_SetWayPoint(GetGameNode(), o2017.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o2347, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 133)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangway02_1", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock4_1", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_5", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "SpStern_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_4", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_5", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_6", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_7", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_8", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_9", S_o1732)
  o1779 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o1779)
  o1784.Start()
  o1785 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tBonus1", S_o1785)
  o1790.Start()
  o1791 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tBonus2", S_o1791)
  o1796.Start()
  o1797 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1797)
  o1813.Start()
  o1853 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_scout_1", S_o1853)
  o1908 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "ent_bomber_1", S_o1908)
  o1963 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_jumpship_1", S_o1963)
  o2017 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o2017)
  o2020.Start()
  o2022 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_follow_1", S_o2022)
  o2027 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freeman_1", S_o2027)
  o2037.Start()
  o2043.Start()
  o2044.Start()
  o2059.Start()
  o2088 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_1", S_o2088)
  o2099.Start()
  o2104.Start()
  o2145 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_2", S_o2145)
  o2161.Start()
  o2202 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout1_1", S_o2202)
  o2218.Start()
  o2259 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker_freighter_bonus1", S_o2259)
  o2262.Start()
  o2301 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_clunker_freighter_bonus2", S_o2301)
  o2343 = BindEasy(Node_Find("/"), "Camera", S_o2343)
  o2346 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o2346)
  o2347 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o2347)
  o2345 = { {}, o1797 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
