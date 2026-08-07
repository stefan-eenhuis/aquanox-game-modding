-- dekompiliert aus map\2h1\script\2h1.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

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
  Terrain_LoadTerrain(node1, "map/2H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.4)
  Game_SetCausticObject(node0, 0.1, 0.4)
  Game_SetCausticBuilding(node0, 0.025, 0.4)
  Game_SetLightCache(node0, "map/2H1/Lmsh/", "map/2H1/Ltex/")
  Game_SetTerrainDepth(node0, 1743)
  Game_SetDecompressionHeight(node0, 500)
  Game_SetAmbientLight(node0, 0.019608, 0.141176, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.282353, 0.282353)
  Game_SetParallelLightB(node0, 0.635294, 0.635294, 0.635294)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_2H1_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track03.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_timesend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_heroic1.sam", 3)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 4)
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
  node5 = Node_CreateNode("NOD_Path", "Dock_Path")
  Node_AddSon(node4, node5)
  Game_LoadProgress_Advance(node0)
  node6 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node5, node6)
  Position_SetPosition(node6, MAT_Vector3(1653.353148, 1897.994627, 385))
  Position_SetRadius(node6, 5)
  Game_LoadProgress_Advance(node0)
  node7 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node5, node7)
  Position_SetPosition(node7, MAT_Vector3(1546.804039, 1897.664474, 385))
  Position_SetRadius(node7, 5)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("NOD_Path", "ApproachPath")
  Node_AddSon(node4, node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node8, node9)
  Position_SetPosition(node9, MAT_Vector3(1792.179189, 1896.363666, 372.325466))
  Position_SetRadius(node9, 5)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node8, node10)
  Position_SetPosition(node10, MAT_Vector3(1743.118898, 1896.965294, 345.44785))
  Position_SetRadius(node10, 5)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node8, node11)
  Position_SetPosition(node11, MAT_Vector3(1685.436213, 1897.19255, 385.16155))
  Position_SetRadius(node11, 5)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("NOD_PatrolArea", "Dock_PatrolArea")
  Node_AddSon(node4, node12)
  PatrolArea_SetPosition(node12, MAT_Vector3(1625.461346, 1739.893395, 370.480205))
  PatrolArea_SetRadius(node12, 100)
  PatrolArea_SetMinZ(node12, -20)
  PatrolArea_SetMaxZ(node12, 20)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("NOD_Position", "300_Sphere")
  Node_AddSon(node4, node13)
  Position_SetPosition(node13, MAT_Vector3(2637.635342, 501.311124, 459.952923))
  Position_SetRadius(node13, 300)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node2, node14)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node2, node15)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node16)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "Liberty")
  Node_AddSon(node16, node17)
  Body_SetCS(node17, MAT_Vector3(1578.353521, 2238.83605, 289.565958), MAT_Vector3(-54.96379, -4.02331, -10.955829))
  Node_ParseIniFile(node17, "osd/ent/ent_liberty.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ent_dock1_libertycity")
  Node_AddSon(node16, node18)
  Body_SetCS(node18, MAT_Vector3(1620.073556, 2543.729637, 264.88545), MAT_Vector3(-90.298017, 0, 0))
  Node_ParseIniFile(node18, "osd/ent/ent_dock3.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "LibertyDock")
  Node_AddSon(node16, node19)
  Body_SetCS(node19, MAT_Vector3(1538.016149, 1896.817538, 245.346947), MAT_Vector3(-0.005957, 0, 0))
  Node_ParseIniFile(node19, "osd/ent/ent_dock1_raw.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ent_dock1_4_1")
  Node_AddSon(node16, node20)
  Body_SetCS(node20, MAT_Vector3(1759.08425, 2688.305708, 338.092809), MAT_Vector3(-89.763388, 0, 0))
  Node_ParseIniFile(node20, "osd/ent/ent_dock1_4.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ent_dock3_2")
  Node_AddSon(node16, node21)
  Body_SetCS(node21, MAT_Vector3(1170.176739, 1329.646963, 308.281234), MAT_Vector3(-89.195449, 0, 0))
  Node_ParseIniFile(node21, "osd/ent/ent_dock3.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_kraft22_1")
  Node_AddSon(node16, node22)
  Body_SetCS(node22, MAT_Vector3(2680.977, 1673.946, 321.427021), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_schwim_1")
  Node_AddSon(node16, node23)
  Body_SetCS(node23, MAT_Vector3(2322.638, 1974.966, 330.047751), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_werk2_1")
  Node_AddSon(node16, node24)
  Body_SetCS(node24, MAT_Vector3(2449.949, 1892.875, 376.85051), MAT_Vector3(-46.10672, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_werk1_1")
  Node_AddSon(node16, node25)
  Body_SetCS(node25, MAT_Vector3(2543.486, 1796.944, 374.814871), MAT_Vector3(-45.83497, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node16, node26)
  Body_SetCS(node26, MAT_Vector3(2581.508, 1228.724, 266.774077), MAT_Vector3(0.547393, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_gangM_1")
  Node_AddSon(node16, node27)
  Body_SetCS(node27, MAT_Vector3(1502.376825, 1959.665338, 308.759378), MAT_Vector3(28.153606, 0, 0))
  Node_ParseIniFile(node27, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_gangM_2")
  Node_AddSon(node16, node28)
  Body_SetCS(node28, MAT_Vector3(1500.521, 1957.858, 320.595959), MAT_Vector3(28.15361, 0, 0))
  Node_ParseIniFile(node28, "osd/gen/gen_gangway02.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_gangK_1")
  Node_AddSon(node16, node29)
  Body_SetCS(node29, MAT_Vector3(1553.323426, 2286.543831, 377.056281), MAT_Vector3(36.292836, 0, 0))
  Node_ParseIniFile(node29, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_gangK_2")
  Node_AddSon(node16, node30)
  Body_SetCS(node30, MAT_Vector3(1443.743467, 2228.046655, 335.53263), MAT_Vector3(36.29284, 0, 0))
  Node_ParseIniFile(node30, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_gangK_3")
  Node_AddSon(node16, node31)
  Body_SetCS(node31, MAT_Vector3(1498.621592, 2071.626741, 343.753115), MAT_Vector3(125.18058, 0, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_gangK_4")
  Node_AddSon(node16, node32)
  Body_SetCS(node32, MAT_Vector3(1498.622, 2071.627, 331.193833), MAT_Vector3(125.447548, 0, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_gangway01.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_schorn1_1")
  Node_AddSon(node16, node33)
  Body_SetCS(node33, MAT_Vector3(1481.333128, 2086.802056, 357.886425), MAT_Vector3(-81.147755, -56.404206, -24.29284))
  Node_ParseIniFile(node33, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_kuppel_1")
  Node_AddSon(node16, node34)
  Body_SetCS(node34, MAT_Vector3(1355.140737, 2005.23575, 425.507797), MAT_Vector3(154.41308, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_kuppel_2")
  Node_AddSon(node16, node35)
  Body_SetCS(node35, MAT_Vector3(1440.338224, 2028.091801, 426.492319), MAT_Vector3(6.33702, 12.160922, -0.012834))
  Node_ParseIniFile(node35, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_stab1_18")
  Node_AddSon(node16, node36)
  Body_SetCS(node36, MAT_Vector3(2536.918, 1883.522, 356.963252), MAT_Vector3(1.060774, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node16, node37)
  Body_SetCS(node37, MAT_Vector3(2573.315501, 1434.349333, 395.449295), MAT_Vector3(-45.896297, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node16, node38)
  Body_SetCS(node38, MAT_Vector3(2573.713747, 1486.984205, 395.4493), MAT_Vector3(-45.8963, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_stab1_4")
  Node_AddSon(node16, node39)
  Body_SetCS(node39, MAT_Vector3(2621.841404, 1485.923341, 395.4493), MAT_Vector3(-42.38628, 0, 0))
  Node_ParseIniFile(node39, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_stab1_5")
  Node_AddSon(node16, node40)
  Body_SetCS(node40, MAT_Vector3(2622.106165, 1435.541695, 395.4493), MAT_Vector3(-42.38628, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_stab3_8")
  Node_AddSon(node16, node41)
  Body_SetCS(node41, MAT_Vector3(2565.121, 1259.914, 305.7673), MAT_Vector3(-47.13207, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_stab3_9")
  Node_AddSon(node16, node42)
  Body_SetCS(node42, MAT_Vector3(2597.483, 1260.333, 305.7673), MAT_Vector3(-47.13207, 0, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_stab3_10")
  Node_AddSon(node16, node43)
  Body_SetCS(node43, MAT_Vector3(2597.663, 1197.629, 305.7673), MAT_Vector3(-45.26744, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_stab3_11")
  Node_AddSon(node16, node44)
  Body_SetCS(node44, MAT_Vector3(2565.522, 1197.629, 305.7673), MAT_Vector3(-45.26744, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ent_wblock3b_02_1")
  Node_AddSon(node16, node45)
  Body_SetCS(node45, MAT_Vector3(1511.367337, 258.985814, 280.809087), MAT_Vector3(179.690946, 0, 0))
  Node_ParseIniFile(node45, "osd/ent/ent_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ent_wblock3a_04_2")
  Node_AddSon(node16, node46)
  Body_SetCS(node46, MAT_Vector3(1594.705721, 130.247196, 281.939287), MAT_Vector3(-89.369291, 0, 0))
  Node_ParseIniFile(node46, "osd/ent/ent_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ent_wblock3a_04_3")
  Node_AddSon(node16, node47)
  Body_SetCS(node47, MAT_Vector3(1647.986835, 1276.881462, 250.036408), MAT_Vector3(-89.36929, 0, 0))
  Node_ParseIniFile(node47, "osd/ent/ent_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ent_wblock3a_04_4")
  Node_AddSon(node16, node48)
  Body_SetCS(node48, MAT_Vector3(1184.125265, 1224.947631, 290.446876), MAT_Vector3(-179.473257, 0, 0))
  Node_ParseIniFile(node48, "osd/ent/ent_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ent_wblock3a_02_2")
  Node_AddSon(node16, node49)
  Body_SetCS(node49, MAT_Vector3(1379.408453, 325.02117, 276.213295), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node49, "osd/ent/ent_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ent_wblock3a_02_3")
  Node_AddSon(node16, node50)
  Body_SetCS(node50, MAT_Vector3(1194.78167, 1140.036323, 246.950951), MAT_Vector3(0.928328, 0, 0))
  Node_ParseIniFile(node50, "osd/ent/ent_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "gen_schrott1_1")
  Node_AddSon(node16, node51)
  Body_SetCS(node51, MAT_Vector3(2120.428936, 1037.012129, 182.086579), MAT_Vector3(108.068797, 10.156688, 5.990136))
  Node_ParseIniFile(node51, "osd/gen/gen_schrott1.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "gen_schrott1_2")
  Node_AddSon(node16, node52)
  Body_SetCS(node52, MAT_Vector3(1792.052904, 1690.378871, 225.123952), MAT_Vector3(-61.719018, -16.487431, 5.716911))
  Node_ParseIniFile(node52, "osd/gen/gen_schrott1.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "gen_schrott2_1")
  Node_AddSon(node16, node53)
  Body_SetCS(node53, MAT_Vector3(1810.745157, 2038.137559, 242.082151), MAT_Vector3(-46.156904, 76.66343, 94.506086))
  Node_ParseIniFile(node53, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "gen_schrott2_2")
  Node_AddSon(node16, node54)
  Body_SetCS(node54, MAT_Vector3(2130.671091, 1213.980571, 227.037722), MAT_Vector3(33.784983, 53.343798, 20.874531))
  Node_ParseIniFile(node54, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "gen_schrott2_3")
  Node_AddSon(node16, node55)
  Body_SetCS(node55, MAT_Vector3(2234.876479, 1662.954653, 263.305639), MAT_Vector3(-164.409462, 49.17315, 71.339558))
  Node_ParseIniFile(node55, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "gen_schrott2_4")
  Node_AddSon(node16, node56)
  Body_SetCS(node56, MAT_Vector3(2356.211354, 1535.986337, 280.225719), MAT_Vector3(43.49528, 59.1501, 68.109766))
  Node_ParseIniFile(node56, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "gen_schrott2_5")
  Node_AddSon(node16, node57)
  Body_SetCS(node57, MAT_Vector3(1792.907862, 1518.272065, 266.750674), MAT_Vector3(49.088054, 33.441279, 76.365851))
  Node_ParseIniFile(node57, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "gen_schrott2_6")
  Node_AddSon(node16, node58)
  Body_SetCS(node58, MAT_Vector3(1794.646334, 2164.560409, 252.749325), MAT_Vector3(2.438224, 61.879216, 120.07115))
  Node_ParseIniFile(node58, "osd/gen/gen_schrott2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "gen_schrott3_1")
  Node_AddSon(node16, node59)
  Body_SetCS(node59, MAT_Vector3(2132.727493, 1165.346539, 232.075721), MAT_Vector3(-27.546175, 23.826574, 48.707831))
  Node_ParseIniFile(node59, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "gen_schrott3_2")
  Node_AddSon(node16, node60)
  Body_SetCS(node60, MAT_Vector3(1830.409173, 2051.043757, 246.627808), MAT_Vector3(-125.133116, -17.953534, 2.80268))
  Node_ParseIniFile(node60, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "gen_schrott3_3")
  Node_AddSon(node16, node61)
  Body_SetCS(node61, MAT_Vector3(1712.316099, 1932.951099, 254.411486), MAT_Vector3(72.505339, 6.325734, -130.523239))
  Node_ParseIniFile(node61, "osd/gen/gen_schrott3.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node16, node62)
  Body_SetCS(node62, MAT_Vector3(2332.294799, 1027.734949, 275), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node62, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "gen_pole1_2")
  Node_AddSon(node16, node63)
  Body_SetCS(node63, MAT_Vector3(2229.492273, 994.608025, 275), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node63, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "gen_turbine_1")
  Node_AddSon(node16, node64)
  Body_SetCS(node64, MAT_Vector3(2487.486383, 1442.713134, 345.731225), MAT_Vector3(90.047278, 0, 0))
  Node_ParseIniFile(node64, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "gen_turbine_2")
  Node_AddSon(node16, node65)
  Body_SetCS(node65, MAT_Vector3(2489.15633, 1510.466538, 340.710522), MAT_Vector3(90.04728, 0, 0))
  Node_ParseIniFile(node65, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_turbine_3")
  Node_AddSon(node16, node66)
  Body_SetCS(node66, MAT_Vector3(2489.513785, 1583.608767, 340.7105), MAT_Vector3(90.04728, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_turbine.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_tank_sml2_1")
  Node_AddSon(node16, node67)
  Body_SetCS(node67, MAT_Vector3(2449.394281, 1729.279665, 327.325894), MAT_Vector3(23.677956, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_tank_sml2_2")
  Node_AddSon(node16, node68)
  Body_SetCS(node68, MAT_Vector3(2410.670406, 1774.594845, 327.3259), MAT_Vector3(-8.371552, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_tank_sml2_3")
  Node_AddSon(node16, node69)
  Body_SetCS(node69, MAT_Vector3(2371.946406, 1814.966407, 327.3259), MAT_Vector3(24.586698, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ent_wblock3a_02_1")
  Node_AddSon(node16, node70)
  Body_SetCS(node70, MAT_Vector3(1477.467508, 2288.942494, 248.038898), MAT_Vector3(34.06779, 0, 0))
  Node_ParseIniFile(node70, "osd/ent/ent_wblock3a_02.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ent_wblock3a_01_1")
  Node_AddSon(node16, node71)
  Body_SetCS(node71, MAT_Vector3(1501.714693, 2150.167978, 207.553663), MAT_Vector3(-55.524618, 0, 0))
  Node_ParseIniFile(node71, "osd/ent/ent_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ent_wblock3b_01_1")
  Node_AddSon(node16, node72)
  Body_SetCS(node72, MAT_Vector3(2099.038703, 2129.662928, 331.615705), MAT_Vector3(-42.527272, 0, 0))
  Node_ParseIniFile(node72, "osd/ent/ent_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ent_wblock3a_05_1")
  Node_AddSon(node16, node73)
  Body_SetCS(node73, MAT_Vector3(1961.323951, 2289.116376, 330.206817), MAT_Vector3(89.883587, 0, 0))
  Node_ParseIniFile(node73, "osd/ent/ent_wblock3a_05.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ent_wblock3a_04_1")
  Node_AddSon(node16, node74)
  Body_SetCS(node74, MAT_Vector3(1204.174073, 1575.18867, 378.077066), MAT_Vector3(-51.425569, 0, 0))
  Node_ParseIniFile(node74, "osd/ent/ent_wblock3a_04.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_pole_1")
  Node_AddSon(node16, node75)
  Body_SetCS(node75, MAT_Vector3(1613.469479, 1933.323769, 257.75837), MAT_Vector3(37.298819, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "gen_pole_2")
  Node_AddSon(node16, node76)
  Body_SetCS(node76, MAT_Vector3(1613.349088, 1859.648485, 257.7584), MAT_Vector3(52.303004, 0, 0))
  Node_ParseIniFile(node76, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "gen_pole2_7")
  Node_AddSon(node16, node77)
  Body_SetCS(node77, MAT_Vector3(1210.869641, 1665.210529, 382.178595), MAT_Vector3(40.763945, 0, 0))
  Node_ParseIniFile(node77, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "gen_pole2_8")
  Node_AddSon(node16, node78)
  Body_SetCS(node78, MAT_Vector3(1252.839232, 1615.687306, 382.1786), MAT_Vector3(40.76395, 0, 0))
  Node_ParseIniFile(node78, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "gen_pole2_9")
  Node_AddSon(node16, node79)
  Body_SetCS(node79, MAT_Vector3(1310.476746, 1568.401665, 382.1786), MAT_Vector3(40.76395, 0, 0))
  Node_ParseIniFile(node79, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "gen_pole2_10")
  Node_AddSon(node16, node80)
  Body_SetCS(node80, MAT_Vector3(1882.627407, 1530.871114, 285.822424), MAT_Vector3(0.380311, 0, 0))
  Node_ParseIniFile(node80, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_pole2_11")
  Node_AddSon(node16, node81)
  Body_SetCS(node81, MAT_Vector3(2058.612006, 1552.323571, 285.8224), MAT_Vector3(0.380311, 0, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_pole2_12")
  Node_AddSon(node16, node82)
  Body_SetCS(node82, MAT_Vector3(2058.136915, 1531.230206, 285.8224), MAT_Vector3(0.380311, 0, 0))
  Node_ParseIniFile(node82, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_kai1_1")
  Node_AddSon(node16, node83)
  Body_SetCS(node83, MAT_Vector3(2063.903805, 2077.775533, 342.42434), MAT_Vector3(48.30923, 0, 0))
  Node_ParseIniFile(node83, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_kai1_2")
  Node_AddSon(node16, node84)
  Body_SetCS(node84, MAT_Vector3(2371.803049, 1723.15781, 343.219092), MAT_Vector3(-137.091727, 0.668351, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_kai1_3")
  Node_AddSon(node16, node85)
  Body_SetCS(node85, MAT_Vector3(1971.449748, 1541.99849, 286.694415), MAT_Vector3(-89.82904, 0.668351, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_kai1_4")
  Node_AddSon(node16, node86)
  Body_SetCS(node86, MAT_Vector3(1658.546724, 1867.233832, 254.352043), MAT_Vector3(-0.045753, 0.668351, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_kai1_5")
  Node_AddSon(node16, node87)
  Body_SetCS(node87, MAT_Vector3(3124.939676, 1301.027426, 332.157469), MAT_Vector3(-90, 0.668351, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_kai1_6")
  Node_AddSon(node16, node88)
  Body_SetCS(node88, MAT_Vector3(2482.476802, 700.271775, 359.727864), MAT_Vector3(-90, 0.668351, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_kai1_7")
  Node_AddSon(node16, node89)
  Body_SetCS(node89, MAT_Vector3(2396.58625, 846.676487, 358.382893), MAT_Vector3(-90, 0.668351, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_kai1_8")
  Node_AddSon(node16, node90)
  Body_SetCS(node90, MAT_Vector3(2525.638608, 579.180433, 357.485736), MAT_Vector3(-90, 0.668351, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_kai1.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node16, node91)
  Body_SetCS(node91, MAT_Vector3(1361.205429, 2071.684579, 435.242642), MAT_Vector3(-89.904369, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_tank_big_1")
  Node_AddSon(node16, node92)
  Body_SetCS(node92, MAT_Vector3(1357.578972, 2071.82961, 470.108535), MAT_Vector3(-89.29522, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_tank_big.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_pole2_1")
  Node_AddSon(node16, node93)
  Body_SetCS(node93, MAT_Vector3(1410.944051, 2042.138487, 437.302601), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node16, node94)
  Body_SetCS(node94, MAT_Vector3(1316.117482, 2038.433043, 437.44275), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ent_turbine1v1_2")
  Node_AddSon(node16, node95)
  Body_SetCS(node95, MAT_Vector3(1382.757021, 2503.330318, 260.161652), MAT_Vector3(55.549818, 0, 0))
  Node_ParseIniFile(node95, "osd/ent/ent_turbine1v1.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ent_turbine1v1_1")
  Node_AddSon(node16, node96)
  Body_SetCS(node96, MAT_Vector3(907.715694, 2224.957336, 267.745732), MAT_Vector3(55.54982, 0, 0))
  Node_ParseIniFile(node96, "osd/ent/ent_turbine1v1.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ent_turbine1v2_2")
  Node_AddSon(node16, node97)
  Body_SetCS(node97, MAT_Vector3(1125.936584, 2273.657053, 272.18654), MAT_Vector3(60.306085, 0, 0))
  Node_ParseIniFile(node97, "osd/ent/ent_turbine1v2.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ent_turbine2_2")
  Node_AddSon(node16, node98)
  Body_SetCS(node98, MAT_Vector3(1316.136625, 2316.563443, 263.310708), MAT_Vector3(58.470066, 0, 0))
  Node_ParseIniFile(node98, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ent_turbine2_1")
  Node_AddSon(node16, node99)
  Body_SetCS(node99, MAT_Vector3(1099.47615, 2457.054303, 268.261297), MAT_Vector3(56.88631, 0, 0))
  Node_ParseIniFile(node99, "osd/ent/ent_turbine2.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_synapse_1")
  Node_AddSon(node16, node100)
  Body_SetCS(node100, MAT_Vector3(3395.417912, 469.787304, 258.081845), MAT_Vector3(-123.979767, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_synapse.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_shelter_2")
  Node_AddSon(node16, node101)
  Body_SetCS(node101, MAT_Vector3(3427.094952, 402.488498, 275), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node16, node102)
  Body_SetCS(node102, MAT_Vector3(3272.440524, 434.534489, 275), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_kai2_ent_1")
  Node_AddSon(node16, node103)
  Body_SetCS(node103, MAT_Vector3(3137.794304, 450.572612, 259.986149), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_kai2_ent.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_rohr_small02_1")
  Node_AddSon(node16, node104)
  Body_SetCS(node104, MAT_Vector3(3320.497521, 418.772052, 295.25725), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_rohr_small02_2")
  Node_AddSon(node16, node105)
  Body_SetCS(node105, MAT_Vector3(3322.102076, 393.506606, 295.2572), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node16, node106)
  Body_SetCS(node106, MAT_Vector3(3378.500556, 438.173826, 268.484367), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_chimney1_2_1")
  Node_AddSon(node16, node107)
  Body_SetCS(node107, MAT_Vector3(3382.587453, 306.006608, 257.707053), MAT_Vector3(-22.434083, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_chimney1_2.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ent_dock1_4_2")
  Node_AddSon(node16, node108)
  Body_SetCS(node108, MAT_Vector3(3745.797224, 374.736893, 336.78928), MAT_Vector3(-179.690842, 0, 0))
  Node_ParseIniFile(node108, "osd/ent/ent_dock1_4.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ent_wblock3a_01_2")
  Node_AddSon(node16, node109)
  Body_SetCS(node109, MAT_Vector3(3470.406872, 659.730255, 283.325456), MAT_Vector3(-43.750772, 0, 0))
  Node_ParseIniFile(node109, "osd/ent/ent_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ent_wblock3b_03_1")
  Node_AddSon(node16, node110)
  Body_SetCS(node110, MAT_Vector3(3621.761676, 675.012172, 318.568231), MAT_Vector3(-43.694449, 0, 0))
  Node_ParseIniFile(node110, "osd/ent/ent_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_pole2_3")
  Node_AddSon(node16, node111)
  Body_SetCS(node111, MAT_Vector3(3301, 385, 292), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_pole2_4")
  Node_AddSon(node16, node112)
  Body_SetCS(node112, MAT_Vector3(3243, 385, 292), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_pole2_5")
  Node_AddSon(node16, node113)
  Body_SetCS(node113, MAT_Vector3(3243, 483, 292), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_pole2_6")
  Node_AddSon(node16, node114)
  Body_SetCS(node114, MAT_Vector3(3300, 483, 292), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_tower_1")
  Node_AddSon(node16, node115)
  Body_SetCS(node115, MAT_Vector3(3511.633523, 428.037272, 263.867235), MAT_Vector3(-21.386834, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_tower_2")
  Node_AddSon(node16, node116)
  Body_SetCS(node116, MAT_Vector3(3509.628809, 396.756318, 263.8672), MAT_Vector3(-117.613539, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "gen_tank_sml_1")
  Node_AddSon(node16, node117)
  Body_SetCS(node117, MAT_Vector3(3466.613695, 331.009996, 263.341098), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "des_parabolic_1")
  Node_AddSon(node16, node118)
  Body_SetCS(node118, MAT_Vector3(3266.411465, 413.324579, 315.324781), MAT_Vector3(53.048414, 0, 0))
  Node_ParseIniFile(node118, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node118, 5)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "des_parabolic_2")
  Node_AddSon(node16, node119)
  Body_SetCS(node119, MAT_Vector3(3279.841154, 456.972601, 315.3248), MAT_Vector3(34.220587, 0, 0))
  Node_ParseIniFile(node119, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node119, 5)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "des_parabolic_3")
  Node_AddSon(node16, node120)
  Body_SetCS(node120, MAT_Vector3(3268.089615, 437.946548, 315.3248), MAT_Vector3(49.248567, 0, 0))
  Node_ParseIniFile(node120, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node120, 5)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "des_parabolic_4")
  Node_AddSon(node16, node121)
  Body_SetCS(node121, MAT_Vector3(3412.464159, 394.018704, 315.3248), MAT_Vector3(41.776524, 0, 0))
  Node_ParseIniFile(node121, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node121, 5)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "des_parabolic_5")
  Node_AddSon(node16, node122)
  Body_SetCS(node122, MAT_Vector3(3433.243326, 395.62869, 315.3248), MAT_Vector3(23.726906, 0, 0))
  Node_ParseIniFile(node122, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node122, 5)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "des_parabolic_6")
  Node_AddSon(node16, node123)
  Body_SetCS(node123, MAT_Vector3(3447.22129, 409.533975, 315.3248), MAT_Vector3(18.789019, 0, 0))
  Node_ParseIniFile(node123, "osd/des/des_parabolic.osd")
  Body_SetFriendOrFoeID(node123, 5)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Directory", "DIR_GateTowers")
  Node_AddSon(node16, node124)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "Gate_turret_medium_1")
  Node_AddSon(node124, node125)
  Body_SetCS(node125, MAT_Vector3(2489.08643, 473.664595, 382.609766), MAT_Vector3(-101.063899, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "Gate_turret_medium_2")
  Node_AddSon(node124, node126)
  Body_SetCS(node126, MAT_Vector3(2478.44072, 574.455588, 384.332372), MAT_Vector3(-104.366409, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "Gate_turret_medium_3")
  Node_AddSon(node124, node127)
  Body_SetCS(node127, MAT_Vector3(2572.925474, 623.81867, 382.615749), MAT_Vector3(140.306592, 0, 0))
  Node_ParseIniFile(node127, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "Gate_turret_medium_4")
  Node_AddSon(node124, node128)
  Body_SetCS(node128, MAT_Vector3(2458.594176, 626.720984, 380.531278), MAT_Vector3(-35.98006, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "Gate_turret_medium_5")
  Node_AddSon(node124, node129)
  Body_SetCS(node129, MAT_Vector3(2550.318017, 668.849835, 382.370517), MAT_Vector3(109.731601, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "Gate_turret_medium_6")
  Node_AddSon(node124, node130)
  Body_SetCS(node130, MAT_Vector3(2510.064313, 750.281436, 380.490519), MAT_Vector3(150.015721, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "Gate_turret_medium_7")
  Node_AddSon(node124, node131)
  Body_SetCS(node131, MAT_Vector3(2650.725311, 528.520034, 382.309294), MAT_Vector3(157.579458, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "Gate_turret_medium_9")
  Node_AddSon(node124, node132)
  Body_SetCS(node132, MAT_Vector3(2396.901985, 846.154032, 375.799766), MAT_Vector3(-156.952441, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "Gate_torp_maneater_1")
  Node_AddSon(node124, node133)
  Body_SetCS(node133, MAT_Vector3(2490.288072, 497.694447, 383.10268), MAT_Vector3(-104.999981, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "Gate_torp_maneater_2")
  Node_AddSon(node124, node134)
  Body_SetCS(node134, MAT_Vector3(2470.913199, 595.706459, 383.692039), MAT_Vector3(-89.434682, 0, 0))
  Node_ParseIniFile(node134, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "Gate_torp_maneater_3")
  Node_AddSon(node124, node135)
  Body_SetCS(node135, MAT_Vector3(2557.796158, 642.125325, 380.258794), MAT_Vector3(142.91339, 0, 0))
  Node_ParseIniFile(node135, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "Gate_torp_maneater_4")
  Node_AddSon(node124, node136)
  Body_SetCS(node136, MAT_Vector3(2625.937324, 526.91003, 383.403152), MAT_Vector3(155.013231, 0, 0))
  Node_ParseIniFile(node136, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "Gate_torp_maneater_5")
  Node_AddSon(node124, node137)
  Body_SetCS(node137, MAT_Vector3(2379.570534, 783.514905, 381.737749), MAT_Vector3(83.942433, 0, 0))
  Node_ParseIniFile(node137, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "Gate_torp_maneater_6")
  Node_AddSon(node124, node138)
  Body_SetCS(node138, MAT_Vector3(2526.401456, 579.754716, 381.188569), MAT_Vector3(-178.322842, 0, 0))
  Node_ParseIniFile(node138, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "Gate_turret_medium_13")
  Node_AddSon(node124, node139)
  Body_SetCS(node139, MAT_Vector3(2574.850686, 491.421228, 322.484294), MAT_Vector3(-149.461088, 0, 0))
  Node_ParseIniFile(node139, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "Gate_turret_medium_15")
  Node_AddSon(node124, node140)
  Body_SetCS(node140, MAT_Vector3(2482.854388, 699.648405, 379.17551), MAT_Vector3(-178.566108, 0, 0))
  Node_ParseIniFile(node140, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "Gate_torp_maneater_7")
  Node_AddSon(node124, node141)
  Body_SetCS(node141, MAT_Vector3(2503.83524, 420.560405, 328.666294), MAT_Vector3(-154.296709, 0, 0))
  Node_ParseIniFile(node141, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "Gate_torp_maneater_8")
  Node_AddSon(node124, node142)
  Body_SetCS(node142, MAT_Vector3(2492.130157, 760.195905, 381.011648), MAT_Vector3(141.978913, 0, 0))
  Node_ParseIniFile(node142, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "Gate_turret_medium_16")
  Node_AddSon(node124, node143)
  Body_SetCS(node143, MAT_Vector3(2376.3657, 800.834948, 383.631125), MAT_Vector3(-60.159553, 0, 0))
  Node_ParseIniFile(node143, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "Gate_turret_medium_17")
  Node_AddSon(node124, node144)
  Body_SetCS(node144, MAT_Vector3(2479.290575, 774.725867, 379.329791), MAT_Vector3(113.773522, 0, 0))
  Node_ParseIniFile(node144, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "Gate_torp_maneater_9")
  Node_AddSon(node124, node145)
  Body_SetCS(node145, MAT_Vector3(2556.881948, 458.561242, 324.846905), MAT_Vector3(-154.2967, 0, 0))
  Node_ParseIniFile(node145, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "Gate_torp_maneater_10")
  Node_AddSon(node124, node146)
  Body_SetCS(node146, MAT_Vector3(2614.099663, 486.542529, 325.989288), MAT_Vector3(15.055036, 0, 0))
  Node_ParseIniFile(node146, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Directory", "DIR_SynapseTowers")
  Node_AddSon(node16, node147)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "Syn_turret_1")
  Node_AddSon(node147, node148)
  Body_SetCS(node148, MAT_Vector3(3201.554814, 451.445063, 304.850524), MAT_Vector3(90.77257, 0, 0))
  Node_ParseIniFile(node148, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "Syn_turret_2")
  Node_AddSon(node147, node149)
  Body_SetCS(node149, MAT_Vector3(3686.313434, 472.982973, 367.373857), MAT_Vector3(90.77257, 0, 0))
  Node_ParseIniFile(node149, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "Syn_turret_3")
  Node_AddSon(node147, node150)
  Body_SetCS(node150, MAT_Vector3(3663.579989, 306.633799, 380.734261), MAT_Vector3(90.77257, 0, 0))
  Node_ParseIniFile(node150, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node150, 0)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "Syn_turret_4")
  Node_AddSon(node147, node151)
  Body_SetCS(node151, MAT_Vector3(3405.329325, 410.997291, 322.25495), MAT_Vector3(-0.043771, 0, 0))
  Node_ParseIniFile(node151, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node151, 0)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "Syn_turret_5")
  Node_AddSon(node147, node152)
  Body_SetCS(node152, MAT_Vector3(3658.963389, 597.788672, 336.231671), MAT_Vector3(137.164831, 0, 0))
  Node_ParseIniFile(node152, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node152, 0)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "Syn_turret_6")
  Node_AddSon(node147, node153)
  Body_SetCS(node153, MAT_Vector3(3430.004181, 665.99333, 296.501696), MAT_Vector3(137.1648, 0, 0))
  Node_ParseIniFile(node153, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "Syn_torptower_1")
  Node_AddSon(node147, node154)
  Body_SetCS(node154, MAT_Vector3(3263.215366, 456.088014, 322.734194), MAT_Vector3(66.248688, 0, 0))
  Node_ParseIniFile(node154, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node154, 0)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Directory", "DIR_CanyonTowers")
  Node_AddSon(node16, node155)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "Can_turret_medium_1")
  Node_AddSon(node155, node156)
  Body_SetCS(node156, MAT_Vector3(3309.689617, 1040.267249, 360.414095), MAT_Vector3(-67.354966, 0, 0))
  Node_ParseIniFile(node156, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node156, 0)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "Can_torp_maneater_1")
  Node_AddSon(node155, node157)
  Body_SetCS(node157, MAT_Vector3(3314.300442, 1020.853168, 366.211427), MAT_Vector3(-65.862449, 0, 0))
  Node_ParseIniFile(node157, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node157, 0)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "Can_turret_medium_2")
  Node_AddSon(node155, node158)
  Body_SetCS(node158, MAT_Vector3(3383.079992, 1159.375348, 360.4141), MAT_Vector3(179.134104, 0, 0))
  Node_ParseIniFile(node158, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node158, 0)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "Can_torp_maneater_2")
  Node_AddSon(node155, node159)
  Body_SetCS(node159, MAT_Vector3(3363.6277, 1165.627793, 364.83111), MAT_Vector3(179.540522, 0, 0))
  Node_ParseIniFile(node159, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node159, 0)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "Can_turret_medium_3")
  Node_AddSon(node155, node160)
  Body_SetCS(node160, MAT_Vector3(3271.971888, 1264.439727, 360.4141), MAT_Vector3(-164.509466, 0, 0))
  Node_ParseIniFile(node160, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node160, 0)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "Can_turret_medium_4")
  Node_AddSon(node155, node161)
  Body_SetCS(node161, MAT_Vector3(3150.593035, 1178.843474, 360.4141), MAT_Vector3(-38.198527, 0, 0))
  Node_ParseIniFile(node161, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node161, 0)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "Can_torp_maneater_3")
  Node_AddSon(node155, node162)
  Body_SetCS(node162, MAT_Vector3(3057.732057, 1307.683662, 364.023798), MAT_Vector3(179.5405, 0, 0))
  Node_ParseIniFile(node162, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node162, 0)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "Can_torp_maneater_4")
  Node_AddSon(node155, node163)
  Body_SetCS(node163, MAT_Vector3(2871.954762, 1272.303835, 364.8311), MAT_Vector3(-103.118281, 0, 0))
  Node_ParseIniFile(node163, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node163, 0)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "Can_torp_maneater_5")
  Node_AddSon(node155, node164)
  Body_SetCS(node164, MAT_Vector3(3251.941064, 1269.004998, 363.920775), MAT_Vector3(-171.069719, 0, 0))
  Node_ParseIniFile(node164, "osd/gen/gen_torptower_maneater.osd")
  Body_SetFriendOrFoeID(node164, 0)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "Can_turret_medium_5")
  Node_AddSon(node155, node165)
  Body_SetCS(node165, MAT_Vector3(2978.402357, 1187.85074, 360.4141), MAT_Vector3(0.233324, 0, 0))
  Node_ParseIniFile(node165, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node165, 0)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "Can_turret_medium_6")
  Node_AddSon(node155, node166)
  Body_SetCS(node166, MAT_Vector3(2849.298378, 1269.259215, 360.4141), MAT_Vector3(121.431896, 0, 0))
  Node_ParseIniFile(node166, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node166, 0)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "Can_turret_medium_7")
  Node_AddSon(node155, node167)
  Body_SetCS(node167, MAT_Vector3(2940.437868, 1188.578661, 360.4141), MAT_Vector3(18.231656, 0, 0))
  Node_ParseIniFile(node167, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "Can_turret_medium_8")
  Node_AddSon(node155, node168)
  Body_SetCS(node168, MAT_Vector3(3120.097827, 1188.955958, 360.4141), MAT_Vector3(18.23166, 0, 0))
  Node_ParseIniFile(node168, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "Can_turret_medium_9")
  Node_AddSon(node155, node169)
  Body_SetCS(node169, MAT_Vector3(3125.881448, 1301.470339, 352.277199), MAT_Vector3(-161.25868, 0, 0))
  Node_ParseIniFile(node169, "osd/gen/gen_turret_medium.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "des_trafo_01_1")
  Node_AddSon(node16, node170)
  Body_SetCS(node170, MAT_Vector3(2581.829042, 1246.799645, 306.461887), MAT_Vector3(-89.608672, 0, 0))
  Node_ParseIniFile(node170, "osd/des/des_trafo_01.osd")
  Body_SetFriendOrFoeID(node170, 5)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "des_trafo_01_2")
  Node_AddSon(node16, node171)
  Body_SetCS(node171, MAT_Vector3(2582.024223, 1211.738975, 306.4619), MAT_Vector3(90.295564, 0, 0))
  Node_ParseIniFile(node171, "osd/des/des_trafo_01.osd")
  Body_SetFriendOrFoeID(node171, 5)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "des_trafo_01_3")
  Node_AddSon(node16, node172)
  Body_SetCS(node172, MAT_Vector3(2581.918656, 1229.669851, 306.4619), MAT_Vector3(-179.738844, 0, 0))
  Node_ParseIniFile(node172, "osd/des/des_trafo_01.osd")
  Body_SetFriendOrFoeID(node172, 5)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "gen_starfound_1")
  Node_AddSon(node16, node173)
  Body_SetCS(node173, MAT_Vector3(2404.238905, 1408.18457, 342.013264), MAT_Vector3(-42.678775, 0, 0))
  Node_ParseIniFile(node173, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "gen_starfound_2")
  Node_AddSon(node16, node174)
  Body_SetCS(node174, MAT_Vector3(2361.395864, 1427.134849, 342.0133), MAT_Vector3(-42.67878, 0, 0))
  Node_ParseIniFile(node174, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "gen_torptower_3")
  Node_AddSon(node16, node175)
  Body_SetCS(node175, MAT_Vector3(2372.696821, 1723.805037, 360.857014), MAT_Vector3(131.489154, 0, 0))
  Node_ParseIniFile(node175, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "gen_torptower_4")
  Node_AddSon(node16, node176)
  Body_SetCS(node176, MAT_Vector3(2064.69956, 2078.723925, 361.401347), MAT_Vector3(137.806073, 0, 0))
  Node_ParseIniFile(node176, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_generic", "gen_torptower_5")
  Node_AddSon(node16, node177)
  Body_SetCS(node177, MAT_Vector3(1658.74666, 1867.949464, 275.920429), MAT_Vector3(-90.845597, 0, 0))
  Node_ParseIniFile(node177, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node16, node178)
  Body_SetCS(node178, MAT_Vector3(2286.351553, 1428.532007, 331.628067), MAT_Vector3(129.116137, 0, 0))
  Node_ParseIniFile(node178, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_generic", "gen_turret_2")
  Node_AddSon(node16, node179)
  Body_SetCS(node179, MAT_Vector3(2027.619183, 1541.753062, 310.873383), MAT_Vector3(-179.917685, 0, 0))
  Node_ParseIniFile(node179, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node179, 0)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node16, node180)
  Body_SetCS(node180, MAT_Vector3(1916.130072, 1541.752962, 310.8734), MAT_Vector3(-179.9177, 0, 0))
  Node_ParseIniFile(node180, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node16, node181)
  Body_SetCS(node181, MAT_Vector3(2333.368136, 1764.382151, 362.875533), MAT_Vector3(131.968293, 0, 0))
  Node_ParseIniFile(node181, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node181, 0)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node16, node182)
  Body_SetCS(node182, MAT_Vector3(2410.768398, 1681.768103, 364.553017), MAT_Vector3(131.9683, 0, 0))
  Node_ParseIniFile(node182, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node182, 0)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_generic", "gen_turret_6")
  Node_AddSon(node16, node183)
  Body_SetCS(node183, MAT_Vector3(2022.396625, 2115.216885, 364.608684), MAT_Vector3(139.707387, 0, 0))
  Node_ParseIniFile(node183, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node183, 0)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_generic", "gen_turret_7")
  Node_AddSon(node16, node184)
  Body_SetCS(node184, MAT_Vector3(2106.335715, 2040.062569, 364.6087), MAT_Vector3(129.730626, 0, 0))
  Node_ParseIniFile(node184, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node184, 0)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_generic", "gen_turret_8")
  Node_AddSon(node16, node185)
  Body_SetCS(node185, MAT_Vector3(1635.55227, 2243.140799, 302.128541), MAT_Vector3(-146.317241, 0, 0))
  Node_ParseIniFile(node185, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node185, 0)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_generic", "gen_turret_9")
  Node_AddSon(node16, node186)
  Body_SetCS(node186, MAT_Vector3(1549.332698, 2187.913516, 302.1285), MAT_Vector3(-146.3172, 0, 0))
  Node_ParseIniFile(node186, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node186, 0)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_generic", "gen_turret_10")
  Node_AddSon(node16, node187)
  Body_SetCS(node187, MAT_Vector3(1659.14592, 1922.102962, 274.917442), MAT_Vector3(-90.116837, 0, 0))
  Node_ParseIniFile(node187, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node187, 0)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_generic", "gen_turret_11")
  Node_AddSon(node16, node188)
  Body_SetCS(node188, MAT_Vector3(1658.866205, 1811.583994, 273.917036), MAT_Vector3(-90.11684, 0, 0))
  Node_ParseIniFile(node188, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node188, 0)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_generic", "gen_metalblock1_1")
  Node_AddSon(node16, node189)
  Body_SetCS(node189, MAT_Vector3(2913.517608, 1336.567988, 322.326704), MAT_Vector3(89.953399, 0, 0))
  Node_ParseIniFile(node189, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node189, 0)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node16, node190)
  Body_SetCS(node190, MAT_Vector3(3240.320748, 1359.284706, 377.256436), MAT_Vector3(0.0053, 0, 0))
  Node_ParseIniFile(node190, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node190, 0)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_generic", "gen_shelter_4")
  Node_AddSon(node16, node191)
  Body_SetCS(node191, MAT_Vector3(3357.872052, 1248.655168, 330.65191), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node191, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node191, 0)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_generic", "gen_pole2_13")
  Node_AddSon(node16, node192)
  Body_SetCS(node192, MAT_Vector3(3342.940786, 1219.893836, 373.618985), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node192, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node192, 0)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_generic", "gen_pole2_14")
  Node_AddSon(node16, node193)
  Body_SetCS(node193, MAT_Vector3(3372.966408, 1218.943829, 373.619), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node193, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node193, 0)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_generic", "gen_metalblock1_2")
  Node_AddSon(node16, node194)
  Body_SetCS(node194, MAT_Vector3(3147.291788, 1098.336611, 378.115342), MAT_Vector3(-128.848573, 0, 0))
  Node_ParseIniFile(node194, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node194, 0)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node16, node195)
  Body_SetCS(node195, MAT_Vector3(3000.453015, 1088.887403, 376.172387), MAT_Vector3(-179.783066, 0, 0))
  Node_ParseIniFile(node195, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node195, 0)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_generic", "gen_tower_3")
  Node_AddSon(node16, node196)
  Body_SetCS(node196, MAT_Vector3(3039.218108, 1329.766426, 378.666696), MAT_Vector3(-27.46755, 0, 0))
  Node_ParseIniFile(node196, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node196, 0)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_generic", "gen_tower_4")
  Node_AddSon(node16, node197)
  Body_SetCS(node197, MAT_Vector3(2622.789304, 1309.371729, 286.817544), MAT_Vector3(-55.223414, 0, 0))
  Node_ParseIniFile(node197, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node197, 0)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_generic", "gen_tower_5")
  Node_AddSon(node16, node198)
  Body_SetCS(node198, MAT_Vector3(2517.586578, 1311.050587, 274.402647), MAT_Vector3(-98.004341, 0, 0))
  Node_ParseIniFile(node198, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node198, 0)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_generic", "gen_industry3_1")
  Node_AddSon(node16, node199)
  Body_SetCS(node199, MAT_Vector3(2598.065938, 1459.561248, 351.287148), MAT_Vector3(-89.907445, 0, 0))
  Node_ParseIniFile(node199, "osd/gen/gen_industry3.osd")
  Body_SetFriendOrFoeID(node199, 0)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_generic", "gen_metalblock1_3")
  Node_AddSon(node16, node200)
  Body_SetCS(node200, MAT_Vector3(2433.537857, 538.563957, 392.145414), MAT_Vector3(-158.790898, -0.009341, -0.001785))
  Node_ParseIniFile(node200, "osd/gen/gen_metalblock1.osd")
  Body_SetFriendOrFoeID(node200, 0)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node16, node201)
  Node_ParseIniFile(node201, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node201, "map/2H1/Terrain/coral_01.tga")
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node16, node202)
  Node_ParseIniFile(node202, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node202, "map/2H1/Terrain/grass_01.tga")
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node16, node203)
  Node_ParseIniFile(node203, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node203, "map/2H1/Terrain/stone_01.tga")
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_fx_plant", "fungus_02_1")
  Node_AddSon(node16, node204)
  Node_ParseIniFile(node204, "osd/fx_plant/fungus_02.osd")
  FX_Plant_SetMap(node204, "map/2H1/Terrain/fungus_02.tga")
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Directory", "Dir_Plants")
  Node_AddSon(node16, node205)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node205, node206)
  Body_SetCS(node206, MAT_Vector3(3318.081336, 1082.737662, 204.222285), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node206, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node206, 0)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node205, node207)
  Body_SetCS(node207, MAT_Vector3(3439.195251, 1179.135057, 219.66773), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node207, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node207, 0)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_fungus", "fungus_02_3")
  Node_AddSon(node205, node208)
  Body_SetCS(node208, MAT_Vector3(3155.771174, 1253.286582, 220.887073), MAT_Vector3(-66.495539, 0, 0))
  Node_ParseIniFile(node208, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node208, 0)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_fungus", "fungus_02_4")
  Node_AddSon(node205, node209)
  Body_SetCS(node209, MAT_Vector3(2975.335483, 1238.456684, 230.642046), MAT_Vector3(36.380253, 0, 0))
  Node_ParseIniFile(node209, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node209, 0)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node16, node210)
  Node_ParseIniFile(node210, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_fx_sky", "fx_sky_06_1")
  Node_AddSon(node16, node211)
  Node_ParseIniFile(node211, "osd/fx_sky/fx_sky_06.osd")
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node16, node212)
  Node_ParseIniFile(node212, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node213)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node213, node214)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node213, node215)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node215, node216)
  Body_SetCS(node216, MAT_Vector3(3401.723754, 981.410654, 355), MAT_Vector3())
  Stream_SetBoxExtension(node216, 150, 200, 25)
  Stream_SetCurrentDirection(node216, MAT_Vector3(180, 10, 0))
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_FX_Stream", "Stream_1b")
  Node_AddSon(node215, node217)
  Body_SetCS(node217, MAT_Vector3(3402.873639, 892.888487, 446.93219), MAT_Vector3())
  Stream_SetBoxExtension(node217, 150, 100, 150)
  Stream_SetCurrentDirection(node217, MAT_Vector3(180, 50, 0))
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_FX_Stream", "Stream_2")
  Node_AddSon(node215, node218)
  Body_SetCS(node218, MAT_Vector3(3379.395483, 1182.146347, 355), MAT_Vector3())
  Stream_SetBoxExtension(node218, 150, 150, 25)
  Stream_SetCurrentDirection(node218, MAT_Vector3(-130, 10, 0))
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_FX_Stream", "Stream_3")
  Node_AddSon(node215, node219)
  Body_SetCS(node219, MAT_Vector3(3098.333808, 1282.524997, 355), MAT_Vector3())
  Stream_SetBoxExtension(node219, 420, 125, 25)
  Stream_SetCurrentDirection(node219, MAT_Vector3(-90, 10, 0))
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_PatrolArea", "Syn_Patrol_Area")
  Node_AddSon(node215, node220)
  PatrolArea_SetPosition(node220, MAT_Vector3(3254.058324, 532.085008, 359.273864))
  PatrolArea_SetRadius(node220, 150)
  PatrolArea_SetMinZ(node220, -20)
  PatrolArea_SetMaxZ(node220, 20)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_PatrolArea", "Syn_Trg_Area")
  Node_AddSon(node215, node221)
  PatrolArea_SetPosition(node221, MAT_Vector3(3388.770623, 479.73933, 296.88848))
  PatrolArea_SetRadius(node221, 350)
  PatrolArea_SetMinZ(node221, -75)
  PatrolArea_SetMaxZ(node221, 200)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_PatrolArea", "Syn_Follow_Area")
  Node_AddSon(node215, node222)
  PatrolArea_SetPosition(node222, MAT_Vector3(3389.951881, 480.920229, 296.8885))
  PatrolArea_SetRadius(node222, 450)
  PatrolArea_SetMinZ(node222, -75)
  PatrolArea_SetMaxZ(node222, 200)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_PatrolArea", "FakeFight_PatrolArea")
  Node_AddSon(node215, node223)
  PatrolArea_SetPosition(node223, MAT_Vector3(1595.436566, 721.368502, 300))
  PatrolArea_SetRadius(node223, 300)
  PatrolArea_SetMinZ(node223, -50)
  PatrolArea_SetMaxZ(node223, 50)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_PatrolArea", "FakeFight_PatrolAreaWings")
  Node_AddSon(node215, node224)
  PatrolArea_SetPosition(node224, MAT_Vector3(1754.428837, 841.348987, 300))
  PatrolArea_SetRadius(node224, 300)
  PatrolArea_SetMinZ(node224, -50)
  PatrolArea_SetMaxZ(node224, 50)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_PatrolArea", "FakeFight_TriggerArea")
  Node_AddSon(node215, node225)
  PatrolArea_SetPosition(node225, MAT_Vector3(1752.067085, 843.710895, 300))
  PatrolArea_SetRadius(node225, 200)
  PatrolArea_SetMinZ(node225, -100)
  PatrolArea_SetMaxZ(node225, 200)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_PatrolArea", "FakeFight_FollowArea")
  Node_AddSon(node215, node226)
  PatrolArea_SetPosition(node226, MAT_Vector3(1710.735, 755.1412, 300))
  PatrolArea_SetRadius(node226, 550)
  PatrolArea_SetMinZ(node226, -100)
  PatrolArea_SetMaxZ(node226, 200)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Path", "DeGrange_DockOn_Path")
  Node_AddSon(node215, node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node227, node228)
  Position_SetPosition(node228, MAT_Vector3(2213.95954, 1163.263806, 326.357281))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node227, node229)
  Position_SetPosition(node229, MAT_Vector3(2118.230074, 1323.717295, 317.875329))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node227, node230)
  Position_SetPosition(node230, MAT_Vector3(1988.327849, 1473.695318, 361.017352))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node227, node231)
  Position_SetPosition(node231, MAT_Vector3(1892.672574, 1746.489991, 350.000295))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node227, node232)
  Position_SetPosition(node232, MAT_Vector3(1830.126222, 1863.202645, 364.418367))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_PatrolArea", "Liberty_PatrolArea")
  Node_AddSon(node215, node233)
  PatrolArea_SetPosition(node233, MAT_Vector3(1800.485187, 2010.469061, 385.386136))
  PatrolArea_SetRadius(node233, 200)
  PatrolArea_SetMinZ(node233, -50)
  PatrolArea_SetMaxZ(node233, 50)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_PatrolArea", "Liberty_TriggerArea")
  Node_AddSon(node215, node234)
  PatrolArea_SetPosition(node234, MAT_Vector3(1800.877536, 2007.575384, 298.95443))
  PatrolArea_SetRadius(node234, 450)
  PatrolArea_SetMinZ(node234, -100)
  PatrolArea_SetMaxZ(node234, 200)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_PatrolArea", "Liberty_FollowArea")
  Node_AddSon(node215, node235)
  PatrolArea_SetPosition(node235, MAT_Vector3(1802.370174, 2009.147072, 298.064706))
  PatrolArea_SetRadius(node235, 2500)
  PatrolArea_SetMinZ(node235, -100)
  PatrolArea_SetMaxZ(node235, 200)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_PatrolArea", "Overall_FollowArea")
  Node_AddSon(node215, node236)
  PatrolArea_SetPosition(node236, MAT_Vector3(1802.37, 2009.147, 298.0647))
  PatrolArea_SetRadius(node236, 550)
  PatrolArea_SetMinZ(node236, -100)
  PatrolArea_SetMaxZ(node236, 200)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Path", "HarperToLiberty_Path")
  Node_AddSon(node215, node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node237, node238)
  Position_SetPosition(node238, MAT_Vector3(1899.937904, 1203.774781, 333.784115))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node237, node239)
  Position_SetPosition(node239, MAT_Vector3(1922.183377, 1609.96065, 345.81068))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Path", "PicoToLiberty_Path")
  Node_AddSon(node215, node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node240, node241)
  Position_SetPosition(node241, MAT_Vector3(1857.094866, 1184.001246, 333.7841))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node240, node242)
  Position_SetPosition(node242, MAT_Vector3(1792.829691, 1616.552251, 345.8107))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Path", "BonhamToLiberty_Path")
  Node_AddSon(node215, node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node243, node244)
  Position_SetPosition(node244, MAT_Vector3(1962.555023, 1184.824906, 333.7841))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node243, node245)
  Position_SetPosition(node245, MAT_Vector3(1987.271917, 1642.917006, 345.8107))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Path", "BomberToLiberty_Path")
  Node_AddSon(node215, node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node246, node247)
  Position_SetPosition(node247, MAT_Vector3(1933.718275, 1184.001094, 333.7841))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node246, node248)
  Position_SetPosition(node248, MAT_Vector3(1927.950737, 1691.527479, 345.8107))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Path", "DeGrange_OutPath")
  Node_AddSon(node215, node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node249, node250)
  Position_SetPosition(node250, MAT_Vector3(1655.015121, 1898.391021, 372.3255))
  Position_SetRadius(node250, 10)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node249, node251)
  Position_SetPosition(node251, MAT_Vector3(1737.452681, 1899.744536, 372.718509))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node249, node252)
  Position_SetPosition(node252, MAT_Vector3(1763.285143, 1972.372197, 430.748315))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Path", "CapeFear_Path")
  Node_AddSon(node215, node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node253, node254)
  Position_SetPosition(node254, MAT_Vector3(1831.792883, 1191.282971, 340))
  Position_SetRadius(node254, 15)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node253, node255)
  Position_SetPosition(node255, MAT_Vector3(1828.99543, 1493.59987, 340))
  Position_SetRadius(node255, 15)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node253, node256)
  Position_SetPosition(node256, MAT_Vector3(1774.065693, 1693.431684, 340))
  Position_SetRadius(node256, 15)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node253, node257)
  Position_SetPosition(node257, MAT_Vector3(1727.827109, 1873.555897, 340))
  Position_SetRadius(node257, 15)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Path", "CFGroup_Bomber1_Path")
  Node_AddSon(node215, node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node258, node259)
  Position_SetPosition(node259, MAT_Vector3(1904.832677, 1104.74196, 340))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node258, node260)
  Position_SetPosition(node260, MAT_Vector3(1909.571136, 1497.534225, 340))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node258, node261)
  Position_SetPosition(node261, MAT_Vector3(1850.092426, 1701.172509, 340))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Path", "CFGroup_Bomber2_Path")
  Node_AddSon(node215, node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node262, node263)
  Position_SetPosition(node263, MAT_Vector3(1757.648731, 1102.725777, 340))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node262, node264)
  Position_SetPosition(node264, MAT_Vector3(1756.338062, 1498.542111, 340))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node262, node265)
  Position_SetPosition(node265, MAT_Vector3(1709.964511, 1681.010771, 340))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Path", "CFGroup_Scout1_Path")
  Node_AddSon(node215, node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node266, node267)
  Position_SetPosition(node267, MAT_Vector3(1713.292097, 1103.734111, 340))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node266, node268)
  Position_SetPosition(node268, MAT_Vector3(1710.972986, 1497.533889, 340))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node266, node269)
  Position_SetPosition(node269, MAT_Vector3(1665.608097, 1670.929886, 340))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Path", "CFGroup_Scout2_Path")
  Node_AddSon(node215, node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node270, node271)
  Position_SetPosition(node271, MAT_Vector3(1680.024323, 1101.717777, 340))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node270, node272)
  Position_SetPosition(node272, MAT_Vector3(1676.697211, 1495.517777, 340))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node270, node273)
  Position_SetPosition(node273, MAT_Vector3(1630.3241, 1661.856997, 340))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Path", "CFGroup_Scout3_Path")
  Node_AddSon(node215, node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node274, node275)
  Position_SetPosition(node275, MAT_Vector3(1682.040223, 1042.239426, 340))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node274, node276)
  Position_SetPosition(node276, MAT_Vector3(1676.697, 1440.071871, 340))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node274, node277)
  Position_SetPosition(node277, MAT_Vector3(1611.169883, 1621.532543, 340))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Path", "CFGroup_Scout4_Path")
  Node_AddSon(node215, node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node278, node279)
  Position_SetPosition(node279, MAT_Vector3(1717.3239, 1042.239, 340))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node278, node280)
  Position_SetPosition(node280, MAT_Vector3(1712.989012, 1434.023331, 340))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node278, node281)
  Position_SetPosition(node281, MAT_Vector3(1657.543126, 1626.573557, 340))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Path", "CFGroup_Scout5_Path")
  Node_AddSon(node215, node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node282, node283)
  Position_SetPosition(node283, MAT_Vector3(1955.238298, 1097.685129, 340))
  Position_SetRadius(node283, 5)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node282, node284)
  Position_SetPosition(node284, MAT_Vector3(1948.887075, 1491.485352, 340))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node282, node285)
  Position_SetPosition(node285, MAT_Vector3(1885.376183, 1706.214803, 340))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Path", "CFGroup_Scout6_Path")
  Node_AddSon(node215, node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node286, node287)
  Position_SetPosition(node287, MAT_Vector3(1998.586792, 1098.693111, 340))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node286, node288)
  Position_SetPosition(node288, MAT_Vector3(1992.235792, 1487.452554, 340))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node286, node289)
  Position_SetPosition(node289, MAT_Vector3(1926.708569, 1713.27178, 340))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Path", "CFGroup_Scout7_Path")
  Node_AddSon(node215, node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node290, node291)
  Position_SetPosition(node291, MAT_Vector3(1955.238208, 1048.287428, 340))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node290, node292)
  Position_SetPosition(node292, MAT_Vector3(1948.887208, 1445.11232, 340))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node290, node293)
  Position_SetPosition(node293, MAT_Vector3(1879.327763, 1663.87454, 340))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Path", "CFGroup_Scout8_Path")
  Node_AddSon(node215, node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node294, node295)
  Position_SetPosition(node295, MAT_Vector3(1998.586792, 1054.335669, 340))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node294, node296)
  Position_SetPosition(node296, MAT_Vector3(1993.243903, 1436.038997, 340))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node294, node297)
  Position_SetPosition(node297, MAT_Vector3(1911.587566, 1669.923669, 340))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node213, node298)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node213, node299)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Trigger", "SteahlTrigger_1")
  Node_AddSon(node299, node300)
  Body_SetFriendOrFoeID(node300, 0)
  Body_SetCS(node300, MAT_Vector3(3416.244425, 910.157808, 425), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node300, 150, 40, 100)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Trigger", "SteahlTrigger_2")
  Node_AddSon(node299, node301)
  Body_SetFriendOrFoeID(node301, 0)
  Body_SetCS(node301, MAT_Vector3(2514.952719, 606.588484, 452.68265), MAT_Vector3(0.150215, 0, 0))
  Trigger_SetBoxMode(node301, 150, 40, 100)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node213, node302)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node302, node303)
  Body_SetCS(node303, MAT_Vector3(2787.186626, 29.581496, 300), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node303, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node303, 2)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_vessel", "DeGrange_c2_1")
  Node_AddSon(node302, node304)
  Body_SetCS(node304, MAT_Vector3(2750.319058, 16.154104, 300), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node304, "osd/wng/wng_degrange_c2.osd")
  Body_SetFriendOrFoeID(node304, 6)
  Body_SetNameKey(node304, -1)
  Body_SetCargoKey(node304, -1, 0)
  Body_SetCargoKey(node304, -1, 1)
  Body_SetCargoKey(node304, -1, 2)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_vessel", "Harper_c2_1")
  Node_AddSon(node302, node305)
  Body_SetCS(node305, MAT_Vector3(2804.352139, 16.728926, 300), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node305, "osd/wng/wng_harper_c2.osd")
  Body_SetFriendOrFoeID(node305, 3)
  Body_SetNameKey(node305, -1)
  Body_SetCargoKey(node305, -1, 0)
  Body_SetCargoKey(node305, -1, 1)
  Body_SetCargoKey(node305, -1, 2)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_vessel", "Pico_c2_1")
  Node_AddSon(node302, node306)
  Body_SetCS(node306, MAT_Vector3(2829.0694, 16.728925, 300), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node306, "osd/wng/wng_pico_c2.osd")
  Body_SetFriendOrFoeID(node306, 3)
  Body_SetNameKey(node306, -1)
  Body_SetCargoKey(node306, -1, 0)
  Body_SetCargoKey(node306, -1, 1)
  Body_SetCargoKey(node306, -1, 2)
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_vessel", "Bonham_c2_1")
  Node_AddSon(node302, node307)
  Body_SetCS(node307, MAT_Vector3(2770.178461, 15.956805, 300), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node307, "osd/wng/wng_bonham_c2.osd")
  Body_SetFriendOrFoeID(node307, 3)
  Body_SetNameKey(node307, -1)
  Body_SetCargoKey(node307, -1, 0)
  Body_SetCargoKey(node307, -1, 1)
  Body_SetCargoKey(node307, -1, 2)
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Directory", "FakeFightUnits_Directory")
  Node_AddSon(node302, node308)
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("nod_vessel", "fake_scout_1_d")
  Node_AddSon(node308, node309)
  Body_SetCS(node309, MAT_Vector3(1368.867624, 659.754236, 316.228498), MAT_Vector3(-47.979718, 0, 0))
  Node_ParseIniFile(node309, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node309, 0)
  Body_SetNameKey(node309, -1)
  Body_SetCargoKey(node309, -1, 0)
  Body_SetCargoKey(node309, -1, 1)
  Body_SetCargoKey(node309, -1, 2)
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("nod_vessel", "fake_scout_2_d")
  Node_AddSon(node308, node310)
  Body_SetCS(node310, MAT_Vector3(1562.073826, 804.596637, 316.228498), MAT_Vector3(-127.255265, 0, 0))
  Node_ParseIniFile(node310, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node310, 0)
  Body_SetNameKey(node310, -1)
  Body_SetCargoKey(node310, -1, 0)
  Body_SetCargoKey(node310, -1, 1)
  Body_SetCargoKey(node310, -1, 2)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("nod_vessel", "fake_scout_3_d")
  Node_AddSon(node308, node311)
  Body_SetCS(node311, MAT_Vector3(1413.742938, 558.194315, 316.228498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node311, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node311, 0)
  Body_SetNameKey(node311, -1)
  Body_SetCargoKey(node311, -1, 0)
  Body_SetCargoKey(node311, -1, 1)
  Body_SetCargoKey(node311, -1, 2)
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("nod_vessel", "fake_scout_4_d")
  Node_AddSon(node308, node312)
  Body_SetCS(node312, MAT_Vector3(1456.366738, 591.83708, 316.228498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node312, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node312, 0)
  Body_SetNameKey(node312, -1)
  Body_SetCargoKey(node312, -1, 0)
  Body_SetCargoKey(node312, -1, 1)
  Body_SetCargoKey(node312, -1, 2)
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("nod_vessel", "fake_bomber_1_d")
  Node_AddSon(node308, node313)
  Body_SetCS(node313, MAT_Vector3(1502.312637, 691.639328, 316.228498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node313, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node313, 0)
  Body_SetNameKey(node313, -1)
  Body_SetCargoKey(node313, -1, 0)
  Body_SetCargoKey(node313, -1, 1)
  Body_SetCargoKey(node313, -1, 2)
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("nod_vessel", "fake_bomber_1")
  Node_AddSon(node308, node314)
  Body_SetCS(node314, MAT_Vector3(1432.637807, 828.627129, 316.228498), MAT_Vector3(-148.138575, 0, 0))
  Node_ParseIniFile(node314, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node314, 0)
  Body_SetNameKey(node314, -1)
  Body_SetCargoKey(node314, -1, 0)
  Body_SetCargoKey(node314, -1, 1)
  Body_SetCargoKey(node314, -1, 2)
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("nod_vessel", "fake_scout_1")
  Node_AddSon(node308, node315)
  Body_SetCS(node315, MAT_Vector3(1408.6078, 702.652252, 316.228498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node315, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node315, 0)
  Body_SetNameKey(node315, -1)
  Body_SetCargoKey(node315, -1, 0)
  Body_SetCargoKey(node315, -1, 1)
  Body_SetCargoKey(node315, -1, 2)
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("nod_vessel", "fake_scout_2")
  Node_AddSon(node308, node316)
  Body_SetCS(node316, MAT_Vector3(1370.982708, 828.627129, 316.228498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node316, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node316, 0)
  Body_SetNameKey(node316, -1)
  Body_SetCargoKey(node316, -1, 0)
  Body_SetCargoKey(node316, -1, 1)
  Body_SetCargoKey(node316, -1, 2)
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("nod_vessel", "fake_scout_3")
  Node_AddSon(node308, node317)
  Body_SetCS(node317, MAT_Vector3(1540.102375, 664.477953, 316.228498), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node317, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node317, 0)
  Body_SetNameKey(node317, -1)
  Body_SetCargoKey(node317, -1, 0)
  Body_SetCargoKey(node317, -1, 1)
  Body_SetCargoKey(node317, -1, 2)
  Node_EnterSimulation(node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("nod_vessel", "syn_scout_1")
  Node_AddSon(node302, node318)
  Body_SetCS(node318, MAT_Vector3(1759.893145, 2488.946489, 467.824798), MAT_Vector3(178.919228, 0, 0))
  Node_ParseIniFile(node318, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node318, 0)
  Body_SetNameKey(node318, -1)
  Body_SetCargoKey(node318, -1, 0)
  Body_SetCargoKey(node318, -1, 1)
  Body_SetCargoKey(node318, -1, 2)
  Node_EnterSimulation(node318)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("nod_vessel", "syn_scout_2")
  Node_AddSon(node302, node319)
  Body_SetCS(node319, MAT_Vector3(1796.968934, 2509.54415, 467.824798), MAT_Vector3(178.729481, 0, 0))
  Node_ParseIniFile(node319, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node319, 0)
  Body_SetNameKey(node319, -1)
  Body_SetCargoKey(node319, -1, 0)
  Body_SetCargoKey(node319, -1, 1)
  Body_SetCargoKey(node319, -1, 2)
  Node_EnterSimulation(node319)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node302, node320)
  Body_SetPosition(node320, MAT_Vector3(3354.658169, 406.290099, 315.140625))
  WayPoint_SetRadius(node320, 225)
  Node_ParseIniFile(node320, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("nod_waypoint", "nav_waypoint_02")
  Node_AddSon(node302, node321)
  Body_SetPosition(node321, MAT_Vector3(3410.976802, 882.224111, 382.6172))
  WayPoint_SetRadius(node321, 125)
  Node_ParseIniFile(node321, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node321)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("nod_waypoint", "nav_waypoint_03")
  Node_AddSon(node302, node322)
  Body_SetPosition(node322, MAT_Vector3(2582.790403, 1230.637876, 352.3348))
  WayPoint_SetRadius(node322, 180)
  Node_ParseIniFile(node322, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node322)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("nod_waypoint", "nav_waypoint_follow")
  Node_AddSon(node302, node323)
  Body_SetPosition(node323, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node323, 25)
  Node_ParseIniFile(node323, "osd/nav/nav_waypoint_follow.osd")
  Node_EnterSimulation(node323)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Directory", "CapeFearGroup_Directory")
  Node_AddSon(node302, node324)
  Node_EnterSimulation(node324)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("nod_vessel", "ent_capefear_big_1")
  Node_AddSon(node324, node325)
  Body_SetCS(node325, MAT_Vector3(1832.296174, 1095.960844, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node325, "osd/ent/ent_capefear_big.osd")
  Body_SetFriendOrFoeID(node325, 0)
  Body_SetNameKey(node325, -1)
  Body_SetCargoKey(node325, -1, 0)
  Body_SetCargoKey(node325, -1, 1)
  Body_SetCargoKey(node325, -1, 2)
  Node_EnterSimulation(node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("nod_vessel", "ent_bomber_1")
  Node_AddSon(node324, node326)
  Body_SetCS(node326, MAT_Vector3(1754.035801, 934.619666, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node326, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node326, 0)
  Body_SetNameKey(node326, -1)
  Body_SetCargoKey(node326, -1, 0)
  Body_SetCargoKey(node326, -1, 1)
  Body_SetCargoKey(node326, -1, 2)
  Node_EnterSimulation(node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("nod_vessel", "ent_bomber_2")
  Node_AddSon(node324, node327)
  Body_SetCS(node327, MAT_Vector3(1908.547252, 929.772418, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node327, "osd/ent/ent_bomber.osd")
  Body_SetFriendOrFoeID(node327, 0)
  Body_SetNameKey(node327, -1)
  Body_SetCargoKey(node327, -1, 0)
  Body_SetCargoKey(node327, -1, 1)
  Body_SetCargoKey(node327, -1, 2)
  Node_EnterSimulation(node327)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("nod_vessel", "ent_scout_1")
  Node_AddSon(node324, node328)
  Body_SetCS(node328, MAT_Vector3(1718.09253, 1044.221882, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node328, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node328, 0)
  Body_SetNameKey(node328, -1)
  Body_SetCargoKey(node328, -1, 0)
  Body_SetCargoKey(node328, -1, 1)
  Body_SetCargoKey(node328, -1, 2)
  Node_EnterSimulation(node328)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("nod_vessel", "ent_scout_2")
  Node_AddSon(node324, node329)
  Body_SetCS(node329, MAT_Vector3(1682.032634, 1043.397728, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node329, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node329, 0)
  Body_SetNameKey(node329, -1)
  Body_SetCargoKey(node329, -1, 0)
  Body_SetCargoKey(node329, -1, 1)
  Body_SetCargoKey(node329, -1, 2)
  Node_EnterSimulation(node329)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("nod_vessel", "ent_scout_3")
  Node_AddSon(node324, node330)
  Body_SetCS(node330, MAT_Vector3(1683.60354, 999.845557, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node330, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node330, 0)
  Body_SetNameKey(node330, -1)
  Body_SetCargoKey(node330, -1, 0)
  Body_SetCargoKey(node330, -1, 1)
  Body_SetCargoKey(node330, -1, 2)
  Node_EnterSimulation(node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("nod_vessel", "ent_scout_4")
  Node_AddSon(node324, node331)
  Body_SetCS(node331, MAT_Vector3(1717.441733, 998.696117, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node331, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node331, 0)
  Body_SetNameKey(node331, -1)
  Body_SetCargoKey(node331, -1, 0)
  Body_SetCargoKey(node331, -1, 1)
  Body_SetCargoKey(node331, -1, 2)
  Node_EnterSimulation(node331)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("nod_vessel", "ent_scout_5")
  Node_AddSon(node324, node332)
  Body_SetCS(node332, MAT_Vector3(1954.995771, 1048.321863, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node332, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node332, 0)
  Body_SetNameKey(node332, -1)
  Body_SetCargoKey(node332, -1, 0)
  Body_SetCargoKey(node332, -1, 1)
  Body_SetCargoKey(node332, -1, 2)
  Node_EnterSimulation(node332)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("nod_vessel", "ent_scout_6")
  Node_AddSon(node324, node333)
  Body_SetCS(node333, MAT_Vector3(1997.705307, 1060.278038, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node333, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node333, 0)
  Body_SetNameKey(node333, -1)
  Body_SetCargoKey(node333, -1, 0)
  Body_SetCargoKey(node333, -1, 1)
  Body_SetCargoKey(node333, -1, 2)
  Node_EnterSimulation(node333)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("nod_vessel", "ent_scout_7")
  Node_AddSon(node324, node334)
  Body_SetCS(node334, MAT_Vector3(1954.420966, 1008.659341, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node334, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node334, 0)
  Body_SetNameKey(node334, -1)
  Body_SetCargoKey(node334, -1, 0)
  Body_SetCargoKey(node334, -1, 1)
  Body_SetCargoKey(node334, -1, 2)
  Node_EnterSimulation(node334)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("nod_vessel", "ent_scout_8")
  Node_AddSon(node324, node335)
  Body_SetCS(node335, MAT_Vector3(1996.459695, 1014.427167, 340), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node335, "osd/ent/ent_scout.osd")
  Body_SetFriendOrFoeID(node335, 0)
  Body_SetNameKey(node335, -1)
  Body_SetCargoKey(node335, -1, 0)
  Body_SetCargoKey(node335, -1, 1)
  Body_SetCargoKey(node335, -1, 2)
  Node_EnterSimulation(node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Directory", "Mines_Directory")
  Node_AddSon(node302, node336)
  Node_EnterSimulation(node336)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("nod_trash", "des_mine01_1")
  Node_AddSon(node336, node337)
  Body_SetCS(node337, MAT_Vector3(3373.826594, 1003.334665, 367.055288), MAT_Vector3(-35.445271, 5.171243, 5.966152))
  Node_ParseIniFile(node337, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node337, 0)
  Node_EnterSimulation(node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("nod_trash", "des_mine01_3")
  Node_AddSon(node336, node338)
  Body_SetCS(node338, MAT_Vector3(3376.356994, 1101.496148, 360.749817), MAT_Vector3(10.602972, 11.216956, -31.888778))
  Node_ParseIniFile(node338, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node338, 0)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("nod_trash", "des_mine01_4")
  Node_AddSon(node336, node339)
  Body_SetCS(node339, MAT_Vector3(3303.744638, 1107.397085, 356.40098), MAT_Vector3(-6.170662, 0.606781, 32.991109))
  Node_ParseIniFile(node339, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node339, 0)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("nod_trash", "des_mine01_6")
  Node_AddSon(node336, node340)
  Body_SetCS(node340, MAT_Vector3(3270.389123, 1202.021408, 351.742475), MAT_Vector3(-67.909603, -44.220289, 21.38715))
  Node_ParseIniFile(node340, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node340, 0)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("nod_trash", "des_mine01_8")
  Node_AddSon(node336, node341)
  Body_SetCS(node341, MAT_Vector3(3103.126883, 1252.598053, 338.933539), MAT_Vector3(-5.550176, 8.423471, -5.652228))
  Node_ParseIniFile(node341, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node341, 0)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("nod_trash", "des_mine01_9")
  Node_AddSon(node336, node342)
  Body_SetCS(node342, MAT_Vector3(3178.909661, 1226.38306, 349.531254), MAT_Vector3(-2.495693, 6.642067, -3.823373))
  Node_ParseIniFile(node342, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node342, 0)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_trash", "des_mine01_11")
  Node_AddSon(node336, node343)
  Body_SetCS(node343, MAT_Vector3(3045.318691, 1260.542154, 364.864495), MAT_Vector3(-58.680939, -35.653199, 20.144534))
  Node_ParseIniFile(node343, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node343, 0)
  Node_EnterSimulation(node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("nod_trash", "des_mine01_12")
  Node_AddSon(node336, node344)
  Body_SetCS(node344, MAT_Vector3(2968.518526, 1267.420107, 351.543812), MAT_Vector3(-17.54654, -0.974645, 5.163732))
  Node_ParseIniFile(node344, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node344, 0)
  Node_EnterSimulation(node344)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("nod_trash", "des_mine01_13")
  Node_AddSon(node336, node345)
  Body_SetCS(node345, MAT_Vector3(3018.648794, 1234.935896, 355.595729), MAT_Vector3(29.541373, 41.510332, 45.706117))
  Node_ParseIniFile(node345, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node345, 0)
  Node_EnterSimulation(node345)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("nod_trash", "des_mine01_14")
  Node_AddSon(node336, node346)
  Body_SetCS(node346, MAT_Vector3(2945.660245, 1238.14454, 360.622905), MAT_Vector3(-99.135536, -33.599467, 32.545191))
  Node_ParseIniFile(node346, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node346, 0)
  Node_EnterSimulation(node346)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("nod_trash", "des_mine01_15")
  Node_AddSon(node336, node347)
  Body_SetCS(node347, MAT_Vector3(2882.295943, 1229.322158, 356.887237), MAT_Vector3(-63.932967, -21.831245, 53.095201))
  Node_ParseIniFile(node347, "osd/des/des_mine01.osd")
  Body_SetFriendOrFoeID(node347, 0)
  Node_EnterSimulation(node347)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node348)
  Camera_SetBackPlane(node348, 512)
  Node_EnterSimulation(node348)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node349)
  Node_EnterSimulation(node349)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node349, node350)
  Node_EnterSimulation(node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node349, node351)
  Node_EnterSimulation(node351)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("NOD_Position", "MoveTo_1")
  Node_AddSon(node351, node352)
  Position_SetPosition(node352, MAT_Vector3(897.257024, 2553.617576, 380))
  Position_SetRadius(node352, 5)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("NOD_Position", "MoveTo_2")
  Node_AddSon(node351, node353)
  Position_SetPosition(node353, MAT_Vector3(1016.530867, 2246.576362, 380))
  Position_SetRadius(node353, 5)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("NOD_Position", "MoveTo_3")
  Node_AddSon(node351, node354)
  Position_SetPosition(node354, MAT_Vector3(1193.670407, 1915.915774, 380))
  Position_SetRadius(node354, 5)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("NOD_Position", "MoveTo_4")
  Node_AddSon(node351, node355)
  Position_SetPosition(node355, MAT_Vector3(1472.369333, 1729.329158, 380))
  Position_SetRadius(node355, 5)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("NOD_Position", "MoveTo_5")
  Node_AddSon(node351, node356)
  Position_SetPosition(node356, MAT_Vector3(1643.885364, 1675.612358, 380))
  Position_SetRadius(node356, 5)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("NOD_Position", "MoveTo_6")
  Node_AddSon(node351, node357)
  Position_SetPosition(node357, MAT_Vector3(1601.143567, 2206.895077, 331.989735))
  Position_SetRadius(node357, 5)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("NOD_Position", "LookAt_1")
  Node_AddSon(node351, node358)
  Position_SetPosition(node358, MAT_Vector3(1575.014546, 2267.013827, 442.64944))
  Position_SetRadius(node358, 5)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("NOD_Path", "Player_Path")
  Node_AddSon(node351, node359)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node359, node360)
  Position_SetPosition(node360, MAT_Vector3(2788.345063, 50.514521, 300))
  Position_SetRadius(node360, 5)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node359, node361)
  Position_SetPosition(node361, MAT_Vector3(2801.565924, 190.19579, 300))
  Position_SetRadius(node361, 5)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node359, node362)
  Position_SetPosition(node362, MAT_Vector3(2928.73517, 310.02659, 300))
  Position_SetRadius(node362, 5)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node351, node363)
  Position_SetPosition(node363, MAT_Vector3(2792.481066, 193.069891, 276.219786))
  Position_SetRadius(node363, 5)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("NOD_Path", "Player_Path1_1")
  Node_AddSon(node351, node364)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node364, node365)
  Position_SetPosition(node365, MAT_Vector3(3301.819234, 435.570791, 350))
  Position_SetRadius(node365, 5)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node364, node366)
  Position_SetPosition(node366, MAT_Vector3(3200.363511, 455.996264, 350))
  Position_SetRadius(node366, 5)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node364, node367)
  Position_SetPosition(node367, MAT_Vector3(3094.902991, 513.6697, 350))
  Position_SetRadius(node367, 5)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node364, node368)
  Position_SetPosition(node368, MAT_Vector3(2990.418053, 513.43367, 331.274949))
  Position_SetRadius(node368, 5)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node364, node369)
  Position_SetPosition(node369, MAT_Vector3(2871.720602, 459.141592, 350))
  Position_SetRadius(node369, 5)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("NOD_Path", "Wing_Path1_1")
  Node_AddSon(node351, node370)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node370, node371)
  Position_SetPosition(node371, MAT_Vector3(2990.011586, 512.458083, 350))
  Position_SetRadius(node371, 5)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node370, node372)
  Position_SetPosition(node372, MAT_Vector3(2871.924095, 458.542792, 350))
  Position_SetRadius(node372, 5)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("NOD_Position", "LookFrom_1_1")
  Node_AddSon(node351, node373)
  Position_SetPosition(node373, MAT_Vector3(3346.839054, 425.523002, 340))
  Position_SetRadius(node373, 5)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("NOD_Position", "LookFrom_1_2")
  Node_AddSon(node351, node374)
  Position_SetPosition(node374, MAT_Vector3(2877.69258, 425.342676, 340))
  Position_SetRadius(node374, 5)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("NOD_Position", "LookFrom_1_3")
  Node_AddSon(node351, node375)
  Position_SetPosition(node375, MAT_Vector3(2625.508336, 356.336657, 360))
  Position_SetRadius(node375, 5)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("NOD_Position", "LookAt_1_1")
  Node_AddSon(node351, node376)
  Position_SetPosition(node376, MAT_Vector3(2512.642068, 610.515275, 390))
  Position_SetRadius(node376, 5)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("NOD_Position", "LookFrom_1_4")
  Node_AddSon(node351, node377)
  Position_SetPosition(node377, MAT_Vector3(3377.734674, 679.308065, 360))
  Position_SetRadius(node377, 5)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("NOD_Path", "Player_Path1_2")
  Node_AddSon(node351, node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node378, node379)
  Position_SetPosition(node379, MAT_Vector3(3113.968308, 519.609267, 387.334669))
  Position_SetRadius(node379, 5)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node378, node380)
  Position_SetPosition(node380, MAT_Vector3(3241.673514, 589.641356, 388.00136))
  Position_SetRadius(node380, 5)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("NOD_Position", "LookAt_1_2")
  Node_AddSon(node351, node381)
  Position_SetPosition(node381, MAT_Vector3(3415.634067, 933.071246, 377.402911))
  Position_SetRadius(node381, 5)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("NOD_Position", "LookFrom_1_5")
  Node_AddSon(node351, node382)
  Position_SetPosition(node382, MAT_Vector3(3409.043449, 1017.109783, 358.242267))
  Position_SetRadius(node382, 5)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("NOD_Position", "LookFrom_1_6")
  Node_AddSon(node351, node383)
  Position_SetPosition(node383, MAT_Vector3(3250.029822, 1220.614225, 358.2423))
  Position_SetRadius(node383, 5)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("NOD_Position", "LookFrom_1_7")
  Node_AddSon(node351, node384)
  Position_SetPosition(node384, MAT_Vector3(2903.989252, 1228.029757, 346.342163))
  Position_SetRadius(node384, 5)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("NOD_Position", "LookFrom_1_8")
  Node_AddSon(node351, node385)
  Position_SetPosition(node385, MAT_Vector3(2676.590794, 1230.50172, 358.2423))
  Position_SetRadius(node385, 5)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("NOD_Position", "LookAt_1_3")
  Node_AddSon(node351, node386)
  Position_SetPosition(node386, MAT_Vector3(2540.110667, 1221.368402, 310.569874))
  Position_SetRadius(node386, 5)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("NOD_Position", "LookFrom_2")
  Node_AddSon(node351, node387)
  Position_SetPosition(node387, MAT_Vector3(2558.825678, 1155.724615, 344.196681))
  Position_SetRadius(node387, 5)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("NOD_Position", "LookFrom_3")
  Node_AddSon(node351, node388)
  Position_SetPosition(node388, MAT_Vector3(2292.276153, 1025.449513, 399.893357))
  Position_SetRadius(node388, 5)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("NOD_Position", "LookFrom_4")
  Node_AddSon(node351, node389)
  Position_SetPosition(node389, MAT_Vector3(2453.614292, 743.880989, 416.032559))
  Position_SetRadius(node389, 5)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("NOD_Path", "Player_Path4")
  Node_AddSon(node351, node390)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node390, node391)
  Position_SetPosition(node391, MAT_Vector3(2585.842217, 1139.054835, 357.957706))
  Position_SetRadius(node391, 5)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node390, node392)
  Position_SetPosition(node392, MAT_Vector3(2584.692577, 1217.230359, 335.612202))
  Position_SetRadius(node392, 5)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("NOD_Path", "Player_Path5")
  Node_AddSon(node351, node393)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node393, node394)
  Position_SetPosition(node394, MAT_Vector3(2427.191889, 1102.841173, 365.408086))
  Position_SetRadius(node394, 5)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node393, node395)
  Position_SetPosition(node395, MAT_Vector3(2274.289761, 1010.869968, 344.981601))
  Position_SetRadius(node395, 5)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("NOD_Path", "Player_Path6")
  Node_AddSon(node351, node396)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node396, node397)
  Position_SetPosition(node397, MAT_Vector3(2274.845262, 1009.447843, 323.742415))
  Position_SetRadius(node397, 5)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node396, node398)
  Position_SetPosition(node398, MAT_Vector3(2231.158941, 1130.16005, 314.589381))
  Position_SetRadius(node398, 5)
  Game_LoadProgress_Advance(node0)
  node399 = Node_CreateNode("NOD_Path", "Wings_Path1")
  Node_AddSon(node351, node399)
  Game_LoadProgress_Advance(node0)
  node400 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node399, node400)
  Position_SetPosition(node400, MAT_Vector3(2629.836866, 344.581977, 332.555107))
  Position_SetRadius(node400, 5)
  Game_LoadProgress_Advance(node0)
  node401 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node399, node401)
  Position_SetPosition(node401, MAT_Vector3(2534.416741, 557.840209, 429.498333))
  Position_SetRadius(node401, 5)
  Game_LoadProgress_Advance(node0)
  node402 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node399, node402)
  Position_SetPosition(node402, MAT_Vector3(2410.255614, 817.084042, 430))
  Position_SetRadius(node402, 5)
  Game_LoadProgress_Advance(node0)
  node403 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node399, node403)
  Position_SetPosition(node403, MAT_Vector3(2347.600229, 932.048052, 398.952329))
  Position_SetRadius(node403, 5)
  Game_LoadProgress_Advance(node0)
  node404 = Node_CreateNode("NOD_Position", "LookFrom_5")
  Node_AddSon(node351, node404)
  Position_SetPosition(node404, MAT_Vector3(1726.029286, 808.797275, 270))
  Position_SetRadius(node404, 5)
  Game_LoadProgress_Advance(node0)
  node405 = Node_CreateNode("NOD_Position", "LookAt_2")
  Node_AddSon(node351, node405)
  Position_SetPosition(node405, MAT_Vector3(1308.234544, 678.609186, 270))
  Position_SetRadius(node405, 5)
  Game_LoadProgress_Advance(node0)
  node406 = Node_CreateNode("NOD_Position", "LookFrom_6")
  Node_AddSon(node351, node406)
  Position_SetPosition(node406, MAT_Vector3(2085.164053, 1034.389612, 350))
  Position_SetRadius(node406, 5)
  Game_LoadProgress_Advance(node0)
  node407 = Node_CreateNode("NOD_Path", "PicoHarpLisa_Path1")
  Node_AddSon(node351, node407)
  Game_LoadProgress_Advance(node0)
  node408 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node407, node408)
  Position_SetPosition(node408, MAT_Vector3(2230.018404, 1091.31124, 322.723343))
  Position_SetRadius(node408, 15)
  Game_LoadProgress_Advance(node0)
  node409 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node407, node409)
  Position_SetPosition(node409, MAT_Vector3(1966.671166, 981.484813, 278.84718))
  Position_SetRadius(node409, 5)
  Game_LoadProgress_Advance(node0)
  node410 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node407, node410)
  Position_SetPosition(node410, MAT_Vector3(1883.145175, 917.6556, 295.970762))
  Position_SetRadius(node410, 5)
  Game_LoadProgress_Advance(node0)
  node411 = Node_CreateNode("NOD_Path", "DeGrange_DockOn_PathS")
  Node_AddSon(node351, node411)
  Game_LoadProgress_Advance(node0)
  node412 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node411, node412)
  Position_SetPosition(node412, MAT_Vector3(2290.81414, 1053.135879, 314.3888))
  Position_SetRadius(node412, 15)
  Game_LoadProgress_Advance(node0)
  node413 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node411, node413)
  Position_SetPosition(node413, MAT_Vector3(2242.501561, 1136.447099, 326.1875))
  Position_SetRadius(node413, 5)
  Game_LoadProgress_Advance(node0)
  node414 = Node_CreateNode("NOD_Position", "LookFrom_7")
  Node_AddSon(node351, node414)
  Position_SetPosition(node414, MAT_Vector3(1673.72487, 1883.151707, 388.12704))
  Position_SetRadius(node414, 5)
  Game_LoadProgress_Advance(node0)
  node415 = Node_CreateNode("NOD_Position", "LookFrom_8")
  Node_AddSon(node351, node415)
  Position_SetPosition(node415, MAT_Vector3(1817.430002, 1680.240553, 330))
  Position_SetRadius(node415, 5)
  Game_LoadProgress_Advance(node0)
  node416 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node349, node416)
  Node_EnterSimulation(node416)
  Game_LoadProgress_Advance(node0)
  node417 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node416, node417)
  Node_EnterSimulation(node417)
  Game_LoadProgress_Advance(node0)
  node418 = Node_CreateNode("NOD_Director", "Chapter2_Intro_V")
  Node_AddSon(node416, node418)
  Node_EnterSimulation(node418)
  Game_LoadProgress_Advance(node0)
  node419 = Node_CreateNode("NOD_Director", "Chapter2_Intro_A")
  Node_AddSon(node416, node419)
  Node_EnterSimulation(node419)
  Game_LoadProgress_Advance(node0)
  node420 = Node_CreateNode("NOD_Director", "Chapter3_Intro_V")
  Node_AddSon(node416, node420)
  Node_EnterSimulation(node420)
  Game_LoadProgress_Advance(node0)
  node421 = Node_CreateNode("NOD_Director", "Chapter3_AddOn_V")
  Node_AddSon(node416, node421)
  Node_EnterSimulation(node421)
  Game_LoadProgress_Advance(node0)
  node422 = Node_CreateNode("NOD_Director", "Chapter4_Intro_V")
  Node_AddSon(node416, node422)
  Node_EnterSimulation(node422)
  Game_LoadProgress_Advance(node0)
  node423 = Node_CreateNode("NOD_Director", "Chapter4_Intro_A")
  Node_AddSon(node416, node423)
  Node_EnterSimulation(node423)
  Game_LoadProgress_Advance(node0)
  node424 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node349, node424)
  Node_EnterSimulation(node424)
  Game_LoadProgress_Advance(node0)
  node425 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_2")
  Node_AddSon(node424, node425)
  Body_SetFriendOrFoeID(node425, 0)
  Body_SetCS(node425, MAT_Vector3(2608.629163, 389.360508, 355.402658), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node425, 20, 20, 20)
  Node_EnterSimulation(node425)
  Game_LoadProgress_Advance(node0)
  node426 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node349, node426)
  Node_EnterSimulation(node426)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, E)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, F)
SetEnemyMatrixElement(6, 0, E)
SetEnemyMatrixElement(7, 0, E)
SetEnemyMatrixElement(8, 0, N)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, E)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, E)
SetEnemyMatrixElement(0, 1, F)
SetEnemyMatrixElement(1, 1, F)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, E)
SetEnemyMatrixElement(4, 1, F)
SetEnemyMatrixElement(5, 1, F)
SetEnemyMatrixElement(6, 1, E)
SetEnemyMatrixElement(7, 1, E)
SetEnemyMatrixElement(8, 1, N)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, E)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, E)
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, N)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, F)
SetEnemyMatrixElement(4, 2, F)
SetEnemyMatrixElement(5, 2, E)
SetEnemyMatrixElement(6, 2, F)
SetEnemyMatrixElement(7, 2, F)
SetEnemyMatrixElement(8, 2, N)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, F)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, F)
SetEnemyMatrixElement(0, 3, E)
SetEnemyMatrixElement(1, 3, N)
SetEnemyMatrixElement(2, 3, F)
SetEnemyMatrixElement(3, 3, F)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, N)
SetEnemyMatrixElement(6, 3, F)
SetEnemyMatrixElement(7, 3, F)
SetEnemyMatrixElement(8, 3, N)
SetEnemyMatrixElement(9, 3, N)
SetEnemyMatrixElement(10, 3, N)
SetEnemyMatrixElement(11, 3, N)
SetEnemyMatrixElement(12, 3, N)
SetEnemyMatrixElement(13, 3, F)
SetEnemyMatrixElement(14, 3, N)
SetEnemyMatrixElement(15, 3, F)
SetEnemyMatrixElement(0, 4, N)
SetEnemyMatrixElement(1, 4, F)
SetEnemyMatrixElement(2, 4, F)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
SetEnemyMatrixElement(5, 4, N)
SetEnemyMatrixElement(6, 4, F)
SetEnemyMatrixElement(7, 4, F)
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
SetEnemyMatrixElement(0, 6, N)
SetEnemyMatrixElement(1, 6, N)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, F)
SetEnemyMatrixElement(7, 6, N)
SetEnemyMatrixElement(8, 6, N)
SetEnemyMatrixElement(9, 6, N)
SetEnemyMatrixElement(10, 6, N)
SetEnemyMatrixElement(11, 6, N)
SetEnemyMatrixElement(12, 6, N)
SetEnemyMatrixElement(13, 6, F)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, F)
SetEnemyMatrixElement(0, 7, N)
SetEnemyMatrixElement(1, 7, N)
SetEnemyMatrixElement(2, 7, N)
SetEnemyMatrixElement(3, 7, N)
SetEnemyMatrixElement(4, 7, N)
SetEnemyMatrixElement(5, 7, N)
SetEnemyMatrixElement(6, 7, N)
SetEnemyMatrixElement(7, 7, F)
SetEnemyMatrixElement(8, 7, N)
SetEnemyMatrixElement(9, 7, N)
SetEnemyMatrixElement(10, 7, N)
SetEnemyMatrixElement(11, 7, N)
SetEnemyMatrixElement(12, 7, N)
SetEnemyMatrixElement(13, 7, F)
SetEnemyMatrixElement(14, 7, N)
SetEnemyMatrixElement(15, 7, F)
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
SetEnemyMatrixElement(13, 13, F)
SetEnemyMatrixElement(14, 13, N)
SetEnemyMatrixElement(15, 13, F)
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
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (o6456.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
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
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  Script_Log("RC1OK_092501_1227")
  SED_SetTaskTextKey(9999, -1, -1)
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
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (o6480.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (o6534.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (o6587.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (o6640.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
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
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  Game_PlayMusic(GetGameNode(), "track5")
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o26.Value == L0) then
    o26["Value"] = L0
    if not (L0 ~= 1) then
      o26.ChangeTo1()
    end
  end
end }
o30 = DockLib.CreateDockMaster("/Scenario_Static/Navigation/ApproachPath", "/Scenario_Static/Navigation/Dock_Path", "/Scenario_Static/Navigation/Dock_PatrolArea")
S_o31 = { [nil] = {}, Start = function(L0)

end }
S_o32 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o32, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o32, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o32, "Code3")
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
S_o67 = { [nil] = {}, Start = function(L0)

end }
S_o101 = { [nil] = {}, Start = function(L0)

end }
S_o135 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o203 = { [nil] = {}, Start = function(L0)

end }
S_o237 = { [nil] = {}, Start = function(L0)

end }
S_o271 = { [nil] = {}, Start = function(L0)

end }
S_o305 = { [nil] = {}, Start = function(L0)

end }
S_o339 = { [nil] = {}, Start = function(L0)

end }
S_o373 = { [nil] = {}, Start = function(L0)

end }
S_o407 = { [nil] = {}, Start = function(L0)

end }
S_o441 = { [nil] = {}, Start = function(L0)

end }
S_o475 = { [nil] = {}, Start = function(L0)

end }
S_o509 = { [nil] = {}, Start = function(L0)

end }
S_o543 = { [nil] = {}, Start = function(L0)

end }
S_o577 = { [nil] = {}, Start = function(L0)

end }
S_o611 = { [nil] = {}, Start = function(L0)

end }
S_o645 = { [nil] = {}, Start = function(L0)

end }
S_o679 = { [nil] = {}, Start = function(L0)

end }
S_o713 = { [nil] = {}, Start = function(L0)

end }
S_o747 = { [nil] = {}, Start = function(L0)

end }
S_o781 = { [nil] = {}, Start = function(L0)

end }
S_o815 = { [nil] = {}, Start = function(L0)

end }
S_o849 = { [nil] = {}, Start = function(L0)

end }
S_o883 = { [nil] = {}, Start = function(L0)

end }
S_o917 = { [nil] = {}, Start = function(L0)

end }
S_o951 = { [nil] = {}, Start = function(L0)

end }
S_o985 = { [nil] = {}, Start = function(L0)

end }
S_o1019 = { [nil] = {}, Start = function(L0)

end }
S_o1053 = { [nil] = {}, Start = function(L0)

end }
S_o1087 = { [nil] = {}, Start = function(L0)

end }
S_o1121 = { [nil] = {}, Start = function(L0)

end }
S_o1155 = { [nil] = {}, Start = function(L0)

end }
S_o1189 = { [nil] = {}, Start = function(L0)

end }
S_o1223 = { [nil] = {}, Start = function(L0)

end }
S_o1257 = { [nil] = {}, Start = function(L0)

end }
S_o1291 = { [nil] = {}, Start = function(L0)

end }
S_o1325 = { [nil] = {}, Start = function(L0)

end }
S_o1359 = { [nil] = {}, Start = function(L0)

end }
S_o1393 = { [nil] = {}, Start = function(L0)

end }
S_o1427 = { [nil] = {}, Start = function(L0)

end }
S_o1461 = { [nil] = {}, Start = function(L0)

end }
S_o1495 = { [nil] = {}, Start = function(L0)

end }
S_o1529 = { [nil] = {}, Start = function(L0)

end }
S_o1563 = { [nil] = {}, Start = function(L0)

end }
S_o1597 = { [nil] = {}, Start = function(L0)

end }
S_o1631 = { [nil] = {}, Start = function(L0)

end }
S_o1665 = { [nil] = {}, Start = function(L0)

end }
S_o1699 = { [nil] = {}, Start = function(L0)

end }
S_o1733 = { [nil] = {}, Start = function(L0)

end }
S_o1767 = { [nil] = {}, Start = function(L0)

end }
S_o1801 = { [nil] = {}, Start = function(L0)

end }
S_o1835 = { [nil] = {}, Start = function(L0)

end }
S_o1869 = { [nil] = {}, Start = function(L0)

end }
S_o1903 = { [nil] = {}, Start = function(L0)

end }
S_o1937 = { [nil] = {}, Start = function(L0)

end }
S_o1971 = { [nil] = {}, Start = function(L0)

end }
S_o2005 = { [nil] = {}, Start = function(L0)

end }
S_o2039 = { [nil] = {}, Start = function(L0)

end }
S_o2073 = { [nil] = {}, Start = function(L0)

end }
S_o2107 = { [nil] = {}, Start = function(L0)

end }
S_o2141 = { [nil] = {}, Start = function(L0)

end }
S_o2175 = { [nil] = {}, Start = function(L0)

end }
S_o2209 = { [nil] = {}, Start = function(L0)

end }
S_o2243 = { [nil] = {}, Start = function(L0)

end }
S_o2277 = { [nil] = {}, Start = function(L0)

end }
S_o2311 = { [nil] = {}, Start = function(L0)

end }
S_o2345 = { [nil] = {}, Start = function(L0)

end }
S_o2379 = { [nil] = {}, Start = function(L0)

end }
S_o2413 = { [nil] = {}, Start = function(L0)

end }
S_o2447 = { [nil] = {}, Start = function(L0)

end }
S_o2481 = { [nil] = {}, Start = function(L0)

end }
S_o2515 = { [nil] = {}, Start = function(L0)

end }
S_o2549 = { [nil] = {}, Start = function(L0)

end }
S_o2583 = { [nil] = {}, Start = function(L0)

end }
S_o2617 = { [nil] = {}, Start = function(L0)

end }
S_o2651 = { [nil] = {}, Start = function(L0)

end }
S_o2685 = { [nil] = {}, Start = function(L0)

end }
S_o2719 = { [nil] = {}, Start = function(L0)

end }
S_o2753 = { [nil] = {}, Start = function(L0)

end }
S_o2787 = { [nil] = {}, Start = function(L0)

end }
S_o2821 = { [nil] = {}, Start = function(L0)

end }
S_o2855 = { [nil] = {}, Start = function(L0)

end }
S_o2889 = { [nil] = {}, Start = function(L0)

end }
S_o2923 = { [nil] = {}, Start = function(L0)

end }
S_o2957 = { [nil] = {}, Start = function(L0)

end }
S_o2991 = { [nil] = {}, Start = function(L0)

end }
S_o3025 = { [nil] = {}, Start = function(L0)

end }
S_o3059 = { [nil] = {}, Start = function(L0)

end }
S_o3093 = { [nil] = {}, Start = function(L0)

end }
S_o3127 = { [nil] = {}, Start = function(L0)

end }
S_o3161 = { [nil] = {}, Start = function(L0)

end }
S_o3195 = { [nil] = {}, Start = function(L0)

end }
S_o3229 = { [nil] = {}, Start = function(L0)

end }
S_o3263 = { [nil] = {}, Start = function(L0)

end }
S_o3297 = { [nil] = {}, Start = function(L0)

end }
S_o3331 = { [nil] = {}, Start = function(L0)

end }
S_o3365 = { [nil] = {}, Start = function(L0)

end }
S_o3399 = { [nil] = {}, Start = function(L0)

end }
S_o3433 = { [nil] = {}, Start = function(L0)

end }
S_o3467 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3467, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3467, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3467, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3470.SetStateValue(L1)
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
o3470 = { [nil] = {}, Start = function()
  o3470["Value"] = False
  o6446.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3470.Value == L0) then
    o3470["Value"] = L0
    o6446.ReCalculate()
  end
end }
S_o3502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3502, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3505.SetStateValue(L1)
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
o3505 = { [nil] = {}, Start = function()
  o3505["Value"] = False
  o6446.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3505.Value == L0) then
    o3505["Value"] = L0
    o6446.ReCalculate()
  end
end }
S_o3537 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3537, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3537, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3537, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3540.SetStateValue(L1)
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
o3540 = { [nil] = {}, Start = function()
  o3540["Value"] = False
  o6446.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3540.Value == L0) then
    o3540["Value"] = L0
    o6446.ReCalculate()
  end
end }
S_o3572 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3572, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3572, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3572, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3575.SetStateValue(L1)
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
o3575 = { [nil] = {}, Start = function()
  o3575["Value"] = False
  o6446.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3575.Value == L0) then
    o3575["Value"] = L0
    o6446.ReCalculate()
  end
end }
S_o3607 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3607, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3607, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3607, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3610.SetStateValue(L1)
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
o3610 = { [nil] = {}, Start = function()
  o3610["Value"] = False
  o6446.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3610.Value == L0) then
    o3610["Value"] = L0
    o6446.ReCalculate()
  end
end }
S_o3642 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3642, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3642, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3642, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o3645.SetStateValue(L1)
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
o3645 = { [nil] = {}, Start = function()
  o3645["Value"] = False
  o6446.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3645.Value == L0) then
    o3645["Value"] = L0
    o6446.ReCalculate()
  end
end }
S_o3677 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3677, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3677, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3677, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3677, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3677, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3677, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3678.Value ~= True) then
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
o3678 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
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
    CallFunction(o3677, "ProcesseStateChange")
  end
end }
S_o3715 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3715, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3715, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3715, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3715, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3715, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3715, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3716.Value ~= True) then
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
o3716 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3716.SetStateValue(o3716.GetCalculated())
end, StartCalculate = function()
  o3716["Value"] = o3716.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3716.Value == L0) then
    o3716["Value"] = L0
    CallFunction(o3715, "ProcesseStateChange")
  end
end }
S_o3753 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3753, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3753, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3753, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3753, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3753, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3753, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3754.Value ~= True) then
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
o3754 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3754.SetStateValue(o3754.GetCalculated())
end, StartCalculate = function()
  o3754["Value"] = o3754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3754.Value == L0) then
    o3754["Value"] = L0
    CallFunction(o3753, "ProcesseStateChange")
  end
end }
S_o3791 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3791, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3791, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3791, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3791, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3791, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3791, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3792.Value ~= True) then
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
o3792 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3792.SetStateValue(o3792.GetCalculated())
end, StartCalculate = function()
  o3792["Value"] = o3792.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3792.Value == L0) then
    o3792["Value"] = L0
    CallFunction(o3791, "ProcesseStateChange")
  end
end }
S_o3829 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3829, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3829, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3829, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3829, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3829, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3829, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3830.Value ~= True) then
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
o3830 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3830.SetStateValue(o3830.GetCalculated())
end, StartCalculate = function()
  o3830["Value"] = o3830.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3830.Value == L0) then
    o3830["Value"] = L0
    CallFunction(o3829, "ProcesseStateChange")
  end
end }
S_o3867 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3867, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3867, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3867, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3867, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3867, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3867, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3868.Value ~= True) then
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
o3868 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3868.SetStateValue(o3868.GetCalculated())
end, StartCalculate = function()
  o3868["Value"] = o3868.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3868.Value == L0) then
    o3868["Value"] = L0
    CallFunction(o3867, "ProcesseStateChange")
  end
end }
S_o3905 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3905, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3905, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3905, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3905, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3905, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3905, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3906.Value ~= True) then
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
o3906 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3906.SetStateValue(o3906.GetCalculated())
end, StartCalculate = function()
  o3906["Value"] = o3906.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3906.Value == L0) then
    o3906["Value"] = L0
    CallFunction(o3905, "ProcesseStateChange")
  end
end }
S_o3943 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3943, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3943, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3943, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3943, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o3943, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3943, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3944.Value ~= True) then
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
o3944 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3944.SetStateValue(o3944.GetCalculated())
end, StartCalculate = function()
  o3944["Value"] = o3944.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3944.Value == L0) then
    o3944["Value"] = L0
    CallFunction(o3943, "ProcesseStateChange")
  end
end }
S_o3981 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3981, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3981, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3981, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o3981, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o3981, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o3981, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o3982.Value ~= True) then
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
o3982 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3982.SetStateValue(o3982.GetCalculated())
end, StartCalculate = function()
  o3982["Value"] = o3982.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3982.Value == L0) then
    o3982["Value"] = L0
    CallFunction(o3981, "ProcesseStateChange")
  end
end }
S_o4019 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4019, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4019, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4019, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4019, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4019, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4019, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4020.Value ~= True) then
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
o4020 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4020.SetStateValue(o4020.GetCalculated())
end, StartCalculate = function()
  o4020["Value"] = o4020.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4020.Value == L0) then
    o4020["Value"] = L0
    CallFunction(o4019, "ProcesseStateChange")
  end
end }
S_o4057 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4057, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4057, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4057, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4057, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4057, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4057, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4058.Value ~= True) then
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
o4058 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4058.SetStateValue(o4058.GetCalculated())
end, StartCalculate = function()
  o4058["Value"] = o4058.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4058.Value == L0) then
    o4058["Value"] = L0
    CallFunction(o4057, "ProcesseStateChange")
  end
end }
S_o4095 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4095, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4095, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4095, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4095, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4095, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4095, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4096.Value ~= True) then
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
o4096 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4096.SetStateValue(o4096.GetCalculated())
end, StartCalculate = function()
  o4096["Value"] = o4096.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4096.Value == L0) then
    o4096["Value"] = L0
    CallFunction(o4095, "ProcesseStateChange")
  end
end }
S_o4133 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4133, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4133, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4133, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4133, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4133, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4133, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4134.Value ~= True) then
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
o4134 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4134.SetStateValue(o4134.GetCalculated())
end, StartCalculate = function()
  o4134["Value"] = o4134.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4134.Value == L0) then
    o4134["Value"] = L0
    CallFunction(o4133, "ProcesseStateChange")
  end
end }
S_o4171 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4171, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4171, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4171, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4171, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4171, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4171, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4172.Value ~= True) then
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
o4172 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4172.SetStateValue(o4172.GetCalculated())
end, StartCalculate = function()
  o4172["Value"] = o4172.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4172.Value == L0) then
    o4172["Value"] = L0
    CallFunction(o4171, "ProcesseStateChange")
  end
end }
S_o4209 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4209, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4209, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4209, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4209, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4209, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4209, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4210.Value ~= True) then
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
o4210 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4210.SetStateValue(o4210.GetCalculated())
end, StartCalculate = function()
  o4210["Value"] = o4210.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4210.Value == L0) then
    o4210["Value"] = L0
    CallFunction(o4209, "ProcesseStateChange")
  end
end }
S_o4247 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4247, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4247, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4247, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4247, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4247, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4247, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4248.Value ~= True) then
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
o4248 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4248.SetStateValue(o4248.GetCalculated())
end, StartCalculate = function()
  o4248["Value"] = o4248.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4248.Value == L0) then
    o4248["Value"] = L0
    CallFunction(o4247, "ProcesseStateChange")
  end
end }
S_o4285 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4285, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4285, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4285, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4285, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4285, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4285, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4286.Value ~= True) then
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
o4286 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4286.SetStateValue(o4286.GetCalculated())
end, StartCalculate = function()
  o4286["Value"] = o4286.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4286.Value == L0) then
    o4286["Value"] = L0
    CallFunction(o4285, "ProcesseStateChange")
  end
end }
S_o4323 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4323, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4323, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4323, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4323, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4323, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4323, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4324.Value ~= True) then
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
o4324 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4324.SetStateValue(o4324.GetCalculated())
end, StartCalculate = function()
  o4324["Value"] = o4324.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4324.Value == L0) then
    o4324["Value"] = L0
    CallFunction(o4323, "ProcesseStateChange")
  end
end }
S_o4361 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4361, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4361, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4361, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4361, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4361, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4361, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4362.Value ~= True) then
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
o4362 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
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
    o4362["Value"] = L0
    CallFunction(o4361, "ProcesseStateChange")
  end
end }
S_o4399 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4399, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4399, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4399, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4399, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4399, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4399, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4400.Value ~= True) then
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
o4400 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4400.SetStateValue(o4400.GetCalculated())
end, StartCalculate = function()
  o4400["Value"] = o4400.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4400.Value == L0) then
    o4400["Value"] = L0
    CallFunction(o4399, "ProcesseStateChange")
  end
end }
S_o4437 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4437, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4437, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4437, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4437, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4437, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4437, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o4438.Value ~= True) then
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
o4438 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4438.SetStateValue(o4438.GetCalculated())
end, StartCalculate = function()
  o4438["Value"] = o4438.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4438.Value == L0) then
    o4438["Value"] = L0
    CallFunction(o4437, "ProcesseStateChange")
  end
end }
S_o4475 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4475, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4475, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4475, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o4475, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4475, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o4475, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
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
  if not (o6448.Value ~= True) then
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
    o4476["Value"] = L0
    CallFunction(o4475, "ProcesseStateChange")
  end
end }
S_o4513 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4513, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4513, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4513, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4513, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4513, "Code5")
  end
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
S_o4551 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4551, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4551, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4551, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4551, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4551, "Code5")
  end
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
S_o4589 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4589, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4589, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4589, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4589, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4589, "Code5")
  end
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
S_o4627 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4627, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4627, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4627, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4627, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4627, "Code5")
  end
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
S_o4665 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4665, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4665, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4665, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4665, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4665, "Code5")
  end
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
S_o4703 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4703, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4703, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4703, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4703, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o4703, "Code5")
  end
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
S_o4741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4741, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4741, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o4741, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 350, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o4741, "Code5")
  end
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
S_o4779 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4779, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4779, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4779, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o4779, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o4779, "Code6")
  end
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
S_o4817 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4817, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4817, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4817, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o4817, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o4817, "Code6")
  end
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
S_o4855 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4855, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4855, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4855, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o4855, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o4855, "Code6")
  end
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
S_o4893 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4893, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4893, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4893, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o4893, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o4893, "Code6")
  end
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
S_o4931 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4931, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4931, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4931, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o4931, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o4931, "Code6")
  end
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
S_o4969 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4969, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4969, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4969, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o4969, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o4969, "Code6")
  end
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
S_o5007 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5007, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5007, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5007, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5007, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5007, "Code6")
  end
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
S_o5045 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5045, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5045, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5045, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5045, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5045, "Code6")
  end
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
S_o5083 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5083, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5083, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5083, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5083, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5083, "Code6")
  end
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
S_o5121 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5121, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5121, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5121, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5121, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5121, "Code6")
  end
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
S_o5159 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5159, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5159, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5159, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5159, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5159, "Code6")
  end
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
S_o5197 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5197, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5197, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5197, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5197, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5197, "Code6")
  end
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
S_o5235 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5235, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5235, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5235, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5235, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5235, "Code6")
  end
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
S_o5273 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5273, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5273, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5273, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAcousticMode(L0.Node)
  Turret_SetAngleArea(L0.Node, 180, -15, 90)
  CallFunction(o5273, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 250, "E", "", "", "", "Code6")
  else
    CallFunction(o5273, "Code6")
  end
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
S_o5311 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5311, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5311, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5311, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5314.SetStateValue(L1)
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
o5314 = { [nil] = {}, Start = function()
  o5314["Value"] = False
  o6448.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5314.Value == L0) then
    o5314["Value"] = L0
    o6448.ReCalculate()
  end
end }
S_o5346 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5346, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5346, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5346, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5349.SetStateValue(L1)
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
o5349 = { [nil] = {}, Start = function()
  o5349["Value"] = False
  o6448.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5349.Value == L0) then
    o5349["Value"] = L0
    o6448.ReCalculate()
  end
end }
S_o5381 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5381, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5381, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5381, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Destroyed = function(L0, L1)
  o5384.SetStateValue(L1)
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
o5384 = { [nil] = {}, Start = function()
  o5384["Value"] = False
  o6448.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5384.Value == L0) then
    o5384["Value"] = L0
    o6448.ReCalculate()
  end
end }
S_o5416 = { [nil] = {}, Start = function(L0)

end }
S_o5450 = { [nil] = {}, Start = function(L0)

end }
S_o5484 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5484, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5484, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5484, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o5484, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5484, "Code5")
  end
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
S_o5522 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5522, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5522, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5522, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o5522, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5522, "Code5")
  end
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
S_o5560 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5560, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5560, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5560, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 70)
  CallFunction(o5560, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "DeGrange_c2_1", "E", "", "", "Code5")
  else
    CallFunction(o5560, "Code5")
  end
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
S_o5598 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5598, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5598, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5598, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5598, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "DeGrange_c2_1", "E", "", "", "Code5")
  else
    CallFunction(o5598, "Code5")
  end
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
S_o5636 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5636, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5636, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5636, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5636, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "DeGrange_c2_1", "E", "", "", "Code5")
  else
    CallFunction(o5636, "Code5")
  end
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
S_o5674 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5674, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5674, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5674, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5674, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "DeGrange_c2_1", "E", "", "", "Code5")
  else
    CallFunction(o5674, "Code5")
  end
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
S_o5712 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5712, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5712, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5712, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5712, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5712, "Code5")
  end
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
S_o5750 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5750, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5750, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5750, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5750, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5750, "Code5")
  end
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
S_o5788 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5788, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5788, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5788, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5788, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5788, "Code5")
  end
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
S_o5826 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5826, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5826, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5826, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5826, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5826, "Code5")
  end
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
S_o5864 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5864, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5864, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5864, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5864, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5864, "Code5")
  end
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
S_o5902 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5902, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5902, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5902, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5902, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o5902, "Code5")
  end
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
S_o5940 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5940, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5940, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5940, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5940, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "DeGrange_c2_1", "E", "", "", "Code5")
  else
    CallFunction(o5940, "Code5")
  end
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
S_o5978 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5978, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5978, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5978, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -30, 90)
  CallFunction(o5978, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "DeGrange_c2_1", "E", "", "", "Code5")
  else
    CallFunction(o5978, "Code5")
  end
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
S_o6016 = { [nil] = {}, Start = function(L0)

end }
S_o6050 = { [nil] = {}, Start = function(L0)

end }
S_o6084 = { [nil] = {}, Start = function(L0)

end }
S_o6118 = { [nil] = {}, Start = function(L0)

end }
S_o6152 = { [nil] = {}, Start = function(L0)

end }
S_o6186 = { [nil] = {}, Start = function(L0)

end }
S_o6220 = { [nil] = {}, Start = function(L0)

end }
S_o6254 = { [nil] = {}, Start = function(L0)

end }
S_o6288 = { [nil] = {}, Start = function(L0)

end }
S_o6322 = { [nil] = {}, Start = function(L0)

end }
S_o6356 = { [nil] = {}, Start = function(L0)

end }
S_o6390 = { [nil] = {}, Start = function(L0)

end }
S_o6424 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetCurrentSpeed(L0.Node, 143, 29)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  CallFunction(o6424, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6425 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetCurrentSpeed(L0.Node, 60, 29)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  CallFunction(o6425, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6426 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetCurrentSpeed(L0.Node, 114, 29)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  CallFunction(o6426, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6427 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetCurrentSpeed(L0.Node, 114, 29)
  Stream_SetTurbulenceFrequency(L0.Node, 1)
  CallFunction(o6427, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6428 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6428, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6428, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6428, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "silent", "pla", "", "", "", True, False, False)
  CallFunction(o6428, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6428, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6428, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6433.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6430.Value ~= True) then
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
o6430 = { [nil] = {}, GetCalculated = function()
  if not (o6446.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6430.SetStateValue(o6430.GetCalculated())
end, StartCalculate = function()
  o6430["Value"] = o6430.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6430.Value == L0) then
    o6430["Value"] = L0
    CallFunction(o6428, "ProcesseStateChange")
  end
end }
o6433 = { [nil] = {}, Start = function()
  o6433["Value"] = False
  o6453.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6433.Value == L0) then
    o6433["Value"] = L0
    o6453.ReCalculate()
  end
end }
S_o6434 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6434, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6434, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6434, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "silent", "pla", "", "", "", True, False, False)
  CallFunction(o6434, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6434, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6434, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6439.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6436.Value ~= True) then
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
o6436 = { [nil] = {}, GetCalculated = function()
  if not (o6446.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6436.SetStateValue(o6436.GetCalculated())
end, StartCalculate = function()
  o6436["Value"] = o6436.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6436.Value == L0) then
    o6436["Value"] = L0
    CallFunction(o6434, "ProcesseStateChange")
  end
end }
o6439 = { [nil] = {}, Start = function()
  o6439["Value"] = False
  o6453.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6439.Value == L0) then
    o6439["Value"] = L0
    o6453.ReCalculate()
  end
end }
S_o6440 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 2000)
  Body_AddItem(L0.Node, "ammo_shell", 2000)
  Body_AddItem(L0.Node, "torpedo_tigershark", 3)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 1)
  Body_AddItem(L0.Node, "torpedo_bullshark", 2)
  Body_AddItem(L0.Node, "buzzer_normal", 5)
  CallFunction(o6440, "Code9")
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
o6445 = { [nil] = {}, GetCalculated = function()
  if not (o7233.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6445.SetStateValue(o6445.GetCalculated())
end, StartCalculate = function()
  o6445["Value"] = o6445.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o6445.Value == L0) then
    o6445["Value"] = L0
    if not (L0 ~= 1) then
      o6445.ChangeTo1()
    end
  end
end }
o6446 = { [nil] = {}, GetCalculated = function()
  if not (o3470.Value ~= True) then
    if not (o3505.Value ~= True) then
      if not (o3540.Value ~= True) then
        if not (o3575.Value ~= True) then
          if not (o3610.Value ~= True) then
            if not (o3645.Value ~= True) then
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
  o6446.SetStateValue(o6446.GetCalculated())
end, StartCalculate = function()
  o6446["Value"] = o6446.GetCalculated()
  o6430.StartCalculate()
  o6436.StartCalculate()
  o8219.StartCalculate()
  o8232.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Objective- 'Destroy all Synapse-Parabolics' - completed")
end, SetStateValue = function(L0)
  if not (o6446.Value == L0) then
    o6446["Value"] = L0
    o6430.ReCalculate()
    o6436.ReCalculate()
    o8219.ReCalculate()
    o8232.ReCalculate()
    if not (L0 ~= 1) then
      o6446.ChangeTo1()
    end
  end
end }
o6447 = { [nil] = {}, GetCalculated = function()
  if not (o7238.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6447.SetStateValue(o6447.GetCalculated())
end, StartCalculate = function()
  o6447["Value"] = o6447.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6440.Node, o6440.Node, 1250)
  Game_SetWayPoint(GetGameNode(), o7240.Node)
end, SetStateValue = function(L0)
  if not (o6447.Value == L0) then
    o6447["Value"] = L0
    if not (L0 ~= 1) then
      o6447.ChangeTo1()
    end
  end
end }
o6448 = { [nil] = {}, GetCalculated = function()
  if not (o5314.Value ~= True) then
    if not (o5349.Value ~= True) then
      if not (o5384.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o6448.SetStateValue(o6448.GetCalculated())
end, StartCalculate = function()
  o6448["Value"] = o6448.GetCalculated()
  o3678.StartCalculate()
  o3716.StartCalculate()
  o3754.StartCalculate()
  o3792.StartCalculate()
  o3830.StartCalculate()
  o3868.StartCalculate()
  o3906.StartCalculate()
  o3944.StartCalculate()
  o3982.StartCalculate()
  o4020.StartCalculate()
  o4058.StartCalculate()
  o4096.StartCalculate()
  o4134.StartCalculate()
  o4172.StartCalculate()
  o4210.StartCalculate()
  o4248.StartCalculate()
  o4286.StartCalculate()
  o4324.StartCalculate()
  o4362.StartCalculate()
  o4400.StartCalculate()
  o4438.StartCalculate()
  o4476.StartCalculate()
  o6487.StartCalculate()
  o6541.StartCalculate()
  o6594.StartCalculate()
  o6647.StartCalculate()
  o6699.StartCalculate()
  o6747.StartCalculate()
  o6795.StartCalculate()
  o6843.StartCalculate()
  o6891.StartCalculate()
  o6941.StartCalculate()
  o6990.StartCalculate()
  o7039.StartCalculate()
  o7088.StartCalculate()
  o8236.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("Objective- 'Destroy all Turret-Control-Units' - completed")
end, SetStateValue = function(L0)
  if not (o6448.Value == L0) then
    o6448["Value"] = L0
    o3678.ReCalculate()
    o3716.ReCalculate()
    o3754.ReCalculate()
    o3792.ReCalculate()
    o3830.ReCalculate()
    o3868.ReCalculate()
    o3906.ReCalculate()
    o3944.ReCalculate()
    o3982.ReCalculate()
    o4020.ReCalculate()
    o4058.ReCalculate()
    o4096.ReCalculate()
    o4134.ReCalculate()
    o4172.ReCalculate()
    o4210.ReCalculate()
    o4248.ReCalculate()
    o4286.ReCalculate()
    o4324.ReCalculate()
    o4362.ReCalculate()
    o4400.ReCalculate()
    o4438.ReCalculate()
    o4476.ReCalculate()
    o6487.ReCalculate()
    o6541.ReCalculate()
    o6594.ReCalculate()
    o6647.ReCalculate()
    o6699.ReCalculate()
    o6747.ReCalculate()
    o6795.ReCalculate()
    o6843.ReCalculate()
    o6891.ReCalculate()
    o6941.ReCalculate()
    o6990.ReCalculate()
    o7039.ReCalculate()
    o7088.ReCalculate()
    o8236.ReCalculate()
    if not (L0 ~= 1) then
      o6448.ChangeTo1()
    end
  end
end }
o6449 = { [nil] = {}, Start = function()
  o6449["Value"] = False
  o6450.StartCalculate()
  o6543.StartCalculate()
  o6596.StartCalculate()
  o6649.StartCalculate()
  o6698.StartCalculate()
  o6746.StartCalculate()
  o6794.StartCalculate()
  o6842.StartCalculate()
  o6890.StartCalculate()
  o6938.StartCalculate()
  o6988.StartCalculate()
  o7037.StartCalculate()
  o7086.StartCalculate()
  o7136.StartCalculate()
  o7184.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6449.Value == L0) then
    o6449["Value"] = L0
    o6450.ReCalculate()
    o6543.ReCalculate()
    o6596.ReCalculate()
    o6649.ReCalculate()
    o6698.ReCalculate()
    o6746.ReCalculate()
    o6794.ReCalculate()
    o6842.ReCalculate()
    o6890.ReCalculate()
    o6938.ReCalculate()
    o6988.ReCalculate()
    o7037.ReCalculate()
    o7086.ReCalculate()
    o7136.ReCalculate()
    o7184.ReCalculate()
  end
end }
o6450 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6450.SetStateValue(o6450.GetCalculated())
end, StartCalculate = function()
  o6450["Value"] = o6450.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6538.Node, o6440.Node, 57)
  SetEnemyMatrixElement(0, 6, F)
  SED_SetTaskTextKey(1279, -1, -1)
end, SetStateValue = function(L0)
  if not (o6450.Value == L0) then
    o6450["Value"] = L0
    if not (L0 ~= 1) then
      o6450.ChangeTo1()
    end
  end
end }
o6451 = { [nil] = {}, GetCalculated = function()
  if not (o6944.Value ~= True) then
    if not (o6993.Value ~= True) then
      if not (o7042.Value ~= True) then
        if not (o7091.Value ~= True) then
          return 1
        else
          return 0
        end
      end
    end
  end
end, ReCalculate = function()
  o6451.SetStateValue(o6451.GetCalculated())
end, StartCalculate = function()
  o6451["Value"] = o6451.GetCalculated()
  o6490.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6451.Value == L0) then
    o6451["Value"] = L0
    o6490.ReCalculate()
  end
end }
o6452 = { [nil] = {}, Start = function()
  o6452["Value"] = False
  o7253.StartCalculate()
  o7303.StartCalculate()
  o7352.StartCalculate()
  o7401.StartCalculate()
  o7450.StartCalculate()
  o7499.StartCalculate()
  o7548.StartCalculate()
  o7597.StartCalculate()
  o7646.StartCalculate()
  o7695.StartCalculate()
  o7744.StartCalculate()
  o8246.StartCalculate()
  o8252.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6452.Value == L0) then
    o6452["Value"] = L0
    o7253.ReCalculate()
    o7303.ReCalculate()
    o7352.ReCalculate()
    o7401.ReCalculate()
    o7450.ReCalculate()
    o7499.ReCalculate()
    o7548.ReCalculate()
    o7597.ReCalculate()
    o7646.ReCalculate()
    o7695.ReCalculate()
    o7744.ReCalculate()
    o8246.ReCalculate()
    o8252.ReCalculate()
  end
end }
o6453 = { [nil] = {}, GetCalculated = function()
  if not (o6433.Value == True) then
    if not (o6439.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o6453.SetStateValue(o6453.GetCalculated())
end, StartCalculate = function()
  o6453["Value"] = o6453.GetCalculated()
  o6480.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o6440.Node, o6440.Node, 1134)
end, SetStateValue = function(L0)
  if not (o6453.Value == L0) then
    o6453["Value"] = L0
    o6480.ReCalculate()
    if not (L0 ~= 1) then
      o6453.ChangeTo1()
    end
  end
end }
o6454 = { [nil] = {}, Start = function()
  o6454["Value"] = False
  o6456.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6454.Value == L0) then
    o6454["Value"] = L0
    o6456.ReCalculate()
  end
end }
o6455 = { [nil] = {}, GetCalculated = function()
  if not (o7243.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6455.SetStateValue(o6455.GetCalculated())
end, StartCalculate = function()
  o6455["Value"] = o6455.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(1277, -1, -1)
end, SetStateValue = function(L0)
  if not (o6455.Value == L0) then
    o6455["Value"] = L0
    if not (L0 ~= 1) then
      o6455.ChangeTo1()
    end
  end
end }
o6456 = { [nil] = {}, GetCalculated = function()
  if not (o6454.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6456.SetStateValue(o6456.GetCalculated())
end, StartCalculate = function()
  o6456["Value"] = o6456.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6456.Value == L0) then
    o6456["Value"] = L0
    o2.ReCalculate()
  end
end }
o6480 = { [nil] = {}, GetCalculated = function()
  if not (o6453.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6480.SetStateValue(o6480.GetCalculated())
end, StartCalculate = function()
  o6480["Value"] = o6480.GetCalculated()
  o26.StartCalculate()
end, ChangeTo1 = function()
  Script_Log("your failed")
end, SetStateValue = function(L0)
  if not (o6480.Value == L0) then
    o6480["Value"] = L0
    o26.ReCalculate()
    if not (L0 ~= 1) then
      o6480.ChangeTo1()
    end
  end
end }
S_o6484 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6484, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6484, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6484, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6484, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6484, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6484, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o6484, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Syn_Patrol_Area", "/Scenario_Dynamic/Navigation/Syn_Trg_Area", "/Scenario_Dynamic/Navigation/Syn_Follow_Area", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o6484, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o6484, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6484, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 1)
  CallFunction(o6484, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeGrange_DockOn_Path", 1, 1 } }("Code13")
  else
    CallFunction(o6484, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  o6449.SetStateValue(True)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  CallFunction(o6484, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o30, nil, 1e+24, "Code16")
  else
    CallFunction(o6484, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.UndockOwn(L0, o30, "Code17")
  else
    CallFunction(o6484, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  o6452.SetStateValue(True)
  CallFunction(o6484, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code19")
  else
    CallFunction(o6484, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeGrange_OutPath", 1, 1 } }("Code20")
  else
    CallFunction(o6484, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code21")
  else
    CallFunction(o6484, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, SetStateValue_Destroyed = function(L0, L1)
  o6495.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o6496.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6487.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o6490.Value ~= True) then
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
o6487 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6487.SetStateValue(o6487.GetCalculated())
end, StartCalculate = function()
  o6487["Value"] = o6487.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6487.Value == L0) then
    o6487["Value"] = L0
    CallFunction(o6484, "ProcesseStateChange")
  end
end }
o6490 = { [nil] = {}, GetCalculated = function()
  if not (o6451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6490.SetStateValue(o6490.GetCalculated())
end, StartCalculate = function()
  o6490["Value"] = o6490.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6490.Value == L0) then
    DelayedFunction(1, o6490, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6490.Value == L0) then
    o6490["Value"] = L0
    CallFunction(o6484, "ProcesseStateChange")
  end
end }
o6495 = { [nil] = {}, Start = function()
  o6495["Value"] = False
  o6534.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6495.Value == L0) then
    o6495["Value"] = L0
    o6534.ReCalculate()
  end
end }
o6496 = { [nil] = {}, Start = function()
  o6496["Value"] = False
  o6545.StartCalculate()
  o6598.StartCalculate()
  o6651.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6496.Value == L0) then
    o6496["Value"] = L0
    o6545.ReCalculate()
    o6598.ReCalculate()
    o6651.ReCalculate()
  end
end }
o6534 = { [nil] = {}, GetCalculated = function()
  if not (o6495.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6534.SetStateValue(o6534.GetCalculated())
end, StartCalculate = function()
  o6534["Value"] = o6534.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6534.Value == L0) then
    o6534["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o6538 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6538, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6538, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6538, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6538, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6538, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6538, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o6538, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Syn_Patrol_Area", "/Scenario_Dynamic/Navigation/Syn_Trg_Area", "/Scenario_Dynamic/Navigation/Syn_Follow_Area", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o6538, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6538, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o6538, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6538, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  CallFunction(o6538, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolAreaWings", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code13")
  else
    CallFunction(o6538, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HarperToLiberty_Path", 1, 1 } }("Code14")
  else
    CallFunction(o6538, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6538, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code16")
  else
    CallFunction(o6538, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code17")
  else
    CallFunction(o6538, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, SetStateValue_Destroyed = function(L0, L1)
  o6548.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6541.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o6543.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o6545.Value ~= True) then
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
o6541 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6541.SetStateValue(o6541.GetCalculated())
end, StartCalculate = function()
  o6541["Value"] = o6541.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6541.Value == L0) then
    o6541["Value"] = L0
    CallFunction(o6538, "ProcesseStateChange")
  end
end }
o6543 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6543.SetStateValue(o6543.GetCalculated())
end, StartCalculate = function()
  o6543["Value"] = o6543.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6543.Value == L0) then
    o6543["Value"] = L0
    CallFunction(o6538, "ProcesseStateChange")
  end
end }
o6545 = { [nil] = {}, GetCalculated = function()
  if not (o6496.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6545.SetStateValue(o6545.GetCalculated())
end, StartCalculate = function()
  o6545["Value"] = o6545.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6545.Value == L0) then
    DelayedFunction(25, o6545, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6545.Value == L0) then
    o6545["Value"] = L0
    CallFunction(o6538, "ProcesseStateChange")
  end
end }
o6548 = { [nil] = {}, Start = function()
  o6548["Value"] = False
  o6587.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6548.Value == L0) then
    o6548["Value"] = L0
    o6587.ReCalculate()
  end
end }
o6587 = { [nil] = {}, GetCalculated = function()
  if not (o6548.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6587.SetStateValue(o6587.GetCalculated())
end, StartCalculate = function()
  o6587["Value"] = o6587.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6587.Value == L0) then
    o6587["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o6591 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6591, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6591, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6591, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6591, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6591, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6591, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o6591, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Syn_Patrol_Area", "/Scenario_Dynamic/Navigation/Syn_Trg_Area", "/Scenario_Dynamic/Navigation/Syn_Follow_Area", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o6591, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6591, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o6591, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6591, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  CallFunction(o6591, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolAreaWings", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code13")
  else
    CallFunction(o6591, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PicoToLiberty_Path", 1, 1 } }("Code14")
  else
    CallFunction(o6591, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6591, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code16")
  else
    CallFunction(o6591, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code17")
  else
    CallFunction(o6591, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, SetStateValue_Destroyed = function(L0, L1)
  o6601.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6594.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o6596.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o6598.Value ~= True) then
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
o6594 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6594.SetStateValue(o6594.GetCalculated())
end, StartCalculate = function()
  o6594["Value"] = o6594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6594.Value == L0) then
    o6594["Value"] = L0
    CallFunction(o6591, "ProcesseStateChange")
  end
end }
o6596 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6596.SetStateValue(o6596.GetCalculated())
end, StartCalculate = function()
  o6596["Value"] = o6596.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6596.Value == L0) then
    o6596["Value"] = L0
    CallFunction(o6591, "ProcesseStateChange")
  end
end }
o6598 = { [nil] = {}, GetCalculated = function()
  if not (o6496.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6598.SetStateValue(o6598.GetCalculated())
end, StartCalculate = function()
  o6598["Value"] = o6598.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6598.Value == L0) then
    DelayedFunction(25, o6598, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6598.Value == L0) then
    o6598["Value"] = L0
    CallFunction(o6591, "ProcesseStateChange")
  end
end }
o6601 = { [nil] = {}, Start = function()
  o6601["Value"] = False
  o6640.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6601.Value == L0) then
    o6601["Value"] = L0
    o6640.ReCalculate()
  end
end }
o6640 = { [nil] = {}, GetCalculated = function()
  if not (o6601.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6640.SetStateValue(o6640.GetCalculated())
end, StartCalculate = function()
  o6640["Value"] = o6640.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6640.Value == L0) then
    o6640["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o6644 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6644, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6644, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6644, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  CallFunction(o6644, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o6644, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6644, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o6644, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Syn_Patrol_Area", "/Scenario_Dynamic/Navigation/Syn_Trg_Area", "/Scenario_Dynamic/Navigation/Syn_Follow_Area", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o6644, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6644, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o6644, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6644, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  StopAllActiveBehaviours(L0)
  CallFunction(o6644, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolAreaWings", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code13")
  else
    CallFunction(o6644, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonhamToLiberty_Path", 1, 1 } }("Code14")
  else
    CallFunction(o6644, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6644, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code16")
  else
    CallFunction(o6644, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code17")
  else
    CallFunction(o6644, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o6647.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o6649.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o6651.Value ~= True) then
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
o6647 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6647.SetStateValue(o6647.GetCalculated())
end, StartCalculate = function()
  o6647["Value"] = o6647.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6647.Value == L0) then
    o6647["Value"] = L0
    CallFunction(o6644, "ProcesseStateChange")
  end
end }
o6649 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6649.SetStateValue(o6649.GetCalculated())
end, StartCalculate = function()
  o6649["Value"] = o6649.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6649.Value == L0) then
    o6649["Value"] = L0
    CallFunction(o6644, "ProcesseStateChange")
  end
end }
o6651 = { [nil] = {}, GetCalculated = function()
  if not (o6496.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6651.SetStateValue(o6651.GetCalculated())
end, StartCalculate = function()
  o6651["Value"] = o6651.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6651.Value == L0) then
    DelayedFunction(25, o6651, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6651.Value == L0) then
    o6651["Value"] = L0
    CallFunction(o6644, "ProcesseStateChange")
  end
end }
S_o6697 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6697, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6697, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6697, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6697, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6697, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6697, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6699.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6698.Value ~= True) then
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
o6698 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6698.SetStateValue(o6698.GetCalculated())
end, StartCalculate = function()
  o6698["Value"] = o6698.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6698.Value == L0) then
    o6698["Value"] = L0
    CallFunction(o6697, "ProcesseStateChange")
  end
end }
o6699 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6699.SetStateValue(o6699.GetCalculated())
end, StartCalculate = function()
  o6699["Value"] = o6699.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6699.Value == L0) then
    o6699["Value"] = L0
    CallFunction(o6697, "ProcesseStateChange")
  end
end }
S_o6745 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6745, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6745, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6745, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6745, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6745, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6745, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6747.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6746.Value ~= True) then
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
o6746 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6746.SetStateValue(o6746.GetCalculated())
end, StartCalculate = function()
  o6746["Value"] = o6746.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6746.Value == L0) then
    o6746["Value"] = L0
    CallFunction(o6745, "ProcesseStateChange")
  end
end }
o6747 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6747.SetStateValue(o6747.GetCalculated())
end, StartCalculate = function()
  o6747["Value"] = o6747.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6747.Value == L0) then
    o6747["Value"] = L0
    CallFunction(o6745, "ProcesseStateChange")
  end
end }
S_o6793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6793, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6793, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6793, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6793, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6793, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6793, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6795.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6794.Value ~= True) then
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
o6794 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6794.SetStateValue(o6794.GetCalculated())
end, StartCalculate = function()
  o6794["Value"] = o6794.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6794.Value == L0) then
    o6794["Value"] = L0
    CallFunction(o6793, "ProcesseStateChange")
  end
end }
o6795 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6795.SetStateValue(o6795.GetCalculated())
end, StartCalculate = function()
  o6795["Value"] = o6795.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6795.Value == L0) then
    o6795["Value"] = L0
    CallFunction(o6793, "ProcesseStateChange")
  end
end }
S_o6841 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6841, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6841, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6841, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6841, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6841, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6841, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6843.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6842.Value ~= True) then
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
o6842 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6842.SetStateValue(o6842.GetCalculated())
end, StartCalculate = function()
  o6842["Value"] = o6842.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6842.Value == L0) then
    o6842["Value"] = L0
    CallFunction(o6841, "ProcesseStateChange")
  end
end }
o6843 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6843.SetStateValue(o6843.GetCalculated())
end, StartCalculate = function()
  o6843["Value"] = o6843.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6843.Value == L0) then
    o6843["Value"] = L0
    CallFunction(o6841, "ProcesseStateChange")
  end
end }
S_o6889 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6889, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6889, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6889, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6889, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6889, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6889, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6891.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6890.Value ~= True) then
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
o6890 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6890.SetStateValue(o6890.GetCalculated())
end, StartCalculate = function()
  o6890["Value"] = o6890.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6890.Value == L0) then
    o6890["Value"] = L0
    CallFunction(o6889, "ProcesseStateChange")
  end
end }
o6891 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6891.SetStateValue(o6891.GetCalculated())
end, StartCalculate = function()
  o6891["Value"] = o6891.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6891.Value == L0) then
    o6891["Value"] = L0
    CallFunction(o6889, "ProcesseStateChange")
  end
end }
S_o6937 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6937, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6937, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6937, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6937, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6937, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6937, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BomberToLiberty_Path", 1, 1 } }("Code7")
  else
    CallFunction(o6937, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code8")
  else
    CallFunction(o6937, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o6944.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6941.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6938.Value ~= True) then
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
o6938 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6938.SetStateValue(o6938.GetCalculated())
end, StartCalculate = function()
  o6938["Value"] = o6938.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6938.Value == L0) then
    o6938["Value"] = L0
    CallFunction(o6937, "ProcesseStateChange")
  end
end }
o6941 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6941.SetStateValue(o6941.GetCalculated())
end, StartCalculate = function()
  o6941["Value"] = o6941.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6941.Value == L0) then
    o6941["Value"] = L0
    CallFunction(o6937, "ProcesseStateChange")
  end
end }
o6944 = { [nil] = {}, Start = function()
  o6944["Value"] = False
  o6451.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6944.Value == L0) then
    o6944["Value"] = L0
    o6451.ReCalculate()
  end
end }
S_o6987 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6987, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6987, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6987, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6987, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o6987, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o6987, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o6987, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o6993.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6990.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6988.Value ~= True) then
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
o6988 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6988.SetStateValue(o6988.GetCalculated())
end, StartCalculate = function()
  o6988["Value"] = o6988.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6988.Value == L0) then
    o6988["Value"] = L0
    CallFunction(o6987, "ProcesseStateChange")
  end
end }
o6990 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6990.SetStateValue(o6990.GetCalculated())
end, StartCalculate = function()
  o6990["Value"] = o6990.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6990.Value == L0) then
    o6990["Value"] = L0
    CallFunction(o6987, "ProcesseStateChange")
  end
end }
o6993 = { [nil] = {}, Start = function()
  o6993["Value"] = False
  o6451.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6993.Value == L0) then
    o6993["Value"] = L0
    o6451.ReCalculate()
  end
end }
S_o7036 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7036, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7036, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7036, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o7036, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7036, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o7036, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o7036, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o7042.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7039.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7037.Value ~= True) then
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
o7037 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7037.SetStateValue(o7037.GetCalculated())
end, StartCalculate = function()
  o7037["Value"] = o7037.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7037.Value == L0) then
    o7037["Value"] = L0
    CallFunction(o7036, "ProcesseStateChange")
  end
end }
o7039 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7039.SetStateValue(o7039.GetCalculated())
end, StartCalculate = function()
  o7039["Value"] = o7039.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7039.Value == L0) then
    o7039["Value"] = L0
    CallFunction(o7036, "ProcesseStateChange")
  end
end }
o7042 = { [nil] = {}, Start = function()
  o7042["Value"] = False
  o6451.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7042.Value == L0) then
    o7042["Value"] = L0
    o6451.ReCalculate()
  end
end }
S_o7085 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7085, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7085, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7085, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o7085, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/FakeFight_PatrolArea", "/Scenario_Dynamic/Navigation/FakeFight_TriggerArea", "/Scenario_Dynamic/Navigation/FakeFight_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7085, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o7085, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code7")
  else
    CallFunction(o7085, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o7091.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7088.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o7086.Value ~= True) then
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
o7086 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7086.SetStateValue(o7086.GetCalculated())
end, StartCalculate = function()
  o7086["Value"] = o7086.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7086.Value == L0) then
    o7086["Value"] = L0
    CallFunction(o7085, "ProcesseStateChange")
  end
end }
o7088 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7088.SetStateValue(o7088.GetCalculated())
end, StartCalculate = function()
  o7088["Value"] = o7088.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7088.Value == L0) then
    o7088["Value"] = L0
    CallFunction(o7085, "ProcesseStateChange")
  end
end }
o7091 = { [nil] = {}, Start = function()
  o7091["Value"] = False
  o6451.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7091.Value == L0) then
    o7091["Value"] = L0
    o6451.ReCalculate()
  end
end }
S_o7134 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7134, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7134, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7134, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7134, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7136.Value ~= True) then
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
o7136 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7136.SetStateValue(o7136.GetCalculated())
end, StartCalculate = function()
  o7136["Value"] = o7136.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7136.Value == L0) then
    o7136["Value"] = L0
    CallFunction(o7134, "ProcesseStateChange")
  end
end }
S_o7182 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7182, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7182, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o7182, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Liberty_FollowArea", "E", "", "", "", 0.5, "Code4")
  else
    CallFunction(o7182, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7184.Value ~= True) then
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
o7184 = { [nil] = {}, GetCalculated = function()
  if not (o6449.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7184.SetStateValue(o7184.GetCalculated())
end, StartCalculate = function()
  o7184["Value"] = o7184.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7184.Value == L0) then
    o7184["Value"] = L0
    CallFunction(o7182, "ProcesseStateChange")
  end
end }
S_o7230 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7230, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7233.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7233 = { [nil] = {}, Start = function()
  o7233["Value"] = False
  o6445.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7233.Value == L0) then
    o7233["Value"] = L0
    o6445.ReCalculate()
  end
end }
S_o7235 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7235, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7238.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7238 = { [nil] = {}, Start = function()
  o7238["Value"] = False
  o6447.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7238.Value == L0) then
    o7238["Value"] = L0
    o6447.ReCalculate()
  end
end }
S_o7240 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 75)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o7240, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7243.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7243 = { [nil] = {}, Start = function()
  o7243["Value"] = False
  o6455.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7243.Value == L0) then
    o7243["Value"] = L0
    o6455.ReCalculate()
  end
end }
S_o7245 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o6484.Node)
  CallFunction(o7245, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7250 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7250, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7250, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7250, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o7250, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 0)
  ShieldedBody_MakeInvulnerable(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o7250, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CapeFear_Path", 1, 1 } }("Code8")
  else
    CallFunction(o7250, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code9")
  else
    CallFunction(o7250, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code10")
  else
    CallFunction(o7250, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7250, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7253.Value ~= True) then
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
o7253 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7253.SetStateValue(o7253.GetCalculated())
end, StartCalculate = function()
  o7253["Value"] = o7253.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7253.Value == L0) then
    DelayedFunction(1, o7253, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7253.Value == L0) then
    o7253["Value"] = L0
    CallFunction(o7250, "ProcesseStateChange")
  end
end }
S_o7300 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7300, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7300, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7300, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o7300, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Bomber1_Path", 1, 1 } }("Code5")
  else
    CallFunction(o7300, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o7300, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7303.Value ~= True) then
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
o7303 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7303.SetStateValue(o7303.GetCalculated())
end, StartCalculate = function()
  o7303["Value"] = o7303.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7303.Value == L0) then
    DelayedFunction(1, o7303, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7303.Value == L0) then
    o7303["Value"] = L0
    CallFunction(o7300, "ProcesseStateChange")
  end
end }
S_o7349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o7349, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Bomber2_Path", 1, 1 } }("Code5")
  else
    CallFunction(o7349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code6")
  else
    CallFunction(o7349, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7352.Value ~= True) then
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
o7352 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7352.SetStateValue(o7352.GetCalculated())
end, StartCalculate = function()
  o7352["Value"] = o7352.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7352.Value == L0) then
    DelayedFunction(1, o7352, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7352.Value == L0) then
    o7352["Value"] = L0
    CallFunction(o7349, "ProcesseStateChange")
  end
end }
S_o7398 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7398, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7398, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7398, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout1_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7398, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7398, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7401.Value ~= True) then
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
o7401 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7401.SetStateValue(o7401.GetCalculated())
end, StartCalculate = function()
  o7401["Value"] = o7401.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7401.Value == L0) then
    DelayedFunction(1, o7401, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7401.Value == L0) then
    o7401["Value"] = L0
    CallFunction(o7398, "ProcesseStateChange")
  end
end }
S_o7447 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7447, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7447, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7447, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout2_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7447, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7447, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7450.Value ~= True) then
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
o7450 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7450.SetStateValue(o7450.GetCalculated())
end, StartCalculate = function()
  o7450["Value"] = o7450.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7450.Value == L0) then
    DelayedFunction(1, o7450, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7450.Value == L0) then
    o7450["Value"] = L0
    CallFunction(o7447, "ProcesseStateChange")
  end
end }
S_o7496 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7496, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7496, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7496, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout3_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7496, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7496, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7499.Value ~= True) then
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
o7499 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7499.SetStateValue(o7499.GetCalculated())
end, StartCalculate = function()
  o7499["Value"] = o7499.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7499.Value == L0) then
    DelayedFunction(1, o7499, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7499.Value == L0) then
    o7499["Value"] = L0
    CallFunction(o7496, "ProcesseStateChange")
  end
end }
S_o7545 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7545, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7545, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7545, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout4_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7545, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7545, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7548.Value ~= True) then
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
o7548 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7548.SetStateValue(o7548.GetCalculated())
end, StartCalculate = function()
  o7548["Value"] = o7548.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7548.Value == L0) then
    DelayedFunction(1, o7548, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7548.Value == L0) then
    o7548["Value"] = L0
    CallFunction(o7545, "ProcesseStateChange")
  end
end }
S_o7594 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7594, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7594, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7594, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout5_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7594, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7594, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7597.Value ~= True) then
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
o7597 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7597.SetStateValue(o7597.GetCalculated())
end, StartCalculate = function()
  o7597["Value"] = o7597.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7597.Value == L0) then
    DelayedFunction(1, o7597, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7597.Value == L0) then
    o7597["Value"] = L0
    CallFunction(o7594, "ProcesseStateChange")
  end
end }
S_o7643 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7643, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7643, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7643, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout6_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7643, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7643, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7646.Value ~= True) then
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
o7646 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7646.SetStateValue(o7646.GetCalculated())
end, StartCalculate = function()
  o7646["Value"] = o7646.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7646.Value == L0) then
    DelayedFunction(1, o7646, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7646.Value == L0) then
    o7646["Value"] = L0
    CallFunction(o7643, "ProcesseStateChange")
  end
end }
S_o7692 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7692, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7692, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7692, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout7_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7692, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7692, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7695.Value ~= True) then
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
o7695 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7695.SetStateValue(o7695.GetCalculated())
end, StartCalculate = function()
  o7695["Value"] = o7695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7695.Value == L0) then
    DelayedFunction(1, o7695, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7695.Value == L0) then
    o7695["Value"] = L0
    CallFunction(o7692, "ProcesseStateChange")
  end
end }
S_o7741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7741, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7741, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CFGroup_Scout8_Path", 1, 1 } }("Code4")
  else
    CallFunction(o7741, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Liberty_PatrolArea", "/Scenario_Dynamic/Navigation/Liberty_TriggerArea", "/Scenario_Dynamic/Navigation/Overall_FollowArea", "E", "", "", "", 0.5, "Code5")
  else
    CallFunction(o7741, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o7744.Value ~= True) then
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
o7744 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7744.SetStateValue(o7744.GetCalculated())
end, StartCalculate = function()
  o7744["Value"] = o7744.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7744.Value == L0) then
    DelayedFunction(1, o7744, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7744.Value == L0) then
    o7744["Value"] = L0
    CallFunction(o7741, "ProcesseStateChange")
  end
end }
S_o7790 = { [nil] = {}, Start = function(L0)

end }
S_o7825 = { [nil] = {}, Start = function(L0)

end }
S_o7860 = { [nil] = {}, Start = function(L0)

end }
S_o7895 = { [nil] = {}, Start = function(L0)

end }
S_o7930 = { [nil] = {}, Start = function(L0)

end }
S_o7965 = { [nil] = {}, Start = function(L0)

end }
S_o8000 = { [nil] = {}, Start = function(L0)

end }
S_o8035 = { [nil] = {}, Start = function(L0)

end }
S_o8070 = { [nil] = {}, Start = function(L0)

end }
S_o8105 = { [nil] = {}, Start = function(L0)

end }
S_o8140 = { [nil] = {}, Start = function(L0)

end }
S_o8175 = { [nil] = {}, Start = function(L0)

end }
S_o8176 = { [nil] = {}, Start = function(L0)

end }
S_o8177 = { [nil] = {}, Start = function(L0)

end }
S_o8178 = { [nil] = {}, Start = function(L0)

end }
S_o8179 = { [nil] = {}, Start = function(L0)

end }
S_o8180 = { [nil] = {}, Start = function(L0)

end }
S_o8181 = { [nil] = {}, Start = function(L0)

end }
S_o8182 = { [nil] = {}, Start = function(L0)

end }
S_o8183 = { [nil] = {}, Start = function(L0)

end }
o8186 = FormationLib.CreateFormation("Triangle", "", "", "", 35, 35)
S_o8187 = { [nil] = {}, Start = function(L0)

end }
S_o8188 = { [nil] = {}, Start = function(L0)

end }
S_o8189 = { [nil] = {}, Start = function(L0)

end }
S_o8190 = { [nil] = {}, Start = function(L0)

end }
S_o8191 = { [nil] = {}, Start = function(L0)

end }
S_o8192 = { [nil] = {}, Start = function(L0)

end }
S_o8193 = { [nil] = {}, Start = function(L0)

end }
S_o8194 = { [nil] = {}, Start = function(L0)

end }
S_o8195 = { [nil] = {}, Start = function(L0)

end }
S_o8196 = { [nil] = {}, Start = function(L0)

end }
S_o8197 = { [nil] = {}, Start = function(L0)

end }
S_o8198 = { [nil] = {}, Start = function(L0)

end }
S_o8199 = { [nil] = {}, Start = function(L0)

end }
S_o8200 = { [nil] = {}, Start = function(L0)

end }
o8202 = FormationLib.CreateFormation("Line", "", "", "", 30, 30)
S_o8203 = { [nil] = {}, Start = function(L0)

end }
S_o8204 = { [nil] = {}, Start = function(L0)

end }
S_o8205 = { [nil] = {}, Start = function(L0)

end }
S_o8208 = { [nil] = {}, Start = function(L0)

end }
S_o8209 = { [nil] = {}, Start = function(L0)

end }
S_o8210 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o8184, o8186, "/IngameSequences/Navigation/Player_Path")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1", 0, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MoveTo_1", 0, "MMMN", 0)
  CallFunction(o8210, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.25, "Code9")
  else
    CallFunction(o8210, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MoveTo_2", 4, "MMMN", 0)
  CallFunction(o8210, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.75, "Code11")
  else
    CallFunction(o8210, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MoveTo_3", 4, "MMMN", 0)
  CallFunction(o8210, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.75, "Code13")
  else
    CallFunction(o8210, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MoveTo_4", 4, "MMMN", 0)
  CallFunction(o8210, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.75, "Code15")
  else
    CallFunction(o8210, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MoveTo_5", 4, "MMMN", 0)
  CallFunction(o8210, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.75, "Code17")
  else
    CallFunction(o8210, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/MoveTo_6", 6, "MMMN", 0)
  CallFunction(o8210, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code19")
  else
    CallFunction(o8210, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_Cut(L0.Node, 2)
  Game_PlayMusic(GetGameNode(), "agressive")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  CallFunction(o8210, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8184, o8186, "/IngameSequences/Navigation/Player_Path", "pos_1", "pos_3", 1, 1, "Code24")
  else
    CallFunction(o8210, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Director_EndCutscene(L0.Node)
  CallFunction(o6484, "Code6")
  CallFunction(o6538, "Code6")
  CallFunction(o6591, "Code6")
  CallFunction(o6644, "Code6")
  Game_SetWayPoint(GetGameNode(), o7230.Node)
  SED_SetTaskTextKey(1275, -1, -1)
  CallFunction(o8210, "Code31")
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o8218 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8218, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track3")
  SetEnemyMatrixElement(0, 2, N)
  SetEnemyMatrixElement(0, 3, N)
  SetEnemyMatrixElement(0, 6, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o8184, o8186, "/IngameSequences/Navigation/Player_Path1_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o8218, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code13")
  else
    CallFunction(o8218, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_2", 16.5, "MMMN", 0)
  CallFunction(o8218, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8184, o8186, "/IngameSequences/Navigation/Player_Path1_1", "pos_1", "pos_5", 0.5, 1, "Code15")
  else
    CallFunction(o8218, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_3", 9, "MMMN", 0)
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1_1", 4, "MMMN", 0)
  CallFunction(o8218, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 12, "Code19")
  else
    CallFunction(o8218, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 4, "MMMN", 0)
  CallFunction(o8218, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code21")
  else
    CallFunction(o8218, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1_1", 4, "MMMN", 0)
  CallFunction(o8218, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6, "Code23")
  else
    CallFunction(o8218, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  FormationLib.PlaceFormationPath(o8185, o8186, "/IngameSequences/Navigation/Player_Path1_2")
  FormationLib.PlaceFormationPath(o8201, o8186, "/IngameSequences/Navigation/Wing_Path1_1")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_4", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1_2", 6, "MMMN", 0)
  CallFunction(o8218, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 6.5, "Code28")
  else
    CallFunction(o8218, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_5", 6, "MMMN", 0)
  Camera_LookAhead(L0.Node, 1, 3)
  CallFunction(o8218, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5.75, "Code31")
  else
    CallFunction(o8218, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_6", 5, "MMMN", 0)
  CallFunction(o8218, "Code32")
end, Code32 = function(L0)
  L0["CodeIndex"] = 32
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.75, "Code33")
  else
    CallFunction(o8218, "Code33")
  end
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_7", 9, "MMMN", 0)
  CallFunction(o8218, "Code34")
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8.75, "Code35")
  else
    CallFunction(o8218, "Code35")
  end
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1_8", 10, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_1_3", 10, "MMMN", 0)
  CallFunction(o8218, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code38")
  else
    CallFunction(o8218, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  SendRadioMessageTake(o6644.Node, o6440.Node, 1247)
  CallFunction(o8218, "Code39")
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 7, "Code40")
  else
    CallFunction(o8218, "Code40")
  end
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o6440.Node, o6440.Node, 1248)
  Game_SetWayPoint(GetGameNode(), o7235.Node)
  SetEnemyMatrixElement(0, 2, E)
  SED_SetTaskTextKey(1276, -1, -1)
  CallFunction(o8218, "Code45")
end, Code45 = function(L0)
  L0["CodeIndex"] = 45
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8219.Value ~= True) then
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
o8219 = { [nil] = {}, GetCalculated = function()
  if not (o6446.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8219.SetStateValue(o8219.GetCalculated())
end, StartCalculate = function()
  o8219["Value"] = o8219.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8219.Value == L0) then
    DelayedFunction(5, o8219, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8219.Value == L0) then
    o8219["Value"] = L0
    CallFunction(o8218, "ProcesseStateChange")
  end
end }
S_o8231 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8231, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code2")
  else
    CallFunction(o8231, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o6440.Node, o6440.Node, 54)
  CallFunction(o8231, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8232.Value ~= True) then
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
o8232 = { [nil] = {}, GetCalculated = function()
  if not (o6446.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8232.SetStateValue(o8232.GetCalculated())
end, StartCalculate = function()
  o8232["Value"] = o8232.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8232.Value == L0) then
    DelayedFunction(5, o8232, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8232.Value == L0) then
    o8232["Value"] = L0
    CallFunction(o8231, "ProcesseStateChange")
  end
end }
S_o8235 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8235, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_PlayMusic(GetGameNode(), "track4")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  FormationLib.PlaceFormationPath(o8185, o8186, "/IngameSequences/Navigation/Player_Path4")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.25, "MFMY", 5)
  CallFunction(o8235, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code10")
  else
    CallFunction(o8235, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8185, o8186, "/IngameSequences/Navigation/Player_Path5", "pos_1", "pos_2", 1, 1, "Code11")
  else
    CallFunction(o8235, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  FormationLib.PlaceFormationPath(o8201, o8202, "/IngameSequences/Navigation/Wings_Path1")
  CallFunction(o8235, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8201, o8202, "/IngameSequences/Navigation/Wings_Path1", "pos_1", "pos_4", 1, 1, "Code13")
  else
    CallFunction(o8235, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/LookAt_2", 0, "MMMN", 0)
  FormationLib.PlaceFormationPath(o8206, o8186, "/IngameSequences/Navigation/PicoHarpLisa_Path1")
  FormationLib.PlaceFormationPath(o8207, o8186, "/IngameSequences/Navigation/DeGrange_DockOn_PathS")
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o8235, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code20")
  else
    CallFunction(o8235, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  SendRadioMessageTake(o6440.Node, o6440.Node, 53)
  CallFunction(o8235, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code22")
  else
    CallFunction(o8235, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_6", 7, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Harper_c2_1", 2, "MMMN", 0)
  SendRadioMessageTake(o6440.Node, o6440.Node, 1249)
  CallFunction(o8235, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8206, o8186, "/IngameSequences/Navigation/PicoHarpLisa_Path1", "pos_2", "pos_3", 1, 1, "Code26")
  else
    CallFunction(o8235, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/DeGrange_c2_1", 2, "MMMN", 0)
  CallFunction(o8235, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o8207, o8186, "/IngameSequences/Navigation/DeGrange_DockOn_PathS", "pos_1", "pos_2", 1, 1, "Code28")
  else
    CallFunction(o8235, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Director_EndCutscene(L0.Node)
  CallFunction(o6484, "Code10")
  CallFunction(o6538, "Code11")
  CallFunction(o6591, "Code11")
  CallFunction(o6644, "Code11")
  SendRadioMessageTake(o6484.Node, o6440.Node, 56)
  Game_SetWayPoint(GetGameNode(), o7245.Node)
  SED_SetTaskTextKey(1278, -1, -1)
  CallFunction(o8235, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8236.Value ~= True) then
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
o8236 = { [nil] = {}, GetCalculated = function()
  if not (o6448.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8236.SetStateValue(o8236.GetCalculated())
end, StartCalculate = function()
  o8236["Value"] = o8236.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8236.Value == L0) then
    DelayedFunction(2, o8236, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o8236.Value == L0) then
    o8236["Value"] = L0
    CallFunction(o8235, "ProcesseStateChange")
  end
end }
S_o8241 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8241, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_3", 2, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/DeGrange_c2_1", 5, "MMMN", 0)
  CallFunction(o8241, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5.75, "Code4")
  else
    CallFunction(o8241, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o8185, o8186, "/IngameSequences/Navigation/Player_Path6")
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_4", 5, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/DeGrange_c2_1", 1, "MMMN", 0)
  CallFunction(o8241, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8242.Value ~= True) then
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
o8242 = { [nil] = {}, GetCalculated = function()
  if not (o8260.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8242.SetStateValue(o8242.GetCalculated())
end, StartCalculate = function()
  o8242["Value"] = o8242.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8242.Value == L0) then
    o8242["Value"] = L0
    CallFunction(o8241, "ProcesseStateChange")
  end
end }
S_o8245 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8245, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SetEnemyMatrixElement(0, 2, N)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_7", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/DeGrange_c2_1", 0.001, "MMMN", 0)
  CallFunction(o8245, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 11, "Code9")
  else
    CallFunction(o8245, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_8", 4, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/CapeFearGroup_Directory/ent_capefear_big_1", 5, "MMMN", 0)
  CallFunction(o8245, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code12")
  else
    CallFunction(o8245, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Director_EndCutscene(L0.Node)
  SetEnemyMatrixElement(0, 2, E)
  SED_SetTaskTextKey(1280, -1, -1)
  CallFunction(o8245, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 20, "Code16")
  else
    CallFunction(o8245, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  o6454.SetStateValue(True)
  CallFunction(o8245, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8246.Value ~= True) then
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
o8246 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8246.SetStateValue(o8246.GetCalculated())
end, StartCalculate = function()
  o8246["Value"] = o8246.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8246.Value == L0) then
    o8246["Value"] = L0
    CallFunction(o8245, "ProcesseStateChange")
  end
end }
S_o8251 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8251, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.25, "Code2")
  else
    CallFunction(o8251, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o6484.Node, o6440.Node, 1177)
  SendRadioMessageTake(o6440.Node, o6440.Node, 1178)
  SendRadioMessageTake(o6440.Node, o6440.Node, 58)
  CallFunction(o8251, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o8252.Value ~= True) then
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
o8252 = { [nil] = {}, GetCalculated = function()
  if not (o6452.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o8252.SetStateValue(o8252.GetCalculated())
end, StartCalculate = function()
  o8252["Value"] = o8252.GetCalculated()
end, SetStateValue = function(L0)
  if not (o8252.Value == L0) then
    o8252["Value"] = L0
    CallFunction(o8251, "ProcesseStateChange")
  end
end }
S_o8255 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8255, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8255, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o8255, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "DeGrange_c2_1", "harper_c2_1", "Pico_c2_1", "", False, False, True)
  CallFunction(o8255, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o8255, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o8255, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o8260.SetStateValue(L1)
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
o8260 = { [nil] = {}, Start = function()
  o8260["Value"] = False
  o8242.StartCalculate()
end, SetStateValue = function(L0)
  if not (o8260.Value == L0) then
    o8260["Value"] = L0
    o8242.ReCalculate()
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 426)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o31 = BindEasy(Node_Find("/Scenario_Static/Navigation"), "300_Sphere", S_o31)
  o32 = BindEasy(Node_Find("/Scenario_Static/Object"), "Liberty", S_o32)
  o67 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock1_libertycity", S_o67)
  o101 = BindEasy(Node_Find("/Scenario_Static/Object"), "LibertyDock", S_o101)
  o135 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock1_4_1", S_o135)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock3_2", S_o169)
  o203 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraft22_1", S_o203)
  o237 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schwim_1", S_o237)
  o271 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk2_1", S_o271)
  o305 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_werk1_1", S_o305)
  o339 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o339)
  o373 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_1", S_o373)
  o407 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangM_2", S_o407)
  o441 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangK_1", S_o441)
  o475 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangK_2", S_o475)
  o509 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangK_3", S_o509)
  o543 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_gangK_4", S_o543)
  o577 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_1", S_o577)
  o611 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_1", S_o611)
  o645 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kuppel_2", S_o645)
  o679 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_18", S_o679)
  o713 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o713)
  o747 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o747)
  o781 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_4", S_o781)
  o815 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_5", S_o815)
  o849 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_8", S_o849)
  o883 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_9", S_o883)
  o917 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_10", S_o917)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_11", S_o951)
  o985 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3b_02_1", S_o985)
  o1019 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_04_2", S_o1019)
  o1053 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_04_3", S_o1053)
  o1087 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_04_4", S_o1087)
  o1121 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_02_2", S_o1121)
  o1155 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_02_3", S_o1155)
  o1189 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott1_1", S_o1189)
  o1223 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott1_2", S_o1223)
  o1257 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_1", S_o1257)
  o1291 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_2", S_o1291)
  o1325 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_3", S_o1325)
  o1359 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_4", S_o1359)
  o1393 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_5", S_o1393)
  o1427 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott2_6", S_o1427)
  o1461 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_1", S_o1461)
  o1495 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_2", S_o1495)
  o1529 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schrott3_3", S_o1529)
  o1563 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o1563)
  o1597 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_2", S_o1597)
  o1631 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_1", S_o1631)
  o1665 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_2", S_o1665)
  o1699 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turbine_3", S_o1699)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_1", S_o1733)
  o1767 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_2", S_o1767)
  o1801 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml2_3", S_o1801)
  o1835 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_02_1", S_o1835)
  o1869 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_01_1", S_o1869)
  o1903 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3b_01_1", S_o1903)
  o1937 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_05_1", S_o1937)
  o1971 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_04_1", S_o1971)
  o2005 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_1", S_o2005)
  o2039 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_2", S_o2039)
  o2073 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_7", S_o2073)
  o2107 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_8", S_o2107)
  o2141 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_9", S_o2141)
  o2175 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_10", S_o2175)
  o2209 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_11", S_o2209)
  o2243 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_12", S_o2243)
  o2277 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_1", S_o2277)
  o2311 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_2", S_o2311)
  o2345 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_3", S_o2345)
  o2379 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_4", S_o2379)
  o2413 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_5", S_o2413)
  o2447 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_6", S_o2447)
  o2481 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_7", S_o2481)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai1_8", S_o2515)
  o2549 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o2549)
  o2583 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_big_1", S_o2583)
  o2617 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_1", S_o2617)
  o2651 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o2651)
  o2685 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turbine1v1_2", S_o2685)
  o2719 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turbine1v1_1", S_o2719)
  o2753 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turbine1v2_2", S_o2753)
  o2787 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turbine2_2", S_o2787)
  o2821 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_turbine2_1", S_o2821)
  o2855 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_synapse_1", S_o2855)
  o2889 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_2", S_o2889)
  o2923 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_3", S_o2923)
  o2957 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_ent_1", S_o2957)
  o2991 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_1", S_o2991)
  o3025 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_2", S_o3025)
  o3059 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o3059)
  o3093 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_chimney1_2_1", S_o3093)
  o3127 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_dock1_4_2", S_o3127)
  o3161 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3a_01_2", S_o3161)
  o3195 = BindEasy(Node_Find("/Scenario_Static/Object"), "ent_wblock3b_03_1", S_o3195)
  o3229 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_3", S_o3229)
  o3263 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_4", S_o3263)
  o3297 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_5", S_o3297)
  o3331 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_6", S_o3331)
  o3365 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_1", S_o3365)
  o3399 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_2", S_o3399)
  o3433 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tank_sml_1", S_o3433)
  o3467 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_1", S_o3467)
  o3470.Start()
  o3502 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_2", S_o3502)
  o3505.Start()
  o3537 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_3", S_o3537)
  o3540.Start()
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_4", S_o3572)
  o3575.Start()
  o3607 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_5", S_o3607)
  o3610.Start()
  o3642 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_parabolic_6", S_o3642)
  o3645.Start()
  o3677 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_1/Turm1", S_o3677)
  o3715 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_2/Turm1", S_o3715)
  o3753 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_3/Turm1", S_o3753)
  o3791 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_4/Turm1", S_o3791)
  o3829 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_5/Turm1", S_o3829)
  o3867 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_6/Turm1", S_o3867)
  o3905 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_7/Turm1", S_o3905)
  o3943 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_9/Turm1", S_o3943)
  o3981 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_1/Turm1", S_o3981)
  o4019 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_2/Turm1", S_o4019)
  o4057 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_3/Turm1", S_o4057)
  o4095 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_4/Turm1", S_o4095)
  o4133 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_5/Turm1", S_o4133)
  o4171 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_6/Turm1", S_o4171)
  o4209 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_13/Turm1", S_o4209)
  o4247 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_15/Turm1", S_o4247)
  o4285 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_7/Turm1", S_o4285)
  o4323 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_8/Turm1", S_o4323)
  o4361 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_16/Turm1", S_o4361)
  o4399 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_turret_medium_17/Turm1", S_o4399)
  o4437 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_9/Turm1", S_o4437)
  o4475 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_GateTowers"), "Gate_torp_maneater_10/Turm1", S_o4475)
  o4513 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_turret_1/Turm1", S_o4513)
  o4551 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_turret_2/Turm1", S_o4551)
  o4589 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_turret_3/Turm1", S_o4589)
  o4627 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_turret_4/Turm1", S_o4627)
  o4665 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_turret_5/Turm1", S_o4665)
  o4703 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_turret_6/Turm1", S_o4703)
  o4741 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_SynapseTowers"), "Syn_torptower_1/Turm1", S_o4741)
  o4779 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_1/Turm1", S_o4779)
  o4817 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_torp_maneater_1/Turm1", S_o4817)
  o4855 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_2/Turm1", S_o4855)
  o4893 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_torp_maneater_2/Turm1", S_o4893)
  o4931 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_3/Turm1", S_o4931)
  o4969 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_4/Turm1", S_o4969)
  o5007 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_torp_maneater_3/Turm1", S_o5007)
  o5045 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_torp_maneater_4/Turm1", S_o5045)
  o5083 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_torp_maneater_5/Turm1", S_o5083)
  o5121 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_5/Turm1", S_o5121)
  o5159 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_6/Turm1", S_o5159)
  o5197 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_7/Turm1", S_o5197)
  o5235 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_8/Turm1", S_o5235)
  o5273 = BindEasy(Node_Find("/Scenario_Static/Object/DIR_CanyonTowers"), "Can_turret_medium_9/Turm1", S_o5273)
  o5311 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_trafo_01_1", S_o5311)
  o5314.Start()
  o5346 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_trafo_01_2", S_o5346)
  o5349.Start()
  o5381 = BindEasy(Node_Find("/Scenario_Static/Object"), "des_trafo_01_3", S_o5381)
  o5384.Start()
  o5416 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_starfound_1", S_o5416)
  o5450 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_starfound_2", S_o5450)
  o5484 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_3/Turm1", S_o5484)
  o5522 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_4/Turm1", S_o5522)
  o5560 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_5/Turm1", S_o5560)
  o5598 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o5598)
  o5636 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_2/Turm1", S_o5636)
  o5674 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o5674)
  o5712 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o5712)
  o5750 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o5750)
  o5788 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_6/Turm1", S_o5788)
  o5826 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_7/Turm1", S_o5826)
  o5864 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_8/Turm1", S_o5864)
  o5902 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_9/Turm1", S_o5902)
  o5940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_10/Turm1", S_o5940)
  o5978 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_11/Turm1", S_o5978)
  o6016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_1", S_o6016)
  o6050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o6050)
  o6084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_4", S_o6084)
  o6118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_13", S_o6118)
  o6152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_14", S_o6152)
  o6186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_2", S_o6186)
  o6220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o6220)
  o6254 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_3", S_o6254)
  o6288 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_4", S_o6288)
  o6322 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tower_5", S_o6322)
  o6356 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry3_1", S_o6356)
  o6390 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock1_3", S_o6390)
  o6424 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o6424)
  o6425 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1b", S_o6425)
  o6426 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_2", S_o6426)
  o6427 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_3", S_o6427)
  o6428 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SteahlTrigger_1", S_o6428)
  o6433.Start()
  o6434 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SteahlTrigger_2", S_o6434)
  o6439.Start()
  o6440 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o6440)
  o6449.Start()
  o6452.Start()
  o6454.Start()
  o6484 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "DeGrange_c2_1", S_o6484)
  o6495.Start()
  o6496.Start()
  o6538 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Harper_c2_1", S_o6538)
  o6548.Start()
  o6591 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Pico_c2_1", S_o6591)
  o6601.Start()
  o6644 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Bonham_c2_1", S_o6644)
  o6697 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_1_d", S_o6697)
  o6745 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_2_d", S_o6745)
  o6793 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_3_d", S_o6793)
  o6841 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_4_d", S_o6841)
  o6889 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_bomber_1_d", S_o6889)
  o6937 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_bomber_1", S_o6937)
  o6944.Start()
  o6987 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_1", S_o6987)
  o6993.Start()
  o7036 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_2", S_o7036)
  o7042.Start()
  o7085 = BindEasy(Node_Find("/Scenario_Dynamic/Object/FakeFightUnits_Directory"), "fake_scout_3", S_o7085)
  o7091.Start()
  o7134 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "syn_scout_1", S_o7134)
  o7182 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "syn_scout_2", S_o7182)
  o7230 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o7230)
  o7233.Start()
  o7235 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02", S_o7235)
  o7238.Start()
  o7240 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03", S_o7240)
  o7243.Start()
  o7245 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_follow", S_o7245)
  o7250 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_capefear_big_1", S_o7250)
  o7300 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_bomber_1", S_o7300)
  o7349 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_bomber_2", S_o7349)
  o7398 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_1", S_o7398)
  o7447 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_2", S_o7447)
  o7496 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_3", S_o7496)
  o7545 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_4", S_o7545)
  o7594 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_5", S_o7594)
  o7643 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_6", S_o7643)
  o7692 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_7", S_o7692)
  o7741 = BindEasy(Node_Find("/Scenario_Dynamic/Object/CapeFearGroup_Directory"), "ent_scout_8", S_o7741)
  o7790 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_1", S_o7790)
  o7825 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_3", S_o7825)
  o7860 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_4", S_o7860)
  o7895 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_6", S_o7895)
  o7930 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_8", S_o7930)
  o7965 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_9", S_o7965)
  o8000 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_11", S_o8000)
  o8035 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_12", S_o8035)
  o8070 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_13", S_o8070)
  o8105 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_14", S_o8105)
  o8140 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Mines_Directory"), "des_mine01_15", S_o8140)
  o8175 = BindEasy(Node_Find("/"), "Camera", S_o8175)
  o8176 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MoveTo_1", S_o8176)
  o8177 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MoveTo_2", S_o8177)
  o8178 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MoveTo_3", S_o8178)
  o8179 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MoveTo_4", S_o8179)
  o8180 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MoveTo_5", S_o8180)
  o8181 = BindEasy(Node_Find("/IngameSequences/Navigation"), "MoveTo_6", S_o8181)
  o8182 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1", S_o8182)
  o8183 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o8183)
  o8187 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_1", S_o8187)
  o8188 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_2", S_o8188)
  o8189 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_3", S_o8189)
  o8190 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1_1", S_o8190)
  o8191 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_4", S_o8191)
  o8192 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1_2", S_o8192)
  o8193 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_5", S_o8193)
  o8194 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_6", S_o8194)
  o8195 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_7", S_o8195)
  o8196 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1_8", S_o8196)
  o8197 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_1_3", S_o8197)
  o8198 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_2", S_o8198)
  o8199 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_3", S_o8199)
  o8200 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_4", S_o8200)
  o8203 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_5", S_o8203)
  o8204 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookAt_2", S_o8204)
  o8205 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_6", S_o8205)
  o8208 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_7", S_o8208)
  o8209 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_8", S_o8209)
  o8255 = BindEasy(Node_Find("/IngameSequences/Trigger"), "TriggerPresenceBox_2", S_o8255)
  o8260.Start()
  o8210 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o8210)
  o8218 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_V", S_o8218)
  o8231 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter2_Intro_A", S_o8231)
  o8235 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_Intro_V", S_o8235)
  o8241 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter3_AddOn_V", S_o8241)
  o8245 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter4_Intro_V", S_o8245)
  o8251 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter4_Intro_A", S_o8251)
  o8184 = { {}, o6440, o6484, o6538, o6591, o6644 }()
  o8185 = { {}, o6440 }()
  o8201 = { {}, o6484, o6538, o6591, o6644 }()
  o8206 = { {}, o6538, o6591, o6644 }()
  o8207 = { {}, o6484 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end