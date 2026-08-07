-- dekompiliert aus 5n1.sco
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
  Terrain_LoadTerrain(node1, "map/5H1/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/5H1/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.4, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.4, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.8, 2, 1, 60)
  Game_SetLightCache(node0, "map/5H1/Lmsh/", "map/5H1/Ltex/")
  Game_SetTerrainDepth(node0, 2203)
  Game_SetDecompressionHeight(node0, 400)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.094118, 0.105882, 0.129412)
  Game_SetParallelLightT(node0, 0.184314, 0.215686, 0.258824)
  Game_SetParallelLightB(node0, 0.094118, 0.105882, 0.129412)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_5n1.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_5N1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit4.sam", 1)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/5H1/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2073.465, 2435.761, 129.2463), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node8, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3923.485, 3162.483, 129.2463), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node9, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "atl_dock1_4_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(1535.22, 3499.061, 140.7347), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node10, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "atl_concordia_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(2376.587, 3257.644, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node11, "osd/atl/atl_concordia.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "atl_shipyard_2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(1105.844, 2671.703, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "atl_ec_obelisk_1")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3209.853, 3318.218, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node13, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "atl_ec_tower_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1230, 3177, 191.2339), MAT_Vector3(80, 0, 0))
  Node_ParseIniFile(node14, "osd/atl/atl_ec_tower.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "atl_ec_triumph_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3054.769, 2459.933, 118), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1230, 3177, 130), MAT_Vector3(89.81774, 0, 0))
  Node_ParseIniFile(node16, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_neo_house1_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(2146.324, 3473.884, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_neo_house2_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(3006.342, 1852.981, 122), MAT_Vector3(90.21938, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_neo_house3_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3741.885, 2374.919, 122), MAT_Vector3(-89.61197, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "atl_neo_house4_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2610.062, 3038.711, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node20, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "atl_neo_house5_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2570.748, 2690.341, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "atl_neo_house6_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2204.478, 2693.491, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "atl_neo_house1_2")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2978.109, 2719.454, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node23, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "atl_neo_house2_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2574.92, 2322.713, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node24, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "atl_neo_house3_2")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2937.703, 2207.593, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node25, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "atl_neo_house4_2")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3317.839, 2216.294, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "atl_neo_house5_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2964.182, 3465.773, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "atl_neo_house6_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2960.468, 3101.693, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "atl_neo_house1_3")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(1834.136, 2682.137, 122), MAT_Vector3(-89.90576, 0, 0))
  Node_ParseIniFile(node29, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "atl_neo_house2_3")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2140.641, 3839.051, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node30, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "atl_neo_house3_3")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(1806.202, 3039.115, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node31, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "atl_neo_house4_3")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(1788.409, 3394.038, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node32, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "atl_neo_house5_3")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1462.331, 3043.285, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node33, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "atl_neo_house6_3")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1269.722, 3408.016, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node34, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "atl_neo_house1_4")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1826.922, 4552.048, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node35, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "atl_neo_house2_4")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(920.2925, 3407.198, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node36, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "atl_neo_house3_4")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1791.384, 3755.214, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node37, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "atl_neo_house4_4")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(2184.476, 4546.447, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node38, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "atl_neo_house5_4")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(2267.938, 4195.637, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node39, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "atl_neo_house6_4")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1478.97, 4560.387, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node40, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "atl_neo_house1_5")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1436.313, 3751.422, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node41, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "atl_neo_house2_5")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2504.562, 3836.625, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node42, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "atl_neo_house3_5")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2623.55, 4191.919, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node43, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "atl_neo_house4_5")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1083.008, 3757.951, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node44, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "atl_neo_house5_5")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(734.6174, 3761.358, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node45, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "atl_neo_house6_5")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1117.218, 2944.916, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "atl_neo_house1_6")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(732.8609, 4111.736, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node47, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "atl_neo_house2_6")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(725.8118, 4459.8, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node48, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "atl_neo_house3_6")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1129.965, 4557.218, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node49, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "atl_neo_house4_6")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1469.361, 2693.728, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "atl_neo_house5_6")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(2862.33, 3836.712, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node51, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "atl_neo_house6_6")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(2531.15, 4545.612, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node52, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "atl_neo_house1_7")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1116.191, 2408.586, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node53, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "atl_neo_house2_7")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(757.3516, 2901.013, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "atl_neo_house3_7")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2215.779, 2174.997, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node55, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "atl_neo_house4_7")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1836.771, 2333.674, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node56, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "atl_neo_house5_7")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1480.429, 2338.323, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node57, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "atl_neo_house6_7")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1561.314, 1987.779, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node58, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "atl_neo_house1_8")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(3333.51, 2727.811, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node59, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "atl_neo_house3_8")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(3309.394, 3076.406, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node60, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "atl_neo_house4_8")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(2606.451, 3469.6, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node61, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "atl_neo_house5_8")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(3316.824, 3778.205, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node62, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "atl_neo_house6_8")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3160.805, 4186.863, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node63, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "atl_neo_house1_9")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3662.078, 3073.172, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "atl_neo_house2_9")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(3681.171, 2722.375, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node65, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "atl_neo_house3_9")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3668.463, 3775.134, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "atl_neo_house4_9")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3461.494, 3424.993, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node67, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "atl_neo_house5_9")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2903.124, 4565.731, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_neo_house6_9")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(3833.691, 3429.243, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_neo_house1_10")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(3268.311, 4558.106, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_neo_house2_10")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(4193.654, 3246.313, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_neo_house3_10")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(3362.993, 1850.257, 122), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_neo_house4_10")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(2151.069, 3047.624, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_neo_house1_11")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(4093.902, 2381.126, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_neo_house2_11")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2015.496, 4906.099, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_neo_house3_11")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3382.93, 4915.628, 122), MAT_Vector3(-0.335363, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_neo_house5_11")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(1658.892, 4920.058, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_neo_house6_11")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(1304.283, 4918.485, 122), MAT_Vector3(89.76241, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_neo_house5_12")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(746.7569, 2547.51, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_neo_house6_12")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(4043.509, 2732.785, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1116.499, 4194.17, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node81, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "gen_pplant1_2")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1261.193, 4193.412, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node82, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "gen_pplant1_3")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(1115.848, 4087.062, 126.3762), MAT_Vector3(179.9564, 0, 0))
  Node_ParseIniFile(node83, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "gen_pplant1_4")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1262.841, 4086.304, 126.3762), MAT_Vector3(-0.342134, 0, 0))
  Node_ParseIniFile(node84, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_pplant2_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(990.7348, 4193.845, 115.9661), MAT_Vector3(-179.9593, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_pplant2_2")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(990.3774, 4087.583, 115.9661), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1124.998, 4285.873, 135.8734), MAT_Vector3(90.00559, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1002.635, 4352.304, 110.053), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1040.658, 4286.509, 139.7296), MAT_Vector3(90.14769, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(990.6709, 4248.364, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(989.847, 4140.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1115.547, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1261.926, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_rohr_small02_10")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1095.479, 4317.799, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_rohr_small02_11")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(1095.479, 4348.278, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(1123.32, 4192.826, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(1123.129, 4086.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_rohr_small03_10")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1123.129, 3986.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_rohr_small03_11")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1133.572, 4280.691, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_pplant1_5")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1118.147, 3987.062, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_pplant1_6")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1262.841, 3986.304, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_pplant2_3")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(990.3774, 3987.583, 115.9661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(989.847, 4040.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1115.547, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1261.926, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_shelter_11")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1292.186, 4320.126, 138), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(1261.145, 4246.658, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1203.797, 4334.485, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1203.396, 4300.798, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "NAVYHQ")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(3778.916, 4279.821, 40), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node110, "osd/mac/mac_building1_big.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "navyhq_dockingnode_1")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(3843.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "navyhq_dockingnode_2")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(3775.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "navyhq_dockingnode_3")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(3705.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "navyhq_quay_1")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(3442.286, 4243.51, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "navyhq_quay_2")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3770.662, 4050.547, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "navyhq_quay_3")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3792.667, 4614.203, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "navyhq_shelter_1")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3895.218, 4466.632, 128.5559), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "navyhq_metalblock3_1")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3859.252, 4229.73, 126.6685), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "navyhq_metalblock2_1")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(3939.914, 4309.355, 130.7812), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "navyhq_dock3_3")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(3662.658, 4450.381, 128.2063), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node120, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Directory", "MUSEUM")
  Node_AddSon(node7, node121)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(955.7604, 4309.614, 176.9181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node122, 2)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "mu_museum_1")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(1972, 4132, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node123, "osd/atl/atl_museum.osd")
  Body_SetFriendOrFoeID(node123, 2)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "mu_bottom_hole_l_1")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(1458, 4309, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node124, "osd/atl/atl_bottom_hole_l.osd")
  Body_SetFriendOrFoeID(node124, 2)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "mu_bottom_03_1")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(1398, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node125, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node125, 2)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "mu_bottom_03_2")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(1398, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node126, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node126, 2)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "mu_bottom_03_3")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(1533, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node127, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node127, 2)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "mu_bottom_03_4")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(1533, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node128, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node128, 2)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "mu_bottom_03_5")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(1668, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node129, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node129, 2)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "mu_bottom_03_6")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1668, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node130, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node130, 2)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "mu_bottom_03_7")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(1803, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node131, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node131, 2)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "mu_bottom_03_8")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(1803, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node132, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node132, 2)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "mu_bottom_hole_s")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1928.228, 4135.668, 121), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node133, "osd/atl/atl_bottom_hole_s.osd")
  Body_SetFriendOrFoeID(node133, 2)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "mu_bottom_02_1")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(1928.485, 4245.53, 123), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node134, 2)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "mu_bottom_02_2")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(1929.075, 4026.198, 121.8822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node135, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node135, 2)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "mu_bottom_02_3")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(2030.921, 4075.403, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node136, 2)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "mu_bottom_02_4")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(2030.921, 4193.272, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node137, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node137, 2)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "mu_vbstueck_1")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(1466.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node138, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node138, 2)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "mu_vbstueck_2")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(1466.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node139, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node139, 2)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "mu_vbstueck_3")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(1601.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node140, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node140, 2)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "mu_vbstueck_4")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(1601.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node141, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node141, 2)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "mu_vbstueck_5")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(1736.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node142, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node142, 2)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "mu_vbstueck_6")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(1736.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node143, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node143, 2)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "mu_vbstueck_7")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(1871.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node144, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node144, 2)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "mu_vbstueck_8")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(1871.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node145, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node145, 2)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "mu_vbstueck_9")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(2032.223, 4134.9, 122.8673), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node146, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node146, 2)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_1")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(1592, 4131.806, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node147, 2)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_2")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(1592, 4251.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node148, 2)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_3")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(1592, 4016.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node149, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node149, 2)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "mu_bottom_wall_1")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(1509.381, 4312.657, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node150, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node150, 2)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "mu_bottom_wall_2")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(1401.111, 4311.915, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node151, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node151, 2)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "mu_bottom_wall_3")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1456.097, 4391.631, 55), MAT_Vector3(-90.25387, -90, -90))
  Node_ParseIniFile(node152, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node152, 2)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "mu_bottom_wall_4")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(1371.976, 4197.441, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node153, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node153, 2)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "mu_bottom_wall_5")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(1371.575, 4084.121, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node154, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node154, 2)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "mu_bottom_wall_6")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(1454.907, 4000.797, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node155, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node155, 2)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "mu_bottom_wall_7")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(1569.604, 3999.995, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node156, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node156, 2)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "mu_bottom_wall_8")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(1683.499, 4020.848, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node157, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node157, 2)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "mu_bottom_wall_9")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(1797.795, 4002.802, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node158, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node158, 2)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "mu_bottom_wall_10")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(1912.904, 4004.493, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node159, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node159, 2)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "mu_bottom_wall_11")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(2028.767, 3999.448, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node160, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node160, 2)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "mu_bottom_wall_12")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(1966.095, 4269.196, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node161, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node161, 2)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "mu_bottom_wall_13")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(1850.819, 4267.238, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node162, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node162, 2)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "mu_bottom_wall_14")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(1736.103, 4269.476, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node163, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node163, 2)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "mu_bottom_wall_15")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(1621.387, 4271.155, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node164, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node164, 2)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "mu_bottom_wall_16")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(1564.48, 4253.911, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node165, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node165, 2)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "mu_bottom_wall_17")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(2042.59, 4194.329, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node166, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node166, 2)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "mu_bottom_wall_18")
  Node_AddSon(node7, node167)
  Body_SetCS(node167, MAT_Vector3(2043.989, 4080.179, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node167, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node167, 2)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "mu_scoop_1")
  Node_AddSon(node7, node168)
  Body_SetCS(node168, MAT_Vector3(1458.626, 4308.962, 120.2385), MAT_Vector3(-0.174314, 0, 0))
  Node_ParseIniFile(node168, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node168, 2)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_laserwall", "mu_laserwall_1")
  Node_AddSon(node7, node169)
  Body_SetCS(node169, MAT_Vector3(1920, 4132, 106.7221), MAT_Vector3(-90, 0, 0))
  LaserWall_SetWallExtensionX(node169, 50)
  LaserWall_SetWallExtensionZ(node169, 50)
  Node_ParseIniFile(node169, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Directory", "SHIPYARD")
  Node_AddSon(node7, node170)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "atl_shipyard_t1")
  Node_AddSon(node7, node171)
  Body_SetCS(node171, MAT_Vector3(4714.508, 1395, 117), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node171, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node171, 1)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "atl_shipyard_t2")
  Node_AddSon(node7, node172)
  Body_SetCS(node172, MAT_Vector3(4014.508, 1395, 117), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node172, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node172, 1)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "atl_dock1_4_3")
  Node_AddSon(node7, node173)
  Body_SetCS(node173, MAT_Vector3(4362, 1155.17, 129.1596), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node173, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node173, 1)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "atl_dock1_4_4")
  Node_AddSon(node7, node174)
  Body_SetCS(node174, MAT_Vector3(4362, 1637.02, 129.1596), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node174, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node174, 1)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node7, node175)
  Body_SetCS(node175, MAT_Vector3(4664.811, 1155, 121.2944), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node175, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node175, 1)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "gen_vehiclestation_2")
  Node_AddSon(node7, node176)
  Body_SetCS(node176, MAT_Vector3(4662.449, 1632, 121.2944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node176, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node176, 1)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_generic", "gen_vehiclestation_3")
  Node_AddSon(node7, node177)
  Body_SetCS(node177, MAT_Vector3(4058.276, 1155, 121.2944), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node177, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node177, 1)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "gen_vehiclestation_4")
  Node_AddSon(node7, node178)
  Body_SetCS(node178, MAT_Vector3(4053.09, 1632, 121.2944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node178, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node178, 1)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_generic", "gen_shelter_docking_3")
  Node_AddSon(node7, node179)
  Body_SetCS(node179, MAT_Vector3(4220.948, 1277.185, 111.0809), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node179, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node179, 1)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_generic", "gen_shelter_docking_4")
  Node_AddSon(node7, node180)
  Body_SetCS(node180, MAT_Vector3(4503.744, 1518.123, 111.0809), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node180, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node180, 1)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_generic", "ship_shelter_1")
  Node_AddSon(node7, node181)
  Body_SetCS(node181, MAT_Vector3(4163.855, 998.4643, 139.4788), MAT_Vector3(-89.87759, 0, 0))
  Node_ParseIniFile(node181, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node181, 1)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_generic", "ship_shelter_2")
  Node_AddSon(node7, node182)
  Body_SetCS(node182, MAT_Vector3(4559.938, 996.7714, 139.4788), MAT_Vector3(89.97274, 0, 0))
  Node_ParseIniFile(node182, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node182, 1)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_generic", "atl_wblock3b_01_1")
  Node_AddSon(node7, node183)
  Body_SetCS(node183, MAT_Vector3(4822.464, 1738.969, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node183, "osd/atl/atl_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node183, 1)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_generic", "atl_wblock3b_02_1")
  Node_AddSon(node7, node184)
  Body_SetCS(node184, MAT_Vector3(4827.595, 1055.52, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node184, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node184, 1)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_generic", "atl_wblock3b_03_1")
  Node_AddSon(node7, node185)
  Body_SetCS(node185, MAT_Vector3(3900.017, 1055.52, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node185, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node185, 1)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_generic", "atl_wblock3b_02_2")
  Node_AddSon(node7, node186)
  Body_SetCS(node186, MAT_Vector3(3896.632, 1742.74, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node186, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node186, 1)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_generic", "gen_fin_1")
  Node_AddSon(node7, node187)
  Body_SetCS(node187, MAT_Vector3(4740.056, 1745, 142.6026), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node187, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node187, 1)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_generic", "gen_fin_2")
  Node_AddSon(node7, node188)
  Body_SetCS(node188, MAT_Vector3(4749.503, 1056, 142.6026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node188, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node188, 1)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_generic", "gen_fin_3")
  Node_AddSon(node7, node189)
  Body_SetCS(node189, MAT_Vector3(3974, 1745, 142.6026), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node189, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node189, 1)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_generic", "gen_fin_4")
  Node_AddSon(node7, node190)
  Body_SetCS(node190, MAT_Vector3(3974, 1056, 142.6026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node190, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node190, 1)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node191)
  Body_SetCS(node191, MAT_Vector3(4080, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node191, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node191, 1)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node192)
  Body_SetCS(node192, MAT_Vector3(4652, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node192, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node192, 1)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_generic", "gen_quay_3")
  Node_AddSon(node7, node193)
  Body_SetCS(node193, MAT_Vector3(4367, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node193, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node193, 1)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_generic", "gen_quay_4")
  Node_AddSon(node7, node194)
  Body_SetCS(node194, MAT_Vector3(3780, 1400, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node194, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node194, 1)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_generic", "gen_quay_5")
  Node_AddSon(node7, node195)
  Body_SetCS(node195, MAT_Vector3(3780, 1745, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node195, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node195, 1)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_generic", "gen_quay_6")
  Node_AddSon(node7, node196)
  Body_SetCS(node196, MAT_Vector3(3780, 1060, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node196, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node196, 1)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_generic", "ship_rohr_small03_1")
  Node_AddSon(node7, node197)
  Body_SetCS(node197, MAT_Vector3(4546.181, 1574, 123.9699), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node197, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node197, 1)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_generic", "ship_rohr_small03_2")
  Node_AddSon(node7, node198)
  Body_SetCS(node198, MAT_Vector3(4183.5, 1574, 123.9699), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node198, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node198, 1)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_generic", "ship_rohr_small03_3")
  Node_AddSon(node7, node199)
  Body_SetCS(node199, MAT_Vector3(4546.181, 1216, 123.9699), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node199, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node199, 1)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_generic", "ship_rohr_small03_4")
  Node_AddSon(node7, node200)
  Body_SetCS(node200, MAT_Vector3(4183.22, 1216, 123.9699), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node200, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node200, 1)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_generic", "ship_rohr_small03_6")
  Node_AddSon(node7, node201)
  Body_SetCS(node201, MAT_Vector3(3891.503, 2089.953, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node201, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node201, 1)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_generic", "ship_rohr_small03_7")
  Node_AddSon(node7, node202)
  Body_SetCS(node202, MAT_Vector3(3891.254, 1854.315, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node202, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node202, 1)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_generic", "ship_rohr_small03_8")
  Node_AddSon(node7, node203)
  Body_SetCS(node203, MAT_Vector3(3905.773, 2088.274, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node203, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node203, 1)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_generic", "ship_rohr_small03_9")
  Node_AddSon(node7, node204)
  Body_SetCS(node204, MAT_Vector3(3905.803, 1853.196, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node204, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node204, 1)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_generic", "ship_rohr_small03_10")
  Node_AddSon(node7, node205)
  Body_SetCS(node205, MAT_Vector3(4248.124, 1917.071, 129.7389), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node205, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node205, 1)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_generic", "ship_rohr_small03_11")
  Node_AddSon(node7, node206)
  Body_SetCS(node206, MAT_Vector3(4510.29, 1917.071, 129.7389), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node206, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node206, 1)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_generic", "ship_rohr_small03_12")
  Node_AddSon(node7, node207)
  Body_SetCS(node207, MAT_Vector3(3780.476, 1560.43, 129.7389), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node207, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node207, 1)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_generic", "ship_rohr_small03_13")
  Node_AddSon(node7, node208)
  Body_SetCS(node208, MAT_Vector3(3781.657, 1215.599, 129.7389), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node208, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node208, 1)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_generic", "ship_rohr_small03_14")
  Node_AddSon(node7, node209)
  Body_SetCS(node209, MAT_Vector3(4370.703, 2165.182, 106.6607), MAT_Vector3(-123.647, 0, 0))
  Node_ParseIniFile(node209, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node209, 1)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_generic", "ship_rohr_small03_15")
  Node_AddSon(node7, node210)
  Body_SetCS(node210, MAT_Vector3(4338.542, 2112.71, 101.5713), MAT_Vector3(-98.29216, 0, 0))
  Node_ParseIniFile(node210, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node210, 1)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_generic", "ship_rohr_small02_1")
  Node_AddSon(node7, node211)
  Body_SetCS(node211, MAT_Vector3(4425.914, 2177.871, 113.6927), MAT_Vector3(40.54785, 0, 0))
  Node_ParseIniFile(node211, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node211, 0)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_generic", "ship_rohr_small02_2")
  Node_AddSon(node7, node212)
  Body_SetCS(node212, MAT_Vector3(4404.712, 2040.581, 113.6927), MAT_Vector3(125.4953, 0, 0))
  Node_ParseIniFile(node212, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node212, 0)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_generic", "ship_rohr_small02_3")
  Node_AddSon(node7, node213)
  Body_SetCS(node213, MAT_Vector3(4230.368, 1994.879, 113.6927), MAT_Vector3(89.76888, 0, 0))
  Node_ParseIniFile(node213, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node213, 0)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_generic", "ship_rohr_small02_4")
  Node_AddSon(node7, node214)
  Body_SetCS(node214, MAT_Vector3(4039.097, 2011.806, 117.0856), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node214, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node214, 0)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_generic", "ship_rohr_small02_5")
  Node_AddSon(node7, node215)
  Body_SetCS(node215, MAT_Vector3(4135.579, 2030.425, 113.6927), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node215, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node215, 0)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_generic", "ship_rohr_small02_6")
  Node_AddSon(node7, node216)
  Body_SetCS(node216, MAT_Vector3(4086.492, 2033.81, 107.7551), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node216, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node216, 0)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_generic", "ship_rohr_small02_7")
  Node_AddSon(node7, node217)
  Body_SetCS(node217, MAT_Vector3(3651.625, 1926.872, 113.2686), MAT_Vector3(-134.9108, 0, 0))
  Node_ParseIniFile(node217, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node217, 0)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_generic", "ship_rohr_small02_8")
  Node_AddSon(node7, node218)
  Body_SetCS(node218, MAT_Vector3(3598.483, 1806.417, 113.2686), MAT_Vector3(-91.26732, 0, 0))
  Node_ParseIniFile(node218, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node218, 0)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_generic", "ship_rohr_small02_9")
  Node_AddSon(node7, node219)
  Body_SetCS(node219, MAT_Vector3(3687.053, 1556.06, 113.2686), MAT_Vector3(-128.1603, 0, 0))
  Node_ParseIniFile(node219, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node219, 0)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_generic", "ship_rohr_small02_10")
  Node_AddSon(node7, node220)
  Body_SetCS(node220, MAT_Vector3(3662.253, 1524.175, 113.2686), MAT_Vector3(-128.1603, 0, 0))
  Node_ParseIniFile(node220, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node220, 0)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_generic", "ship_rohr_small01_1")
  Node_AddSon(node7, node221)
  Body_SetCS(node221, MAT_Vector3(4016.015, 1199.339, 127.1297), MAT_Vector3(-134.968, 0, 0))
  Node_ParseIniFile(node221, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node221, 1)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_generic", "ship_rohr_small01_2")
  Node_AddSon(node7, node222)
  Body_SetCS(node222, MAT_Vector3(4008.894, 1583.654, 127.1297), MAT_Vector3(-43.6797, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node222, 1)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_generic", "ship_rohr_small01_3")
  Node_AddSon(node7, node223)
  Body_SetCS(node223, MAT_Vector3(4691.507, 1599.674, 127.1297), MAT_Vector3(-134.968, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node223, 1)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_generic", "ship_rohr_small01_4")
  Node_AddSon(node7, node224)
  Body_SetCS(node224, MAT_Vector3(4698.557, 1192.766, 127.1297), MAT_Vector3(-43.6797, 0, 0))
  Node_ParseIniFile(node224, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node224, 1)
  Body_SetNameKey(node224, -1)
  Body_SetCargoKey(node224, -1, 0)
  Body_SetCargoKey(node224, -1, 1)
  Body_SetCargoKey(node224, -1, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_generic", "ship_rohr_small01_9")
  Node_AddSon(node7, node225)
  Body_SetCS(node225, MAT_Vector3(4798.811, 1204.318, 127.1297), MAT_Vector3(46.39162, 0, 0))
  Node_ParseIniFile(node225, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node225, 1)
  Body_SetNameKey(node225, -1)
  Body_SetCargoKey(node225, -1, 0)
  Body_SetCargoKey(node225, -1, 1)
  Body_SetCargoKey(node225, -1, 2)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_generic", "ship_rohr_small01_10")
  Node_AddSon(node7, node226)
  Body_SetCS(node226, MAT_Vector3(4797.599, 1591.265, 127.1297), MAT_Vector3(-37.60551, 0, 0))
  Node_ParseIniFile(node226, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node226, 1)
  Body_SetNameKey(node226, -1)
  Body_SetCargoKey(node226, -1, 0)
  Body_SetCargoKey(node226, -1, 1)
  Body_SetCargoKey(node226, -1, 2)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_generic", "ship_rohr_small01_11")
  Node_AddSon(node7, node227)
  Body_SetCS(node227, MAT_Vector3(4809.122, 1055.481, 136.3405), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node227, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node227, 1)
  Body_SetNameKey(node227, -1)
  Body_SetCargoKey(node227, -1, 0)
  Body_SetCargoKey(node227, -1, 1)
  Body_SetCargoKey(node227, -1, 2)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_generic", "ship_rohr_small01_12")
  Node_AddSon(node7, node228)
  Body_SetCS(node228, MAT_Vector3(4797.171, 1744.786, 136.3405), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node228, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node228, 1)
  Body_SetNameKey(node228, -1)
  Body_SetCargoKey(node228, -1, 0)
  Body_SetCargoKey(node228, -1, 1)
  Body_SetCargoKey(node228, -1, 2)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_generic", "ship_rohr_small01_13")
  Node_AddSon(node7, node229)
  Body_SetCS(node229, MAT_Vector3(3914.887, 1745.199, 136.3405), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node229, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node229, 1)
  Body_SetNameKey(node229, -1)
  Body_SetCargoKey(node229, -1, 0)
  Body_SetCargoKey(node229, -1, 1)
  Body_SetCargoKey(node229, -1, 2)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_generic", "ship_rohr_small01_14")
  Node_AddSon(node7, node230)
  Body_SetCS(node230, MAT_Vector3(3915.456, 1056.128, 136.3405), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node230, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node230, 1)
  Body_SetNameKey(node230, -1)
  Body_SetCargoKey(node230, -1, 0)
  Body_SetCargoKey(node230, -1, 1)
  Body_SetCargoKey(node230, -1, 2)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_generic", "ship_rohr_small01_15")
  Node_AddSon(node7, node231)
  Body_SetCS(node231, MAT_Vector3(3923.695, 1201.136, 126.6924), MAT_Vector3(136.6218, 0, 0))
  Node_ParseIniFile(node231, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node231, 1)
  Body_SetNameKey(node231, -1)
  Body_SetCargoKey(node231, -1, 0)
  Body_SetCargoKey(node231, -1, 1)
  Body_SetCargoKey(node231, -1, 2)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_generic", "ship_rohr_small01_16")
  Node_AddSon(node7, node232)
  Body_SetCS(node232, MAT_Vector3(3920.399, 1595.787, 126.6924), MAT_Vector3(37.79498, 0, 0))
  Node_ParseIniFile(node232, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node232, 1)
  Body_SetNameKey(node232, -1)
  Body_SetCargoKey(node232, -1, 0)
  Body_SetCargoKey(node232, -1, 1)
  Body_SetCargoKey(node232, -1, 2)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_generic", "ship_gangway03_1")
  Node_AddSon(node7, node233)
  Body_SetCS(node233, MAT_Vector3(4181.629, 1215.936, 151.8229), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node233, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node233, 1)
  Body_SetNameKey(node233, -1)
  Body_SetCargoKey(node233, -1, 0)
  Body_SetCargoKey(node233, -1, 1)
  Body_SetCargoKey(node233, -1, 2)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_generic", "ship_gangway03_2")
  Node_AddSon(node7, node234)
  Body_SetCS(node234, MAT_Vector3(4181.629, 1215.936, 174.3278), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node234, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node234, 1)
  Body_SetNameKey(node234, -1)
  Body_SetCargoKey(node234, -1, 0)
  Body_SetCargoKey(node234, -1, 1)
  Body_SetCargoKey(node234, -1, 2)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_generic", "ship_gangway03_3")
  Node_AddSon(node7, node235)
  Body_SetCS(node235, MAT_Vector3(4181.629, 1574.936, 151.8229), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node235, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node235, 1)
  Body_SetNameKey(node235, -1)
  Body_SetCargoKey(node235, -1, 0)
  Body_SetCargoKey(node235, -1, 1)
  Body_SetCargoKey(node235, -1, 2)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_generic", "ship_gangway03_4")
  Node_AddSon(node7, node236)
  Body_SetCS(node236, MAT_Vector3(4181.629, 1574.936, 174.3278), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node236, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node236, 1)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_generic", "ship_gangway03_5")
  Node_AddSon(node7, node237)
  Body_SetCS(node237, MAT_Vector3(4549.629, 1215.936, 151.8229), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node237, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node237, 1)
  Body_SetNameKey(node237, -1)
  Body_SetCargoKey(node237, -1, 0)
  Body_SetCargoKey(node237, -1, 1)
  Body_SetCargoKey(node237, -1, 2)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_generic", "ship_gangway03_6")
  Node_AddSon(node7, node238)
  Body_SetCS(node238, MAT_Vector3(4549.629, 1215.936, 174.3278), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node238, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node238, 1)
  Body_SetNameKey(node238, -1)
  Body_SetCargoKey(node238, -1, 0)
  Body_SetCargoKey(node238, -1, 1)
  Body_SetCargoKey(node238, -1, 2)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_generic", "ship_gangway03_7")
  Node_AddSon(node7, node239)
  Body_SetCS(node239, MAT_Vector3(4549.629, 1574.936, 151.8229), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node239, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node239, 1)
  Body_SetNameKey(node239, -1)
  Body_SetCargoKey(node239, -1, 0)
  Body_SetCargoKey(node239, -1, 1)
  Body_SetCargoKey(node239, -1, 2)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_generic", "ship_gangway03_8")
  Node_AddSon(node7, node240)
  Body_SetCS(node240, MAT_Vector3(4549.629, 1574.936, 174.3278), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node240, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node240, 1)
  Body_SetNameKey(node240, -1)
  Body_SetCargoKey(node240, -1, 0)
  Body_SetCargoKey(node240, -1, 1)
  Body_SetCargoKey(node240, -1, 2)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_generic", "ship_hetank_des_1")
  Node_AddSon(node7, node241)
  Body_SetCS(node241, MAT_Vector3(4156.629, 1315.741, 124.7474), MAT_Vector3(-22.05044, 0, 0))
  Node_ParseIniFile(node241, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node241, 1)
  Body_SetNameKey(node241, -1)
  Body_SetCargoKey(node241, -1, 0)
  Body_SetCargoKey(node241, -1, 1)
  Body_SetCargoKey(node241, -1, 2)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_generic", "ship_hetank_des_2")
  Node_AddSon(node7, node242)
  Body_SetCS(node242, MAT_Vector3(4156.147, 1258.319, 124.7474), MAT_Vector3(70.57237, 0, 0))
  Node_ParseIniFile(node242, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node242, 1)
  Body_SetNameKey(node242, -1)
  Body_SetCargoKey(node242, -1, 0)
  Body_SetCargoKey(node242, -1, 1)
  Body_SetCargoKey(node242, -1, 2)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_generic", "ship_hetank_des_3")
  Node_AddSon(node7, node243)
  Body_SetCS(node243, MAT_Vector3(4570.653, 1542.923, 124.7474), MAT_Vector3(70.57237, 0, 0))
  Node_ParseIniFile(node243, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node243, 1)
  Body_SetNameKey(node243, -1)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_generic", "ship_hetank_des_4")
  Node_AddSon(node7, node244)
  Body_SetCS(node244, MAT_Vector3(4572.614, 1486.196, 124.7474), MAT_Vector3(121.5595, 0, 0))
  Node_ParseIniFile(node244, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node244, 1)
  Body_SetNameKey(node244, -1)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_fx_flare", "fx_flare_5N1_1")
  Node_AddSon(node7, node245)
  Node_ParseIniFile(node245, "osd/fx_flare/fx_flare_5N1.osd")
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_fx_rays", "fx_rays_5N1_1")
  Node_AddSon(node7, node246)
  Node_ParseIniFile(node246, "osd/fx_rays/fx_rays_5N1.osd")
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node7, node247)
  Node_ParseIniFile(node247, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_fx_sky", "fx_sky_5N1_1")
  Node_AddSon(node7, node248)
  Node_ParseIniFile(node248, "osd/fx_sky/fx_sky_5N1.osd")
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node249)
  Node_ParseIniFile(node249, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node249, "map/5H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node250)
  Node_ParseIniFile(node250, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node250, "map/5H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node251)
  Node_ParseIniFile(node251, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node251, "map/5H1/Terrain/org_seetang.tga")
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node252)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node252, node253)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node252, node254)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_PatrolArea", "OVERALL_Area")
  Node_AddSon(node254, node255)
  PatrolArea_SetPosition(node255, MAT_Vector3(3000, 3000, 400))
  PatrolArea_SetRadius(node255, 3500)
  PatrolArea_SetMinZ(node255, -500)
  PatrolArea_SetMaxZ(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_PatrolArea", "NeopolisTraffic_Area")
  Node_AddSon(node254, node256)
  PatrolArea_SetPosition(node256, MAT_Vector3(2301.450416, 3485.739169, 400))
  PatrolArea_SetRadius(node256, 1400)
  PatrolArea_SetMinZ(node256, -60)
  PatrolArea_SetMaxZ(node256, 25)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Path", "ApproachPath_1")
  Node_AddSon(node254, node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node257, node258)
  Position_SetPosition(node258, MAT_Vector3(2333.42351, 2410.799936, 321.378149))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node257, node259)
  Position_SetPosition(node259, MAT_Vector3(2254.121833, 2431.675164, 320.755106))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Path", "DockPath_1")
  Node_AddSon(node254, node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node260, node261)
  Position_SetPosition(node261, MAT_Vector3(2201.912121, 2433.910876, 321.5247))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node260, node262)
  Position_SetPosition(node262, MAT_Vector3(2101.179214, 2434.251606, 320.659633))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_PatrolArea", "DockArea_1")
  Node_AddSon(node254, node263)
  PatrolArea_SetPosition(node263, MAT_Vector3(2285.358673, 2432.647873, 317.678918))
  PatrolArea_SetRadius(node263, 75)
  PatrolArea_SetMinZ(node263, -20)
  PatrolArea_SetMaxZ(node263, 20)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Path", "TiburonPath_1")
  Node_AddSon(node254, node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node264, node265)
  Position_SetPosition(node265, MAT_Vector3(2868.070413, 1520.62073, 255.634769))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node264, node266)
  Position_SetPosition(node266, MAT_Vector3(2074.836525, 1521.130947, 254.198281))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node264, node267)
  Position_SetPosition(node267, MAT_Vector3(1225.576085, 1732.147318, 256.843428))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node264, node268)
  Position_SetPosition(node268, MAT_Vector3(845.847624, 1716.2168, 255.497467))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node264, node269)
  Position_SetPosition(node269, MAT_Vector3(682.019633, 1373.435469, 257.988303))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node264, node270)
  Position_SetPosition(node270, MAT_Vector3(1094.632201, 1106.522759, 281.766882))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node264, node271)
  Position_SetPosition(node271, MAT_Vector3(2428.54733, 929.022929, 255.438243))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node264, node272)
  Position_SetPosition(node272, MAT_Vector3(3121.866664, 1070.811237, 261.504377))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node254, node273)
  PatrolArea_SetPosition(node273, MAT_Vector3(2935.98116, 1526.591087, 173.360102))
  PatrolArea_SetRadius(node273, 350)
  PatrolArea_SetMinZ(node273, -350)
  PatrolArea_SetMaxZ(node273, 350)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node254, node274)
  PatrolArea_SetPosition(node274, MAT_Vector3(2385.124205, 1536.43105, 173.3601))
  PatrolArea_SetRadius(node274, 512)
  PatrolArea_SetMinZ(node274, -512)
  PatrolArea_SetMaxZ(node274, 512)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Path", "StoneyPath_1")
  Node_AddSon(node254, node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node275, node276)
  Position_SetPosition(node276, MAT_Vector3(2280.984675, 2392.827765, 318))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node275, node277)
  Position_SetPosition(node277, MAT_Vector3(2385.105874, 2324.054775, 318))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node275, node278)
  Position_SetPosition(node278, MAT_Vector3(2324.981077, 2114.16413, 318))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node275, node279)
  Position_SetPosition(node279, MAT_Vector3(2120.218224, 2095.225397, 299.233852))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node275, node280)
  Position_SetPosition(node280, MAT_Vector3(1918.455278, 2026.787917, 214.4521))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node275, node281)
  Position_SetPosition(node281, MAT_Vector3(1891.674905, 1918.150819, 187.035262))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node275, node282)
  Position_SetPosition(node282, MAT_Vector3(1916.65594, 1860.278335, 197.457821))
  Position_SetRadius(node282, 5)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Path", "StoneyPath_2")
  Node_AddSon(node254, node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node283, node284)
  Position_SetPosition(node284, MAT_Vector3(1957.325987, 1785.797908, 305.729906))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node283, node285)
  Position_SetPosition(node285, MAT_Vector3(2601.454111, 2015.971566, 287.005307))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node283, node286)
  Position_SetPosition(node286, MAT_Vector3(2391.399426, 2374.707228, 287.0053))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node252, node287)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node252, node288)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Trigger", "TriggerPresenceBox_1")
  Node_AddSon(node288, node289)
  Body_SetFriendOrFoeID(node289, 0)
  Body_SetCS(node289, MAT_Vector3(2354.269721, 1522.050573, 225.337561), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node289, 40, 120, 120)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node252, node290)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node290, node291)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_vessel", "trc_avenger_p1")
  Node_AddSon(node291, node292)
  Body_SetCS(node292, MAT_Vector3(1097.722, 1893.525, 350), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node292, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node292, 0)
  Body_SetNameKey(node292, -1)
  Body_SetCargoKey(node292, -1, 0)
  Body_SetCargoKey(node292, -1, 1)
  Body_SetCargoKey(node292, -1, 2)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_vessel", "trc_police_p1")
  Node_AddSon(node291, node293)
  Body_SetCS(node293, MAT_Vector3(923.1009, 3173.487, 223.4119), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node293, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node293, 0)
  Body_SetNameKey(node293, -1)
  Body_SetCargoKey(node293, -1, 0)
  Body_SetCargoKey(node293, -1, 1)
  Body_SetCargoKey(node293, -1, 2)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p1")
  Node_AddSon(node291, node294)
  Body_SetCS(node294, MAT_Vector3(2163.426, 3133.485, 350), MAT_Vector3(-83.52366, 0, 0))
  Node_ParseIniFile(node294, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node294, 0)
  Body_SetNameKey(node294, -1)
  Body_SetCargoKey(node294, -1, 0)
  Body_SetCargoKey(node294, -1, 1)
  Body_SetCargoKey(node294, -1, 2)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_vessel", "trc_toiler_p1")
  Node_AddSon(node291, node295)
  Body_SetCS(node295, MAT_Vector3(1363.144, 2953.196, 450.24), MAT_Vector3(42.92338, 0, 0))
  Node_ParseIniFile(node295, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node295, 0)
  Body_SetNameKey(node295, -1)
  Body_SetCargoKey(node295, -1, 0)
  Body_SetCargoKey(node295, -1, 1)
  Body_SetCargoKey(node295, -1, 2)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_vessel", "trc_skipjack_p1")
  Node_AddSon(node291, node296)
  Body_SetCS(node296, MAT_Vector3(2313.169, 4002.909, 550.411), MAT_Vector3(-107.4887, 0, 0))
  Node_ParseIniFile(node296, "osd/gen/gen_skipjack.osd")
  Body_SetFriendOrFoeID(node296, 0)
  Body_SetNameKey(node296, -1)
  Body_SetCargoKey(node296, -1, 0)
  Body_SetCargoKey(node296, -1, 1)
  Body_SetCargoKey(node296, -1, 2)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_vessel", "trc_avenger_p2")
  Node_AddSon(node291, node297)
  Body_SetCS(node297, MAT_Vector3(1447.722, 2293.525, 400), MAT_Vector3(-139.3504, 0, 0))
  Node_ParseIniFile(node297, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node297, 0)
  Body_SetNameKey(node297, -1)
  Body_SetCargoKey(node297, -1, 0)
  Body_SetCargoKey(node297, -1, 1)
  Body_SetCargoKey(node297, -1, 2)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_vessel", "trc_police_p2")
  Node_AddSon(node291, node298)
  Body_SetCS(node298, MAT_Vector3(1273.101, 3573.487, 273.4119), MAT_Vector3(-108.3242, 0, 0))
  Node_ParseIniFile(node298, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node298, 0)
  Body_SetNameKey(node298, -1)
  Body_SetCargoKey(node298, -1, 0)
  Body_SetCargoKey(node298, -1, 1)
  Body_SetCargoKey(node298, -1, 2)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p2")
  Node_AddSon(node291, node299)
  Body_SetCS(node299, MAT_Vector3(2513.426, 3533.485, 400), MAT_Vector3(67.60977, 0, 0))
  Node_ParseIniFile(node299, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node299, 0)
  Body_SetNameKey(node299, -1)
  Body_SetCargoKey(node299, -1, 0)
  Body_SetCargoKey(node299, -1, 1)
  Body_SetCargoKey(node299, -1, 2)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_vessel", "trc_toiler_p2")
  Node_AddSon(node291, node300)
  Body_SetCS(node300, MAT_Vector3(1713.144, 3353.196, 500.24), MAT_Vector3(134.5185, 0, 0))
  Node_ParseIniFile(node300, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node300, 0)
  Body_SetNameKey(node300, -1)
  Body_SetCargoKey(node300, -1, 0)
  Body_SetCargoKey(node300, -1, 1)
  Body_SetCargoKey(node300, -1, 2)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node290, node301)
  Body_SetCS(node301, MAT_Vector3(2132.669818, 2435.476923, 320.708726), MAT_Vector3(-89.366304, 0, 0))
  Node_ParseIniFile(node301, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node301, 3)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_vessel", "gen_tiburon_1")
  Node_AddSon(node290, node302)
  Body_SetCS(node302, MAT_Vector3(2937.163964, 1525.403712, 258.782125), MAT_Vector3(89.251826, 0, 0))
  Node_ParseIniFile(node302, "osd/gen/gen_tiburon.osd")
  Body_SetFriendOrFoeID(node302, 5)
  Body_SetNameKey(node302, -1)
  Body_SetCargoKey(node302, -1, 0)
  Body_SetCargoKey(node302, -1, 1)
  Body_SetCargoKey(node302, -1, 2)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_1")
  Node_AddSon(node290, node303)
  Body_SetCS(node303, MAT_Vector3(2943.543313, 1495.936382, 258.907111), MAT_Vector3(89.519132, 0, 0))
  Node_ParseIniFile(node303, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node303, 5)
  Body_SetNameKey(node303, -1)
  Body_SetCargoKey(node303, -1, 0)
  Body_SetCargoKey(node303, -1, 1)
  Body_SetCargoKey(node303, -1, 2)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_2")
  Node_AddSon(node290, node304)
  Body_SetCS(node304, MAT_Vector3(2945.059306, 1557.341084, 259.458636), MAT_Vector3(90.864875, 0, 0))
  Node_ParseIniFile(node304, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node304, 5)
  Body_SetNameKey(node304, -1)
  Body_SetCargoKey(node304, -1, 0)
  Body_SetCargoKey(node304, -1, 1)
  Body_SetCargoKey(node304, -1, 2)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_3")
  Node_AddSon(node290, node305)
  Body_SetCS(node305, MAT_Vector3(2977.341195, 1525.434226, 259.322445), MAT_Vector3(89.048997, 0, 0))
  Node_ParseIniFile(node305, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node305, 5)
  Body_SetNameKey(node305, -1)
  Body_SetCargoKey(node305, -1, 0)
  Body_SetCargoKey(node305, -1, 1)
  Body_SetCargoKey(node305, -1, 2)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_4")
  Node_AddSon(node290, node306)
  Body_SetCS(node306, MAT_Vector3(2979.883812, 1496.493225, 258.9071), MAT_Vector3(89.51913, 0, 0))
  Node_ParseIniFile(node306, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node306, 5)
  Body_SetNameKey(node306, -1)
  Body_SetCargoKey(node306, -1, 0)
  Body_SetCargoKey(node306, -1, 1)
  Body_SetCargoKey(node306, -1, 2)
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_5")
  Node_AddSon(node290, node307)
  Body_SetCS(node307, MAT_Vector3(2977.815053, 1558.222837, 259.4586), MAT_Vector3(90.86488, 0, 0))
  Node_ParseIniFile(node307, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node307, 5)
  Body_SetNameKey(node307, -1)
  Body_SetCargoKey(node307, -1, 0)
  Body_SetCargoKey(node307, -1, 1)
  Body_SetCargoKey(node307, -1, 2)
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("nod_vessel", "atl_scout2_narrow_6")
  Node_AddSon(node290, node308)
  Body_SetCS(node308, MAT_Vector3(3019.521116, 1524.973482, 259.3224), MAT_Vector3(89.049, 0, 0))
  Node_ParseIniFile(node308, "osd/atl/atl_scout2_narrow.osd")
  Body_SetFriendOrFoeID(node308, 5)
  Body_SetNameKey(node308, -1)
  Body_SetCargoKey(node308, -1, 0)
  Body_SetCargoKey(node308, -1, 1)
  Body_SetCargoKey(node308, -1, 2)
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node290, node309)
  Body_SetPosition(node309, MAT_Vector3(1838.489588, 1825.816335, 189.880733))
  WayPoint_SetRadius(node309, 25)
  Node_ParseIniFile(node309, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("nod_vessel", "wng_techbomber_1")
  Node_AddSon(node290, node310)
  Body_SetCS(node310, MAT_Vector3(2236.714627, 2390.61083, 318.736567), MAT_Vector3(-91.023908, 0, 0))
  Node_ParseIniFile(node310, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node310, 4)
  Body_SetNameKey(node310, 301)
  Body_SetCargoKey(node310, -1, 0)
  Body_SetCargoKey(node310, -1, 1)
  Body_SetCargoKey(node310, -1, 2)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node290, node311)
  Body_SetPosition(node311, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node311, 5)
  Node_ParseIniFile(node311, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("nod_waypoint", "nav_guard_1")
  Node_AddSon(node290, node312)
  Body_SetPosition(node312, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node312, 5)
  Node_ParseIniFile(node312, "osd/nav/nav_guard.osd")
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node313)
  Camera_SetBackPlane(node313, 750)
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node314)
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node314, node315)
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node314, node316)
  Node_EnterSimulation(node316)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "GotoPosition_1")
  Node_AddSon(node316, node317)
  Position_SetPosition(node317, MAT_Vector3(3082.653276, 2531.007258, 183.790333))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "GotoPosition_2")
  Node_AddSon(node316, node318)
  Position_SetPosition(node318, MAT_Vector3(2854.345244, 2392.903228, 203))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "GotoPosition_3")
  Node_AddSon(node316, node319)
  Position_SetPosition(node319, MAT_Vector3(2634.264682, 2392.031203, 199.466553))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "GotoPosition_4")
  Node_AddSon(node316, node320)
  Position_SetPosition(node320, MAT_Vector3(2619.398048, 2417.25494, 199.88376))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "GotoPosition_5")
  Node_AddSon(node316, node321)
  Position_SetPosition(node321, MAT_Vector3(2450.7573, 2453.474529, 203))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "GotoPosition_6")
  Node_AddSon(node316, node322)
  Position_SetPosition(node322, MAT_Vector3(2450.341393, 2453.47966, 229.212514))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "GotoPosition_7")
  Node_AddSon(node316, node323)
  Position_SetPosition(node323, MAT_Vector3(2291.733702, 2449.18492, 203))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node316, node324)
  Position_SetPosition(node324, MAT_Vector3(2115.370649, 2437.007791, 338.807041))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node316, node325)
  Position_SetPosition(node325, MAT_Vector3(2170.344706, 2434.212815, 314.283677))
  Position_SetRadius(node325, 5)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node316, node326)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node326, node327)
  Position_SetPosition(node327, MAT_Vector3(3092.281041, 2527.758909, 203))
  Position_SetRadius(node327, 5)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node326, node328)
  Position_SetPosition(node328, MAT_Vector3(2842.836528, 2392.13403, 203))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node326, node329)
  Position_SetPosition(node329, MAT_Vector3(2674.930787, 2394.224899, 203))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node326, node330)
  Position_SetPosition(node330, MAT_Vector3(2618.510143, 2444.853247, 203))
  Position_SetRadius(node330, 5)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node326, node331)
  Position_SetPosition(node331, MAT_Vector3(2584.234606, 2470.996258, 203))
  Position_SetRadius(node331, 5)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node326, node332)
  Position_SetPosition(node332, MAT_Vector3(2507.874103, 2468.086869, 203))
  Position_SetRadius(node332, 5)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node326, node333)
  Position_SetPosition(node333, MAT_Vector3(2451.871745, 2467.664272, 230.0561))
  Position_SetRadius(node333, 5)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node326, node334)
  Position_SetPosition(node334, MAT_Vector3(2290.856446, 2466.132157, 217.59183))
  Position_SetRadius(node334, 5)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node316, node335)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node335, node336)
  Position_SetPosition(node336, MAT_Vector3(2099.364, 2434.12, 321.5247))
  Position_SetRadius(node336, 5)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node335, node337)
  Position_SetPosition(node337, MAT_Vector3(2240.445085, 2432.279473, 320.6596))
  Position_SetRadius(node337, 5)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node314, node338)
  Node_EnterSimulation(node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Director", "Director_1")
  Node_AddSon(node338, node339)
  Node_EnterSimulation(node339)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Director", "Director_2")
  Node_AddSon(node338, node340)
  Node_EnterSimulation(node340)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node314, node341)
  Node_EnterSimulation(node341)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node314, node342)
  Node_EnterSimulation(node342)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("nod_vessel", "dir_cammesh_1")
  Node_AddSon(node342, node343)
  Body_SetCS(node343, MAT_Vector3(3097.788302, 2531.304509, 164.780379), MAT_Vector3(123.235073, 0, 0))
  Node_ParseIniFile(node343, "osd/dir/dir_cammesh_5n1.osd")
  Body_SetFriendOrFoeID(node343, 0)
  Body_SetNameKey(node343, -1)
  Body_SetCargoKey(node343, -1, 0)
  Body_SetCargoKey(node343, -1, 1)
  Body_SetCargoKey(node343, -1, 2)
  Node_EnterSimulation(node343)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, F)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, E)
SetEnemyMatrixElement(5, 2, E)
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
SetEnemyMatrixElement(4, 3, F)
SetEnemyMatrixElement(5, 3, E)
SetEnemyMatrixElement(6, 3, F)
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
SetEnemyMatrixElement(3, 4, F)
SetEnemyMatrixElement(4, 4, F)
SetEnemyMatrixElement(5, 4, E)
SetEnemyMatrixElement(6, 4, F)
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
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, F)
SetEnemyMatrixElement(4, 6, F)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, F)
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
                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (o11337.Value ~= True) then
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
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (o11361.Value == True) then
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
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2100)
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o26.Value == L0) then
    o26["Value"] = L0
    if not (L0 ~= 1) then
      o26.ChangeTo1()
    end
  end
end }
o27 = { [nil] = {}, GetCalculated = function()
  if not (False == True) then
    if not (False == True) then
      if not (False == True) then
        if not (False == True) then
          if not (False == True) then
            if not (False == True) then
              if not (False == True) then
                if not (False == True) then
                  if not (False == True) then
                    if not (False == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
                                                                        if not (False == True) then
                                                                          if not (False == True) then
                                                                            if not (False == True) then
                                                                              if not (False == True) then
                                                                                if not (False == True) then
                                                                                  if not (False == True) then
                                                                                    if not (False == True) then
                                                                                      if not (False == True) then
                                                                                        if not (False == True) then
                                                                                          if not (False == True) then
                                                                                            if not (False == True) then
                                                                                              if not (False == True) then
                                                                                                if not (False == True) then
                                                                                                  if not (False == True) then
                                                                                                    if not (False == True) then
                                                                                                      if not (False == True) then
                                                                                                        if not (False == True) then
                                                                                                          if not (False == True) then
                                                                                                            if not (False == True) then
                                                                                                              if not (False == True) then
                                                                                                                if not (False == True) then
                                                                                                                  if not (False == True) then
                                                                                                                    if not (False == True) then
                                                                                                                      if not (False == True) then
                                                                                                                        if not (False == True) then
                                                                                                                          if not (False == True) then
                                                                                                                            if not (False == True) then
                                                                                                                              if not (False == True) then
                                                                                                                                if not (False == True) then
                                                                                                                                  if not (False == True) then
                                                                                                                                    if not (False == True) then
                                                                                                                                      if not (False == True) then
                                                                                                                                        if not (False == True) then
                                                                                                                                          if not (False == True) then
                                                                                                                                            if not (False == True) then
                                                                                                                                              if not (False == True) then
                                                                                                                                                if not (False == True) then
                                                                                                                                                  if not (False == True) then
                                                                                                                                                    if not (False == True) then
                                                                                                                                                      if not (False == True) then
                                                                                                                                                        if not (False == True) then
                                                                                                                                                          if not (False == True) then
                                                                                                                                                            if not (False == True) then
                                                                                                                                                              if not (False == True) then
                                                                                                                                                                if not (False == True) then
                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (o11362.Value == True) then
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
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  o27.SetStateValue(o27.GetCalculated())
end, StartCalculate = function()
  o27["Value"] = o27.GetCalculated()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 2, 2001, 2102)
  Game_MissionEnd(GetGameNode(), 0)
end, SetStateValue = function(L0)
  if not (o27.Value == L0) then
    o27["Value"] = L0
    if not (L0 ~= 1) then
      o27.ChangeTo1()
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
S_o1778 = { [nil] = {}, Start = function(L0)

end }
S_o1824 = { [nil] = {}, Start = function(L0)

end }
S_o1870 = { [nil] = {}, Start = function(L0)

end }
S_o1916 = { [nil] = {}, Start = function(L0)

end }
S_o1962 = { [nil] = {}, Start = function(L0)

end }
S_o2008 = { [nil] = {}, Start = function(L0)

end }
S_o2054 = { [nil] = {}, Start = function(L0)

end }
S_o2100 = { [nil] = {}, Start = function(L0)

end }
S_o2146 = { [nil] = {}, Start = function(L0)

end }
S_o2192 = { [nil] = {}, Start = function(L0)

end }
S_o2238 = { [nil] = {}, Start = function(L0)

end }
S_o2284 = { [nil] = {}, Start = function(L0)

end }
S_o2330 = { [nil] = {}, Start = function(L0)

end }
S_o2376 = { [nil] = {}, Start = function(L0)

end }
S_o2422 = { [nil] = {}, Start = function(L0)

end }
S_o2468 = { [nil] = {}, Start = function(L0)

end }
S_o2514 = { [nil] = {}, Start = function(L0)

end }
S_o2560 = { [nil] = {}, Start = function(L0)

end }
S_o2606 = { [nil] = {}, Start = function(L0)

end }
S_o2652 = { [nil] = {}, Start = function(L0)

end }
S_o2698 = { [nil] = {}, Start = function(L0)

end }
S_o2744 = { [nil] = {}, Start = function(L0)

end }
S_o2790 = { [nil] = {}, Start = function(L0)

end }
S_o2836 = { [nil] = {}, Start = function(L0)

end }
S_o2882 = { [nil] = {}, Start = function(L0)

end }
S_o2928 = { [nil] = {}, Start = function(L0)

end }
S_o2974 = { [nil] = {}, Start = function(L0)

end }
S_o3020 = { [nil] = {}, Start = function(L0)

end }
S_o3066 = { [nil] = {}, Start = function(L0)

end }
S_o3112 = { [nil] = {}, Start = function(L0)

end }
S_o3158 = { [nil] = {}, Start = function(L0)

end }
S_o3204 = { [nil] = {}, Start = function(L0)

end }
S_o3250 = { [nil] = {}, Start = function(L0)

end }
S_o3296 = { [nil] = {}, Start = function(L0)

end }
S_o3342 = { [nil] = {}, Start = function(L0)

end }
S_o3388 = { [nil] = {}, Start = function(L0)

end }
S_o3434 = { [nil] = {}, Start = function(L0)

end }
S_o3480 = { [nil] = {}, Start = function(L0)

end }
S_o3526 = { [nil] = {}, Start = function(L0)

end }
S_o3572 = { [nil] = {}, Start = function(L0)

end }
S_o3618 = { [nil] = {}, Start = function(L0)

end }
S_o3664 = { [nil] = {}, Start = function(L0)

end }
S_o3710 = { [nil] = {}, Start = function(L0)

end }
S_o3756 = { [nil] = {}, Start = function(L0)

end }
S_o3802 = { [nil] = {}, Start = function(L0)

end }
S_o3848 = { [nil] = {}, Start = function(L0)

end }
S_o3894 = { [nil] = {}, Start = function(L0)

end }
S_o3940 = { [nil] = {}, Start = function(L0)

end }
S_o3986 = { [nil] = {}, Start = function(L0)

end }
S_o4032 = { [nil] = {}, Start = function(L0)

end }
S_o4078 = { [nil] = {}, Start = function(L0)

end }
S_o4124 = { [nil] = {}, Start = function(L0)

end }
S_o4170 = { [nil] = {}, Start = function(L0)

end }
S_o4216 = { [nil] = {}, Start = function(L0)

end }
S_o4262 = { [nil] = {}, Start = function(L0)

end }
S_o4308 = { [nil] = {}, Start = function(L0)

end }
S_o4354 = { [nil] = {}, Start = function(L0)

end }
S_o4400 = { [nil] = {}, Start = function(L0)

end }
S_o4446 = { [nil] = {}, Start = function(L0)

end }
S_o4492 = { [nil] = {}, Start = function(L0)

end }
S_o4538 = { [nil] = {}, Start = function(L0)

end }
S_o4584 = { [nil] = {}, Start = function(L0)

end }
S_o4630 = { [nil] = {}, Start = function(L0)

end }
S_o4676 = { [nil] = {}, Start = function(L0)

end }
S_o4722 = { [nil] = {}, Start = function(L0)

end }
S_o4768 = { [nil] = {}, Start = function(L0)

end }
S_o4814 = { [nil] = {}, Start = function(L0)

end }
S_o4860 = { [nil] = {}, Start = function(L0)

end }
S_o4906 = { [nil] = {}, Start = function(L0)

end }
S_o4952 = { [nil] = {}, Start = function(L0)

end }
S_o4998 = { [nil] = {}, Start = function(L0)

end }
S_o5044 = { [nil] = {}, Start = function(L0)

end }
S_o5090 = { [nil] = {}, Start = function(L0)

end }
S_o5136 = { [nil] = {}, Start = function(L0)

end }
S_o5182 = { [nil] = {}, Start = function(L0)

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
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5228, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5228, "Code4")
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
S_o5275 = { [nil] = {}, Start = function(L0)

end }
S_o5321 = { [nil] = {}, Start = function(L0)

end }
S_o5367 = { [nil] = {}, Start = function(L0)

end }
S_o5413 = { [nil] = {}, Start = function(L0)

end }
S_o5459 = { [nil] = {}, Start = function(L0)

end }
S_o5505 = { [nil] = {}, Start = function(L0)

end }
S_o5551 = { [nil] = {}, Start = function(L0)

end }
S_o5597 = { [nil] = {}, Start = function(L0)

end }
S_o5643 = { [nil] = {}, Start = function(L0)

end }
S_o5689 = { [nil] = {}, Start = function(L0)

end }
S_o5735 = { [nil] = {}, Start = function(L0)

end }
S_o5781 = { [nil] = {}, Start = function(L0)

end }
S_o5827 = { [nil] = {}, Start = function(L0)

end }
S_o5873 = { [nil] = {}, Start = function(L0)

end }
S_o5919 = { [nil] = {}, Start = function(L0)

end }
S_o5965 = { [nil] = {}, Start = function(L0)

end }
S_o6011 = { [nil] = {}, Start = function(L0)

end }
S_o6057 = { [nil] = {}, Start = function(L0)

end }
S_o6103 = { [nil] = {}, Start = function(L0)

end }
S_o6149 = { [nil] = {}, Start = function(L0)

end }
S_o6195 = { [nil] = {}, Start = function(L0)

end }
S_o6241 = { [nil] = {}, Start = function(L0)

end }
S_o6287 = { [nil] = {}, Start = function(L0)

end }
S_o6333 = { [nil] = {}, Start = function(L0)

end }
S_o6379 = { [nil] = {}, Start = function(L0)

end }
S_o6425 = { [nil] = {}, Start = function(L0)

end }
S_o6471 = { [nil] = {}, Start = function(L0)

end }
S_o6517 = { [nil] = {}, Start = function(L0)

end }
S_o6563 = { [nil] = {}, Start = function(L0)

end }
S_o6609 = { [nil] = {}, Start = function(L0)

end }
S_o6655 = { [nil] = {}, Start = function(L0)

end }
S_o6701 = { [nil] = {}, Start = function(L0)

end }
S_o6747 = { [nil] = {}, Start = function(L0)

end }
S_o6793 = { [nil] = {}, Start = function(L0)

end }
S_o6839 = { [nil] = {}, Start = function(L0)

end }
S_o6885 = { [nil] = {}, Start = function(L0)

end }
S_o6931 = { [nil] = {}, Start = function(L0)

end }
S_o6977 = { [nil] = {}, Start = function(L0)

end }
S_o7023 = { [nil] = {}, Start = function(L0)

end }
S_o7069 = { [nil] = {}, Start = function(L0)

end }
S_o7115 = { [nil] = {}, Start = function(L0)

end }
S_o7161 = { [nil] = {}, Start = function(L0)

end }
S_o7207 = { [nil] = {}, Start = function(L0)

end }
S_o7253 = { [nil] = {}, Start = function(L0)

end }
S_o7299 = { [nil] = {}, Start = function(L0)

end }
S_o7345 = { [nil] = {}, Start = function(L0)

end }
S_o7391 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  CallFunction(o7391, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7391, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7391, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7393 = { [nil] = {}, Start = function(L0)

end }
S_o7439 = { [nil] = {}, Start = function(L0)

end }
S_o7485 = { [nil] = {}, Start = function(L0)

end }
S_o7531 = { [nil] = {}, Start = function(L0)

end }
S_o7577 = { [nil] = {}, Start = function(L0)

end }
S_o7623 = { [nil] = {}, Start = function(L0)

end }
S_o7669 = { [nil] = {}, Start = function(L0)

end }
S_o7715 = { [nil] = {}, Start = function(L0)

end }
S_o7761 = { [nil] = {}, Start = function(L0)

end }
S_o7807 = { [nil] = {}, Start = function(L0)

end }
S_o7853 = { [nil] = {}, Start = function(L0)

end }
S_o7899 = { [nil] = {}, Start = function(L0)

end }
S_o7945 = { [nil] = {}, Start = function(L0)

end }
S_o7991 = { [nil] = {}, Start = function(L0)

end }
S_o8037 = { [nil] = {}, Start = function(L0)

end }
S_o8083 = { [nil] = {}, Start = function(L0)

end }
S_o8129 = { [nil] = {}, Start = function(L0)

end }
S_o8175 = { [nil] = {}, Start = function(L0)

end }
S_o8221 = { [nil] = {}, Start = function(L0)

end }
S_o8267 = { [nil] = {}, Start = function(L0)

end }
S_o8313 = { [nil] = {}, Start = function(L0)

end }
S_o8359 = { [nil] = {}, Start = function(L0)

end }
S_o8405 = { [nil] = {}, Start = function(L0)

end }
S_o8451 = { [nil] = {}, Start = function(L0)

end }
S_o8497 = { [nil] = {}, Start = function(L0)

end }
S_o8543 = { [nil] = {}, Start = function(L0)

end }
S_o8589 = { [nil] = {}, Start = function(L0)

end }
S_o8635 = { [nil] = {}, Start = function(L0)

end }
S_o8681 = { [nil] = {}, Start = function(L0)

end }
S_o8727 = { [nil] = {}, Start = function(L0)

end }
S_o8773 = { [nil] = {}, Start = function(L0)

end }
S_o8819 = { [nil] = {}, Start = function(L0)

end }
S_o8865 = { [nil] = {}, Start = function(L0)

end }
S_o8911 = { [nil] = {}, Start = function(L0)

end }
S_o8957 = { [nil] = {}, Start = function(L0)

end }
S_o9003 = { [nil] = {}, Start = function(L0)

end }
S_o9049 = { [nil] = {}, Start = function(L0)

end }
S_o9095 = { [nil] = {}, Start = function(L0)

end }
S_o9141 = { [nil] = {}, Start = function(L0)

end }
S_o9187 = { [nil] = {}, Start = function(L0)

end }
S_o9233 = { [nil] = {}, Start = function(L0)

end }
S_o9279 = { [nil] = {}, Start = function(L0)

end }
S_o9325 = { [nil] = {}, Start = function(L0)

end }
S_o9371 = { [nil] = {}, Start = function(L0)

end }
S_o9417 = { [nil] = {}, Start = function(L0)

end }
S_o9463 = { [nil] = {}, Start = function(L0)

end }
S_o9509 = { [nil] = {}, Start = function(L0)

end }
S_o9555 = { [nil] = {}, Start = function(L0)

end }
S_o9601 = { [nil] = {}, Start = function(L0)

end }
S_o9647 = { [nil] = {}, Start = function(L0)

end }
S_o9693 = { [nil] = {}, Start = function(L0)

end }
S_o9739 = { [nil] = {}, Start = function(L0)

end }
S_o9785 = { [nil] = {}, Start = function(L0)

end }
S_o9831 = { [nil] = {}, Start = function(L0)

end }
S_o9877 = { [nil] = {}, Start = function(L0)

end }
S_o9923 = { [nil] = {}, Start = function(L0)

end }
S_o9969 = { [nil] = {}, Start = function(L0)

end }
S_o10015 = { [nil] = {}, Start = function(L0)

end }
S_o10061 = { [nil] = {}, Start = function(L0)

end }
S_o10107 = { [nil] = {}, Start = function(L0)

end }
S_o10153 = { [nil] = {}, Start = function(L0)

end }
S_o10199 = { [nil] = {}, Start = function(L0)

end }
S_o10245 = { [nil] = {}, Start = function(L0)

end }
S_o10291 = { [nil] = {}, Start = function(L0)

end }
S_o10337 = { [nil] = {}, Start = function(L0)

end }
S_o10383 = { [nil] = {}, Start = function(L0)

end }
S_o10429 = { [nil] = {}, Start = function(L0)

end }
S_o10475 = { [nil] = {}, Start = function(L0)

end }
S_o10521 = { [nil] = {}, Start = function(L0)

end }
S_o10567 = { [nil] = {}, Start = function(L0)

end }
S_o10613 = { [nil] = {}, Start = function(L0)

end }
S_o10659 = { [nil] = {}, Start = function(L0)

end }
S_o10705 = { [nil] = {}, Start = function(L0)

end }
S_o10751 = { [nil] = {}, Start = function(L0)

end }
o10797 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/ApproachPath_1", "/Scenario_Dynamic/Navigation/DockPath_1", "/Scenario_Dynamic/Navigation/DockArea_1")
o10799 = FormationLib.CreateFormation("TriangleUpper", "", "", "", 40, 50)
S_o10800 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10800, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10800, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10800, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "gen_tiburon_1", "", "", "", False, False, True)
  CallFunction(o10800, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10800, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10800, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o10805.SetStateValue(L1)
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
o10805 = { [nil] = {}, Start = function()
  o10805["Value"] = False
  o11326.StartCalculate()
end, SetStateValue = function(L0)
  if not (o10805.Value == L0) then
    o10805["Value"] = L0
    o11326.ReCalculate()
  end
end }
S_o10806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10806, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10806, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10806, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o10806, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o10806, "Code5")
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
S_o10862 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10862, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10862, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10862, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o10862, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o10862, "Code5")
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
S_o10918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10918, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10918, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10918, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o10918, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o10918, "Code5")
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
S_o10974 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10974, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10974, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10974, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o10974, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o10974, "Code5")
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
S_o11030 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11030, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11030, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11030, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11030, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11030, "Code5")
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
S_o11086 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11086, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11086, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11086, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11086, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11086, "Code5")
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
S_o11142 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11142, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11142, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11142, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11142, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11142, "Code5")
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
S_o11198 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11198, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11198, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11198, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11198, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11198, "Code5")
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
S_o11254 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11254, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11254, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11254, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11254, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11254, "Code5")
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
S_o11310 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 1500)
  Body_AddItem(L0.Node, "torpedo_maneater", 3)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 1)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_doommortar", 1)
  CallFunction(o11310, "Code11")
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
o11324 = { [nil] = {}, Start = function()
  o11324["Value"] = False
  o11769.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11324.Value == L0) then
    o11324["Value"] = L0
    o11769.ReCalculate()
  end
end }
o11325 = { [nil] = {}, GetCalculated = function()
  if not (o11369.Value == True) then
    if not (o11425.Value == True) then
      if not (o11481.Value == True) then
        if not (o11537.Value == True) then
          if not (o11593.Value == True) then
            if not (o11649.Value == True) then
              if not (o11705.Value ~= True) then
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
  o11325.SetStateValue(o11325.GetCalculated())
end, StartCalculate = function()
  o11325["Value"] = o11325.GetCalculated()
  o11326.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o11325.Value == L0) then
    o11325["Value"] = L0
    o11326.ReCalculate()
    if not (L0 ~= 1) then
      o11325.ChangeTo1()
    end
  end
end }
o11326 = { [nil] = {}, GetCalculated = function()
  if not (o11325.Value == True) then
    if not (o10805.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o11326.SetStateValue(o11326.GetCalculated())
end, StartCalculate = function()
  o11326["Value"] = o11326.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 504)
  SendRadioMessageTake(o11763.Node, o11310.Node, 505)
  Game_SetWayPoint(GetGameNode(), o11824.Node)
  SED_SetTaskTextKey(2101, -1, -1)
end, SetStateValue = function(L0)
  if not (o11326.Value == L0) then
    DelayedFunction(1.2, o11326, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11326.Value == L0) then
    o11326["Value"] = L0
    if not (L0 ~= 1) then
      o11326.ChangeTo1()
    end
  end
end }
o11327 = { [nil] = {}, GetCalculated = function()
  if not (o11427.Value == True) then
    if not (o11483.Value == True) then
      if not (o11539.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o11327.SetStateValue(o11327.GetCalculated())
end, StartCalculate = function()
  o11327["Value"] = o11327.GetCalculated()
  o11770.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 506)
  Game_SetWayPoint(GetGameNode(), o11829.Node)
end, SetStateValue = function(L0)
  if not (o11327.Value == L0) then
    o11327["Value"] = L0
    o11770.ReCalculate()
    if not (L0 ~= 1) then
      o11327.ChangeTo1()
    end
  end
end }
o11328 = { [nil] = {}, GetCalculated = function()
  if not (o11775.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11328.SetStateValue(o11328.GetCalculated())
end, StartCalculate = function()
  o11328["Value"] = o11328.GetCalculated()
  o11329.StartCalculate()
  o11330.StartCalculate()
  o11331.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 507)
end, SetStateValue = function(L0)
  if not (o11328.Value == L0) then
    o11328["Value"] = L0
    o11329.ReCalculate()
    o11330.ReCalculate()
    o11331.ReCalculate()
    if not (L0 ~= 1) then
      o11328.ChangeTo1()
    end
  end
end }
o11329 = { [nil] = {}, GetCalculated = function()
  if not (o11328.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11329.SetStateValue(o11329.GetCalculated())
end, StartCalculate = function()
  o11329["Value"] = o11329.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 508)
end, SetStateValue = function(L0)
  if not (o11329.Value == L0) then
    DelayedFunction(10, o11329, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11329.Value == L0) then
    o11329["Value"] = L0
    if not (L0 ~= 1) then
      o11329.ChangeTo1()
    end
  end
end }
o11330 = { [nil] = {}, GetCalculated = function()
  if not (o11328.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11330.SetStateValue(o11330.GetCalculated())
end, StartCalculate = function()
  o11330["Value"] = o11330.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 509)
end, SetStateValue = function(L0)
  if not (o11330.Value == L0) then
    DelayedFunction(20, o11330, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11330.Value == L0) then
    o11330["Value"] = L0
    if not (L0 ~= 1) then
      o11330.ChangeTo1()
    end
  end
end }
o11331 = { [nil] = {}, GetCalculated = function()
  if not (o11328.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11331.SetStateValue(o11331.GetCalculated())
end, StartCalculate = function()
  o11331["Value"] = o11331.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 510)
  SendRadioMessageTake(o11763.Node, o11310.Node, 511)
  SendRadioMessageTake(o11763.Node, o11310.Node, 512)
end, SetStateValue = function(L0)
  if not (o11331.Value == L0) then
    DelayedFunction(30, o11331, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11331.Value == L0) then
    o11331["Value"] = L0
    if not (L0 ~= 1) then
      o11331.ChangeTo1()
    end
  end
end }
o11332 = { [nil] = {}, GetCalculated = function()
  if not (o11777.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11332.SetStateValue(o11332.GetCalculated())
end, StartCalculate = function()
  o11332["Value"] = o11332.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 513)
end, SetStateValue = function(L0)
  if not (o11332.Value == L0) then
    o11332["Value"] = L0
    if not (L0 ~= 1) then
      o11332.ChangeTo1()
    end
  end
end }
o11333 = { [nil] = {}, GetCalculated = function()
  if not (o11371.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11333.SetStateValue(o11333.GetCalculated())
end, StartCalculate = function()
  o11333["Value"] = o11333.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11763.Node, o11310.Node, 514)
end, SetStateValue = function(L0)
  if not (o11333.Value == L0) then
    o11333["Value"] = L0
    if not (L0 ~= 1) then
      o11333.ChangeTo1()
    end
  end
end }
o11334 = { [nil] = {}, GetCalculated = function()
  if not (o11371.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11334.SetStateValue(o11334.GetCalculated())
end, StartCalculate = function()
  o11334["Value"] = o11334.GetCalculated()
  o11335.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11310.Node, o11310.Node, 516)
end, SetStateValue = function(L0)
  if not (o11334.Value == L0) then
    DelayedFunction(8, o11334, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11334.Value == L0) then
    o11334["Value"] = L0
    o11335.ReCalculate()
    if not (L0 ~= 1) then
      o11334.ChangeTo1()
    end
  end
end }
o11335 = { [nil] = {}, GetCalculated = function()
  if not (o11334.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11335.SetStateValue(o11335.GetCalculated())
end, StartCalculate = function()
  o11335["Value"] = o11335.GetCalculated()
  o11337.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11335.Value == L0) then
    DelayedFunction(4, o11335, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11335.Value == L0) then
    o11335["Value"] = L0
    o11337.ReCalculate()
  end
end }
o11336 = { [nil] = {}, GetCalculated = function()
  if not (o11427.Value ~= True) then
    if not (o11483.Value ~= True) then
      if not (o11539.Value ~= True) then
        if not (o11595.Value ~= True) then
          if not (o11651.Value ~= True) then
            if not (o11707.Value ~= True) then
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
  o11336.SetStateValue(o11336.GetCalculated())
end, StartCalculate = function()
  o11336["Value"] = o11336.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2101)
end, SetStateValue = function(L0)
  if not (o11336.Value == L0) then
    o11336["Value"] = L0
    if not (L0 ~= 1) then
      o11336.ChangeTo1()
    end
  end
end }
o11337 = { [nil] = {}, GetCalculated = function()
  if not (o11335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11337.SetStateValue(o11337.GetCalculated())
end, StartCalculate = function()
  o11337["Value"] = o11337.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2102)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o11337.Value == L0) then
    o11337["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o11337.ChangeTo1()
    end
  end
end }
o11361 = { [nil] = {}, GetCalculated = function()
  if not (o11387.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11361.SetStateValue(o11361.GetCalculated())
end, StartCalculate = function()
  o11361["Value"] = o11361.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11361.Value == L0) then
    o11361["Value"] = L0
    o26.ReCalculate()
  end
end }
o11362 = { [nil] = {}, GetCalculated = function()
  if not (o11773.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11362.SetStateValue(o11362.GetCalculated())
end, StartCalculate = function()
  o11362["Value"] = o11362.GetCalculated()
  o27.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11362.Value == L0) then
    o11362["Value"] = L0
    o27.ReCalculate()
  end
end }
S_o11365 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11365, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11365, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11365, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_SetObservedDestroyer(L0.Node, 1, o11310.Node)
  CallFunction(o11365, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o11365, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TiburonPath_1", 0.5, 3 } }(o10798, o10799, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", True, "Code6")
  else
    CallFunction(o11365, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o11365, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11365, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o11365, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Attacked = function(L0, L1)
  o11369.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11371.SetStateValue(L1)
end, SetStateValue_DestroyedBy1 = function(L0, L1)
  o11387.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11367.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o11366.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o11368.Value ~= True) then
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
o11366 = { [nil] = {}, GetCalculated = function()
  if not (o11775.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11366.SetStateValue(o11366.GetCalculated())
end, StartCalculate = function()
  o11366["Value"] = o11366.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11366.Value == L0) then
    DelayedFunction(3, o11366, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11366.Value == L0) then
    o11366["Value"] = L0
    CallFunction(o11365, "ProcesseStateChange")
  end
end }
o11367 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11367.SetStateValue(o11367.GetCalculated())
end, StartCalculate = function()
  o11367["Value"] = o11367.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11367.Value == L0) then
    o11367["Value"] = L0
    CallFunction(o11365, "ProcesseStateChange")
  end
end }
o11368 = { [nil] = {}, GetCalculated = function()
  if not (o11777.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11368.SetStateValue(o11368.GetCalculated())
end, StartCalculate = function()
  o11368["Value"] = o11368.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11368.Value == L0) then
    DelayedFunction(5, o11368, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11368.Value == L0) then
    o11368["Value"] = L0
    CallFunction(o11365, "ProcesseStateChange")
  end
end }
o11369 = { [nil] = {}, Start = function()
  o11369["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11369.Value == L0) then
    o11369["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11371 = { [nil] = {}, Start = function()
  o11371["Value"] = False
  o11333.StartCalculate()
  o11334.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11371.Value == L0) then
    o11371["Value"] = L0
    o11333.ReCalculate()
    o11334.ReCalculate()
  end
end }
o11387 = { [nil] = {}, Start = function()
  o11387["Value"] = False
  o11361.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11387.Value == L0) then
    o11387["Value"] = L0
    o11361.ReCalculate()
  end
end }
S_o11422 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11422, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11422, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11422, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o10799, 0, 512, "E", "", "", "", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", 1, 5, "Code4")
  else
    CallFunction(o11422, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o11425.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11427.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11424.Value ~= True) then
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
o11424 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11424.SetStateValue(o11424.GetCalculated())
end, StartCalculate = function()
  o11424["Value"] = o11424.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11424.Value == L0) then
    o11424["Value"] = L0
    CallFunction(o11422, "ProcesseStateChange")
  end
end }
o11425 = { [nil] = {}, Start = function()
  o11425["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11425.Value == L0) then
    o11425["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11427 = { [nil] = {}, Start = function()
  o11427["Value"] = False
  o11327.StartCalculate()
  o11336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11427.Value == L0) then
    o11427["Value"] = L0
    o11327.ReCalculate()
    o11336.ReCalculate()
  end
end }
S_o11478 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11478, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11478, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11478, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o10799, 0, 512, "E", "", "", "", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", 1, 5, "Code4")
  else
    CallFunction(o11478, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o11481.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11483.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11480.Value ~= True) then
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
o11480 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11480.SetStateValue(o11480.GetCalculated())
end, StartCalculate = function()
  o11480["Value"] = o11480.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11480.Value == L0) then
    o11480["Value"] = L0
    CallFunction(o11478, "ProcesseStateChange")
  end
end }
o11481 = { [nil] = {}, Start = function()
  o11481["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11481.Value == L0) then
    o11481["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11483 = { [nil] = {}, Start = function()
  o11483["Value"] = False
  o11327.StartCalculate()
  o11336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11483.Value == L0) then
    o11483["Value"] = L0
    o11327.ReCalculate()
    o11336.ReCalculate()
  end
end }
S_o11534 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11534, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11534, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11534, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o10799, 0, 512, "E", "", "", "", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", 1, 5, "Code4")
  else
    CallFunction(o11534, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o11537.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11539.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11536.Value ~= True) then
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
o11536 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11536.SetStateValue(o11536.GetCalculated())
end, StartCalculate = function()
  o11536["Value"] = o11536.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11536.Value == L0) then
    o11536["Value"] = L0
    CallFunction(o11534, "ProcesseStateChange")
  end
end }
o11537 = { [nil] = {}, Start = function()
  o11537["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11537.Value == L0) then
    o11537["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11539 = { [nil] = {}, Start = function()
  o11539["Value"] = False
  o11327.StartCalculate()
  o11336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11539.Value == L0) then
    o11539["Value"] = L0
    o11327.ReCalculate()
    o11336.ReCalculate()
  end
end }
S_o11590 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11590, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11590, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11590, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o10799, 0, 512, "E", "", "", "", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", 1, 5, "Code4")
  else
    CallFunction(o11590, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o11593.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11595.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11592.Value ~= True) then
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
o11592 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11592.SetStateValue(o11592.GetCalculated())
end, StartCalculate = function()
  o11592["Value"] = o11592.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11592.Value == L0) then
    o11592["Value"] = L0
    CallFunction(o11590, "ProcesseStateChange")
  end
end }
o11593 = { [nil] = {}, Start = function()
  o11593["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11593.Value == L0) then
    o11593["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11595 = { [nil] = {}, Start = function()
  o11595["Value"] = False
  o11336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11595.Value == L0) then
    o11595["Value"] = L0
    o11336.ReCalculate()
  end
end }
S_o11646 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11646, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11646, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11646, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o10799, 0, 512, "E", "", "", "", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", 1, 5, "Code4")
  else
    CallFunction(o11646, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o11649.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11651.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11648.Value ~= True) then
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
o11648 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11648.SetStateValue(o11648.GetCalculated())
end, StartCalculate = function()
  o11648["Value"] = o11648.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11648.Value == L0) then
    o11648["Value"] = L0
    CallFunction(o11646, "ProcesseStateChange")
  end
end }
o11649 = { [nil] = {}, Start = function()
  o11649["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11649.Value == L0) then
    o11649["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11651 = { [nil] = {}, Start = function()
  o11651["Value"] = False
  o11336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11651.Value == L0) then
    o11651["Value"] = L0
    o11336.ReCalculate()
  end
end }
S_o11702 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11702, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11702, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11702, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o10799, 0, 512, "E", "", "", "", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_2", 1, 5, "Code4")
  else
    CallFunction(o11702, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, SetStateValue_Attacked = function(L0, L1)
  o11705.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11707.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11704.Value ~= True) then
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
o11704 = { [nil] = {}, GetCalculated = function()
  if not (o11761.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11704.SetStateValue(o11704.GetCalculated())
end, StartCalculate = function()
  o11704["Value"] = o11704.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11704.Value == L0) then
    o11704["Value"] = L0
    CallFunction(o11702, "ProcesseStateChange")
  end
end }
o11705 = { [nil] = {}, Start = function()
  o11705["Value"] = False
  o11325.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11705.Value == L0) then
    o11705["Value"] = L0
    o11325.ReCalculate()
  end
end }
o11707 = { [nil] = {}, Start = function()
  o11707["Value"] = False
  o11336.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11707.Value == L0) then
    o11707["Value"] = L0
    o11336.ReCalculate()
  end
end }
S_o11758 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o11758, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o11761.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o11761 = { [nil] = {}, Start = function()
  o11761["Value"] = False
  o11367.StartCalculate()
  o11424.StartCalculate()
  o11480.StartCalculate()
  o11536.StartCalculate()
  o11592.StartCalculate()
  o11648.StartCalculate()
  o11704.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11761.Value == L0) then
    o11761["Value"] = L0
    o11367.ReCalculate()
    o11424.ReCalculate()
    o11480.ReCalculate()
    o11536.ReCalculate()
    o11592.ReCalculate()
    o11648.ReCalculate()
    o11704.ReCalculate()
  end
end }
S_o11763 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11763, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11763, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11763, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_SuspendCollisionReaction(L0.Node)
  CallFunction(o11763, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o11763, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o11763, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11763, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o11763, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o11763, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11763, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o11763, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o11365.Node, "DP_ver_1", "DP_ver_1", 1, 1, 60, "Code12")
  else
    CallFunction(o11763, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyPath_2", 1, 1 } }("Code13")
  else
    CallFunction(o11763, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code14")
  else
    CallFunction(o11763, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o10797, nil, 0, "Code15")
  else
    CallFunction(o11763, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, SetStateValue_Destroyed = function(L0, L1)
  o11773.SetStateValue(L1)
end, SetStateValue_InfiltrateBegin = function(L0, L1)
  o11775.SetStateValue(L1)
end, SetStateValue_InfiltrateSuccess = function(L0, L1)
  o11777.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o11769.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o11770.Value ~= True) then
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
o11769 = { [nil] = {}, GetCalculated = function()
  if not (o11324.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11769.SetStateValue(o11769.GetCalculated())
end, StartCalculate = function()
  o11769["Value"] = o11769.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11769.Value == L0) then
    o11769["Value"] = L0
    CallFunction(o11763, "ProcesseStateChange")
  end
end }
o11770 = { [nil] = {}, GetCalculated = function()
  if not (o11327.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11770.SetStateValue(o11770.GetCalculated())
end, StartCalculate = function()
  o11770["Value"] = o11770.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11770.Value == L0) then
    o11770["Value"] = L0
    CallFunction(o11763, "ProcesseStateChange")
  end
end }
o11773 = { [nil] = {}, Start = function()
  o11773["Value"] = False
  o11362.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11773.Value == L0) then
    o11773["Value"] = L0
    o11362.ReCalculate()
  end
end }
o11775 = { [nil] = {}, Start = function()
  o11775["Value"] = False
  o11328.StartCalculate()
  o11366.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11775.Value == L0) then
    o11775["Value"] = L0
    o11328.ReCalculate()
    o11366.ReCalculate()
  end
end }
o11777 = { [nil] = {}, Start = function()
  o11777["Value"] = False
  o11332.StartCalculate()
  o11368.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11777.Value == L0) then
    o11777["Value"] = L0
    o11332.ReCalculate()
    o11368.ReCalculate()
  end
end }
S_o11824 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o11365.Node)
  CallFunction(o11824, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11829 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o11763.Node)
  CallFunction(o11829, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11834 = { [nil] = {}, Start = function(L0)

end }
S_o11835 = { [nil] = {}, Start = function(L0)

end }
S_o11836 = { [nil] = {}, Start = function(L0)

end }
S_o11837 = { [nil] = {}, Start = function(L0)

end }
S_o11838 = { [nil] = {}, Start = function(L0)

end }
S_o11839 = { [nil] = {}, Start = function(L0)

end }
S_o11840 = { [nil] = {}, Start = function(L0)

end }
S_o11841 = { [nil] = {}, Start = function(L0)

end }
S_o11842 = { [nil] = {}, Start = function(L0)

end }
S_o11843 = { [nil] = {}, Start = function(L0)

end }
o11845 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o11846 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1.5)
  CallFunction(o11846, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o11846, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Position_2", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o11846, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code9")
  else
    CallFunction(o11846, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 1, "MMMN", 0)
  CallFunction(o11846, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11850 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code1")
  else
    CallFunction(o11850, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o11844, o11845, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o11850, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11844, o11845, "/InGameSequences/Navigation/PlayerPath_1", "pos_1", "pos_2", 1, 1, "Code3")
  else
    CallFunction(o11850, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Camera_Cut(L0.Node, 1)
  CallFunction(o11850, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code5")
  else
    CallFunction(o11850, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Director_EndCutscene(L0.Node)
  CallFunction(o11850, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code7")
  else
    CallFunction(o11850, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SendRadioMessageTake(o11310.Node, o11310.Node, 502)
  Game_SetWayPoint(GetGameNode(), o11758.Node)
  o11324.SetStateValue(True)
  CallFunction(o11850, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11855 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/InGameSequences/Navigation/Path_1", 1, 1 } }("Code1")
  else
    CallFunction(o11855, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 343)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_2", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_concordia_1", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_2", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_ec_obelisk_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_ec_tower_1", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_ec_triumph_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_3", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_1", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_1", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_2", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_2", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_2", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_2", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_2", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_2", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_3", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_3", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_3", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_3", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_3", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_3", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_4", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_4", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_4", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_4", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_4", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_4", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_5", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_5", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_5", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_5", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_5", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_5", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_6", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_6", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_6", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_6", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_6", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_6", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_7", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_7", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_7", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_7", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_7", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_7", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_8", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_8", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_8", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_8", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_8", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_9", S_o2606)
  o2652 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_9", S_o2652)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_9", S_o2698)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_9", S_o2744)
  o2790 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_9", S_o2790)
  o2836 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_9", S_o2836)
  o2882 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_10", S_o2882)
  o2928 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_10", S_o2928)
  o2974 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_10", S_o2974)
  o3020 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_10", S_o3020)
  o3066 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_11", S_o3066)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_11", S_o3112)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_11", S_o3158)
  o3204 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_11", S_o3204)
  o3250 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_11", S_o3250)
  o3296 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_12", S_o3296)
  o3342 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_12", S_o3342)
  o3388 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_1", S_o3388)
  o3434 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_2", S_o3434)
  o3480 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_3", S_o3480)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_4", S_o3526)
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_1", S_o3572)
  o3618 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_2", S_o3618)
  o3664 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o3664)
  o3710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o3710)
  o3756 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o3756)
  o3802 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o3802)
  o3848 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o3848)
  o3894 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o3894)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o3940)
  o3986 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_10", S_o3986)
  o4032 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_11", S_o4032)
  o4078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o4078)
  o4124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o4124)
  o4170 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_10", S_o4170)
  o4216 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_11", S_o4216)
  o4262 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_5", S_o4262)
  o4308 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_6", S_o4308)
  o4354 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_3", S_o4354)
  o4400 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o4400)
  o4446 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o4446)
  o4492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o4492)
  o4538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_11", S_o4538)
  o4584 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o4584)
  o4630 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o4630)
  o4676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_10", S_o4676)
  o4722 = BindEasy(Node_Find("/Scenario_Static/Object"), "NAVYHQ", S_o4722)
  o4768 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dockingnode_1", S_o4768)
  o4814 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dockingnode_2", S_o4814)
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dockingnode_3", S_o4860)
  o4906 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_quay_1", S_o4906)
  o4952 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_quay_2", S_o4952)
  o4998 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_quay_3", S_o4998)
  o5044 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_shelter_1", S_o5044)
  o5090 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_metalblock3_1", S_o5090)
  o5136 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_metalblock2_1", S_o5136)
  o5182 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dock3_3", S_o5182)
  o5228 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum", S_o5228)
  o5275 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_museum_1", S_o5275)
  o5321 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_l_1", S_o5321)
  o5367 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_1", S_o5367)
  o5413 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_2", S_o5413)
  o5459 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_3", S_o5459)
  o5505 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_4", S_o5505)
  o5551 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_5", S_o5551)
  o5597 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_6", S_o5597)
  o5643 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_7", S_o5643)
  o5689 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_8", S_o5689)
  o5735 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_s", S_o5735)
  o5781 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_1", S_o5781)
  o5827 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_2", S_o5827)
  o5873 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_3", S_o5873)
  o5919 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_4", S_o5919)
  o5965 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_1", S_o5965)
  o6011 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_2", S_o6011)
  o6057 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_3", S_o6057)
  o6103 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_4", S_o6103)
  o6149 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_5", S_o6149)
  o6195 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_6", S_o6195)
  o6241 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_7", S_o6241)
  o6287 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_8", S_o6287)
  o6333 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_9", S_o6333)
  o6379 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_1", S_o6379)
  o6425 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_2", S_o6425)
  o6471 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_3", S_o6471)
  o6517 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_1", S_o6517)
  o6563 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_2", S_o6563)
  o6609 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_3", S_o6609)
  o6655 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_4", S_o6655)
  o6701 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_5", S_o6701)
  o6747 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_6", S_o6747)
  o6793 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_7", S_o6793)
  o6839 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_8", S_o6839)
  o6885 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_9", S_o6885)
  o6931 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_10", S_o6931)
  o6977 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_11", S_o6977)
  o7023 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_12", S_o7023)
  o7069 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_13", S_o7069)
  o7115 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_14", S_o7115)
  o7161 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_15", S_o7161)
  o7207 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_16", S_o7207)
  o7253 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_17", S_o7253)
  o7299 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_18", S_o7299)
  o7345 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_scoop_1", S_o7345)
  o7391 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_laserwall_1", S_o7391)
  o7393 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_t1", S_o7393)
  o7439 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_t2", S_o7439)
  o7485 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_3", S_o7485)
  o7531 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_4", S_o7531)
  o7577 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o7577)
  o7623 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_2", S_o7623)
  o7669 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_3", S_o7669)
  o7715 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_4", S_o7715)
  o7761 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_3", S_o7761)
  o7807 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_4", S_o7807)
  o7853 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_shelter_1", S_o7853)
  o7899 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_shelter_2", S_o7899)
  o7945 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_01_1", S_o7945)
  o7991 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_1", S_o7991)
  o8037 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_03_1", S_o8037)
  o8083 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_2", S_o8083)
  o8129 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_1", S_o8129)
  o8175 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_2", S_o8175)
  o8221 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_3", S_o8221)
  o8267 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_4", S_o8267)
  o8313 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o8313)
  o8359 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o8359)
  o8405 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_3", S_o8405)
  o8451 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_4", S_o8451)
  o8497 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_5", S_o8497)
  o8543 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_6", S_o8543)
  o8589 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_1", S_o8589)
  o8635 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_2", S_o8635)
  o8681 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_3", S_o8681)
  o8727 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_4", S_o8727)
  o8773 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_6", S_o8773)
  o8819 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_7", S_o8819)
  o8865 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_8", S_o8865)
  o8911 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_9", S_o8911)
  o8957 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_10", S_o8957)
  o9003 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_11", S_o9003)
  o9049 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_12", S_o9049)
  o9095 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_13", S_o9095)
  o9141 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_14", S_o9141)
  o9187 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_15", S_o9187)
  o9233 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_1", S_o9233)
  o9279 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_2", S_o9279)
  o9325 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_3", S_o9325)
  o9371 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_4", S_o9371)
  o9417 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_5", S_o9417)
  o9463 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_6", S_o9463)
  o9509 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_7", S_o9509)
  o9555 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_8", S_o9555)
  o9601 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_9", S_o9601)
  o9647 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_10", S_o9647)
  o9693 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_1", S_o9693)
  o9739 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_2", S_o9739)
  o9785 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_3", S_o9785)
  o9831 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_4", S_o9831)
  o9877 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_9", S_o9877)
  o9923 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_10", S_o9923)
  o9969 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_11", S_o9969)
  o10015 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_12", S_o10015)
  o10061 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_13", S_o10061)
  o10107 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_14", S_o10107)
  o10153 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_15", S_o10153)
  o10199 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_16", S_o10199)
  o10245 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_1", S_o10245)
  o10291 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_2", S_o10291)
  o10337 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_3", S_o10337)
  o10383 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_4", S_o10383)
  o10429 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_5", S_o10429)
  o10475 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_6", S_o10475)
  o10521 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_7", S_o10521)
  o10567 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_8", S_o10567)
  o10613 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_1", S_o10613)
  o10659 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_2", S_o10659)
  o10705 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_3", S_o10705)
  o10751 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_4", S_o10751)
  o10800 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresenceBox_1", S_o10800)
  o10805.Start()
  o10806 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p1", S_o10806)
  o10862 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p1", S_o10862)
  o10918 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p1", S_o10918)
  o10974 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p1", S_o10974)
  o11030 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_skipjack_p1", S_o11030)
  o11086 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p2", S_o11086)
  o11142 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p2", S_o11142)
  o11198 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p2", S_o11198)
  o11254 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p2", S_o11254)
  o11310 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o11310)
  o11324.Start()
  o11365 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_tiburon_1", S_o11365)
  o11369.Start()
  o11371.Start()
  o11387.Start()
  o11422 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_1", S_o11422)
  o11425.Start()
  o11427.Start()
  o11478 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_2", S_o11478)
  o11481.Start()
  o11483.Start()
  o11534 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_3", S_o11534)
  o11537.Start()
  o11539.Start()
  o11590 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_4", S_o11590)
  o11593.Start()
  o11595.Start()
  o11646 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_5", S_o11646)
  o11649.Start()
  o11651.Start()
  o11702 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_scout2_narrow_6", S_o11702)
  o11705.Start()
  o11707.Start()
  o11758 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o11758)
  o11761.Start()
  o11763 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_techbomber_1", S_o11763)
  o11773.Start()
  o11775.Start()
  o11777.Start()
  o11824 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o11824)
  o11829 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_guard_1", S_o11829)
  o11834 = BindEasy(Node_Find("/"), "Camera", S_o11834)
  o11835 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_1", S_o11835)
  o11836 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_2", S_o11836)
  o11837 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_3", S_o11837)
  o11838 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_4", S_o11838)
  o11839 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_5", S_o11839)
  o11840 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_6", S_o11840)
  o11841 = BindEasy(Node_Find("/InGameSequences/Navigation"), "GotoPosition_7", S_o11841)
  o11842 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o11842)
  o11843 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o11843)
  o11855 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_1", S_o11855)
  o11846 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_1", S_o11846)
  o11850 = BindEasy(Node_Find("/InGameSequences/Director"), "Director_2", S_o11850)
  o10798 = { {}, o11365, o11422, o11478, o11534, o11590, o11646, o11702 }()
  o11844 = { {}, o11310 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
