-- dekompiliert aus 6h3.sco
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
  Terrain_LoadTerrain(node1, "map/6H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/6H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/6H3/Lmsh/", "map/6H3/Ltex/")
  Game_SetTerrainDepth(node0, 1867)
  Game_SetDecompressionHeight(node0, 512)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.094118, 0.105882, 0.129412)
  Game_SetParallelLightT(node0, 0.184314, 0.215686, 0.258824)
  Game_SetParallelLightB(node0, 0.094118, 0.105882, 0.129412)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_6h3.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_6H3.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_grabsuche.sam", 0)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/6H3/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_fx_rays", "fx_rays_6H2_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_rays/fx_rays_6H2.osd")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_sky", "fx_sky_6H2_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_sky/fx_sky_6H2.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_flare", "fx_flare_6H2_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_flare/fx_flare_6H2.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2861.971413, 608.631441, 418.172477), MAT_Vector3(50.848198, 0, 0))
  Node_ParseIniFile(node12, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node12, 2)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "Angel_angelrock_l_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(852.3332, 3211.857, 55.21656), MAT_Vector3(-52.76851, 0, 0))
  Node_ParseIniFile(node13, "osd/ter/ter_angelrock_l.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "Angel_angelrock_m_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(836.9034, 2915.527, 41.02493), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/ter/ter_angelrock_m.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "Angel_angel_front_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(822, 3100, 50), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node15, "osd/ter/ter_angel_front.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "Angel_angel_back_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(822, 3100, 50), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node16, "osd/ter/ter_angel_back.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "Angel_tor_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(593.6521, 3091.469, 53.22867), MAT_Vector3(89.26239, 0, 0))
  Node_ParseIniFile(node17, "osd/ter/ter_tor.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_angelrock_l_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1418.290399, 2176.748688, 61.055017), MAT_Vector3(-142.140317, 0, 0))
  Node_ParseIniFile(node18, "osd/ter/ter_angelrock_l.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_angelrock_m_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(869.358661, 2268.892816, 70.141837), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_angelrock_m.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_angelrock_l_2")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2221.58284, 1356.068869, 65.728219), MAT_Vector3(-68.718412, 1.023915, -0.515546))
  Node_ParseIniFile(node20, "osd/ter/ter_angelrock_l.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_angelrock_m_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2131.491746, 1943.704591, 66.425125), MAT_Vector3(89.923515, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_angelrock_m.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1615.69358, 2236.337314, 64.639426), MAT_Vector3(-4.90421, 4.883361, -8.746624))
  Node_ParseIniFile(node22, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1795.130352, 1314.233526, 60.501624), MAT_Vector3(-1.401991, 7.090403, -4.000042))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1685.474452, 3412.642446, 57.811925), MAT_Vector3(-156.468069, 0.7598, -2.759243))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2904.015284, 1054.311365, 303.075879), MAT_Vector3(146.749508, 1.212453, 1.595622))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(794.126461, 3510.177145, 52.492814), MAT_Vector3(146.7495, 1.212453, 1.595622))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1180.662134, 2983.99921, 52.313447), MAT_Vector3(173.288635, -7.141063, -2.992408))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_l_01_7")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2523.82055, 2992.653983, 264.140972), MAT_Vector3(-135.737809, -5.392869, -4.634175))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1569.991743, 2033.21804, 78.227495), MAT_Vector3(47.34038, -0.725479, -1.871836))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1764.381381, 1335.409966, -32.177369), MAT_Vector3(99.610351, -5.727976, 2.359051))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(842.77848, 2621.367004, 64.175939), MAT_Vector3(97.212253, -1.547097, 1.761515))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_l_02_4")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2982.33523, 833.823076, 286.859441), MAT_Vector3(145.02636, -1.585646, 0.802081))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_megalith_l_02_5")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(744.447857, 3626.61981, 126.142951), MAT_Vector3(144.015582, -0.138601, 0.592171))
  Node_ParseIniFile(node33, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_l_02_6")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2691.391373, 3104.955709, 208.940264), MAT_Vector3(143.145029, 1.646034, -1.468577))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_l_02_7")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2753.483257, 2662.628889, 253.932576), MAT_Vector3(143.010058, 1.73691, -1.676372))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1740.950465, 2092.461162, 85.544147), MAT_Vector3(40.058772, -0.911976, -3.563756))
  Node_ParseIniFile(node36, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2342.632782, 1823.159432, 45.566141), MAT_Vector3(-82.280976, -5.754714, -3.556739))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1869.120405, 2745.262474, -0.202851), MAT_Vector3(-83.000313, -7.116938, -1.340229))
  Node_ParseIniFile(node38, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(3152.391301, 1172.546095, 192.775423), MAT_Vector3(65.325065, -7.116938, -1.340229))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(622.912555, 3456.48593, 1.850524), MAT_Vector3(62.535599, -5.663977, 3.248772))
  Node_ParseIniFile(node40, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_megalith_l_03_6")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1229.367577, 3184.303269, -9.078581), MAT_Vector3(34.317475, -6.404481, 4.47532))
  Node_ParseIniFile(node41, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_megalith_l_03_7")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2651.728925, 2810.858354, 261.725431), MAT_Vector3(33.370991, -5.151015, 5.644518))
  Node_ParseIniFile(node42, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_megalith_m_01_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1664.780738, 2231.259332, 83.453675), MAT_Vector3(57.362987, 1.036276, 1.784851))
  Node_ParseIniFile(node43, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(2406.401589, 1840.468104, 73.410116), MAT_Vector3(44.458368, 1.036276, 1.784851))
  Node_ParseIniFile(node44, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2093.430764, 2741.129669, 142.486924), MAT_Vector3(55.374419, -16.443665, -13.072338))
  Node_ParseIniFile(node45, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(799.233588, 2623.624946, 55.883146), MAT_Vector3(27.771678, -13.002008, 2.702583))
  Node_ParseIniFile(node46, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_megalith_m_01_5")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(770.863031, 2973.362479, 31.651207), MAT_Vector3(-177.751925, -4.570689, 5.786314))
  Node_ParseIniFile(node47, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_megalith_m_01_6")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1128.13408, 3018.758185, 48.386577), MAT_Vector3(-130.213771, -2.7291, 3.863246))
  Node_ParseIniFile(node48, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_megalith_m_01_7")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1277.127083, 3185.958845, 51.364049), MAT_Vector3(-83.876677, 0.584881, 0.54634))
  Node_ParseIniFile(node49, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1757.877072, 2150.011623, 95.996507), MAT_Vector3(-28.18791, 2.923161, -2.127546))
  Node_ParseIniFile(node50, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2159.037566, 2150.012, 153.870625), MAT_Vector3(-123.487164, 20.373246, -5.132446))
  Node_ParseIniFile(node51, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1705.755299, 3343.945206, 79.881811), MAT_Vector3(-145.637673, 4.017459, -10.230205))
  Node_ParseIniFile(node52, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1827.491334, 2688.110346, 75.566533), MAT_Vector3(129.989038, -9.758327, 2.683665))
  Node_ParseIniFile(node53, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1018.598954, 3210.630541, 48.904262), MAT_Vector3(127.400442, -7.545248, 5.831928))
  Node_ParseIniFile(node54, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(675.833818, 3028.073184, 41.34927), MAT_Vector3(75.169585, -6.361614, 7.642967))
  Node_ParseIniFile(node55, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_megalith_m_02_7")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1187.105673, 3176.701842, 49.99471), MAT_Vector3(91.207633, -2.693507, 8.391771))
  Node_ParseIniFile(node56, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1620.771562, 2271.883187, 94.401326), MAT_Vector3(1.305586, -1.072693, 2.195476))
  Node_ParseIniFile(node57, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1760.333607, 1374.701242, 61.935465), MAT_Vector3(-8.450561, -6.005821, -8.553124))
  Node_ParseIniFile(node58, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1796.580063, 2702.423315, 76.3511), MAT_Vector3(-8.450561, -6.005821, -8.553124))
  Node_ParseIniFile(node59, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_megalith_s_01_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(816.185576, 2648.649586, 70.372449), MAT_Vector3(-6.893742, -7.596976, -8.633665))
  Node_ParseIniFile(node60, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_megalith_s_01_5")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1116.266001, 3161.345684, 58.449507), MAT_Vector3(-6.893742, -7.596976, -8.633665))
  Node_ParseIniFile(node61, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_megalith_s_01_6")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(694.26459, 3419.708167, 48.12097), MAT_Vector3(3.559447, 5.295513, -7.51789))
  Node_ParseIniFile(node62, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_megalith_s_01_7")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1359.646427, 3184.763623, 96.548523), MAT_Vector3(3.559447, 5.295513, -7.51789))
  Node_ParseIniFile(node63, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1590.303671, 2053.529968, 89.546269), MAT_Vector3(-69.025445, 2.366188, 0.198306))
  Node_ParseIniFile(node64, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2429.748526, 1830.325097, 74.480939), MAT_Vector3(-98.278394, -12.61055, -2.796097))
  Node_ParseIniFile(node65, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1830.210008, 2752.95421, 81.775051), MAT_Vector3(97.798816, -17.988379, 5.40095))
  Node_ParseIniFile(node66, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(833.095564, 2654.738312, 71.701766), MAT_Vector3(7.629639, 0.587605, -6.576171))
  Node_ParseIniFile(node67, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_megalith_s_02_5")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(806.772223, 3161.345684, 53.479828), MAT_Vector3(6.417578, -0.921645, -6.477652))
  Node_ParseIniFile(node68, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_megalith_s_02_6")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(853.121618, 3491.202876, 32.870159), MAT_Vector3(10.016107, 3.537538, -6.862145))
  Node_ParseIniFile(node69, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_megalith_s_02_7")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1379.121599, 2950.547801, 84.08868), MAT_Vector3(5.041922, -7.023648, -3.257254))
  Node_ParseIniFile(node70, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(1563.221101, 2067.071252, 89.735985), MAT_Vector3(-125.908818, 0.470265, 0.892118))
  Node_ParseIniFile(node71, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2299.939095, 1801.091492, 66.522952), MAT_Vector3(-1.762864, 0.470265, 0.892118))
  Node_ParseIniFile(node72, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(1891.969975, 2692.741054, 92.521514), MAT_Vector3(62.186888, -20.873375, -3.627763))
  Node_ParseIniFile(node73, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(794.834986, 2653.548156, 69.218958), MAT_Vector3(-177.011848, -0.897014, 0.175804))
  Node_ParseIniFile(node74, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_megalith_s_03_5")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(987.600048, 3126.571103, 52.286707), MAT_Vector3(-177.0118, -0.897014, 0.175804))
  Node_ParseIniFile(node75, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_megalith_s_03_6")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(668.816334, 3574.661872, 152.198532), MAT_Vector3(-172.098845, -6.994907, 0.405804))
  Node_ParseIniFile(node76, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_megalith_s_03_7")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1136.421487, 2867.336751, 82.030086), MAT_Vector3(-175.740291, 0.363584, -1.90506))
  Node_ParseIniFile(node77, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_edgering_1")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(1314.935936, 3277.400739, 87.280693), MAT_Vector3(101.063166, 0, 0))
  Node_ParseIniFile(node78, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_edgering_2")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2099.132708, 3641.330024, 147.635295), MAT_Vector3(98.036796, 2.405756, -6.843103))
  Node_ParseIniFile(node79, "osd/ter/ter_edgering.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_bridgering_m_1")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(1960.095117, 1231.046177, 105.198875), MAT_Vector3(32.436055, 0, 0))
  Node_ParseIniFile(node80, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_bridgering_m_2")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1044.259197, 1659.71801, 85.581508), MAT_Vector3(-9.153098, 6.857621, 17.388597))
  Node_ParseIniFile(node81, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_bridgering_m_3")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1056.068292, 1716.402603, 83.756636), MAT_Vector3(171.566063, 2.822989, -15.512055))
  Node_ParseIniFile(node82, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_bridgering_m_4")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1079.686877, 1788.439287, 85.58151), MAT_Vector3(-35.697683, 6.857621, 17.3886))
  Node_ParseIniFile(node83, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_bridgering_m_5")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1131.647887, 1842.761745, 80.106889), MAT_Vector3(-4.526235, 6.857621, 17.3886))
  Node_ParseIniFile(node84, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_bridgering_m_6")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2817.070352, 2539.391046, 268.829134), MAT_Vector3(-35.611259, 6.687847, 6.748928))
  Node_ParseIniFile(node85, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_bridgering_m_7")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(2791.089557, 2503.963123, 268.8291), MAT_Vector3(130.281626, 6.687847, 6.748928))
  Node_ParseIniFile(node86, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_bridgering_m_8")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2754.688311, 2482.01831, 255.364447), MAT_Vector3(111.992176, 6.687847, 6.748928))
  Node_ParseIniFile(node87, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_bridgering_l_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1293.696542, 2667.61666, 6.339445), MAT_Vector3(16.366633, 3.270343, 20.95865))
  Node_ParseIniFile(node88, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_bridgering_l_1b")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1419.825943, 3079.868094, 56.785226), MAT_Vector3(-88.704128, -6.936303, 11.445252))
  Node_ParseIniFile(node89, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(1884.472991, 2199.382141, 51.17667), MAT_Vector3(17.163489, 0, 10.31955))
  Node_ParseIniFile(node90, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1914.940891, 2126.597594, 51.17667), MAT_Vector3(-172.909857, -1.538602, -7.079648))
  Node_ParseIniFile(node91, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(2681.335048, 2971.43205, 252.251546), MAT_Vector3(-146.284631, -5.385756, -4.953176))
  Node_ParseIniFile(node92, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1005.605387, 2826.274161, 107.27782), MAT_Vector3(-150.843517, -21.734387, 82.097782))
  Node_ParseIniFile(node93, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1001.040494, 1828.727191, 121.699414), MAT_Vector3(56.744375, -0.523872, 69.633309))
  Node_ParseIniFile(node94, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(2046.557479, 2948.405983, 183.882354), MAT_Vector3(-24.29521, -69.123554, -108.537276))
  Node_ParseIniFile(node95, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_rock_l_01_4")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(905.645081, 2341.85694, 81.531351), MAT_Vector3(-134.223445, -22.535698, -114.350466))
  Node_ParseIniFile(node96, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(936.086607, 2224.434979, 89.083951), MAT_Vector3(-135.0617, -8.720996, 130.741627))
  Node_ParseIniFile(node97, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(2043.259465, 2038.402711, 40.716848), MAT_Vector3(-146.314044, 27.17983, 98.658004))
  Node_ParseIniFile(node98, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1340.234839, 2127.719804, 78.074255), MAT_Vector3(-160.082648, 3.046973, -163.463565))
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
  Body_SetCS(node100, MAT_Vector3(1683.242688, 3227.710609, 103.739939), MAT_Vector3(-17.697754, 45.65043, -136.522007))
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
  Body_SetCS(node101, MAT_Vector3(2502.316846, 2898.197536, 291.811476), MAT_Vector3(79.388619, 16.201374, -175.218952))
  Node_ParseIniFile(node101, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_rock_m_01_6")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(666.7879, 3198.989, 67.47892), MAT_Vector3(79.38862, 16.20137, -175.219))
  Node_ParseIniFile(node102, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(974.065564, 2998.530119, 54.436075), MAT_Vector3(112.445297, 20.370086, 63.278412))
  Node_ParseIniFile(node103, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1786.513525, 1378.618492, 57.618998), MAT_Vector3(112.348105, 20.311491, 63.354476))
  Node_ParseIniFile(node104, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(714.634942, 3482.990797, 67.337901), MAT_Vector3(158.285647, -31.570491, 93.43957))
  Node_ParseIniFile(node105, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_rock_s_01_4")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(2588.924577, 2756.834595, 311.621937), MAT_Vector3(70.682659, -31.57049, 93.43957))
  Node_ParseIniFile(node106, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_rock_s_01_5")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(2867.1819, 2980.124412, 324.343428), MAT_Vector3(112.538322, 7.101851, 76.106884))
  Node_ParseIniFile(node107, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_angelrock_l_3")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1318.864067, 2803.884002, -11.1249), MAT_Vector3(14.059833, 12.43044, -10.416166))
  Node_ParseIniFile(node108, "osd/ter/ter_angelrock_l.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_angelrock_m_3")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1304.608083, 2860.488727, 75.064462), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/ter/ter_angelrock_m.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_angelrock_s_1")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(1385.90685, 2639.229233, 0.325357), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/ter/ter_angelrock_s.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node111)
  Node_ParseIniFile(node111, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node111, "map/6H3/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node112)
  Node_ParseIniFile(node112, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node112, "map/6H3/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node113)
  Node_ParseIniFile(node113, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node113, "map/6H3/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node114)
  Node_ParseIniFile(node114, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node114, "map/6H3/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node115, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node115, node117)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Path", "KeyTorpedo_Path")
  Node_AddSon(node117, node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node118, node119)
  Position_SetPosition(node119, MAT_Vector3(1420, 3098, 97))
  Position_SetRadius(node119, 40)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node118, node120)
  Position_SetPosition(node120, MAT_Vector3(600, 3098, 97))
  Position_SetRadius(node120, 20)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Path", "KeyTorpedo_Path_FAKE")
  Node_AddSon(node117, node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node121, node122)
  Position_SetPosition(node122, MAT_Vector3(201.44, 138.64, 377.391172))
  Position_SetRadius(node122, 40)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node121, node123)
  Position_SetPosition(node123, MAT_Vector3(344.8, 107.92, 267.762891))
  Position_SetRadius(node123, 20)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node115, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node115, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node115, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node126, node127)
  Body_SetCS(node127, MAT_Vector3(2994.084581, 598.078917, 394.985667), MAT_Vector3(1.998192, 0, 0))
  Node_ParseIniFile(node127, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node127, 1)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node126, node128)
  Body_SetPosition(node128, MAT_Vector3(640.670942, 3160.368732, 105.007202))
  WayPoint_SetRadius(node128, 80)
  Node_ParseIniFile(node128, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node126, node129)
  Body_SetPosition(node129, MAT_Vector3(867.849148, 3082.542147, 96.87713))
  WayPoint_SetRadius(node129, 50)
  Node_ParseIniFile(node129, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_waypoint", "nav_waypoint_3")
  Node_AddSon(node126, node130)
  Body_SetPosition(node130, MAT_Vector3(1426.518534, 3100.132036, 119.02223))
  WayPoint_SetRadius(node130, 50)
  Node_ParseIniFile(node130, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node131)
  Camera_SetBackPlane(node131, 4096)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node132, node133)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node132, node134)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Path", "PlayerPath")
  Node_AddSon(node134, node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node135, node136)
  Position_SetPosition(node136, MAT_Vector3(2994.862362, 544.698844, 396.623802))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node135, node137)
  Position_SetPosition(node137, MAT_Vector3(2995.288133, 610.216413, 396.6238))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node135, node138)
  Position_SetPosition(node138, MAT_Vector3(2963.730299, 679.062262, 389.029141))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node135, node139)
  Position_SetPosition(node139, MAT_Vector3(2874.912441, 726.287258, 397.231494))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node135, node140)
  Position_SetPosition(node140, MAT_Vector3(2741.855607, 822.585575, 397.2315))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node134, node141)
  Position_SetPosition(node141, MAT_Vector3(2956.130548, 685.045359, 399.950688))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Path", "Angelgate_Cutscene_PlayerPath")
  Node_AddSon(node134, node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node142, node143)
  Position_SetPosition(node143, MAT_Vector3(658.976931, 3158.726161, 120))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node142, node144)
  Position_SetPosition(node144, MAT_Vector3(623.63866, 3129.680853, 125))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node134, node145)
  Position_SetPosition(node145, MAT_Vector3(702.088429, 3027.092388, 135.725367))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node134, node146)
  Position_SetPosition(node146, MAT_Vector3(704.38768, 3175.970373, 135.7254))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node134, node147)
  Position_SetPosition(node147, MAT_Vector3(-398.4574, 3115.394, 135.7254))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Path", "Angelhole_Cutscene_PlayerPath")
  Node_AddSon(node134, node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node148, node149)
  Position_SetPosition(node149, MAT_Vector3(848.766212, 3076.751292, 100.775717))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node148, node150)
  Position_SetPosition(node150, MAT_Vector3(872.67649, 3089.772032, 95.266605))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node134, node151)
  Position_SetPosition(node151, MAT_Vector3(818.673804, 3088.184777, 107.630636))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node134, node152)
  Position_SetPosition(node152, MAT_Vector3(891.753787, 3097.830503, 97.210997))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "LookAt_3")
  Node_AddSon(node134, node153)
  Position_SetPosition(node153, MAT_Vector3(759.163884, 3098.416977, 97.211))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node134, node154)
  Position_SetPosition(node154, MAT_Vector3(799.1639, 3098.417, 97.211))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node134, node155)
  Position_SetPosition(node155, MAT_Vector3(654.1639, 3098.417, 97.211))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Path", "AngelView_Cutscene_PlayerPath")
  Node_AddSon(node134, node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node156, node157)
  Position_SetPosition(node157, MAT_Vector3(1428.232, 3110.52, 121.5752))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node156, node158)
  Position_SetPosition(node158, MAT_Vector3(1341.366, 3096.855, 111.7839))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node134, node159)
  Position_SetPosition(node159, MAT_Vector3(1439.1639, 3098.417, 97.211))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "LookAt_4")
  Node_AddSon(node134, node160)
  Position_SetPosition(node160, MAT_Vector3(654.1639, 3098.417, 97.211))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "LookAt_5")
  Node_AddSon(node134, node161)
  Position_SetPosition(node161, MAT_Vector3(654.1639, 3098.417, 250))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node132, node162)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node162, node163)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Director", "Angelgate_Cutscene")
  Node_AddSon(node162, node164)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Director", "Angelgate_Cutscene_Audio")
  Node_AddSon(node162, node165)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Director", "Angelhole_Cutscene")
  Node_AddSon(node162, node166)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Director", "Angelhole_Cutscene_Audio")
  Node_AddSon(node162, node167)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Director", "AngelView_Cutscene")
  Node_AddSon(node162, node168)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Director", "AngelView_Cutscene_Audio")
  Node_AddSon(node162, node169)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node132, node170)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node132, node171)
  Node_EnterSimulation(node171)
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
SetEnemyMatrixElement(1, 1, F)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
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
  Game_PlayMusic(GetGameNode(), "Atmo")
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
S_o353 = { [nil] = {}, Start = function(L0)

end }
S_o399 = { [nil] = {}, Start = function(L0)

end }
S_o445 = { [nil] = {}, Start = function(L0)

end }
S_o491 = { [nil] = {}, Start = function(L0)

end }
S_o537 = { [nil] = {}, Start = function(L0)

end }
S_o583 = { [nil] = {}, Start = function(L0)

end }
S_o629 = { [nil] = {}, Start = function(L0)

end }
S_o675 = { [nil] = {}, Start = function(L0)

end }
S_o721 = { [nil] = {}, Start = function(L0)

end }
S_o767 = { [nil] = {}, Start = function(L0)

end }
S_o813 = { [nil] = {}, Start = function(L0)

end }
S_o859 = { [nil] = {}, Start = function(L0)

end }
S_o905 = { [nil] = {}, Start = function(L0)

end }
S_o951 = { [nil] = {}, Start = function(L0)

end }
S_o997 = { [nil] = {}, Start = function(L0)

end }
S_o1043 = { [nil] = {}, Start = function(L0)

end }
S_o1089 = { [nil] = {}, Start = function(L0)

end }
S_o1135 = { [nil] = {}, Start = function(L0)

end }
S_o1181 = { [nil] = {}, Start = function(L0)

end }
S_o1227 = { [nil] = {}, Start = function(L0)

end }
S_o1273 = { [nil] = {}, Start = function(L0)

end }
S_o1319 = { [nil] = {}, Start = function(L0)

end }
S_o1365 = { [nil] = {}, Start = function(L0)

end }
S_o1411 = { [nil] = {}, Start = function(L0)

end }
S_o1457 = { [nil] = {}, Start = function(L0)

end }
S_o1503 = { [nil] = {}, Start = function(L0)

end }
S_o1549 = { [nil] = {}, Start = function(L0)

end }
S_o1595 = { [nil] = {}, Start = function(L0)

end }
S_o1641 = { [nil] = {}, Start = function(L0)

end }
S_o1687 = { [nil] = {}, Start = function(L0)

end }
S_o1733 = { [nil] = {}, Start = function(L0)

end }
S_o1779 = { [nil] = {}, Start = function(L0)

end }
S_o1825 = { [nil] = {}, Start = function(L0)

end }
S_o1871 = { [nil] = {}, Start = function(L0)

end }
S_o1917 = { [nil] = {}, Start = function(L0)

end }
S_o1963 = { [nil] = {}, Start = function(L0)

end }
S_o2009 = { [nil] = {}, Start = function(L0)

end }
S_o2055 = { [nil] = {}, Start = function(L0)

end }
S_o2101 = { [nil] = {}, Start = function(L0)

end }
S_o2147 = { [nil] = {}, Start = function(L0)

end }
S_o2193 = { [nil] = {}, Start = function(L0)

end }
S_o2239 = { [nil] = {}, Start = function(L0)

end }
S_o2285 = { [nil] = {}, Start = function(L0)

end }
S_o2331 = { [nil] = {}, Start = function(L0)

end }
S_o2377 = { [nil] = {}, Start = function(L0)

end }
S_o2423 = { [nil] = {}, Start = function(L0)

end }
S_o2469 = { [nil] = {}, Start = function(L0)

end }
S_o2515 = { [nil] = {}, Start = function(L0)

end }
S_o2561 = { [nil] = {}, Start = function(L0)

end }
S_o2607 = { [nil] = {}, Start = function(L0)

end }
S_o2653 = { [nil] = {}, Start = function(L0)

end }
S_o2699 = { [nil] = {}, Start = function(L0)

end }
S_o2745 = { [nil] = {}, Start = function(L0)

end }
S_o2791 = { [nil] = {}, Start = function(L0)

end }
S_o2837 = { [nil] = {}, Start = function(L0)

end }
S_o2883 = { [nil] = {}, Start = function(L0)

end }
S_o2929 = { [nil] = {}, Start = function(L0)

end }
S_o2975 = { [nil] = {}, Start = function(L0)

end }
S_o3021 = { [nil] = {}, Start = function(L0)

end }
S_o3067 = { [nil] = {}, Start = function(L0)

end }
S_o3113 = { [nil] = {}, Start = function(L0)

end }
S_o3159 = { [nil] = {}, Start = function(L0)

end }
S_o3205 = { [nil] = {}, Start = function(L0)

end }
S_o3251 = { [nil] = {}, Start = function(L0)

end }
S_o3297 = { [nil] = {}, Start = function(L0)

end }
S_o3343 = { [nil] = {}, Start = function(L0)

end }
S_o3389 = { [nil] = {}, Start = function(L0)

end }
S_o3435 = { [nil] = {}, Start = function(L0)

end }
S_o3481 = { [nil] = {}, Start = function(L0)

end }
S_o3527 = { [nil] = {}, Start = function(L0)

end }
S_o3573 = { [nil] = {}, Start = function(L0)

end }
S_o3619 = { [nil] = {}, Start = function(L0)

end }
S_o3665 = { [nil] = {}, Start = function(L0)

end }
S_o3711 = { [nil] = {}, Start = function(L0)

end }
S_o3757 = { [nil] = {}, Start = function(L0)

end }
S_o3803 = { [nil] = {}, Start = function(L0)

end }
S_o3849 = { [nil] = {}, Start = function(L0)

end }
S_o3895 = { [nil] = {}, Start = function(L0)

end }
S_o3941 = { [nil] = {}, Start = function(L0)

end }
S_o3987 = { [nil] = {}, Start = function(L0)

end }
S_o4033 = { [nil] = {}, Start = function(L0)

end }
S_o4079 = { [nil] = {}, Start = function(L0)

end }
S_o4125 = { [nil] = {}, Start = function(L0)

end }
S_o4171 = { [nil] = {}, Start = function(L0)

end }
S_o4217 = { [nil] = {}, Start = function(L0)

end }
S_o4263 = { [nil] = {}, Start = function(L0)

end }
S_o4309 = { [nil] = {}, Start = function(L0)

end }
S_o4355 = { [nil] = {}, Start = function(L0)

end }
S_o4401 = { [nil] = {}, Start = function(L0)

end }
S_o4447 = { [nil] = {}, Start = function(L0)

end }
S_o4493 = { [nil] = {}, Start = function(L0)

end }
S_o4539 = { [nil] = {}, Start = function(L0)

end }
S_o4585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_key", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 5)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "ammo_rocket", 99999)
  Player_DefineKeyLocation(L0.Node, "/Scenario_Dynamic/Navigation/KeyTorpedo_Path", 740)
  CallFunction(o4585, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_KeyUsed = function(L0, L1)
  o4598.SetStateValue(L1)
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
o4598 = { [nil] = {}, Start = function()
  o4598["Value"] = False
  o4599.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4598.Value == L0) then
    o4598["Value"] = L0
    o4599.ReCalculate()
  end
end }
o4599 = { [nil] = {}, GetCalculated = function()
  if not (o4598.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4599.SetStateValue(o4599.GetCalculated())
end, StartCalculate = function()
  o4599["Value"] = o4599.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o4599.Value == L0) then
    DelayedFunction(1, o4599, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4599.Value == L0) then
    o4599["Value"] = L0
    if not (L0 ~= 1) then
      o4599.ChangeTo1()
    end
  end
end }
S_o4628 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4628, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4631.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4631 = { [nil] = {}, Start = function()
  o4631["Value"] = False
  o4665.StartCalculate()
  o4674.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4631.Value == L0) then
    o4631["Value"] = L0
    o4665.ReCalculate()
    o4674.ReCalculate()
  end
end }
S_o4633 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4633, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4636.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4636 = { [nil] = {}, Start = function()
  o4636["Value"] = False
  o4679.StartCalculate()
  o4689.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4636.Value == L0) then
    o4636["Value"] = L0
    o4679.ReCalculate()
    o4689.ReCalculate()
  end
end }
S_o4638 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4638, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4641.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4641 = { [nil] = {}, Start = function()
  o4641["Value"] = False
  o4694.StartCalculate()
  o4702.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4641.Value == L0) then
    o4641["Value"] = L0
    o4694.ReCalculate()
    o4702.ReCalculate()
  end
end }
S_o4643 = { [nil] = {}, Start = function(L0)

end }
o4645 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o4646 = { [nil] = {}, Start = function(L0)

end }
S_o4647 = { [nil] = {}, Start = function(L0)

end }
S_o4648 = { [nil] = {}, Start = function(L0)

end }
S_o4649 = { [nil] = {}, Start = function(L0)

end }
S_o4650 = { [nil] = {}, Start = function(L0)

end }
S_o4651 = { [nil] = {}, Start = function(L0)

end }
S_o4652 = { [nil] = {}, Start = function(L0)

end }
S_o4653 = { [nil] = {}, Start = function(L0)

end }
S_o4654 = { [nil] = {}, Start = function(L0)

end }
S_o4655 = { [nil] = {}, Start = function(L0)

end }
S_o4656 = { [nil] = {}, Start = function(L0)

end }
S_o4657 = { [nil] = {}, Start = function(L0)

end }
S_o4658 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  CallFunction(o4658, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code3")
  else
    CallFunction(o4658, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o4644, o4645, "/IngameSequences/Navigation/PlayerPath")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  CallFunction(o4658, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.7, "Code10")
  else
    CallFunction(o4658, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4644, o4645, "/IngameSequences/Navigation/PlayerPath", "pos_1", "pos_5", 1, 1, "Code11")
  else
    CallFunction(o4658, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  CallFunction(o4658, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code13")
  else
    CallFunction(o4658, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o4658, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 29, "Code15")
  else
    CallFunction(o4658, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Game_SetWayPoint(GetGameNode(), o4628.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  SendRadioMessageTake(o30.Node, o4585.Node, 548)
  CallFunction(o4658, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4664 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4664, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o4664, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code6")
  else
    CallFunction(o4664, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  FormationLib.PlaceFormationPath(o4644, o4645, "/IngameSequences/Navigation/Angelgate_Cutscene_PlayerPath")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0.5, "MMMN", 0)
  CallFunction(o4664, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.7, "Code12")
  else
    CallFunction(o4664, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 15, "MMMN", 0)
  CallFunction(o4664, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code14")
  else
    CallFunction(o4664, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MFMN", 0)
  CallFunction(o4664, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o4644, o4645, "/IngameSequences/Navigation/Angelgate_Cutscene_PlayerPath", "pos_1", "pos_2", 0.1, 1, "Code16")
  else
    CallFunction(o4664, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code17")
  else
    CallFunction(o4664, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Director_EndCutscene(L0.Node)
  CallFunction(o4664, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code19")
  else
    CallFunction(o4664, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o30.Node, o4585.Node, 551)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  CallFunction(o4664, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 30, "Code22")
  else
    CallFunction(o4664, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Game_SetWayPoint(GetGameNode(), o4633.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  SendRadioMessageTake(o30.Node, o4585.Node, 552)
  CallFunction(o4664, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4665.Value ~= True) then
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
o4665 = { [nil] = {}, GetCalculated = function()
  if not (o4631.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4665.SetStateValue(o4665.GetCalculated())
end, StartCalculate = function()
  o4665["Value"] = o4665.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4665.Value == L0) then
    o4665["Value"] = L0
    CallFunction(o4664, "ProcesseStateChange")
  end
end }
S_o4673 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4673, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code2")
  else
    CallFunction(o4673, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o30.Node, o4585.Node, 549)
  CallFunction(o4673, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code4")
  else
    CallFunction(o4673, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o30.Node, o4585.Node, 550)
  CallFunction(o4673, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4674.Value ~= True) then
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
o4674 = { [nil] = {}, GetCalculated = function()
  if not (o4631.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4674.SetStateValue(o4674.GetCalculated())
end, StartCalculate = function()
  o4674["Value"] = o4674.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4674.Value == L0) then
    o4674["Value"] = L0
    CallFunction(o4673, "ProcesseStateChange")
  end
end }
S_o4678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4678, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o4678, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code6")
  else
    CallFunction(o4678, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  FormationLib.PlaceFormationPath(o4644, o4645, "/IngameSequences/Navigation/Angelhole_Cutscene_PlayerPath")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 0.5, "MMMN", 0)
  CallFunction(o4678, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 9.8, "Code12")
  else
    CallFunction(o4678, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_3", 3, "MFMN", 0)
  CallFunction(o4678, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 11, "Code14")
  else
    CallFunction(o4678, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 5, "MMMN", 0)
  CallFunction(o4678, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.8, "Code16")
  else
    CallFunction(o4678, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 3, "MFMN", 0)
  CallFunction(o4678, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code19")
  else
    CallFunction(o4678, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Director_EndCutscene(L0.Node)
  CallFunction(o4678, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code21")
  else
    CallFunction(o4678, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  SendRadioMessageTake(o30.Node, o4585.Node, 555)
  CallFunction(o4678, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code23")
  else
    CallFunction(o4678, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Game_SetWayPoint(GetGameNode(), o4638.Node)
  SED_SetTaskTextKey(2101, -1, -1)
  SendRadioMessageTake(o30.Node, o4585.Node, 556)
  CallFunction(o4678, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4679.Value ~= True) then
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
o4679 = { [nil] = {}, GetCalculated = function()
  if not (o4636.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4679.SetStateValue(o4679.GetCalculated())
end, StartCalculate = function()
  o4679["Value"] = o4679.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4679.Value == L0) then
    o4679["Value"] = L0
    CallFunction(o4678, "ProcesseStateChange")
  end
end }
S_o4688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4688, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code2")
  else
    CallFunction(o4688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o30.Node, o4585.Node, 553)
  CallFunction(o4688, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 30, "Code4")
  else
    CallFunction(o4688, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o30.Node, o4585.Node, 554)
  CallFunction(o4688, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4689.Value ~= True) then
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
o4689 = { [nil] = {}, GetCalculated = function()
  if not (o4636.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4689.SetStateValue(o4689.GetCalculated())
end, StartCalculate = function()
  o4689["Value"] = o4689.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4689.Value == L0) then
    o4689["Value"] = L0
    CallFunction(o4688, "ProcesseStateChange")
  end
end }
S_o4693 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4693, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o4693, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code6")
  else
    CallFunction(o4693, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  FormationLib.PlaceFormationPath(o4644, o4645, "/IngameSequences/Navigation/AngelView_Cutscene_PlayerPath")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.5, "MMMN", 0)
  CallFunction(o4693, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.8, "Code12")
  else
    CallFunction(o4693, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_4", 3, "MMMN", 0)
  CallFunction(o4693, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code14")
  else
    CallFunction(o4693, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_ZoomTo(L0.Node, 25, 0.4, 0.4)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_5", 6, "MMMN", 0)
  CallFunction(o4693, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 30, "Code17")
  else
    CallFunction(o4693, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Director_EndCutscene(L0.Node)
  CallFunction(o4693, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 60, "Code20")
  else
    CallFunction(o4693, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  SendRadioMessageTake(o30.Node, o4585.Node, 559)
  SED_SetTaskTextKey(2102, -1, -1)
  CallFunction(o4693, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4694.Value ~= True) then
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
o4694 = { [nil] = {}, GetCalculated = function()
  if not (o4641.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4694.SetStateValue(o4694.GetCalculated())
end, StartCalculate = function()
  o4694["Value"] = o4694.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4694.Value == L0) then
    o4694["Value"] = L0
    CallFunction(o4693, "ProcesseStateChange")
  end
end }
S_o4701 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4701, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code2")
  else
    CallFunction(o4701, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o30.Node, o4585.Node, 557)
  CallFunction(o4701, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code4")
  else
    CallFunction(o4701, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o30.Node, o4585.Node, 558)
  CallFunction(o4701, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o4702.Value ~= True) then
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
o4702 = { [nil] = {}, GetCalculated = function()
  if not (o4641.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4702.SetStateValue(o4702.GetCalculated())
end, StartCalculate = function()
  o4702["Value"] = o4702.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4702.Value == L0) then
    o4702["Value"] = L0
    CallFunction(o4701, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 171)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "Angel_angelrock_l_1", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "Angel_angelrock_m_1", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "Angel_angel_front_1", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "Angel_angel_back_1", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "Angel_tor_1", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_l_1", S_o307)
  o353 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_m_1", S_o353)
  o399 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_l_2", S_o399)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_m_2", S_o445)
  o491 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o491)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o537)
  o583 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o583)
  o629 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o629)
  o675 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o675)
  o721 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o721)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_7", S_o767)
  o813 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o813)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o859)
  o905 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o905)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_4", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o997)
  o1043 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6", S_o1043)
  o1089 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_7", S_o1089)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o1135)
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_6", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_7", S_o1411)
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o1457)
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o1503)
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_5", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_6", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_7", S_o1733)
  o1779 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o1779)
  o1825 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o1871)
  o1917 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o1917)
  o1963 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o1963)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6", S_o2009)
  o2055 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_7", S_o2055)
  o2101 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o2101)
  o2147 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o2147)
  o2193 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o2193)
  o2239 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_4", S_o2239)
  o2285 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_5", S_o2285)
  o2331 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_6", S_o2331)
  o2377 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_7", S_o2377)
  o2423 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o2423)
  o2469 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o2469)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o2515)
  o2561 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o2561)
  o2607 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_5", S_o2607)
  o2653 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_6", S_o2653)
  o2699 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_7", S_o2699)
  o2745 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o2745)
  o2791 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o2791)
  o2837 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o2837)
  o2883 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o2883)
  o2929 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_5", S_o2929)
  o2975 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_6", S_o2975)
  o3021 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_7", S_o3021)
  o3067 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_1", S_o3067)
  o3113 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_edgering_2", S_o3113)
  o3159 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_1", S_o3159)
  o3205 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o3205)
  o3251 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_3", S_o3251)
  o3297 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_4", S_o3297)
  o3343 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_5", S_o3343)
  o3389 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_6", S_o3389)
  o3435 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_7", S_o3435)
  o3481 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_8", S_o3481)
  o3527 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1", S_o3527)
  o3573 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_1b", S_o3573)
  o3619 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o3619)
  o3665 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o3665)
  o3711 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o3711)
  o3757 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o3757)
  o3803 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o3803)
  o3849 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o3849)
  o3895 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_4", S_o3895)
  o3941 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o3941)
  o3987 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o3987)
  o4033 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o4033)
  o4079 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_4", S_o4079)
  o4125 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_5", S_o4125)
  o4171 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_6", S_o4171)
  o4217 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o4217)
  o4263 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o4263)
  o4309 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o4309)
  o4355 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_4", S_o4355)
  o4401 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_5", S_o4401)
  o4447 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_l_3", S_o4447)
  o4493 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_m_3", S_o4493)
  o4539 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_angelrock_s_1", S_o4539)
  o4585 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4585)
  o4598.Start()
  o4628 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o4628)
  o4631.Start()
  o4633 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o4633)
  o4636.Start()
  o4638 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_3", S_o4638)
  o4641.Start()
  o4643 = BindEasy(Node_Find("/"), "Camera", S_o4643)
  o4646 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o4646)
  o4647 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o4647)
  o4648 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o4648)
  o4649 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o4649)
  o4650 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o4650)
  o4651 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o4651)
  o4652 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_3", S_o4652)
  o4653 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o4653)
  o4654 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o4654)
  o4655 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o4655)
  o4656 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_4", S_o4656)
  o4657 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_5", S_o4657)
  o4658 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro", S_o4658)
  o4664 = BindEasy(Node_Find("/IngameSequences/Director"), "Angelgate_Cutscene", S_o4664)
  o4673 = BindEasy(Node_Find("/IngameSequences/Director"), "Angelgate_Cutscene_Audio", S_o4673)
  o4678 = BindEasy(Node_Find("/IngameSequences/Director"), "Angelhole_Cutscene", S_o4678)
  o4688 = BindEasy(Node_Find("/IngameSequences/Director"), "Angelhole_Cutscene_Audio", S_o4688)
  o4693 = BindEasy(Node_Find("/IngameSequences/Director"), "AngelView_Cutscene", S_o4693)
  o4701 = BindEasy(Node_Find("/IngameSequences/Director"), "AngelView_Cutscene_Audio", S_o4701)
  o4644 = { {}, o4585 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
