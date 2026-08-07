-- dekompiliert aus fightclub.sco
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
  Terrain_LoadTerrain(node1, "map/3B1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/instant-boss/fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3B1/Lmsh/", "map/3B1/Ltex/")
  Game_SetTerrainDepth(node0, 4564)
  Game_SetDecompressionHeight(node0, 350)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.090196, 0.109804, 0.047059)
  Game_SetParallelLightT(node0, 0.180392, 0.219608, 0.094118)
  Game_SetParallelLightB(node0, 0.180392, 0.219608, 0.094118)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_instant-boss.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient2.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/3B1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_fx_rays", "fx_rays_1H1_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_rays/fx_rays_1H1.osd")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_l_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_plankton/fx_plankton_green_l.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_sky", "demo_green_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_sky/demo_green.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_flare", "fx_flare01_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_flare/fx_flare01.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_beacon_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2912.280564, 2675.598206, 192.772123), MAT_Vector3(81.144833, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node12, 2)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_beacon_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2700.983741, 2537.362333, 226.892105), MAT_Vector3(-33.759692, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node13, 2)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2901.797708, 2284.088327, 280.88462), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node14, 2)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_beacon_3")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3085.968048, 1813.906534, 257.085107), MAT_Vector3(136.712562, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node15, 2)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_beacon_4")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3151.920978, 759.370072, 269.613809), MAT_Vector3(89.769968, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node16, 2)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_beacon_5")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3154.463641, 612.192953, 271.129103), MAT_Vector3(90.450143, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_beacon.osd")
  Body_SetFriendOrFoeID(node17, 2)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3788.985592, 1140.694892, 261.196521), MAT_Vector3(162.731032, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node18, 2)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3708.851486, 1174.638337, 299.774888), MAT_Vector3(73.271493, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node19, 2)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3736.825541, 1255.622862, 201.229988), MAT_Vector3(163.972994, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node20, 2)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_dock_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(3834.534831, 1151.9839, 173.480769), MAT_Vector3(-15.291533, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node21, 2)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_trafo_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3754.455599, 1287.993075, 244.345584), MAT_Vector3(-16.194562, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node22, 2)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_trafo_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(3779.538271, 1280.381748, 243.955949), MAT_Vector3(-19.415608, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node23, 2)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_trafo_3")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(3804.634062, 1272.211949, 244.715252), MAT_Vector3(-17.728406, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node24, 2)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_trafo_4")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3907.277002, 1241.648455, 244.542702), MAT_Vector3(-15.675385, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node25, 2)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3782.969649, 983.939681, 178.300452), MAT_Vector3(-15.67334, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node26, 2)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_shelter_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(3748.428852, 781.042934, 179.267449), MAT_Vector3(-49.23923, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node27, 2)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(3628.085577, 1030.548645, 174.270884), MAT_Vector3(-15.884386, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node28, 2)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(3525.261889, 878.207113, 216.423713), MAT_Vector3(-51.561002, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node29, 2)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_quay_3")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2636.938966, 865.788147, 259.934058), MAT_Vector3(33.392608, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node30, 2)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2634.881, 2408.315, 246.8111), MAT_Vector3(-47.16572, -0.954377, -1.242786))
  Node_ParseIniFile(node31, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2219.908, 2281.007, 246.215), MAT_Vector3(19.90078, 14.84974, -43.91588))
  Node_ParseIniFile(node32, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_bridgering_m_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3013.548, 2557.543, 251.3436), MAT_Vector3(34.33259, 0, 0))
  Node_ParseIniFile(node33, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2889.02, 2208.597, 282.8507), MAT_Vector3(-22.94077, -28.48077, 21.27071))
  Node_ParseIniFile(node34, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2962.668, 2369.175, 292.9181), MAT_Vector3(52.57895, 5.322598, 0.559837))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_edgering_4")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(3010.098, 2304.182, 245.5714), MAT_Vector3(131.0679, 0.018051, 0.168558))
  Node_ParseIniFile(node36, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2605.302, 1374.157, 243.9378), MAT_Vector3(-5.036179, 0.746966, 5.05077))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2612.2, 1116.121, 247.2102), MAT_Vector3(-16.79439, -5.038544, 17.00235))
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
  Body_SetCS(node39, MAT_Vector3(2677.444, 1065.705, 248.6007), MAT_Vector3(-26.63866, 65.60776, -57.67309))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(2635.811, 1162.572, 239.5191), MAT_Vector3(-9.063638, -2.290334, 9.133045))
  Node_ParseIniFile(node40, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_bridgering_l_8")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3136.767, 833.0972, 233.2598), MAT_Vector3(-10.24403, 0, 0))
  Node_ParseIniFile(node41, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_megalith_l_02_4")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(3614.71, 943.9168, -63.76345), MAT_Vector3(85.91982, 0, 0))
  Node_ParseIniFile(node42, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2110.455, 2101.684, 391.9564), MAT_Vector3(-160.0543, -3.732231, -14.76255))
  Node_ParseIniFile(node43, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_megalith_l_01_13")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(3001.116, 2876.205, 380.6435), MAT_Vector3(-26.06544, 13.02407, 10.40917))
  Node_ParseIniFile(node44, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_bridgering_m_4")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(3150.464, 2552.512, 312.8389), MAT_Vector3(-1.601908, -2.27254, -31.2884))
  Node_ParseIniFile(node45, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_rock_l_01_5")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(3366.578, 2013.333, 424.9905), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_megalith_m_01_7")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(3276.346, 1202.698, 295.7961), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_megalith_s_03_6")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(3255.7, 1194.456, 295.3623), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_megalith_l_01_14")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(4004.179, 1129.578, 253.979), MAT_Vector3(132.3937, -16.28577, -1.622084))
  Node_ParseIniFile(node49, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_megalith_l_03_7")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3916.789, 824.5712, 305.4722), MAT_Vector3(-74.89956, 13.03927, 18.86725))
  Node_ParseIniFile(node50, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(4005.073, 866.5122, 459.2854), MAT_Vector3(44.19984, -52.47787, -1.566106))
  Node_ParseIniFile(node51, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_megalith_s_03_7")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(3978.629, 987.58, 339.4728), MAT_Vector3(-144.6797, 3.084649, 71.551))
  Node_ParseIniFile(node52, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(3920.613, 888.2708, 320.7038), MAT_Vector3(158.709, -15.22807, 101.3603))
  Node_ParseIniFile(node53, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_rock_m_01_4")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(2845.973, 1799.01, 297.6715), MAT_Vector3(-53.87024, -59.72635, 75.01321))
  Node_ParseIniFile(node54, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_rock_s_01_8")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2892.728, 1827.446, 267.9587), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_megalith_m_02_8")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(3576.835, 1077.286, 263.185), MAT_Vector3(-65.52225, -49.62844, -9.523972))
  Node_ParseIniFile(node56, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_megalith_m_01_11")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(3581.914, 1044.788, 240.8365), MAT_Vector3(174.3674, -36.18932, -35.05998))
  Node_ParseIniFile(node57, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(942.747, 1396.458, 107.5738), MAT_Vector3(27.26539, -3.139644, 5.175069))
  Node_ParseIniFile(node58, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1134.232, 1359.47, 111.8412), MAT_Vector3(-50.40215, -3.487634, -2.554453))
  Node_ParseIniFile(node59, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1326.129, 1394.361, 103.3469), MAT_Vector3(5.772112, -6.594054, 0.132415))
  Node_ParseIniFile(node60, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "xter_megalith_l_01_3")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(670.688, 1666.007, 112.4363), MAT_Vector3(155.5886, 10.55227, -4.720396))
  Node_ParseIniFile(node61, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(633.306, 1857.904, 107.4795), MAT_Vector3(81.13325, 7.94677, 3.360289))
  Node_ParseIniFile(node62, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(782.836, 2211.793, 110.9519), MAT_Vector3(-59.98932, -3.533663, 3.152546))
  Node_ParseIniFile(node63, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(944.827, 2316.464, 112.1033), MAT_Vector3(-12.37312, 2.492559, 0.987008))
  Node_ParseIniFile(node64, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "xter_megalith_l_02_4")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1490.613, 1504.016, 104.607), MAT_Vector3(-69.36113, -1.225986, -7.373077))
  Node_ParseIniFile(node65, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(673.18, 2047.309, 111.1349), MAT_Vector3(-87.66528, -6.234533, -0.174634))
  Node_ParseIniFile(node66, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1595.284, 1663.515, 116.4329), MAT_Vector3(-135.2208, 7.380971, 2.357795))
  Node_ParseIniFile(node67, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_megalith_l_02_5")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1592.792, 2047.309, 100.7589), MAT_Vector3(-136.7505, 3.034981, 3.566533))
  Node_ParseIniFile(node68, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1134.232, 2353.847, 89.9637), MAT_Vector3(-139.6388, -7.210386, 5.768385))
  Node_ParseIniFile(node69, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1635.159, 1857.904, 102.9161), MAT_Vector3(166.4959, -0.664547, 2.172946))
  Node_ParseIniFile(node70, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_megalith_l_02_6")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1326.129, 2318.956, 113.3541), MAT_Vector3(-74.75039, 4.70163, 5.820554))
  Node_ParseIniFile(node71, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_megalith_l_03_6")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(1485.628, 2209.301, 96.608), MAT_Vector3(-123.7254, 1.602047, 9.260531))
  Node_ParseIniFile(node72, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node73)
  Node_ParseIniFile(node73, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node73, "map/3B1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node74)
  Node_ParseIniFile(node74, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node74, "map/3B1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node75)
  Node_ParseIniFile(node75, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node75, "map/3B1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node76)
  Node_ParseIniFile(node76, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node76, "map/3B1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_fx_plant", "org_tube_1")
  Node_AddSon(node7, node77)
  Node_ParseIniFile(node77, "osd/fx_plant/org_tube.osd")
  FX_Plant_SetMap(node77, "map/3B1/Terrain/org_tubes.tga")
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node78)
  Node_ParseIniFile(node78, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node78, "map/3B1/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node79)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node79, node80)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node79, node81)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node81, node82)
  PatrolArea_SetPosition(node82, MAT_Vector3(1134.771774, 1847.845289, 229.163709))
  PatrolArea_SetRadius(node82, 450)
  PatrolArea_SetMinZ(node82, -120)
  PatrolArea_SetMaxZ(node82, 120)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node79, node83)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node79, node84)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node84, node85)
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetCS(node85, MAT_Vector3(3286.864427, 704.44956, 300.548206), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node85, 40, 220, 220)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node79, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node86, node87)
  Body_SetCS(node87, MAT_Vector3(1135.514919, 1859.06028, 310.311297), MAT_Vector3(46.810523, 2.186517, 1.611877))
  Node_ParseIniFile(node87, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_vessel", "hank")
  Node_AddSon(node86, node88)
  Body_SetCS(node88, MAT_Vector3(1090.270218, 1903.975187, 310.899044), MAT_Vector3(-129.284192, 0, 0))
  Node_ParseIniFile(node88, "osd/pir_tz/pir_tz_hank_narrow.osd")
  Body_SetFriendOrFoeID(node88, 2)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_vessel", "chow")
  Node_AddSon(node86, node89)
  Body_SetCS(node89, MAT_Vector3(1090.27, 1903.975, 310.899), MAT_Vector3(-129.2842, 0, 0))
  Node_ParseIniFile(node89, "osd/pir_sho/pir_sho_chow_wide.osd")
  Body_SetFriendOrFoeID(node89, 2)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_vessel", "hamlet")
  Node_AddSon(node86, node90)
  Body_SetCS(node90, MAT_Vector3(1090.27, 1903.975, 310.899), MAT_Vector3(-129.2842, 0, 0))
  Node_ParseIniFile(node90, "osd/mer/mer_hammlet_wide.osd")
  Body_SetFriendOrFoeID(node90, 2)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_vessel", "mayling")
  Node_AddSon(node86, node91)
  Body_SetCS(node91, MAT_Vector3(1090.27, 1903.975, 310.899), MAT_Vector3(-129.2842, 0, 0))
  Node_ParseIniFile(node91, "osd/wng/wng_mayday_evil_5h2.osd")
  Body_SetFriendOrFoeID(node91, 2)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_vessel", "redbeard")
  Node_AddSon(node86, node92)
  Body_SetCS(node92, MAT_Vector3(1090.27, 1903.975, 310.899), MAT_Vector3(-129.2842, 0, 0))
  Node_ParseIniFile(node92, "osd/pir_sho/pir_sho_redbeard_wide.osd")
  Body_SetFriendOrFoeID(node92, 2)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_vessel", "shantyman")
  Node_AddSon(node86, node93)
  Body_SetCS(node93, MAT_Vector3(1090.27, 1903.975, 310.899), MAT_Vector3(-129.2842, 0, 0))
  Node_ParseIniFile(node93, "osd/mer/mer_shantyman_wide.osd")
  Body_SetFriendOrFoeID(node93, 2)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_vessel", "strega")
  Node_AddSon(node86, node94)
  Body_SetCS(node94, MAT_Vector3(1090.27, 1903.975, 310.899), MAT_Vector3(-129.2842, 0, 0))
  Node_ParseIniFile(node94, "osd/mer/mer_strega_wide_fightclub.osd")
  Body_SetFriendOrFoeID(node94, 2)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_waypoint", "hank_nav_attack_1")
  Node_AddSon(node86, node95)
  Body_SetPosition(node95, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node95, 5)
  Node_ParseIniFile(node95, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_waypoint", "chow_nav_attack_1")
  Node_AddSon(node86, node96)
  Body_SetPosition(node96, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node96, 5)
  Node_ParseIniFile(node96, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_waypoint", "hamlet_nav_attack_1")
  Node_AddSon(node86, node97)
  Body_SetPosition(node97, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node97, 5)
  Node_ParseIniFile(node97, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_waypoint", "mayling_nav_attack_1")
  Node_AddSon(node86, node98)
  Body_SetPosition(node98, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node98, 5)
  Node_ParseIniFile(node98, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_waypoint", "redbeard_nav_attack_1")
  Node_AddSon(node86, node99)
  Body_SetPosition(node99, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node99, 5)
  Node_ParseIniFile(node99, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_waypoint", "shantyman_nav_attack_1")
  Node_AddSon(node86, node100)
  Body_SetPosition(node100, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node100, 5)
  Node_ParseIniFile(node100, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_waypoint", "strega_nav_attack_1")
  Node_AddSon(node86, node101)
  Body_SetPosition(node101, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node101, 5)
  Node_ParseIniFile(node101, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node102)
  Camera_SetBackPlane(node102, 2048)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node103)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node103, node104)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node103, node105)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node105, node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node106, node107)
  Position_SetPosition(node107, MAT_Vector3(1137.097401, 1858.303266, 311.010457))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node106, node108)
  Position_SetPosition(node108, MAT_Vector3(1090.178124, 1901.879606, 311.010457))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node105, node109)
  Position_SetPosition(node109, MAT_Vector3(711.225, 1432.12, 310))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node105, node110)
  Position_SetPosition(node110, MAT_Vector3(581.597, 1628.099, 310))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node105, node111)
  Position_SetPosition(node111, MAT_Vector3(535.431, 1857.254, 310))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node105, node112)
  Position_SetPosition(node112, MAT_Vector3(580.774, 2086.409, 310))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node105, node113)
  Position_SetPosition(node113, MAT_Vector3(712.049, 2280.85, 310))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node105, node114)
  Position_SetPosition(node114, MAT_Vector3(907.561, 2410.835, 310))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node105, node115)
  Position_SetPosition(node115, MAT_Vector3(1136.002, 2457.935, 310))
  Position_SetRadius(node115, 5)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "LookFrom_9")
  Node_AddSon(node105, node116)
  Position_SetPosition(node116, MAT_Vector3(1364.691, 2412.373, 310))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "LookFrom_10")
  Node_AddSon(node105, node117)
  Position_SetPosition(node117, MAT_Vector3(1560.203, 2282.498, 310))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "LookFrom_11")
  Node_AddSon(node105, node118)
  Position_SetPosition(node118, MAT_Vector3(1689.117, 2086.518, 310))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "LookFrom_12")
  Node_AddSon(node105, node119)
  Position_SetPosition(node119, MAT_Vector3(1735.75, 1855.715, 310))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "LookFrom_13")
  Node_AddSon(node105, node120)
  Position_SetPosition(node120, MAT_Vector3(1689.474, 1628.208, 310))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "LookFrom_14")
  Node_AddSon(node105, node121)
  Position_SetPosition(node121, MAT_Vector3(1559.49, 1432.942, 310))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "LookFrom_15")
  Node_AddSon(node105, node122)
  Position_SetPosition(node122, MAT_Vector3(1365.048, 1303.782, 310))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "LookFrom_16")
  Node_AddSon(node105, node123)
  Position_SetPosition(node123, MAT_Vector3(1135.069, 1257.505, 310))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "LookFrom_17")
  Node_AddSon(node105, node124)
  Position_SetPosition(node124, MAT_Vector3(905.667, 1303.781, 310))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "LookFrom_18")
  Node_AddSon(node105, node125)
  Position_SetPosition(node125, MAT_Vector3(1110.372816, 1880.240608, 310))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "LookFrom_19")
  Node_AddSon(node105, node126)
  Position_SetPosition(node126, MAT_Vector3(2364.271, 1620.145, 360))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Position", "LookFrom_20")
  Node_AddSon(node105, node127)
  Position_SetPosition(node127, MAT_Vector3(1517.797, 1583.198, 300))
  Position_SetRadius(node127, 5)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "LookFrom_21")
  Node_AddSon(node105, node128)
  Position_SetPosition(node128, MAT_Vector3(1581.238, 1953.956, 300))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node103, node129)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Director", "hank")
  Node_AddSon(node129, node130)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Director", "chow")
  Node_AddSon(node129, node131)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Director", "hamlet")
  Node_AddSon(node129, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Director", "mayling")
  Node_AddSon(node129, node133)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Director", "redbeard")
  Node_AddSon(node129, node134)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Director", "shanty")
  Node_AddSon(node129, node135)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Director", "strega")
  Node_AddSon(node129, node136)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node103, node137)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node103, node138)
  Node_EnterSimulation(node138)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, U)
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
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, U)
SetEnemyMatrixElement(2, 1, U)
SetEnemyMatrixElement(3, 1, N)
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
SetEnemyMatrixElement(1, 2, U)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
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
SetEnemyMatrixElement(1, 3, N)
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
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
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (o2874.Value ~= True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o490, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o490, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o490, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o537 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o537, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o537, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o537, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o584, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o631 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o631, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o631, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o631, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
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
S_o678 = { [nil] = {}, Start = function(L0)

end }
S_o724 = { [nil] = {}, Start = function(L0)

end }
S_o770 = { [nil] = {}, Start = function(L0)

end }
S_o816 = { [nil] = {}, Start = function(L0)

end }
S_o862 = { [nil] = {}, Start = function(L0)

end }
S_o908 = { [nil] = {}, Start = function(L0)

end }
S_o954 = { [nil] = {}, Start = function(L0)

end }
S_o1000 = { [nil] = {}, Start = function(L0)

end }
S_o1046 = { [nil] = {}, Start = function(L0)

end }
S_o1092 = { [nil] = {}, Start = function(L0)

end }
S_o1138 = { [nil] = {}, Start = function(L0)

end }
S_o1184 = { [nil] = {}, Start = function(L0)

end }
S_o1230 = { [nil] = {}, Start = function(L0)

end }
S_o1276 = { [nil] = {}, Start = function(L0)

end }
S_o1322 = { [nil] = {}, Start = function(L0)

end }
S_o1368 = { [nil] = {}, Start = function(L0)

end }
S_o1414 = { [nil] = {}, Start = function(L0)

end }
S_o1460 = { [nil] = {}, Start = function(L0)

end }
S_o1506 = { [nil] = {}, Start = function(L0)

end }
S_o1552 = { [nil] = {}, Start = function(L0)

end }
S_o1598 = { [nil] = {}, Start = function(L0)

end }
S_o1644 = { [nil] = {}, Start = function(L0)

end }
S_o1690 = { [nil] = {}, Start = function(L0)

end }
S_o1736 = { [nil] = {}, Start = function(L0)

end }
S_o1782 = { [nil] = {}, Start = function(L0)

end }
S_o1828 = { [nil] = {}, Start = function(L0)

end }
S_o1874 = { [nil] = {}, Start = function(L0)

end }
S_o1920 = { [nil] = {}, Start = function(L0)

end }
S_o1966 = { [nil] = {}, Start = function(L0)

end }
S_o2012 = { [nil] = {}, Start = function(L0)

end }
S_o2058 = { [nil] = {}, Start = function(L0)

end }
S_o2104 = { [nil] = {}, Start = function(L0)

end }
S_o2150 = { [nil] = {}, Start = function(L0)

end }
S_o2196 = { [nil] = {}, Start = function(L0)

end }
S_o2242 = { [nil] = {}, Start = function(L0)

end }
S_o2288 = { [nil] = {}, Start = function(L0)

end }
S_o2334 = { [nil] = {}, Start = function(L0)

end }
S_o2380 = { [nil] = {}, Start = function(L0)

end }
S_o2426 = { [nil] = {}, Start = function(L0)

end }
S_o2472 = { [nil] = {}, Start = function(L0)

end }
S_o2518 = { [nil] = {}, Start = function(L0)

end }
S_o2564 = { [nil] = {}, Start = function(L0)

end }
S_o2610 = { [nil] = {}, Start = function(L0)

end }
S_o2656 = { [nil] = {}, Start = function(L0)

end }
S_o2702 = { [nil] = {}, Start = function(L0)

end }
S_o2748 = { [nil] = {}, Start = function(L0)

end }
S_o2794 = { [nil] = {}, Start = function(L0)

end }
S_o2840 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2840, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2840, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2840, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o2840, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2840, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2840, "Code6")
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
S_o2846 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "ammo_energy", 1500)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "torpedo_hammerhead", 4)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  Body_AddItem(L0.Node, "ammo_rocket", 9999)
  CallFunction(o2846, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
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
o2860 = { [nil] = {}, Start = function()
  o2860["Value"] = False
  o2905.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2860.Value == L0) then
    o2860["Value"] = L0
    o2905.ReCalculate()
  end
end }
o2861 = { [nil] = {}, Start = function()
  o2861["Value"] = False
  o2962.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2861.Value == L0) then
    o2861["Value"] = L0
    o2962.ReCalculate()
  end
end }
o2862 = { [nil] = {}, Start = function()
  o2862["Value"] = False
  o3019.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2862.Value == L0) then
    o2862["Value"] = L0
    o3019.ReCalculate()
  end
end }
o2863 = { [nil] = {}, Start = function()
  o2863["Value"] = False
  o3076.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2863.Value == L0) then
    o2863["Value"] = L0
    o3076.ReCalculate()
  end
end }
o2864 = { [nil] = {}, Start = function()
  o2864["Value"] = False
  o3133.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2864.Value == L0) then
    o2864["Value"] = L0
    o3133.ReCalculate()
  end
end }
o2865 = { [nil] = {}, Start = function()
  o2865["Value"] = False
  o3190.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2865.Value == L0) then
    o2865["Value"] = L0
    o3190.ReCalculate()
  end
end }
o2866 = { [nil] = {}, Start = function()
  o2866["Value"] = False
  o3247.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2866.Value == L0) then
    o2866["Value"] = L0
    o3247.ReCalculate()
  end
end }
o2867 = { [nil] = {}, GetCalculated = function()
  if not (o2908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2867.SetStateValue(o2867.GetCalculated())
end, StartCalculate = function()
  o2867["Value"] = o2867.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
end, SetStateValue = function(L0)
  if not (o2867.Value == L0) then
    DelayedFunction(1, o2867, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2867.Value == L0) then
    o2867["Value"] = L0
    if not (L0 ~= 1) then
      o2867.ChangeTo1()
    end
  end
end }
o2868 = { [nil] = {}, GetCalculated = function()
  if not (o2965.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2868.SetStateValue(o2868.GetCalculated())
end, StartCalculate = function()
  o2868["Value"] = o2868.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
end, SetStateValue = function(L0)
  if not (o2868.Value == L0) then
    DelayedFunction(1, o2868, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2868.Value == L0) then
    o2868["Value"] = L0
    if not (L0 ~= 1) then
      o2868.ChangeTo1()
    end
  end
end }
o2869 = { [nil] = {}, GetCalculated = function()
  if not (o3022.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2869.SetStateValue(o2869.GetCalculated())
end, StartCalculate = function()
  o2869["Value"] = o2869.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2103)
end, SetStateValue = function(L0)
  if not (o2869.Value == L0) then
    DelayedFunction(1, o2869, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2869.Value == L0) then
    o2869["Value"] = L0
    if not (L0 ~= 1) then
      o2869.ChangeTo1()
    end
  end
end }
o2870 = { [nil] = {}, GetCalculated = function()
  if not (o3079.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2870.SetStateValue(o2870.GetCalculated())
end, StartCalculate = function()
  o2870["Value"] = o2870.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 4, 2000, 2106)
end, SetStateValue = function(L0)
  if not (o2870.Value == L0) then
    DelayedFunction(1, o2870, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2870.Value == L0) then
    o2870["Value"] = L0
    if not (L0 ~= 1) then
      o2870.ChangeTo1()
    end
  end
end }
o2871 = { [nil] = {}, GetCalculated = function()
  if not (o3136.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2871.SetStateValue(o2871.GetCalculated())
end, StartCalculate = function()
  o2871["Value"] = o2871.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 5, 2000, 2102)
end, SetStateValue = function(L0)
  if not (o2871.Value == L0) then
    DelayedFunction(1, o2871, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2871.Value == L0) then
    o2871["Value"] = L0
    if not (L0 ~= 1) then
      o2871.ChangeTo1()
    end
  end
end }
o2872 = { [nil] = {}, GetCalculated = function()
  if not (o3193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2872.SetStateValue(o2872.GetCalculated())
end, StartCalculate = function()
  o2872["Value"] = o2872.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 6, 2000, 2104)
end, SetStateValue = function(L0)
  if not (o2872.Value == L0) then
    DelayedFunction(1, o2872, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2872.Value == L0) then
    o2872["Value"] = L0
    if not (L0 ~= 1) then
      o2872.ChangeTo1()
    end
  end
end }
o2873 = { [nil] = {}, GetCalculated = function()
  if not (o3250.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2873.SetStateValue(o2873.GetCalculated())
end, StartCalculate = function()
  o2873["Value"] = o2873.GetCalculated()
  o2874.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 7, 2000, 2105)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o2873.Value == L0) then
    DelayedFunction(1, o2873, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2873.Value == L0) then
    o2873["Value"] = L0
    o2874.ReCalculate()
    if not (L0 ~= 1) then
      o2873.ChangeTo1()
    end
  end
end }
o2874 = { [nil] = {}, GetCalculated = function()
  if not (o2873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2874.SetStateValue(o2874.GetCalculated())
end, StartCalculate = function()
  o2874["Value"] = o2874.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2874.Value == L0) then
    o2874["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o2902 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2902, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2902, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2902, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2902, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2902, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o2902, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2908.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2905.Value ~= True) then
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
o2905 = { [nil] = {}, GetCalculated = function()
  if not (o2860.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2905.SetStateValue(o2905.GetCalculated())
end, StartCalculate = function()
  o2905["Value"] = o2905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2905.Value == L0) then
    o2905["Value"] = L0
    CallFunction(o2902, "ProcesseStateChange")
  end
end }
o2908 = { [nil] = {}, Start = function()
  o2908["Value"] = False
  o2867.StartCalculate()
  o2961.StartCalculate()
  o3385.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2908.Value == L0) then
    o2908["Value"] = L0
    o2867.ReCalculate()
    o2961.ReCalculate()
    o3385.ReCalculate()
  end
end }
S_o2959 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2959, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2959, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2959, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o2959, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2959, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o2959, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o2965.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2961.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o2962.Value ~= True) then
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
o2961 = { [nil] = {}, GetCalculated = function()
  if not (o2908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2961.SetStateValue(o2961.GetCalculated())
end, StartCalculate = function()
  o2961["Value"] = o2961.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2961.Value == L0) then
    DelayedFunction(7, o2961, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2961.Value == L0) then
    o2961["Value"] = L0
    CallFunction(o2959, "ProcesseStateChange")
  end
end }
o2962 = { [nil] = {}, GetCalculated = function()
  if not (o2861.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2962.SetStateValue(o2962.GetCalculated())
end, StartCalculate = function()
  o2962["Value"] = o2962.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2962.Value == L0) then
    o2962["Value"] = L0
    CallFunction(o2959, "ProcesseStateChange")
  end
end }
o2965 = { [nil] = {}, Start = function()
  o2965["Value"] = False
  o2868.StartCalculate()
  o3018.StartCalculate()
  o3409.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2965.Value == L0) then
    o2965["Value"] = L0
    o2868.ReCalculate()
    o3018.ReCalculate()
    o3409.ReCalculate()
  end
end }
S_o3016 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3016, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3016, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3016, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o3016, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3016, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o3016, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3022.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3018.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3019.Value ~= True) then
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
o3018 = { [nil] = {}, GetCalculated = function()
  if not (o2965.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3018.SetStateValue(o3018.GetCalculated())
end, StartCalculate = function()
  o3018["Value"] = o3018.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3018.Value == L0) then
    DelayedFunction(7, o3018, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3018.Value == L0) then
    o3018["Value"] = L0
    CallFunction(o3016, "ProcesseStateChange")
  end
end }
o3019 = { [nil] = {}, GetCalculated = function()
  if not (o2862.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3019.SetStateValue(o3019.GetCalculated())
end, StartCalculate = function()
  o3019["Value"] = o3019.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3019.Value == L0) then
    o3019["Value"] = L0
    CallFunction(o3016, "ProcesseStateChange")
  end
end }
o3022 = { [nil] = {}, Start = function()
  o3022["Value"] = False
  o2869.StartCalculate()
  o3075.StartCalculate()
  o3433.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3022.Value == L0) then
    o3022["Value"] = L0
    o2869.ReCalculate()
    o3075.ReCalculate()
    o3433.ReCalculate()
  end
end }
S_o3073 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3073, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3073, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3073, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o3073, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3073, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o3073, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3079.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3075.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3076.Value ~= True) then
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
o3075 = { [nil] = {}, GetCalculated = function()
  if not (o3022.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3075.SetStateValue(o3075.GetCalculated())
end, StartCalculate = function()
  o3075["Value"] = o3075.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3075.Value == L0) then
    DelayedFunction(7, o3075, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3075.Value == L0) then
    o3075["Value"] = L0
    CallFunction(o3073, "ProcesseStateChange")
  end
end }
o3076 = { [nil] = {}, GetCalculated = function()
  if not (o2863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3076.SetStateValue(o3076.GetCalculated())
end, StartCalculate = function()
  o3076["Value"] = o3076.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3076.Value == L0) then
    o3076["Value"] = L0
    CallFunction(o3073, "ProcesseStateChange")
  end
end }
o3079 = { [nil] = {}, Start = function()
  o3079["Value"] = False
  o2870.StartCalculate()
  o3132.StartCalculate()
  o3457.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3079.Value == L0) then
    o3079["Value"] = L0
    o2870.ReCalculate()
    o3132.ReCalculate()
    o3457.ReCalculate()
  end
end }
S_o3130 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3130, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3130, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3130, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o3130, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3130, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o3130, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3136.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3132.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3133.Value ~= True) then
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
o3132 = { [nil] = {}, GetCalculated = function()
  if not (o3079.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3132.SetStateValue(o3132.GetCalculated())
end, StartCalculate = function()
  o3132["Value"] = o3132.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3132.Value == L0) then
    DelayedFunction(7, o3132, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3132.Value == L0) then
    o3132["Value"] = L0
    CallFunction(o3130, "ProcesseStateChange")
  end
end }
o3133 = { [nil] = {}, GetCalculated = function()
  if not (o2864.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3133.SetStateValue(o3133.GetCalculated())
end, StartCalculate = function()
  o3133["Value"] = o3133.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3133.Value == L0) then
    o3133["Value"] = L0
    CallFunction(o3130, "ProcesseStateChange")
  end
end }
o3136 = { [nil] = {}, Start = function()
  o3136["Value"] = False
  o2871.StartCalculate()
  o3189.StartCalculate()
  o3481.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3136.Value == L0) then
    o3136["Value"] = L0
    o2871.ReCalculate()
    o3189.ReCalculate()
    o3481.ReCalculate()
  end
end }
S_o3187 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3187, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3187, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3187, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o3187, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3187, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o3187, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o3193.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3189.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3190.Value ~= True) then
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
  if not (o3136.Value ~= True) then
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
    DelayedFunction(7, o3189, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3189.Value == L0) then
    o3189["Value"] = L0
    CallFunction(o3187, "ProcesseStateChange")
  end
end }
o3190 = { [nil] = {}, GetCalculated = function()
  if not (o2865.Value ~= True) then
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
    CallFunction(o3187, "ProcesseStateChange")
  end
end }
o3193 = { [nil] = {}, Start = function()
  o3193["Value"] = False
  o2872.StartCalculate()
  o3246.StartCalculate()
  o3505.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3193.Value == L0) then
    o3193["Value"] = L0
    o2872.ReCalculate()
    o3246.ReCalculate()
    o3505.ReCalculate()
  end
end }
S_o3244 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3244, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3244, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3244, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o3244, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3244, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o3244, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "player1", "", "", "", 1, "Code7")
  else
    CallFunction(o3244, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o3250.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3246.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3247.Value ~= True) then
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
o3246 = { [nil] = {}, GetCalculated = function()
  if not (o3193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3246.SetStateValue(o3246.GetCalculated())
end, StartCalculate = function()
  o3246["Value"] = o3246.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3246.Value == L0) then
    DelayedFunction(7, o3246, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3246.Value == L0) then
    o3246["Value"] = L0
    CallFunction(o3244, "ProcesseStateChange")
  end
end }
o3247 = { [nil] = {}, GetCalculated = function()
  if not (o2866.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3247.SetStateValue(o3247.GetCalculated())
end, StartCalculate = function()
  o3247["Value"] = o3247.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3247.Value == L0) then
    o3247["Value"] = L0
    CallFunction(o3244, "ProcesseStateChange")
  end
end }
o3250 = { [nil] = {}, Start = function()
  o3250["Value"] = False
  o2873.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3250.Value == L0) then
    o3250["Value"] = L0
    o2873.ReCalculate()
  end
end }
S_o3301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2902.Node)
  CallFunction(o3301, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3306 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o2959.Node)
  CallFunction(o3306, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3311 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3016.Node)
  CallFunction(o3311, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3316 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3073.Node)
  CallFunction(o3316, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3321 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3130.Node)
  CallFunction(o3321, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3326 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3187.Node)
  CallFunction(o3326, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
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
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o3244.Node)
  CallFunction(o3331, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3336 = { [nil] = {}, Start = function(L0)

end }
o3338 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 35, 35)
o3340 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 35, 35)
S_o3341 = { [nil] = {}, Start = function(L0)

end }
S_o3342 = { [nil] = {}, Start = function(L0)

end }
S_o3343 = { [nil] = {}, Start = function(L0)

end }
S_o3344 = { [nil] = {}, Start = function(L0)

end }
S_o3345 = { [nil] = {}, Start = function(L0)

end }
S_o3346 = { [nil] = {}, Start = function(L0)

end }
S_o3347 = { [nil] = {}, Start = function(L0)

end }
S_o3348 = { [nil] = {}, Start = function(L0)

end }
S_o3349 = { [nil] = {}, Start = function(L0)

end }
S_o3350 = { [nil] = {}, Start = function(L0)

end }
S_o3351 = { [nil] = {}, Start = function(L0)

end }
S_o3352 = { [nil] = {}, Start = function(L0)

end }
S_o3353 = { [nil] = {}, Start = function(L0)

end }
S_o3354 = { [nil] = {}, Start = function(L0)

end }
S_o3355 = { [nil] = {}, Start = function(L0)

end }
S_o3356 = { [nil] = {}, Start = function(L0)

end }
S_o3357 = { [nil] = {}, Start = function(L0)

end }
S_o3358 = { [nil] = {}, Start = function(L0)

end }
S_o3359 = { [nil] = {}, Start = function(L0)

end }
S_o3360 = { [nil] = {}, Start = function(L0)

end }
S_o3361 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3361, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3361, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/hank", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3361, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code9")
  else
    CallFunction(o3361, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3361, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code11")
  else
    CallFunction(o3361, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3361, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code13")
  else
    CallFunction(o3361, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3361, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code15")
  else
    CallFunction(o3361, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3361, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code17")
  else
    CallFunction(o3361, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3361, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code19")
  else
    CallFunction(o3361, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3361, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code21")
  else
    CallFunction(o3361, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3361, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code23")
  else
    CallFunction(o3361, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3361, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code25")
  else
    CallFunction(o3361, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3361, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code27")
  else
    CallFunction(o3361, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3361, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code29")
  else
    CallFunction(o3361, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3361, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code31")
  else
    CallFunction(o3361, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3361, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code33")
  else
    CallFunction(o3361, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3361, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code35")
  else
    CallFunction(o3361, "Code35")
  end
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3361, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code37")
  else
    CallFunction(o3361, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3361, "Code38")
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code39")
  else
    CallFunction(o3361, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3361, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code41")
  else
    CallFunction(o3361, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/hank", 4, "MMMN", 0)
  CallFunction(o3361, "Code43")
end, Code43 = function(L0)
  L0["CodeIndex"] = 43
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code44")
  else
    CallFunction(o3361, "Code44")
  end
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  Camera_Cut(L0.Node, 1)
  CallFunction(o3361, "Code45")
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code46")
  else
    CallFunction(o3361, "Code46")
  end
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  Director_EndCutscene(L0.Node)
  CallFunction(o3361, "Code47")
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code48")
  else
    CallFunction(o3361, "Code48")
  end
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  o2860.SetStateValue(True)
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3301.Node)
  CallFunction(o3361, "Code51")
end, Code51 = function(L0)
  L0["CodeIndex"] = 51
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3384 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3384, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3384, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3384, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o3337, o3338, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3384, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code10")
  else
    CallFunction(o3384, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3384, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code12")
  else
    CallFunction(o3384, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3384, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3384, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3384, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o3384, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3384, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o3384, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3384, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o3384, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3384, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o3384, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3384, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code24")
  else
    CallFunction(o3384, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3384, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o3384, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3384, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code28")
  else
    CallFunction(o3384, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3384, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code30")
  else
    CallFunction(o3384, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3384, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code32")
  else
    CallFunction(o3384, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3384, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code34")
  else
    CallFunction(o3384, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3384, "Code35")
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code36")
  else
    CallFunction(o3384, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3384, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code38")
  else
    CallFunction(o3384, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3384, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code40")
  else
    CallFunction(o3384, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3384, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3384, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/chow", 4, "MMMN", 0)
  CallFunction(o3384, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code45")
  else
    CallFunction(o3384, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  Camera_Cut(L0.Node, 1)
  CallFunction(o3384, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code47")
  else
    CallFunction(o3384, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o3384, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code49")
  else
    CallFunction(o3384, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o2861.SetStateValue(True)
  SED_SetTaskTextKey(2101, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3306.Node)
  CallFunction(o3384, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3385.Value ~= True) then
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
o3385 = { [nil] = {}, GetCalculated = function()
  if not (o2908.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3385.SetStateValue(o3385.GetCalculated())
end, StartCalculate = function()
  o3385["Value"] = o3385.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3385.Value == L0) then
    DelayedFunction(6, o3385, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3385.Value == L0) then
    o3385["Value"] = L0
    CallFunction(o3384, "ProcesseStateChange")
  end
end }
S_o3408 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3408, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3408, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3408, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o3337, o3338, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3408, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code10")
  else
    CallFunction(o3408, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3408, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code12")
  else
    CallFunction(o3408, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3408, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3408, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3408, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o3408, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3408, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o3408, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3408, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o3408, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3408, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o3408, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3408, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code24")
  else
    CallFunction(o3408, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3408, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o3408, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3408, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code28")
  else
    CallFunction(o3408, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3408, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code30")
  else
    CallFunction(o3408, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3408, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code32")
  else
    CallFunction(o3408, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3408, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code34")
  else
    CallFunction(o3408, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3408, "Code35")
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code36")
  else
    CallFunction(o3408, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3408, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code38")
  else
    CallFunction(o3408, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3408, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code40")
  else
    CallFunction(o3408, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3408, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3408, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/hamlet", 4, "MMMN", 0)
  CallFunction(o3408, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code45")
  else
    CallFunction(o3408, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  Camera_Cut(L0.Node, 1)
  CallFunction(o3408, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code47")
  else
    CallFunction(o3408, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o3408, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code49")
  else
    CallFunction(o3408, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o2862.SetStateValue(True)
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3311.Node)
  CallFunction(o3408, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3409.Value ~= True) then
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
o3409 = { [nil] = {}, GetCalculated = function()
  if not (o2965.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3409.SetStateValue(o3409.GetCalculated())
end, StartCalculate = function()
  o3409["Value"] = o3409.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3409.Value == L0) then
    DelayedFunction(6, o3409, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3409.Value == L0) then
    o3409["Value"] = L0
    CallFunction(o3408, "ProcesseStateChange")
  end
end }
S_o3432 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3432, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3432, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3432, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o3337, o3338, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3432, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code10")
  else
    CallFunction(o3432, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3432, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code12")
  else
    CallFunction(o3432, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3432, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3432, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3432, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o3432, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3432, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o3432, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3432, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o3432, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3432, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o3432, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3432, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code24")
  else
    CallFunction(o3432, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3432, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o3432, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3432, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code28")
  else
    CallFunction(o3432, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3432, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code30")
  else
    CallFunction(o3432, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3432, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code32")
  else
    CallFunction(o3432, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3432, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code34")
  else
    CallFunction(o3432, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3432, "Code35")
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code36")
  else
    CallFunction(o3432, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3432, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code38")
  else
    CallFunction(o3432, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3432, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code40")
  else
    CallFunction(o3432, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3432, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3432, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mayling", 4, "MMMN", 0)
  CallFunction(o3432, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code45")
  else
    CallFunction(o3432, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  Camera_Cut(L0.Node, 1)
  CallFunction(o3432, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code47")
  else
    CallFunction(o3432, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o3432, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code49")
  else
    CallFunction(o3432, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o2863.SetStateValue(True)
  SED_SetTaskTextKey(2106, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3316.Node)
  CallFunction(o3432, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3433.Value ~= True) then
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
o3433 = { [nil] = {}, GetCalculated = function()
  if not (o3022.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3433.SetStateValue(o3433.GetCalculated())
end, StartCalculate = function()
  o3433["Value"] = o3433.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3433.Value == L0) then
    DelayedFunction(6, o3433, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3433.Value == L0) then
    o3433["Value"] = L0
    CallFunction(o3432, "ProcesseStateChange")
  end
end }
S_o3456 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3456, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3456, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3456, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o3337, o3338, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3456, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code10")
  else
    CallFunction(o3456, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3456, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code12")
  else
    CallFunction(o3456, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3456, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3456, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3456, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o3456, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3456, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o3456, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3456, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o3456, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3456, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o3456, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3456, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code24")
  else
    CallFunction(o3456, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3456, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o3456, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3456, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code28")
  else
    CallFunction(o3456, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3456, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code30")
  else
    CallFunction(o3456, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3456, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code32")
  else
    CallFunction(o3456, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3456, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code34")
  else
    CallFunction(o3456, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3456, "Code35")
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code36")
  else
    CallFunction(o3456, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3456, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code38")
  else
    CallFunction(o3456, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3456, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code40")
  else
    CallFunction(o3456, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3456, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3456, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/redbeard", 4, "MMMN", 0)
  CallFunction(o3456, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code45")
  else
    CallFunction(o3456, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  Camera_Cut(L0.Node, 1)
  CallFunction(o3456, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code47")
  else
    CallFunction(o3456, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o3456, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code49")
  else
    CallFunction(o3456, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o2864.SetStateValue(True)
  SED_SetTaskTextKey(2102, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3321.Node)
  CallFunction(o3456, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3457.Value ~= True) then
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
o3457 = { [nil] = {}, GetCalculated = function()
  if not (o3079.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3457.SetStateValue(o3457.GetCalculated())
end, StartCalculate = function()
  o3457["Value"] = o3457.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3457.Value == L0) then
    DelayedFunction(6, o3457, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3457.Value == L0) then
    o3457["Value"] = L0
    CallFunction(o3456, "ProcesseStateChange")
  end
end }
S_o3480 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3480, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3480, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3480, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o3337, o3338, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3480, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code10")
  else
    CallFunction(o3480, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3480, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code12")
  else
    CallFunction(o3480, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3480, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3480, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3480, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o3480, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3480, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o3480, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3480, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o3480, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3480, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o3480, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3480, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code24")
  else
    CallFunction(o3480, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3480, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o3480, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3480, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code28")
  else
    CallFunction(o3480, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3480, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code30")
  else
    CallFunction(o3480, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3480, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code32")
  else
    CallFunction(o3480, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3480, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code34")
  else
    CallFunction(o3480, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3480, "Code35")
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code36")
  else
    CallFunction(o3480, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3480, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code38")
  else
    CallFunction(o3480, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3480, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code40")
  else
    CallFunction(o3480, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3480, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3480, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/shantyman", 4, "MMMN", 0)
  CallFunction(o3480, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code45")
  else
    CallFunction(o3480, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  Camera_Cut(L0.Node, 1)
  CallFunction(o3480, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code47")
  else
    CallFunction(o3480, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o3480, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code49")
  else
    CallFunction(o3480, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o2865.SetStateValue(True)
  SED_SetTaskTextKey(2104, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3326.Node)
  CallFunction(o3480, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3481.Value ~= True) then
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
o3481 = { [nil] = {}, GetCalculated = function()
  if not (o3136.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3481.SetStateValue(o3481.GetCalculated())
end, StartCalculate = function()
  o3481["Value"] = o3481.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3481.Value == L0) then
    DelayedFunction(6, o3481, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3481.Value == L0) then
    o3481["Value"] = L0
    CallFunction(o3480, "ProcesseStateChange")
  end
end }
S_o3504 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3504, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.2)
  CallFunction(o3504, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3504, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o3337, o3338, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3504, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code10")
  else
    CallFunction(o3504, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3504, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code12")
  else
    CallFunction(o3504, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3504, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code14")
  else
    CallFunction(o3504, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3504, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code16")
  else
    CallFunction(o3504, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3504, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code18")
  else
    CallFunction(o3504, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3504, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code20")
  else
    CallFunction(o3504, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3504, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o3504, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3504, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code24")
  else
    CallFunction(o3504, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3504, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o3504, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3504, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code28")
  else
    CallFunction(o3504, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3504, "Code29")
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code30")
  else
    CallFunction(o3504, "Code30")
  end
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3504, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code32")
  else
    CallFunction(o3504, "Code32")
  end
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3504, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code34")
  else
    CallFunction(o3504, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3504, "Code35")
end }, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code36")
  else
    CallFunction(o3504, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3504, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code38")
  else
    CallFunction(o3504, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3504, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code40")
  else
    CallFunction(o3504, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  CallFunction(o3504, "Code41")
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code42")
  else
    CallFunction(o3504, "Code42")
  end
end, Code42 = function(L0)
  L0["CodeIndex"] = 42
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/strega", 4, "MMMN", 0)
  CallFunction(o3504, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9, "Code45")
  else
    CallFunction(o3504, "Code45")
  end
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
  Camera_Cut(L0.Node, 1)
  CallFunction(o3504, "Code46")
end, Code46 = function(L0)
  L0["CodeIndex"] = 46
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code47")
  else
    CallFunction(o3504, "Code47")
  end
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  Director_EndCutscene(L0.Node)
  CallFunction(o3504, "Code48")
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code49")
  else
    CallFunction(o3504, "Code49")
  end
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  o2866.SetStateValue(True)
  SED_SetTaskTextKey(2105, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3331.Node)
  CallFunction(o3504, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3505.Value ~= True) then
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
o3505 = { [nil] = {}, GetCalculated = function()
  if not (o3193.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3505.SetStateValue(o3505.GetCalculated())
end, StartCalculate = function()
  o3505["Value"] = o3505.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3505.Value == L0) then
    DelayedFunction(6, o3505, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3505.Value == L0) then
    o3505["Value"] = L0
    CallFunction(o3504, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 138)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_3", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_4", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_beacon_5", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_1", S_o490)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_2", S_o537)
  o584 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_3", S_o584)
  o631 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_4", S_o631)
  o678 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o678)
  o724 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o724)
  o770 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_3", S_o770)
  o816 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o816)
  o862 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_3", S_o862)
  o908 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o908)
  o954 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o954)
  o1000 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o1000)
  o1046 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o1046)
  o1092 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o1092)
  o1138 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_4", S_o1138)
  o1184 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o1184)
  o1230 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1230)
  o1276 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1276)
  o1322 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o1322)
  o1368 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_8", S_o1368)
  o1414 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_4", S_o1414)
  o1460 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o1460)
  o1506 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_13", S_o1506)
  o1552 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_4", S_o1552)
  o1598 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_5", S_o1598)
  o1644 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_7", S_o1644)
  o1690 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_6", S_o1690)
  o1736 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_14", S_o1736)
  o1782 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_7", S_o1782)
  o1828 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o1828)
  o1874 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_7", S_o1874)
  o1920 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o1920)
  o1966 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o1966)
  o2012 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_8", S_o2012)
  o2058 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_8", S_o2058)
  o2104 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_11", S_o2104)
  o2150 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o2150)
  o2196 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o2196)
  o2242 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o2242)
  o2288 = BindEasy(Node_Find("/Scenario_Static/Object"), "xter_megalith_l_01_3", S_o2288)
  o2334 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o2334)
  o2380 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o2380)
  o2426 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o2426)
  o2472 = BindEasy(Node_Find("/Scenario_Static/Object"), "xter_megalith_l_02_4", S_o2472)
  o2518 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o2518)
  o2564 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o2564)
  o2610 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o2610)
  o2656 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o2656)
  o2702 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o2702)
  o2748 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6", S_o2748)
  o2794 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_6", S_o2794)
  o2840 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o2840)
  o2846 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2846)
  o2860.Start()
  o2861.Start()
  o2862.Start()
  o2863.Start()
  o2864.Start()
  o2865.Start()
  o2866.Start()
  o2902 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hank", S_o2902)
  o2908.Start()
  o2959 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "chow", S_o2959)
  o2965.Start()
  o3016 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hamlet", S_o3016)
  o3022.Start()
  o3073 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mayling", S_o3073)
  o3079.Start()
  o3130 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "redbeard", S_o3130)
  o3136.Start()
  o3187 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "shantyman", S_o3187)
  o3193.Start()
  o3244 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "strega", S_o3244)
  o3250.Start()
  o3301 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hank_nav_attack_1", S_o3301)
  o3306 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "chow_nav_attack_1", S_o3306)
  o3311 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "hamlet_nav_attack_1", S_o3311)
  o3316 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mayling_nav_attack_1", S_o3316)
  o3321 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "redbeard_nav_attack_1", S_o3321)
  o3326 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "shantyman_nav_attack_1", S_o3326)
  o3331 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "strega_nav_attack_1", S_o3331)
  o3336 = BindEasy(Node_Find("/"), "Camera", S_o3336)
  o3341 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o3341)
  o3342 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o3342)
  o3343 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o3343)
  o3344 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o3344)
  o3345 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o3345)
  o3346 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o3346)
  o3347 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o3347)
  o3348 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_9", S_o3348)
  o3349 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_10", S_o3349)
  o3350 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11", S_o3350)
  o3351 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_12", S_o3351)
  o3352 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_13", S_o3352)
  o3353 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_14", S_o3353)
  o3354 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_15", S_o3354)
  o3355 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_16", S_o3355)
  o3356 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_17", S_o3356)
  o3357 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_18", S_o3357)
  o3358 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_19", S_o3358)
  o3359 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_20", S_o3359)
  o3360 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_21", S_o3360)
  o3361 = BindEasy(Node_Find("/IngameSequences/Director"), "hank", S_o3361)
  o3384 = BindEasy(Node_Find("/IngameSequences/Director"), "chow", S_o3384)
  o3408 = BindEasy(Node_Find("/IngameSequences/Director"), "hamlet", S_o3408)
  o3432 = BindEasy(Node_Find("/IngameSequences/Director"), "mayling", S_o3432)
  o3456 = BindEasy(Node_Find("/IngameSequences/Director"), "redbeard", S_o3456)
  o3480 = BindEasy(Node_Find("/IngameSequences/Director"), "shanty", S_o3480)
  o3504 = BindEasy(Node_Find("/IngameSequences/Director"), "strega", S_o3504)
  o3337 = { {}, o2846 }()
  o3339 = { {}, o2902 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
