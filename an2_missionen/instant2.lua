-- dekompiliert aus instant2.sco
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
  Game_SetTerrainDepth(node0, 2728)
  Game_SetDecompressionHeight(node0, 225)
  Game_SetDecompressionRange(node0, 0, 1, 1)
  Game_SetAmbientLight(node0, 0.094118, 0.105882, 0.129412)
  Game_SetParallelLightT(node0, 0.184314, 0.215686, 0.258824)
  Game_SetParallelLightB(node0, 0.094118, 0.105882, 0.129412)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_instant2.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_5H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_hektik.sam", 1)
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
  node8 = Node_CreateNode("nod_fx_flare", "fx_flare_5H1_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_flare/fx_flare_5H1.osd")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_sky", "fx_sky_5H1_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_sky/fx_sky_5H1.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_rays", "fx_rays_5H1_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_rays/fx_rays_5H1.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(2073.465, 2435.761, 129.2463), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3923.485, 3162.483, 129.2463), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node13, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "atl_dock1_4_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(1535.22, 3499.061, 140.7347), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node14, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "atl_concordia_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(2376.587, 3257.644, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node15, "osd/atl/atl_concordia.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "atl_shipyard_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(1105.844, 2671.703, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node16, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_ec_obelisk_1")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3209.853, 3318.218, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_ec_tower_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(1230, 3177, 191.2339), MAT_Vector3(80, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_ec_tower.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_ec_triumph_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3054.769, 2459.933, 118), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(1230, 3177, 130), MAT_Vector3(89.81774, 0, 0))
  Node_ParseIniFile(node20, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "atl_neo_house1_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2146.324, 3473.884, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node21, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "atl_neo_house2_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3006.342, 1852.981, 122), MAT_Vector3(90.21938, 0, 0))
  Node_ParseIniFile(node22, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "atl_neo_house3_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(3741.885, 2374.919, 122), MAT_Vector3(-89.61197, 0, 0))
  Node_ParseIniFile(node23, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "atl_neo_house4_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2610.062, 3038.711, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node24, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "atl_neo_house5_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2570.748, 2690.341, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node25, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "atl_neo_house6_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2204.478, 2693.491, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "atl_neo_house1_2")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2978.109, 2719.454, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "atl_neo_house2_2")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2574.92, 2322.713, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "atl_neo_house3_2")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2937.703, 2207.593, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node29, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "atl_neo_house4_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(3317.839, 2216.294, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "atl_neo_house5_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2964.182, 3465.773, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "atl_neo_house6_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2960.468, 3101.693, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "atl_neo_house1_3")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(1834.136, 2682.137, 122), MAT_Vector3(-89.90576, 0, 0))
  Node_ParseIniFile(node33, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "atl_neo_house2_3")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2140.641, 3839.051, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node34, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "atl_neo_house3_3")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1806.202, 3039.115, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node35, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "atl_neo_house4_3")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1788.409, 3394.038, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node36, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "atl_neo_house5_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1462.331, 3043.285, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node37, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "atl_neo_house6_3")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1269.722, 3408.016, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node38, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "atl_neo_house1_4")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1826.922, 4552.048, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node39, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "atl_neo_house2_4")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(920.2925, 3407.198, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node40, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "atl_neo_house3_4")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1791.384, 3755.214, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node41, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "atl_neo_house4_4")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(2184.476, 4546.447, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node42, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "atl_neo_house5_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(2267.938, 4195.637, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node43, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "atl_neo_house6_4")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1478.97, 4560.387, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node44, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "atl_neo_house1_5")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1436.313, 3751.422, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node45, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "atl_neo_house2_5")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2504.562, 3836.625, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node46, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "atl_neo_house3_5")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(2623.55, 4191.919, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node47, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "atl_neo_house4_5")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1083.008, 3757.951, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node48, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "atl_neo_house5_5")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(734.6174, 3761.358, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node49, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "atl_neo_house6_5")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1117.218, 2944.916, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node50, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "atl_neo_house1_6")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(732.8609, 4111.736, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node51, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "atl_neo_house2_6")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(725.8118, 4459.8, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node52, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "atl_neo_house3_6")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1129.965, 4557.218, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node53, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "atl_neo_house4_6")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1469.361, 2693.728, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node54, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "atl_neo_house5_6")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(2862.33, 3836.712, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node55, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "atl_neo_house6_6")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(2531.15, 4545.612, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node56, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "atl_neo_house1_7")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1116.191, 2408.586, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node57, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "atl_neo_house2_7")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(757.3516, 2901.013, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node58, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "atl_neo_house3_7")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2215.779, 2174.997, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node59, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "atl_neo_house4_7")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1836.771, 2333.674, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node60, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "atl_neo_house5_7")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1480.429, 2338.323, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node61, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "atl_neo_house6_7")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(1561.314, 1987.779, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node62, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "atl_neo_house1_8")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(3333.51, 2727.811, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node63, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "atl_neo_house3_8")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(3309.394, 3076.406, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node64, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "atl_neo_house4_8")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(2606.451, 3469.6, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node65, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "atl_neo_house5_8")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3316.824, 3778.205, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node66, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "atl_neo_house6_8")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3160.805, 4186.863, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node67, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "atl_neo_house1_9")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(3662.078, 3073.172, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node68, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_neo_house2_9")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(3681.171, 2722.375, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_neo_house3_9")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(3668.463, 3775.134, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_neo_house4_9")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(3461.494, 3424.993, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_neo_house5_9")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(2903.124, 4565.731, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_neo_house6_9")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(3833.691, 3429.243, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_neo_house1_10")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(3268.311, 4558.106, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_neo_house2_10")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(4193.654, 3246.313, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_neo_house3_10")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3362.993, 1850.257, 122), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_neo_house4_10")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(2151.069, 3047.624, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_neo_house1_11")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(4093.902, 2381.126, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_neo_house2_11")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(2015.496, 4906.099, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_neo_house3_11")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(3382.93, 4915.628, 122), MAT_Vector3(-0.335363, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "atl_neo_house5_11")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(1658.892, 4920.058, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node81, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "atl_neo_house6_11")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(1304.283, 4918.485, 122), MAT_Vector3(89.76241, 0, 0))
  Node_ParseIniFile(node82, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "atl_neo_house5_12")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(746.7569, 2547.51, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node83, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "atl_neo_house6_12")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(4043.509, 2732.785, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node84, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1116.499, 4194.17, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node85, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_pplant1_2")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(1261.193, 4193.412, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_pplant1_3")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(1115.848, 4087.062, 126.3762), MAT_Vector3(179.9564, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_pplant1_4")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1262.841, 4086.304, 126.3762), MAT_Vector3(-0.342134, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_pplant2_1")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(990.7348, 4193.845, 115.9661), MAT_Vector3(-179.9593, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_pplant2_2")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(990.3774, 4087.583, 115.9661), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1124.998, 4285.873, 135.8734), MAT_Vector3(90.00559, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(1002.635, 4352.304, 110.053), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(1040.658, 4286.509, 139.7296), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(990.6709, 4248.364, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(989.847, 4140.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(1115.547, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(1261.926, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_rohr_small02_10")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(1095.479, 4317.799, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_rohr_small02_11")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1095.479, 4348.278, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1123.32, 4192.826, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1123.129, 4086.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_rohr_small03_10")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1123.129, 3986.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohr_small03_11")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1133.572, 4280.691, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_pplant1_5")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1118.147, 3987.062, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_pplant1_6")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1262.841, 3986.304, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_pplant2_3")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(990.3774, 3987.583, 115.9661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(989.847, 4040.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1115.547, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(1261.926, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "gen_shelter_11")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(1292.186, 4320.126, 138), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node110, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(1261.145, 4246.658, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(1203.797, 4334.485, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(1203.396, 4300.798, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "NAVYHQ")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(3778.916, 4279.821, 40), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node114, "osd/mac/mac_building1_big.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "navyhq_dockingnode_1")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(3843.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "navyhq_dockingnode_2")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(3775.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "navyhq_dockingnode_3")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3705.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "navyhq_quay_1")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3442.286, 4243.51, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "navyhq_quay_2")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(3770.662, 4050.547, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "navyhq_quay_3")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(3792.667, 4614.203, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "navyhq_shelter_1")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(3895.218, 4466.632, 128.5559), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "navyhq_metalblock3_1")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3859.252, 4229.73, 126.6685), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "navyhq_metalblock2_1")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3939.914, 4309.355, 130.7812), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "navyhq_dock3_3")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3662.658, 4450.381, 128.2063), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node124, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Directory", "MUSEUM")
  Node_AddSon(node7, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "mu_museum_1")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(1972, 4132, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node126, "osd/atl/atl_museum.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "mu_bottom_hole_l_1")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(1458, 4309, 123.772765), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node127, "osd/atl/atl_bottom_hole_l.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_generic", "mu_bottom_03_1")
  Node_AddSon(node7, node128)
  Body_SetCS(node128, MAT_Vector3(1398, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node128, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetNameKey(node128, -1)
  Body_SetCargoKey(node128, -1, 0)
  Body_SetCargoKey(node128, -1, 1)
  Body_SetCargoKey(node128, -1, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "mu_bottom_03_2")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(1398, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node129, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "mu_bottom_03_3")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1533, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node130, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "mu_bottom_03_4")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(1533, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node131, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "mu_bottom_03_5")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(1668, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node132, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node132, 0)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "mu_bottom_03_6")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1668, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node133, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "mu_bottom_03_7")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(1803, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node134, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node134, 0)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "mu_bottom_03_8")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(1803, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node135, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node135, 0)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "mu_bottom_hole_s")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(1928.228, 4135.668, 121), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_bottom_hole_s.osd")
  Body_SetFriendOrFoeID(node136, 0)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "mu_bottom_02_1")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(1928.485, 4245.53, 123), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node137, 0)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "mu_bottom_02_2")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(1929.075, 4026.198, 121.8822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node138, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node138, 0)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "mu_bottom_02_3")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(2030.921, 4075.403, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node139, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node139, 0)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "mu_bottom_02_4")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(2030.921, 4193.272, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node140, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node140, 0)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "mu_vbstueck_1")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(1466.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node141, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node141, 0)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "mu_vbstueck_2")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(1466.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node142, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node142, 0)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "mu_vbstueck_3")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(1601.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node143, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node143, 0)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "mu_vbstueck_4")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(1601.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node144, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node144, 0)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "mu_vbstueck_5")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(1736.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node145, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node145, 0)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "mu_vbstueck_6")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(1736.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node146, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node146, 0)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "mu_vbstueck_7")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(1871.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "mu_vbstueck_8")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(1871.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "mu_vbstueck_9")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(2032.223, 4134.9, 122.8673), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node149, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_1")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(1592, 4131.806, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node150, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node150, 0)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_2")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(1592, 4251.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node151, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node151, 0)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_3")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1592, 4016.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node152, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node152, 0)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "mu_scoop_1")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(1458.626, 4308.962, 123.130606), MAT_Vector3(-0.174314, 0, 0))
  Node_ParseIniFile(node153, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_laserwall", "mu_laserwall_2")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(1403.759104, 4121.338711, 106.7221), MAT_Vector3(-90, 0, 0))
  LaserWall_SetWallExtensionX(node154, 50)
  LaserWall_SetWallExtensionZ(node154, 50)
  Node_ParseIniFile(node154, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node155)
  Node_ParseIniFile(node155, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node155, "map/5H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node156)
  Node_ParseIniFile(node156, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node156, "map/5H1/Terrain/org_seetang.tga")
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node157)
  Node_ParseIniFile(node157, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node157, "map/5H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node158)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node158, node159)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node158, node160)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_PatrolArea", "NeopolisTraffic_Area")
  Node_AddSon(node160, node161)
  PatrolArea_SetPosition(node161, MAT_Vector3(2301.450416, 3485.739169, 400))
  PatrolArea_SetRadius(node161, 1400)
  PatrolArea_SetMinZ(node161, -60)
  PatrolArea_SetMaxZ(node161, 25)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_PatrolArea", "dmNeopolis_South_Area")
  Node_AddSon(node160, node162)
  PatrolArea_SetPosition(node162, MAT_Vector3(1105.234867, 2941.952278, 252.665984))
  PatrolArea_SetRadius(node162, 150)
  PatrolArea_SetMinZ(node162, 0)
  PatrolArea_SetMaxZ(node162, 75)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Path", "dmNeopolis_South_DockPath")
  Node_AddSon(node160, node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node163, node164)
  Position_SetPosition(node164, MAT_Vector3(1104, 2745.409483, 313))
  Position_SetRadius(node164, 5)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node163, node165)
  Position_SetPosition(node165, MAT_Vector3(1104, 2675, 313))
  Position_SetRadius(node165, 5)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Path", "dmNeopolis_South_ApproachPath")
  Node_AddSon(node160, node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node166, node167)
  Position_SetPosition(node167, MAT_Vector3(1103.44041, 2777.305621, 313))
  Position_SetRadius(node167, 5)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node166, node168)
  Position_SetPosition(node168, MAT_Vector3(1103.720205, 2841.373281, 313))
  Position_SetRadius(node168, 5)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("NOD_Path", "ToilerPath_1")
  Node_AddSon(node160, node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node169, node170)
  Position_SetPosition(node170, MAT_Vector3(936.647568, 3167.878373, 203))
  Position_SetRadius(node170, 5)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node169, node171)
  Position_SetPosition(node171, MAT_Vector3(1087.684172, 3181.230661, 203))
  Position_SetRadius(node171, 5)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node169, node172)
  Position_SetPosition(node172, MAT_Vector3(1161.111495, 3247.188277, 203))
  Position_SetRadius(node172, 5)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node169, node173)
  Position_SetPosition(node173, MAT_Vector3(1335.403857, 3280.21191, 205))
  Position_SetRadius(node173, 5)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node169, node174)
  Position_SetPosition(node174, MAT_Vector3(1496.854225, 3327.913203, 163.376059))
  Position_SetRadius(node174, 5)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node169, node175)
  Position_SetPosition(node175, MAT_Vector3(1632.790488, 3394.504674, 215.244373))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node169, node176)
  Position_SetPosition(node176, MAT_Vector3(1669.910488, 3455.944674, 202.859375))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node169, node177)
  Position_SetPosition(node177, MAT_Vector3(1678.870488, 3540.424674, 203))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node169, node178)
  Position_SetPosition(node178, MAT_Vector3(1689.110488, 3642.824674, 202.859375))
  Position_SetRadius(node178, 5)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node169, node179)
  Position_SetPosition(node179, MAT_Vector3(1638.826172, 3734.463374, 202.859375))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node169, node180)
  Position_SetPosition(node180, MAT_Vector3(1668.630488, 3825.864674, 203))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node169, node181)
  Position_SetPosition(node181, MAT_Vector3(1689.110488, 3879.624674, 203))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node169, node182)
  Position_SetPosition(node182, MAT_Vector3(1755.670488, 3983.304674, 203))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node169, node183)
  Position_SetPosition(node183, MAT_Vector3(1788.950488, 4051.144674, 203))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node169, node184)
  Position_SetPosition(node184, MAT_Vector3(1826.574834, 4123.760408, 202.994373))
  Position_SetRadius(node184, 5)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node169, node185)
  Position_SetPosition(node185, MAT_Vector3(1891.854834, 4043.120408, 203))
  Position_SetRadius(node185, 5)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node169, node186)
  Position_SetPosition(node186, MAT_Vector3(1991.694834, 3980.400408, 203))
  Position_SetRadius(node186, 5)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node169, node187)
  Position_SetPosition(node187, MAT_Vector3(2116.133532, 3929.688129, 202.859375))
  Position_SetRadius(node187, 5)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node169, node188)
  Position_SetPosition(node188, MAT_Vector3(2168.613532, 3834.968129, 203))
  Position_SetRadius(node188, 5)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node169, node189)
  Position_SetPosition(node189, MAT_Vector3(2215.973532, 3714.648129, 203))
  Position_SetRadius(node189, 5)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node169, node190)
  Position_SetPosition(node190, MAT_Vector3(2260.788041, 3588.775323, 203))
  Position_SetRadius(node190, 5)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node169, node191)
  Position_SetPosition(node191, MAT_Vector3(2283.40362, 3470.877142, 203))
  Position_SetRadius(node191, 5)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node169, node192)
  Position_SetPosition(node192, MAT_Vector3(2336.293532, 3357.528129, 202.859375))
  Position_SetRadius(node192, 5)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node169, node193)
  Position_SetPosition(node193, MAT_Vector3(2373.413532, 3337.048129, 203))
  Position_SetRadius(node193, 5)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node169, node194)
  Position_SetPosition(node194, MAT_Vector3(2427.173532, 3367.768129, 203))
  Position_SetRadius(node194, 5)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node169, node195)
  Position_SetPosition(node195, MAT_Vector3(2460.453532, 3389.528129, 203))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node169, node196)
  Position_SetPosition(node196, MAT_Vector3(2510.373532, 3354.968129, 203))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node169, node197)
  Position_SetPosition(node197, MAT_Vector3(2599.515737, 3319.72662, 203))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "pos_29")
  Node_AddSon(node169, node198)
  Position_SetPosition(node198, MAT_Vector3(2704.079292, 3286.20733, 203))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "pos_30")
  Node_AddSon(node169, node199)
  Position_SetPosition(node199, MAT_Vector3(2752.041007, 3271.275628, 165.909868))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "pos_31")
  Node_AddSon(node169, node200)
  Position_SetPosition(node200, MAT_Vector3(2853.633682, 3304.177098, 203))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "pos_32")
  Node_AddSon(node169, node201)
  Position_SetPosition(node201, MAT_Vector3(2941.279886, 3363.179032, 203))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Position", "pos_33")
  Node_AddSon(node169, node202)
  Position_SetPosition(node202, MAT_Vector3(3053.703813, 3373.723681, 203))
  Position_SetRadius(node202, 5)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_34")
  Node_AddSon(node169, node203)
  Position_SetPosition(node203, MAT_Vector3(3143.519886, 3481.768828, 203))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_35")
  Node_AddSon(node169, node204)
  Position_SetPosition(node204, MAT_Vector3(3169.119886, 3498.408828, 150.600915))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Position", "pos_36")
  Node_AddSon(node169, node205)
  Position_SetPosition(node205, MAT_Vector3(3240.8, 3586.729, 150.6009))
  Position_SetRadius(node205, 5)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Position", "pos_37")
  Node_AddSon(node169, node206)
  Position_SetPosition(node206, MAT_Vector3(3327.84, 3653.289, 203))
  Position_SetRadius(node206, 5)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Position", "pos_38")
  Node_AddSon(node169, node207)
  Position_SetPosition(node207, MAT_Vector3(3472.284073, 3705.671413, 174.41685))
  Position_SetRadius(node207, 5)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Position", "pos_39")
  Node_AddSon(node169, node208)
  Position_SetPosition(node208, MAT_Vector3(3513.714951, 3641.968666, 203))
  Position_SetRadius(node208, 5)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "pos_40")
  Node_AddSon(node169, node209)
  Position_SetPosition(node209, MAT_Vector3(3501.877136, 3587.763935, 203))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "pos_41")
  Node_AddSon(node169, node210)
  Position_SetPosition(node210, MAT_Vector3(3440.592163, 3602.018981, 218.153649))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "pos_42")
  Node_AddSon(node169, node211)
  Position_SetPosition(node211, MAT_Vector3(3362.049163, 3602.151963, 218.1536))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "pos_43")
  Node_AddSon(node169, node212)
  Position_SetPosition(node212, MAT_Vector3(3343.471976, 3498.500042, 203))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "pos_44")
  Node_AddSon(node169, node213)
  Position_SetPosition(node213, MAT_Vector3(3368.932791, 3432.29274, 203))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Position", "pos_45")
  Node_AddSon(node169, node214)
  Position_SetPosition(node214, MAT_Vector3(3382.252438, 3359.107619, 203))
  Position_SetRadius(node214, 5)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_46")
  Node_AddSon(node169, node215)
  Position_SetPosition(node215, MAT_Vector3(3369.558027, 3276.187673, 203))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_47")
  Node_AddSon(node169, node216)
  Position_SetPosition(node216, MAT_Vector3(3411.798027, 3249.307673, 203))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Position", "pos_48")
  Node_AddSon(node169, node217)
  Position_SetPosition(node217, MAT_Vector3(3438.768007, 3143.825004, 203))
  Position_SetRadius(node217, 5)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_49")
  Node_AddSon(node169, node218)
  Position_SetPosition(node218, MAT_Vector3(3538.007285, 3070.513908, 203))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_50")
  Node_AddSon(node169, node219)
  Position_SetPosition(node219, MAT_Vector3(3579.751159, 3008.832662, 203))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Position", "pos_51")
  Node_AddSon(node169, node220)
  Position_SetPosition(node220, MAT_Vector3(3591.588973, 2960.85836, 203))
  Position_SetRadius(node220, 5)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_52")
  Node_AddSon(node169, node221)
  Position_SetPosition(node221, MAT_Vector3(3602.299756, 2890.315007, 185.095008))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_53")
  Node_AddSon(node169, node222)
  Position_SetPosition(node222, MAT_Vector3(3554.663949, 2761.937851, 203))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Position", "pos_54")
  Node_AddSon(node169, node223)
  Position_SetPosition(node223, MAT_Vector3(3443.143157, 2651.664325, 203))
  Position_SetRadius(node223, 5)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_55")
  Node_AddSon(node169, node224)
  Position_SetPosition(node224, MAT_Vector3(3363.309184, 2648.875601, 203))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_56")
  Node_AddSon(node169, node225)
  Position_SetPosition(node225, MAT_Vector3(3255.712204, 2553.475371, 203))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Position", "pos_57")
  Node_AddSon(node169, node226)
  Position_SetPosition(node226, MAT_Vector3(3063.712204, 2526.595371, 203))
  Position_SetRadius(node226, 5)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_58")
  Node_AddSon(node169, node227)
  Position_SetPosition(node227, MAT_Vector3(2793.632204, 2535.555371, 203))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_59")
  Node_AddSon(node169, node228)
  Position_SetPosition(node228, MAT_Vector3(2748.832204, 2507.395371, 203))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "pos_60")
  Node_AddSon(node169, node229)
  Position_SetPosition(node229, MAT_Vector3(2663.072204, 2498.435371, 203))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "pos_61")
  Node_AddSon(node169, node230)
  Position_SetPosition(node230, MAT_Vector3(2567.072204, 2502.275371, 203))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "pos_62")
  Node_AddSon(node169, node231)
  Position_SetPosition(node231, MAT_Vector3(2477.164663, 2461.024443, 222.388038))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "pos_63")
  Node_AddSon(node169, node232)
  Position_SetPosition(node232, MAT_Vector3(2430.811203, 2444.667402, 222.388038))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "pos_64")
  Node_AddSon(node169, node233)
  Position_SetPosition(node233, MAT_Vector3(2306.02108, 2427.451137, 175.888618))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "pos_65")
  Node_AddSon(node169, node234)
  Position_SetPosition(node234, MAT_Vector3(2163.186227, 2539.58627, 203))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "pos_66")
  Node_AddSon(node169, node235)
  Position_SetPosition(node235, MAT_Vector3(1985.266227, 2560.06627, 203))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "pos_67")
  Node_AddSon(node169, node236)
  Position_SetPosition(node236, MAT_Vector3(1743.346227, 2545.98627, 203))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Position", "pos_68")
  Node_AddSon(node169, node237)
  Position_SetPosition(node237, MAT_Vector3(1717.746227, 2576.70627, 218.876275))
  Position_SetRadius(node237, 5)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_69")
  Node_AddSon(node169, node238)
  Position_SetPosition(node238, MAT_Vector3(1638.386227, 2594.62627, 203))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_70")
  Node_AddSon(node169, node239)
  Position_SetPosition(node239, MAT_Vector3(1535.986227, 2589.50627, 203))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "pos_71")
  Node_AddSon(node169, node240)
  Position_SetPosition(node240, MAT_Vector3(1489.411148, 2591.769782, 203))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "pos_72")
  Node_AddSon(node169, node241)
  Position_SetPosition(node241, MAT_Vector3(1466.981604, 2624.168013, 203))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Position", "pos_73")
  Node_AddSon(node169, node242)
  Position_SetPosition(node242, MAT_Vector3(1453.897704, 2690.833601, 161.354682))
  Position_SetRadius(node242, 5)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_74")
  Node_AddSon(node169, node243)
  Position_SetPosition(node243, MAT_Vector3(1468.22769, 2735.692689, 157.824226))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_75")
  Node_AddSon(node169, node244)
  Position_SetPosition(node244, MAT_Vector3(1468.22769, 2797.373935, 165.430351))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "pos_76")
  Node_AddSon(node169, node245)
  Position_SetPosition(node245, MAT_Vector3(1447.667275, 2830.395208, 203))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Position", "pos_77")
  Node_AddSon(node169, node246)
  Position_SetPosition(node246, MAT_Vector3(1344.865198, 2942.542928, 217.659905))
  Position_SetRadius(node246, 5)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Position", "pos_78")
  Node_AddSon(node169, node247)
  Position_SetPosition(node247, MAT_Vector3(1321.189569, 3065.90542, 203))
  Position_SetRadius(node247, 5)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Position", "pos_79")
  Node_AddSon(node169, node248)
  Position_SetPosition(node248, MAT_Vector3(1291.28351, 3131.947966, 203))
  Position_SetRadius(node248, 5)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Position", "pos_80")
  Node_AddSon(node169, node249)
  Position_SetPosition(node249, MAT_Vector3(1166.05189, 3130.70188, 203))
  Position_SetRadius(node249, 5)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Position", "pos_81")
  Node_AddSon(node169, node250)
  Position_SetPosition(node250, MAT_Vector3(1010.291168, 3168.084453, 151.255206))
  Position_SetRadius(node250, 5)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Position", "pos_82")
  Node_AddSon(node169, node251)
  Position_SetPosition(node251, MAT_Vector3(919.949949, 3168.084453, 135.026157))
  Position_SetRadius(node251, 5)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("NOD_Position", "pos_83")
  Node_AddSon(node169, node252)
  Position_SetPosition(node252, MAT_Vector3(826.058206, 3188.300838, 173.129142))
  Position_SetRadius(node252, 5)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("NOD_Path", "AvengerPath_1")
  Node_AddSon(node160, node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node253, node254)
  Position_SetPosition(node254, MAT_Vector3(937.350638, 3167.373446, 188.417376))
  Position_SetRadius(node254, 5)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node253, node255)
  Position_SetPosition(node255, MAT_Vector3(1074.048698, 3214.517178, 203))
  Position_SetRadius(node255, 5)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node253, node256)
  Position_SetPosition(node256, MAT_Vector3(1140.658047, 3282.078331, 203))
  Position_SetRadius(node256, 5)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node253, node257)
  Position_SetPosition(node257, MAT_Vector3(1335.404, 3280.212, 191.594867))
  Position_SetRadius(node257, 5)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node253, node258)
  Position_SetPosition(node258, MAT_Vector3(1508.885149, 3317.887043, 139.250071))
  Position_SetRadius(node258, 5)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node253, node259)
  Position_SetPosition(node259, MAT_Vector3(1650.967059, 3390.739259, 215.2444))
  Position_SetRadius(node259, 5)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node253, node260)
  Position_SetPosition(node260, MAT_Vector3(1679.836379, 3454.77097, 186.853843))
  Position_SetRadius(node260, 5)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node253, node261)
  Position_SetPosition(node261, MAT_Vector3(1691.703225, 3572.107025, 203))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node253, node262)
  Position_SetPosition(node262, MAT_Vector3(1665.047703, 3640.017732, 187.523825))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node253, node263)
  Position_SetPosition(node263, MAT_Vector3(1661.284144, 3736.067153, 189.317384))
  Position_SetRadius(node263, 5)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node253, node264)
  Position_SetPosition(node264, MAT_Vector3(1648.723428, 3839.815335, 191.392557))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node253, node265)
  Position_SetPosition(node265, MAT_Vector3(1690.313115, 3916.921561, 177.004733))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node253, node266)
  Position_SetPosition(node266, MAT_Vector3(1747.248196, 3998.544455, 189.288211))
  Position_SetRadius(node266, 5)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node253, node267)
  Position_SetPosition(node267, MAT_Vector3(1786.371001, 4071.904859, 185.288939))
  Position_SetRadius(node267, 5)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node253, node268)
  Position_SetPosition(node268, MAT_Vector3(1826.173962, 4108.921583, 178.998769))
  Position_SetRadius(node268, 5)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node253, node269)
  Position_SetPosition(node269, MAT_Vector3(1883.433196, 4030.687813, 179.004369))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node253, node270)
  Position_SetPosition(node270, MAT_Vector3(1987.684617, 3957.941856, 171.648701))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node253, node271)
  Position_SetPosition(node271, MAT_Vector3(2112.059122, 3924.150683, 176.5649))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node253, node272)
  Position_SetPosition(node272, MAT_Vector3(2154.920663, 3822.39128, 187.374119))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node253, node273)
  Position_SetPosition(node273, MAT_Vector3(2232.41657, 3713.444885, 212.263915))
  Position_SetRadius(node273, 5)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node253, node274)
  Position_SetPosition(node274, MAT_Vector3(2261.480961, 3590.065343, 218.480578))
  Position_SetRadius(node274, 5)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node253, node275)
  Position_SetPosition(node275, MAT_Vector3(2304.457081, 3453.705892, 168.927868))
  Position_SetRadius(node275, 5)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node253, node276)
  Position_SetPosition(node276, MAT_Vector3(2336.695038, 3337.075047, 189.660286))
  Position_SetRadius(node276, 5)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node253, node277)
  Position_SetPosition(node277, MAT_Vector3(2404.293948, 3340.657345, 185.313934))
  Position_SetRadius(node277, 5)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node253, node278)
  Position_SetPosition(node278, MAT_Vector3(2425.970885, 3383.408493, 217.825648))
  Position_SetRadius(node278, 5)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node253, node279)
  Position_SetPosition(node279, MAT_Vector3(2464.865421, 3402.762263, 195.191011))
  Position_SetRadius(node279, 5)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node253, node280)
  Position_SetPosition(node280, MAT_Vector3(2512.78023, 3344.139966, 179.37654))
  Position_SetRadius(node280, 5)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node253, node281)
  Position_SetPosition(node281, MAT_Vector3(2603.927421, 3297.669894, 203))
  Position_SetRadius(node281, 5)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("NOD_Position", "pos_29")
  Node_AddSon(node253, node282)
  Position_SetPosition(node282, MAT_Vector3(2717.714302, 3303.050608, 215.491203))
  Position_SetRadius(node282, 5)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("NOD_Position", "pos_30")
  Node_AddSon(node253, node283)
  Position_SetPosition(node283, MAT_Vector3(2752.442038, 3284.911302, 165.9099))
  Position_SetRadius(node283, 5)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("NOD_Position", "pos_31")
  Node_AddSon(node253, node284)
  Position_SetPosition(node284, MAT_Vector3(2846.014273, 3292.145851, 203))
  Position_SetRadius(node284, 5)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("NOD_Position", "pos_32")
  Node_AddSon(node253, node285)
  Position_SetPosition(node285, MAT_Vector3(2946.092459, 3343.929162, 203))
  Position_SetRadius(node285, 5)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("NOD_Position", "pos_33")
  Node_AddSon(node253, node286)
  Position_SetPosition(node286, MAT_Vector3(3040.358133, 3376.797587, 215.271651))
  Position_SetRadius(node286, 5)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("NOD_Position", "pos_34")
  Node_AddSon(node253, node287)
  Position_SetPosition(node287, MAT_Vector3(3167.181259, 3443.670363, 203))
  Position_SetRadius(node287, 5)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("NOD_Position", "pos_35")
  Node_AddSon(node253, node288)
  Position_SetPosition(node288, MAT_Vector3(3232.885087, 3528.486871, 182.683495))
  Position_SetRadius(node288, 5)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("NOD_Position", "pos_36")
  Node_AddSon(node253, node289)
  Position_SetPosition(node289, MAT_Vector3(3280.535535, 3619.312027, 197.589412))
  Position_SetRadius(node289, 5)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("NOD_Position", "pos_37")
  Node_AddSon(node253, node290)
  Position_SetPosition(node290, MAT_Vector3(3340.272187, 3677.351297, 218.470205))
  Position_SetRadius(node290, 5)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("NOD_Position", "pos_38")
  Node_AddSon(node253, node291)
  Position_SetPosition(node291, MAT_Vector3(3469.112576, 3725.083909, 166.250803))
  Position_SetRadius(node291, 5)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("NOD_Position", "pos_39")
  Node_AddSon(node253, node292)
  Position_SetPosition(node292, MAT_Vector3(3514.116038, 3619.510856, 180.696371))
  Position_SetRadius(node292, 5)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Position", "pos_40")
  Node_AddSon(node253, node293)
  Position_SetPosition(node293, MAT_Vector3(3574.533376, 3581.216746, 219.82678))
  Position_SetRadius(node293, 5)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Position", "pos_41")
  Node_AddSon(node253, node294)
  Position_SetPosition(node294, MAT_Vector3(3597.989722, 3535.91002, 218.1536))
  Position_SetRadius(node294, 5)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Position", "pos_42")
  Node_AddSon(node253, node295)
  Position_SetPosition(node295, MAT_Vector3(3613.123812, 3423.93121, 218.1536))
  Position_SetRadius(node295, 5)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Position", "pos_43")
  Node_AddSon(node253, node296)
  Position_SetPosition(node296, MAT_Vector3(3599.706882, 3338.662164, 203))
  Position_SetRadius(node296, 5)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Position", "pos_44")
  Node_AddSon(node253, node297)
  Position_SetPosition(node297, MAT_Vector3(3562.550998, 3214.781717, 203))
  Position_SetRadius(node297, 5)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_45")
  Node_AddSon(node253, node298)
  Position_SetPosition(node298, MAT_Vector3(3512.429207, 3174.552972, 203))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_46")
  Node_AddSon(node253, node299)
  Position_SetPosition(node299, MAT_Vector3(3535.987087, 3094.928598, 203))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_47")
  Node_AddSon(node253, node300)
  Position_SetPosition(node300, MAT_Vector3(3566.692398, 3053.218283, 203))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_48")
  Node_AddSon(node253, node301)
  Position_SetPosition(node301, MAT_Vector3(3563.177862, 2990.578415, 203))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "pos_49")
  Node_AddSon(node253, node302)
  Position_SetPosition(node302, MAT_Vector3(3576.7306, 2904.084913, 176.201926))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "pos_50")
  Node_AddSon(node253, node303)
  Position_SetPosition(node303, MAT_Vector3(3588.81397, 2852.290789, 143.853955))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "pos_51")
  Node_AddSon(node253, node304)
  Position_SetPosition(node304, MAT_Vector3(3524.633243, 2746.328365, 183.545327))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Position", "pos_52")
  Node_AddSon(node253, node305)
  Position_SetPosition(node305, MAT_Vector3(3443.601901, 2672.732526, 170.620894))
  Position_SetRadius(node305, 5)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_53")
  Node_AddSon(node253, node306)
  Position_SetPosition(node306, MAT_Vector3(3416.247729, 2621.05001, 184.225561))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "pos_54")
  Node_AddSon(node253, node307)
  Position_SetPosition(node307, MAT_Vector3(3255.292347, 2548.675703, 182.593001))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Position", "pos_55")
  Node_AddSon(node253, node308)
  Position_SetPosition(node308, MAT_Vector3(3078.237395, 2521.994419, 190.7558))
  Position_SetRadius(node308, 5)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_56")
  Node_AddSon(node253, node309)
  Position_SetPosition(node309, MAT_Vector3(2984.646803, 2527.109996, 178.647647))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_57")
  Node_AddSon(node253, node310)
  Position_SetPosition(node310, MAT_Vector3(2922.82401, 2538.129689, 218.91746))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "pos_58")
  Node_AddSon(node253, node311)
  Position_SetPosition(node311, MAT_Vector3(2793.823325, 2527.939211, 168.036008))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Position", "pos_59")
  Node_AddSon(node253, node312)
  Position_SetPosition(node312, MAT_Vector3(2715.051839, 2502.451562, 163.546468))
  Position_SetRadius(node312, 5)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Position", "pos_60")
  Node_AddSon(node253, node313)
  Position_SetPosition(node313, MAT_Vector3(2663.895906, 2511.617502, 190.34766))
  Position_SetRadius(node313, 5)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Position", "pos_61")
  Node_AddSon(node253, node314)
  Position_SetPosition(node314, MAT_Vector3(2553.889498, 2509.690157, 179.599974))
  Position_SetRadius(node314, 5)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_62")
  Node_AddSon(node253, node315)
  Position_SetPosition(node315, MAT_Vector3(2465.760749, 2514.883603, 203))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "pos_63")
  Node_AddSon(node253, node316)
  Position_SetPosition(node316, MAT_Vector3(2380.371711, 2505.48454, 203))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Position", "pos_64")
  Node_AddSon(node253, node317)
  Position_SetPosition(node317, MAT_Vector3(2316.731783, 2465.350693, 175.8886))
  Position_SetRadius(node317, 5)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "pos_65")
  Node_AddSon(node253, node318)
  Position_SetPosition(node318, MAT_Vector3(2172.24897, 2503.33412, 203))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "pos_66")
  Node_AddSon(node253, node319)
  Position_SetPosition(node319, MAT_Vector3(2009.983191, 2578.19194, 203))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Position", "pos_67")
  Node_AddSon(node253, node320)
  Position_SetPosition(node320, MAT_Vector3(1730.987404, 2531.979592, 203))
  Position_SetRadius(node320, 5)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_68")
  Node_AddSon(node253, node321)
  Position_SetPosition(node321, MAT_Vector3(1701.543368, 2591.918833, 218.816212))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_69")
  Node_AddSon(node253, node322)
  Position_SetPosition(node322, MAT_Vector3(1624.379592, 2606.984596, 203))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "pos_70")
  Node_AddSon(node253, node323)
  Position_SetPosition(node323, MAT_Vector3(1510.444902, 2573.851779, 203))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "pos_71")
  Node_AddSon(node253, node324)
  Position_SetPosition(node324, MAT_Vector3(1466.341622, 2598.361251, 203))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Position", "pos_72")
  Node_AddSon(node253, node325)
  Position_SetPosition(node325, MAT_Vector3(1456.271217, 2643.941753, 203))
  Position_SetRadius(node325, 5)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "pos_73")
  Node_AddSon(node253, node326)
  Position_SetPosition(node326, MAT_Vector3(1468.728315, 2697.425251, 161.3547))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Position", "pos_74")
  Node_AddSon(node253, node327)
  Position_SetPosition(node327, MAT_Vector3(1470.699719, 2759.586285, 157.8242))
  Position_SetRadius(node327, 5)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_75")
  Node_AddSon(node253, node328)
  Position_SetPosition(node328, MAT_Vector3(1468.228, 2803.141345, 165.4304))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "pos_76")
  Node_AddSon(node253, node329)
  Position_SetPosition(node329, MAT_Vector3(1394.936992, 2837.810157, 203))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Position", "pos_77")
  Node_AddSon(node253, node330)
  Position_SetPosition(node330, MAT_Vector3(1369.582191, 2958.197221, 203))
  Position_SetRadius(node330, 5)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Position", "pos_78")
  Node_AddSon(node253, node331)
  Position_SetPosition(node331, MAT_Vector3(1336.844221, 3083.207034, 203))
  Position_SetRadius(node331, 5)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Position", "pos_79")
  Node_AddSon(node253, node332)
  Position_SetPosition(node332, MAT_Vector3(1306.938221, 3127.004562, 203))
  Position_SetRadius(node332, 5)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Position", "pos_80")
  Node_AddSon(node253, node333)
  Position_SetPosition(node333, MAT_Vector3(1146.278247, 3126.582468, 203))
  Position_SetRadius(node333, 5)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Position", "pos_81")
  Node_AddSon(node253, node334)
  Position_SetPosition(node334, MAT_Vector3(980.630371, 3142.542902, 151.2552))
  Position_SetRadius(node334, 5)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Position", "pos_82")
  Node_AddSon(node253, node335)
  Position_SetPosition(node335, MAT_Vector3(892.76099, 3150.781966, 156.556437))
  Position_SetRadius(node335, 5)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Position", "pos_83")
  Node_AddSon(node253, node336)
  Position_SetPosition(node336, MAT_Vector3(831.001669, 3153.69706, 173.1291))
  Position_SetRadius(node336, 5)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Path", "AtlScoutPath_1")
  Node_AddSon(node160, node337)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node337, node338)
  Position_SetPosition(node338, MAT_Vector3(936.526694, 3220.926914, 203.635968))
  Position_SetRadius(node338, 5)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node337, node339)
  Position_SetPosition(node339, MAT_Vector3(1093.822753, 3234.290753, 203))
  Position_SetRadius(node339, 5)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node337, node340)
  Position_SetPosition(node340, MAT_Vector3(1281.54599, 3254.065183, 203))
  Position_SetRadius(node340, 5)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node337, node341)
  Position_SetPosition(node341, MAT_Vector3(1377.423225, 3248.903558, 165.118762))
  Position_SetRadius(node341, 5)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node337, node342)
  Position_SetPosition(node342, MAT_Vector3(1537.721723, 3319.534813, 168.227921))
  Position_SetRadius(node342, 5)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node337, node343)
  Position_SetPosition(node343, MAT_Vector3(1665.797315, 3375.908685, 215.2444))
  Position_SetRadius(node343, 5)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node337, node344)
  Position_SetPosition(node344, MAT_Vector3(1678.188187, 3453.947094, 209.487302))
  Position_SetRadius(node344, 5)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("NOD_Position", "pos_8")
  Node_AddSon(node337, node345)
  Position_SetPosition(node345, MAT_Vector3(1681.816124, 3582.817783, 189.906238))
  Position_SetRadius(node345, 5)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("NOD_Position", "pos_9")
  Node_AddSon(node337, node346)
  Position_SetPosition(node346, MAT_Vector3(1651.865498, 3642.489719, 205.106851))
  Position_SetRadius(node346, 5)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("NOD_Position", "pos_10")
  Node_AddSon(node337, node347)
  Position_SetPosition(node347, MAT_Vector3(1640.686341, 3772.31888, 199.420667))
  Position_SetRadius(node347, 5)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("NOD_Position", "pos_11")
  Node_AddSon(node337, node348)
  Position_SetPosition(node348, MAT_Vector3(1671.792378, 3863.708285, 211.115405))
  Position_SetRadius(node348, 5)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("NOD_Position", "pos_12")
  Node_AddSon(node337, node349)
  Position_SetPosition(node349, MAT_Vector3(1723.269255, 3949.878255, 198.406041))
  Position_SetRadius(node349, 5)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("NOD_Position", "pos_13")
  Node_AddSon(node337, node350)
  Position_SetPosition(node350, MAT_Vector3(1763.726127, 4010.902596, 205.234297))
  Position_SetRadius(node350, 5)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("NOD_Position", "pos_14")
  Node_AddSon(node337, node351)
  Position_SetPosition(node351, MAT_Vector3(1806.968659, 4100.741723, 198.087741))
  Position_SetRadius(node351, 5)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("NOD_Position", "pos_15")
  Node_AddSon(node337, node352)
  Position_SetPosition(node352, MAT_Vector3(1853.36291, 4055.368086, 178.9988))
  Position_SetRadius(node352, 5)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("NOD_Position", "pos_16")
  Node_AddSon(node337, node353)
  Position_SetPosition(node353, MAT_Vector3(1914.741442, 4015.857685, 166.949234))
  Position_SetRadius(node353, 5)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("NOD_Position", "pos_17")
  Node_AddSon(node337, node354)
  Position_SetPosition(node354, MAT_Vector3(2007.458753, 3965.357157, 167.765521))
  Position_SetRadius(node354, 5)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("NOD_Position", "pos_18")
  Node_AddSon(node337, node355)
  Position_SetPosition(node355, MAT_Vector3(2117.826345, 3939.805221, 199.790656))
  Position_SetRadius(node355, 5)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("NOD_Position", "pos_19")
  Node_AddSon(node337, node356)
  Position_SetPosition(node356, MAT_Vector3(2128.555996, 3822.391, 187.3741))
  Position_SetRadius(node356, 5)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("NOD_Position", "pos_20")
  Node_AddSon(node337, node357)
  Position_SetPosition(node357, MAT_Vector3(2198.035944, 3710.281404, 202.34691))
  Position_SetRadius(node357, 5)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("NOD_Position", "pos_21")
  Node_AddSon(node337, node358)
  Position_SetPosition(node358, MAT_Vector3(2213.864363, 3569.046898, 218.4806))
  Position_SetRadius(node358, 5)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("NOD_Position", "pos_22")
  Node_AddSon(node337, node359)
  Position_SetPosition(node359, MAT_Vector3(2274.933769, 3452.525071, 168.9279))
  Position_SetRadius(node359, 5)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("NOD_Position", "pos_23")
  Node_AddSon(node337, node360)
  Position_SetPosition(node360, MAT_Vector3(2329.609425, 3346.522434, 173.079937))
  Position_SetRadius(node360, 5)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("NOD_Position", "pos_24")
  Node_AddSon(node337, node361)
  Position_SetPosition(node361, MAT_Vector3(2401.932142, 3340.657, 214.763138))
  Position_SetRadius(node361, 5)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("NOD_Position", "pos_25")
  Node_AddSon(node337, node362)
  Position_SetPosition(node362, MAT_Vector3(2425.971, 3400.710034, 163.107725))
  Position_SetRadius(node362, 5)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("NOD_Position", "pos_26")
  Node_AddSon(node337, node363)
  Position_SetPosition(node363, MAT_Vector3(2468.334292, 3392.360219, 172.166819))
  Position_SetRadius(node363, 5)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("NOD_Position", "pos_27")
  Node_AddSon(node337, node364)
  Position_SetPosition(node364, MAT_Vector3(2525.962502, 3312.007651, 167.62205))
  Position_SetRadius(node364, 5)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("NOD_Position", "pos_28")
  Node_AddSon(node337, node365)
  Position_SetPosition(node365, MAT_Vector3(2605.574813, 3282.839685, 203))
  Position_SetRadius(node365, 5)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("NOD_Position", "pos_29")
  Node_AddSon(node337, node366)
  Position_SetPosition(node366, MAT_Vector3(2724.305251, 3276.685996, 170.81228))
  Position_SetRadius(node366, 5)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("NOD_Position", "pos_30")
  Node_AddSon(node337, node367)
  Position_SetPosition(node367, MAT_Vector3(2791.989506, 3270.080685, 141.214794))
  Position_SetRadius(node367, 5)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("NOD_Position", "pos_31")
  Node_AddSon(node337, node368)
  Position_SetPosition(node368, MAT_Vector3(2864.545136, 3280.55818, 197.241661))
  Position_SetRadius(node368, 5)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("NOD_Position", "pos_32")
  Node_AddSon(node337, node369)
  Position_SetPosition(node369, MAT_Vector3(2960.519934, 3356.479247, 219.332831))
  Position_SetRadius(node369, 5)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("NOD_Position", "pos_33")
  Node_AddSon(node337, node370)
  Position_SetPosition(node370, MAT_Vector3(3114.095323, 3394.772034, 219.30557))
  Position_SetRadius(node370, 5)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("NOD_Position", "pos_34")
  Node_AddSon(node337, node371)
  Position_SetPosition(node371, MAT_Vector3(3206.728506, 3444.493906, 168.138705))
  Position_SetRadius(node371, 5)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("NOD_Position", "pos_35")
  Node_AddSon(node337, node372)
  Position_SetPosition(node372, MAT_Vector3(3260.07391, 3530.134813, 149.689775))
  Position_SetRadius(node372, 5)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("NOD_Position", "pos_36")
  Node_AddSon(node337, node373)
  Position_SetPosition(node373, MAT_Vector3(3287.127251, 3638.261847, 197.5894))
  Position_SetRadius(node373, 5)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("NOD_Position", "pos_37")
  Node_AddSon(node337, node374)
  Position_SetPosition(node374, MAT_Vector3(3364.165285, 3655.105528, 219.09307))
  Position_SetRadius(node374, 5)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("NOD_Position", "pos_38")
  Node_AddSon(node337, node375)
  Position_SetPosition(node375, MAT_Vector3(3478.17597, 3672.353992, 215.457542))
  Position_SetRadius(node375, 5)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("NOD_Position", "pos_39")
  Node_AddSon(node337, node376)
  Position_SetPosition(node376, MAT_Vector3(3536.361472, 3630.221783, 180.6964))
  Position_SetRadius(node376, 5)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("NOD_Position", "pos_40")
  Node_AddSon(node337, node377)
  Position_SetPosition(node377, MAT_Vector3(3597.602378, 3580.393094, 219.8268))
  Position_SetRadius(node377, 5)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("NOD_Position", "pos_41")
  Node_AddSon(node337, node378)
  Position_SetPosition(node378, MAT_Vector3(3624.355004, 3505.425464, 218.1536))
  Position_SetRadius(node378, 5)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("NOD_Position", "pos_42")
  Node_AddSon(node337, node379)
  Position_SetPosition(node379, MAT_Vector3(3632.897753, 3381.911775, 218.1536))
  Position_SetRadius(node379, 5)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("NOD_Position", "pos_43")
  Node_AddSon(node337, node380)
  Position_SetPosition(node380, MAT_Vector3(3611.241689, 3284.284179, 203))
  Position_SetRadius(node380, 5)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("NOD_Position", "pos_44")
  Node_AddSon(node337, node381)
  Position_SetPosition(node381, MAT_Vector3(3555.959749, 3225.492783, 203))
  Position_SetRadius(node381, 5)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("NOD_Position", "pos_45")
  Node_AddSon(node337, node382)
  Position_SetPosition(node382, MAT_Vector3(3522.315876, 3173.729094, 186.191876))
  Position_SetRadius(node382, 5)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("NOD_Position", "pos_46")
  Node_AddSon(node337, node383)
  Position_SetPosition(node383, MAT_Vector3(3545.873876, 3089.985562, 198.642338))
  Position_SetRadius(node383, 5)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("NOD_Position", "pos_47")
  Node_AddSon(node337, node384)
  Position_SetPosition(node384, MAT_Vector3(3550.213873, 3030.972528, 197.08603))
  Position_SetRadius(node384, 5)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("NOD_Position", "pos_48")
  Node_AddSon(node337, node385)
  Position_SetPosition(node385, MAT_Vector3(3555.762843, 2955.150026, 200.665538))
  Position_SetRadius(node385, 5)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("NOD_Position", "pos_49")
  Node_AddSon(node337, node386)
  Position_SetPosition(node386, MAT_Vector3(3591.45753, 2891.117165, 168.826709))
  Position_SetRadius(node386, 5)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("NOD_Position", "pos_50")
  Node_AddSon(node337, node387)
  Position_SetPosition(node387, MAT_Vector3(3586.342281, 2826.749902, 143.140272))
  Position_SetRadius(node387, 5)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("NOD_Position", "pos_51")
  Node_AddSon(node337, node388)
  Position_SetPosition(node388, MAT_Vector3(3511.450498, 2752.919251, 185.805439))
  Position_SetRadius(node388, 5)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("NOD_Position", "pos_52")
  Node_AddSon(node337, node389)
  Position_SetPosition(node389, MAT_Vector3(3446.073719, 2544.203606, 170.6209))
  Position_SetRadius(node389, 5)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("NOD_Position", "pos_53")
  Node_AddSon(node337, node390)
  Position_SetPosition(node390, MAT_Vector3(3367.637524, 2543.602801, 184.2256))
  Position_SetRadius(node390, 5)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("NOD_Position", "pos_54")
  Node_AddSon(node337, node391)
  Position_SetPosition(node391, MAT_Vector3(3229.750902, 2525.606622, 182.593))
  Position_SetRadius(node391, 5)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("NOD_Position", "pos_55")
  Node_AddSon(node337, node392)
  Position_SetPosition(node392, MAT_Vector3(3065.054498, 2507.163685, 175.648553))
  Position_SetRadius(node392, 5)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("NOD_Position", "pos_56")
  Node_AddSon(node337, node393)
  Position_SetPosition(node393, MAT_Vector3(2860.237138, 2508.160153, 170.79659))
  Position_SetRadius(node393, 5)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("NOD_Position", "pos_57")
  Node_AddSon(node337, node394)
  Position_SetPosition(node394, MAT_Vector3(2814.892265, 2514.236715, 191.438965))
  Position_SetRadius(node394, 5)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("NOD_Position", "pos_58")
  Node_AddSon(node337, node395)
  Position_SetPosition(node395, MAT_Vector3(2765.810183, 2506.517434, 159.920184))
  Position_SetRadius(node395, 5)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("NOD_Position", "pos_59")
  Node_AddSon(node337, node396)
  Position_SetPosition(node396, MAT_Vector3(2715.052, 2502.452, 181.822674))
  Position_SetRadius(node396, 5)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("NOD_Position", "pos_60")
  Node_AddSon(node337, node397)
  Position_SetPosition(node397, MAT_Vector3(2642.474434, 2505.850655, 153.398043))
  Position_SetRadius(node397, 5)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("NOD_Position", "pos_61")
  Node_AddSon(node337, node398)
  Position_SetPosition(node398, MAT_Vector3(2521.756651, 2503.098749, 143.119785))
  Position_SetRadius(node398, 5)
  Game_LoadProgress_Advance(node0)
  node399 = Node_CreateNode("NOD_Position", "pos_62")
  Node_AddSon(node337, node399)
  Position_SetPosition(node399, MAT_Vector3(2417.97443, 2514.884, 157.042719))
  Position_SetRadius(node399, 5)
  Game_LoadProgress_Advance(node0)
  node400 = Node_CreateNode("NOD_Position", "pos_63")
  Node_AddSon(node337, node400)
  Position_SetPosition(node400, MAT_Vector3(2362.24606, 2497.245936, 179.372245))
  Position_SetRadius(node400, 5)
  Game_LoadProgress_Advance(node0)
  node401 = Node_CreateNode("NOD_Position", "pos_64")
  Node_AddSon(node337, node401)
  Position_SetPosition(node401, MAT_Vector3(2309.316843, 2454.640217, 144.21183))
  Position_SetRadius(node401, 5)
  Game_LoadProgress_Advance(node0)
  node402 = Node_CreateNode("NOD_Position", "pos_65")
  Node_AddSon(node337, node402)
  Position_SetPosition(node402, MAT_Vector3(2165.657749, 2513.220876, 164.44262))
  Position_SetRadius(node402, 5)
  Game_LoadProgress_Advance(node0)
  node403 = Node_CreateNode("NOD_Position", "pos_66")
  Node_AddSon(node337, node403)
  Position_SetPosition(node403, MAT_Vector3(2089.078012, 2551.826996, 213.256003))
  Position_SetRadius(node403, 5)
  Game_LoadProgress_Advance(node0)
  node404 = Node_CreateNode("NOD_Position", "pos_67")
  Node_AddSon(node337, node404)
  Position_SetPosition(node404, MAT_Vector3(1771.060897, 2537.149838, 186.901969))
  Position_SetRadius(node404, 5)
  Game_LoadProgress_Advance(node0)
  node405 = Node_CreateNode("NOD_Position", "pos_68")
  Node_AddSon(node337, node405)
  Position_SetPosition(node405, MAT_Vector3(1720.611359, 2565.725164, 196.097205))
  Position_SetRadius(node405, 5)
  Game_LoadProgress_Advance(node0)
  node406 = Node_CreateNode("NOD_Position", "pos_69")
  Node_AddSon(node337, node406)
  Position_SetPosition(node406, MAT_Vector3(1665.217835, 2568.053312, 203))
  Position_SetRadius(node406, 5)
  Game_LoadProgress_Advance(node0)
  node407 = Node_CreateNode("NOD_Position", "pos_70")
  Node_AddSon(node337, node407)
  Position_SetPosition(node407, MAT_Vector3(1513.068844, 2605.249286, 208.97185))
  Position_SetRadius(node407, 5)
  Game_LoadProgress_Advance(node0)
  node408 = Node_CreateNode("NOD_Position", "pos_71")
  Node_AddSon(node337, node408)
  Position_SetPosition(node408, MAT_Vector3(1460.574655, 2612.367408, 215.203346))
  Position_SetRadius(node408, 5)
  Game_LoadProgress_Advance(node0)
  node409 = Node_CreateNode("NOD_Position", "pos_72")
  Node_AddSon(node337, node409)
  Position_SetPosition(node409, MAT_Vector3(1468.629596, 2658.772315, 170.985498))
  Position_SetRadius(node409, 5)
  Game_LoadProgress_Advance(node0)
  node410 = Node_CreateNode("NOD_Position", "pos_73")
  Node_AddSon(node337, node410)
  Position_SetPosition(node410, MAT_Vector3(1469.472839, 2705.131915, 132.339092))
  Position_SetRadius(node410, 5)
  Game_LoadProgress_Advance(node0)
  node411 = Node_CreateNode("NOD_Position", "pos_74")
  Node_AddSon(node337, node411)
  Position_SetPosition(node411, MAT_Vector3(1471.25959, 2771.337387, 179.424708))
  Position_SetRadius(node411, 5)
  Game_LoadProgress_Advance(node0)
  node412 = Node_CreateNode("NOD_Position", "pos_75")
  Node_AddSon(node337, node412)
  Position_SetPosition(node412, MAT_Vector3(1468.228, 2803.141, 218.195821))
  Position_SetRadius(node412, 5)
  Game_LoadProgress_Advance(node0)
  node413 = Node_CreateNode("NOD_Position", "pos_76")
  Node_AddSon(node337, node413)
  Position_SetPosition(node413, MAT_Vector3(1451.256985, 2882.159351, 219.139029))
  Position_SetRadius(node413, 5)
  Game_LoadProgress_Advance(node0)
  node414 = Node_CreateNode("NOD_Position", "pos_77")
  Node_AddSon(node337, node414)
  Position_SetPosition(node414, MAT_Vector3(1345.439561, 3011.655257, 219.322427))
  Position_SetRadius(node414, 5)
  Game_LoadProgress_Advance(node0)
  node415 = Node_CreateNode("NOD_Position", "pos_78")
  Node_AddSon(node337, node415)
  Position_SetPosition(node415, MAT_Vector3(1324.772781, 3124.019218, 175.857088))
  Position_SetRadius(node415, 5)
  Game_LoadProgress_Advance(node0)
  node416 = Node_CreateNode("NOD_Position", "pos_79")
  Node_AddSon(node337, node416)
  Position_SetPosition(node416, MAT_Vector3(1252.904923, 3125.85536, 157.150487))
  Position_SetRadius(node416, 5)
  Game_LoadProgress_Advance(node0)
  node417 = Node_CreateNode("NOD_Position", "pos_80")
  Node_AddSon(node337, node417)
  Position_SetPosition(node417, MAT_Vector3(1130.183041, 3134.62948, 153.849322))
  Position_SetRadius(node417, 5)
  Game_LoadProgress_Advance(node0)
  node418 = Node_CreateNode("NOD_Position", "pos_81")
  Node_AddSon(node337, node418)
  Position_SetPosition(node418, MAT_Vector3(980.6304, 3142.543, 183.074762))
  Position_SetRadius(node418, 5)
  Game_LoadProgress_Advance(node0)
  node419 = Node_CreateNode("NOD_Position", "pos_82")
  Node_AddSon(node337, node419)
  Position_SetPosition(node419, MAT_Vector3(891.61136, 3164.002859, 156.5564))
  Position_SetRadius(node419, 5)
  Game_LoadProgress_Advance(node0)
  node420 = Node_CreateNode("NOD_Position", "pos_83")
  Node_AddSon(node337, node420)
  Position_SetPosition(node420, MAT_Vector3(827.55278, 3175.540159, 173.1291))
  Position_SetRadius(node420, 5)
  Game_LoadProgress_Advance(node0)
  node421 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node158, node421)
  Node_EnterSimulation(node421)
  Game_LoadProgress_Advance(node0)
  node422 = Node_CreateNode("NOD_Director", "StartCounter")
  Node_AddSon(node421, node422)
  Node_EnterSimulation(node422)
  Game_LoadProgress_Advance(node0)
  node423 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node158, node423)
  Node_EnterSimulation(node423)
  Game_LoadProgress_Advance(node0)
  node424 = Node_CreateNode("NOD_Trigger", "tJudge")
  Node_AddSon(node423, node424)
  Body_SetFriendOrFoeID(node424, 0)
  Body_SetCS(node424, MAT_Vector3(821.383272, 3174.519042, 173), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node424, 30, 300, 250)
  Node_EnterSimulation(node424)
  Game_LoadProgress_Advance(node0)
  node425 = Node_CreateNode("NOD_Trigger", "tPlayerWon")
  Node_AddSon(node423, node425)
  Body_SetFriendOrFoeID(node425, 0)
  Body_SetPosition(node425, MAT_Vector3(886.471903, 3176.990719, 150))
  Trigger_SetPresenceSphere(node425, 50)
  Node_EnterSimulation(node425)
  Game_LoadProgress_Advance(node0)
  node426 = Node_CreateNode("NOD_Trigger", "tOtherWon")
  Node_AddSon(node423, node426)
  Body_SetFriendOrFoeID(node426, 0)
  Body_SetPosition(node426, MAT_Vector3(886.4719, 3176.991, 150))
  Trigger_SetPresenceSphere(node426, 50)
  Node_EnterSimulation(node426)
  Game_LoadProgress_Advance(node0)
  node427 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node158, node427)
  Node_EnterSimulation(node427)
  Game_LoadProgress_Advance(node0)
  node428 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node427, node428)
  Node_EnterSimulation(node428)
  Game_LoadProgress_Advance(node0)
  node429 = Node_CreateNode("nod_vessel", "trc_avenger_p1")
  Node_AddSon(node428, node429)
  Body_SetCS(node429, MAT_Vector3(1097.722, 1893.525, 350), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node429, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node429, 0)
  Body_SetNameKey(node429, -1)
  Body_SetCargoKey(node429, -1, 0)
  Body_SetCargoKey(node429, -1, 1)
  Body_SetCargoKey(node429, -1, 2)
  Node_EnterSimulation(node429)
  Game_LoadProgress_Advance(node0)
  node430 = Node_CreateNode("nod_vessel", "trc_police_p1")
  Node_AddSon(node428, node430)
  Body_SetCS(node430, MAT_Vector3(923.1009, 3173.487, 223.4119), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node430, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node430, 0)
  Body_SetNameKey(node430, -1)
  Body_SetCargoKey(node430, -1, 0)
  Body_SetCargoKey(node430, -1, 1)
  Body_SetCargoKey(node430, -1, 2)
  Node_EnterSimulation(node430)
  Game_LoadProgress_Advance(node0)
  node431 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p1")
  Node_AddSon(node428, node431)
  Body_SetCS(node431, MAT_Vector3(2163.426, 3133.485, 350), MAT_Vector3(-83.52366, 0, 0))
  Node_ParseIniFile(node431, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node431, 0)
  Body_SetNameKey(node431, -1)
  Body_SetCargoKey(node431, -1, 0)
  Body_SetCargoKey(node431, -1, 1)
  Body_SetCargoKey(node431, -1, 2)
  Node_EnterSimulation(node431)
  Game_LoadProgress_Advance(node0)
  node432 = Node_CreateNode("nod_vessel", "trc_toiler_p1")
  Node_AddSon(node428, node432)
  Body_SetCS(node432, MAT_Vector3(1363.144, 2953.196, 450.24), MAT_Vector3(42.92338, 0, 0))
  Node_ParseIniFile(node432, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node432, 0)
  Body_SetNameKey(node432, -1)
  Body_SetCargoKey(node432, -1, 0)
  Body_SetCargoKey(node432, -1, 1)
  Body_SetCargoKey(node432, -1, 2)
  Node_EnterSimulation(node432)
  Game_LoadProgress_Advance(node0)
  node433 = Node_CreateNode("nod_vessel", "trc_skipjack_p1")
  Node_AddSon(node428, node433)
  Body_SetCS(node433, MAT_Vector3(2313.169, 4002.909, 550.411), MAT_Vector3(-107.4887, 0, 0))
  Node_ParseIniFile(node433, "osd/gen/gen_skipjack.osd")
  Body_SetFriendOrFoeID(node433, 0)
  Body_SetNameKey(node433, -1)
  Body_SetCargoKey(node433, -1, 0)
  Body_SetCargoKey(node433, -1, 1)
  Body_SetCargoKey(node433, -1, 2)
  Node_EnterSimulation(node433)
  Game_LoadProgress_Advance(node0)
  node434 = Node_CreateNode("nod_vessel", "trc_avenger_p2")
  Node_AddSon(node428, node434)
  Body_SetCS(node434, MAT_Vector3(1447.722, 2293.525, 400), MAT_Vector3(-139.3504, 0, 0))
  Node_ParseIniFile(node434, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node434, 0)
  Body_SetNameKey(node434, -1)
  Body_SetCargoKey(node434, -1, 0)
  Body_SetCargoKey(node434, -1, 1)
  Body_SetCargoKey(node434, -1, 2)
  Node_EnterSimulation(node434)
  Game_LoadProgress_Advance(node0)
  node435 = Node_CreateNode("nod_vessel", "trc_police_p2")
  Node_AddSon(node428, node435)
  Body_SetCS(node435, MAT_Vector3(1273.101, 3573.487, 273.4119), MAT_Vector3(-108.3242, 0, 0))
  Node_ParseIniFile(node435, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node435, 0)
  Body_SetNameKey(node435, -1)
  Body_SetCargoKey(node435, -1, 0)
  Body_SetCargoKey(node435, -1, 1)
  Body_SetCargoKey(node435, -1, 2)
  Node_EnterSimulation(node435)
  Game_LoadProgress_Advance(node0)
  node436 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p2")
  Node_AddSon(node428, node436)
  Body_SetCS(node436, MAT_Vector3(2513.426, 3533.485, 400), MAT_Vector3(67.60977, 0, 0))
  Node_ParseIniFile(node436, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node436, 0)
  Body_SetNameKey(node436, -1)
  Body_SetCargoKey(node436, -1, 0)
  Body_SetCargoKey(node436, -1, 1)
  Body_SetCargoKey(node436, -1, 2)
  Node_EnterSimulation(node436)
  Game_LoadProgress_Advance(node0)
  node437 = Node_CreateNode("nod_vessel", "trc_toiler_p2")
  Node_AddSon(node428, node437)
  Body_SetCS(node437, MAT_Vector3(1713.144, 3353.196, 500.24), MAT_Vector3(134.5185, 0, 0))
  Node_ParseIniFile(node437, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node437, 0)
  Body_SetNameKey(node437, -1)
  Body_SetCargoKey(node437, -1, 0)
  Body_SetCargoKey(node437, -1, 1)
  Body_SetCargoKey(node437, -1, 2)
  Node_EnterSimulation(node437)
  Game_LoadProgress_Advance(node0)
  node438 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node427, node438)
  Body_SetCS(node438, MAT_Vector3(764.585306, 3135.271417, 165.542038), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node438, "osd/pla/pla_instant_atlscout.osd")
  Body_SetFriendOrFoeID(node438, 3)
  Node_EnterSimulation(node438)
  Game_LoadProgress_Advance(node0)
  node439 = Node_CreateNode("nod_vessel", "Avenger_race")
  Node_AddSon(node427, node439)
  Body_SetCS(node439, MAT_Vector3(764.808155, 3170.599043, 165), MAT_Vector3(-90.209757, 0, 0))
  Node_ParseIniFile(node439, "osd/gen/gen_avenger_race.osd")
  Body_SetFriendOrFoeID(node439, 0)
  Body_SetNameKey(node439, -1)
  Body_SetCargoKey(node439, -1, 0)
  Body_SetCargoKey(node439, -1, 1)
  Body_SetCargoKey(node439, -1, 2)
  Node_EnterSimulation(node439)
  Game_LoadProgress_Advance(node0)
  node440 = Node_CreateNode("nod_vessel", "Toiler_race")
  Node_AddSon(node427, node440)
  Body_SetCS(node440, MAT_Vector3(764.566348, 3197.386028, 165), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node440, "osd/gen/gen_toiler_race.osd")
  Body_SetFriendOrFoeID(node440, 0)
  Body_SetNameKey(node440, -1)
  Body_SetCargoKey(node440, -1, 0)
  Body_SetCargoKey(node440, -1, 1)
  Body_SetCargoKey(node440, -1, 2)
  Node_EnterSimulation(node440)
  Game_LoadProgress_Advance(node0)
  node441 = Node_CreateNode("nod_vessel", "Scout2_race")
  Node_AddSon(node427, node441)
  Body_SetCS(node441, MAT_Vector3(767.722051, 3222.172439, 168.274181), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node441, "osd/atl/atl_scout2_race.osd")
  Body_SetFriendOrFoeID(node441, 0)
  Body_SetNameKey(node441, -1)
  Body_SetCargoKey(node441, -1, 0)
  Body_SetCargoKey(node441, -1, 1)
  Body_SetCargoKey(node441, -1, 2)
  Node_EnterSimulation(node441)
  Game_LoadProgress_Advance(node0)
  node442 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node427, node442)
  Body_SetPosition(node442, MAT_Vector3(1532.317784, 3343.543169, 150))
  WayPoint_SetRadius(node442, 50)
  Node_ParseIniFile(node442, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node442)
  Game_LoadProgress_Advance(node0)
  node443 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node427, node443)
  Body_SetPosition(node443, MAT_Vector3(1808.275513, 4135.810091, 178.700701))
  WayPoint_SetRadius(node443, 50)
  Node_ParseIniFile(node443, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node443)
  Game_LoadProgress_Advance(node0)
  node444 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_2")
  Node_AddSon(node427, node444)
  Body_SetPosition(node444, MAT_Vector3(2755.658078, 3256.972994, 150))
  WayPoint_SetRadius(node444, 50)
  Node_ParseIniFile(node444, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node444)
  Game_LoadProgress_Advance(node0)
  node445 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_3")
  Node_AddSon(node427, node445)
  Body_SetPosition(node445, MAT_Vector3(3473.383124, 3677.195722, 150))
  WayPoint_SetRadius(node445, 50)
  Node_ParseIniFile(node445, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node445)
  Game_LoadProgress_Advance(node0)
  node446 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_4")
  Node_AddSon(node427, node446)
  Body_SetPosition(node446, MAT_Vector3(3597.592149, 2860.594667, 150))
  WayPoint_SetRadius(node446, 50)
  Node_ParseIniFile(node446, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node446)
  Game_LoadProgress_Advance(node0)
  node447 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_5")
  Node_AddSon(node427, node447)
  Body_SetPosition(node447, MAT_Vector3(2337.978059, 2429.328048, 150))
  WayPoint_SetRadius(node447, 50)
  Node_ParseIniFile(node447, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node447)
  Game_LoadProgress_Advance(node0)
  node448 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_6")
  Node_AddSon(node427, node448)
  Body_SetPosition(node448, MAT_Vector3(1437.141632, 2704.478857, 150))
  WayPoint_SetRadius(node448, 50)
  Node_ParseIniFile(node448, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node448)
  Game_LoadProgress_Advance(node0)
  node449 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_finish")
  Node_AddSon(node427, node449)
  Body_SetPosition(node449, MAT_Vector3(886.840285, 3175.627728, 150))
  WayPoint_SetRadius(node449, 50)
  Node_ParseIniFile(node449, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node449)
  Game_LoadProgress_Advance(node0)
  node450 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node450)
  Camera_SetBackPlane(node450, 512)
  Node_EnterSimulation(node450)
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
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, F)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, E)
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
                                                                                                                                                                                                                                                                                                              if not (o7074.Value ~= True) then
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
                                                                                                                                                                                                                                                                                                              if not (o7098.Value == True) then
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

end }
S_o5274 = { [nil] = {}, Start = function(L0)

end }
S_o5320 = { [nil] = {}, Start = function(L0)

end }
S_o5366 = { [nil] = {}, Start = function(L0)

end }
S_o5412 = { [nil] = {}, Start = function(L0)

end }
S_o5458 = { [nil] = {}, Start = function(L0)

end }
S_o5504 = { [nil] = {}, Start = function(L0)

end }
S_o5550 = { [nil] = {}, Start = function(L0)

end }
S_o5596 = { [nil] = {}, Start = function(L0)

end }
S_o5642 = { [nil] = {}, Start = function(L0)

end }
S_o5688 = { [nil] = {}, Start = function(L0)

end }
S_o5734 = { [nil] = {}, Start = function(L0)

end }
S_o5780 = { [nil] = {}, Start = function(L0)

end }
S_o5826 = { [nil] = {}, Start = function(L0)

end }
S_o5872 = { [nil] = {}, Start = function(L0)

end }
S_o5918 = { [nil] = {}, Start = function(L0)

end }
S_o5964 = { [nil] = {}, Start = function(L0)

end }
S_o6010 = { [nil] = {}, Start = function(L0)

end }
S_o6056 = { [nil] = {}, Start = function(L0)

end }
S_o6102 = { [nil] = {}, Start = function(L0)

end }
S_o6148 = { [nil] = {}, Start = function(L0)

end }
S_o6194 = { [nil] = {}, Start = function(L0)

end }
S_o6240 = { [nil] = {}, Start = function(L0)

end }
S_o6286 = { [nil] = {}, Start = function(L0)

end }
S_o6332 = { [nil] = {}, Start = function(L0)

end }
S_o6378 = { [nil] = {}, Start = function(L0)

end }
S_o6424 = { [nil] = {}, Start = function(L0)

end }
S_o6470 = { [nil] = {}, Start = function(L0)

end }
S_o6516 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  CallFunction(o6516, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o6517 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dmNeopolis_South_ApproachPath", "/Scenario_Dynamic/Navigation/dmNeopolis_South_DockPath", "/Scenario_Dynamic/Navigation/dmNeopolis_South_Area")
S_o6518 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o6518, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code3")
  else
    CallFunction(o6518, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SED_SetTaskTextKey(2101, -1, -1)
  CallFunction(o6518, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code5")
  else
    CallFunction(o6518, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SED_SetTaskTextKey(2102, -1, -1)
  CallFunction(o6518, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code7")
  else
    CallFunction(o6518, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SED_SetTaskTextKey(2103, -1, -1)
  CallFunction(o6518, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code9")
  else
    CallFunction(o6518, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SED_SetTaskTextKey(2104, -1, -1)
  CallFunction(o6518, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code11")
  else
    CallFunction(o6518, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  SED_SetTaskTextKey(2105, 1, 0.5)
  CallFunction(o6518, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code13")
  else
    CallFunction(o6518, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  SED_SetTaskTextKey(0, -1, -1)
  Game_PlayMusic(GetGameNode(), "Agressive")
  CallFunction(o6518, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o6526 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6526, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6526, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6526, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o6526, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6526, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6526, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6531.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6528.Value ~= True) then
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
o6528 = { [nil] = {}, GetCalculated = function()
  if not (o7063.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6528.SetStateValue(o6528.GetCalculated())
end, StartCalculate = function()
  o6528["Value"] = o6528.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6528.Value == L0) then
    o6528["Value"] = L0
    CallFunction(o6526, "ProcesseStateChange")
  end
end }
o6531 = { [nil] = {}, Start = function()
  o6531["Value"] = False
  o7071.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6531.Value == L0) then
    o6531["Value"] = L0
    o7071.ReCalculate()
  end
end }
S_o6532 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6532, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6532, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6532, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o6532, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6532, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6532, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6537.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6533.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6534.Value ~= True) then
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
o6533 = { [nil] = {}, GetCalculated = function()
  if not (o7070.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6533.SetStateValue(o6533.GetCalculated())
end, StartCalculate = function()
  o6533["Value"] = o6533.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6533.Value == L0) then
    o6533["Value"] = L0
    CallFunction(o6532, "ProcesseStateChange")
  end
end }
o6534 = { [nil] = {}, GetCalculated = function()
  if not (o6543.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6534.SetStateValue(o6534.GetCalculated())
end, StartCalculate = function()
  o6534["Value"] = o6534.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6534.Value == L0) then
    o6534["Value"] = L0
    CallFunction(o6532, "ProcesseStateChange")
  end
end }
o6537 = { [nil] = {}, Start = function()
  o6537["Value"] = False
  o6540.StartCalculate()
  o7072.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6537.Value == L0) then
    o6537["Value"] = L0
    o6540.ReCalculate()
    o7072.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "Avenger_race", "Toiler_race", "Scout2_race", "", False, False, True)
  CallFunction(o6538, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6538, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6538, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o6543.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o6539.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o6540.Value ~= True) then
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
o6539 = { [nil] = {}, GetCalculated = function()
  if not (o7107.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6539.SetStateValue(o6539.GetCalculated())
end, StartCalculate = function()
  o6539["Value"] = o6539.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6539.Value == L0) then
    DelayedFunction(40, o6539, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6539.Value == L0) then
    o6539["Value"] = L0
    CallFunction(o6538, "ProcesseStateChange")
  end
end }
o6540 = { [nil] = {}, GetCalculated = function()
  if not (o6537.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6540.SetStateValue(o6540.GetCalculated())
end, StartCalculate = function()
  o6540["Value"] = o6540.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6540.Value == L0) then
    o6540["Value"] = L0
    CallFunction(o6538, "ProcesseStateChange")
  end
end }
o6543 = { [nil] = {}, Start = function()
  o6543["Value"] = False
  o6534.StartCalculate()
  o7073.StartCalculate()
end, SetStateValue = function(L0)
  if not (o6543.Value == L0) then
    o6543["Value"] = L0
    o6534.ReCalculate()
    o7073.ReCalculate()
  end
end }
S_o6544 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6544, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6544, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6544, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6544, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6544, "Code5")
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
S_o6600 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6600, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6600, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6600, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6600, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6600, "Code5")
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
S_o6656 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6656, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6656, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6656, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6656, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6656, "Code5")
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
S_o6712 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6712, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6712, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6712, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6712, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6712, "Code5")
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
S_o6768 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6768, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6768, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6768, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6768, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6768, "Code5")
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
S_o6824 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6824, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6824, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6824, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6824, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6824, "Code5")
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
S_o6880 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6880, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6880, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6880, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6880, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6880, "Code5")
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
S_o6936 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6936, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6936, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6936, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6936, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6936, "Code5")
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
S_o6992 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6992, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6992, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6992, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o6992, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o6992, "Code5")
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
S_o7048 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 750)
  CallFunction(o7048, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7048, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_AddItem(L0.Node, "gun_empactor", 1)
  CallFunction(o7048, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
end, Player_FirstWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire1", True)
end, Player_SecondWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire2", True)
end, Player_ThirdWarning = function(L0)
  CallFunction(L0.Thread, "SetStateValue_FriendlyFire3", True)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o7049.Value ~= True) then
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
o7049 = { [nil] = {}, GetCalculated = function()
  if not (o7107.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7049.SetStateValue(o7049.GetCalculated())
end, StartCalculate = function()
  o7049["Value"] = o7049.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7049.Value == L0) then
    DelayedFunction(5, o7049, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7049.Value == L0) then
    o7049["Value"] = L0
    CallFunction(o7048, "ProcesseStateChange")
  end
end }
o7063 = { [nil] = {}, GetCalculated = function()
  if not (o7107.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7063.SetStateValue(o7063.GetCalculated())
end, StartCalculate = function()
  o7063["Value"] = o7063.GetCalculated()
  o6528.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7273.Node)
end, SetStateValue = function(L0)
  if not (o7063.Value == L0) then
    DelayedFunction(5, o7063, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7063.Value == L0) then
    o7063["Value"] = L0
    o6528.ReCalculate()
    if not (L0 ~= 1) then
      o7063.ChangeTo1()
    end
  end
end }
o7064 = { [nil] = {}, GetCalculated = function()
  if not (o7276.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7064.SetStateValue(o7064.GetCalculated())
end, StartCalculate = function()
  o7064["Value"] = o7064.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7278.Node)
end, SetStateValue = function(L0)
  if not (o7064.Value == L0) then
    o7064["Value"] = L0
    if not (L0 ~= 1) then
      o7064.ChangeTo1()
    end
  end
end }
o7065 = { [nil] = {}, GetCalculated = function()
  if not (o7281.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7065.SetStateValue(o7065.GetCalculated())
end, StartCalculate = function()
  o7065["Value"] = o7065.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7283.Node)
end, SetStateValue = function(L0)
  if not (o7065.Value == L0) then
    o7065["Value"] = L0
    if not (L0 ~= 1) then
      o7065.ChangeTo1()
    end
  end
end }
o7066 = { [nil] = {}, GetCalculated = function()
  if not (o7286.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7066.SetStateValue(o7066.GetCalculated())
end, StartCalculate = function()
  o7066["Value"] = o7066.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7288.Node)
end, SetStateValue = function(L0)
  if not (o7066.Value == L0) then
    o7066["Value"] = L0
    if not (L0 ~= 1) then
      o7066.ChangeTo1()
    end
  end
end }
o7067 = { [nil] = {}, GetCalculated = function()
  if not (o7291.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7067.SetStateValue(o7067.GetCalculated())
end, StartCalculate = function()
  o7067["Value"] = o7067.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7293.Node)
end, SetStateValue = function(L0)
  if not (o7067.Value == L0) then
    o7067["Value"] = L0
    if not (L0 ~= 1) then
      o7067.ChangeTo1()
    end
  end
end }
o7068 = { [nil] = {}, GetCalculated = function()
  if not (o7296.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7068.SetStateValue(o7068.GetCalculated())
end, StartCalculate = function()
  o7068["Value"] = o7068.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7298.Node)
end, SetStateValue = function(L0)
  if not (o7068.Value == L0) then
    o7068["Value"] = L0
    if not (L0 ~= 1) then
      o7068.ChangeTo1()
    end
  end
end }
o7069 = { [nil] = {}, GetCalculated = function()
  if not (o7301.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7069.SetStateValue(o7069.GetCalculated())
end, StartCalculate = function()
  o7069["Value"] = o7069.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7303.Node)
end, SetStateValue = function(L0)
  if not (o7069.Value == L0) then
    o7069["Value"] = L0
    if not (L0 ~= 1) then
      o7069.ChangeTo1()
    end
  end
end }
o7070 = { [nil] = {}, GetCalculated = function()
  if not (o7306.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7070.SetStateValue(o7070.GetCalculated())
end, StartCalculate = function()
  o7070["Value"] = o7070.GetCalculated()
  o6533.StartCalculate()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o7308.Node)
end, SetStateValue = function(L0)
  if not (o7070.Value == L0) then
    o7070["Value"] = L0
    o6533.ReCalculate()
    if not (L0 ~= 1) then
      o7070.ChangeTo1()
    end
  end
end }
o7071 = { [nil] = {}, GetCalculated = function()
  if not (o6531.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7071.SetStateValue(o7071.GetCalculated())
end, StartCalculate = function()
  o7071["Value"] = o7071.GetCalculated()
  o7098.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 4, 2001, 2106)
end, SetStateValue = function(L0)
  if not (o7071.Value == L0) then
    o7071["Value"] = L0
    o7098.ReCalculate()
    if not (L0 ~= 1) then
      o7071.ChangeTo1()
    end
  end
end }
o7072 = { [nil] = {}, GetCalculated = function()
  if not (o6537.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7072.SetStateValue(o7072.GetCalculated())
end, StartCalculate = function()
  o7072["Value"] = o7072.GetCalculated()
  o7074.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2107)
end, SetStateValue = function(L0)
  if not (o7072.Value == L0) then
    o7072["Value"] = L0
    o7074.ReCalculate()
    if not (L0 ~= 1) then
      o7072.ChangeTo1()
    end
  end
end }
o7073 = { [nil] = {}, GetCalculated = function()
  if not (o6543.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7073.SetStateValue(o7073.GetCalculated())
end, StartCalculate = function()
  o7073["Value"] = o7073.GetCalculated()
  o7098.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2108)
end, SetStateValue = function(L0)
  if not (o7073.Value == L0) then
    o7073["Value"] = L0
    o7098.ReCalculate()
    if not (L0 ~= 1) then
      o7073.ChangeTo1()
    end
  end
end }
o7074 = { [nil] = {}, GetCalculated = function()
  if not (o7072.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7074.SetStateValue(o7074.GetCalculated())
end, StartCalculate = function()
  o7074["Value"] = o7074.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7074.Value == L0) then
    o7074["Value"] = L0
    o2.ReCalculate()
  end
end }
o7098 = { [nil] = {}, GetCalculated = function()
  if not (o7071.Value == True) then
    if not (o7073.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o7098.SetStateValue(o7098.GetCalculated())
end, StartCalculate = function()
  o7098["Value"] = o7098.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7098.Value == L0) then
    o7098["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o7102 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7102, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7102, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7102, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o7102, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o7102, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "player", "Toiler", "Scout", "Player")
  CallFunction(o7102, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5.656478 } }("Code7")
  else
    CallFunction(o7102, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AvengerPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o7102, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Born = function(L0, L1)
  o7107.SetStateValue(L1)
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
o7107 = { [nil] = {}, Start = function()
  o7107["Value"] = False
  o6539.StartCalculate()
  o7049.StartCalculate()
  o7063.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7107.Value == L0) then
    o7107["Value"] = L0
    o6539.ReCalculate()
    o7049.ReCalculate()
    o7063.ReCalculate()
  end
end }
S_o7159 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7159, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7159, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7159, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o7159, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o7159, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "player", "avenger", "Scout", "Player")
  CallFunction(o7159, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5.489565 } }("Code7")
  else
    CallFunction(o7159, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/ToilerPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o7159, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
S_o7216 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7216, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7216, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7216, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o7216, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o7216, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "player", "Toiler", "Avenger", "Player")
  CallFunction(o7216, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 5.1 } }("Code7")
  else
    CallFunction(o7216, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AtlScoutPath_1", 1, 1 } }("Code8")
  else
    CallFunction(o7216, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
S_o7273 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7273, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7276.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7276 = { [nil] = {}, Start = function()
  o7276["Value"] = False
  o7064.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7276.Value == L0) then
    o7276["Value"] = L0
    o7064.ReCalculate()
  end
end }
S_o7278 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7278, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7281.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7281 = { [nil] = {}, Start = function()
  o7281["Value"] = False
  o7065.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7281.Value == L0) then
    o7281["Value"] = L0
    o7065.ReCalculate()
  end
end }
S_o7283 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7283, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7286.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7286 = { [nil] = {}, Start = function()
  o7286["Value"] = False
  o7066.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7286.Value == L0) then
    o7286["Value"] = L0
    o7066.ReCalculate()
  end
end }
S_o7288 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7288, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7291.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7291 = { [nil] = {}, Start = function()
  o7291["Value"] = False
  o7067.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7291.Value == L0) then
    o7291["Value"] = L0
    o7067.ReCalculate()
  end
end }
S_o7293 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7293, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7296.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7296 = { [nil] = {}, Start = function()
  o7296["Value"] = False
  o7068.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7296.Value == L0) then
    o7296["Value"] = L0
    o7068.ReCalculate()
  end
end }
S_o7298 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7298, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7301.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7301 = { [nil] = {}, Start = function()
  o7301["Value"] = False
  o7069.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7301.Value == L0) then
    o7301["Value"] = L0
    o7069.ReCalculate()
  end
end }
S_o7303 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7303, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o7306.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7306 = { [nil] = {}, Start = function()
  o7306["Value"] = False
  o7070.StartCalculate()
end, SetStateValue = function(L0)
  if not (o7306.Value == L0) then
    o7306["Value"] = L0
    o7070.ReCalculate()
  end
end }
S_o7308 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o7308, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o7313 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 450)
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
  o5228 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_museum_1", S_o5228)
  o5274 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_l_1", S_o5274)
  o5320 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_1", S_o5320)
  o5366 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_2", S_o5366)
  o5412 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_3", S_o5412)
  o5458 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_4", S_o5458)
  o5504 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_5", S_o5504)
  o5550 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_6", S_o5550)
  o5596 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_7", S_o5596)
  o5642 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_8", S_o5642)
  o5688 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_s", S_o5688)
  o5734 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_1", S_o5734)
  o5780 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_2", S_o5780)
  o5826 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_3", S_o5826)
  o5872 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_4", S_o5872)
  o5918 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_1", S_o5918)
  o5964 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_2", S_o5964)
  o6010 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_3", S_o6010)
  o6056 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_4", S_o6056)
  o6102 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_5", S_o6102)
  o6148 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_6", S_o6148)
  o6194 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_7", S_o6194)
  o6240 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_8", S_o6240)
  o6286 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_9", S_o6286)
  o6332 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_1", S_o6332)
  o6378 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_2", S_o6378)
  o6424 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_3", S_o6424)
  o6470 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_scoop_1", S_o6470)
  o6516 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_laserwall_2", S_o6516)
  o6526 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tJudge", S_o6526)
  o6531.Start()
  o6532 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tPlayerWon", S_o6532)
  o6537.Start()
  o6538 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tOtherWon", S_o6538)
  o6543.Start()
  o6544 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p1", S_o6544)
  o6600 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p1", S_o6600)
  o6656 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p1", S_o6656)
  o6712 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p1", S_o6712)
  o6768 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_skipjack_p1", S_o6768)
  o6824 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p2", S_o6824)
  o6880 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p2", S_o6880)
  o6936 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p2", S_o6936)
  o6992 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p2", S_o6992)
  o7048 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o7048)
  o7102 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Avenger_race", S_o7102)
  o7107.Start()
  o7159 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Toiler_race", S_o7159)
  o7216 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Scout2_race", S_o7216)
  o7273 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o7273)
  o7276.Start()
  o7278 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o7278)
  o7281.Start()
  o7283 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_2", S_o7283)
  o7286.Start()
  o7288 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_3", S_o7288)
  o7291.Start()
  o7293 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_4", S_o7293)
  o7296.Start()
  o7298 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_5", S_o7298)
  o7301.Start()
  o7303 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_6", S_o7303)
  o7306.Start()
  o7308 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_finish", S_o7308)
  o7313 = BindEasy(Node_Find("/"), "Camera", S_o7313)
  o6518 = BindEasy(Node_Find("/Scenario_Dynamic/Director"), "StartCounter", S_o6518)
  Game_LoadProgress_Leave(Node_Find("/"))
end
