-- dekompiliert aus 3h1.sco
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
  Terrain_LoadTerrain(node1, "map/3H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/3H1/Lmsh/", "map/3H1/Ltex/")
  Game_SetTerrainDepth(node0, 2488)
  Game_SetDecompressionHeight(node0, 500)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.109804, 0.101961, 0.082353)
  Game_SetParallelLightT(node0, 0.219608, 0.203922, 0.164706)
  Game_SetParallelLightB(node0, 0.109804, 0.101961, 0.082353)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3h1.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3H1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_orden.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 3)
  Game_SetNPCHitFactor(node0, 0.2)
  Game_SetEnvironmentCubeMap(node0, "map/3H1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(810.151246, 404.414361, 403.600885), MAT_Vector3(-155.30268, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_rays", "fx_rays_3H1_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_rays/fx_rays_3H1.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_sky", "fx_sky_3H1_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_sky/fx_sky_3H1.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_flare", "fx_flare_3H1_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_flare/fx_flare_3H1.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_fx_plankton", "fx_plankton_amber_n_1")
  Node_AddSon(node7, node12)
  Node_ParseIniFile(node12, "osd/fx_plankton/fx_plankton_amber_n.osd")
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_reef_l_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(1131.509, 297.6006, 181.2176), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_reef_xl_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(937.8364, 183.5235, 171.5907), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "ter_reef_xl_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(740.5059, 1353.395, 69.24371), MAT_Vector3(20, 0, 0))
  Node_ParseIniFile(node15, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_reef_l_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(771.1301, 534.5868, 191.2755), MAT_Vector3(-45, 0, 0))
  Node_ParseIniFile(node16, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_reef_l_3")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(336.369614, 2070.932142, 102.498281), MAT_Vector3(-134.619675, 0, 0))
  Node_ParseIniFile(node17, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_reef_xl_3")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(732.45477, 2576.925212, 118.874311), MAT_Vector3(73.870139, -0.166222, -0.171094))
  Node_ParseIniFile(node18, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_reef_xl_4")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(986.391168, 2307.842396, 112.967791), MAT_Vector3(20, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_reef_l_4")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1187.559, 2682.258, 152.2007), MAT_Vector3(-45, 0, 0))
  Node_ParseIniFile(node20, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_reef_l_5")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1406.935208, 2917.411553, 135.866533), MAT_Vector3(-134.6197, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_reef_xl_5")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(819.868651, 2528.401769, 113.999), MAT_Vector3(-5.002006, -0.166222, -0.171094))
  Node_ParseIniFile(node22, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_reef_xl_6")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(924.003986, 2189.054194, 111.632139), MAT_Vector3(-69.904495, 0, 0))
  Node_ParseIniFile(node23, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_reef_l_6")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1604.059626, 3262.27112, 96.499019), MAT_Vector3(-45, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_reef_l_7")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2176.259916, 3323.881095, 106.455229), MAT_Vector3(154.254979, -3.684578, -3.497801))
  Node_ParseIniFile(node25, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_reef_l_8")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3181.572629, 3192.237258, 144.13688), MAT_Vector3(154.255, -3.684578, -3.497801))
  Node_ParseIniFile(node26, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_reef_xl_8")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2899.380662, 3171.389188, 124.772625), MAT_Vector3(-69.90449, 0, 0))
  Node_ParseIniFile(node27, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_reef_xl_7")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2062.01407, 3438.640241, 69.20342), MAT_Vector3(-69.90449, 0, 0))
  Node_ParseIniFile(node28, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_claw_l_01_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(97.79903, 467.380718, 454.451739), MAT_Vector3(61.069683, 0, 0))
  Node_ParseIniFile(node29, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_claw_l_02_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(120.638071, 398.973443, 456.1169), MAT_Vector3(176.391216, 0, 0))
  Node_ParseIniFile(node30, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_claw_l_02_1")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(89.725508, 431.492087, 451.098273), MAT_Vector3(-167.57212, -6.23423, -2.678932))
  Node_ParseIniFile(node31, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_claw_l_02_3")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(124.229276, 482.684325, 453.724143), MAT_Vector3(102.999771, 0, 0))
  Node_ParseIniFile(node32, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_claw_s_02_1")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(162.087037, 472.068164, 451.951947), MAT_Vector3(-32.270684, -15.205222, 5.913339))
  Node_ParseIniFile(node33, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_claw_wall_1_s")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(205.900207, 518.085475, 500.222449), MAT_Vector3(-18.672796, 11.456463, -19.350072))
  Node_ParseIniFile(node34, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_claw_wall_2_s")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(214.031983, 447.998167, 493.958232), MAT_Vector3(-90.875312, -2.106514, 3.591169))
  Node_ParseIniFile(node35, "osd/ter/ter_claw_s_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_claw_wall_1_l")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(52.838691, 543.330263, 496.545141), MAT_Vector3(166.359256, -18.140566, -18.557134))
  Node_ParseIniFile(node36, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_claw_wall_2_l")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(18.262437, 438.150191, 516.372341), MAT_Vector3(-157.686202, -3.276691, -26.575482))
  Node_ParseIniFile(node37, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_claw_wall_3_l")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(45.84121, 372.965623, 516.316456), MAT_Vector3(96.937879, 25.601578, 15.469177))
  Node_ParseIniFile(node38, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_claw_wall_4_l")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(130.770405, 562.765959, 481.724635), MAT_Vector3(128.045517, -26.591606, -17.696666))
  Node_ParseIniFile(node39, "osd/ter/ter_claw_l_02.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_claw_doo_1")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(153.085981, 259.067127, 504.2767), MAT_Vector3(80.957768, 17.202445, 8.635085))
  Node_ParseIniFile(node40, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_claw_doo_2")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(266.318287, 291.141127, 476.990552), MAT_Vector3(-89.725798, 12.82052, 6.69917))
  Node_ParseIniFile(node41, "osd/ter/ter_claw_l_01.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node42)
  Node_ParseIniFile(node42, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node42, "map/3H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node43)
  Node_ParseIniFile(node43, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node43, "map/3H1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node44)
  Node_ParseIniFile(node44, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node44, "map/3H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_fx_plant", "org_grass_l_1")
  Node_AddSon(node7, node45)
  Node_ParseIniFile(node45, "osd/fx_plant/org_grass_l.osd")
  FX_Plant_SetMap(node45, "map/3H1/Terrain/org_grass_l.tga")
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node46)
  Node_ParseIniFile(node46, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node46, "map/3H1/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "org_fungus_l_1")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1041.930991, 321.370675, 175.687765), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node47, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "org_fungus_m_1")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(808.012958, 2363.825417, 111.816418), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/fungus/org_fungus_m.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "org_fungus_l_2")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(766.144414, 2380.389974, 115.062566), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/fungus/org_fungus_l.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node50)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node50, node51)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node50, node52)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node52, node53)
  PatrolArea_SetPosition(node53, MAT_Vector3(819.432494, 421.409087, 311.259927))
  PatrolArea_SetRadius(node53, 500)
  PatrolArea_SetMinZ(node53, -140)
  PatrolArea_SetMaxZ(node53, 190)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_PatrolArea", "FollowArea_2")
  Node_AddSon(node52, node54)
  PatrolArea_SetPosition(node54, MAT_Vector3(3098.684728, 3330.666665, 307.003055))
  PatrolArea_SetRadius(node54, 612)
  PatrolArea_SetMinZ(node54, -210)
  PatrolArea_SetMaxZ(node54, 190)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node52, node55)
  PatrolArea_SetPosition(node55, MAT_Vector3(3098.685, 3330.667, 307.0031))
  PatrolArea_SetRadius(node55, 112)
  PatrolArea_SetMinZ(node55, -50)
  PatrolArea_SetMaxZ(node55, 50)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_PatrolArea", "TriggerArea_2")
  Node_AddSon(node52, node56)
  PatrolArea_SetPosition(node56, MAT_Vector3(3098.685, 3330.667, 307.0031))
  PatrolArea_SetRadius(node56, 512)
  PatrolArea_SetMinZ(node56, -210)
  PatrolArea_SetMaxZ(node56, 190)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node52, node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node57, node58)
  Position_SetPosition(node58, MAT_Vector3(926.284965, 502.468765, 377.592364))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node57, node59)
  Position_SetPosition(node59, MAT_Vector3(869.063977, 512.493073, 377.008006))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Path", "DockPath_2")
  Node_AddSon(node52, node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node60, node61)
  Position_SetPosition(node61, MAT_Vector3(838.960982, 529.116234, 377.337101))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node60, node62)
  Position_SetPosition(node62, MAT_Vector3(800.08673, 544.618714, 377.920657))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_PatrolArea", "DockArea_1")
  Node_AddSon(node52, node63)
  PatrolArea_SetPosition(node63, MAT_Vector3(895.362853, 501.55802, 383.373078))
  PatrolArea_SetRadius(node63, 50)
  PatrolArea_SetMinZ(node63, -20)
  PatrolArea_SetMaxZ(node63, 20)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "FreighterPath_1")
  Node_AddSon(node52, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(1081.211049, 4031.940891, 336.33259))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(-45.510513, 2912.305212, 335.154047))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node50, node67)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node50, node68)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node50, node69)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node69, node70)
  Body_SetCS(node70, MAT_Vector3(835.072659, 491.052778, 379.556915), MAT_Vector3(-65.153985, 0, 0))
  Node_ParseIniFile(node70, "osd/pla/pla_ship2.osd")
  Body_SetFriendOrFoeID(node70, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_vessel", "mer_scout1_wide_1")
  Node_AddSon(node69, node71)
  Body_SetCS(node71, MAT_Vector3(1228.316047, 243.537364, 331.199785), MAT_Vector3(71.493018, 0, 0))
  Node_ParseIniFile(node71, "osd/mer/mer_scout1_at_big.osd")
  Body_SetFriendOrFoeID(node71, 1)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_vessel", "mer_scout1_wide_2")
  Node_AddSon(node69, node72)
  Body_SetCS(node72, MAT_Vector3(931.31497, 41.923923, 373.482385), MAT_Vector3(2.614412, 0, 0))
  Node_ParseIniFile(node72, "osd/mer/mer_scout1_at_big.osd")
  Body_SetFriendOrFoeID(node72, 1)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_vessel", "mer_scout1_wide_3")
  Node_AddSon(node69, node73)
  Body_SetCS(node73, MAT_Vector3(544.266842, 976.397516, 348.780995), MAT_Vector3(-152.048255, 0, 0))
  Node_ParseIniFile(node73, "osd/mer/mer_scout1_at_big.osd")
  Body_SetFriendOrFoeID(node73, 1)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node69, node74)
  Body_SetCS(node74, MAT_Vector3(845.891558, 522.197084, 380.636156), MAT_Vector3(-60.83664, 0, 0))
  Node_ParseIniFile(node74, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node69, node75)
  Body_SetCS(node75, MAT_Vector3(864.012112, 498.361961, 376.516618), MAT_Vector3(-42.331881, 0, 0))
  Node_ParseIniFile(node75, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_vessel", "gen_freighter_1")
  Node_AddSon(node69, node76)
  Body_SetCS(node76, MAT_Vector3(1200.735795, 4141.826599, 334.319722), MAT_Vector3(133.614586, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_freighter.osd")
  Body_SetFriendOrFoeID(node76, 3)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, 1124, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_vessel", "mer_bomber_2")
  Node_AddSon(node69, node77)
  Body_SetCS(node77, MAT_Vector3(3080.137642, 3334.634362, 296.728168), MAT_Vector3(62.553905, 0, 0))
  Node_ParseIniFile(node77, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node77, 1)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_waypoint", "nav_attack_1")
  Node_AddSon(node69, node78)
  Body_SetPosition(node78, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node78, 5)
  Node_ParseIniFile(node78, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node69, node79)
  Body_SetPosition(node79, MAT_Vector3(699.701155, 302.479897, 370.813683))
  WayPoint_SetRadius(node79, 50)
  Node_ParseIniFile(node79, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node69, node80)
  Body_SetPosition(node80, MAT_Vector3(925.464627, 579.326159, 332.636749))
  WayPoint_SetRadius(node80, 50)
  Node_ParseIniFile(node80, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_2")
  Node_AddSon(node69, node81)
  Body_SetPosition(node81, MAT_Vector3(865.201344, 860.766091, 242.177791))
  WayPoint_SetRadius(node81, 50)
  Node_ParseIniFile(node81, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_3")
  Node_AddSon(node69, node82)
  Body_SetPosition(node82, MAT_Vector3(1169.046804, 1522.049483, 378.097249))
  WayPoint_SetRadius(node82, 50)
  Node_ParseIniFile(node82, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_4")
  Node_AddSon(node69, node83)
  Body_SetPosition(node83, MAT_Vector3(2278.903507, 3474.181204, 226.198029))
  WayPoint_SetRadius(node83, 50)
  Node_ParseIniFile(node83, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node84)
  Camera_SetBackPlane(node84, 750)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node85)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node85, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node85, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node87, node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node88, node89)
  Position_SetPosition(node89, MAT_Vector3(800.0867, 544.6187, 377.9207))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node88, node90)
  Position_SetPosition(node90, MAT_Vector3(891.311265, 513.680411, 377.3371))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node87, node91)
  Position_SetPosition(node91, MAT_Vector3(855.516103, 549.020024, 340.194391))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node85, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node92, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Director", "Director_2")
  Node_AddSon(node92, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node85, node95)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node85, node96)
  Node_EnterSimulation(node96)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, F)
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
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (o1587.Value ~= True) then
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
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (o1610.Value == True) then
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
end, SetStateValue_Destroyed = function(L0, L1)
  o34.SetStateValue(L1)
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
  o1610.StartCalculate()
end, SetStateValue = function(L0)
  if not (o34.Value == L0) then
    o34["Value"] = L0
    o1610.ReCalculate()
  end
end }
S_o85 = { [nil] = {}, Start = function(L0)

end }
S_o131 = { [nil] = {}, Start = function(L0)

end }
S_o177 = { [nil] = {}, Start = function(L0)

end }
S_o223 = { [nil] = {}, Start = function(L0)

end }
S_o269 = { [nil] = {}, Start = function(L0)

end }
S_o315 = { [nil] = {}, Start = function(L0)

end }
S_o361 = { [nil] = {}, Start = function(L0)

end }
S_o407 = { [nil] = {}, Start = function(L0)

end }
S_o453 = { [nil] = {}, Start = function(L0)

end }
S_o499 = { [nil] = {}, Start = function(L0)

end }
S_o545 = { [nil] = {}, Start = function(L0)

end }
S_o591 = { [nil] = {}, Start = function(L0)

end }
S_o637 = { [nil] = {}, Start = function(L0)

end }
S_o683 = { [nil] = {}, Start = function(L0)

end }
S_o729 = { [nil] = {}, Start = function(L0)

end }
S_o775 = { [nil] = {}, Start = function(L0)

end }
S_o821 = { [nil] = {}, Start = function(L0)

end }
S_o867 = { [nil] = {}, Start = function(L0)

end }
S_o913 = { [nil] = {}, Start = function(L0)

end }
S_o959 = { [nil] = {}, Start = function(L0)

end }
S_o1005 = { [nil] = {}, Start = function(L0)

end }
S_o1051 = { [nil] = {}, Start = function(L0)

end }
S_o1097 = { [nil] = {}, Start = function(L0)

end }
S_o1143 = { [nil] = {}, Start = function(L0)

end }
S_o1189 = { [nil] = {}, Start = function(L0)

end }
S_o1235 = { [nil] = {}, Start = function(L0)

end }
S_o1281 = { [nil] = {}, Start = function(L0)

end }
S_o1327 = { [nil] = {}, Start = function(L0)

end }
S_o1373 = { [nil] = {}, Start = function(L0)

end }
S_o1419 = { [nil] = {}, Start = function(L0)

end }
S_o1465 = { [nil] = {}, Start = function(L0)

end }
S_o1511 = { [nil] = {}, Start = function(L0)

end }
o1557 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_2", "/Scenario_Dynamic/Navigation/DockArea_1")
S_o1558 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "ammo_shell", 9999)
  Body_AddItem(L0.Node, "torpedo_threshershark", 4)
  Body_AddItem(L0.Node, "torpedo_flashshark", 2)
  Body_AddItem(L0.Node, "device_repair1", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 12)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  CallFunction(o1558, "Code11")
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
o1572 = { [nil] = {}, GetCalculated = function()
  if not (o1731.Value ~= True) then
    if not (o1619.Value ~= True) then
      if not (o1675.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o1572.SetStateValue(o1572.GetCalculated())
end, StartCalculate = function()
  o1572["Value"] = o1572.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o1558.Node, 212)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(2103, -1, -1)
  Game_SetWayPoint(GetGameNode(), o2017.Node)
  Game_PlayMusic(GetGameNode(), "track4")
end, SetStateValue = function(L0)
  if not (o1572.Value == L0) then
    DelayedFunction(2, o1572, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1572.Value == L0) then
    o1572["Value"] = L0
    if not (L0 ~= 1) then
      o1572.ChangeTo1()
    end
  end
end }
o1573 = { [nil] = {}, GetCalculated = function()
  if not (o1864.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1573.SetStateValue(o1573.GetCalculated())
end, StartCalculate = function()
  o1573["Value"] = o1573.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o1841, "Code8")
end, SetStateValue = function(L0)
  if not (o1573.Value == L0) then
    o1573["Value"] = L0
    if not (L0 ~= 1) then
      o1573.ChangeTo1()
    end
  end
end }
o1574 = { [nil] = {}, GetCalculated = function()
  if not (o1805.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1574.SetStateValue(o1574.GetCalculated())
end, StartCalculate = function()
  o1574["Value"] = o1574.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o1782, "Code8")
end, SetStateValue = function(L0)
  if not (o1574.Value == L0) then
    o1574["Value"] = L0
    if not (L0 ~= 1) then
      o1574.ChangeTo1()
    end
  end
end }
o1575 = { [nil] = {}, GetCalculated = function()
  if not (o2035.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1575.SetStateValue(o1575.GetCalculated())
end, StartCalculate = function()
  o1575["Value"] = o1575.GetCalculated()
  o1958.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o2037.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  SendRadioMessageTake(o1558.Node, o1558.Node, 207)
end, SetStateValue = function(L0)
  if not (o1575.Value == L0) then
    o1575["Value"] = L0
    o1958.ReCalculate()
    if not (L0 ~= 1) then
      o1575.ChangeTo1()
    end
  end
end }
o1576 = { [nil] = {}, GetCalculated = function()
  if not (o1961.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1576.SetStateValue(o1576.GetCalculated())
end, StartCalculate = function()
  o1576["Value"] = o1576.GetCalculated()
  o1587.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1558.Node, o1558.Node, 211)
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2101)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o1576.Value == L0) then
    DelayedFunction(3, o1576, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1576.Value == L0) then
    o1576["Value"] = L0
    o1587.ReCalculate()
    if not (L0 ~= 1) then
      o1576.ChangeTo1()
    end
  end
end }
o1577 = { [nil] = {}, GetCalculated = function()
  if not (o1913.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1577.SetStateValue(o1577.GetCalculated())
end, StartCalculate = function()
  o1577["Value"] = o1577.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1558.Node, o1558.Node, 214)
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2102)
end, SetStateValue = function(L0)
  if not (o1577.Value == L0) then
    DelayedFunction(1, o1577, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1577.Value == L0) then
    o1577["Value"] = L0
    if not (L0 ~= 1) then
      o1577.ChangeTo1()
    end
  end
end }
o1578 = { [nil] = {}, GetCalculated = function()
  if not (o1905.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1578.SetStateValue(o1578.GetCalculated())
end, StartCalculate = function()
  o1578["Value"] = o1578.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 1, 0, 0)
end, SetStateValue = function(L0)
  if not (o1578.Value == L0) then
    DelayedFunction(1, o1578, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1578.Value == L0) then
    o1578["Value"] = L0
    if not (L0 ~= 1) then
      o1578.ChangeTo1()
    end
  end
end }
o1579 = { [nil] = {}, GetCalculated = function()
  if not (o1961.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1579.SetStateValue(o1579.GetCalculated())
end, StartCalculate = function()
  o1579["Value"] = o1579.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1558.Node, o1558.Node, 213)
end, SetStateValue = function(L0)
  if not (o1579.Value == L0) then
    DelayedFunction(15, o1579, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1579.Value == L0) then
    o1579["Value"] = L0
    if not (L0 ~= 1) then
      o1579.ChangeTo1()
    end
  end
end }
o1580 = { [nil] = {}, GetCalculated = function()
  if not (o2040.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1580.SetStateValue(o1580.GetCalculated())
end, StartCalculate = function()
  o1580["Value"] = o1580.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o2012.Node)
  Game_PlayMusic(GetGameNode(), "track3")
end, SetStateValue = function(L0)
  if not (o1580.Value == L0) then
    o1580["Value"] = L0
    if not (L0 ~= 1) then
      o1580.ChangeTo1()
    end
  end
end }
o1581 = { [nil] = {}, GetCalculated = function()
  if not (o2013.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1581.SetStateValue(o1581.GetCalculated())
end, StartCalculate = function()
  o1581["Value"] = o1581.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1558.Node, o1558.Node, 208)
end, SetStateValue = function(L0)
  if not (o1581.Value == L0) then
    DelayedFunction(2, o1581, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1581.Value == L0) then
    o1581["Value"] = L0
    if not (L0 ~= 1) then
      o1581.ChangeTo1()
    end
  end
end }
o1582 = { [nil] = {}, GetCalculated = function()
  if not (o1966.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1582.SetStateValue(o1582.GetCalculated())
end, StartCalculate = function()
  o1582["Value"] = o1582.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o1558.Node, o1558.Node, 209)
end, SetStateValue = function(L0)
  if not (o1582.Value == L0) then
    DelayedFunction(3, o1582, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1582.Value == L0) then
    o1582["Value"] = L0
    if not (L0 ~= 1) then
      o1582.ChangeTo1()
    end
  end
end }
o1583 = { [nil] = {}, GetCalculated = function()
  if not (o2020.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1583.SetStateValue(o1583.GetCalculated())
end, StartCalculate = function()
  o1583["Value"] = o1583.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o2022.Node)
end, SetStateValue = function(L0)
  if not (o1583.Value == L0) then
    o1583["Value"] = L0
    if not (L0 ~= 1) then
      o1583.ChangeTo1()
    end
  end
end }
o1584 = { [nil] = {}, GetCalculated = function()
  if not (o2025.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1584.SetStateValue(o1584.GetCalculated())
end, StartCalculate = function()
  o1584["Value"] = o1584.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o2027.Node)
end, SetStateValue = function(L0)
  if not (o1584.Value == L0) then
    o1584["Value"] = L0
    if not (L0 ~= 1) then
      o1584.ChangeTo1()
    end
  end
end }
o1585 = { [nil] = {}, GetCalculated = function()
  if not (o2030.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1585.SetStateValue(o1585.GetCalculated())
end, StartCalculate = function()
  o1585["Value"] = o1585.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o2032.Node)
end, SetStateValue = function(L0)
  if not (o1585.Value == L0) then
    o1585["Value"] = L0
    if not (L0 ~= 1) then
      o1585.ChangeTo1()
    end
  end
end }
o1587 = { [nil] = {}, GetCalculated = function()
  if not (o1576.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1587.SetStateValue(o1587.GetCalculated())
end, StartCalculate = function()
  o1587["Value"] = o1587.GetCalculated()
  o3.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track4")
end, SetStateValue = function(L0)
  if not (o1587.Value == L0) then
    o1587["Value"] = L0
    o3.ReCalculate()
    if not (L0 ~= 1) then
      o1587.ChangeTo1()
    end
  end
end }
o1610 = { [nil] = {}, GetCalculated = function()
  if not (o34.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1610.SetStateValue(o1610.GetCalculated())
end, StartCalculate = function()
  o1610["Value"] = o1610.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
  SendRadioMessageTake(o1558.Node, o1558.Node, 210)
end, SetStateValue = function(L0)
  if not (o1610.Value == L0) then
    o1610["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o1610.ChangeTo1()
    end
  end
end }
S_o1614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1614, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o1614, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "har_front", "pla", "", "", 15, 1, "Code5")
  else
    CallFunction(o1614, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o1619.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      L1 = 0
    end
  end
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1619 = { [nil] = {}, Start = function()
  o1619["Value"] = False
  o1572.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1619.Value == L0) then
    o1619["Value"] = L0
    o1572.ReCalculate()
  end
end }
S_o1670 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1670, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1670, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1670, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "har_front", "wng", "pla", "", 15, 1, "Code4")
  else
    CallFunction(o1670, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1675.SetStateValue(L1)
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
o1675 = { [nil] = {}, Start = function()
  o1675["Value"] = False
  o1572.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1675.Value == L0) then
    o1675["Value"] = L0
    o1572.ReCalculate()
  end
end }
S_o1726 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1726, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1726, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1726, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "har_back", "wng", "pla", "", 15, 1, "Code4")
  else
    CallFunction(o1726, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Destroyed = function(L0, L1)
  o1731.SetStateValue(L1)
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
o1731 = { [nil] = {}, Start = function()
  o1731["Value"] = False
  o1572.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1731.Value == L0) then
    o1731["Value"] = L0
    o1572.ReCalculate()
  end
end }
S_o1782 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1782, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1782, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1782, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1782, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 15, 1, "Code5")
  else
    CallFunction(o1782, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 20, 0.8, "Code6")
  else
    CallFunction(o1782, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1782, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1782, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o1782, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code10")
  else
    CallFunction(o1782, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1557, nil, 1e+32, "Code11")
  else
    CallFunction(o1782, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_KineticShield10 = function(L0, L1)
  o1805.SetStateValue(L1)
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
o1805 = { [nil] = {}, Start = function()
  o1805["Value"] = False
  o1574.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1805.Value == L0) then
    o1805["Value"] = L0
    o1574.ReCalculate()
  end
end }
S_o1841 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1841, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1841, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1841, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o1841, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.ClearArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 15, 1, "Code5")
  else
    CallFunction(o1841, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 20, 0.1, "Code6")
  else
    CallFunction(o1841, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1841, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1841, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o1841, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code10")
  else
    CallFunction(o1841, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o1557, nil, 1e+32, "Code11")
  else
    CallFunction(o1841, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_KineticShield10 = function(L0, L1)
  o1864.SetStateValue(L1)
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
o1864 = { [nil] = {}, Start = function()
  o1864["Value"] = False
  o1573.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1864.Value == L0) then
    o1864["Value"] = L0
    o1573.ReCalculate()
  end
end }
S_o1900 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1900, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1900, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1900, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_DeactivateTurningInEmp(L0.Node)
  CallFunction(o1900, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/FreighterPath_1", 0.3, 2 } }("Code5")
  else
    CallFunction(o1900, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o1905.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o1913.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1902.Value ~= True) then
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
o1902 = { [nil] = {}, GetCalculated = function()
  if not (o1961.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1902.SetStateValue(o1902.GetCalculated())
end, StartCalculate = function()
  o1902["Value"] = o1902.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1902.Value == L0) then
    o1902["Value"] = L0
    CallFunction(o1900, "ProcesseStateChange")
  end
end }
o1905 = { [nil] = {}, Start = function()
  o1905["Value"] = False
  o1578.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1905.Value == L0) then
    o1905["Value"] = L0
    o1578.ReCalculate()
  end
end }
o1913 = { [nil] = {}, Start = function()
  o1913["Value"] = False
  o1577.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1913.Value == L0) then
    o1913["Value"] = L0
    o1577.ReCalculate()
  end
end }
S_o1956 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Vessel_Taunt_Deactivate(L0.Node)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1956, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1956, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code4")
  else
    CallFunction(o1956, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/TriggerArea_2", "/Scenario_Dynamic/Navigation/FollowArea_2", "player1", "", "", "", 1, "Code5")
  else
    CallFunction(o1956, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o1961.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o1966.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o1958.Value ~= True) then
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
o1958 = { [nil] = {}, GetCalculated = function()
  if not (o1575.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1958.SetStateValue(o1958.GetCalculated())
end, StartCalculate = function()
  o1958["Value"] = o1958.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1958.Value == L0) then
    o1958["Value"] = L0
    CallFunction(o1956, "ProcesseStateChange")
  end
end }
o1961 = { [nil] = {}, Start = function()
  o1961["Value"] = False
  o1576.StartCalculate()
  o1579.StartCalculate()
  o1902.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1961.Value == L0) then
    o1961["Value"] = L0
    o1576.ReCalculate()
    o1579.ReCalculate()
    o1902.ReCalculate()
  end
end }
o1966 = { [nil] = {}, Start = function()
  o1966["Value"] = False
  o1582.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1966.Value == L0) then
    o1966["Value"] = L0
    o1582.ReCalculate()
  end
end }
S_o2012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o1956.Node)
  CallFunction(o2012, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Activated = function(L0, L1)
  o2013.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2013 = { [nil] = {}, Start = function()
  o2013["Value"] = False
  o1581.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2013.Value == L0) then
    o2013["Value"] = L0
    o1581.ReCalculate()
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
  o1583.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2020.Value == L0) then
    o2020["Value"] = L0
    o1583.ReCalculate()
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
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o2022, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2025.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2025 = { [nil] = {}, Start = function()
  o2025["Value"] = False
  o1584.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2025.Value == L0) then
    o2025["Value"] = L0
    o1584.ReCalculate()
  end
end }
S_o2027 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2027, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2030.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2030 = { [nil] = {}, Start = function()
  o2030["Value"] = False
  o1585.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2030.Value == L0) then
    o2030["Value"] = L0
    o1585.ReCalculate()
  end
end }
S_o2032 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2032, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2035.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2035 = { [nil] = {}, Start = function()
  o2035["Value"] = False
  o1575.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2035.Value == L0) then
    o2035["Value"] = L0
    o1575.ReCalculate()
  end
end }
S_o2037 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o2037, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o2040.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o2040 = { [nil] = {}, Start = function()
  o2040["Value"] = False
  o1580.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2040.Value == L0) then
    o2040["Value"] = L0
    o1580.ReCalculate()
  end
end }
S_o2042 = { [nil] = {}, Start = function(L0)

end }
S_o2043 = { [nil] = {}, Start = function(L0)

end }
o2045 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o2046 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "track3")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o2046, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o2046, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  FormationLib.PlaceFormationPath(o2044, o2045, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o2046, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2044, o2045, "/InGameSequences/Navigation/PlayerPath_1", "pos_2", "pos_1", 1, 1, "Code10")
  else
    CallFunction(o2046, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  CallFunction(o2046, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code12")
  else
    CallFunction(o2046, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  CallFunction(o2046, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o2046, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  SED_SetTaskTextKey(2100, -1, -1)
  SendRadioMessageTake(o1841.Node, o1558.Node, 204)
  SendRadioMessageTake(o1782.Node, o1558.Node, 205)
  SendRadioMessageTake(o1558.Node, o1558.Node, 206)
  CallFunction(o2046, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2051 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code1")
  else
    CallFunction(o2051, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o1558.Node, o1558.Node, 203)
  CallFunction(o2051, "Code2")
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
  Game_LoadProgress_Enter(Node_Find("/"), 96)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o34.Start()
  o85 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_1", S_o85)
  o131 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_1", S_o131)
  o177 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_2", S_o177)
  o223 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_2", S_o223)
  o269 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_3", S_o269)
  o315 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_3", S_o315)
  o361 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_4", S_o361)
  o407 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_4", S_o407)
  o453 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_5", S_o453)
  o499 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_5", S_o499)
  o545 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_6", S_o545)
  o591 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_6", S_o591)
  o637 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_7", S_o637)
  o683 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_8", S_o683)
  o729 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_8", S_o729)
  o775 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_7", S_o775)
  o821 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_01_1", S_o821)
  o867 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_2", S_o867)
  o913 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_1", S_o913)
  o959 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_l_02_3", S_o959)
  o1005 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_s_02_1", S_o1005)
  o1051 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_wall_1_s", S_o1051)
  o1097 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_wall_2_s", S_o1097)
  o1143 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_wall_1_l", S_o1143)
  o1189 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_wall_2_l", S_o1189)
  o1235 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_wall_3_l", S_o1235)
  o1281 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_wall_4_l", S_o1281)
  o1327 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_doo_1", S_o1327)
  o1373 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_claw_doo_2", S_o1373)
  o1419 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_1", S_o1419)
  o1465 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_m_1", S_o1465)
  o1511 = BindEasy(Node_Find("/Scenario_Static/Object"), "org_fungus_l_2", S_o1511)
  o1558 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o1558)
  o1614 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_1", S_o1614)
  o1619.Start()
  o1670 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_2", S_o1670)
  o1675.Start()
  o1726 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_3", S_o1726)
  o1731.Start()
  o1782 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o1782)
  o1805.Start()
  o1841 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o1841)
  o1864.Start()
  o1900 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_freighter_1", S_o1900)
  o1905.Start()
  o1913.Start()
  o1956 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_2", S_o1956)
  o1961.Start()
  o1966.Start()
  o2012 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_1", S_o2012)
  o2013.Start()
  o2017 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o2017)
  o2020.Start()
  o2022 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o2022)
  o2025.Start()
  o2027 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_2", S_o2027)
  o2030.Start()
  o2032 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_3", S_o2032)
  o2035.Start()
  o2037 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_4", S_o2037)
  o2040.Start()
  o2042 = BindEasy(Node_Find("/"), "Camera", S_o2042)
  o2043 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o2043)
  o2046 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_1", S_o2046)
  o2051 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_2", S_o2051)
  o2044 = { {}, o1558 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
