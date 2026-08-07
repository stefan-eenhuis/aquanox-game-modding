-- dekompiliert aus 6h1.sco
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
  Game_LoadTextTable(node0, "dat/sty/de/minfo_6h1.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_6H1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_grabsuche.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_orden.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_tears.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension1.sam", 4)
  Game_SetNPCHitFactor(node0, 1)
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
  Body_SetCS(node8, MAT_Vector3(1693.289315, 1563.696394, 380.650403), MAT_Vector3(92.905975, 0, 0))
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
  Body_SetCS(node45, MAT_Vector3(2218.096458, 3304.266953, 195.293218), MAT_Vector3(-133.6458, -0.407718, 5.47264))
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
  Body_SetCS(node46, MAT_Vector3(2201.775353, 3399.979402, 200.961129), MAT_Vector3(97.04783, -3.460093, -3.316174))
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
  Body_SetCS(node47, MAT_Vector3(1813.348445, 3320.002503, 201.469036), MAT_Vector3(70.12209, -0.407718, 5.47264))
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
  Body_SetCS(node57, MAT_Vector3(1759.331496, 3092.620056, 203.801529), MAT_Vector3(8.621691, 0.185842, 1.725865))
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
  Body_SetCS(node58, MAT_Vector3(2138.386635, 3593.115522, 203.869594), MAT_Vector3(-148.2199, -10.88152, 0.804148))
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
  Body_SetCS(node63, MAT_Vector3(596.8902, 1664.985, 176.920271), MAT_Vector3(-152.9573, 0, 0))
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
  Body_SetCS(node65, MAT_Vector3(1185.975, 1983.153, 61.751469), MAT_Vector3(175.7275, 0, 0))
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
  Body_SetCS(node71, MAT_Vector3(2051.074804, 3207.603701, 207.796271), MAT_Vector3(-102.4335, -10.82138, 92.85414))
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
  Body_SetCS(node72, MAT_Vector3(2160.283494, 3537.007966, 196.483713), MAT_Vector3(37.814907, -17.385258, 3.027063))
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
  Body_SetCS(node73, MAT_Vector3(2010.491779, 3498.774329, 220.686002), MAT_Vector3(175.4148, -75.11055, 139.5245))
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
  Body_SetCS(node74, MAT_Vector3(724.234654, 1856.251867, 195.007205), MAT_Vector3(175.4148, -75.11055, 139.5245))
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
  Body_SetCS(node75, MAT_Vector3(1841.704737, 3043.404833, 202.340197), MAT_Vector3(177.1805, 52.58333, 78.95249))
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
  Body_SetCS(node76, MAT_Vector3(802.047836, 1866.442221, 194.364543), MAT_Vector3(177.1805, 52.58333, 78.95249))
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
  Body_SetCS(node77, MAT_Vector3(2003.060951, 3235.42332, 211.604637), MAT_Vector3(34.91528, -23.821819, 86.76637))
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
  Body_SetCS(node78, MAT_Vector3(2336.404703, 784.749861, 7.218707), MAT_Vector3(53.13477, -33.65485, 84.32111))
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
  Body_SetCS(node79, MAT_Vector3(2336.790896, 748.623522, 1.185215), MAT_Vector3(120.002043, -15.508087, 2.354751))
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
  Body_SetCS(node80, MAT_Vector3(2911.620788, 2569.733227, 17.441625), MAT_Vector3(32.585044, -68.53466, 119.402883))
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
  Body_SetCS(node81, MAT_Vector3(2266.272654, 782.550869, 21.948306), MAT_Vector3(32.58504, -68.53466, 119.4029))
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
  Body_SetCS(node84, MAT_Vector3(716.463228, 1653.919416, 176.653017), MAT_Vector3(-8.664664, 3.188822, -7.246794))
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
  Body_SetCS(node85, MAT_Vector3(2334.874229, 1736.306582, 103.246394), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node86, MAT_Vector3(1036.842603, 589.776329, 2.540032), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node87, MAT_Vector3(2758.728043, 2082.138647, 1.939912), MAT_Vector3(22.503805, -2.775514, 19.216416))
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
  Body_SetCS(node88, MAT_Vector3(993.171321, 622.478099, 2.075765), MAT_Vector3(0, 0, 0))
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
  Body_SetCS(node89, MAT_Vector3(2990.924451, 2565.068362, 6.463703), MAT_Vector3(89.43641, -16.832844, 64.675591))
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
  node97 = Node_CreateNode("NOD_PatrolArea", "PatrolArea")
  Node_AddSon(node96, node97)
  PatrolArea_SetPosition(node97, MAT_Vector3(1560.836982, 1289.57119, 315))
  PatrolArea_SetRadius(node97, 100)
  PatrolArea_SetMinZ(node97, -50)
  PatrolArea_SetMaxZ(node97, 50)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_PatrolArea", "TriggerArea")
  Node_AddSon(node96, node98)
  PatrolArea_SetPosition(node98, MAT_Vector3(1560.837, 1289.571, 315))
  PatrolArea_SetRadius(node98, 350)
  PatrolArea_SetMinZ(node98, -350)
  PatrolArea_SetMaxZ(node98, 150)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_PatrolArea", "FollowArea")
  Node_AddSon(node96, node99)
  PatrolArea_SetPosition(node99, MAT_Vector3(1560.837, 1289.571, 315))
  PatrolArea_SetRadius(node99, 550)
  PatrolArea_SetMinZ(node99, -320)
  PatrolArea_SetMaxZ(node99, 125)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Path", "HarvesterDock_1_ApproachPath")
  Node_AddSon(node96, node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node100, node101)
  Position_SetPosition(node101, MAT_Vector3(1660.57512, 1371.931064, 355))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node100, node102)
  Position_SetPosition(node102, MAT_Vector3(1765.252401, 1461.377474, 355))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Path", "HarvesterDock_1_DockPath")
  Node_AddSon(node96, node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node103, node104)
  Position_SetPosition(node104, MAT_Vector3(1795.905637, 1484.580438, 355))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node103, node105)
  Position_SetPosition(node105, MAT_Vector3(1864.678951, 1571.161559, 355))
  Position_SetRadius(node105, 5)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Path", "HarvesterDock_2_ApproachPath")
  Node_AddSon(node96, node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node106, node107)
  Position_SetPosition(node107, MAT_Vector3(1832.323804, 1221.955449, 355))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node106, node108)
  Position_SetPosition(node108, MAT_Vector3(1891.638542, 1389.248339, 355))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Path", "HarvesterDock_2_DockPath")
  Node_AddSon(node96, node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node109, node110)
  Position_SetPosition(node110, MAT_Vector3(1895.731029, 1462.213934, 355))
  Position_SetRadius(node110, 5)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node109, node111)
  Position_SetPosition(node111, MAT_Vector3(1897.244192, 1525.462086, 355))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Path", "MercScout2_1_Path")
  Node_AddSon(node96, node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node112, node113)
  Position_SetPosition(node113, MAT_Vector3(1501.655, 1051.696, 365))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node112, node114)
  Position_SetPosition(node114, MAT_Vector3(1549.67379, 1118.474633, 365))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Path", "MercScout2_2_Path")
  Node_AddSon(node96, node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node115, node116)
  Position_SetPosition(node116, MAT_Vector3(1483.188535, 1062.328207, 365))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node115, node117)
  Position_SetPosition(node117, MAT_Vector3(1516.438924, 1140.64153, 380.476839))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Path", "MercScout2_3_Path")
  Node_AddSon(node96, node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node118, node119)
  Position_SetPosition(node119, MAT_Vector3(1466.960176, 1075.198695, 365))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node118, node120)
  Position_SetPosition(node120, MAT_Vector3(1487.05884, 1159.513132, 336.40424))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Path", "MercScout2_4_Path")
  Node_AddSon(node96, node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node121, node122)
  Position_SetPosition(node122, MAT_Vector3(1452.970254, 1086.950387, 365))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node121, node123)
  Position_SetPosition(node123, MAT_Vector3(1453.793482, 1170.705363, 389.414066))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Path", "MercScout2_5_Path")
  Node_AddSon(node96, node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node124, node125)
  Position_SetPosition(node125, MAT_Vector3(1522.35914, 1040.504044, 365))
  Position_SetRadius(node125, 5)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node124, node126)
  Position_SetPosition(node126, MAT_Vector3(1580.530302, 1096.0438, 321.296729))
  Position_SetRadius(node126, 5)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Path", "MercScout2_6_Path")
  Node_AddSon(node96, node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node127, node128)
  Position_SetPosition(node128, MAT_Vector3(1542.504234, 1027.073844, 365))
  Position_SetRadius(node128, 5)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node127, node129)
  Position_SetPosition(node129, MAT_Vector3(1611.355843, 1070.549926, 364.544056))
  Position_SetRadius(node129, 5)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Path", "MercScout2_7_Path")
  Node_AddSon(node96, node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node130, node131)
  Position_SetPosition(node131, MAT_Vector3(1562.649234, 1013.084254, 365))
  Position_SetRadius(node131, 5)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node130, node132)
  Position_SetPosition(node132, MAT_Vector3(1642.740028, 1042.584705, 387.425475))
  Position_SetRadius(node132, 5)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_1_Path1")
  Node_AddSon(node96, node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node133, node134)
  Position_SetPosition(node134, MAT_Vector3(1358.808, 1061.129, 330))
  Position_SetRadius(node134, 5)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node133, node135)
  Position_SetPosition(node135, MAT_Vector3(1420.040361, 1115.173055, 330))
  Position_SetRadius(node135, 5)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node133, node136)
  Position_SetPosition(node136, MAT_Vector3(1532.168354, 1212.040397, 330))
  Position_SetRadius(node136, 5)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node133, node137)
  Position_SetPosition(node137, MAT_Vector3(1533.908519, 1358.15879, 330))
  Position_SetRadius(node137, 5)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_1_Path2")
  Node_AddSon(node96, node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node138, node139)
  Position_SetPosition(node139, MAT_Vector3(1669.39239, 1467.368658, 330))
  Position_SetRadius(node139, 5)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node138, node140)
  Position_SetPosition(node140, MAT_Vector3(1798.113891, 1476.816019, 330))
  Position_SetRadius(node140, 5)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node138, node141)
  Position_SetPosition(node141, MAT_Vector3(1905.578943, 1441.388557, 330))
  Position_SetRadius(node141, 5)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node138, node142)
  Position_SetPosition(node142, MAT_Vector3(1970.530108, 1356.362095, 330))
  Position_SetRadius(node142, 5)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node138, node143)
  Position_SetPosition(node143, MAT_Vector3(1922.111901, 1250.078368, 330))
  Position_SetRadius(node143, 5)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node138, node144)
  Position_SetPosition(node144, MAT_Vector3(1774.495845, 1186.307821, 330))
  Position_SetRadius(node144, 5)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node138, node145)
  Position_SetPosition(node145, MAT_Vector3(1662.307722, 1161.508486, 330))
  Position_SetRadius(node145, 5)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node138, node146)
  Position_SetPosition(node146, MAT_Vector3(1587.909113, 1172.13708, 330))
  Position_SetRadius(node146, 5)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_1_Path3")
  Node_AddSon(node96, node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node147, node148)
  Position_SetPosition(node148, MAT_Vector3(1532.40467, 1211.107355, 330))
  Position_SetRadius(node148, 5)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node147, node149)
  Position_SetPosition(node149, MAT_Vector3(1533.647679, 1358.34573, 330))
  Position_SetRadius(node149, 5)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_2_Path1")
  Node_AddSon(node96, node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node150, node151)
  Position_SetPosition(node151, MAT_Vector3(1408.808, 1011.129, 330))
  Position_SetRadius(node151, 5)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node150, node152)
  Position_SetPosition(node152, MAT_Vector3(1470.04, 1065.173, 330))
  Position_SetRadius(node152, 5)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node150, node153)
  Position_SetPosition(node153, MAT_Vector3(1582.168, 1162.04, 330))
  Position_SetRadius(node153, 5)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node150, node154)
  Position_SetPosition(node154, MAT_Vector3(1583.909, 1308.159, 330))
  Position_SetRadius(node154, 5)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_2_Path2")
  Node_AddSon(node96, node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node155, node156)
  Position_SetPosition(node156, MAT_Vector3(1719.392, 1417.369, 330))
  Position_SetRadius(node156, 5)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node155, node157)
  Position_SetPosition(node157, MAT_Vector3(1848.114, 1426.816, 330))
  Position_SetRadius(node157, 5)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node155, node158)
  Position_SetPosition(node158, MAT_Vector3(1955.579, 1391.389, 330))
  Position_SetRadius(node158, 5)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node155, node159)
  Position_SetPosition(node159, MAT_Vector3(2020.53, 1306.362, 330))
  Position_SetRadius(node159, 5)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node155, node160)
  Position_SetPosition(node160, MAT_Vector3(1972.112, 1200.078, 330))
  Position_SetRadius(node160, 5)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node155, node161)
  Position_SetPosition(node161, MAT_Vector3(1824.496, 1136.308, 330))
  Position_SetRadius(node161, 5)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node155, node162)
  Position_SetPosition(node162, MAT_Vector3(1712.308, 1111.508, 330))
  Position_SetRadius(node162, 5)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node155, node163)
  Position_SetPosition(node163, MAT_Vector3(1637.909, 1122.137, 330))
  Position_SetRadius(node163, 5)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_2_Path3")
  Node_AddSon(node96, node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node164, node165)
  Position_SetPosition(node165, MAT_Vector3(1582.405, 1161.107, 330))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node164, node166)
  Position_SetPosition(node166, MAT_Vector3(1583.648, 1308.346, 330))
  Position_SetRadius(node166, 5)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_3_Path1")
  Node_AddSon(node96, node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node167, node168)
  Position_SetPosition(node168, MAT_Vector3(1458.808, 961.129, 330))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node167, node169)
  Position_SetPosition(node169, MAT_Vector3(1520.04, 1015.173, 330))
  Position_SetRadius(node169, 5)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node167, node170)
  Position_SetPosition(node170, MAT_Vector3(1632.168, 1112.04, 330))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node167, node171)
  Position_SetPosition(node171, MAT_Vector3(1633.909, 1258.159, 330))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_3_Path2")
  Node_AddSon(node96, node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node172, node173)
  Position_SetPosition(node173, MAT_Vector3(1769.392, 1367.369, 330))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node172, node174)
  Position_SetPosition(node174, MAT_Vector3(1898.114, 1376.816, 330))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node172, node175)
  Position_SetPosition(node175, MAT_Vector3(2005.579, 1341.389, 330))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node172, node176)
  Position_SetPosition(node176, MAT_Vector3(2070.53, 1256.362, 330))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node172, node177)
  Position_SetPosition(node177, MAT_Vector3(2022.112, 1150.078, 330))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node172, node178)
  Position_SetPosition(node178, MAT_Vector3(1874.496, 1086.308, 330))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node172, node179)
  Position_SetPosition(node179, MAT_Vector3(1762.308, 1061.508, 330))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node172, node180)
  Position_SetPosition(node180, MAT_Vector3(1687.909, 1072.137, 330))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Path", "MercBomber_bigbang_3_Path3")
  Node_AddSon(node96, node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node181, node182)
  Position_SetPosition(node182, MAT_Vector3(1632.405, 1111.107, 330))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node181, node183)
  Position_SetPosition(node183, MAT_Vector3(1633.648, 1258.346, 330))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Path", "MercBomber_1_Path")
  Node_AddSon(node96, node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node184, node185)
  Position_SetPosition(node185, MAT_Vector3(1341.48501, 1064.369023, 380))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node184, node186)
  Position_SetPosition(node186, MAT_Vector3(1392.720516, 1114.033976, 380))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Path", "MercBomber_2_Path")
  Node_AddSon(node96, node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node187, node188)
  Position_SetPosition(node188, MAT_Vector3(1393.019693, 1032.607693, 380))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node187, node189)
  Position_SetPosition(node189, MAT_Vector3(1432.721, 1074.034, 380))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Path", "MercBomber_3_Path")
  Node_AddSon(node96, node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node190, node191)
  Position_SetPosition(node191, MAT_Vector3(1434.667506, 995.079412, 380))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node190, node192)
  Position_SetPosition(node192, MAT_Vector3(1472.721, 1034.034, 380))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_PatrolArea", "Natvs.Strega")
  Node_AddSon(node96, node193)
  PatrolArea_SetPosition(node193, MAT_Vector3(1635.053805, 1455.026575, 290))
  PatrolArea_SetRadius(node193, 100)
  PatrolArea_SetMinZ(node193, -20)
  PatrolArea_SetMaxZ(node193, 20)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Path", "EeriePath_1")
  Node_AddSon(node96, node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node194, node195)
  Position_SetPosition(node195, MAT_Vector3(1816.927242, 1415.335633, 300))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node194, node196)
  Position_SetPosition(node196, MAT_Vector3(1686.592133, 1352.707557, 252.731809))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node194, node197)
  Position_SetPosition(node197, MAT_Vector3(1568.10589, 1273.152508, 298.877342))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node194, node198)
  Position_SetPosition(node198, MAT_Vector3(1437.771022, 1271.459848, 301.976967))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node194, node199)
  Position_SetPosition(node199, MAT_Vector3(1354.830652, 1340.858933, 326.81786))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node194, node200)
  Position_SetPosition(node200, MAT_Vector3(1378.527901, 1405.180036, 291.95568))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node194, node201)
  Position_SetPosition(node201, MAT_Vector3(1468.238913, 1420.413982, 266.921118))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node194, node202)
  Position_SetPosition(node202, MAT_Vector3(1615.500387, 1410.258018, 284.323809))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node194, node203)
  Position_SetPosition(node203, MAT_Vector3(1522.404053, 1283.308472, 281.824301))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node194, node204)
  Position_SetPosition(node204, MAT_Vector3(1546.101302, 1205.446084, 304.126111))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node194, node205)
  Position_SetPosition(node205, MAT_Vector3(1657.265839, 1129.905944, 304.729257))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node194, node206)
  Position_SetPosition(node206, MAT_Vector3(1697.25955, 1044.564106, 291.016154))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node194, node207)
  Position_SetPosition(node207, MAT_Vector3(1568.144388, 987.918557, 280))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node194, node208)
  Position_SetPosition(node208, MAT_Vector3(1521.812547, 1200.564345, 300))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node194, node209)
  Position_SetPosition(node209, MAT_Vector3(1591.487825, 1276.143471, 267.203488))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node194, node210)
  Position_SetPosition(node210, MAT_Vector3(1689.505127, 1270.238354, 302.103067))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node194, node211)
  Position_SetPosition(node211, MAT_Vector3(1783.979339, 1207.64875, 280))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node194, node212)
  Position_SetPosition(node212, MAT_Vector3(1884.357985, 1253.70524, 280))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node194, node213)
  Position_SetPosition(node213, MAT_Vector3(1897.348222, 1377.70257, 300))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Path", "Strega_Path_1")
  Node_AddSon(node96, node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node214, node215)
  Position_SetPosition(node215, MAT_Vector3(2203.939901, 1547.743053, 385))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node214, node216)
  Position_SetPosition(node216, MAT_Vector3(1987.279441, 1385.247581, 385))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Path", "Bomb1_Path_1")
  Node_AddSon(node96, node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node217, node218)
  Position_SetPosition(node218, MAT_Vector3(2494.64091, 1788.097541, 345))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node217, node219)
  Position_SetPosition(node219, MAT_Vector3(1987.78737, 1645.645353, 372.009572))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Path", "Bomb2_Path_1")
  Node_AddSon(node96, node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node220, node221)
  Position_SetPosition(node221, MAT_Vector3(2501.664441, 1771.749804, 345))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node220, node222)
  Position_SetPosition(node222, MAT_Vector3(1995.120215, 1518.96661, 338.686074))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_PatrolArea", "FollowArea_Bombs")
  Node_AddSon(node96, node223)
  PatrolArea_SetPosition(node223, MAT_Vector3(2492.723275, 1776.105572, 315))
  PatrolArea_SetRadius(node223, 600)
  PatrolArea_SetMinZ(node223, -320)
  PatrolArea_SetMaxZ(node223, 125)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Path", "StregaEcape_Path")
  Node_AddSon(node96, node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node224, node225)
  Position_SetPosition(node225, MAT_Vector3(1420.777652, 1433.31865, 300))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node224, node226)
  Position_SetPosition(node226, MAT_Vector3(1185.773081, 1467.565948, 350))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Path", "MercsEcape_Path_1")
  Node_AddSon(node96, node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node227, node228)
  Position_SetPosition(node228, MAT_Vector3(1420.778, 1433.319, 300))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node227, node229)
  Position_SetPosition(node229, MAT_Vector3(1185.773, 1467.566, 350))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Path", "MercsEcape_Path_2")
  Node_AddSon(node96, node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node230, node231)
  Position_SetPosition(node231, MAT_Vector3(1420.778, 1383.319, 300))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node230, node232)
  Position_SetPosition(node232, MAT_Vector3(1185.773, 1417.566, 350))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Path", "MercsEcape_Path_3")
  Node_AddSon(node96, node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node233, node234)
  Position_SetPosition(node234, MAT_Vector3(1420.778, 1333.319, 300))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node233, node235)
  Position_SetPosition(node235, MAT_Vector3(1185.773, 1367.566, 350))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Path", "MercsEcape_Path_4")
  Node_AddSon(node96, node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node236, node237)
  Position_SetPosition(node237, MAT_Vector3(1420.778, 1283.319, 300))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node236, node238)
  Position_SetPosition(node238, MAT_Vector3(1185.773, 1317.566, 350))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node94, node239)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node94, node240)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Trigger", "tNatvsStregaArea")
  Node_AddSon(node240, node241)
  Body_SetFriendOrFoeID(node241, 0)
  Body_SetPosition(node241, MAT_Vector3(1633.574062, 1454.176442, 290))
  Trigger_SetPresenceSphere(node241, 256)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node94, node242)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_1")
  Node_AddSon(node242, node243)
  Body_SetCS(node243, MAT_Vector3(1531.791268, 1503.098223, 367.815739), MAT_Vector3(-177.211493, 0, 0))
  Node_ParseIniFile(node243, "osd/dir/dir_cammesh_emitter_mineexp.osd")
  Body_SetFriendOrFoeID(node243, 4)
  Body_SetNameKey(node243, 348)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_2")
  Node_AddSon(node242, node244)
  Body_SetCS(node244, MAT_Vector3(1573.358968, 1511.885354, 353.147934), MAT_Vector3(-179.5274, 0, 0))
  Node_ParseIniFile(node244, "osd/dir/dir_cammesh_emitter_mineexp.osd")
  Body_SetFriendOrFoeID(node244, 4)
  Body_SetNameKey(node244, 348)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_generic", "dir_cammesh_emitter_3")
  Node_AddSon(node242, node245)
  Body_SetCS(node245, MAT_Vector3(1617.813462, 1514.185818, 362.036462), MAT_Vector3(-179.5274, 0, 0))
  Node_ParseIniFile(node245, "osd/dir/dir_cammesh_emitter_mineexp.osd")
  Body_SetFriendOrFoeID(node245, 4)
  Body_SetNameKey(node245, 348)
  Body_SetCargoKey(node245, -1, 0)
  Body_SetCargoKey(node245, -1, 1)
  Body_SetCargoKey(node245, -1, 2)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node242, node246)
  Body_SetCS(node246, MAT_Vector3(1975.977047, 1433.844462, 341.490743), MAT_Vector3(172.687395, 0, 0))
  Node_ParseIniFile(node246, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node246, 0)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node242, node247)
  Body_SetCS(node247, MAT_Vector3(1781.064808, 1494.235258, 354.678733), MAT_Vector3(140.939914, 0, 0))
  Node_ParseIniFile(node247, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node247, 4)
  Body_SetNameKey(node247, -1)
  Body_SetCargoKey(node247, -1, 0)
  Body_SetCargoKey(node247, -1, 1)
  Body_SetCargoKey(node247, -1, 2)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node242, node248)
  Body_SetCS(node248, MAT_Vector3(1795.609432, 1483.57936, 356.948831), MAT_Vector3(139.393595, 0, 0))
  Node_ParseIniFile(node248, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node248, 4)
  Body_SetNameKey(node248, -1)
  Body_SetCargoKey(node248, -1, 0)
  Body_SetCargoKey(node248, -1, 1)
  Body_SetCargoKey(node248, -1, 2)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_vessel", "gen_transporter_1")
  Node_AddSon(node242, node249)
  Body_SetCS(node249, MAT_Vector3(1075.493054, 488.514435, 400), MAT_Vector3(-70.802683, 0, 0))
  Node_ParseIniFile(node249, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node249, 1)
  Body_SetNameKey(node249, -1)
  Body_SetCargoKey(node249, -1, 0)
  Body_SetCargoKey(node249, -1, 1)
  Body_SetCargoKey(node249, -1, 2)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_vessel", "gen_transporter_2")
  Node_AddSon(node242, node250)
  Body_SetCS(node250, MAT_Vector3(1155.796188, 434.191655, 385), MAT_Vector3(-70.80268, 0, 0))
  Node_ParseIniFile(node250, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node250, 1)
  Body_SetNameKey(node250, -1)
  Body_SetCargoKey(node250, -1, 0)
  Body_SetCargoKey(node250, -1, 1)
  Body_SetCargoKey(node250, -1, 2)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_vessel", "mer_scout1_wide_1")
  Node_AddSon(node242, node251)
  Body_SetCS(node251, MAT_Vector3(1415.108284, 933.01563, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node251, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node251, 1)
  Body_SetNameKey(node251, -1)
  Body_SetCargoKey(node251, -1, 0)
  Body_SetCargoKey(node251, -1, 1)
  Body_SetCargoKey(node251, -1, 2)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_vessel", "mer_scout1_wide_2")
  Node_AddSon(node242, node252)
  Body_SetCS(node252, MAT_Vector3(1391.683245, 928.721062, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node252, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node252, 1)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_vessel", "mer_scout1_wide_3")
  Node_AddSon(node242, node253)
  Body_SetCS(node253, MAT_Vector3(1422.135181, 913.885422, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node253, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node253, 1)
  Body_SetNameKey(node253, -1)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_vessel", "mer_scout1_wide_4")
  Node_AddSon(node242, node254)
  Body_SetCS(node254, MAT_Vector3(1370.600539, 920.132001, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node254, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node254, 1)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, -1, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_vessel", "mer_scout1_wide_5")
  Node_AddSon(node242, node255)
  Body_SetCS(node255, MAT_Vector3(1425.649174, 886.946931, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node255, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node255, 1)
  Body_SetNameKey(node255, -1)
  Body_SetCargoKey(node255, -1, 0)
  Body_SetCargoKey(node255, -1, 1)
  Body_SetCargoKey(node255, -1, 2)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_vessel", "mer_scout2_wide_1")
  Node_AddSon(node242, node256)
  Body_SetCS(node256, MAT_Vector3(1401.554624, 913.982653, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node256, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node256, 1)
  Body_SetNameKey(node256, -1)
  Body_SetCargoKey(node256, -1, 0)
  Body_SetCargoKey(node256, -1, 1)
  Body_SetCargoKey(node256, -1, 2)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_vessel", "mer_scout2_wide_2")
  Node_AddSon(node242, node257)
  Body_SetCS(node257, MAT_Vector3(1387.564613, 925.734056, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node257, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node257, 1)
  Body_SetNameKey(node257, -1)
  Body_SetCargoKey(node257, -1, 0)
  Body_SetCargoKey(node257, -1, 1)
  Body_SetCargoKey(node257, -1, 2)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_vessel", "mer_scout2_wide_3")
  Node_AddSon(node242, node258)
  Body_SetCS(node258, MAT_Vector3(1371.896024, 937.485405, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node258, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node258, 1)
  Body_SetNameKey(node258, -1)
  Body_SetCargoKey(node258, -1, 0)
  Body_SetCargoKey(node258, -1, 1)
  Body_SetCargoKey(node258, -1, 2)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_vessel", "mer_scout2_wide_4")
  Node_AddSon(node242, node259)
  Body_SetCS(node259, MAT_Vector3(1350.071989, 949.796356, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node259, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node259, 1)
  Body_SetNameKey(node259, -1)
  Body_SetCargoKey(node259, -1, 0)
  Body_SetCargoKey(node259, -1, 1)
  Body_SetCargoKey(node259, -1, 2)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_vessel", "mer_scout2_wide_5")
  Node_AddSon(node242, node260)
  Body_SetCS(node260, MAT_Vector3(1426.176624, 900.552408, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node260, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node260, 1)
  Body_SetNameKey(node260, -1)
  Body_SetCargoKey(node260, -1, 0)
  Body_SetCargoKey(node260, -1, 1)
  Body_SetCargoKey(node260, -1, 2)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_vessel", "mer_scout2_wide_6")
  Node_AddSon(node242, node261)
  Body_SetCS(node261, MAT_Vector3(1448.000156, 887.681802, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node261, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node261, 1)
  Body_SetNameKey(node261, -1)
  Body_SetCargoKey(node261, -1, 0)
  Body_SetCargoKey(node261, -1, 1)
  Body_SetCargoKey(node261, -1, 2)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_vessel", "mer_scout2_wide_7")
  Node_AddSon(node242, node262)
  Body_SetCS(node262, MAT_Vector3(1468.705285, 874.251663, 365), MAT_Vector3(-31.40155, 0, 0))
  Node_ParseIniFile(node262, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node262, 1)
  Body_SetNameKey(node262, -1)
  Body_SetCargoKey(node262, -1, 0)
  Body_SetCargoKey(node262, -1, 1)
  Body_SetCargoKey(node262, -1, 2)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_vessel", "mer_bomber_bigbang_1")
  Node_AddSon(node242, node263)
  Body_SetCS(node263, MAT_Vector3(1287.941072, 963.31798, 330), MAT_Vector3(-36.888809, 0, 0))
  Node_ParseIniFile(node263, "osd/mer/mer_bomber_at_big_bigbang2.osd")
  Body_SetFriendOrFoeID(node263, 1)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, -1, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_vessel", "mer_bomber_bigbang_2")
  Node_AddSon(node242, node264)
  Body_SetCS(node264, MAT_Vector3(1337.941, 913.318, 330), MAT_Vector3(-36.88881, 0, 0))
  Node_ParseIniFile(node264, "osd/mer/mer_bomber_at_big_bigbang2.osd")
  Body_SetFriendOrFoeID(node264, 1)
  Body_SetNameKey(node264, -1)
  Body_SetCargoKey(node264, -1, 0)
  Body_SetCargoKey(node264, -1, 1)
  Body_SetCargoKey(node264, -1, 2)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_vessel", "mer_bomber_bigbang_3")
  Node_AddSon(node242, node265)
  Body_SetCS(node265, MAT_Vector3(1387.941, 863.318, 330), MAT_Vector3(-36.88881, 0, 0))
  Node_ParseIniFile(node265, "osd/mer/mer_bomber_at_big_bigbang2.osd")
  Body_SetFriendOrFoeID(node265, 1)
  Body_SetNameKey(node265, -1)
  Body_SetCargoKey(node265, -1, 0)
  Body_SetCargoKey(node265, -1, 1)
  Body_SetCargoKey(node265, -1, 2)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_vessel", "mer_bomber_1")
  Node_AddSon(node242, node266)
  Body_SetCS(node266, MAT_Vector3(1285.276286, 999.322273, 350), MAT_Vector3(-36.88881, 0, 0))
  Node_ParseIniFile(node266, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node266, 1)
  Body_SetNameKey(node266, -1)
  Body_SetCargoKey(node266, -1, 0)
  Body_SetCargoKey(node266, -1, 1)
  Body_SetCargoKey(node266, -1, 2)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_vessel", "mer_bomber_2")
  Node_AddSon(node242, node267)
  Body_SetCS(node267, MAT_Vector3(1325.276, 959.3223, 350), MAT_Vector3(-36.88881, 0, 0))
  Node_ParseIniFile(node267, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node267, 1)
  Body_SetNameKey(node267, -1)
  Body_SetCargoKey(node267, -1, 0)
  Body_SetCargoKey(node267, -1, 1)
  Body_SetCargoKey(node267, -1, 2)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_vessel", "mer_bomber_3")
  Node_AddSon(node242, node268)
  Body_SetCS(node268, MAT_Vector3(1365.276, 919.3223, 350), MAT_Vector3(-36.88881, 0, 0))
  Node_ParseIniFile(node268, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node268, 1)
  Body_SetNameKey(node268, -1)
  Body_SetCargoKey(node268, -1, 0)
  Body_SetCargoKey(node268, -1, 1)
  Body_SetCargoKey(node268, -1, 2)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_vessel", "Eerie")
  Node_AddSon(node242, node269)
  Body_SetCS(node269, MAT_Vector3(1513.394086, 1661.841225, 429.904585), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node269, "osd/wng/wng_eerie_noemp.osd")
  Body_SetFriendOrFoeID(node269, 3)
  Body_SetNameKey(node269, -1)
  Body_SetCargoKey(node269, -1, 0)
  Body_SetCargoKey(node269, -1, 1)
  Body_SetCargoKey(node269, -1, 2)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_vessel", "Strega_wide_leech_1")
  Node_AddSon(node242, node270)
  Body_SetCS(node270, MAT_Vector3(2936.840121, 1964.736994, 360), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node270, "osd/mer/mer_strega_wide_leech.osd")
  Body_SetFriendOrFoeID(node270, 2)
  Body_SetNameKey(node270, -1)
  Body_SetCargoKey(node270, -1, 0)
  Body_SetCargoKey(node270, -1, 1)
  Body_SetCargoKey(node270, -1, 2)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_vessel", "mer_scout1_wide_6")
  Node_AddSon(node242, node271)
  Body_SetCS(node271, MAT_Vector3(2922.335624, 1987.58888, 350), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node271, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node271, 1)
  Body_SetNameKey(node271, -1)
  Body_SetCargoKey(node271, -1, 0)
  Body_SetCargoKey(node271, -1, 1)
  Body_SetCargoKey(node271, -1, 2)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_vessel", "mer_scout1_wide_7")
  Node_AddSon(node242, node272)
  Body_SetCS(node272, MAT_Vector3(2910.818829, 2009.061692, 350), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node272, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node272, 1)
  Body_SetNameKey(node272, -1)
  Body_SetCargoKey(node272, -1, 0)
  Body_SetCargoKey(node272, -1, 1)
  Body_SetCargoKey(node272, -1, 2)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_vessel", "mer_scout1_wide_8")
  Node_AddSon(node242, node273)
  Body_SetCS(node273, MAT_Vector3(2948.10323, 1941.520315, 350), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node273, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node273, 1)
  Body_SetNameKey(node273, -1)
  Body_SetCargoKey(node273, -1, 0)
  Body_SetCargoKey(node273, -1, 1)
  Body_SetCargoKey(node273, -1, 2)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_vessel", "mer_scout1_wide_9")
  Node_AddSon(node242, node274)
  Body_SetCS(node274, MAT_Vector3(2956.106859, 1923.366439, 350), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node274, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node274, 1)
  Body_SetNameKey(node274, -1)
  Body_SetCargoKey(node274, -1, 0)
  Body_SetCargoKey(node274, -1, 1)
  Body_SetCargoKey(node274, -1, 2)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_vessel", "mer_bomb_1")
  Node_AddSon(node242, node275)
  Body_SetCS(node275, MAT_Vector3(2902.755877, 1955.887853, 345), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node275, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node275, 1)
  Body_SetNameKey(node275, -1)
  Body_SetCargoKey(node275, -1, 0)
  Body_SetCargoKey(node275, -1, 1)
  Body_SetCargoKey(node275, -1, 2)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_vessel", "mer_bomb_2")
  Node_AddSon(node242, node276)
  Body_SetCS(node276, MAT_Vector3(2909.933248, 1942.977713, 345), MAT_Vector3(120, 0, 0))
  Node_ParseIniFile(node276, "osd/mer/mer_bomb.osd")
  Body_SetFriendOrFoeID(node276, 1)
  Body_SetNameKey(node276, -1)
  Body_SetCargoKey(node276, -1, 0)
  Body_SetCargoKey(node276, -1, 1)
  Body_SetCargoKey(node276, -1, 2)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node242, node277)
  Body_SetPosition(node277, MAT_Vector3(2675.753284, 1876.04233, 350))
  WayPoint_SetRadius(node277, 100)
  Node_ParseIniFile(node277, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node242, node278)
  Body_SetPosition(node278, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node278, 128)
  Node_ParseIniFile(node278, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_vessel", "mer_bomber_Xtra_1")
  Node_AddSon(node242, node279)
  Body_SetCS(node279, MAT_Vector3(1499.757313, 1064.859792, 430), MAT_Vector3(1.919229, 0, 0))
  Node_ParseIniFile(node279, "osd/mer/mer_bomber.osd")
  Body_SetFriendOrFoeID(node279, 1)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_vessel", "mer_scout2_wide_Xtra_1")
  Node_AddSon(node242, node280)
  Body_SetCS(node280, MAT_Vector3(1460.686059, 1067.704787, 455.585751), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node280, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node280, 1)
  Body_SetNameKey(node280, -1)
  Body_SetCargoKey(node280, -1, 0)
  Body_SetCargoKey(node280, -1, 1)
  Body_SetCargoKey(node280, -1, 2)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_vessel", "mer_scout2_wide_Xtra_2")
  Node_AddSon(node242, node281)
  Body_SetCS(node281, MAT_Vector3(1471.314363, 1016.925043, 455.5858), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node281, "osd/mer/mer_scout2_wide.osd")
  Body_SetFriendOrFoeID(node281, 1)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_vessel", "mer_scout1_wide_Xtra_1")
  Node_AddSon(node242, node282)
  Body_SetCS(node282, MAT_Vector3(1444.057662, 1037.240533, 456.366929), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node282, "osd/mer/mer_scout1_wide.osd")
  Body_SetFriendOrFoeID(node282, 1)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node283)
  Camera_SetBackPlane(node283, 2048)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node284)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node284, node285)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node284, node286)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node286, node287)
  Position_SetPosition(node287, MAT_Vector3(1897.220953, 1444.997055, 361.563811))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node286, node288)
  Position_SetPosition(node288, MAT_Vector3(1857.370821, 1570.632776, 459.5081))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node286, node289)
  Position_SetPosition(node289, MAT_Vector3(1700.774697, 1339.545126, 366))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node286, node290)
  Position_SetPosition(node290, MAT_Vector3(1414.109451, 932.929367, 366))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Path", "Player_Path_1")
  Node_AddSon(node286, node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node291, node292)
  Position_SetPosition(node292, MAT_Vector3(1897.243799, 1537.719513, 355))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node291, node293)
  Position_SetPosition(node293, MAT_Vector3(1896.063556, 1471.106199, 355))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node291, node294)
  Position_SetPosition(node294, MAT_Vector3(1891.609157, 1365.707203, 355))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Path", "Player_Path_2")
  Node_AddSon(node286, node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node295, node296)
  Position_SetPosition(node296, MAT_Vector3(1903.965824, 1478.778735, 239.153104))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node295, node297)
  Position_SetPosition(node297, MAT_Vector3(1827.861606, 1465.348579, 261.697217))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Path", "WingsPath_1")
  Node_AddSon(node286, node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node298, node299)
  Position_SetPosition(node299, MAT_Vector3(1795.592877, 1483.593067, 355))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node298, node300)
  Position_SetPosition(node300, MAT_Vector3(1742.192303, 1401.204118, 355))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node298, node301)
  Position_SetPosition(node301, MAT_Vector3(1664.852988, 1287.231447, 355))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Path", "Mercs1Path_1")
  Node_AddSon(node286, node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node302, node303)
  Position_SetPosition(node303, MAT_Vector3(1414.281668, 933.283137, 365))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node302, node304)
  Position_SetPosition(node304, MAT_Vector3(1501.654636, 1051.696014, 365))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node302, node305)
  Position_SetPosition(node305, MAT_Vector3(1582.129796, 1164.360714, 365))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node302, node306)
  Position_SetPosition(node306, MAT_Vector3(1635.013437, 1243.686156, 365))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node286, node307)
  Position_SetPosition(node307, MAT_Vector3(1520.785836, 1063.959928, 365))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node286, node308)
  Position_SetPosition(node308, MAT_Vector3(1430.132447, 934.694748, 365))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node286, node309)
  Position_SetPosition(node309, MAT_Vector3(1443.624627, 1126.950222, 315))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node286, node310)
  Position_SetPosition(node310, MAT_Vector3(1349.42784, 1009.494214, 315))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node286, node311)
  Position_SetPosition(node311, MAT_Vector3(1639.347682, 1424.758992, 450))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "LookFrom_9")
  Node_AddSon(node286, node312)
  Position_SetPosition(node312, MAT_Vector3(2900.05617, 1946.986079, 367))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Path", "Player_Path_3")
  Node_AddSon(node286, node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node313, node314)
  Position_SetPosition(node314, MAT_Vector3(2096.457466, 1405.561387, 380))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node313, node315)
  Position_SetPosition(node315, MAT_Vector3(2917.677322, 1953.781319, 380))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node286, node316)
  Position_SetPosition(node316, MAT_Vector3(3169.878446, 2041.433741, 367))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "LookFrom_10")
  Node_AddSon(node286, node317)
  Position_SetPosition(node317, MAT_Vector3(2645.880215, 1842.902909, 367))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Path", "StregaCut_Path")
  Node_AddSon(node286, node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node318, node319)
  Position_SetPosition(node319, MAT_Vector3(1541.172328, 1399.092769, 311.099617))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node318, node320)
  Position_SetPosition(node320, MAT_Vector3(1687.223207, 1451.169325, 272.76052))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Path", "Player_Path_4")
  Node_AddSon(node286, node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node321, node322)
  Position_SetPosition(node322, MAT_Vector3(2108.266292, 1458.702816, 272.068265))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node321, node323)
  Position_SetPosition(node323, MAT_Vector3(1762.728204, 1455.428861, 281.955142))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "LookFrom_11a")
  Node_AddSon(node286, node324)
  Position_SetPosition(node324, MAT_Vector3(1514.599067, 1375.143539, 328))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Position", "LookFrom_11b")
  Node_AddSon(node286, node325)
  Position_SetPosition(node325, MAT_Vector3(1679.02724, 1435.752081, 285))
  Position_SetRadius(node325, 5)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "LookFrom_11")
  Node_AddSon(node286, node326)
  Position_SetPosition(node326, MAT_Vector3(1765.932253, 1498.026297, 275.023781))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node284, node327)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node327, node328)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node327, node329)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Director", "Intro_AddOn_Mercs")
  Node_AddSon(node327, node330)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Director", "Intro_Audio")
  Node_AddSon(node327, node331)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Director", "Mercs2_IntoBattleScene")
  Node_AddSon(node327, node332)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Director", "MercBomber_IntoBattleScene")
  Node_AddSon(node327, node333)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Director", "Strega_IntoBattleScene")
  Node_AddSon(node327, node334)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Director", "Strega_IntoBattleScene_Audio")
  Node_AddSon(node327, node335)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Director", "Strega_IntoBattleScene_Music")
  Node_AddSon(node327, node336)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Director", "NatvsStregaScene")
  Node_AddSon(node327, node337)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Director", "NatvsStregaScene_AddOn1")
  Node_AddSon(node327, node338)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Director", "NatvsStregaScene_AddOn2")
  Node_AddSon(node327, node339)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Director", "NatvsStregaScene_AddOn3")
  Node_AddSon(node327, node340)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Director", "NatvsStregaScene_Audio")
  Node_AddSon(node327, node341)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Director", "NatvsStregaScene_Music")
  Node_AddSon(node327, node342)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node284, node343)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node284, node344)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("nod_generic", "dir_SceneMesh")
  Node_AddSon(node344, node345)
  Body_SetCS(node345, MAT_Vector3(1715.370647, 1458.341057, 260.57823), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node345, "osd/dir/dir_cammesh_emitter_mineexp.osd")
  Body_SetFriendOrFoeID(node345, 3)
  Body_SetNameKey(node345, -1)
  Body_SetCargoKey(node345, -1, 0)
  Body_SetCargoKey(node345, -1, 1)
  Body_SetCargoKey(node345, -1, 2)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_vessel", "Eerie_cut_6h1_1")
  Node_AddSon(node344, node346)
  Body_SetCS(node346, MAT_Vector3(1715.233385, 1459.714105, 260), MAT_Vector3(-0.111611, -0.7822, -0.793783))
  Node_ParseIniFile(node346, "osd/wng/wng_eerie_cut_6h1.osd")
  Body_SetFriendOrFoeID(node346, 0)
  Body_SetNameKey(node346, -1)
  Body_SetCargoKey(node346, -1, 0)
  Body_SetCargoKey(node346, -1, 1)
  Body_SetCargoKey(node346, -1, 2)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_vessel", "Strega_cut_6h1_1")
  Node_AddSon(node344, node347)
  Body_SetCS(node347, MAT_Vector3(1482.54896, 1396.632921, 310), MAT_Vector3(85.132966, 0, -4.423506))
  Node_ParseIniFile(node347, "osd/mer/mer_strega_cut_6h1.osd")
  Body_SetFriendOrFoeID(node347, 2)
  Body_SetNameKey(node347, -1)
  Body_SetCargoKey(node347, -1, 0)
  Body_SetCargoKey(node347, -1, 1)
  Body_SetCargoKey(node347, -1, 2)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("nod_generic", "dir_NatCockpitexlpode")
  Node_AddSon(node344, node348)
  Body_SetCS(node348, MAT_Vector3(1715.238513, 1465.330497, 261.321592), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node348, "osd/dir/dir_cammesh_emitter_mineexp.osd")
  Body_SetFriendOrFoeID(node348, 3)
  Body_SetNameKey(node348, -1)
  Body_SetCargoKey(node348, -1, 0)
  Body_SetCargoKey(node348, -1, 1)
  Body_SetCargoKey(node348, -1, 2)
  Node_EnterSimulation(node348)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, F)
SetEnemyMatrixElement(4, 0, F)
SetEnemyMatrixElement(5, 0, F)
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
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, F)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, E)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
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
SetEnemyMatrixElement(1, 3, N)
SetEnemyMatrixElement(2, 3, E)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
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
SetEnemyMatrixElement(0, 4, F)
SetEnemyMatrixElement(1, 4, E)
SetEnemyMatrixElement(2, 4, N)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
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
                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                    if not (o3809.Value ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
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
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (o3833.Value == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
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
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0.1)
  CallFunction(o30, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o34.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o35.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o36.SetStateValue(L1)
end, SetStateValue_KineticShield25 = function(L0, L1)
  o37.SetStateValue(L1)
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
  if not (o3798.Value ~= True) then
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
  o3833.StartCalculate()
end, SetStateValue = function(L0)
  if not (o34.Value == L0) then
    o34["Value"] = L0
    o3833.ReCalculate()
  end
end }
o35 = { [nil] = {}, Start = function()
  o35["Value"] = False
  o3789.StartCalculate()
end, SetStateValue = function(L0)
  if not (o35.Value == L0) then
    o35["Value"] = L0
    o3789.ReCalculate()
  end
end }
o36 = { [nil] = {}, Start = function()
  o36["Value"] = False
  o3790.StartCalculate()
end, SetStateValue = function(L0)
  if not (o36.Value == L0) then
    o36["Value"] = L0
    o3790.ReCalculate()
  end
end }
o37 = { [nil] = {}, Start = function()
  o37["Value"] = False
  o3791.StartCalculate()
end, SetStateValue = function(L0)
  if not (o37.Value == L0) then
    o37["Value"] = L0
    o3791.ReCalculate()
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
S_o1274 = { [nil] = {}, Start = function(L0)

end }
S_o1320 = { [nil] = {}, Start = function(L0)

end }
S_o1366 = { [nil] = {}, Start = function(L0)

end }
S_o1412 = { [nil] = {}, Start = function(L0)

end }
S_o1458 = { [nil] = {}, Start = function(L0)

end }
S_o1504 = { [nil] = {}, Start = function(L0)

end }
S_o1550 = { [nil] = {}, Start = function(L0)

end }
S_o1596 = { [nil] = {}, Start = function(L0)

end }
S_o1642 = { [nil] = {}, Start = function(L0)

end }
S_o1688 = { [nil] = {}, Start = function(L0)

end }
S_o1734 = { [nil] = {}, Start = function(L0)

end }
S_o1780 = { [nil] = {}, Start = function(L0)

end }
S_o1826 = { [nil] = {}, Start = function(L0)

end }
S_o1872 = { [nil] = {}, Start = function(L0)

end }
S_o1918 = { [nil] = {}, Start = function(L0)

end }
S_o1964 = { [nil] = {}, Start = function(L0)

end }
S_o2010 = { [nil] = {}, Start = function(L0)

end }
S_o2056 = { [nil] = {}, Start = function(L0)

end }
S_o2102 = { [nil] = {}, Start = function(L0)

end }
S_o2148 = { [nil] = {}, Start = function(L0)

end }
S_o2194 = { [nil] = {}, Start = function(L0)

end }
S_o2240 = { [nil] = {}, Start = function(L0)

end }
S_o2286 = { [nil] = {}, Start = function(L0)

end }
S_o2332 = { [nil] = {}, Start = function(L0)

end }
S_o2378 = { [nil] = {}, Start = function(L0)

end }
S_o2424 = { [nil] = {}, Start = function(L0)

end }
S_o2470 = { [nil] = {}, Start = function(L0)

end }
S_o2516 = { [nil] = {}, Start = function(L0)

end }
S_o2562 = { [nil] = {}, Start = function(L0)

end }
S_o2608 = { [nil] = {}, Start = function(L0)

end }
S_o2654 = { [nil] = {}, Start = function(L0)

end }
S_o2700 = { [nil] = {}, Start = function(L0)

end }
S_o2746 = { [nil] = {}, Start = function(L0)

end }
S_o2792 = { [nil] = {}, Start = function(L0)

end }
S_o2838 = { [nil] = {}, Start = function(L0)

end }
S_o2884 = { [nil] = {}, Start = function(L0)

end }
S_o2930 = { [nil] = {}, Start = function(L0)

end }
S_o2976 = { [nil] = {}, Start = function(L0)

end }
S_o3022 = { [nil] = {}, Start = function(L0)

end }
S_o3068 = { [nil] = {}, Start = function(L0)

end }
S_o3114 = { [nil] = {}, Start = function(L0)

end }
S_o3160 = { [nil] = {}, Start = function(L0)

end }
S_o3206 = { [nil] = {}, Start = function(L0)

end }
S_o3252 = { [nil] = {}, Start = function(L0)

end }
S_o3298 = { [nil] = {}, Start = function(L0)

end }
S_o3344 = { [nil] = {}, Start = function(L0)

end }
S_o3390 = { [nil] = {}, Start = function(L0)

end }
S_o3436 = { [nil] = {}, Start = function(L0)

end }
S_o3482 = { [nil] = {}, Start = function(L0)

end }
S_o3528 = { [nil] = {}, Start = function(L0)

end }
S_o3574 = { [nil] = {}, Start = function(L0)

end }
o3620 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/HarvesterDock_1_ApproachPath", "/Scenario_Dynamic/Navigation/HarvesterDock_1_DockPath", "/Scenario_Dynamic/Navigation/PatrolArea")
o3621 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/HarvesterDock_2_ApproachPath", "/Scenario_Dynamic/Navigation/HarvesterDock_2_DockPath", "/Scenario_Dynamic/Navigation/PatrolArea")
S_o3622 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3622, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3622, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3622, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o3622, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3622, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3622, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o3627.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3623.Value ~= True) then
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
o3623 = { [nil] = {}, GetCalculated = function()
  if not (o3801.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3623.SetStateValue(o3623.GetCalculated())
end, StartCalculate = function()
  o3623["Value"] = o3623.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3623.Value == L0) then
    o3623["Value"] = L0
    CallFunction(o3622, "ProcesseStateChange")
  end
end }
o3627 = { [nil] = {}, Start = function()
  o3627["Value"] = False
  o5116.StartCalculate()
  o5173.StartCalculate()
  o5583.StartCalculate()
  o5640.StartCalculate()
  o5697.StartCalculate()
  o5754.StartCalculate()
  o5876.StartCalculate()
  o5882.StartCalculate()
  o5886.StartCalculate()
  o5890.StartCalculate()
  o5895.StartCalculate()
  o5900.StartCalculate()
  o5905.StartCalculate()
  o5952.StartCalculate()
  o6009.StartCalculate()
  o6066.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3627.Value == L0) then
    o3627["Value"] = L0
    o5116.ReCalculate()
    o5173.ReCalculate()
    o5583.ReCalculate()
    o5640.ReCalculate()
    o5697.ReCalculate()
    o5754.ReCalculate()
    o5876.ReCalculate()
    o5882.ReCalculate()
    o5886.ReCalculate()
    o5890.ReCalculate()
    o5895.ReCalculate()
    o5900.ReCalculate()
    o5905.ReCalculate()
    o5952.ReCalculate()
    o6009.ReCalculate()
    o6066.ReCalculate()
  end
end }
S_o3628 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3628, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3628, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3628, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3628, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3628, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3630.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3629.Value ~= True) then
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
o3629 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3629.SetStateValue(o3629.GetCalculated())
end, StartCalculate = function()
  o3629["Value"] = o3629.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3629.Value == L0) then
    o3629["Value"] = L0
    CallFunction(o3628, "ProcesseStateChange")
  end
end }
o3630 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3630.SetStateValue(o3630.GetCalculated())
end, StartCalculate = function()
  o3630["Value"] = o3630.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3630.Value == L0) then
    o3630["Value"] = L0
    CallFunction(o3628, "ProcesseStateChange")
  end
end }
S_o3676 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3676, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3676, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3676, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3676, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3676, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3678.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3677.Value ~= True) then
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
o3677 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3677.SetStateValue(o3677.GetCalculated())
end, StartCalculate = function()
  o3677["Value"] = o3677.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3677.Value == L0) then
    o3677["Value"] = L0
    CallFunction(o3676, "ProcesseStateChange")
  end
end }
o3678 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3678.SetStateValue(o3678.GetCalculated())
end, StartCalculate = function()
  o3678["Value"] = o3678.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3678.Value == L0) then
    o3678["Value"] = L0
    CallFunction(o3676, "ProcesseStateChange")
  end
end }
S_o3724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3724, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3724, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o3724, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3726.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o3725.Value ~= True) then
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
o3725 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3725.SetStateValue(o3725.GetCalculated())
end, StartCalculate = function()
  o3725["Value"] = o3725.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3725.Value == L0) then
    o3725["Value"] = L0
    CallFunction(o3724, "ProcesseStateChange")
  end
end }
o3726 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3726.SetStateValue(o3726.GetCalculated())
end, StartCalculate = function()
  o3726["Value"] = o3726.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3726.Value == L0) then
    o3726["Value"] = L0
    CallFunction(o3724, "ProcesseStateChange")
  end
end }
S_o3772 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "ammo_shell", 999999)
  Body_AddItem(L0.Node, "torpedo_maneater", 6)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 99999)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  Body_AddItem(L0.Node, "powerup_torpedolauncher", 1)
  Body_AddItem(L0.Node, "armor_emp_low", 1)
  Body_AddItem(L0.Node, "ammo_rocket", 99999)
  CallFunction(o3772, "Code13")
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
o3786 = { [nil] = {}, Start = function()
  o3786["Value"] = False
  o3842.StartCalculate()
  o3901.StartCalculate()
  o5838.StartCalculate()
  o5845.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3786.Value == L0) then
    o3786["Value"] = L0
    o3842.ReCalculate()
    o3901.ReCalculate()
    o5838.ReCalculate()
    o5845.ReCalculate()
  end
end }
o3787 = { [nil] = {}, Start = function()
  o3787["Value"] = False
  o4066.StartCalculate()
  o4125.StartCalculate()
  o4184.StartCalculate()
  o4243.StartCalculate()
  o4302.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3787.Value == L0) then
    o3787["Value"] = L0
    o4066.ReCalculate()
    o4125.ReCalculate()
    o4184.ReCalculate()
    o4243.ReCalculate()
    o4302.ReCalculate()
  end
end }
o3788 = { [nil] = {}, GetCalculated = function()
  if not (o3851.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3788.SetStateValue(o3788.GetCalculated())
end, StartCalculate = function()
  o3788["Value"] = o3788.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3837.Node, o3772.Node, 719)
end, SetStateValue = function(L0)
  if not (o3788.Value == L0) then
    o3788["Value"] = L0
    if not (L0 ~= 1) then
      o3788.ChangeTo1()
    end
  end
end }
o3789 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3789.SetStateValue(o3789.GetCalculated())
end, StartCalculate = function()
  o3789["Value"] = o3789.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3772.Node, 527)
end, SetStateValue = function(L0)
  if not (o3789.Value == L0) then
    o3789["Value"] = L0
    if not (L0 ~= 1) then
      o3789.ChangeTo1()
    end
  end
end }
o3790 = { [nil] = {}, GetCalculated = function()
  if not (o36.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3790.SetStateValue(o3790.GetCalculated())
end, StartCalculate = function()
  o3790["Value"] = o3790.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3772.Node, 528)
end, SetStateValue = function(L0)
  if not (o3790.Value == L0) then
    o3790["Value"] = L0
    if not (L0 ~= 1) then
      o3790.ChangeTo1()
    end
  end
end }
o3791 = { [nil] = {}, GetCalculated = function()
  if not (o37.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3791.SetStateValue(o3791.GetCalculated())
end, StartCalculate = function()
  o3791["Value"] = o3791.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o3772.Node, 529)
end, SetStateValue = function(L0)
  if not (o3791.Value == L0) then
    o3791["Value"] = L0
    if not (L0 ~= 1) then
      o3791.ChangeTo1()
    end
  end
end }
o3792 = { [nil] = {}, GetCalculated = function()
  if not (o4071.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4130.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4189.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4248.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4307.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3792.SetStateValue(o3792.GetCalculated())
end, StartCalculate = function()
  o3792["Value"] = o3792.GetCalculated()
  o3793.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3792.Value == L0) then
    o3792["Value"] = L0
    o3793.ReCalculate()
  end
end }
o3793 = { [nil] = {}, GetCalculated = function()
  if not (o3792.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3793.SetStateValue(o3793.GetCalculated())
end, StartCalculate = function()
  o3793["Value"] = o3793.GetCalculated()
  o4362.StartCalculate()
  o4420.StartCalculate()
  o4478.StartCalculate()
  o4536.StartCalculate()
  o4594.StartCalculate()
  o4652.StartCalculate()
  o4710.StartCalculate()
  o5848.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3793.Value == L0) then
    DelayedFunction(1, o3793, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3793.Value == L0) then
    o3793["Value"] = L0
    o4362.ReCalculate()
    o4420.ReCalculate()
    o4478.ReCalculate()
    o4536.ReCalculate()
    o4594.ReCalculate()
    o4652.ReCalculate()
    o4710.ReCalculate()
    o5848.ReCalculate()
  end
end }
o3794 = { [nil] = {}, GetCalculated = function()
  if not (o4365.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4423.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4481.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4539.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4597.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4655.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o4713.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 3) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3794.SetStateValue(o3794.GetCalculated())
end, StartCalculate = function()
  o3794["Value"] = o3794.GetCalculated()
  o3795.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3794.Value == L0) then
    o3794["Value"] = L0
    o3795.ReCalculate()
  end
end }
o3795 = { [nil] = {}, GetCalculated = function()
  if not (o3794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3795.SetStateValue(o3795.GetCalculated())
end, StartCalculate = function()
  o3795["Value"] = o3795.GetCalculated()
  o3630.StartCalculate()
  o3678.StartCalculate()
  o3726.StartCalculate()
  o4768.StartCalculate()
  o4826.StartCalculate()
  o4884.StartCalculate()
  o4942.StartCalculate()
  o5000.StartCalculate()
  o5058.StartCalculate()
  o5853.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3795.Value == L0) then
    DelayedFunction(1, o3795, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3795.Value == L0) then
    o3795["Value"] = L0
    o3630.ReCalculate()
    o3678.ReCalculate()
    o3726.ReCalculate()
    o4768.ReCalculate()
    o4826.ReCalculate()
    o4884.ReCalculate()
    o4942.ReCalculate()
    o5000.ReCalculate()
    o5058.ReCalculate()
    o5853.ReCalculate()
  end
end }
o3796 = { [nil] = {}, Start = function()
  o3796["Value"] = False
  o3838.StartCalculate()
  o3897.StartCalculate()
  o5114.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3796.Value == L0) then
    o3796["Value"] = L0
    o3838.ReCalculate()
    o3897.ReCalculate()
    o5114.ReCalculate()
  end
end }
o3797 = { [nil] = {}, GetCalculated = function()
  if not (o4771.Value ~= True) then
    if not (o4829.Value ~= True) then
      if not (o4887.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3797.SetStateValue(o3797.GetCalculated())
end, StartCalculate = function()
  o3797["Value"] = o3797.GetCalculated()
  o3629.StartCalculate()
  o3677.StartCalculate()
  o3725.StartCalculate()
  o3808.StartCalculate()
  o5174.StartCalculate()
  o5231.StartCalculate()
  o5288.StartCalculate()
  o5345.StartCalculate()
  o5402.StartCalculate()
  o5459.StartCalculate()
  o5516.StartCalculate()
  o5859.StartCalculate()
  o5867.StartCalculate()
  o5871.StartCalculate()
end, ChangeTo1 = function()
  CallFunction(o5112, "Code10")
end, SetStateValue = function(L0)
  if not (o3797.Value == L0) then
    DelayedFunction(1, o3797, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3797.Value == L0) then
    o3797["Value"] = L0
    o3629.ReCalculate()
    o3677.ReCalculate()
    o3725.ReCalculate()
    o3808.ReCalculate()
    o5174.ReCalculate()
    o5231.ReCalculate()
    o5288.ReCalculate()
    o5345.ReCalculate()
    o5402.ReCalculate()
    o5459.ReCalculate()
    o5516.ReCalculate()
    o5859.ReCalculate()
    o5867.ReCalculate()
    o5871.ReCalculate()
    if not (L0 ~= 1) then
      o3797.ChangeTo1()
    end
  end
end }
o3798 = { [nil] = {}, Start = function()
  o3798["Value"] = False
  o31.StartCalculate()
  o3799.StartCalculate()
  o3800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3798.Value == L0) then
    o3798["Value"] = L0
    o31.ReCalculate()
    o3799.ReCalculate()
    o3800.ReCalculate()
  end
end }
o3799 = { [nil] = {}, GetCalculated = function()
  if not (o5462.Value ~= True) then
    if not (o5519.Value ~= True) then
      if not (o3798.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3799.SetStateValue(o3799.GetCalculated())
end, StartCalculate = function()
  o3799["Value"] = o3799.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  SED_SetTaskTextKey(0, -1, -1)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2102)
end, SetStateValue = function(L0)
  if not (o3799.Value == L0) then
    DelayedFunction(1, o3799, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3799.Value == L0) then
    o3799["Value"] = L0
    if not (L0 ~= 1) then
      o3799.ChangeTo1()
    end
  end
end }
o3800 = { [nil] = {}, GetCalculated = function()
  if not (o5462.Value ~= True) then
    if not (o5519.Value ~= True) then
      if not (o3798.Value ~= False) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3800.SetStateValue(o3800.GetCalculated())
end, StartCalculate = function()
  o3800["Value"] = o3800.GetCalculated()
  o3801.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o5170.Node, o3772.Node, 523)
  SendRadioMessageTake(o5112.Node, o3772.Node, 718)
end, SetStateValue = function(L0)
  if not (o3800.Value == L0) then
    DelayedFunction(3, o3800, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3800.Value == L0) then
    o3800["Value"] = L0
    o3801.ReCalculate()
    if not (L0 ~= 1) then
      o3800.ChangeTo1()
    end
  end
end }
o3801 = { [nil] = {}, GetCalculated = function()
  if not (o3800.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3801.SetStateValue(o3801.GetCalculated())
end, StartCalculate = function()
  o3801["Value"] = o3801.GetCalculated()
  o3623.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o5575.Node)
  SED_SetTaskTextKey(2103, -1, -1)
end, SetStateValue = function(L0)
  if not (o3801.Value == L0) then
    DelayedFunction(4, o3801, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3801.Value == L0) then
    o3801["Value"] = L0
    o3623.ReCalculate()
    if not (L0 ~= 1) then
      o3801.ChangeTo1()
    end
  end
end }
o3802 = { [nil] = {}, Start = function()
  o3802["Value"] = False
  o4067.StartCalculate()
  o4126.StartCalculate()
  o4185.StartCalculate()
  o4244.StartCalculate()
  o4303.StartCalculate()
  o4360.StartCalculate()
  o4418.StartCalculate()
  o4476.StartCalculate()
  o4534.StartCalculate()
  o4592.StartCalculate()
  o4650.StartCalculate()
  o4708.StartCalculate()
  o4940.StartCalculate()
  o4998.StartCalculate()
  o5056.StartCalculate()
  o5230.StartCalculate()
  o5287.StartCalculate()
  o5344.StartCalculate()
  o5401.StartCalculate()
  o5581.StartCalculate()
  o5638.StartCalculate()
  o5695.StartCalculate()
  o5752.StartCalculate()
  o6010.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3802.Value == L0) then
    o3802["Value"] = L0
    o4067.ReCalculate()
    o4126.ReCalculate()
    o4185.ReCalculate()
    o4244.ReCalculate()
    o4303.ReCalculate()
    o4360.ReCalculate()
    o4418.ReCalculate()
    o4476.ReCalculate()
    o4534.ReCalculate()
    o4592.ReCalculate()
    o4650.ReCalculate()
    o4708.ReCalculate()
    o4940.ReCalculate()
    o4998.ReCalculate()
    o5056.ReCalculate()
    o5230.ReCalculate()
    o5287.ReCalculate()
    o5344.ReCalculate()
    o5401.ReCalculate()
    o5581.ReCalculate()
    o5638.ReCalculate()
    o5695.ReCalculate()
    o5752.ReCalculate()
    o6010.ReCalculate()
  end
end }
o3803 = { [nil] = {}, GetCalculated = function()
  if not (o4080.Value ~= True) then
    if not (o4139.Value ~= True) then
      if not (o4198.Value ~= True) then
        if not (o4257.Value ~= True) then
          if not (o4316.Value ~= True) then
            if not (o5243.Value ~= True) then
              if not (o5300.Value ~= True) then
                if not (o5357.Value ~= True) then
                  if not (o5414.Value ~= True) then
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
end, ReCalculate = function()
  o3803.SetStateValue(o3803.GetCalculated())
end, StartCalculate = function()
  o3803["Value"] = o3803.GetCalculated()
  o3808.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3803.Value == L0) then
    o3803["Value"] = L0
    o3808.ReCalculate()
  end
end }
o3804 = { [nil] = {}, GetCalculated = function()
  if not (o4374.Value ~= True) then
    if not (o4432.Value ~= True) then
      if not (o4490.Value ~= True) then
        if not (o4548.Value ~= True) then
          if not (o4606.Value ~= True) then
            if not (o4664.Value ~= True) then
              if not (o4722.Value ~= True) then
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
end, ReCalculate = function()
  o3804.SetStateValue(o3804.GetCalculated())
end, StartCalculate = function()
  o3804["Value"] = o3804.GetCalculated()
  o3808.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3804.Value == L0) then
    o3804["Value"] = L0
    o3808.ReCalculate()
  end
end }
o3805 = { [nil] = {}, GetCalculated = function()
  if not (o4954.Value ~= True) then
    if not (o5012.Value ~= True) then
      if not (o5070.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o3805.SetStateValue(o3805.GetCalculated())
end, StartCalculate = function()
  o3805["Value"] = o3805.GetCalculated()
  o3808.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3805.Value == L0) then
    o3805["Value"] = L0
    o3808.ReCalculate()
  end
end }
o3806 = { [nil] = {}, GetCalculated = function()
  if not (o6014.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3806.SetStateValue(o3806.GetCalculated())
end, StartCalculate = function()
  o3806["Value"] = o3806.GetCalculated()
  o3808.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3806.Value == L0) then
    o3806["Value"] = L0
    o3808.ReCalculate()
  end
end }
o3807 = { [nil] = {}, GetCalculated = function()
  if not (o5587.Value ~= True) then
    if not (o5644.Value ~= True) then
      if not (o5701.Value ~= True) then
        if not (o5758.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o3807.SetStateValue(o3807.GetCalculated())
end, StartCalculate = function()
  o3807["Value"] = o3807.GetCalculated()
  o3808.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3807.Value == L0) then
    o3807["Value"] = L0
    o3808.ReCalculate()
  end
end }
o3808 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    if not (o3803.Value ~= True) then
      if not (o3804.Value ~= True) then
        if not (o3805.Value ~= True) then
          if not (o3806.Value ~= True) then
            if not (o3807.Value ~= True) then
              return 1
            else
              return 0
            end
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o3808.SetStateValue(o3808.GetCalculated())
end, StartCalculate = function()
  o3808["Value"] = o3808.GetCalculated()
  o3809.StartCalculate()
  o3839.StartCalculate()
  o3898.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
  SendRadioMessageTake(o30.Node, o3772.Node, 530)
end, SetStateValue = function(L0)
  if not (o3808.Value == L0) then
    DelayedFunction(2, o3808, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3808.Value == L0) then
    o3808["Value"] = L0
    o3809.ReCalculate()
    o3839.ReCalculate()
    o3898.ReCalculate()
    if not (L0 ~= 1) then
      o3808.ChangeTo1()
    end
  end
end }
o3809 = { [nil] = {}, GetCalculated = function()
  if not (o3808.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3809.SetStateValue(o3809.GetCalculated())
end, StartCalculate = function()
  o3809["Value"] = o3809.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3809.Value == L0) then
    o3809["Value"] = L0
    o2.ReCalculate()
  end
end }
o3833 = { [nil] = {}, GetCalculated = function()
  if not (o34.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3833.SetStateValue(o3833.GetCalculated())
end, StartCalculate = function()
  o3833["Value"] = o3833.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3833.Value == L0) then
    o3833["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o3837 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3837, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3837, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3837, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3837, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o3837, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3837, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3837, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o3837, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "mer", "", "", "", 0.75, "Code9")
  else
    CallFunction(o3837, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 0.32)
  SendRadioMessageTake(o3837.Node, o3772.Node, 720)
  CallFunction(o3837, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "mer", "", "", "", 0.75, "Code12")
  else
    CallFunction(o3837, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code13")
  else
    CallFunction(o3837, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3620, nil, 0, "Code14")
  else
    CallFunction(o3837, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_KineticShield50 = function(L0, L1)
  o3851.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3842.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3838.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o3839.Value ~= True) then
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
o3838 = { [nil] = {}, GetCalculated = function()
  if not (o3796.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3838.SetStateValue(o3838.GetCalculated())
end, StartCalculate = function()
  o3838["Value"] = o3838.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3838.Value == L0) then
    DelayedFunction(59, o3838, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3838.Value == L0) then
    o3838["Value"] = L0
    CallFunction(o3837, "ProcesseStateChange")
  end
end }
o3839 = { [nil] = {}, GetCalculated = function()
  if not (o3808.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3839.SetStateValue(o3839.GetCalculated())
end, StartCalculate = function()
  o3839["Value"] = o3839.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3839.Value == L0) then
    DelayedFunction(10.897867, o3839, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3839.Value == L0) then
    o3839["Value"] = L0
    CallFunction(o3837, "ProcesseStateChange")
  end
end }
o3842 = { [nil] = {}, GetCalculated = function()
  if not (o3786.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3842.SetStateValue(o3842.GetCalculated())
end, StartCalculate = function()
  o3842["Value"] = o3842.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3842.Value == L0) then
    o3842["Value"] = L0
    CallFunction(o3837, "ProcesseStateChange")
  end
end }
o3851 = { [nil] = {}, Start = function()
  o3851["Value"] = False
  o3788.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3851.Value == L0) then
    o3851["Value"] = L0
    o3788.ReCalculate()
  end
end }
S_o3896 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3896, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3896, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3896, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o3896, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_SetShieldBarrier(L0.Node, 0.09, 0.1)
  CallFunction(o3896, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o3896, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3896, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o3896, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "mer", "", "", "", 0.75, "Code9")
  else
    CallFunction(o3896, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Body_SetKineticShield(L0.Node, 0, 0.52)
  SendRadioMessageTake(o3896.Node, o3772.Node, 721)
  CallFunction(o3896, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "mer", "", "", "", 0.75, "Code12")
  else
    CallFunction(o3896, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code13")
  else
    CallFunction(o3896, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o3621, nil, 0, "Code14")
  else
    CallFunction(o3896, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o3901.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o3897.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o3898.Value ~= True) then
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
o3897 = { [nil] = {}, GetCalculated = function()
  if not (o3796.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3897.SetStateValue(o3897.GetCalculated())
end, StartCalculate = function()
  o3897["Value"] = o3897.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3897.Value == L0) then
    DelayedFunction(33, o3897, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3897.Value == L0) then
    o3897["Value"] = L0
    CallFunction(o3896, "ProcesseStateChange")
  end
end }
o3898 = { [nil] = {}, GetCalculated = function()
  if not (o3808.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3898.SetStateValue(o3898.GetCalculated())
end, StartCalculate = function()
  o3898["Value"] = o3898.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3898.Value == L0) then
    DelayedFunction(11.654865, o3898, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3898.Value == L0) then
    o3898["Value"] = L0
    CallFunction(o3896, "ProcesseStateChange")
  end
end }
o3901 = { [nil] = {}, GetCalculated = function()
  if not (o3786.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3901.SetStateValue(o3901.GetCalculated())
end, StartCalculate = function()
  o3901["Value"] = o3901.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3901.Value == L0) then
    o3901["Value"] = L0
    CallFunction(o3896, "ProcesseStateChange")
  end
end }
S_o3955 = { [nil] = {}, Start = function(L0)

end }
S_o4009 = { [nil] = {}, Start = function(L0)

end }
S_o4063 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4063, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4063, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4063, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4063, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4063, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4063, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4063, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o4063, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4063, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "", "", "", 1, "Code10")
  else
    CallFunction(o4063, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code11")
  else
    CallFunction(o4063, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_1", 1, 1 } }("Code12")
  else
    CallFunction(o4063, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o4063, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o4071.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4080.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4066.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o4067.Value ~= True) then
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
o4066 = { [nil] = {}, GetCalculated = function()
  if not (o3787.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4066.SetStateValue(o4066.GetCalculated())
end, StartCalculate = function()
  o4066["Value"] = o4066.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4066.Value == L0) then
    o4066["Value"] = L0
    CallFunction(o4063, "ProcesseStateChange")
  end
end }
o4067 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4067.SetStateValue(o4067.GetCalculated())
end, StartCalculate = function()
  o4067["Value"] = o4067.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4067.Value == L0) then
    DelayedFunction(10, o4067, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4067.Value == L0) then
    o4067["Value"] = L0
    CallFunction(o4063, "ProcesseStateChange")
  end
end }
o4071 = { [nil] = {}, Start = function()
  o4071["Value"] = False
  o3792.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4071.Value == L0) then
    o4071["Value"] = L0
    o3792.ReCalculate()
  end
end }
o4080 = { [nil] = {}, Start = function()
  o4080["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4080.Value == L0) then
    o4080["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o4122 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4122, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4122, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4122, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4122, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4122, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4122, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4122, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o4122, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4122, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "", "", "", 1, "Code10")
  else
    CallFunction(o4122, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code11")
  else
    CallFunction(o4122, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_2", 1, 1 } }("Code12")
  else
    CallFunction(o4122, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o4122, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o4130.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4139.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4125.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o4126.Value ~= True) then
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
o4125 = { [nil] = {}, GetCalculated = function()
  if not (o3787.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4125.SetStateValue(o4125.GetCalculated())
end, StartCalculate = function()
  o4125["Value"] = o4125.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4125.Value == L0) then
    o4125["Value"] = L0
    CallFunction(o4122, "ProcesseStateChange")
  end
end }
o4126 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4126.SetStateValue(o4126.GetCalculated())
end, StartCalculate = function()
  o4126["Value"] = o4126.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4126.Value == L0) then
    DelayedFunction(10, o4126, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4126.Value == L0) then
    o4126["Value"] = L0
    CallFunction(o4122, "ProcesseStateChange")
  end
end }
o4130 = { [nil] = {}, Start = function()
  o4130["Value"] = False
  o3792.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4130.Value == L0) then
    o4130["Value"] = L0
    o3792.ReCalculate()
  end
end }
o4139 = { [nil] = {}, Start = function()
  o4139["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4139.Value == L0) then
    o4139["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o4181 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4181, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4181, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4181, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4181, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4181, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4181, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4181, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o4181, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4181, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "", "", "", 1, "Code10")
  else
    CallFunction(o4181, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code11")
  else
    CallFunction(o4181, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_3", 1, 1 } }("Code12")
  else
    CallFunction(o4181, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o4181, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o4189.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4198.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4184.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o4185.Value ~= True) then
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
o4184 = { [nil] = {}, GetCalculated = function()
  if not (o3787.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4184.SetStateValue(o4184.GetCalculated())
end, StartCalculate = function()
  o4184["Value"] = o4184.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4184.Value == L0) then
    o4184["Value"] = L0
    CallFunction(o4181, "ProcesseStateChange")
  end
end }
o4185 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4185.SetStateValue(o4185.GetCalculated())
end, StartCalculate = function()
  o4185["Value"] = o4185.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4185.Value == L0) then
    DelayedFunction(10, o4185, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4185.Value == L0) then
    o4185["Value"] = L0
    CallFunction(o4181, "ProcesseStateChange")
  end
end }
o4189 = { [nil] = {}, Start = function()
  o4189["Value"] = False
  o3792.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4189.Value == L0) then
    o4189["Value"] = L0
    o3792.ReCalculate()
  end
end }
o4198 = { [nil] = {}, Start = function()
  o4198["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4198.Value == L0) then
    o4198["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o4240 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4240, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4240, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4240, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4240, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4240, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4240, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4240, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o4240, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4240, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "", "", "", 1, "Code10")
  else
    CallFunction(o4240, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code11")
  else
    CallFunction(o4240, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_4", 1, 1 } }("Code12")
  else
    CallFunction(o4240, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o4240, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o4248.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4257.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4243.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o4244.Value ~= True) then
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
o4243 = { [nil] = {}, GetCalculated = function()
  if not (o3787.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4243.SetStateValue(o4243.GetCalculated())
end, StartCalculate = function()
  o4243["Value"] = o4243.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4243.Value == L0) then
    o4243["Value"] = L0
    CallFunction(o4240, "ProcesseStateChange")
  end
end }
o4244 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4244.SetStateValue(o4244.GetCalculated())
end, StartCalculate = function()
  o4244["Value"] = o4244.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4244.Value == L0) then
    DelayedFunction(10, o4244, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4244.Value == L0) then
    o4244["Value"] = L0
    CallFunction(o4240, "ProcesseStateChange")
  end
end }
o4248 = { [nil] = {}, Start = function()
  o4248["Value"] = False
  o3792.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4248.Value == L0) then
    o4248["Value"] = L0
    o3792.ReCalculate()
  end
end }
o4257 = { [nil] = {}, Start = function()
  o4257["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4257.Value == L0) then
    o4257["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o4299 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4299, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4299, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4299, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4299, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o4299, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4299, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o4299, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code8")
  else
    CallFunction(o4299, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4299, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "", "", "", 1, "Code10")
  else
    CallFunction(o4299, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code11")
  else
    CallFunction(o4299, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_1", 1, 1 } }("Code12")
  else
    CallFunction(o4299, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code13")
  else
    CallFunction(o4299, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o4307.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4316.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o4302.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 10) then
    if not (L0.CodeIndex >= 11) then
      if not (o4303.Value ~= True) then
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
o4302 = { [nil] = {}, GetCalculated = function()
  if not (o3787.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4302.SetStateValue(o4302.GetCalculated())
end, StartCalculate = function()
  o4302["Value"] = o4302.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4302.Value == L0) then
    o4302["Value"] = L0
    CallFunction(o4299, "ProcesseStateChange")
  end
end }
o4303 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4303.SetStateValue(o4303.GetCalculated())
end, StartCalculate = function()
  o4303["Value"] = o4303.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4303.Value == L0) then
    DelayedFunction(10, o4303, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4303.Value == L0) then
    o4303["Value"] = L0
    CallFunction(o4299, "ProcesseStateChange")
  end
end }
o4307 = { [nil] = {}, Start = function()
  o4307["Value"] = False
  o3792.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4307.Value == L0) then
    o4307["Value"] = L0
    o3792.ReCalculate()
  end
end }
o4316 = { [nil] = {}, Start = function()
  o4316["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4316.Value == L0) then
    o4316["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o4358 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4358, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4358, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4358, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4358, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4358, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercScout2_1_Path", 1, 1 } }("Code6")
  else
    CallFunction(o4358, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code7")
  else
    CallFunction(o4358, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code8")
  else
    CallFunction(o4358, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o4358, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o4358, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o4365.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4374.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4362.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4360.Value ~= True) then
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
o4360 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4360.SetStateValue(o4360.GetCalculated())
end, StartCalculate = function()
  o4360["Value"] = o4360.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4360.Value == L0) then
    DelayedFunction(10, o4360, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4360.Value == L0) then
    o4360["Value"] = L0
    CallFunction(o4358, "ProcesseStateChange")
  end
end }
o4362 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4362.SetStateValue(o4362.GetCalculated())
end, StartCalculate = function()
  o4362["Value"] = o4362.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4362.Value == L0) then
    DelayedFunction(1, o4362, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4362.Value == L0) then
    o4362["Value"] = L0
    CallFunction(o4358, "ProcesseStateChange")
  end
end }
o4365 = { [nil] = {}, Start = function()
  o4365["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4365.Value == L0) then
    o4365["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4374 = { [nil] = {}, Start = function()
  o4374["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4374.Value == L0) then
    o4374["Value"] = L0
    o3804.ReCalculate()
  end
end }
S_o4416 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4416, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4416, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4416, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4416, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4416, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercScout2_2_Path", 1, 1 } }("Code6")
  else
    CallFunction(o4416, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code7")
  else
    CallFunction(o4416, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "player", "wng", "", "", 0.75, "Code8")
  else
    CallFunction(o4416, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_4", 1, 1 } }("Code9")
  else
    CallFunction(o4416, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o4416, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o4423.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4432.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4420.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4418.Value ~= True) then
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
o4418 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4418.SetStateValue(o4418.GetCalculated())
end, StartCalculate = function()
  o4418["Value"] = o4418.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4418.Value == L0) then
    DelayedFunction(10, o4418, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4418.Value == L0) then
    o4418["Value"] = L0
    CallFunction(o4416, "ProcesseStateChange")
  end
end }
o4420 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4420.SetStateValue(o4420.GetCalculated())
end, StartCalculate = function()
  o4420["Value"] = o4420.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4420.Value == L0) then
    DelayedFunction(1.186785, o4420, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4420.Value == L0) then
    o4420["Value"] = L0
    CallFunction(o4416, "ProcesseStateChange")
  end
end }
o4423 = { [nil] = {}, Start = function()
  o4423["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4423.Value == L0) then
    o4423["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4432 = { [nil] = {}, Start = function()
  o4432["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4432.Value == L0) then
    o4432["Value"] = L0
    o3804.ReCalculate()
  end
end }
S_o4474 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4474, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4474, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4474, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4474, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4474, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercScout2_3_Path", 1, 1 } }("Code6")
  else
    CallFunction(o4474, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code7")
  else
    CallFunction(o4474, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code8")
  else
    CallFunction(o4474, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_1", 1, 1 } }("Code9")
  else
    CallFunction(o4474, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o4474, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o4481.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4490.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4478.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4476.Value ~= True) then
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
o4476 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4476.SetStateValue(o4476.GetCalculated())
end, StartCalculate = function()
  o4476["Value"] = o4476.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4476.Value == L0) then
    DelayedFunction(10, o4476, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4476.Value == L0) then
    o4476["Value"] = L0
    CallFunction(o4474, "ProcesseStateChange")
  end
end }
o4478 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4478.SetStateValue(o4478.GetCalculated())
end, StartCalculate = function()
  o4478["Value"] = o4478.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4478.Value == L0) then
    DelayedFunction(1.124645, o4478, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4478.Value == L0) then
    o4478["Value"] = L0
    CallFunction(o4474, "ProcesseStateChange")
  end
end }
o4481 = { [nil] = {}, Start = function()
  o4481["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4481.Value == L0) then
    o4481["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4490 = { [nil] = {}, Start = function()
  o4490["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4490.Value == L0) then
    o4490["Value"] = L0
    o3804.ReCalculate()
  end
end }
S_o4532 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4532, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4532, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4532, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4532, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  CallFunction(o4532, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercScout2_4_Path", 1, 1 } }("Code6")
  else
    CallFunction(o4532, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code7")
  else
    CallFunction(o4532, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "player", "wng", "", "", 0.75, "Code8")
  else
    CallFunction(o4532, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_2", 1, 1 } }("Code9")
  else
    CallFunction(o4532, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o4532, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o4539.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4548.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4536.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o4534.Value ~= True) then
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
o4534 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4534.SetStateValue(o4534.GetCalculated())
end, StartCalculate = function()
  o4534["Value"] = o4534.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4534.Value == L0) then
    DelayedFunction(10, o4534, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4534.Value == L0) then
    o4534["Value"] = L0
    CallFunction(o4532, "ProcesseStateChange")
  end
end }
o4536 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4536.SetStateValue(o4536.GetCalculated())
end, StartCalculate = function()
  o4536["Value"] = o4536.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4536.Value == L0) then
    DelayedFunction(1.195445, o4536, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4536.Value == L0) then
    o4536["Value"] = L0
    CallFunction(o4532, "ProcesseStateChange")
  end
end }
o4539 = { [nil] = {}, Start = function()
  o4539["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4539.Value == L0) then
    o4539["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4548 = { [nil] = {}, Start = function()
  o4548["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4548.Value == L0) then
    o4548["Value"] = L0
    o3804.ReCalculate()
  end
end }
S_o4590 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4590, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4590, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4590, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4590, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercScout2_5_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4590, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o4590, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code7")
  else
    CallFunction(o4590, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_3", 1, 1 } }("Code8")
  else
    CallFunction(o4590, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4590, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o4597.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4606.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4594.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4592.Value ~= True) then
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
o4592 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4592.SetStateValue(o4592.GetCalculated())
end, StartCalculate = function()
  o4592["Value"] = o4592.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4592.Value == L0) then
    DelayedFunction(10, o4592, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4592.Value == L0) then
    o4592["Value"] = L0
    CallFunction(o4590, "ProcesseStateChange")
  end
end }
o4594 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4594.SetStateValue(o4594.GetCalculated())
end, StartCalculate = function()
  o4594["Value"] = o4594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4594.Value == L0) then
    DelayedFunction(1.156464, o4594, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4594.Value == L0) then
    o4594["Value"] = L0
    CallFunction(o4590, "ProcesseStateChange")
  end
end }
o4597 = { [nil] = {}, Start = function()
  o4597["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4597.Value == L0) then
    o4597["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4606 = { [nil] = {}, Start = function()
  o4606["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4606.Value == L0) then
    o4606["Value"] = L0
    o3804.ReCalculate()
  end
end }
S_o4648 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4648, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4648, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4648, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4648, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_4", 1, 1 } }("Code5")
  else
    CallFunction(o4648, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o4648, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "player", "wng", "", "", 0.75, "Code7")
  else
    CallFunction(o4648, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_1", 1, 1 } }("Code8")
  else
    CallFunction(o4648, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4648, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o4655.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4664.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4652.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4650.Value ~= True) then
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
o4650 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4650.SetStateValue(o4650.GetCalculated())
end, StartCalculate = function()
  o4650["Value"] = o4650.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4650.Value == L0) then
    DelayedFunction(10, o4650, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4650.Value == L0) then
    o4650["Value"] = L0
    CallFunction(o4648, "ProcesseStateChange")
  end
end }
o4652 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4652.SetStateValue(o4652.GetCalculated())
end, StartCalculate = function()
  o4652["Value"] = o4652.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4652.Value == L0) then
    DelayedFunction(1.189765, o4652, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4652.Value == L0) then
    o4652["Value"] = L0
    CallFunction(o4648, "ProcesseStateChange")
  end
end }
o4655 = { [nil] = {}, Start = function()
  o4655["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4655.Value == L0) then
    o4655["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4664 = { [nil] = {}, Start = function()
  o4664["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4664.Value == L0) then
    o4664["Value"] = L0
    o3804.ReCalculate()
  end
end }
S_o4706 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4706, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4706, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4706, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o4706, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercScout2_7_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4706, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o4706, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code7")
  else
    CallFunction(o4706, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_2", 1, 1 } }("Code8")
  else
    CallFunction(o4706, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4706, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o4713.SetStateValue(L1)
end, SetStateValue_DestJump = function(L0, L1)
  o4722.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4710.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4708.Value ~= True) then
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
o4708 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4708.SetStateValue(o4708.GetCalculated())
end, StartCalculate = function()
  o4708["Value"] = o4708.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4708.Value == L0) then
    DelayedFunction(10, o4708, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4708.Value == L0) then
    o4708["Value"] = L0
    CallFunction(o4706, "ProcesseStateChange")
  end
end }
o4710 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4710.SetStateValue(o4710.GetCalculated())
end, StartCalculate = function()
  o4710["Value"] = o4710.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4710.Value == L0) then
    DelayedFunction(1.156486, o4710, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4710.Value == L0) then
    o4710["Value"] = L0
    CallFunction(o4706, "ProcesseStateChange")
  end
end }
o4713 = { [nil] = {}, Start = function()
  o4713["Value"] = False
  o3794.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4713.Value == L0) then
    o4713["Value"] = L0
    o3794.ReCalculate()
  end
end }
o4722 = { [nil] = {}, Start = function()
  o4722["Value"] = False
  o3804.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4722.Value == L0) then
    o4722["Value"] = L0
    o3804.ReCalculate()
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
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4764, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  Vessel_AttackTurrets(L0.Node, "turret_doom", "E", "", "", "")
  CallFunction(o4764, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4764, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "turret_bigbang2", "dir_cammesh_emitter_1", "", "", "")
  CallFunction(o4764, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_1_Path1", 0.3, 1 } }("Code8")
  else
    CallFunction(o4764, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_1_Path2", 1, 1 } }("Code9")
  else
    CallFunction(o4764, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_1_Path3", 0.2, 1 } }("Code10")
  else
    CallFunction(o4764, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4764, "Code8")
  else
    CallFunction(o4764, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o4771.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4768.Value ~= True) then
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
o4768 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4768.SetStateValue(o4768.GetCalculated())
end, StartCalculate = function()
  o4768["Value"] = o4768.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4768.Value == L0) then
    DelayedFunction(1.156486, o4768, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4768.Value == L0) then
    o4768["Value"] = L0
    CallFunction(o4764, "ProcesseStateChange")
  end
end }
o4771 = { [nil] = {}, Start = function()
  o4771["Value"] = False
  o3797.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4771.Value == L0) then
    o4771["Value"] = L0
    o3797.ReCalculate()
  end
end }
S_o4822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4822, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4822, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4822, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  Vessel_AttackTurrets(L0.Node, "turret_doom", "E", "", "", "")
  CallFunction(o4822, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4822, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "turret_bigbang2", "dir_cammesh_emitter_2", "", "", "")
  CallFunction(o4822, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_2_Path1", 0.3, 1 } }("Code8")
  else
    CallFunction(o4822, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_2_Path2", 1, 1 } }("Code9")
  else
    CallFunction(o4822, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_2_Path3", 0.2, 1 } }("Code10")
  else
    CallFunction(o4822, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4822, "Code8")
  else
    CallFunction(o4822, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o4829.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4826.Value ~= True) then
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
o4826 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4826.SetStateValue(o4826.GetCalculated())
end, StartCalculate = function()
  o4826["Value"] = o4826.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4826.Value == L0) then
    DelayedFunction(1.156486, o4826, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4826.Value == L0) then
    o4826["Value"] = L0
    CallFunction(o4822, "ProcesseStateChange")
  end
end }
o4829 = { [nil] = {}, Start = function()
  o4829["Value"] = False
  o3797.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4829.Value == L0) then
    o4829["Value"] = L0
    o3797.ReCalculate()
  end
end }
S_o4880 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4880, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4880, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4880, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o3772.Node, True)
  Vessel_AttackTurrets(L0.Node, "turret_doom", "E", "", "", "")
  CallFunction(o4880, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code6")
  else
    CallFunction(o4880, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Vessel_AttackTurrets(L0.Node, "turret_bigbang2", "dir_cammesh_emitter_3", "", "", "")
  CallFunction(o4880, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_3_Path1", 0.3, 1 } }("Code8")
  else
    CallFunction(o4880, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_3_Path2", 1, 1 } }("Code9")
  else
    CallFunction(o4880, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_bigbang_3_Path3", 0.2, 1 } }("Code10")
  else
    CallFunction(o4880, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4880, "Code8")
  else
    CallFunction(o4880, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Destroyed = function(L0, L1)
  o4887.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4884.Value ~= True) then
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
o4884 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4884.SetStateValue(o4884.GetCalculated())
end, StartCalculate = function()
  o4884["Value"] = o4884.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4884.Value == L0) then
    DelayedFunction(1.156486, o4884, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4884.Value == L0) then
    o4884["Value"] = L0
    CallFunction(o4880, "ProcesseStateChange")
  end
end }
o4887 = { [nil] = {}, Start = function()
  o4887["Value"] = False
  o3797.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4887.Value == L0) then
    o4887["Value"] = L0
    o3797.ReCalculate()
  end
end }
S_o4938 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4938, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4938, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4938, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4938, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_1_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4938, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o4938, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "player", "wng", "", "", 0.75, "Code7")
  else
    CallFunction(o4938, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_2", 1, 1 } }("Code8")
  else
    CallFunction(o4938, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4938, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DestJump = function(L0, L1)
  o4954.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4942.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4940.Value ~= True) then
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
o4940 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4940.SetStateValue(o4940.GetCalculated())
end, StartCalculate = function()
  o4940["Value"] = o4940.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4940.Value == L0) then
    DelayedFunction(10, o4940, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4940.Value == L0) then
    o4940["Value"] = L0
    CallFunction(o4938, "ProcesseStateChange")
  end
end }
o4942 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
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
    DelayedFunction(1.156486, o4942, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4942.Value == L0) then
    o4942["Value"] = L0
    CallFunction(o4938, "ProcesseStateChange")
  end
end }
o4954 = { [nil] = {}, Start = function()
  o4954["Value"] = False
  o3805.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4954.Value == L0) then
    o4954["Value"] = L0
    o3805.ReCalculate()
  end
end }
S_o4996 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4996, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4996, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o4996, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o4996, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_2_Path", 1, 1 } }("Code5")
  else
    CallFunction(o4996, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o4996, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code7")
  else
    CallFunction(o4996, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_3", 1, 1 } }("Code8")
  else
    CallFunction(o4996, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o4996, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DestJump = function(L0, L1)
  o5012.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5000.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4998.Value ~= True) then
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
o4998 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4998.SetStateValue(o4998.GetCalculated())
end, StartCalculate = function()
  o4998["Value"] = o4998.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4998.Value == L0) then
    DelayedFunction(10, o4998, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4998.Value == L0) then
    o4998["Value"] = L0
    CallFunction(o4996, "ProcesseStateChange")
  end
end }
o5000 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5000.SetStateValue(o5000.GetCalculated())
end, StartCalculate = function()
  o5000["Value"] = o5000.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5000.Value == L0) then
    DelayedFunction(1.156486, o5000, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5000.Value == L0) then
    o5000["Value"] = L0
    CallFunction(o4996, "ProcesseStateChange")
  end
end }
o5012 = { [nil] = {}, Start = function()
  o5012["Value"] = False
  o3805.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5012.Value == L0) then
    o5012["Value"] = L0
    o3805.ReCalculate()
  end
end }
S_o5054 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5054, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5054, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5054, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5054, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercBomber_3_Path", 1, 1 } }("Code5")
  else
    CallFunction(o5054, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "ActivateAvoidance" } }("Code6")
  else
    CallFunction(o5054, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code7")
  else
    CallFunction(o5054, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_4", 1, 1 } }("Code8")
  else
    CallFunction(o5054, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o5054, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_DestJump = function(L0, L1)
  o5070.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5058.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5056.Value ~= True) then
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
o5056 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5056.SetStateValue(o5056.GetCalculated())
end, StartCalculate = function()
  o5056["Value"] = o5056.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5056.Value == L0) then
    DelayedFunction(10, o5056, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5056.Value == L0) then
    o5056["Value"] = L0
    CallFunction(o5054, "ProcesseStateChange")
  end
end }
o5058 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5058.SetStateValue(o5058.GetCalculated())
end, StartCalculate = function()
  o5058["Value"] = o5058.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5058.Value == L0) then
    DelayedFunction(1.156486, o5058, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5058.Value == L0) then
    o5058["Value"] = L0
    CallFunction(o5054, "ProcesseStateChange")
  end
end }
o5070 = { [nil] = {}, Start = function()
  o5070["Value"] = False
  o3805.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5070.Value == L0) then
    o5070["Value"] = L0
    o3805.ReCalculate()
  end
end }
S_o5112 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  DockLib.PlaceInDock(L0, o3621)
  CallFunction(o5112, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5112, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Undock(L0, o3621, "Code3")
  else
    CallFunction(o5112, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SetEnemyMatrixElement(3, 1, E)
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5112, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EeriePath_1", 1, 1 } }("Code7")
  else
    CallFunction(o5112, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o5112, "Code6")
  else
    CallFunction(o5112, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o5112, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5112, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetKineticShield(L0.Node, 0, 0.25)
  CallFunction(o5112, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Natvs.Strega", "/Scenario_Dynamic/Navigation/Natvs.Strega", "/Scenario_Dynamic/Navigation/Natvs.Strega", "Strega", "", "", "", 0.5, "Code12")
  else
    CallFunction(o5112, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5112, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5114.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o5116.Value ~= True) then
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
o5114 = { [nil] = {}, GetCalculated = function()
  if not (o3796.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5114.SetStateValue(o5114.GetCalculated())
end, StartCalculate = function()
  o5114["Value"] = o5114.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5114.Value == L0) then
    DelayedFunction(16.798456, o5114, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5114.Value == L0) then
    o5114["Value"] = L0
    CallFunction(o5112, "ProcesseStateChange")
  end
end }
o5116 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5116.SetStateValue(o5116.GetCalculated())
end, StartCalculate = function()
  o5116["Value"] = o5116.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5116.Value == L0) then
    o5116["Value"] = L0
    CallFunction(o5112, "ProcesseStateChange")
  end
end }
S_o5170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5170, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o5170, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 11 } }("Code6")
  else
    CallFunction(o5170, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Strega_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o5170, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Natvs.Strega", "/Scenario_Dynamic/Navigation/Natvs.Strega", "/Scenario_Dynamic/Navigation/Natvs.Strega", "Nat", "", "", "", 0.5, "Code8")
  else
    CallFunction(o5170, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  DipolLib.LeaveSimulation(L0)
  CallFunction(o5170, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5174.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o5173.Value ~= True) then
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
o5173 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5173.SetStateValue(o5173.GetCalculated())
end, StartCalculate = function()
  o5173["Value"] = o5173.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5173.Value == L0) then
    o5173["Value"] = L0
    CallFunction(o5170, "ProcesseStateChange")
  end
end }
o5174 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5174.SetStateValue(o5174.GetCalculated())
end, StartCalculate = function()
  o5174["Value"] = o5174.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5174.Value == L0) then
    DelayedFunction(4, o5174, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5174.Value == L0) then
    o5174["Value"] = L0
    CallFunction(o5170, "ProcesseStateChange")
  end
end }
S_o5228 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5228, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5228, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5228, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 20 } }("Code4")
  else
    CallFunction(o5228, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "player", "", "", "", 1, "Code5")
  else
    CallFunction(o5228, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5228, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestJump = function(L0, L1)
  o5243.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5231.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5230.Value ~= True) then
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
o5230 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5230.SetStateValue(o5230.GetCalculated())
end, StartCalculate = function()
  o5230["Value"] = o5230.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5230.Value == L0) then
    DelayedFunction(10, o5230, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5230.Value == L0) then
    o5230["Value"] = L0
    CallFunction(o5228, "ProcesseStateChange")
  end
end }
o5231 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5231.SetStateValue(o5231.GetCalculated())
end, StartCalculate = function()
  o5231["Value"] = o5231.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5231.Value == L0) then
    DelayedFunction(4.156747, o5231, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5231.Value == L0) then
    o5231["Value"] = L0
    CallFunction(o5228, "ProcesseStateChange")
  end
end }
o5243 = { [nil] = {}, Start = function()
  o5243["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5243.Value == L0) then
    o5243["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o5285 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5285, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5285, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5285, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 20 } }("Code4")
  else
    CallFunction(o5285, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "player", "", "", "", 1, "Code5")
  else
    CallFunction(o5285, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5285, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestJump = function(L0, L1)
  o5300.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5288.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5287.Value ~= True) then
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
o5287 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5287.SetStateValue(o5287.GetCalculated())
end, StartCalculate = function()
  o5287["Value"] = o5287.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5287.Value == L0) then
    DelayedFunction(10, o5287, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5287.Value == L0) then
    o5287["Value"] = L0
    CallFunction(o5285, "ProcesseStateChange")
  end
end }
o5288 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5288.SetStateValue(o5288.GetCalculated())
end, StartCalculate = function()
  o5288["Value"] = o5288.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5288.Value == L0) then
    DelayedFunction(4.875749, o5288, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5288.Value == L0) then
    o5288["Value"] = L0
    CallFunction(o5285, "ProcesseStateChange")
  end
end }
o5300 = { [nil] = {}, Start = function()
  o5300["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5300.Value == L0) then
    o5300["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o5342 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5342, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5342, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5342, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 20 } }("Code4")
  else
    CallFunction(o5342, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "player", "", "", "", 1, "Code5")
  else
    CallFunction(o5342, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5342, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestJump = function(L0, L1)
  o5357.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5345.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5344.Value ~= True) then
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
o5344 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5344.SetStateValue(o5344.GetCalculated())
end, StartCalculate = function()
  o5344["Value"] = o5344.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5344.Value == L0) then
    DelayedFunction(10, o5344, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5344.Value == L0) then
    o5344["Value"] = L0
    CallFunction(o5342, "ProcesseStateChange")
  end
end }
o5345 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5345.SetStateValue(o5345.GetCalculated())
end, StartCalculate = function()
  o5345["Value"] = o5345.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5345.Value == L0) then
    DelayedFunction(4.146486, o5345, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5345.Value == L0) then
    o5345["Value"] = L0
    CallFunction(o5342, "ProcesseStateChange")
  end
end }
o5357 = { [nil] = {}, Start = function()
  o5357["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5357.Value == L0) then
    o5357["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o5399 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5399, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5399, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5399, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 20 } }("Code4")
  else
    CallFunction(o5399, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "/Scenario_Dynamic/Navigation/FollowArea_Bombs", "player", "", "", "", 1, "Code5")
  else
    CallFunction(o5399, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o5399, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_DestJump = function(L0, L1)
  o5414.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5402.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5401.Value ~= True) then
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
o5401 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5401.SetStateValue(o5401.GetCalculated())
end, StartCalculate = function()
  o5401["Value"] = o5401.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5401.Value == L0) then
    DelayedFunction(10, o5401, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5401.Value == L0) then
    o5401["Value"] = L0
    CallFunction(o5399, "ProcesseStateChange")
  end
end }
o5402 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5402.SetStateValue(o5402.GetCalculated())
end, StartCalculate = function()
  o5402["Value"] = o5402.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5402.Value == L0) then
    DelayedFunction(4.564865, o5402, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5402.Value == L0) then
    o5402["Value"] = L0
    CallFunction(o5399, "ProcesseStateChange")
  end
end }
o5414 = { [nil] = {}, Start = function()
  o5414["Value"] = False
  o3803.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5414.Value == L0) then
    o5414["Value"] = L0
    o3803.ReCalculate()
  end
end }
S_o5456 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5456, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5456, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5456, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5456, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o5456, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb1_Path_1", 0.75, 1 } }("Code6")
  else
    CallFunction(o5456, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  o3798.SetStateValue(True)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5456, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5462.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5459.Value ~= True) then
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
o5459 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5459.SetStateValue(o5459.GetCalculated())
end, StartCalculate = function()
  o5459["Value"] = o5459.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5459.Value == L0) then
    DelayedFunction(4.5, o5459, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5459.Value == L0) then
    o5459["Value"] = L0
    CallFunction(o5456, "ProcesseStateChange")
  end
end }
o5462 = { [nil] = {}, Start = function()
  o5462["Value"] = False
  o3799.StartCalculate()
  o3800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5462.Value == L0) then
    o5462["Value"] = L0
    o3799.ReCalculate()
    o3800.ReCalculate()
  end
end }
S_o5513 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5513, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5513, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o5513, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o5513, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 10 } }("Code5")
  else
    CallFunction(o5513, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Bomb2_Path_1", 0.75, 1 } }("Code6")
  else
    CallFunction(o5513, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  o3798.SetStateValue(True)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5513, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5519.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5516.Value ~= True) then
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
o5516 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5516.SetStateValue(o5516.GetCalculated())
end, StartCalculate = function()
  o5516["Value"] = o5516.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5516.Value == L0) then
    DelayedFunction(4.5, o5516, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5516.Value == L0) then
    o5516["Value"] = L0
    CallFunction(o5513, "ProcesseStateChange")
  end
end }
o5519 = { [nil] = {}, Start = function()
  o5519["Value"] = False
  o3799.StartCalculate()
  o3800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5519.Value == L0) then
    o5519["Value"] = L0
    o3799.ReCalculate()
    o3800.ReCalculate()
  end
end }
S_o5570 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o5570, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5575 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o5112.Node)
  CallFunction(o5575, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5580 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5580, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5580, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5580, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o5580, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code6")
  else
    CallFunction(o5580, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_1", 1, 1 } }("Code7")
  else
    CallFunction(o5580, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code8")
  else
    CallFunction(o5580, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_DipoledOut = function(L0, L1)
  o5587.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5583.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o5581.Value ~= True) then
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
o5581 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5581.SetStateValue(o5581.GetCalculated())
end, StartCalculate = function()
  o5581["Value"] = o5581.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5581.Value == L0) then
    DelayedFunction(10, o5581, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5581.Value == L0) then
    o5581["Value"] = L0
    CallFunction(o5580, "ProcesseStateChange")
  end
end }
o5583 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5583.SetStateValue(o5583.GetCalculated())
end, StartCalculate = function()
  o5583["Value"] = o5583.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5583.Value == L0) then
    DelayedFunction(2, o5583, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5583.Value == L0) then
    o5583["Value"] = L0
    CallFunction(o5580, "ProcesseStateChange")
  end
end }
o5587 = { [nil] = {}, Start = function()
  o5587["Value"] = False
  o3807.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5587.Value == L0) then
    o5587["Value"] = L0
    o3807.ReCalculate()
  end
end }
S_o5637 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5637, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5637, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5637, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5637, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code5")
  else
    CallFunction(o5637, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_2", 1, 1 } }("Code6")
  else
    CallFunction(o5637, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5637, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DipoledOut = function(L0, L1)
  o5644.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5640.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5638.Value ~= True) then
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
o5638 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5638.SetStateValue(o5638.GetCalculated())
end, StartCalculate = function()
  o5638["Value"] = o5638.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5638.Value == L0) then
    DelayedFunction(10, o5638, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5638.Value == L0) then
    o5638["Value"] = L0
    CallFunction(o5637, "ProcesseStateChange")
  end
end }
o5640 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5640.SetStateValue(o5640.GetCalculated())
end, StartCalculate = function()
  o5640["Value"] = o5640.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5640.Value == L0) then
    DelayedFunction(2, o5640, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5640.Value == L0) then
    o5640["Value"] = L0
    CallFunction(o5637, "ProcesseStateChange")
  end
end }
o5644 = { [nil] = {}, Start = function()
  o5644["Value"] = False
  o3807.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5644.Value == L0) then
    o5644["Value"] = L0
    o3807.ReCalculate()
  end
end }
S_o5694 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5694, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5694, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5694, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5694, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code5")
  else
    CallFunction(o5694, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_4", 1, 1 } }("Code6")
  else
    CallFunction(o5694, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5694, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DipoledOut = function(L0, L1)
  o5701.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5697.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5695.Value ~= True) then
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
o5695 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5695.SetStateValue(o5695.GetCalculated())
end, StartCalculate = function()
  o5695["Value"] = o5695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5695.Value == L0) then
    DelayedFunction(10, o5695, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5695.Value == L0) then
    o5695["Value"] = L0
    CallFunction(o5694, "ProcesseStateChange")
  end
end }
o5697 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5697.SetStateValue(o5697.GetCalculated())
end, StartCalculate = function()
  o5697["Value"] = o5697.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5697.Value == L0) then
    DelayedFunction(2, o5697, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5697.Value == L0) then
    o5697["Value"] = L0
    CallFunction(o5694, "ProcesseStateChange")
  end
end }
o5701 = { [nil] = {}, Start = function()
  o5701["Value"] = False
  o3807.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5701.Value == L0) then
    o5701["Value"] = L0
    o3807.ReCalculate()
  end
end }
S_o5751 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5751, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5751, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5751, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o5751, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "wng", "player", "", "", 0.75, "Code5")
  else
    CallFunction(o5751, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/MercsEcape_Path_3", 1, 1 } }("Code6")
  else
    CallFunction(o5751, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code7")
  else
    CallFunction(o5751, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_DipoledOut = function(L0, L1)
  o5758.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5754.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5752.Value ~= True) then
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
o5752 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5752.SetStateValue(o5752.GetCalculated())
end, StartCalculate = function()
  o5752["Value"] = o5752.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5752.Value == L0) then
    DelayedFunction(10, o5752, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5752.Value == L0) then
    o5752["Value"] = L0
    CallFunction(o5751, "ProcesseStateChange")
  end
end }
o5754 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5754.SetStateValue(o5754.GetCalculated())
end, StartCalculate = function()
  o5754["Value"] = o5754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5754.Value == L0) then
    DelayedFunction(2, o5754, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5754.Value == L0) then
    o5754["Value"] = L0
    CallFunction(o5751, "ProcesseStateChange")
  end
end }
o5758 = { [nil] = {}, Start = function()
  o5758["Value"] = False
  o3807.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5758.Value == L0) then
    o5758["Value"] = L0
    o3807.ReCalculate()
  end
end }
S_o5808 = { [nil] = {}, Start = function(L0)

end }
S_o5809 = { [nil] = {}, Start = function(L0)

end }
S_o5810 = { [nil] = {}, Start = function(L0)

end }
S_o5811 = { [nil] = {}, Start = function(L0)

end }
S_o5812 = { [nil] = {}, Start = function(L0)

end }
o5814 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o5816 = FormationLib.CreateFormation("Triangle", "", "", "", 20, 20)
o5818 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 20)
S_o5819 = { [nil] = {}, Start = function(L0)

end }
S_o5820 = { [nil] = {}, Start = function(L0)

end }
S_o5821 = { [nil] = {}, Start = function(L0)

end }
S_o5822 = { [nil] = {}, Start = function(L0)

end }
S_o5823 = { [nil] = {}, Start = function(L0)

end }
S_o5824 = { [nil] = {}, Start = function(L0)

end }
S_o5825 = { [nil] = {}, Start = function(L0)

end }
S_o5826 = { [nil] = {}, Start = function(L0)

end }
o5828 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o5829 = { [nil] = {}, Start = function(L0)

end }
S_o5830 = { [nil] = {}, Start = function(L0)

end }
S_o5831 = { [nil] = {}, Start = function(L0)

end }
S_o5832 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5832, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o5832, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o5813, o5814, "/IngameSequences/Navigation/Player_Path_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.25, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5832, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5813, o5814, "/IngameSequences/Navigation/Player_Path_1", "pos_1", "pos_3", 1, 1, "Code10")
  else
    CallFunction(o5832, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_Cut(L0.Node, 1)
  CallFunction(o5832, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code12")
  else
    CallFunction(o5832, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  FormationLib.PlaceFormationPath(o5813, o5814, "/IngameSequences/Navigation/Player_Path_2")
  FormationLib.PlaceFormationPath(o5815, o5816, "/IngameSequences/Navigation/WingsPath_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_animal_1", 0, "MMMN", 0)
  CallFunction(o5832, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5815, o5816, "/IngameSequences/Navigation/WingsPath_1", "pos_1", "pos_3", 0.5, 1, "Code17")
  else
    CallFunction(o5832, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5836 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code1")
  else
    CallFunction(o5836, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_ZoomTo(L0.Node, 2, 0.7, 0.7)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 7, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 4, "MMMN", 0)
  CallFunction(o5836, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5836, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_animal_1", 2, "MMMN", 0)
  CallFunction(o5836, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code7")
  else
    CallFunction(o5836, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Director_EndCutscene(L0.Node)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o5836, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code10")
  else
    CallFunction(o5836, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  SED_SetTaskTextKey(2100, -1, -1)
  o3787.SetStateValue(True)
  CallFunction(o5836, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5838.Value ~= True) then
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
o5838 = { [nil] = {}, GetCalculated = function()
  if not (o3786.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5838.SetStateValue(o5838.GetCalculated())
end, StartCalculate = function()
  o5838["Value"] = o5838.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5838.Value == L0) then
    o5838["Value"] = L0
    CallFunction(o5836, "ProcesseStateChange")
  end
end }
S_o5842 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o5817, o5818, "/IngameSequences/Navigation/Mercs1Path_1")
  CallFunction(o5842, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5817, o5818, "/IngameSequences/Navigation/Mercs1Path_1", "pos_1", "pos_4", 0.75, 1, "Code2")
  else
    CallFunction(o5842, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  o3786.SetStateValue(True)
  CallFunction(o4063, "Code6")
  CallFunction(o4122, "Code6")
  CallFunction(o4181, "Code6")
  CallFunction(o4240, "Code6")
  CallFunction(o4299, "Code6")
  CallFunction(o5842, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o5844 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5844, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o30.Node, o3772.Node, 517)
  CallFunction(o5844, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5845.Value ~= True) then
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
o5845 = { [nil] = {}, GetCalculated = function()
  if not (o3786.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5845.SetStateValue(o5845.GetCalculated())
end, StartCalculate = function()
  o5845["Value"] = o5845.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5845.Value == L0) then
    o5845["Value"] = L0
    CallFunction(o5844, "ProcesseStateChange")
  end
end }
S_o5847 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5847, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mer_scout2_wide_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5847, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code8")
  else
    CallFunction(o5847, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 6, "MMMN", 0)
  CallFunction(o5847, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code10")
  else
    CallFunction(o5847, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o3896.Node, o3772.Node, 518)
  CallFunction(o5847, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5848.Value ~= True) then
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
o5848 = { [nil] = {}, GetCalculated = function()
  if not (o3793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5848.SetStateValue(o5848.GetCalculated())
end, StartCalculate = function()
  o5848["Value"] = o5848.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5848.Value == L0) then
    o5848["Value"] = L0
    CallFunction(o5847, "ProcesseStateChange")
  end
end }
S_o5852 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5852, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mer_bomber_bigbang_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5852, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code8")
  else
    CallFunction(o5852, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 6, "MMMN", 0)
  CallFunction(o5852, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code10")
  else
    CallFunction(o5852, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  o3796.SetStateValue(True)
  SendRadioMessageTake(o3837.Node, o3772.Node, 519)
  SendRadioMessageTake(o30.Node, o3772.Node, 520)
  CallFunction(o5852, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code15")
  else
    CallFunction(o5852, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  SED_SetTaskTextKey(2101, -1, -1)
  CallFunction(o5852, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5853.Value ~= True) then
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
o5853 = { [nil] = {}, GetCalculated = function()
  if not (o3795.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5853.SetStateValue(o5853.GetCalculated())
end, StartCalculate = function()
  o5853["Value"] = o5853.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5853.Value == L0) then
    o5853["Value"] = L0
    CallFunction(o5852, "ProcesseStateChange")
  end
end }
S_o5858 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5858, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5858, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code8")
  else
    CallFunction(o5858, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_9", 6, "MMMN", 0)
  CallFunction(o5858, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code10")
  else
    CallFunction(o5858, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Strega_wide_leech_1", 2, "MMMN", 0)
  CallFunction(o5858, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code12")
  else
    CallFunction(o5858, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  FormationLib.PlaceFormationPath(o5813, o5814, "/IngameSequences/Navigation/Player_Path_3")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/mer_bomb_1", 2, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_10", 3, "MMMN", 0)
  CallFunction(o5858, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code16")
  else
    CallFunction(o5858, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o5112.Node, o3772.Node, 698)
  CallFunction(o5858, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code19")
  else
    CallFunction(o5858, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  SED_SetTaskTextKey(2102, -1, -1)
  Game_SetWayPoint(GetGameNode(), o5570.Node)
  CallFunction(o5858, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5859.Value ~= True) then
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
o5859 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5859.SetStateValue(o5859.GetCalculated())
end, StartCalculate = function()
  o5859["Value"] = o5859.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5859.Value == L0) then
    o5859["Value"] = L0
    CallFunction(o5858, "ProcesseStateChange")
  end
end }
S_o5866 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5866, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code2")
  else
    CallFunction(o5866, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o5170.Node, o3772.Node, 521)
  SendRadioMessageTake(o5112.Node, o3772.Node, 522)
  CallFunction(o5866, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5867.Value ~= True) then
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
o5867 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5867.SetStateValue(o5867.GetCalculated())
end, StartCalculate = function()
  o5867["Value"] = o5867.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5867.Value == L0) then
    o5867["Value"] = L0
    CallFunction(o5866, "ProcesseStateChange")
  end
end }
S_o5870 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5870, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code2")
  else
    CallFunction(o5870, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Game_PlayMusic(GetGameNode(), "Track5")
  CallFunction(o5870, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code4")
  else
    CallFunction(o5870, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Game_PlayMusic(GetGameNode(), "Agressive")
  CallFunction(o5870, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5871.Value ~= True) then
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
o5871 = { [nil] = {}, GetCalculated = function()
  if not (o3797.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5871.SetStateValue(o5871.GetCalculated())
end, StartCalculate = function()
  o5871["Value"] = o5871.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5871.Value == L0) then
    o5871["Value"] = L0
    CallFunction(o5870, "ProcesseStateChange")
  end
end }
S_o5875 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5875, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11a", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Object/Eerie_cut_6h1_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  CallFunction(o5875, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.9, "Code8")
  else
    CallFunction(o5875, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11b", 12, "MMMN", 0)
  FormationLib.PlaceFormationPath(o5827, o5828, "/IngameSequences/Navigation/StregaCut_Path")
  FormationLib.PlaceFormationPath(o5813, o5814, "/IngameSequences/Navigation/Player_Path_4")
  CallFunction(o5875, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 16, "Code12")
  else
    CallFunction(o5875, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o6007.Node, o3772.Node, 526)
  o3802.SetStateValue(True)
  CallFunction(o5875, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code16")
  else
    CallFunction(o5875, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  SED_SetTaskTextKey(2100, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  CallFunction(o5875, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5876.Value ~= True) then
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
o5876 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5876.SetStateValue(o5876.GetCalculated())
end, StartCalculate = function()
  o5876["Value"] = o5876.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5876.Value == L0) then
    o5876["Value"] = L0
    CallFunction(o5875, "ProcesseStateChange")
  end
end }
S_o5881 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5881, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.95, "Code2")
  else
    CallFunction(o5881, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5827, o5828, "/IngameSequences/Navigation/StregaCut_Path", "pos_1", "pos_2", 0.25, 1, "Code3")
  else
    CallFunction(o5881, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5882.Value ~= True) then
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
o5882 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5882.SetStateValue(o5882.GetCalculated())
end, StartCalculate = function()
  o5882["Value"] = o5882.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5882.Value == L0) then
    o5882["Value"] = L0
    CallFunction(o5881, "ProcesseStateChange")
  end
end }
S_o5885 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5885, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.95, "Code2")
  else
    CallFunction(o5885, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o5813, o5814, "/IngameSequences/Navigation/Player_Path_4", "pos_1", "pos_2", 0.25, 1, "Code3")
  else
    CallFunction(o5885, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5886.Value ~= True) then
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
o5886 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5886.SetStateValue(o5886.GetCalculated())
end, StartCalculate = function()
  o5886["Value"] = o5886.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5886.Value == L0) then
    o5886["Value"] = L0
    CallFunction(o5885, "ProcesseStateChange")
  end
end }
S_o5889 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5889, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1e+32, "Code2")
  else
    CallFunction(o5889, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o3837.Node, o3772.Node, 525)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_11", 4, "MMMN", 0)
  CallFunction(o5889, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code5")
  else
    CallFunction(o5889, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Camera_LookAt(L0.Node, "/IngameSequences/Object/Strega_cut_6h1_1", 2, "MMMN", 0)
  CallFunction(o5889, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5890.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5891.Value ~= True) then
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
o5890 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5890.SetStateValue(o5890.GetCalculated())
end, StartCalculate = function()
  o5890["Value"] = o5890.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5890.Value == L0) then
    o5890["Value"] = L0
    CallFunction(o5889, "ProcesseStateChange")
  end
end }
o5891 = { [nil] = {}, GetCalculated = function()
  if not (o5956.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5891.SetStateValue(o5891.GetCalculated())
end, StartCalculate = function()
  o5891["Value"] = o5891.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5891.Value == L0) then
    o5891["Value"] = L0
    CallFunction(o5889, "ProcesseStateChange")
  end
end }
S_o5894 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5894, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.75, "Code2")
  else
    CallFunction(o5894, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  CallFunction(o6064, "Code5")
  CallFunction(o5894, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code4")
  else
    CallFunction(o5894, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  SendRadioMessageTake(o5951.Node, o3772.Node, 524)
  CallFunction(o5894, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5895.Value ~= True) then
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
o5895 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5895.SetStateValue(o5895.GetCalculated())
end, StartCalculate = function()
  o5895["Value"] = o5895.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5895.Value == L0) then
    o5895["Value"] = L0
    CallFunction(o5894, "ProcesseStateChange")
  end
end }
S_o5899 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5899, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "Track5")
  CallFunction(o5899, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.5, "Code3")
  else
    CallFunction(o5899, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "Track4")
  CallFunction(o5899, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o5900.Value ~= True) then
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
o5900 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5900.SetStateValue(o5900.GetCalculated())
end, StartCalculate = function()
  o5900["Value"] = o5900.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5900.Value == L0) then
    o5900["Value"] = L0
    CallFunction(o5899, "ProcesseStateChange")
  end
end }
S_o5903 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Generic_Taunt_Deactivate(L0.Node)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5903, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5903, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o5903, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5903, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5903, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o5905.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5904.Value ~= True) then
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
o5904 = { [nil] = {}, GetCalculated = function()
  if not (o5956.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5904.SetStateValue(o5904.GetCalculated())
end, StartCalculate = function()
  o5904["Value"] = o5904.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5904.Value == L0) then
    o5904["Value"] = L0
    CallFunction(o5903, "ProcesseStateChange")
  end
end }
o5905 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5905.SetStateValue(o5905.GetCalculated())
end, StartCalculate = function()
  o5905["Value"] = o5905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5905.Value == L0) then
    o5905["Value"] = L0
    CallFunction(o5903, "ProcesseStateChange")
  end
end }
S_o5951 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5951, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5951, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5951, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetEmpShield(L0.Node, 0)
  Body_SetKineticShield(L0.Node, 0, 1)
  CallFunction(o5951, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o5951, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5951, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5951, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o5956.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o5952.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o5953.Value ~= True) then
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
o5952 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5952.SetStateValue(o5952.GetCalculated())
end, StartCalculate = function()
  o5952["Value"] = o5952.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5952.Value == L0) then
    DelayedFunction(0.5, o5952, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5952.Value == L0) then
    o5952["Value"] = L0
    CallFunction(o5951, "ProcesseStateChange")
  end
end }
o5953 = { [nil] = {}, GetCalculated = function()
  if not (o6068.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5953.SetStateValue(o5953.GetCalculated())
end, StartCalculate = function()
  o5953["Value"] = o5953.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5953.Value == L0) then
    DelayedFunction(7, o5953, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5953.Value == L0) then
    o5953["Value"] = L0
    CallFunction(o5951, "ProcesseStateChange")
  end
end }
o5956 = { [nil] = {}, Start = function()
  o5956["Value"] = False
  o5891.StartCalculate()
  o5904.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5956.Value == L0) then
    o5956["Value"] = L0
    o5891.ReCalculate()
    o5904.ReCalculate()
  end
end }
S_o6007 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6007, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6007, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6007, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "Eerie_cut_6h1_1", "E", "dir_SceneMesh", "")
  CallFunction(o6007, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o6007, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o6007, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o6007, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6007, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StregaEcape_Path", 1, 1 } }("Code9")
  else
    CallFunction(o6007, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o6007, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_DipoledOut = function(L0, L1)
  o6014.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6009.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6010.Value ~= True) then
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
o6009 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6009.SetStateValue(o6009.GetCalculated())
end, StartCalculate = function()
  o6009["Value"] = o6009.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6009.Value == L0) then
    DelayedFunction(0.5, o6009, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6009.Value == L0) then
    o6009["Value"] = L0
    CallFunction(o6007, "ProcesseStateChange")
  end
end }
o6010 = { [nil] = {}, GetCalculated = function()
  if not (o3802.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6010.SetStateValue(o6010.GetCalculated())
end, StartCalculate = function()
  o6010["Value"] = o6010.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6010.Value == L0) then
    o6010["Value"] = L0
    CallFunction(o6007, "ProcesseStateChange")
  end
end }
o6014 = { [nil] = {}, Start = function()
  o6014["Value"] = False
  o3806.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6014.Value == L0) then
    o6014["Value"] = L0
    o3806.ReCalculate()
  end
end }
S_o6064 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Generic_Taunt_Deactivate(L0.Node)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6064, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6064, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o6064, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6064, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6064, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o6068.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o6066.Value ~= True) then
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
o6066 = { [nil] = {}, GetCalculated = function()
  if not (o3627.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6066.SetStateValue(o6066.GetCalculated())
end, StartCalculate = function()
  o6066["Value"] = o6066.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6066.Value == L0) then
    o6066["Value"] = L0
    CallFunction(o6064, "ProcesseStateChange")
  end
end }
o6068 = { [nil] = {}, Start = function()
  o6068["Value"] = False
  o5953.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6068.Value == L0) then
    o6068["Value"] = L0
    o5953.ReCalculate()
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 348)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_static_1", S_o30)
  o34.Start()
  o35.Start()
  o36.Start()
  o37.Start()
  o78 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o78)
  o124 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_2", S_o124)
  o170 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_3", S_o170)
  o216 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_1", S_o216)
  o262 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_1", S_o262)
  o308 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_1", S_o308)
  o354 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_1", S_o354)
  o400 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_1", S_o400)
  o446 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_1", S_o446)
  o492 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_1", S_o492)
  o538 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_1", S_o538)
  o584 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_2", S_o584)
  o630 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_2", S_o630)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_2", S_o676)
  o722 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_3", S_o722)
  o768 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_3", S_o768)
  o814 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_3", S_o814)
  o860 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_4", S_o860)
  o906 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_4", S_o906)
  o952 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_4", S_o952)
  o998 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_5", S_o998)
  o1044 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_5", S_o1044)
  o1090 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_5", S_o1090)
  o1136 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_6", S_o1136)
  o1182 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_6", S_o1182)
  o1228 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_6", S_o1228)
  o1274 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_7", S_o1274)
  o1320 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_7", S_o1320)
  o1366 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_7", S_o1366)
  o1412 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_01_8", S_o1412)
  o1458 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_02_8", S_o1458)
  o1504 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_l_03_8", S_o1504)
  o1550 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_2", S_o1550)
  o1596 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_2", S_o1596)
  o1642 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_3", S_o1642)
  o1688 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_3", S_o1688)
  o1734 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_4", S_o1734)
  o1780 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_4", S_o1780)
  o1826 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_5", S_o1826)
  o1872 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_5", S_o1872)
  o1918 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_2", S_o1918)
  o1964 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_2", S_o1964)
  o2010 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_2", S_o2010)
  o2056 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_3", S_o2056)
  o2102 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_3", S_o2102)
  o2148 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_3", S_o2148)
  o2194 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_4", S_o2194)
  o2240 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_4", S_o2240)
  o2286 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_4", S_o2286)
  o2332 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_2", S_o2332)
  o2378 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_3", S_o2378)
  o2424 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_4", S_o2424)
  o2470 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_5", S_o2470)
  o2516 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_6", S_o2516)
  o2562 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_l_7", S_o2562)
  o2608 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_2", S_o2608)
  o2654 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_bridgering_m_3", S_o2654)
  o2700 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_1", S_o2700)
  o2746 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_1", S_o2746)
  o2792 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_1", S_o2792)
  o2838 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2", S_o2838)
  o2884 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_2x", S_o2884)
  o2930 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2", S_o2930)
  o2976 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_2a", S_o2976)
  o3022 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2", S_o3022)
  o3068 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2a", S_o3068)
  o3114 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_2b", S_o3114)
  o3160 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3", S_o3160)
  o3206 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_l_01_3a", S_o3206)
  o3252 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_m_01_3", S_o3252)
  o3298 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3", S_o3298)
  o3344 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_01_6", S_o3344)
  o3390 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_m_02_6", S_o3390)
  o3436 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_01_5", S_o3436)
  o3482 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_02_5", S_o3482)
  o3528 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_megalith_s_03_5", S_o3528)
  o3574 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rock_s_01_3a", S_o3574)
  o3622 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tNatvsStregaArea", S_o3622)
  o3627.Start()
  o3628 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_emitter_1", S_o3628)
  o3676 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_emitter_2", S_o3676)
  o3724 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "dir_cammesh_emitter_3", S_o3724)
  o3772 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o3772)
  o3786.Start()
  o3787.Start()
  o3796.Start()
  o3798.Start()
  o3802.Start()
  o3837 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o3837)
  o3851.Start()
  o3896 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o3896)
  o3955 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_transporter_1", S_o3955)
  o4009 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_transporter_2", S_o4009)
  o4063 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_1", S_o4063)
  o4071.Start()
  o4080.Start()
  o4122 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_2", S_o4122)
  o4130.Start()
  o4139.Start()
  o4181 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_3", S_o4181)
  o4189.Start()
  o4198.Start()
  o4240 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_4", S_o4240)
  o4248.Start()
  o4257.Start()
  o4299 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_5", S_o4299)
  o4307.Start()
  o4316.Start()
  o4358 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_1", S_o4358)
  o4365.Start()
  o4374.Start()
  o4416 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_2", S_o4416)
  o4423.Start()
  o4432.Start()
  o4474 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_3", S_o4474)
  o4481.Start()
  o4490.Start()
  o4532 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_4", S_o4532)
  o4539.Start()
  o4548.Start()
  o4590 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_5", S_o4590)
  o4597.Start()
  o4606.Start()
  o4648 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_6", S_o4648)
  o4655.Start()
  o4664.Start()
  o4706 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_7", S_o4706)
  o4713.Start()
  o4722.Start()
  o4764 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_bigbang_1", S_o4764)
  o4771.Start()
  o4822 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_bigbang_2", S_o4822)
  o4829.Start()
  o4880 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_bigbang_3", S_o4880)
  o4887.Start()
  o4938 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_1", S_o4938)
  o4954.Start()
  o4996 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_2", S_o4996)
  o5012.Start()
  o5054 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_3", S_o5054)
  o5070.Start()
  o5112 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Eerie", S_o5112)
  o5170 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Strega_wide_leech_1", S_o5170)
  o5228 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_6", S_o5228)
  o5243.Start()
  o5285 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_7", S_o5285)
  o5300.Start()
  o5342 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_8", S_o5342)
  o5357.Start()
  o5399 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_9", S_o5399)
  o5414.Start()
  o5456 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_1", S_o5456)
  o5462.Start()
  o5513 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomb_2", S_o5513)
  o5519.Start()
  o5570 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o5570)
  o5575 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o5575)
  o5580 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_bomber_Xtra_1", S_o5580)
  o5587.Start()
  o5637 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_Xtra_1", S_o5637)
  o5644.Start()
  o5694 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout2_wide_Xtra_2", S_o5694)
  o5701.Start()
  o5751 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mer_scout1_wide_Xtra_1", S_o5751)
  o5758.Start()
  o5808 = BindEasy(Node_Find("/"), "Camera", S_o5808)
  o5809 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o5809)
  o5810 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o5810)
  o5811 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o5811)
  o5812 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o5812)
  o5819 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o5819)
  o5820 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o5820)
  o5821 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o5821)
  o5822 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o5822)
  o5823 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o5823)
  o5824 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_9", S_o5824)
  o5825 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o5825)
  o5826 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_10", S_o5826)
  o5829 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11a", S_o5829)
  o5830 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11b", S_o5830)
  o5831 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_11", S_o5831)
  o5903 = BindEasy(Node_Find("/IngameSequences/Object"), "dir_SceneMesh", S_o5903)
  o5951 = BindEasy(Node_Find("/IngameSequences/Object"), "Eerie_cut_6h1_1", S_o5951)
  o5956.Start()
  o6007 = BindEasy(Node_Find("/IngameSequences/Object"), "Strega_cut_6h1_1", S_o6007)
  o6014.Start()
  o6064 = BindEasy(Node_Find("/IngameSequences/Object"), "dir_NatCockpitexlpode", S_o6064)
  o6068.Start()
  o5832 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro", S_o5832)
  o5836 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro_AddOn", S_o5836)
  o5842 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro_AddOn_Mercs", S_o5842)
  o5844 = BindEasy(Node_Find("/IngameSequences/Director"), "Intro_Audio", S_o5844)
  o5847 = BindEasy(Node_Find("/IngameSequences/Director"), "Mercs2_IntoBattleScene", S_o5847)
  o5852 = BindEasy(Node_Find("/IngameSequences/Director"), "MercBomber_IntoBattleScene", S_o5852)
  o5858 = BindEasy(Node_Find("/IngameSequences/Director"), "Strega_IntoBattleScene", S_o5858)
  o5866 = BindEasy(Node_Find("/IngameSequences/Director"), "Strega_IntoBattleScene_Audio", S_o5866)
  o5870 = BindEasy(Node_Find("/IngameSequences/Director"), "Strega_IntoBattleScene_Music", S_o5870)
  o5875 = BindEasy(Node_Find("/IngameSequences/Director"), "NatvsStregaScene", S_o5875)
  o5881 = BindEasy(Node_Find("/IngameSequences/Director"), "NatvsStregaScene_AddOn1", S_o5881)
  o5885 = BindEasy(Node_Find("/IngameSequences/Director"), "NatvsStregaScene_AddOn2", S_o5885)
  o5889 = BindEasy(Node_Find("/IngameSequences/Director"), "NatvsStregaScene_AddOn3", S_o5889)
  o5894 = BindEasy(Node_Find("/IngameSequences/Director"), "NatvsStregaScene_Audio", S_o5894)
  o5899 = BindEasy(Node_Find("/IngameSequences/Director"), "NatvsStregaScene_Music", S_o5899)
  o5813 = { {}, o3772 }()
  o5815 = { {}, o3896, o3837 }()
  o5817 = { {}, o4063, o4122, o4181, o4240, o4299 }()
  o5827 = { {}, o6007 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
