-- dekompiliert aus map\1h3\script\sta_vespucci.sco
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
  Terrain_LoadTerrain(node1, "map/1H3/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H3/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.2)
  Game_SetCausticObject(node0, 0.1, 0.2)
  Game_SetCausticBuilding(node0, 0.025, 0.2)
  Game_SetLightCache(node0, "map/Vespucci_new/Lmsh/", "map/Vespucci_new/Ltex/")
  Game_SetTerrainDepth(node0, 3666)
  Game_SetDecompressionHeight(node0, 550)
  Game_SetAmbientLight(node0, 0.035294, 0.14902, 0.243137)
  Game_SetParallelLightT(node0, 0.05098, 0.227451, 0.368627)
  Game_SetParallelLightB(node0, 0.407843, 0.501961, 0.117647)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
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
  node8 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(1413.495, 1743.548, 272.4659), MAT_Vector3(-89.8889, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_trafoA_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(447.2568, 1726.345, 144.712), MAT_Vector3(-4.345602, -2.979695, 3.276294))
  Node_ParseIniFile(node9, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_trafoA_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(447.6578, 1705.09, 144.712), MAT_Vector3(38.1113, -2.979695, 3.276294))
  Node_ParseIniFile(node10, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_bunker_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1009.954, 2026.298, 245.7329), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_bunker_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(564.6922, 1770.78, 138.9272), MAT_Vector3(-53.1871, 0, 0))
  Node_ParseIniFile(node12, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_bunker_5")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(796.3074, 1908.287, 195), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node13, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_bunker_6")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(796.2914, 2019.544, 196), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node14, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_turm_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(1089.959, 2071.848, 246.4094), MAT_Vector3(0, 2, -2))
  Node_ParseIniFile(node15, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_turm_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1090.498, 2034.126, 249.6299), MAT_Vector3(0, 1, -5))
  Node_ParseIniFile(node16, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "gen_sbunker_5")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(725.7669, 2307.739, 421.9912), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node17, "osd/gen/gen_starfound.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_schorn1_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(796.6055, 1890.465, 240), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_schorn1_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(796.0442, 2037.669, 241), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_chimney1.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_dock")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(774.581, 1670.974, 189.3006), MAT_Vector3(125, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_dock.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_tnk_k2_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(710.9675, 2044.155, 181.6757), MAT_Vector3(-22.8574, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_tank_sml2.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "gen_kraftw22_2")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(486.1949, 1808.287, 138.0677), MAT_Vector3(127.5653, 0, 0))
  Node_ParseIniFile(node22, "osd/gen/gen_pplant22.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_tnkg2_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(369.9151, 1749.851, 135.9568), MAT_Vector3(-0.4065, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_tank_big2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_pole_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(1022.253, 2053.531, 292.2151), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_pole2_5")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(953.2603, 1964.472, 235.9956), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_pole2_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(731.0307, 2006.437, 194.8237), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "gen_pole1_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(1065.75, 1429.095, 290.8411), MAT_Vector3(0, 0, 2))
  Node_ParseIniFile(node27, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "gen_pole1_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(1157.066, 1180.289, 285.8597), MAT_Vector3(0, 0, -4))
  Node_ParseIniFile(node28, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "gen_pole1_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(793.951, 957.132, 137.9162), MAT_Vector3(0, 0, -10))
  Node_ParseIniFile(node29, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "gen_pole1_4")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(650.0492, 659.8303, 173.9369), MAT_Vector3(0, 0, 1))
  Node_ParseIniFile(node30, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "gen_pole1_5")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1737.518, 1879.106, 316.394), MAT_Vector3(35.09718, -10, 0))
  Node_ParseIniFile(node31, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "gen_pole1_6")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1859.984, 2115.538, 280.4351), MAT_Vector3(35.09718, 5, 0))
  Node_ParseIniFile(node32, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "gen_pole2_7")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(696.2303, 2296.238, 428.4232), MAT_Vector3(0, 3, 2))
  Node_ParseIniFile(node33, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "gen_pole2_10")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1163, 3300, 525), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "gen_pole2_11")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1224, 3300, 525), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "gen_stab3_1")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(471.2658, 1716.724, 153.847), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node36, "osd/gen/gen_pole2.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "gen_stab1_1")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(766.8154, 1964.355, 205.7003), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node37, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "gen_stab1_2")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(825.3952, 1964.741, 204.696), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node38, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "gen_stab1_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(587.2863, 2012.528, 201.7423), MAT_Vector3(-114.3082, -0.493379, -0.373242))
  Node_ParseIniFile(node39, "osd/gen/gen_pole.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "gen_bunker_4")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1192.8, 3297.286, 481.0851), MAT_Vector3(89.88087, 0, 0))
  Node_ParseIniFile(node40, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "gen_trafo_2")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1301.867, 3266.627, 472.2551), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/gen/gen_trafo.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "gen_turm_4")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1113.313, 3324.749, 485.8806), MAT_Vector3(0, -4, 0))
  Node_ParseIniFile(node42, "osd/gen/gen_tower.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "gen_turret_1")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(565.262573, 1769.865708, 182.753352), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node43, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "gen_turret_3")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1123.029406, 1539.448058, 235.598985), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node44, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "gen_turret_4")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1014.247216, 1950.108181, 236.42553), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "gen_turret_5")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1346.004058, 1744.120454, 308.485876), MAT_Vector3(-168.750178, 0, 0))
  Node_ParseIniFile(node46, "osd/gen/gen_turret.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node47)
  Node_ParseIniFile(node47, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_fx_sky", "fx_sky_11_1")
  Node_AddSon(node7, node48)
  Node_ParseIniFile(node48, "osd/fx_sky/fx_sky_11.osd")
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node49)
  Node_ParseIniFile(node49, "osd/fx_plankton/fx_plankton_cyan.osd")
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
  node53 = Node_CreateNode("NOD_Path", "polpath_1")
  Node_AddSon(node52, node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node53, node54)
  Position_SetPosition(node54, MAT_Vector3(892.8442, 1833.119, 300))
  Position_SetRadius(node54, 5)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node53, node55)
  Position_SetPosition(node55, MAT_Vector3(895.717, 2114.306, 297.1465))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node53, node56)
  Position_SetPosition(node56, MAT_Vector3(1078.43, 2117.429, 325.7701))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node53, node57)
  Position_SetPosition(node57, MAT_Vector3(1083.115, 1855.072, 326.0575))
  Position_SetRadius(node57, 5)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node53, node58)
  Position_SetPosition(node58, MAT_Vector3(1150.145, 1725.243, 309.9674))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node53, node59)
  Position_SetPosition(node59, MAT_Vector3(1193.813, 1460.322, 313.1821))
  Position_SetRadius(node59, 8)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node53, node60)
  Position_SetPosition(node60, MAT_Vector3(1018.023, 1541.736, 331.8261))
  Position_SetRadius(node60, 8)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node53, node61)
  Position_SetPosition(node61, MAT_Vector3(1187.241, 1703.054, 316.1313))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node53, node62)
  Position_SetPosition(node62, MAT_Vector3(1118.252, 1860.537, 340.5567))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node53, node63)
  Position_SetPosition(node63, MAT_Vector3(978.4845, 1838.674, 287.6534))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_PatrolArea", "trafficarea_1")
  Node_AddSon(node52, node64)
  PatrolArea_SetPosition(node64, MAT_Vector3(842.227, 1860.895, 282.9592))
  PatrolArea_SetRadius(node64, 550)
  PatrolArea_SetMinZ(node64, -150)
  PatrolArea_SetMaxZ(node64, 300)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node52, node65)
  PatrolArea_SetPosition(node65, MAT_Vector3(1005.741051, 1869.067974, 368.341388))
  PatrolArea_SetRadius(node65, 300)
  PatrolArea_SetMinZ(node65, -20)
  PatrolArea_SetMaxZ(node65, 50)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node50, node66)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node50, node67)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node50, node68)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node68, node69)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_vessel", "atl_scout1_3")
  Node_AddSon(node69, node70)
  Body_SetCS(node70, MAT_Vector3(863.565292, 1820.419097, 237.109174), MAT_Vector3(-39.0881, 3.071786, 4.008778))
  Node_ParseIniFile(node70, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node70, 3)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_vessel", "atl_scout2_1")
  Node_AddSon(node69, node71)
  Body_SetCS(node71, MAT_Vector3(638.271212, 2328.532247, 461.4095), MAT_Vector3(-173.6232, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_scout2.osd")
  Body_SetFriendOrFoeID(node71, 3)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_vessel", "atl_scout1_2")
  Node_AddSon(node69, node72)
  Body_SetCS(node72, MAT_Vector3(665.2218, 1999.717, 376.0939), MAT_Vector3(-67.62441, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node72, 3)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_vessel", "atl_scout1_1")
  Node_AddSon(node69, node73)
  Body_SetCS(node73, MAT_Vector3(941.330449, 1681.017584, 234.5789), MAT_Vector3(-87.38418, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_scout1.osd")
  Body_SetFriendOrFoeID(node73, 3)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_vessel", "dum_freighter")
  Node_AddSon(node69, node74)
  Body_SetCS(node74, MAT_Vector3(760.1247, 1623.31, 419.3558), MAT_Vector3(34.33081, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_freighter2.osd")
  Body_SetFriendOrFoeID(node74, 3)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Directory", "police")
  Node_AddSon(node69, node75)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_vessel", "atl_polpat_5")
  Node_AddSon(node75, node76)
  Body_SetCS(node76, MAT_Vector3(1190.518018, 1544.545034, 300), MAT_Vector3(50.422774, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node76, 3)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_vessel", "atl_polpat_4")
  Node_AddSon(node75, node77)
  Body_SetCS(node77, MAT_Vector3(1231.464941, 1581.597416, 250.9434), MAT_Vector3(54.410465, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node77, 3)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_vessel", "atl_polpat_3")
  Node_AddSon(node75, node78)
  Body_SetCS(node78, MAT_Vector3(1208.639071, 1590.462935, 300), MAT_Vector3(46.448318, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node78, 3)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_vessel", "atl_polpat_2")
  Node_AddSon(node75, node79)
  Body_SetCS(node79, MAT_Vector3(1186.363945, 1563.168821, 300), MAT_Vector3(40.79111, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node79, 3)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_vessel", "atl_polpat_1")
  Node_AddSon(node75, node80)
  Body_SetCS(node80, MAT_Vector3(1186.822743, 1587.8223, 300), MAT_Vector3(34.544689, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_pscout.osd")
  Body_SetFriendOrFoeID(node80, 3)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node68, node81)
  Node_ParseIniFile(node81, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node81, "map/1H3/Terrain/coral01.tga")
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node68, node82)
  Node_ParseIniFile(node82, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node82, "map/1H3/Terrain/fungus01.tga")
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node68, node83)
  Node_ParseIniFile(node83, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node83, "map/1H3/Terrain/grass01.tga")
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node68, node84)
  Node_ParseIniFile(node84, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node84, "map/1H3/Terrain/stone01.tga")
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node85)
  Camera_SetBackPlane(node85, 512)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Scenario", "Station_Vespucci")
  Node_AddSon(node0, node86)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node86, node87)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node86, node88)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "MoveFrom")
  Node_AddSon(node88, node89)
  Position_SetPosition(node89, MAT_Vector3(826.089842, 2096.782129, 300))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "LookFrom")
  Node_AddSon(node88, node90)
  Position_SetPosition(node90, MAT_Vector3(851.93349, 2002.288023, 300))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "LookAt")
  Node_AddSon(node88, node91)
  Position_SetPosition(node91, MAT_Vector3(914.780503, 1627.139917, 270.113626))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node86, node92)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Director", "camera")
  Node_AddSon(node92, node93)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node86, node94)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node86, node95)
  Node_EnterSimulation(node95)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, N)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, F)
SetEnemyMatrixElement(5, 0, F)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, E)
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
SetEnemyMatrixElement(3, 1, E)
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
SetEnemyMatrixElement(0, 2, N)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, F)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, F)
SetEnemyMatrixElement(8, 2, N)
SetEnemyMatrixElement(9, 2, N)
SetEnemyMatrixElement(10, 2, N)
SetEnemyMatrixElement(11, 2, N)
SetEnemyMatrixElement(12, 2, N)
SetEnemyMatrixElement(13, 2, N)
SetEnemyMatrixElement(14, 2, N)
SetEnemyMatrixElement(15, 2, N)
SetEnemyMatrixElement(0, 3, N)
SetEnemyMatrixElement(1, 3, E)
SetEnemyMatrixElement(2, 3, N)
SetEnemyMatrixElement(3, 3, N)
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, F)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, E)
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
SetEnemyMatrixElement(2, 4, E)
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, N)
SetEnemyMatrixElement(5, 4, F)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, E)
SetEnemyMatrixElement(8, 4, N)
SetEnemyMatrixElement(9, 4, N)
SetEnemyMatrixElement(10, 4, N)
SetEnemyMatrixElement(11, 4, N)
SetEnemyMatrixElement(12, 4, N)
SetEnemyMatrixElement(13, 4, N)
SetEnemyMatrixElement(14, 4, N)
SetEnemyMatrixElement(15, 4, N)
SetEnemyMatrixElement(0, 5, F)
SetEnemyMatrixElement(1, 5, E)
SetEnemyMatrixElement(2, 5, F)
SetEnemyMatrixElement(3, 5, F)
SetEnemyMatrixElement(4, 5, F)
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
SetEnemyMatrixElement(0, 7, E)
SetEnemyMatrixElement(1, 7, N)
SetEnemyMatrixElement(2, 7, F)
SetEnemyMatrixElement(3, 7, E)
SetEnemyMatrixElement(4, 7, E)
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

end }
S_o64 = { [nil] = {}, Start = function(L0)

end }
S_o98 = { [nil] = {}, Start = function(L0)

end }
S_o132 = { [nil] = {}, Start = function(L0)

end }
S_o166 = { [nil] = {}, Start = function(L0)

end }
S_o200 = { [nil] = {}, Start = function(L0)

end }
S_o234 = { [nil] = {}, Start = function(L0)

end }
S_o268 = { [nil] = {}, Start = function(L0)

end }
S_o302 = { [nil] = {}, Start = function(L0)

end }
S_o336 = { [nil] = {}, Start = function(L0)

end }
S_o370 = { [nil] = {}, Start = function(L0)

end }
S_o404 = { [nil] = {}, Start = function(L0)

end }
S_o438 = { [nil] = {}, Start = function(L0)

end }
S_o472 = { [nil] = {}, Start = function(L0)

end }
S_o506 = { [nil] = {}, Start = function(L0)

end }
S_o540 = { [nil] = {}, Start = function(L0)

end }
S_o574 = { [nil] = {}, Start = function(L0)

end }
S_o608 = { [nil] = {}, Start = function(L0)

end }
S_o642 = { [nil] = {}, Start = function(L0)

end }
S_o676 = { [nil] = {}, Start = function(L0)

end }
S_o710 = { [nil] = {}, Start = function(L0)

end }
S_o744 = { [nil] = {}, Start = function(L0)

end }
S_o778 = { [nil] = {}, Start = function(L0)

end }
S_o812 = { [nil] = {}, Start = function(L0)

end }
S_o846 = { [nil] = {}, Start = function(L0)

end }
S_o880 = { [nil] = {}, Start = function(L0)

end }
S_o914 = { [nil] = {}, Start = function(L0)

end }
S_o948 = { [nil] = {}, Start = function(L0)

end }
S_o982 = { [nil] = {}, Start = function(L0)

end }
S_o1016 = { [nil] = {}, Start = function(L0)

end }
S_o1050 = { [nil] = {}, Start = function(L0)

end }
S_o1084 = { [nil] = {}, Start = function(L0)

end }
S_o1118 = { [nil] = {}, Start = function(L0)

end }
S_o1152 = { [nil] = {}, Start = function(L0)

end }
S_o1186 = { [nil] = {}, Start = function(L0)

end }
S_o1220 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1220, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1220, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1220, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1220, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1220, "Code5")
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
S_o1258 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1258, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1258, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1258, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1258, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1258, "Code5")
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
S_o1296 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1296, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1296, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1296, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1296, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1296, "Code5")
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
S_o1334 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1334, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1334, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1334, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1334, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1334, "Code5")
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
o1372 = FormationLib.CreateFormation("XForm", "", "", "", 20, 20)
S_o1374 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1374, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1374, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1374, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 666, 0.5, "Code4")
  else
    CallFunction(o1374, "Code4")
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
S_o1422 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1422, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1422, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1422, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 666, 0.3, "Code4")
  else
    CallFunction(o1422, "Code4")
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
S_o1470 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1470, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1470, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1470, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 666, 0.75, "Code4")
  else
    CallFunction(o1470, "Code4")
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
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1" }, 20, 0.25, "Code4")
  else
    CallFunction(o1518, "Code4")
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
S_o1566 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1566, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1566, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1566, "Code3")
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
S_o1613 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1613, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1613, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1613, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1613, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1613, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1373, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 0.75, 1 } }, o1372, "/Scenario_Dynamic/Navigation/trafficarea_1", 0, "", "", "", "", 25, 0.25, True, "Code7")
  else
    CallFunction(o1613, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o1661 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1661, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1661, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1661, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1661, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1661, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1373, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 0.75, 1 } }, o1372, "/Scenario_Dynamic/Navigation/trafficarea_1", 0, "", "", "", "", 25, 0.25, True, "Code7")
  else
    CallFunction(o1661, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o1709 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1709, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1709, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1709, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1709, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1709, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1373, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 0.75, 1 } }, o1372, "/Scenario_Dynamic/Navigation/trafficarea_1", 0, "", "", "", "", 25, 0.25, True, "Code7")
  else
    CallFunction(o1709, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o1757 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1757, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1757, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1757, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1757, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1757, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1373, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 0.75, 1 } }, o1372, "/Scenario_Dynamic/Navigation/trafficarea_1", 0, "", "", "", "", 25, 0.25, True, "Code7")
  else
    CallFunction(o1757, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
S_o1805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1805, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1805, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1805, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o1805, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vessel_CollisionTerrain(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  CallFunction(o1805, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.MilkRunGoto(L0, { o1373, { {}, "Goto", "/Scenario_Dynamic/Navigation/polpath_1", 0.75, 1 } }, o1372, "/Scenario_Dynamic/Navigation/trafficarea_1", 0, "", "", "", "", 25, 0.25, True, "Code7")
  else
    CallFunction(o1805, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
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
o1853 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o1855 = { [nil] = {}, Start = function(L0)

end }
S_o1856 = { [nil] = {}, Start = function(L0)

end }
S_o1857 = { [nil] = {}, Start = function(L0)

end }
S_o1858 = { [nil] = {}, Start = function(L0)

end }
S_o1859 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Camera_MoveTo(L0.Node, "/Station_Vespucci/Navigation/MoveFrom", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Station_Vespucci/Navigation/LookAt", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  CallFunction(o1859, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.15, "Code4")
  else
    CallFunction(o1859, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/Station_Vespucci/Navigation/LookFrom", 3, "MMMN", 0)
  CallFunction(o1859, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 95)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafoA_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafoA_2", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_2", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_5", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_6", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_1", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_2", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_sbunker_5", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_1", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_schorn1_2", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dock", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k2_1", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kraftw22_2", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnkg2_1", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole_1", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_5", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_2", S_o642)
  o676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_1", S_o676)
  o710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_2", S_o710)
  o744 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_3", S_o744)
  o778 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_4", S_o778)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_5", S_o812)
  o846 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole1_6", S_o846)
  o880 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_7", S_o880)
  o914 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_10", S_o914)
  o948 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pole2_11", S_o948)
  o982 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab3_1", S_o982)
  o1016 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_1", S_o1016)
  o1050 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_2", S_o1050)
  o1084 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_stab1_3", S_o1084)
  o1118 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_bunker_4", S_o1118)
  o1152 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_2", S_o1152)
  o1186 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turm_4", S_o1186)
  o1220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_1/Turm1", S_o1220)
  o1258 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_3/Turm1", S_o1258)
  o1296 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_4/Turm1", S_o1296)
  o1334 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_5/Turm1", S_o1334)
  o1374 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_3", S_o1374)
  o1422 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout2_1", S_o1422)
  o1470 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_2", S_o1470)
  o1518 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "atl_scout1_1", S_o1518)
  o1566 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "dum_freighter", S_o1566)
  o1613 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_5", S_o1613)
  o1661 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_4", S_o1661)
  o1709 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_3", S_o1709)
  o1757 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_2", S_o1757)
  o1805 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC/police"), "atl_polpat_1", S_o1805)
  o1855 = BindEasy(Node_Find("/"), "Camera", S_o1855)
  o1856 = BindEasy(Node_Find("/Station_Vespucci/Navigation"), "MoveFrom", S_o1856)
  o1857 = BindEasy(Node_Find("/Station_Vespucci/Navigation"), "LookFrom", S_o1857)
  o1858 = BindEasy(Node_Find("/Station_Vespucci/Navigation"), "LookAt", S_o1858)
  o1859 = BindEasy(Node_Find("/Station_Vespucci/Director"), "camera", S_o1859)
  o1373 = { {}, o1805, o1757, o1709, o1661, o1613 }()
  o1854 = { {}, o1613, o1661, o1709, o1757, o1805 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end