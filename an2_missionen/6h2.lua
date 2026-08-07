-- dekompiliert aus 6h2.sco
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
  Terrain_LoadTerrain(node1, "map/6H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/6H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/6H1/Lmsh/", "map/6H1/Ltex/")
  Game_SetTerrainDepth(node0, 1728)
  Game_SetDecompressionHeight(node0, 450)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.094118, 0.105882, 0.129412)
  Game_SetParallelLightT(node0, 0.184314, 0.215686, 0.258824)
  Game_SetParallelLightB(node0, 0.094118, 0.105882, 0.129412)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_6h2.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_6H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_grabsuche.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit4.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_mute.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit1.sam", 4)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension1.sam", 5)
  Game_SetNPCHitFactor(node0, 0.1)
  Game_SetEnvironmentCubeMap(node0, "map/6H1/CubeMap/envcubemap.dds")
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
  Body_SetCS(node8, MAT_Vector3(1693.289, 1563.696, 380.6504), MAT_Vector3(92.90598, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_rays", "fx_rays_6H1_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_rays/fx_rays_6H1.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_sky", "fx_sky_6H1_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_sky/fx_sky_6H1.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_flare", "fx_flare_6H1_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_flare/fx_flare_6H1.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node7, node12)
  Node_ParseIniFile(node12, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(2320.441, 921.8573, -1.900979), MAT_Vector3(-141.1555, 0, 0))
  Node_ParseIniFile(node13, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "atl_digmod_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(802.37, 1985.291, 190.509), MAT_Vector3(-141.1555, 0, 0))
  Node_ParseIniFile(node14, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "atl_digmod_3")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3078.102, 2499.531, -0.423903), MAT_Vector3(106.6244, 0, 0))
  Node_ParseIniFile(node15, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_megalith_l_01_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1328.919, 1248.157, 101.9368), MAT_Vector3(-120.1717, 0.851309, -2.595149))
  Node_ParseIniFile(node16, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_megalith_l_02_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1635.873, 1113.649, -27.25681), MAT_Vector3(36.82437, 6.913062, -4.18107))
  Node_ParseIniFile(node17, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_megalith_l_03_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1798.87, 1328.558, 45.38377), MAT_Vector3(163.9477, -6.90281, -4.109132))
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
  Body_SetCS(node19, MAT_Vector3(1375.146, 1262.018, 121.8567), MAT_Vector3(105.371, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_megalith_m_02_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1602.463, 1250.956, 128.2294), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_megalith_s_01_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1349.166, 1302.169, 146.6396), MAT_Vector3(-163.5213, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_megalith_s_02_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(1396.403, 1276.189, 140.9749), MAT_Vector3(-45.51389, 0, 0))
  Node_ParseIniFile(node22, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_megalith_s_03_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1786.826, 1376.499, 94.41013), MAT_Vector3(13.74616, 14.73527, -4.716208))
  Node_ParseIniFile(node23, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_megalith_l_01_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1842.747, 2796.458, 197.5738), MAT_Vector3(27.26539, -3.139644, 5.175069))
  Node_ParseIniFile(node24, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_megalith_l_02_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2034.232, 2759.47, 201.8412), MAT_Vector3(-50.40215, -3.487634, -2.554453))
  Node_ParseIniFile(node25, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_megalith_l_03_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2226.129, 2794.361, 193.3469), MAT_Vector3(5.772112, -6.594054, 0.132415))
  Node_ParseIniFile(node26, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_megalith_l_01_3")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1570.688, 3066.007, 202.4363), MAT_Vector3(155.5886, 10.55227, -4.720396))
  Node_ParseIniFile(node27, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_megalith_l_02_3")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1533.306, 3257.904, 197.4795), MAT_Vector3(81.13325, 7.94677, 3.360289))
  Node_ParseIniFile(node28, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_megalith_l_03_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1682.836, 3611.793, 200.9519), MAT_Vector3(-59.98932, -3.533663, 3.152546))
  Node_ParseIniFile(node29, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_megalith_l_01_4")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1844.827, 3716.464, 202.1033), MAT_Vector3(-12.37312, 2.492559, 0.987008))
  Node_ParseIniFile(node30, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_megalith_l_02_4")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2390.613, 2904.016, 194.607), MAT_Vector3(-69.36113, -1.225986, -7.373077))
  Node_ParseIniFile(node31, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_megalith_l_03_4")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1573.18, 3447.309, 201.1349), MAT_Vector3(-87.66528, -6.234533, -0.174634))
  Node_ParseIniFile(node32, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_megalith_l_01_5")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2495.284, 3063.515, 206.4329), MAT_Vector3(-135.2208, 7.380971, 2.357795))
  Node_ParseIniFile(node33, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_megalith_l_02_5")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2492.792, 3447.309, 190.7589), MAT_Vector3(-136.7505, 3.034981, 3.566533))
  Node_ParseIniFile(node34, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_megalith_l_03_5")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2034.232, 3753.847, 179.9637), MAT_Vector3(-139.6388, -7.210386, 5.768385))
  Node_ParseIniFile(node35, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_megalith_l_01_6")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(2535.159, 3257.904, 192.9161), MAT_Vector3(166.4959, -0.664547, 2.172946))
  Node_ParseIniFile(node36, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_megalith_l_02_6")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2226.129, 3718.956, 203.3541), MAT_Vector3(-74.75039, 4.70163, 5.820554))
  Node_ParseIniFile(node37, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_megalith_l_03_6")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2385.628, 3609.301, 186.608), MAT_Vector3(-123.7254, 1.602047, 9.260531))
  Node_ParseIniFile(node38, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_megalith_l_01_7")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2975.454, 2855.624, 0.597634), MAT_Vector3(-155.6989, -0.664547, 2.172946))
  Node_ParseIniFile(node39, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_megalith_l_02_7")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(3412.668, 2305.359, 86.61564), MAT_Vector3(81.33009, -3.856835, 1.099833))
  Node_ParseIniFile(node40, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_megalith_l_03_7")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(3600.58, 1822.88, 188.6945), MAT_Vector3(-120.2417, -1.069013, 8.899576))
  Node_ParseIniFile(node41, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_megalith_l_01_8")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1954.939, 1967.045, 95.09165), MAT_Vector3(-134.501, -1.613493, -1.474709))
  Node_ParseIniFile(node42, "osd/ter/ter_megalith_l_01.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_megalith_l_02_8")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1482.692, 1961.478, 13.94608), MAT_Vector3(-87.43184, 1.451827, 2.055149))
  Node_ParseIniFile(node43, "osd/ter/ter_megalith_l_02.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_megalith_l_03_8")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1615.45, 2275.717, 114.9821), MAT_Vector3(-119.1852, -1.293509, 9.544246))
  Node_ParseIniFile(node44, "osd/ter/ter_megalith_l_03.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_megalith_m_01_2")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2218.096, 3304.267, 195.2932), MAT_Vector3(-133.6458, -0.407718, 5.47264))
  Node_ParseIniFile(node45, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_megalith_m_02_2")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2201.775, 3399.979, 200.9611), MAT_Vector3(97.04783, -3.460093, -3.316174))
  Node_ParseIniFile(node46, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_megalith_m_01_3")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1813.348, 3320.003, 201.469), MAT_Vector3(70.12209, -0.407718, 5.47264))
  Node_ParseIniFile(node47, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_megalith_m_02_3")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1817.362, 2830.305, 200.181), MAT_Vector3(27.40323, -3.460093, -3.316174))
  Node_ParseIniFile(node48, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_megalith_m_01_4")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2936.926, 2817.8, -4.680799), MAT_Vector3(162.3759, -0.407718, 5.47264))
  Node_ParseIniFile(node49, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_megalith_m_02_4")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(3426.247, 2280.339, 82.63503), MAT_Vector3(25.18029, -1.883826, -3.099434))
  Node_ParseIniFile(node50, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_megalith_m_01_5")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1641.102, 2192.478, 100.9226), MAT_Vector3(-157.2839, -0.407718, 5.47264))
  Node_ParseIniFile(node51, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_megalith_m_02_5")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(913.5818, 1882.334, 192.5608), MAT_Vector3(25.18029, -1.883826, -3.099434))
  Node_ParseIniFile(node52, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_megalith_s_01_2")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(2125.556, 3536.017, 200.4083), MAT_Vector3(-9.793252, 29.80446, -7.914165))
  Node_ParseIniFile(node53, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_megalith_s_02_2")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1833.63, 3356.518, 195.5481), MAT_Vector3(-105.741, 0.185842, 1.725865))
  Node_ParseIniFile(node54, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_megalith_s_03_2")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1761.316, 3112.075, 206.63), MAT_Vector3(160.4151, -8.217353, 0.702701))
  Node_ParseIniFile(node55, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_megalith_s_01_3")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2061.238, 2783.739, 202.7747), MAT_Vector3(147.1037, 1.970876, 12.81379))
  Node_ParseIniFile(node56, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_megalith_s_02_3")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1759.331, 3092.62, 203.8015), MAT_Vector3(8.621691, 0.185842, 1.725865))
  Node_ParseIniFile(node57, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_megalith_s_03_3")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2138.387, 3593.116, 203.8696), MAT_Vector3(-148.2199, -10.88152, 0.804148))
  Node_ParseIniFile(node58, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_megalith_s_01_4")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3404.249, 2283.712, 83.34816), MAT_Vector3(-12.74544, 4.83732, 0.891112))
  Node_ParseIniFile(node59, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_megalith_s_02_4")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(3005.978, 2870.252, 4.804347), MAT_Vector3(6.28609, -0.411374, 3.281475))
  Node_ParseIniFile(node60, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_megalith_s_03_4")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2837.831, 1905.437, 78.1231), MAT_Vector3(-162.3672, 1.715943, -2.760876))
  Node_ParseIniFile(node61, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_bridgering_l_2")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(1814.4, 2002.194, 99.29242), MAT_Vector3(83.71413, 0, 0))
  Node_ParseIniFile(node62, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_bridgering_l_3")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(596.8902, 1664.985, 176.9203), MAT_Vector3(-152.9573, 0, 0))
  Node_ParseIniFile(node63, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_bridgering_l_4")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(927.8454, 514.6661, -0.733091), MAT_Vector3(-144.7327, 0, 0))
  Node_ParseIniFile(node64, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_bridgering_l_5")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1185.975, 1983.153, 61.75147), MAT_Vector3(175.7275, 0, 0))
  Node_ParseIniFile(node65, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_bridgering_l_6")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1145.566, 2716.346, 291.7921), MAT_Vector3(165.8045, 5.977059, -9.02238))
  Node_ParseIniFile(node66, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_bridgering_l_7")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1171.262, 2604.16, 226.9346), MAT_Vector3(-177.7508, 5.977059, -9.02238))
  Node_ParseIniFile(node67, "osd/ter/ter_bridgering_l.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_bridgering_m_2")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2420.06, 1679.887, 100.9125), MAT_Vector3(84.84024, -6.440877, -2.101933))
  Node_ParseIniFile(node68, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_bridgering_m_3")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(2708.172, 2040.568, 3.780231), MAT_Vector3(-91.54406, -6.440877, -2.101933))
  Node_ParseIniFile(node69, "osd/ter/ter_bridgering_m.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_rock_l_01_1")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(1894.124, 3519.304, 195.793), MAT_Vector3(52.20597, -69.08752, -24.96919))
  Node_ParseIniFile(node70, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_rock_m_01_1")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(2051.075, 3207.604, 207.7963), MAT_Vector3(-102.4335, -10.82138, 92.85414))
  Node_ParseIniFile(node71, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_rock_s_01_1")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2160.283, 3537.008, 196.4837), MAT_Vector3(37.81491, -17.38526, 3.027063))
  Node_ParseIniFile(node72, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_rock_l_01_2")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2010.492, 3498.774, 220.686), MAT_Vector3(175.4148, -75.11055, 139.5245))
  Node_ParseIniFile(node73, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_rock_l_01_2x")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(724.2347, 1856.252, 195.0072), MAT_Vector3(175.4148, -75.11055, 139.5245))
  Node_ParseIniFile(node74, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_rock_m_01_2")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(1841.705, 3043.405, 202.3402), MAT_Vector3(177.1805, 52.58333, 78.95249))
  Node_ParseIniFile(node75, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_rock_m_01_2a")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(802.0478, 1866.442, 194.3645), MAT_Vector3(177.1805, 52.58333, 78.95249))
  Node_ParseIniFile(node76, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_rock_s_01_2")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2003.061, 3235.423, 211.6046), MAT_Vector3(34.91528, -23.82182, 86.76637))
  Node_ParseIniFile(node77, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_rock_s_01_2a")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(2336.405, 784.7499, 7.218707), MAT_Vector3(53.13477, -33.65485, 84.32111))
  Node_ParseIniFile(node78, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_rock_s_01_2b")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2336.791, 748.6235, 1.185215), MAT_Vector3(120.002, -15.50809, 2.354751))
  Node_ParseIniFile(node79, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_rock_l_01_3")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2911.621, 2569.733, 17.44163), MAT_Vector3(32.58504, -68.53466, 119.4029))
  Node_ParseIniFile(node80, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_rock_l_01_3a")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(2266.273, 782.5509, 21.94831), MAT_Vector3(32.58504, -68.53466, 119.4029))
  Node_ParseIniFile(node81, "osd/ter/ter_rock_l_01.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_rock_m_01_3")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2961.527, 2799.925, -6.799553), MAT_Vector3(26.09864, 52.58333, 78.95249))
  Node_ParseIniFile(node82, "osd/ter/ter_rock_m_01.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_rock_s_01_3")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(2967.541, 2762.531, -1.923701), MAT_Vector3(120.9553, 12.02735, 66.77429))
  Node_ParseIniFile(node83, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_megalith_m_01_6")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(716.4632, 1653.919, 176.653), MAT_Vector3(-8.664664, 3.188822, -7.246794))
  Node_ParseIniFile(node84, "osd/ter/ter_megalith_m_01.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_megalith_m_02_6")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(2334.874, 1736.307, 103.2464), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node85, "osd/ter/ter_megalith_m_02.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_megalith_s_01_5")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1036.843, 589.7763, 2.540032), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node86, "osd/ter/ter_megalith_s_01.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_megalith_s_02_5")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(2758.728, 2082.139, 1.939912), MAT_Vector3(22.5038, -2.775514, 19.21642))
  Node_ParseIniFile(node87, "osd/ter/ter_megalith_s_02.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_megalith_s_03_5")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(993.1713, 622.4781, 2.075765), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node88, "osd/ter/ter_megalith_s_03.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_rock_s_01_3a")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(2990.924, 2565.068, 6.463703), MAT_Vector3(89.43641, -16.83284, 64.67559))
  Node_ParseIniFile(node89, "osd/ter/ter_rock_s_01.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_fx_plant", "org_fungus_s01_1")
  Node_AddSon(node7, node90)
  Node_ParseIniFile(node90, "osd/fx_plant/org_fungus_s01.osd")
  FX_Plant_SetMap(node90, "map/6H1/Terrain/org_fungus_s01.tga")
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node91)
  Node_ParseIniFile(node91, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node91, "map/6H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_fx_plant", "org_stone_l_1")
  Node_AddSon(node7, node92)
  Node_ParseIniFile(node92, "osd/fx_plant/org_stone_l.osd")
  FX_Plant_SetMap(node92, "map/6H1/Terrain/org_stone_l.tga")
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node93)
  Node_ParseIniFile(node93, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node93, "map/6H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node94, node95)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node94, node96)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_PatrolArea", "Strega_FollowArea")
  Node_AddSon(node96, node97)
  PatrolArea_SetPosition(node97, MAT_Vector3(2035.81921, 3257.36372, 350))
  PatrolArea_SetRadius(node97, 600)
  PatrolArea_SetMinZ(node97, -250)
  PatrolArea_SetMaxZ(node97, 100)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_PatrolArea", "Strega_TriggerArea")
  Node_AddSon(node96, node98)
  PatrolArea_SetPosition(node98, MAT_Vector3(2035.819, 3257.364, 320))
  PatrolArea_SetRadius(node98, 500)
  PatrolArea_SetMinZ(node98, -250)
  PatrolArea_SetMaxZ(node98, 150)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_PatrolArea", "Strega_PatrolArea")
  Node_AddSon(node96, node99)
  PatrolArea_SetPosition(node99, MAT_Vector3(2035.819, 3257.364, 320))
  PatrolArea_SetRadius(node99, 100)
  PatrolArea_SetMinZ(node99, -50)
  PatrolArea_SetMaxZ(node99, 50)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Path", "dmHarvester_DockPath")
  Node_AddSon(node96, node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node100, node101)
  Position_SetPosition(node101, MAT_Vector3(1786.836321, 1640.686809, 354.645801))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node100, node102)
  Position_SetPosition(node102, MAT_Vector3(1854.9169, 1573.189499, 354.6458))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Path", "dmHarvester_ApproachPath")
  Node_AddSon(node96, node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node103, node104)
  Position_SetPosition(node104, MAT_Vector3(1655.531658, 1779.165593, 268.803622))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node103, node105)
  Position_SetPosition(node105, MAT_Vector3(1756.667572, 1671.24196, 353.6458))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_PatrolArea", "dmHarvester_PatrolArea")
  Node_AddSon(node96, node106)
  PatrolArea_SetPosition(node106, MAT_Vector3(1645.124424, 1708.247131, 349.410211))
  PatrolArea_SetRadius(node106, 50)
  PatrolArea_SetMinZ(node106, -20)
  PatrolArea_SetMaxZ(node106, 20)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Path", "AngelinaBackToHarvesterPath")
  Node_AddSon(node96, node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node107, node108)
  Position_SetPosition(node108, MAT_Vector3(1704.011627, 2927.666131, 280.939943))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node107, node109)
  Position_SetPosition(node109, MAT_Vector3(1504.277675, 2695.771627, 341.865647))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node107, node110)
  Position_SetPosition(node110, MAT_Vector3(1362.094183, 2692.386306, 408.309673))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node107, node111)
  Position_SetPosition(node111, MAT_Vector3(1274.075831, 2553.588135, 367.723773))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node107, node112)
  Position_SetPosition(node112, MAT_Vector3(1346.781333, 2340.637386, 257.314169))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node107, node113)
  Position_SetPosition(node113, MAT_Vector3(1456.804273, 2173.063985, 184.016686))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node107, node114)
  Position_SetPosition(node114, MAT_Vector3(1538.051983, 2003.797924, 138.062269))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node94, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node94, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Trigger", "tStartScene_CrimsonVS.Strega")
  Node_AddSon(node116, node117)
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetPosition(node117, MAT_Vector3(2027.577358, 3255.097903, 302.857927))
  Trigger_SetPresenceSphere(node117, 600)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Trigger", "tPlayerLeavesBattleField")
  Node_AddSon(node116, node118)
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetPosition(node118, MAT_Vector3(2032.650929, 3254.369521, 300))
  Trigger_SetPresenceSphere(node118, 600)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node94, node119)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node119, node120)
  Body_SetCS(node120, MAT_Vector3(1826.113169, 1623.671026, 265.464822), MAT_Vector3(45.664414, 0, 0))
  Node_ParseIniFile(node120, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "Strega")
  Node_AddSon(node119, node121)
  Body_SetCS(node121, MAT_Vector3(2035.711956, 3257.904385, 300), MAT_Vector3(136.851926, 0, 0))
  Node_ParseIniFile(node121, "osd/mer/mer_strega_wide_6h2.osd")
  Body_SetFriendOrFoeID(node121, 2)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node119, node122)
  Body_SetPosition(node122, MAT_Vector3(2019.943402, 3248.930338, 316.598374))
  WayPoint_SetRadius(node122, 500)
  Node_ParseIniFile(node122, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "Angelina")
  Node_AddSon(node119, node123)
  Body_SetCS(node123, MAT_Vector3(3448.575038, 2944.166888, 350), MAT_Vector3(77.872083, 0, 0))
  Node_ParseIniFile(node123, "osd/wng/wng_angelina.osd")
  Body_SetFriendOrFoeID(node123, 3)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node124)
  Camera_SetBackPlane(node124, 2048)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node125, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node125, node127)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node127, node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node128, node129)
  Position_SetPosition(node129, MAT_Vector3(1871.644374, 1565.827077, 355))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node128, node130)
  Position_SetPosition(node130, MAT_Vector3(1755.349573, 1681.662809, 355))
  Position_SetRadius(node130, 5)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node128, node131)
  Position_SetPosition(node131, MAT_Vector3(1666.252564, 1785.130534, 355))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node127, node132)
  Position_SetPosition(node132, MAT_Vector3(1751.130784, 1687.592436, 345.120684))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Path", "PlayerPath_2")
  Node_AddSon(node127, node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node133, node134)
  Position_SetPosition(node134, MAT_Vector3(1670.167102, 2892.449037, 300))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node133, node135)
  Position_SetPosition(node135, MAT_Vector3(1780.532435, 3001.664795, 300))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node133, node136)
  Position_SetPosition(node136, MAT_Vector3(1928.828469, 3150.015284, 300))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node133, node137)
  Position_SetPosition(node137, MAT_Vector3(1988.181666, 3209.769705, 300))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node127, node138)
  Position_SetPosition(node138, MAT_Vector3(1611.225096, 2832.119782, 310))
  Position_SetRadius(node138, 5)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node127, node139)
  Position_SetPosition(node139, MAT_Vector3(1481.597413, 3028.099491, 310))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node127, node140)
  Position_SetPosition(node140, MAT_Vector3(1435.431236, 3257.254498, 310))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node127, node141)
  Position_SetPosition(node141, MAT_Vector3(1480.773812, 3486.409345, 310))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node127, node142)
  Position_SetPosition(node142, MAT_Vector3(1612.048856, 3680.85036, 310))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node127, node143)
  Position_SetPosition(node143, MAT_Vector3(1807.561421, 3810.83461, 310))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node127, node144)
  Position_SetPosition(node144, MAT_Vector3(2036.002453, 3857.934625, 310))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "LookFrom_9")
  Node_AddSon(node127, node145)
  Position_SetPosition(node145, MAT_Vector3(2264.691274, 3812.373186, 310))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "LookFrom_10")
  Node_AddSon(node127, node146)
  Position_SetPosition(node146, MAT_Vector3(2460.203429, 3682.498075, 310))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Position", "LookFrom_11")
  Node_AddSon(node127, node147)
  Position_SetPosition(node147, MAT_Vector3(2589.116822, 3486.518415, 310))
  Position_SetRadius(node147, 5)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "LookFrom_12")
  Node_AddSon(node127, node148)
  Position_SetPosition(node148, MAT_Vector3(2635.749807, 3255.715351, 310))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "LookFrom_13")
  Node_AddSon(node127, node149)
  Position_SetPosition(node149, MAT_Vector3(2589.474327, 3028.207562, 310))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Position", "LookFrom_14")
  Node_AddSon(node127, node150)
  Position_SetPosition(node150, MAT_Vector3(2459.489691, 2832.942235, 310))
  Position_SetRadius(node150, 5)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "LookFrom_15")
  Node_AddSon(node127, node151)
  Position_SetPosition(node151, MAT_Vector3(2265.048271, 2703.781506, 310))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "LookFrom_16")
  Node_AddSon(node127, node152)
  Position_SetPosition(node152, MAT_Vector3(2035.068876, 2657.505188, 310))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "LookFrom_17")
  Node_AddSon(node127, node153)
  Position_SetPosition(node153, MAT_Vector3(1805.666867, 2703.780673, 310))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "LookFrom_18")
  Node_AddSon(node127, node154)
  Position_SetPosition(node154, MAT_Vector3(2036.360263, 3334.836903, 310))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Position", "LookFrom_19")
  Node_AddSon(node127, node155)
  Position_SetPosition(node155, MAT_Vector3(3264.270793, 3020.145314, 360))
  Position_SetRadius(node155, 5)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Path", "Angelina_Path_1")
  Node_AddSon(node127, node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node156, node157)
  Position_SetPosition(node157, MAT_Vector3(3059.147356, 3026.235743, 340))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node156, node158)
  Position_SetPosition(node158, MAT_Vector3(2853.665312, 3066.387594, 340))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node156, node159)
  Position_SetPosition(node159, MAT_Vector3(2636.37402, 3106.539594, 340))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node156, node160)
  Position_SetPosition(node160, MAT_Vector3(2473.405765, 3159.681816, 340))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node156, node161)
  Position_SetPosition(node161, MAT_Vector3(2371.84585, 3173.852967, 308.24849))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node156, node162)
  Position_SetPosition(node162, MAT_Vector3(2212.420403, 3162.043674, 288.556188))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "LookFrom_20")
  Node_AddSon(node127, node163)
  Position_SetPosition(node163, MAT_Vector3(2417.796899, 2983.19803, 300))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "LookFrom_21")
  Node_AddSon(node127, node164)
  Position_SetPosition(node164, MAT_Vector3(2481.237791, 3353.955868, 300))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "LookFrom_22")
  Node_AddSon(node127, node165)
  Position_SetPosition(node165, MAT_Vector3(2759.996887, 3113.000272, 350.002511))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node127, node166)
  Position_SetPosition(node166, MAT_Vector3(2008.790252, 3253.28484, 310))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Path", "PlayerPath_3")
  Node_AddSon(node127, node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node167, node168)
  Position_SetPosition(node168, MAT_Vector3(1770.158971, 3081.538763, 281.988821))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node167, node169)
  Position_SetPosition(node169, MAT_Vector3(1792.163559, 3284.658037, 282.075644))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node167, node170)
  Position_SetPosition(node170, MAT_Vector3(1880.181911, 3347.28648, 281.735634))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node167, node171)
  Position_SetPosition(node171, MAT_Vector3(1964.814942, 3240.648861, 286.692519))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node167, node172)
  Position_SetPosition(node172, MAT_Vector3(2020.672742, 3140.781884, 281.223047))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node167, node173)
  Position_SetPosition(node173, MAT_Vector3(2130.695682, 3108.621333, 285.96579))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node167, node174)
  Position_SetPosition(node174, MAT_Vector3(2223.792016, 3200.025006, 316.695109))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node167, node175)
  Position_SetPosition(node175, MAT_Vector3(2093.457149, 3359.135104, 313.697964))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node167, node176)
  Position_SetPosition(node176, MAT_Vector3(1954.658978, 3392.988316, 347.271797))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node167, node177)
  Position_SetPosition(node177, MAT_Vector3(1868.333287, 3277.887394, 314.460359))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node167, node178)
  Position_SetPosition(node178, MAT_Vector3(1837.865396, 3164.479133, 349.157496))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node167, node179)
  Position_SetPosition(node179, MAT_Vector3(1704.145207, 3123.855278, 281.996355))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node167, node180)
  Position_SetPosition(node180, MAT_Vector3(1697.374565, 3267.731431, 281.93444))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node167, node181)
  Position_SetPosition(node181, MAT_Vector3(1768.466311, 3359.135104, 304.244605))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node167, node182)
  Position_SetPosition(node182, MAT_Vector3(1766.77365, 3161.093812, 284.94263))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node167, node183)
  Position_SetPosition(node183, MAT_Vector3(1793.85622, 3030.758944, 282.897739))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node167, node184)
  Position_SetPosition(node184, MAT_Vector3(1792.163559, 2891.960774, 283.254557))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node167, node185)
  Position_SetPosition(node185, MAT_Vector3(1768.466311, 3049.378211, 287.947878))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node125, node186)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node186, node187)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node186, node188)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Director", "CrimsonVS.Strega")
  Node_AddSon(node186, node189)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Director", "CrimsonVS.Strega_AddOn")
  Node_AddSon(node186, node190)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Director", "CrimsonVS.Strega_Audio")
  Node_AddSon(node186, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Director", "AngelinaComeScene")
  Node_AddSon(node186, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Director", "AngelinaComeScene_AddOn")
  Node_AddSon(node186, node193)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Director", "AngelinaComeScene_Audio")
  Node_AddSon(node186, node194)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Director", "AngelinaComeScene_Music")
  Node_AddSon(node186, node195)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node125, node196)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node125, node197)
  Node_EnterSimulation(node197)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, F)
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
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, F)
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
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, E)
SetEnemyMatrixElement(3, 2, E)
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
SetEnemyMatrixElement(0, 3, F)
SetEnemyMatrixElement(1, 3, F)
SetEnemyMatrixElement(2, 3, E)
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
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                              if not (o3663.Value ~= True) then
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
                        end
                      end
                    end
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
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (o3687.Value == True) then
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
                          end
                        end
                      end
                    end
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
  Body_SetKineticShield(L0.Node, 0, 0.794657)
  Body_SetEmpShield(L0.Node, 0.871442)
  CallFunction(o30, "Code5")
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
o3619 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dmHarvester_ApproachPath", "/Scenario_Dynamic/Navigation/dmHarvester_DockPath", "/Scenario_Dynamic/Navigation/dmHarvester_PatrolArea")
S_o3620 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3620, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3620, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3620, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o3620, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3620, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3620, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3625.SetStateValue(L1)
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
o3625 = { [nil] = {}, Start = function()
  o3625["Value"] = False
  o3856.StartCalculate()
  o3884.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3625.Value == L0) then
    o3625["Value"] = L0
    o3856.ReCalculate()
    o3884.ReCalculate()
  end
end }
S_o3626 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3626, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3626, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3626, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplexLeave(L0, "medium", "player", "", "", "", False, False, True)
  CallFunction(o3626, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3626, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3626, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3631.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3627.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3628.Value ~= True) then
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
o3627 = { [nil] = {}, GetCalculated = function()
  if not (o3648.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3627.SetStateValue(o3627.GetCalculated())
end, StartCalculate = function()
  o3627["Value"] = o3627.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3627.Value == L0) then
    o3627["Value"] = L0
    CallFunction(o3626, "ProcesseStateChange")
  end
end }
o3628 = { [nil] = {}, GetCalculated = function()
  if not (o3659.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3628.SetStateValue(o3628.GetCalculated())
end, StartCalculate = function()
  o3628["Value"] = o3628.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3628.Value == L0) then
    o3628["Value"] = L0
    CallFunction(o3626, "ProcesseStateChange")
  end
end }
o3631 = { [nil] = {}, Start = function()
  o3631["Value"] = False
  o3660.StartCalculate()
  o3662.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3631.Value == L0) then
    o3631["Value"] = L0
    o3660.ReCalculate()
    o3662.ReCalculate()
  end
end }
S_o3632 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "powerup_sizzler", 1)
  Body_AddItem(L0.Node, "powerup_lasergatlin", 1)
  Body_AddItem(L0.Node, "powerup_torpedolauncher", 1)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  Body_AddItem(L0.Node, "ammo_rocket", 99999)
  CallFunction(o3632, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_KineticShield75 = function(L0, L1)
  o3641.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o3642.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o3643.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o3644.SetStateValue(L1)
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
o3641 = { [nil] = {}, Start = function()
  o3641["Value"] = False
  o3654.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3641.Value == L0) then
    o3641["Value"] = L0
    o3654.ReCalculate()
  end
end }
o3642 = { [nil] = {}, Start = function()
  o3642["Value"] = False
  o3655.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3642.Value == L0) then
    o3642["Value"] = L0
    o3655.ReCalculate()
  end
end }
o3643 = { [nil] = {}, Start = function()
  o3643["Value"] = False
  o3656.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3643.Value == L0) then
    o3643["Value"] = L0
    o3656.ReCalculate()
  end
end }
o3644 = { [nil] = {}, Start = function()
  o3644["Value"] = False
  o3657.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3644.Value == L0) then
    o3644["Value"] = L0
    o3657.ReCalculate()
  end
end }
o3646 = { [nil] = {}, GetCalculated = function()
  if not (o3755.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3646.SetStateValue(o3646.GetCalculated())
end, StartCalculate = function()
  o3646["Value"] = o3646.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o3646.Value == L0) then
    o3646["Value"] = L0
    if not (L0 ~= 1) then
      o3646.ChangeTo1()
    end
  end
end }
o3647 = { [nil] = {}, Start = function()
  o3647["Value"] = False
  o3880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3647.Value == L0) then
    o3647["Value"] = L0
    o3880.ReCalculate()
  end
end }
o3648 = { [nil] = {}, Start = function()
  o3648["Value"] = False
  o3627.StartCalculate()
  o3696.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3648.Value == L0) then
    o3648["Value"] = L0
    o3627.ReCalculate()
    o3696.ReCalculate()
  end
end }
o3649 = { [nil] = {}, GetCalculated = function()
  if not (o3706.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3649.SetStateValue(o3649.GetCalculated())
end, StartCalculate = function()
  o3649["Value"] = o3649.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 748)
end, SetStateValue = function(L0)
  if not (o3649.Value == L0) then
    o3649["Value"] = L0
    if not (L0 ~= 1) then
      o3649.ChangeTo1()
    end
  end
end }
o3650 = { [nil] = {}, GetCalculated = function()
  if not (o3707.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3650.SetStateValue(o3650.GetCalculated())
end, StartCalculate = function()
  o3650["Value"] = o3650.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 545)
end, SetStateValue = function(L0)
  if not (o3650.Value == L0) then
    o3650["Value"] = L0
    if not (L0 ~= 1) then
      o3650.ChangeTo1()
    end
  end
end }
o3651 = { [nil] = {}, GetCalculated = function()
  if not (o3708.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3651.SetStateValue(o3651.GetCalculated())
end, StartCalculate = function()
  o3651["Value"] = o3651.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 547)
end, SetStateValue = function(L0)
  if not (o3651.Value == L0) then
    o3651["Value"] = L0
    if not (L0 ~= 1) then
      o3651.ChangeTo1()
    end
  end
end }
o3652 = { [nil] = {}, GetCalculated = function()
  if not (o3716.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3652.SetStateValue(o3652.GetCalculated())
end, StartCalculate = function()
  o3652["Value"] = o3652.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 750)
end, SetStateValue = function(L0)
  if not (o3652.Value == L0) then
    o3652["Value"] = L0
    if not (L0 ~= 1) then
      o3652.ChangeTo1()
    end
  end
end }
o3653 = { [nil] = {}, GetCalculated = function()
  if not (o3701.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3653.SetStateValue(o3653.GetCalculated())
end, StartCalculate = function()
  o3653["Value"] = o3653.GetCalculated()
  o3658.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 542)
end, SetStateValue = function(L0)
  if not (o3653.Value == L0) then
    o3653["Value"] = L0
    o3658.ReCalculate()
    if not (L0 ~= 1) then
      o3653.ChangeTo1()
    end
  end
end }
o3654 = { [nil] = {}, GetCalculated = function()
  if not (o3641.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3654.SetStateValue(o3654.GetCalculated())
end, StartCalculate = function()
  o3654["Value"] = o3654.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 751)
end, SetStateValue = function(L0)
  if not (o3654.Value == L0) then
    o3654["Value"] = L0
    if not (L0 ~= 1) then
      o3654.ChangeTo1()
    end
  end
end }
o3655 = { [nil] = {}, GetCalculated = function()
  if not (o3642.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3655.SetStateValue(o3655.GetCalculated())
end, StartCalculate = function()
  o3655["Value"] = o3655.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 541)
end, SetStateValue = function(L0)
  if not (o3655.Value == L0) then
    o3655["Value"] = L0
    if not (L0 ~= 1) then
      o3655.ChangeTo1()
    end
  end
end }
o3656 = { [nil] = {}, GetCalculated = function()
  if not (o3643.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3656.SetStateValue(o3656.GetCalculated())
end, StartCalculate = function()
  o3656["Value"] = o3656.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 752)
end, SetStateValue = function(L0)
  if not (o3656.Value == L0) then
    o3656["Value"] = L0
    if not (L0 ~= 1) then
      o3656.ChangeTo1()
    end
  end
end }
o3657 = { [nil] = {}, GetCalculated = function()
  if not (o3644.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3657.SetStateValue(o3657.GetCalculated())
end, StartCalculate = function()
  o3657["Value"] = o3657.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3691.Node, o3632.Node, 750)
end, SetStateValue = function(L0)
  if not (o3657.Value == L0) then
    o3657["Value"] = L0
    if not (L0 ~= 1) then
      o3657.ChangeTo1()
    end
  end
end }
o3658 = { [nil] = {}, GetCalculated = function()
  if not (o3653.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3658.SetStateValue(o3658.GetCalculated())
end, StartCalculate = function()
  o3658["Value"] = o3658.GetCalculated()
  o3663.StartCalculate()
  o3759.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3632.Node, 543)
  SendRadioMessageTake(o3757.Node, o3632.Node, 544)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o3658.Value == L0) then
    DelayedFunction(11, o3658, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3658.Value == L0) then
    o3658["Value"] = L0
    o3663.ReCalculate()
    o3759.ReCalculate()
    if not (L0 ~= 1) then
      o3658.ChangeTo1()
    end
  end
end }
o3659 = { [nil] = {}, Start = function()
  o3659["Value"] = False
  o3628.StartCalculate()
  o3660.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3659.Value == L0) then
    o3659["Value"] = L0
    o3628.ReCalculate()
    o3660.ReCalculate()
  end
end }
o3660 = { [nil] = {}, GetCalculated = function()
  if not (o3659.Value == True) then
    if not (o3631.Value == True) then
      if not (o3708.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3660.SetStateValue(o3660.GetCalculated())
end, StartCalculate = function()
  o3660["Value"] = o3660.GetCalculated()
  o3762.StartCalculate()
  o3888.StartCalculate()
  o3899.StartCalculate()
  o3902.StartCalculate()
  o3907.StartCalculate()
end, ChangeTo1 = function()
  o3659.SetStateValue(True)
end, SetStateValue = function(L0)
  if not (o3660.Value == L0) then
    o3660["Value"] = L0
    o3762.ReCalculate()
    o3888.ReCalculate()
    o3899.ReCalculate()
    o3902.ReCalculate()
    o3907.ReCalculate()
    if not (L0 ~= 1) then
      o3660.ChangeTo1()
    end
  end
end }
o3661 = { [nil] = {}, Start = function()
  o3661["Value"] = False
  o3693.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3661.Value == L0) then
    o3661["Value"] = L0
    o3693.ReCalculate()
  end
end }
o3662 = { [nil] = {}, GetCalculated = function()
  if not (o3631.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3662.SetStateValue(o3662.GetCalculated())
end, StartCalculate = function()
  o3662["Value"] = o3662.GetCalculated()
end, ChangeTo1 = function()
  CallFunction(o3691, "Code14")
end, SetStateValue = function(L0)
  if not (o3662.Value == L0) then
    o3662["Value"] = L0
    if not (L0 ~= 1) then
      o3662.ChangeTo1()
    end
  end
end }
o3663 = { [nil] = {}, GetCalculated = function()
  if not (o3658.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3663.SetStateValue(o3663.GetCalculated())
end, StartCalculate = function()
  o3663["Value"] = o3663.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3663.Value == L0) then
    o3663["Value"] = L0
    o2.ReCalculate()
  end
end }
o3687 = { [nil] = {}, GetCalculated = function()
  if not (o3765.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3687.SetStateValue(o3687.GetCalculated())
end, StartCalculate = function()
  o3687["Value"] = o3687.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3687.Value == L0) then
    o3687["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o3691 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3691, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3691, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3691, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Gun_SetDogBullet(L0.Node, "bul_doommortar_p", 2)
  CallFunction(o3691, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code6")
  else
    CallFunction(o3691, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o3691, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3691, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o3691, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Strega_PatrolArea", "/Scenario_Dynamic/Navigation/Strega_TriggerArea", "/Scenario_Dynamic/Navigation/Strega_FollowArea", "Ang", "play", "", "", 1, "Code10")
  else
    CallFunction(o3691, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Gun_SetDogBullet(L0.Node, "bul_sizzler_p", 3)
  CallFunction(o3691, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Strega_PatrolArea", "/Scenario_Dynamic/Navigation/Strega_TriggerArea", "/Scenario_Dynamic/Navigation/Strega_FollowArea", "Ang", "play", "", "", 1, "Code12")
  else
    CallFunction(o3691, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o3691, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3691, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Gun_SetDogBullet(L0.Node, "bul_sizzler_p", 3)
  CallFunction(o3691, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Strega_PatrolArea", "/Scenario_Dynamic/Navigation/Strega_TriggerArea", "/Scenario_Dynamic/Navigation/Strega_FollowArea", "Ang", "", "", "", 1, "Code16")
  else
    CallFunction(o3691, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, SetStateValue_Destroyed = function(L0, L1)
  o3701.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o3706.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o3707.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o3708.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o3716.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3696.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
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
  if not (o3661.Value ~= True) then
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
    o3693["Value"] = L0
    CallFunction(o3691, "ProcesseStateChange")
  end
end }
o3696 = { [nil] = {}, GetCalculated = function()
  if not (o3648.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3696.SetStateValue(o3696.GetCalculated())
end, StartCalculate = function()
  o3696["Value"] = o3696.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3696.Value == L0) then
    o3696["Value"] = L0
    CallFunction(o3691, "ProcesseStateChange")
  end
end }
o3701 = { [nil] = {}, Start = function()
  o3701["Value"] = False
  o3653.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3701.Value == L0) then
    o3701["Value"] = L0
    o3653.ReCalculate()
  end
end }
o3706 = { [nil] = {}, Start = function()
  o3706["Value"] = False
  o3649.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3706.Value == L0) then
    o3706["Value"] = L0
    o3649.ReCalculate()
  end
end }
o3707 = { [nil] = {}, Start = function()
  o3707["Value"] = False
  o3650.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3707.Value == L0) then
    o3707["Value"] = L0
    o3650.ReCalculate()
  end
end }
o3708 = { [nil] = {}, Start = function()
  o3708["Value"] = False
  o3651.StartCalculate()
  o3660.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3708.Value == L0) then
    o3708["Value"] = L0
    o3651.ReCalculate()
    o3660.ReCalculate()
  end
end }
o3716 = { [nil] = {}, Start = function()
  o3716["Value"] = False
  o3652.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3716.Value == L0) then
    o3716["Value"] = L0
    o3652.ReCalculate()
  end
end }
S_o3752 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o3752, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o3755.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3755 = { [nil] = {}, Start = function()
  o3755["Value"] = False
  o3646.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3755.Value == L0) then
    o3755["Value"] = L0
    o3646.ReCalculate()
  end
end }
S_o3757 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3757, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3757, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3757, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3757, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/IngameSequences/Navigation/Angelina_Path_1", 0.6, 1 } }("Code5")
  else
    CallFunction(o3757, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o3757, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  o3661.SetStateValue(True)
  CallFunction(o3757, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Strega_PatrolArea", "/Scenario_Dynamic/Navigation/Strega_TriggerArea", "/Scenario_Dynamic/Navigation/Strega_FollowArea", "Strega", "", "", "", 0.25, "Code8")
  else
    CallFunction(o3757, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code9")
  else
    CallFunction(o3757, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AngelinaBackToHarvesterPath", 1, 1 } }("Code10")
  else
    CallFunction(o3757, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3619, nil, 0, "Code11")
  else
    CallFunction(o3757, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o3765.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3762.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3759.Value ~= True) then
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
o3759 = { [nil] = {}, GetCalculated = function()
  if not (o3658.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3759.SetStateValue(o3759.GetCalculated())
end, StartCalculate = function()
  o3759["Value"] = o3759.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3759.Value == L0) then
    DelayedFunction(10, o3759, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3759.Value == L0) then
    o3759["Value"] = L0
    CallFunction(o3757, "ProcesseStateChange")
  end
end }
o3762 = { [nil] = {}, GetCalculated = function()
  if not (o3660.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3762.SetStateValue(o3762.GetCalculated())
end, StartCalculate = function()
  o3762["Value"] = o3762.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3762.Value == L0) then
    o3762["Value"] = L0
    CallFunction(o3757, "ProcesseStateChange")
  end
end }
o3765 = { [nil] = {}, Start = function()
  o3765["Value"] = False
  o3687.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3765.Value == L0) then
    o3765["Value"] = L0
    o3687.ReCalculate()
  end
end }
S_o3816 = { [nil] = {}, Start = function(L0)

end }
o3819 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 35, 35)
o3821 = FormationLib.CreateFormation("InverseTriangle", "", "", "", 35, 35)
S_o3822 = { [nil] = {}, Start = function(L0)

end }
S_o3823 = { [nil] = {}, Start = function(L0)

end }
S_o3824 = { [nil] = {}, Start = function(L0)

end }
S_o3825 = { [nil] = {}, Start = function(L0)

end }
S_o3826 = { [nil] = {}, Start = function(L0)

end }
S_o3827 = { [nil] = {}, Start = function(L0)

end }
S_o3828 = { [nil] = {}, Start = function(L0)

end }
S_o3829 = { [nil] = {}, Start = function(L0)

end }
S_o3830 = { [nil] = {}, Start = function(L0)

end }
S_o3831 = { [nil] = {}, Start = function(L0)

end }
S_o3832 = { [nil] = {}, Start = function(L0)

end }
S_o3833 = { [nil] = {}, Start = function(L0)

end }
S_o3834 = { [nil] = {}, Start = function(L0)

end }
S_o3835 = { [nil] = {}, Start = function(L0)

end }
S_o3836 = { [nil] = {}, Start = function(L0)

end }
S_o3837 = { [nil] = {}, Start = function(L0)

end }
S_o3838 = { [nil] = {}, Start = function(L0)

end }
S_o3839 = { [nil] = {}, Start = function(L0)

end }
S_o3840 = { [nil] = {}, Start = function(L0)

end }
S_o3841 = { [nil] = {}, Start = function(L0)

end }
S_o3842 = { [nil] = {}, Start = function(L0)

end }
S_o3843 = { [nil] = {}, Start = function(L0)

end }
S_o3844 = { [nil] = {}, Start = function(L0)

end }
S_o3845 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3845, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code3")
  else
    CallFunction(o3845, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  FormationLib.PlaceFormationPath(o3817, o3819, "/IngameSequences/Navigation/PlayerPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.5, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3845, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.3, "Code9")
  else
    CallFunction(o3845, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3817, o3819, "/IngameSequences/Navigation/PlayerPath_1", "pos_1", "pos_3", 1, 1, "Code10")
  else
    CallFunction(o3845, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  CallFunction(o3845, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code12")
  else
    CallFunction(o3845, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SendRadioMessageTake(o3691.Node, o3632.Node, 533)
  SendRadioMessageTake(o30.Node, o3632.Node, 534)
  CallFunction(o3845, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 14, "Code15")
  else
    CallFunction(o3845, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), o3752.Node)
  SendRadioMessageTake(o30.Node, o3632.Node, 535)
  CallFunction(o3845, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 12, "Code19")
  else
    CallFunction(o3845, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SendRadioMessageTake(o3691.Node, o3632.Node, 749)
  SendRadioMessageTake(o30.Node, o3632.Node, 536)
  CallFunction(o3845, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3852 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Track3")
  CallFunction(o3852, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code2")
  else
    CallFunction(o3852, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o3691.Node, o3632.Node, 532)
  CallFunction(o3852, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3855 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3855, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Track4")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3855, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code5")
  else
    CallFunction(o3855, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  FormationLib.PlaceFormationPath(o3817, o3819, "/IngameSequences/Navigation/PlayerPath_2")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Strega", 0, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3855, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.8, "Code11")
  else
    CallFunction(o3855, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 1, "MMMN", 0)
  CallFunction(o3855, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code13")
  else
    CallFunction(o3855, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 1, "MMMN", 0)
  CallFunction(o3855, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code15")
  else
    CallFunction(o3855, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 1, "MMMN", 0)
  CallFunction(o3855, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code17")
  else
    CallFunction(o3855, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 1, "MMMN", 0)
  CallFunction(o3855, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code19")
  else
    CallFunction(o3855, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 1, "MMMN", 0)
  CallFunction(o3855, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code21")
  else
    CallFunction(o3855, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 1, "MMMN", 0)
  CallFunction(o3855, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code23")
  else
    CallFunction(o3855, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 1, "MMMN", 0)
  CallFunction(o3855, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code25")
  else
    CallFunction(o3855, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 1, "MMMN", 0)
  CallFunction(o3855, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code27")
  else
    CallFunction(o3855, "Code27")
  end
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 1, "MMMN", 0)
  CallFunction(o3855, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code29")
  else
    CallFunction(o3855, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_12", 1, "MMMN", 0)
  CallFunction(o3855, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code31")
  else
    CallFunction(o3855, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_13", 1, "MMMN", 0)
  CallFunction(o3855, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code33")
  else
    CallFunction(o3855, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_14", 1, "MMMN", 0)
  CallFunction(o3855, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code35")
  else
    CallFunction(o3855, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_15", 1, "MMMN", 0)
  CallFunction(o3855, "Code36")
end }, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code37")
  else
    CallFunction(o3855, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_16", 1, "MMMN", 0)
  CallFunction(o3855, "Code38")
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code39")
  else
    CallFunction(o3855, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_17", 1, "MMMN", 0)
  CallFunction(o3855, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code41")
  else
    CallFunction(o3855, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 2, "MMMN", 0)
  o3647.SetStateValue(True)
  CallFunction(o3855, "Code43")
end, Code43 = function(L0)
  L0["CodeIndex"] = 43
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code44")
  else
    CallFunction(o3855, "Code44")
  end
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
  Game_PlayMusic(GetGameNode(), "Agressive")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_18", 8, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 4, "MMMN", 0)
  CallFunction(o3855, "Code47")
end, Code47 = function(L0)
  L0["CodeIndex"] = 47
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 16.5, "Code48")
  else
    CallFunction(o3855, "Code48")
  end
end, Code48 = function(L0)
  L0["CodeIndex"] = 48
  Director_EndCutscene(L0.Node)
  CallFunction(o3855, "Code49")
end, Code49 = function(L0)
  L0["CodeIndex"] = 49
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code50")
  else
    CallFunction(o3855, "Code50")
  end
end, Code50 = function(L0)
  L0["CodeIndex"] = 50
  o3648.SetStateValue(True)
  SED_SetTaskTextKey(2101, -1, -1)
  CallFunction(o3855, "Code52")
end, Code52 = function(L0)
  L0["CodeIndex"] = 52
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 300, "Code53")
  else
    CallFunction(o3855, "Code53")
  end
end, Code53 = function(L0)
  L0["CodeIndex"] = 53
  o3659.SetStateValue(True)
  CallFunction(o3855, "Code54")
end, Code54 = function(L0)
  L0["CodeIndex"] = 54
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3856.Value ~= True) then
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
o3856 = { [nil] = {}, GetCalculated = function()
  if not (o3625.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3856.SetStateValue(o3856.GetCalculated())
end, StartCalculate = function()
  o3856["Value"] = o3856.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3856.Value == L0) then
    o3856["Value"] = L0
    CallFunction(o3855, "ProcesseStateChange")
  end
end }
S_o3879 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3879, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code2")
  else
    CallFunction(o3879, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3817, o3819, "/IngameSequences/Navigation/PlayerPath_2", "pos_1", "pos_4", 0.75, 1, "Code3")
  else
    CallFunction(o3879, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3880.Value ~= True) then
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
o3880 = { [nil] = {}, GetCalculated = function()
  if not (o3647.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3880.SetStateValue(o3880.GetCalculated())
end, StartCalculate = function()
  o3880["Value"] = o3880.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3880.Value == L0) then
    o3880["Value"] = L0
    CallFunction(o3879, "ProcesseStateChange")
  end
end }
S_o3883 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3883, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code2")
  else
    CallFunction(o3883, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o3691.Node, o3632.Node, 537)
  CallFunction(o3883, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3884.Value ~= True) then
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
o3884 = { [nil] = {}, GetCalculated = function()
  if not (o3625.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3884.SetStateValue(o3884.GetCalculated())
end, StartCalculate = function()
  o3884["Value"] = o3884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3884.Value == L0) then
    o3884["Value"] = L0
    CallFunction(o3883, "ProcesseStateChange")
  end
end }
S_o3887 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3887, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o3887, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o3887, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_19", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Angelina", 0.5, "MFMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3887, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7.8, "Code9")
  else
    CallFunction(o3887, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/Scenario_Dynamic/Object/Angelina", 5, "MMTN", 5)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 2, "MFMN", 0)
  CallFunction(o3887, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code12")
  else
    CallFunction(o3887, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Angelina", 1, "MFMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_22", 2, "MMMN", 0)
  CallFunction(o3887, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code15")
  else
    CallFunction(o3887, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_Cut(L0.Node, 1)
  CallFunction(o3887, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code17")
  else
    CallFunction(o3887, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Angelina", 2, "MFMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_20", 0, "MMMN", 0)
  CallFunction(o3887, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6.75, "Code20")
  else
    CallFunction(o3887, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_21", 5, "MMMN", 0)
  CallFunction(o3887, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code22")
  else
    CallFunction(o3887, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Game_PlayMusic(GetGameNode(), "Track5")
  Director_EndCutscene(L0.Node)
  CallFunction(o3887, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code25")
  else
    CallFunction(o3887, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  SendRadioMessageTake(o3691.Node, o3632.Node, 540)
  CallFunction(o3887, "Code26")
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3888.Value ~= True) then
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
o3888 = { [nil] = {}, GetCalculated = function()
  if not (o3660.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3888.SetStateValue(o3888.GetCalculated())
end, StartCalculate = function()
  o3888["Value"] = o3888.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3888.Value == L0) then
    o3888["Value"] = L0
    CallFunction(o3887, "ProcesseStateChange")
  end
end }
S_o3898 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3898, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o3817, o3819, "/IngameSequences/Navigation/PlayerPath_3")
  CallFunction(o3898, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3817, o3819, "/IngameSequences/Navigation/PlayerPath_3", "pos_1", "pos_18", 1, 1, "Code3")
  else
    CallFunction(o3898, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3899.Value ~= True) then
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
o3899 = { [nil] = {}, GetCalculated = function()
  if not (o3660.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3899.SetStateValue(o3899.GetCalculated())
end, StartCalculate = function()
  o3899["Value"] = o3899.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3899.Value == L0) then
    o3899["Value"] = L0
    CallFunction(o3898, "ProcesseStateChange")
  end
end }
S_o3901 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3901, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code2")
  else
    CallFunction(o3901, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o3757.Node, o3632.Node, 538)
  SendRadioMessageTake(o3757.Node, o3632.Node, 759)
  CallFunction(o3901, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code5")
  else
    CallFunction(o3901, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o3691.Node, o3632.Node, 539)
  CallFunction(o3901, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3902.Value ~= True) then
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
o3902 = { [nil] = {}, GetCalculated = function()
  if not (o3660.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3902.SetStateValue(o3902.GetCalculated())
end, StartCalculate = function()
  o3902["Value"] = o3902.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3902.Value == L0) then
    o3902["Value"] = L0
    CallFunction(o3901, "ProcesseStateChange")
  end
end }
S_o3906 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3906, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Track6")
  CallFunction(o3906, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code3")
  else
    CallFunction(o3906, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "Track4")
  CallFunction(o3906, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code5")
  else
    CallFunction(o3906, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Game_PlayMusic(GetGameNode(), "Atmo")
  CallFunction(o3906, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3907.Value ~= True) then
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
o3907 = { [nil] = {}, GetCalculated = function()
  if not (o3660.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3907.SetStateValue(o3907.GetCalculated())
end, StartCalculate = function()
  o3907["Value"] = o3907.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3907.Value == L0) then
    o3907["Value"] = L0
    CallFunction(o3906, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 197)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_static_1", S_o30)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o307)
  o353 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o353)
  o399 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o399)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o445)
  o491 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o491)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o537)
  o583 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o583)
  o629 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o629)
  o675 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o675)
  o721 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o721)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o767)
  o813 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o813)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o859)
  o905 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_4", S_o905)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o997)
  o1043 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o1043)
  o1089 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o1089)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o1135)
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_6", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_7", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_7", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_7", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_8", S_o1411)
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_8", S_o1457)
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_8", S_o1503)
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o1733)
  o1779 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o1779)
  o1825 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_5", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o1871)
  o1917 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1917)
  o1963 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1963)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o2009)
  o2055 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o2055)
  o2101 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o2101)
  o2147 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o2147)
  o2193 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_4", S_o2193)
  o2239 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o2239)
  o2285 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o2285)
  o2331 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o2331)
  o2377 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o2377)
  o2423 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o2423)
  o2469 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_5", S_o2469)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_6", S_o2515)
  o2561 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_7", S_o2561)
  o2607 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o2607)
  o2653 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_3", S_o2653)
  o2699 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o2699)
  o2745 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o2745)
  o2791 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o2791)
  o2837 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o2837)
  o2883 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2x", S_o2883)
  o2929 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o2929)
  o2975 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2a", S_o2975)
  o3021 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o3021)
  o3067 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2a", S_o3067)
  o3113 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2b", S_o3113)
  o3159 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o3159)
  o3205 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3a", S_o3205)
  o3251 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o3251)
  o3297 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o3297)
  o3343 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_6", S_o3343)
  o3389 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6", S_o3389)
  o3435 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_5", S_o3435)
  o3481 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_5", S_o3481)
  o3527 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_5", S_o3527)
  o3573 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3a", S_o3573)
  o3620 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tStartScene_CrimsonVS.Strega", S_o3620)
  o3625.Start()
  o3626 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tPlayerLeavesBattleField", S_o3626)
  o3631.Start()
  o3632 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o3632)
  o3641.Start()
  o3642.Start()
  o3643.Start()
  o3644.Start()
  o3647.Start()
  o3648.Start()
  o3659.Start()
  o3661.Start()
  o3691 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Strega", S_o3691)
  o3701.Start()
  o3706.Start()
  o3707.Start()
  o3708.Start()
  o3716.Start()
  o3752 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o3752)
  o3755.Start()
  o3757 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Angelina", S_o3757)
  o3765.Start()
  o3816 = BindEasy(Node_Find("/"), "Camera", S_o3816)
  o3822 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o3822)
  o3823 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o3823)
  o3824 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o3824)
  o3825 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o3825)
  o3826 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o3826)
  o3827 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o3827)
  o3828 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o3828)
  o3829 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o3829)
  o3830 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_9", S_o3830)
  o3831 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_10", S_o3831)
  o3832 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11", S_o3832)
  o3833 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_12", S_o3833)
  o3834 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_13", S_o3834)
  o3835 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_14", S_o3835)
  o3836 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_15", S_o3836)
  o3837 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_16", S_o3837)
  o3838 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_17", S_o3838)
  o3839 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_18", S_o3839)
  o3840 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_19", S_o3840)
  o3841 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_20", S_o3841)
  o3842 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_21", S_o3842)
  o3843 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_22", S_o3843)
  o3844 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o3844)
  o3845 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro", S_o3845)
  o3852 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro_Audio", S_o3852)
  o3855 = BindEasy(Node_Find("/IngameSequences/Director"), "CrimsonVS.Strega", S_o3855)
  o3879 = BindEasy(Node_Find("/IngameSequences/Director"), "CrimsonVS.Strega_AddOn", S_o3879)
  o3883 = BindEasy(Node_Find("/IngameSequences/Director"), "CrimsonVS.Strega_Audio", S_o3883)
  o3887 = BindEasy(Node_Find("/IngameSequences/Director"), "AngelinaComeScene", S_o3887)
  o3898 = BindEasy(Node_Find("/IngameSequences/Director"), "AngelinaComeScene_AddOn", S_o3898)
  o3901 = BindEasy(Node_Find("/IngameSequences/Director"), "AngelinaComeScene_Audio", S_o3901)
  o3906 = BindEasy(Node_Find("/IngameSequences/Director"), "AngelinaComeScene_Music", S_o3906)
  o3817 = { {}, o3632 }()
  o3818 = { {}, o3757 }()
  o3820 = { {}, o3691 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
