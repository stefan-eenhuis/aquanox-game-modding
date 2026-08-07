-- dekompiliert aus 5b1.sco
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
  Game_LoadTextTable(node0, "dat/sty/de/minfo_5b1.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_5B1.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_mystery.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit1.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 2)
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
  node8 = Node_CreateNode("NOD_Directory", "RedBeard")
  Node_AddSon(node7, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "atl_wblock3a_build_1")
  Node_AddSon(node8, node9)
  Body_SetCS(node9, MAT_Vector3(305.805284, 608.743907, 190.955799), MAT_Vector3(-29.190828, -0.202431, 0.34385))
  Node_ParseIniFile(node9, "osd/atl/atl_wblock3a_build.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "atl_wblock3a_build_2")
  Node_AddSon(node8, node10)
  Body_SetCS(node10, MAT_Vector3(134.015898, 722.789421, 129.244246), MAT_Vector3(96.99663, -0.202431, 0.34385))
  Node_ParseIniFile(node10, "osd/atl/atl_wblock3a_build.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_flare", "fx_flare_5H1_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_flare/fx_flare_5H1.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_fx_sky", "fx_sky_5H1_1")
  Node_AddSon(node7, node12)
  Node_ParseIniFile(node12, "osd/fx_sky/fx_sky_5H1.osd")
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_fx_rays", "fx_rays_5H1_1")
  Node_AddSon(node7, node13)
  Node_ParseIniFile(node13, "osd/fx_rays/fx_rays_5H1.osd")
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(2073.465, 2435.761, 129.2463), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node14, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node7, node15)
  Node_ParseIniFile(node15, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3923.485, 3162.483, 129.2463), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node16, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_dock1_4_2")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(1535.22, 3499.061, 140.7347), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_concordia_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2376.587, 3257.644, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_concordia.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_shipyard_2")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(1105.844, 2671.703, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "atl_ec_obelisk_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(3209.853, 3318.218, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "atl_ec_tower_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(1230, 3177, 191.2339), MAT_Vector3(80, 0, 0))
  Node_ParseIniFile(node21, "osd/atl/atl_ec_tower.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "atl_ec_triumph_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(3054.769, 2459.933, 118), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node22, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(1230, 3177, 130), MAT_Vector3(89.81774, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "atl_neo_house1_1")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2146.324, 3473.884, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node24, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "atl_neo_house2_1")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(3006.342, 1852.981, 122), MAT_Vector3(90.21938, 0, 0))
  Node_ParseIniFile(node25, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "atl_neo_house3_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(3741.885, 2374.919, 122), MAT_Vector3(-89.61197, 0, 0))
  Node_ParseIniFile(node26, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "atl_neo_house4_1")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2610.062, 3038.711, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node27, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "atl_neo_house5_1")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2570.748, 2690.341, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "atl_neo_house6_1")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2204.478, 2693.491, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "atl_neo_house1_2")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(2978.109, 2719.454, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node30, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "atl_neo_house2_2")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2574.92, 2322.713, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "atl_neo_house3_2")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2937.703, 2207.593, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node32, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "atl_neo_house4_2")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(3317.839, 2216.294, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "atl_neo_house5_2")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(2964.182, 3465.773, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node34, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "atl_neo_house6_2")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(2960.468, 3101.693, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node35, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "atl_neo_house1_3")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1834.136, 2682.137, 122), MAT_Vector3(-89.90576, 0, 0))
  Node_ParseIniFile(node36, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "atl_neo_house2_3")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(2140.641, 3839.051, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node37, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "atl_neo_house3_3")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1806.202, 3039.115, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node38, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "atl_neo_house4_3")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1788.409, 3394.038, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node39, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "atl_neo_house5_3")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1462.331, 3043.285, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node40, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "atl_neo_house6_3")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1269.722, 3408.016, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node41, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "atl_neo_house1_4")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1826.922, 4552.048, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node42, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "atl_neo_house2_4")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(920.2925, 3407.198, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node43, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "atl_neo_house3_4")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1791.384, 3755.214, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node44, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "atl_neo_house4_4")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(2184.476, 4546.447, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node45, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "atl_neo_house5_4")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(2267.938, 4195.637, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node46, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "atl_neo_house6_4")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1478.97, 4560.387, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node47, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "atl_neo_house1_5")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1436.313, 3751.422, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node48, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "atl_neo_house2_5")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(2504.562, 3836.625, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node49, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "atl_neo_house3_5")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(2623.55, 4191.919, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node50, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "atl_neo_house4_5")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1083.008, 3757.951, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node51, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "atl_neo_house5_5")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(734.6174, 3761.358, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node52, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "atl_neo_house6_5")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1117.218, 2944.916, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node53, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "atl_neo_house1_6")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(732.8609, 4111.736, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node54, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "atl_neo_house2_6")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(725.8118, 4459.8, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node55, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "atl_neo_house3_6")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1129.965, 4557.218, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node56, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "atl_neo_house4_6")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1469.361, 2693.728, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node57, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "atl_neo_house5_6")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(2862.33, 3836.712, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node58, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "atl_neo_house6_6")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(2531.15, 4545.612, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node59, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "atl_neo_house1_7")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1116.191, 2408.586, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node60, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "atl_neo_house2_7")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(757.3516, 2901.013, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node61, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "atl_neo_house3_7")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(2215.779, 2174.997, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node62, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "atl_neo_house4_7")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1836.771, 2333.674, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node63, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "atl_neo_house5_7")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1480.429, 2338.323, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node64, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "atl_neo_house6_7")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1561.314, 1987.779, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node65, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "atl_neo_house1_8")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(3333.51, 2727.811, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node66, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "atl_neo_house3_8")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(3309.394, 3076.406, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node67, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "atl_neo_house4_8")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(2606.451, 3469.6, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node68, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_neo_house5_8")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(3316.824, 3778.205, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_neo_house6_8")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(3160.805, 4186.863, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_neo_house1_9")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(3662.078, 3073.172, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_neo_house2_9")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(3681.171, 2722.375, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_neo_house3_9")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(3668.463, 3775.134, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_neo_house4_9")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(3461.494, 3424.993, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_neo_house5_9")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(2903.124, 4565.731, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_neo_house6_9")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(3833.691, 3429.243, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_neo_house1_10")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(3268.311, 4558.106, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_neo_house2_10")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(4193.654, 3246.313, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_neo_house3_10")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(3362.993, 1850.257, 122), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_neo_house4_10")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(2151.069, 3047.624, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "atl_neo_house1_11")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(4093.902, 2381.126, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node81, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "atl_neo_house2_11")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(2015.496, 4906.099, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "atl_neo_house3_11")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(3382.93, 4915.628, 122), MAT_Vector3(-0.335363, 0, 0))
  Node_ParseIniFile(node83, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "atl_neo_house5_11")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(1658.892, 4920.058, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "atl_neo_house6_11")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(1304.283, 4918.485, 122), MAT_Vector3(89.76241, 0, 0))
  Node_ParseIniFile(node85, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "atl_neo_house5_12")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(746.7569, 2547.51, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node86, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "atl_neo_house6_12")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(4043.509, 2732.785, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node87, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1116.499, 4194.17, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_pplant1_2")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(1261.193, 4193.412, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_pplant1_3")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(1115.848, 4087.062, 126.3762), MAT_Vector3(179.9564, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_pplant1_4")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(1262.841, 4086.304, 126.3762), MAT_Vector3(-0.342134, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_pplant2_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(990.7348, 4193.845, 115.9661), MAT_Vector3(-179.9593, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_pplant2_2")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(990.3774, 4087.583, 115.9661), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(1124.998, 4285.873, 135.8734), MAT_Vector3(90.00559, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(1002.635, 4352.304, 110.053), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(1040.658, 4286.509, 139.7296), MAT_Vector3(90.14769, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(990.6709, 4248.364, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(989.847, 4140.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(1115.547, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(1261.926, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_rohr_small02_10")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(1095.479, 4317.799, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_rohr_small02_11")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(1095.479, 4348.278, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(1123.32, 4192.826, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(1123.129, 4086.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_rohr_small03_10")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(1123.129, 3986.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_rohr_small03_11")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(1133.572, 4280.691, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_pplant1_5")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(1118.147, 3987.062, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_pplant1_6")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(1262.841, 3986.304, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_pplant2_3")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(990.3774, 3987.583, 115.9661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(989.847, 4040.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(1115.547, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node7, node112)
  Body_SetCS(node112, MAT_Vector3(1261.926, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_shelter_11")
  Node_AddSon(node7, node113)
  Body_SetCS(node113, MAT_Vector3(1292.186, 4320.126, 138), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node7, node114)
  Body_SetCS(node114, MAT_Vector3(1261.145, 4246.658, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node7, node115)
  Body_SetCS(node115, MAT_Vector3(1203.797, 4334.485, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node115, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node7, node116)
  Body_SetCS(node116, MAT_Vector3(1203.396, 4300.798, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "NAVYHQ")
  Node_AddSon(node7, node117)
  Body_SetCS(node117, MAT_Vector3(3778.916, 4279.821, 40), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node117, "osd/mac/mac_building1_big.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "navyhq_dockingnode_1")
  Node_AddSon(node7, node118)
  Body_SetCS(node118, MAT_Vector3(3843.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "navyhq_dockingnode_2")
  Node_AddSon(node7, node119)
  Body_SetCS(node119, MAT_Vector3(3775.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "navyhq_dockingnode_3")
  Node_AddSon(node7, node120)
  Body_SetCS(node120, MAT_Vector3(3705.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "navyhq_quay_1")
  Node_AddSon(node7, node121)
  Body_SetCS(node121, MAT_Vector3(3442.286, 4243.51, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "navyhq_quay_2")
  Node_AddSon(node7, node122)
  Body_SetCS(node122, MAT_Vector3(3770.662, 4050.547, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "navyhq_quay_3")
  Node_AddSon(node7, node123)
  Body_SetCS(node123, MAT_Vector3(3792.667, 4614.203, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "navyhq_shelter_1")
  Node_AddSon(node7, node124)
  Body_SetCS(node124, MAT_Vector3(3895.218, 4466.632, 128.5559), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "navyhq_metalblock3_1")
  Node_AddSon(node7, node125)
  Body_SetCS(node125, MAT_Vector3(3859.252, 4229.73, 126.6685), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node125, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_generic", "navyhq_metalblock2_1")
  Node_AddSon(node7, node126)
  Body_SetCS(node126, MAT_Vector3(3939.914, 4309.355, 130.7812), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node126, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node126, 0)
  Body_SetNameKey(node126, -1)
  Body_SetCargoKey(node126, -1, 0)
  Body_SetCargoKey(node126, -1, 1)
  Body_SetCargoKey(node126, -1, 2)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_generic", "navyhq_dock3_3")
  Node_AddSon(node7, node127)
  Body_SetCS(node127, MAT_Vector3(3662.658, 4450.381, 128.2063), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node127, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetNameKey(node127, -1)
  Body_SetCargoKey(node127, -1, 0)
  Body_SetCargoKey(node127, -1, 1)
  Body_SetCargoKey(node127, -1, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Directory", "MUSEUM")
  Node_AddSon(node7, node128)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum")
  Node_AddSon(node7, node129)
  Body_SetCS(node129, MAT_Vector3(955.7604, 4309.614, 176.9181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node129, 2)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "mu_museum_1")
  Node_AddSon(node7, node130)
  Body_SetCS(node130, MAT_Vector3(1972, 4132, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node130, "osd/atl/atl_museum.osd")
  Body_SetFriendOrFoeID(node130, 2)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "mu_bottom_hole_l_1")
  Node_AddSon(node7, node131)
  Body_SetCS(node131, MAT_Vector3(1458, 4309, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node131, "osd/atl/atl_bottom_hole_l.osd")
  Body_SetFriendOrFoeID(node131, 2)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "mu_bottom_03_1")
  Node_AddSon(node7, node132)
  Body_SetCS(node132, MAT_Vector3(1398, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node132, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node132, 2)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "mu_bottom_03_2")
  Node_AddSon(node7, node133)
  Body_SetCS(node133, MAT_Vector3(1398, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node133, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node133, 2)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "mu_bottom_03_3")
  Node_AddSon(node7, node134)
  Body_SetCS(node134, MAT_Vector3(1533, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node134, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node134, 2)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "mu_bottom_03_4")
  Node_AddSon(node7, node135)
  Body_SetCS(node135, MAT_Vector3(1533, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node135, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node135, 2)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "mu_bottom_03_5")
  Node_AddSon(node7, node136)
  Body_SetCS(node136, MAT_Vector3(1668, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node136, 2)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "mu_bottom_03_6")
  Node_AddSon(node7, node137)
  Body_SetCS(node137, MAT_Vector3(1668, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node137, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node137, 2)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "mu_bottom_03_7")
  Node_AddSon(node7, node138)
  Body_SetCS(node138, MAT_Vector3(1803, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node138, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node138, 2)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "mu_bottom_03_8")
  Node_AddSon(node7, node139)
  Body_SetCS(node139, MAT_Vector3(1803, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node139, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node139, 2)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "mu_bottom_hole_s")
  Node_AddSon(node7, node140)
  Body_SetCS(node140, MAT_Vector3(1928.228, 4135.668, 121), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node140, "osd/atl/atl_bottom_hole_s.osd")
  Body_SetFriendOrFoeID(node140, 2)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "mu_bottom_02_1")
  Node_AddSon(node7, node141)
  Body_SetCS(node141, MAT_Vector3(1928.485, 4245.53, 123), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node141, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node141, 2)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "mu_bottom_02_2")
  Node_AddSon(node7, node142)
  Body_SetCS(node142, MAT_Vector3(1929.075, 4026.198, 121.8822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node142, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node142, 2)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "mu_bottom_02_3")
  Node_AddSon(node7, node143)
  Body_SetCS(node143, MAT_Vector3(2030.921, 4075.403, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node143, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node143, 2)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "mu_bottom_02_4")
  Node_AddSon(node7, node144)
  Body_SetCS(node144, MAT_Vector3(2030.921, 4193.272, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node144, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node144, 2)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "mu_vbstueck_1")
  Node_AddSon(node7, node145)
  Body_SetCS(node145, MAT_Vector3(1466.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node145, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node145, 2)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "mu_vbstueck_2")
  Node_AddSon(node7, node146)
  Body_SetCS(node146, MAT_Vector3(1466.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node146, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node146, 2)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "mu_vbstueck_3")
  Node_AddSon(node7, node147)
  Body_SetCS(node147, MAT_Vector3(1601.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node147, 2)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "mu_vbstueck_4")
  Node_AddSon(node7, node148)
  Body_SetCS(node148, MAT_Vector3(1601.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node148, 2)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "mu_vbstueck_5")
  Node_AddSon(node7, node149)
  Body_SetCS(node149, MAT_Vector3(1736.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node149, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node149, 2)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "mu_vbstueck_6")
  Node_AddSon(node7, node150)
  Body_SetCS(node150, MAT_Vector3(1736.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node150, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node150, 2)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "mu_vbstueck_7")
  Node_AddSon(node7, node151)
  Body_SetCS(node151, MAT_Vector3(1871.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node151, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node151, 2)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "mu_vbstueck_8")
  Node_AddSon(node7, node152)
  Body_SetCS(node152, MAT_Vector3(1871.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node152, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node152, 2)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "mu_vbstueck_9")
  Node_AddSon(node7, node153)
  Body_SetCS(node153, MAT_Vector3(2032.223, 4134.9, 122.8673), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node153, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node153, 2)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_1")
  Node_AddSon(node7, node154)
  Body_SetCS(node154, MAT_Vector3(1592, 4131.806, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node154, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node154, 2)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_2")
  Node_AddSon(node7, node155)
  Body_SetCS(node155, MAT_Vector3(1592, 4251.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node155, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node155, 2)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_3")
  Node_AddSon(node7, node156)
  Body_SetCS(node156, MAT_Vector3(1592, 4016.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node156, 2)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "mu_bottom_wall_1")
  Node_AddSon(node7, node157)
  Body_SetCS(node157, MAT_Vector3(1509.381, 4312.657, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node157, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node157, 2)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "mu_bottom_wall_2")
  Node_AddSon(node7, node158)
  Body_SetCS(node158, MAT_Vector3(1401.111, 4311.915, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node158, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node158, 2)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "mu_bottom_wall_3")
  Node_AddSon(node7, node159)
  Body_SetCS(node159, MAT_Vector3(1456.097, 4391.631, 55), MAT_Vector3(-90.25387, -90, -90))
  Node_ParseIniFile(node159, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node159, 2)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "mu_bottom_wall_4")
  Node_AddSon(node7, node160)
  Body_SetCS(node160, MAT_Vector3(1371.976, 4197.441, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node160, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node160, 2)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "mu_bottom_wall_5")
  Node_AddSon(node7, node161)
  Body_SetCS(node161, MAT_Vector3(1371.575, 4084.121, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node161, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node161, 2)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "mu_bottom_wall_6")
  Node_AddSon(node7, node162)
  Body_SetCS(node162, MAT_Vector3(1454.907, 4000.797, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node162, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node162, 2)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "mu_bottom_wall_7")
  Node_AddSon(node7, node163)
  Body_SetCS(node163, MAT_Vector3(1569.604, 3999.995, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node163, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node163, 2)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "mu_bottom_wall_8")
  Node_AddSon(node7, node164)
  Body_SetCS(node164, MAT_Vector3(1683.499, 4020.848, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node164, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node164, 2)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "mu_bottom_wall_9")
  Node_AddSon(node7, node165)
  Body_SetCS(node165, MAT_Vector3(1797.795, 4002.802, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node165, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node165, 2)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "mu_bottom_wall_10")
  Node_AddSon(node7, node166)
  Body_SetCS(node166, MAT_Vector3(1912.904, 4004.493, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node166, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node166, 2)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "mu_bottom_wall_11")
  Node_AddSon(node7, node167)
  Body_SetCS(node167, MAT_Vector3(2028.767, 3999.448, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node167, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node167, 2)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "mu_bottom_wall_12")
  Node_AddSon(node7, node168)
  Body_SetCS(node168, MAT_Vector3(1966.095, 4269.196, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node168, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node168, 2)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "mu_bottom_wall_13")
  Node_AddSon(node7, node169)
  Body_SetCS(node169, MAT_Vector3(1850.819, 4267.238, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node169, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node169, 2)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "mu_bottom_wall_14")
  Node_AddSon(node7, node170)
  Body_SetCS(node170, MAT_Vector3(1736.103, 4269.476, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node170, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node170, 2)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "mu_bottom_wall_15")
  Node_AddSon(node7, node171)
  Body_SetCS(node171, MAT_Vector3(1621.387, 4271.155, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node171, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node171, 2)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "mu_bottom_wall_16")
  Node_AddSon(node7, node172)
  Body_SetCS(node172, MAT_Vector3(1564.48, 4253.911, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node172, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node172, 2)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "mu_bottom_wall_17")
  Node_AddSon(node7, node173)
  Body_SetCS(node173, MAT_Vector3(2042.59, 4194.329, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node173, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node173, 2)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "mu_bottom_wall_18")
  Node_AddSon(node7, node174)
  Body_SetCS(node174, MAT_Vector3(2043.989, 4080.179, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node174, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node174, 2)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "mu_scoop_1")
  Node_AddSon(node7, node175)
  Body_SetCS(node175, MAT_Vector3(1458.626, 4308.962, 120.2385), MAT_Vector3(-0.174314, 0, 0))
  Node_ParseIniFile(node175, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node175, 2)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_laserwall", "mu_laserwall_1")
  Node_AddSon(node7, node176)
  Body_SetCS(node176, MAT_Vector3(1920, 4132, 106.7221), MAT_Vector3(-90, 0, 0))
  LaserWall_SetWallExtensionX(node176, 50)
  LaserWall_SetWallExtensionZ(node176, 50)
  Node_ParseIniFile(node176, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Directory", "SHIPYARD")
  Node_AddSon(node7, node177)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "atl_shipyard_t1")
  Node_AddSon(node7, node178)
  Body_SetCS(node178, MAT_Vector3(4714.508405, 1395, 117), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node178, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node178, 1)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_generic", "atl_shipyard_t2")
  Node_AddSon(node7, node179)
  Body_SetCS(node179, MAT_Vector3(4014.507981, 1395, 117), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node179, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node179, 1)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_generic", "atl_dock1_4_3")
  Node_AddSon(node7, node180)
  Body_SetCS(node180, MAT_Vector3(4362, 1155.17014, 129.159646), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node180, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node180, 1)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_generic", "atl_dock1_4_4")
  Node_AddSon(node7, node181)
  Body_SetCS(node181, MAT_Vector3(4362, 1637.020419, 129.1596), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node181, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node181, 1)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node7, node182)
  Body_SetCS(node182, MAT_Vector3(4664.811054, 1155, 121.294373), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node182, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node182, 1)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_generic", "gen_vehiclestation_2")
  Node_AddSon(node7, node183)
  Body_SetCS(node183, MAT_Vector3(4662.449142, 1632, 121.2944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node183, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node183, 1)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_generic", "gen_vehiclestation_3")
  Node_AddSon(node7, node184)
  Body_SetCS(node184, MAT_Vector3(4058.275938, 1155, 121.2944), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node184, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node184, 1)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_generic", "gen_vehiclestation_4")
  Node_AddSon(node7, node185)
  Body_SetCS(node185, MAT_Vector3(4053.089512, 1632, 121.2944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node185, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node185, 1)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_generic", "gen_shelter_docking_3")
  Node_AddSon(node7, node186)
  Body_SetCS(node186, MAT_Vector3(4220.947917, 1277.185105, 111.080859), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node186, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node186, 1)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_generic", "gen_shelter_docking_4")
  Node_AddSon(node7, node187)
  Body_SetCS(node187, MAT_Vector3(4503.744354, 1518.12304, 111.0809), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node187, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node187, 1)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_generic", "ship_shelter_1")
  Node_AddSon(node7, node188)
  Body_SetCS(node188, MAT_Vector3(4163.854591, 998.464318, 139.478846), MAT_Vector3(-89.877592, 0, 0))
  Node_ParseIniFile(node188, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node188, 1)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_generic", "ship_shelter_2")
  Node_AddSon(node7, node189)
  Body_SetCS(node189, MAT_Vector3(4559.937548, 996.771376, 139.4788), MAT_Vector3(89.972737, 0, 0))
  Node_ParseIniFile(node189, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node189, 1)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_generic", "atl_wblock3b_01_1")
  Node_AddSon(node7, node190)
  Body_SetCS(node190, MAT_Vector3(4822.463639, 1738.969231, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node190, "osd/atl/atl_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node190, 1)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_generic", "atl_wblock3b_02_1")
  Node_AddSon(node7, node191)
  Body_SetCS(node191, MAT_Vector3(4827.595329, 1055.520197, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node191, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node191, 1)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_generic", "atl_wblock3b_03_1")
  Node_AddSon(node7, node192)
  Body_SetCS(node192, MAT_Vector3(3900.016983, 1055.52, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node192, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node192, 1)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_generic", "atl_wblock3b_02_2")
  Node_AddSon(node7, node193)
  Body_SetCS(node193, MAT_Vector3(3896.631662, 1742.74021, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node193, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node193, 1)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_generic", "gen_fin_1")
  Node_AddSon(node7, node194)
  Body_SetCS(node194, MAT_Vector3(4740.055658, 1745, 142.60261), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node194, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node194, 1)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_generic", "gen_fin_2")
  Node_AddSon(node7, node195)
  Body_SetCS(node195, MAT_Vector3(4749.503434, 1056, 142.6026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node195, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node195, 1)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_generic", "gen_fin_3")
  Node_AddSon(node7, node196)
  Body_SetCS(node196, MAT_Vector3(3974, 1745, 142.6026), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node196, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node196, 1)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_generic", "gen_fin_4")
  Node_AddSon(node7, node197)
  Body_SetCS(node197, MAT_Vector3(3974, 1056, 142.6026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node197, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node197, 1)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node7, node198)
  Body_SetCS(node198, MAT_Vector3(4080, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node198, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node198, 1)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node7, node199)
  Body_SetCS(node199, MAT_Vector3(4652, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node199, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node199, 1)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_generic", "gen_quay_3")
  Node_AddSon(node7, node200)
  Body_SetCS(node200, MAT_Vector3(4367, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node200, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node200, 1)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_generic", "gen_quay_4")
  Node_AddSon(node7, node201)
  Body_SetCS(node201, MAT_Vector3(3780, 1400, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node201, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node201, 1)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_generic", "gen_quay_5")
  Node_AddSon(node7, node202)
  Body_SetCS(node202, MAT_Vector3(3780, 1745, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node202, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node202, 1)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_generic", "gen_quay_6")
  Node_AddSon(node7, node203)
  Body_SetCS(node203, MAT_Vector3(3780, 1060, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node203, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node203, 1)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_generic", "ship_rohr_small03_1")
  Node_AddSon(node7, node204)
  Body_SetCS(node204, MAT_Vector3(4546.180578, 1574, 123.969859), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node204, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node204, 1)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_generic", "ship_rohr_small03_2")
  Node_AddSon(node7, node205)
  Body_SetCS(node205, MAT_Vector3(4183.49996, 1574, 123.9699), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node205, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node205, 1)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_generic", "ship_rohr_small03_3")
  Node_AddSon(node7, node206)
  Body_SetCS(node206, MAT_Vector3(4546.181, 1216, 123.9699), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node206, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node206, 1)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_generic", "ship_rohr_small03_4")
  Node_AddSon(node7, node207)
  Body_SetCS(node207, MAT_Vector3(4183.220205, 1216, 123.9699), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node207, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node207, 1)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_generic", "ship_rohr_small03_6")
  Node_AddSon(node7, node208)
  Body_SetCS(node208, MAT_Vector3(3891.503318, 2089.952901, 124.225401), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node208, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node208, 1)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_generic", "ship_rohr_small03_7")
  Node_AddSon(node7, node209)
  Body_SetCS(node209, MAT_Vector3(3891.253527, 1854.315187, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node209, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node209, 1)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_generic", "ship_rohr_small03_8")
  Node_AddSon(node7, node210)
  Body_SetCS(node210, MAT_Vector3(3905.772541, 2088.27423, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node210, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node210, 1)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_generic", "ship_rohr_small03_9")
  Node_AddSon(node7, node211)
  Body_SetCS(node211, MAT_Vector3(3905.803336, 1853.19582, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node211, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node211, 1)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_generic", "ship_rohr_small03_10")
  Node_AddSon(node7, node212)
  Body_SetCS(node212, MAT_Vector3(4248.124075, 1917.071001, 129.738865), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node212, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node212, 1)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_generic", "ship_rohr_small03_11")
  Node_AddSon(node7, node213)
  Body_SetCS(node213, MAT_Vector3(4510.290291, 1917.071, 129.7389), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node213, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node213, 1)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_generic", "ship_rohr_small03_12")
  Node_AddSon(node7, node214)
  Body_SetCS(node214, MAT_Vector3(3780.47573, 1560.43037, 129.7389), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node214, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node214, 1)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_generic", "ship_rohr_small03_13")
  Node_AddSon(node7, node215)
  Body_SetCS(node215, MAT_Vector3(3781.656929, 1215.598662, 129.7389), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node215, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node215, 1)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_generic", "ship_rohr_small03_14")
  Node_AddSon(node7, node216)
  Body_SetCS(node216, MAT_Vector3(4370.702894, 2165.181605, 106.660696), MAT_Vector3(-123.64702, 0, 0))
  Node_ParseIniFile(node216, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node216, 1)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_generic", "ship_rohr_small03_15")
  Node_AddSon(node7, node217)
  Body_SetCS(node217, MAT_Vector3(4338.542448, 2112.709521, 101.571348), MAT_Vector3(-98.292162, 0, 0))
  Node_ParseIniFile(node217, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node217, 1)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_generic", "ship_rohr_small02_1")
  Node_AddSon(node7, node218)
  Body_SetCS(node218, MAT_Vector3(4425.913635, 2177.871319, 113.692655), MAT_Vector3(40.547853, 0, 0))
  Node_ParseIniFile(node218, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node218, 0)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_generic", "ship_rohr_small02_2")
  Node_AddSon(node7, node219)
  Body_SetCS(node219, MAT_Vector3(4404.712252, 2040.580777, 113.6927), MAT_Vector3(125.495263, 0, 0))
  Node_ParseIniFile(node219, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node219, 0)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_generic", "ship_rohr_small02_3")
  Node_AddSon(node7, node220)
  Body_SetCS(node220, MAT_Vector3(4230.367957, 1994.879163, 113.6927), MAT_Vector3(89.768878, 0, 0))
  Node_ParseIniFile(node220, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node220, 0)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_generic", "ship_rohr_small02_4")
  Node_AddSon(node7, node221)
  Body_SetCS(node221, MAT_Vector3(4039.09735, 2011.805606, 117.085602), MAT_Vector3(-179.60493, 0, 0))
  Node_ParseIniFile(node221, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node221, 0)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_generic", "ship_rohr_small02_5")
  Node_AddSon(node7, node222)
  Body_SetCS(node222, MAT_Vector3(4135.578655, 2030.425267, 113.6927), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node222, 0)
  Body_SetNameKey(node222, -1)
  Body_SetCargoKey(node222, -1, 0)
  Body_SetCargoKey(node222, -1, 1)
  Body_SetCargoKey(node222, -1, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_generic", "ship_rohr_small02_6")
  Node_AddSon(node7, node223)
  Body_SetCS(node223, MAT_Vector3(4086.491842, 2033.810321, 107.755122), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node223, 0)
  Body_SetNameKey(node223, -1)
  Body_SetCargoKey(node223, -1, 0)
  Body_SetCargoKey(node223, -1, 1)
  Body_SetCargoKey(node223, -1, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_generic", "ship_rohr_small02_7")
  Node_AddSon(node7, node224)
  Body_SetCS(node224, MAT_Vector3(3651.625453, 1926.872224, 113.268565), MAT_Vector3(-134.910811, 0, 0))
  Node_ParseIniFile(node224, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node224, 0)
  Body_SetNameKey(node224, -1)
  Body_SetCargoKey(node224, -1, 0)
  Body_SetCargoKey(node224, -1, 1)
  Body_SetCargoKey(node224, -1, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_generic", "ship_rohr_small02_8")
  Node_AddSon(node7, node225)
  Body_SetCS(node225, MAT_Vector3(3598.483184, 1806.417218, 113.2686), MAT_Vector3(-91.267317, 0, 0))
  Node_ParseIniFile(node225, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node225, 0)
  Body_SetNameKey(node225, -1)
  Body_SetCargoKey(node225, -1, 0)
  Body_SetCargoKey(node225, -1, 1)
  Body_SetCargoKey(node225, -1, 2)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_generic", "ship_rohr_small02_9")
  Node_AddSon(node7, node226)
  Body_SetCS(node226, MAT_Vector3(3687.052693, 1556.060001, 113.2686), MAT_Vector3(-128.16026, 0, 0))
  Node_ParseIniFile(node226, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node226, 0)
  Body_SetNameKey(node226, -1)
  Body_SetCargoKey(node226, -1, 0)
  Body_SetCargoKey(node226, -1, 1)
  Body_SetCargoKey(node226, -1, 2)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_generic", "ship_rohr_small02_10")
  Node_AddSon(node7, node227)
  Body_SetCS(node227, MAT_Vector3(3662.253486, 1524.174911, 113.2686), MAT_Vector3(-128.1603, 0, 0))
  Node_ParseIniFile(node227, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node227, 0)
  Body_SetNameKey(node227, -1)
  Body_SetCargoKey(node227, -1, 0)
  Body_SetCargoKey(node227, -1, 1)
  Body_SetCargoKey(node227, -1, 2)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_generic", "ship_rohr_small01_1")
  Node_AddSon(node7, node228)
  Body_SetCS(node228, MAT_Vector3(4016.015228, 1199.338745, 127.129695), MAT_Vector3(-134.967975, 0, 0))
  Node_ParseIniFile(node228, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node228, 1)
  Body_SetNameKey(node228, -1)
  Body_SetCargoKey(node228, -1, 0)
  Body_SetCargoKey(node228, -1, 1)
  Body_SetCargoKey(node228, -1, 2)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_generic", "ship_rohr_small01_2")
  Node_AddSon(node7, node229)
  Body_SetCS(node229, MAT_Vector3(4008.894418, 1583.654475, 127.1297), MAT_Vector3(-43.679705, 0, 0))
  Node_ParseIniFile(node229, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node229, 1)
  Body_SetNameKey(node229, -1)
  Body_SetCargoKey(node229, -1, 0)
  Body_SetCargoKey(node229, -1, 1)
  Body_SetCargoKey(node229, -1, 2)
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_generic", "ship_rohr_small01_3")
  Node_AddSon(node7, node230)
  Body_SetCS(node230, MAT_Vector3(4691.506525, 1599.674012, 127.1297), MAT_Vector3(-134.968, 0, 0))
  Node_ParseIniFile(node230, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node230, 1)
  Body_SetNameKey(node230, -1)
  Body_SetCargoKey(node230, -1, 0)
  Body_SetCargoKey(node230, -1, 1)
  Body_SetCargoKey(node230, -1, 2)
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("nod_generic", "ship_rohr_small01_4")
  Node_AddSon(node7, node231)
  Body_SetCS(node231, MAT_Vector3(4698.556676, 1192.766422, 127.1297), MAT_Vector3(-43.6797, 0, 0))
  Node_ParseIniFile(node231, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node231, 1)
  Body_SetNameKey(node231, -1)
  Body_SetCargoKey(node231, -1, 0)
  Body_SetCargoKey(node231, -1, 1)
  Body_SetCargoKey(node231, -1, 2)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_generic", "ship_rohr_small01_9")
  Node_AddSon(node7, node232)
  Body_SetCS(node232, MAT_Vector3(4798.8115, 1204.31793, 127.1297), MAT_Vector3(46.391617, 0, 0))
  Node_ParseIniFile(node232, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node232, 1)
  Body_SetNameKey(node232, -1)
  Body_SetCargoKey(node232, -1, 0)
  Body_SetCargoKey(node232, -1, 1)
  Body_SetCargoKey(node232, -1, 2)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_generic", "ship_rohr_small01_10")
  Node_AddSon(node7, node233)
  Body_SetCS(node233, MAT_Vector3(4797.599427, 1591.264677, 127.1297), MAT_Vector3(-37.60551, 0, 0))
  Node_ParseIniFile(node233, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node233, 1)
  Body_SetNameKey(node233, -1)
  Body_SetCargoKey(node233, -1, 0)
  Body_SetCargoKey(node233, -1, 1)
  Body_SetCargoKey(node233, -1, 2)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_generic", "ship_rohr_small01_11")
  Node_AddSon(node7, node234)
  Body_SetCS(node234, MAT_Vector3(4809.122147, 1055.480991, 136.340506), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node234, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node234, 1)
  Body_SetNameKey(node234, -1)
  Body_SetCargoKey(node234, -1, 0)
  Body_SetCargoKey(node234, -1, 1)
  Body_SetCargoKey(node234, -1, 2)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_generic", "ship_rohr_small01_12")
  Node_AddSon(node7, node235)
  Body_SetCS(node235, MAT_Vector3(4797.171335, 1744.786384, 136.3405), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node235, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node235, 1)
  Body_SetNameKey(node235, -1)
  Body_SetCargoKey(node235, -1, 0)
  Body_SetCargoKey(node235, -1, 1)
  Body_SetCargoKey(node235, -1, 2)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_generic", "ship_rohr_small01_13")
  Node_AddSon(node7, node236)
  Body_SetCS(node236, MAT_Vector3(3914.886584, 1745.198737, 136.3405), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node236, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node236, 1)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_generic", "ship_rohr_small01_14")
  Node_AddSon(node7, node237)
  Body_SetCS(node237, MAT_Vector3(3915.455828, 1056.128221, 136.3405), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node237, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node237, 1)
  Body_SetNameKey(node237, -1)
  Body_SetCargoKey(node237, -1, 0)
  Body_SetCargoKey(node237, -1, 1)
  Body_SetCargoKey(node237, -1, 2)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_generic", "ship_rohr_small01_15")
  Node_AddSon(node7, node238)
  Body_SetCS(node238, MAT_Vector3(3923.695064, 1201.135522, 126.692385), MAT_Vector3(136.62177, 0, 0))
  Node_ParseIniFile(node238, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node238, 1)
  Body_SetNameKey(node238, -1)
  Body_SetCargoKey(node238, -1, 0)
  Body_SetCargoKey(node238, -1, 1)
  Body_SetCargoKey(node238, -1, 2)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_generic", "ship_rohr_small01_16")
  Node_AddSon(node7, node239)
  Body_SetCS(node239, MAT_Vector3(3920.399375, 1595.787153, 126.6924), MAT_Vector3(37.794977, 0, 0))
  Node_ParseIniFile(node239, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node239, 1)
  Body_SetNameKey(node239, -1)
  Body_SetCargoKey(node239, -1, 0)
  Body_SetCargoKey(node239, -1, 1)
  Body_SetCargoKey(node239, -1, 2)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_generic", "ship_gangway03_1")
  Node_AddSon(node7, node240)
  Body_SetCS(node240, MAT_Vector3(4181.629465, 1215.936123, 151.822944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node240, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node240, 1)
  Body_SetNameKey(node240, -1)
  Body_SetCargoKey(node240, -1, 0)
  Body_SetCargoKey(node240, -1, 1)
  Body_SetCargoKey(node240, -1, 2)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_generic", "ship_gangway03_2")
  Node_AddSon(node7, node241)
  Body_SetCS(node241, MAT_Vector3(4181.629, 1215.936, 174.327792), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node241, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node241, 1)
  Body_SetNameKey(node241, -1)
  Body_SetCargoKey(node241, -1, 0)
  Body_SetCargoKey(node241, -1, 1)
  Body_SetCargoKey(node241, -1, 2)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_generic", "ship_gangway03_3")
  Node_AddSon(node7, node242)
  Body_SetCS(node242, MAT_Vector3(4181.629, 1574.936, 151.8229), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node242, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node242, 1)
  Body_SetNameKey(node242, -1)
  Body_SetCargoKey(node242, -1, 0)
  Body_SetCargoKey(node242, -1, 1)
  Body_SetCargoKey(node242, -1, 2)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_generic", "ship_gangway03_4")
  Node_AddSon(node7, node243)
  Body_SetCS(node243, MAT_Vector3(4181.629, 1574.936, 174.3278), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node243, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node243, 1)
  Body_SetNameKey(node243, -1)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_generic", "ship_gangway03_5")
  Node_AddSon(node7, node244)
  Body_SetCS(node244, MAT_Vector3(4549.629, 1215.936, 151.8229), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node244, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node244, 1)
  Body_SetNameKey(node244, -1)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_generic", "ship_gangway03_6")
  Node_AddSon(node7, node245)
  Body_SetCS(node245, MAT_Vector3(4549.629, 1215.936, 174.3278), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node245, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node245, 1)
  Body_SetNameKey(node245, -1)
  Body_SetCargoKey(node245, -1, 0)
  Body_SetCargoKey(node245, -1, 1)
  Body_SetCargoKey(node245, -1, 2)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_generic", "ship_gangway03_7")
  Node_AddSon(node7, node246)
  Body_SetCS(node246, MAT_Vector3(4549.629, 1574.936, 151.8229), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node246, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node246, 1)
  Body_SetNameKey(node246, -1)
  Body_SetCargoKey(node246, -1, 0)
  Body_SetCargoKey(node246, -1, 1)
  Body_SetCargoKey(node246, -1, 2)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_generic", "ship_gangway03_8")
  Node_AddSon(node7, node247)
  Body_SetCS(node247, MAT_Vector3(4549.629, 1574.936, 174.3278), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node247, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node247, 1)
  Body_SetNameKey(node247, -1)
  Body_SetCargoKey(node247, -1, 0)
  Body_SetCargoKey(node247, -1, 1)
  Body_SetCargoKey(node247, -1, 2)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_generic", "ship_hetank_des_1")
  Node_AddSon(node7, node248)
  Body_SetCS(node248, MAT_Vector3(4156.629378, 1315.741304, 124.747408), MAT_Vector3(-22.050439, 0, 0))
  Node_ParseIniFile(node248, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node248, 1)
  Body_SetNameKey(node248, -1)
  Body_SetCargoKey(node248, -1, 0)
  Body_SetCargoKey(node248, -1, 1)
  Body_SetCargoKey(node248, -1, 2)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_generic", "ship_hetank_des_2")
  Node_AddSon(node7, node249)
  Body_SetCS(node249, MAT_Vector3(4156.147334, 1258.318764, 124.7474), MAT_Vector3(70.572365, 0, 0))
  Node_ParseIniFile(node249, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node249, 1)
  Body_SetNameKey(node249, -1)
  Body_SetCargoKey(node249, -1, 0)
  Body_SetCargoKey(node249, -1, 1)
  Body_SetCargoKey(node249, -1, 2)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_generic", "ship_hetank_des_3")
  Node_AddSon(node7, node250)
  Body_SetCS(node250, MAT_Vector3(4570.653163, 1542.922947, 124.7474), MAT_Vector3(70.57237, 0, 0))
  Node_ParseIniFile(node250, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node250, 1)
  Body_SetNameKey(node250, -1)
  Body_SetCargoKey(node250, -1, 0)
  Body_SetCargoKey(node250, -1, 1)
  Body_SetCargoKey(node250, -1, 2)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_generic", "ship_hetank_des_4")
  Node_AddSon(node7, node251)
  Body_SetCS(node251, MAT_Vector3(4572.61382, 1486.195722, 124.7474), MAT_Vector3(121.559453, 0, 0))
  Node_ParseIniFile(node251, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node251, 1)
  Body_SetNameKey(node251, -1)
  Body_SetCargoKey(node251, -1, 0)
  Body_SetCargoKey(node251, -1, 1)
  Body_SetCargoKey(node251, -1, 2)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node7, node252)
  Node_ParseIniFile(node252, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node252, "map/5H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node7, node253)
  Node_ParseIniFile(node253, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node253, "map/5H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node7, node254)
  Node_ParseIniFile(node254, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node254, "map/5H1/Terrain/org_seetang.tga")
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node255)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node255, node256)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node255, node257)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("NOD_PatrolArea", "NeopolisTraffic_Area")
  Node_AddSon(node257, node258)
  PatrolArea_SetPosition(node258, MAT_Vector3(2301.450416, 3485.739169, 400))
  PatrolArea_SetRadius(node258, 1400)
  PatrolArea_SetMinZ(node258, -60)
  PatrolArea_SetMaxZ(node258, 25)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("NOD_PatrolArea", "dmNeopolis_South_Area")
  Node_AddSon(node257, node259)
  PatrolArea_SetPosition(node259, MAT_Vector3(1105.234867, 2941.952278, 252.665984))
  PatrolArea_SetRadius(node259, 150)
  PatrolArea_SetMinZ(node259, 0)
  PatrolArea_SetMaxZ(node259, 75)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("NOD_Path", "dmNeopolis_South_DockPath")
  Node_AddSon(node257, node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node260, node261)
  Position_SetPosition(node261, MAT_Vector3(1104, 2745.409483, 313))
  Position_SetRadius(node261, 5)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node260, node262)
  Position_SetPosition(node262, MAT_Vector3(1104, 2675, 313))
  Position_SetRadius(node262, 5)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("NOD_Path", "dmNeopolis_South_ApproachPath")
  Node_AddSon(node257, node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node263, node264)
  Position_SetPosition(node264, MAT_Vector3(1103.44041, 2777.305621, 313))
  Position_SetRadius(node264, 5)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node263, node265)
  Position_SetPosition(node265, MAT_Vector3(1103.720205, 2841.373281, 313))
  Position_SetRadius(node265, 5)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("NOD_PatrolArea", "RedbeardArea")
  Node_AddSon(node257, node266)
  PatrolArea_SetPosition(node266, MAT_Vector3(288.545179, 730.367449, 219.290794))
  PatrolArea_SetRadius(node266, 300)
  PatrolArea_SetMinZ(node266, -100)
  PatrolArea_SetMaxZ(node266, 180)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("NOD_PatrolArea", "RedbeardFollowArea")
  Node_AddSon(node257, node267)
  PatrolArea_SetPosition(node267, MAT_Vector3(288.5452, 730.3674, 219.039491))
  PatrolArea_SetRadius(node267, 512)
  PatrolArea_SetMinZ(node267, -100)
  PatrolArea_SetMaxZ(node267, 180)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("NOD_Path", "TransporterPath_1")
  Node_AddSon(node257, node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node268, node269)
  Position_SetPosition(node269, MAT_Vector3(365.73487, 1932.377432, 263.329155))
  Position_SetRadius(node269, 5)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node268, node270)
  Position_SetPosition(node270, MAT_Vector3(341.726244, 3701.67599, 264.448736))
  Position_SetRadius(node270, 5)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node268, node271)
  Position_SetPosition(node271, MAT_Vector3(436.565945, 4829.718424, 273.467))
  Position_SetRadius(node271, 5)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node268, node272)
  Position_SetPosition(node272, MAT_Vector3(835.188898, 5362.898055, 264.024121))
  Position_SetRadius(node272, 5)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node255, node273)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node255, node274)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node255, node275)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node275, node276)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_vessel", "trc_avenger_p1")
  Node_AddSon(node276, node277)
  Body_SetCS(node277, MAT_Vector3(1097.722, 1893.525, 350), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node277, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node277, 0)
  Body_SetNameKey(node277, -1)
  Body_SetCargoKey(node277, -1, 0)
  Body_SetCargoKey(node277, -1, 1)
  Body_SetCargoKey(node277, -1, 2)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_vessel", "trc_police_p1")
  Node_AddSon(node276, node278)
  Body_SetCS(node278, MAT_Vector3(923.1009, 3173.487, 223.4119), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node278, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node278, 0)
  Body_SetNameKey(node278, -1)
  Body_SetCargoKey(node278, -1, 0)
  Body_SetCargoKey(node278, -1, 1)
  Body_SetCargoKey(node278, -1, 2)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p1")
  Node_AddSon(node276, node279)
  Body_SetCS(node279, MAT_Vector3(2163.426, 3133.485, 350), MAT_Vector3(-83.52366, 0, 0))
  Node_ParseIniFile(node279, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node279, 0)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_vessel", "trc_toiler_p1")
  Node_AddSon(node276, node280)
  Body_SetCS(node280, MAT_Vector3(1363.144, 2953.196, 450.24), MAT_Vector3(42.92338, 0, 0))
  Node_ParseIniFile(node280, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node280, 0)
  Body_SetNameKey(node280, -1)
  Body_SetCargoKey(node280, -1, 0)
  Body_SetCargoKey(node280, -1, 1)
  Body_SetCargoKey(node280, -1, 2)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_vessel", "trc_skipjack_p1")
  Node_AddSon(node276, node281)
  Body_SetCS(node281, MAT_Vector3(2313.169, 4002.909, 550.411), MAT_Vector3(-107.4887, 0, 0))
  Node_ParseIniFile(node281, "osd/gen/gen_skipjack.osd")
  Body_SetFriendOrFoeID(node281, 0)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_vessel", "trc_avenger_p2")
  Node_AddSon(node276, node282)
  Body_SetCS(node282, MAT_Vector3(1447.722, 2293.525, 400), MAT_Vector3(-139.3504, 0, 0))
  Node_ParseIniFile(node282, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node282, 0)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_vessel", "trc_police_p2")
  Node_AddSon(node276, node283)
  Body_SetCS(node283, MAT_Vector3(1273.101, 3573.487, 273.4119), MAT_Vector3(-108.3242, 0, 0))
  Node_ParseIniFile(node283, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node283, 0)
  Body_SetNameKey(node283, -1)
  Body_SetCargoKey(node283, -1, 0)
  Body_SetCargoKey(node283, -1, 1)
  Body_SetCargoKey(node283, -1, 2)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p2")
  Node_AddSon(node276, node284)
  Body_SetCS(node284, MAT_Vector3(2513.426, 3533.485, 400), MAT_Vector3(67.60977, 0, 0))
  Node_ParseIniFile(node284, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node284, 0)
  Body_SetNameKey(node284, -1)
  Body_SetCargoKey(node284, -1, 0)
  Body_SetCargoKey(node284, -1, 1)
  Body_SetCargoKey(node284, -1, 2)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_vessel", "trc_toiler_p2")
  Node_AddSon(node276, node285)
  Body_SetCS(node285, MAT_Vector3(1713.144, 3353.196, 500.24), MAT_Vector3(134.5185, 0, 0))
  Node_ParseIniFile(node285, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node285, 0)
  Body_SetNameKey(node285, -1)
  Body_SetCargoKey(node285, -1, 0)
  Body_SetCargoKey(node285, -1, 1)
  Body_SetCargoKey(node285, -1, 2)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node275, node286)
  Body_SetCS(node286, MAT_Vector3(803.902489, 1108.063832, 161.81709), MAT_Vector3(131.292387, 0, 0))
  Node_ParseIniFile(node286, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node286, 3)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_vessel", "pir_sho_redbeard_wide_1")
  Node_AddSon(node275, node287)
  Body_SetCS(node287, MAT_Vector3(229.747863, 700.544178, 247.837416), MAT_Vector3(-47.621316, 0, 0))
  Node_ParseIniFile(node287, "osd/pir_sho/pir_sho_redbeard_wide.osd")
  Body_SetFriendOrFoeID(node287, 5)
  Body_SetNameKey(node287, -1)
  Body_SetCargoKey(node287, -1, 0)
  Body_SetCargoKey(node287, -1, 1)
  Body_SetCargoKey(node287, -1, 2)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_1")
  Node_AddSon(node275, node288)
  Body_SetCS(node288, MAT_Vector3(717.001089, 727.954467, 289.26447), MAT_Vector3(69.27261, 0, 0))
  Node_ParseIniFile(node288, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node288, 5)
  Body_SetNameKey(node288, -1)
  Body_SetCargoKey(node288, -1, 0)
  Body_SetCargoKey(node288, -1, 1)
  Body_SetCargoKey(node288, -1, 2)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_2")
  Node_AddSon(node275, node289)
  Body_SetCS(node289, MAT_Vector3(599.311091, 902.177043, 289.26447), MAT_Vector3(78.733341, 0, 0))
  Node_ParseIniFile(node289, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node289, 5)
  Body_SetNameKey(node289, -1)
  Body_SetCargoKey(node289, -1, 0)
  Body_SetCargoKey(node289, -1, 1)
  Body_SetCargoKey(node289, -1, 2)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_vessel", "pir_sho_scout_wide_3")
  Node_AddSon(node275, node290)
  Body_SetCS(node290, MAT_Vector3(414.472276, 1099.775657, 289.26447), MAT_Vector3(174.34103, 0, 0))
  Node_ParseIniFile(node290, "osd/pir_sho/pir_sho_scout_wide.osd")
  Body_SetFriendOrFoeID(node290, 5)
  Body_SetNameKey(node290, -1)
  Body_SetCargoKey(node290, -1, 0)
  Body_SetCargoKey(node290, -1, 1)
  Body_SetCargoKey(node290, -1, 2)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_waypoint", "nav_attack_1")
  Node_AddSon(node275, node291)
  Body_SetPosition(node291, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node291, 300)
  Node_ParseIniFile(node291, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_vessel", "gen_transporter_1")
  Node_AddSon(node275, node292)
  Body_SetCS(node292, MAT_Vector3(367.072124, 1713.907159, 265.068886), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node292, "osd/gen/gen_transporter.osd")
  Body_SetFriendOrFoeID(node292, 0)
  Body_SetNameKey(node292, -1)
  Body_SetCargoKey(node292, 1118, 0)
  Body_SetCargoKey(node292, -1, 1)
  Body_SetCargoKey(node292, -1, 2)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node293)
  Camera_SetBackPlane(node293, 512)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node294)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node294, node295)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node294, node296)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node296, node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node297, node298)
  Position_SetPosition(node298, MAT_Vector3(2029.894511, 2290.054289, 203))
  Position_SetRadius(node298, 5)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node297, node299)
  Position_SetPosition(node299, MAT_Vector3(2021.250212, 2107.062001, 203))
  Position_SetRadius(node299, 5)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node297, node300)
  Position_SetPosition(node300, MAT_Vector3(1844.419026, 2006.716183, 205.951644))
  Position_SetRadius(node300, 5)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node297, node301)
  Position_SetPosition(node301, MAT_Vector3(1823.541041, 1840.946176, 211.549386))
  Position_SetRadius(node301, 5)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node296, node302)
  Position_SetPosition(node302, MAT_Vector3(1066.392694, 2747.588764, 319.019566))
  Position_SetRadius(node302, 5)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node296, node303)
  Position_SetPosition(node303, MAT_Vector3(0, 0, 0))
  Position_SetRadius(node303, 5)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node296, node304)
  Position_SetPosition(node304, MAT_Vector3(0, 0, 0))
  Position_SetRadius(node304, 5)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node296, node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node305, node306)
  Position_SetPosition(node306, MAT_Vector3(1662.840379, 1488.608383, 204.644259))
  Position_SetRadius(node306, 5)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node305, node307)
  Position_SetPosition(node307, MAT_Vector3(1549.870602, 1405.611444, 205.183384))
  Position_SetRadius(node307, 5)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("NOD_Path", "PlayerPath_1")
  Node_AddSon(node296, node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node308, node309)
  Position_SetPosition(node309, MAT_Vector3(1104, 2675, 313))
  Position_SetRadius(node309, 5)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node308, node310)
  Position_SetPosition(node310, MAT_Vector3(1102.60795, 2808.443478, 313))
  Position_SetRadius(node310, 5)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node308, node311)
  Position_SetPosition(node311, MAT_Vector3(974.279576, 2803.361123, 313))
  Position_SetRadius(node311, 5)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node294, node312)
  Node_EnterSimulation(node312)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node312, node313)
  Node_EnterSimulation(node313)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Director", "Intro_2")
  Node_AddSon(node312, node314)
  Node_EnterSimulation(node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node294, node315)
  Node_EnterSimulation(node315)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node294, node316)
  Node_EnterSimulation(node316)
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (o11417.Value ~= True) then
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
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5320, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5320, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5320, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5320, "Code4")
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

end }
S_o7437 = { [nil] = {}, Start = function(L0)

end }
S_o7483 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  CallFunction(o7483, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7483, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7483, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
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
S_o10797 = { [nil] = {}, Start = function(L0)

end }
S_o10843 = { [nil] = {}, Start = function(L0)

end }
o10889 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dmNeopolis_South_ApproachPath", "/Scenario_Dynamic/Navigation/dmNeopolis_South_DockPath", "/Scenario_Dynamic/Navigation/dmNeopolis_South_Area")
S_o10890 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10890, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10890, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10890, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o10890, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o10890, "Code5")
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
S_o10946 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o10946, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o10946, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o10946, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o10946, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o10946, "Code5")
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
S_o11002 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11002, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11002, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11002, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11002, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11002, "Code5")
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
S_o11058 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11058, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11058, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11058, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11058, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11058, "Code5")
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
S_o11114 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11114, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11114, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11114, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11114, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11114, "Code5")
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
S_o11170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11170, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11170, "Code5")
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
S_o11226 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11226, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11226, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11226, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11226, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11226, "Code5")
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
S_o11282 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11282, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11282, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11282, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11282, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11282, "Code5")
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
S_o11338 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11338, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11338, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11338, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o11338, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o11338, "Code5")
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
S_o11394 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasmagatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_generator2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_maneater", 3)
  Body_AddItem(L0.Node, "torpedo_bigbang1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  Body_AddItem(L0.Node, "ammo_rocket", 9999)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  CallFunction(o11394, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_KineticShield50 = function(L0, L1)
  o11404.SetStateValue(L1)
end, SetStateValue_KineticShield10 = function(L0, L1)
  o11406.SetStateValue(L1)
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
o11404 = { [nil] = {}, Start = function()
  o11404["Value"] = False
  o11409.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11404.Value == L0) then
    o11404["Value"] = L0
    o11409.ReCalculate()
  end
end }
o11406 = { [nil] = {}, Start = function()
  o11406["Value"] = False
  o11412.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11406.Value == L0) then
    o11406["Value"] = L0
    o11412.ReCalculate()
  end
end }
o11408 = { [nil] = {}, GetCalculated = function()
  if not (o11673.Value == True) then
    if not (o11449.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o11408.SetStateValue(o11408.GetCalculated())
end, StartCalculate = function()
  o11408["Value"] = o11408.GetCalculated()
  o11448.StartCalculate()
  o11504.StartCalculate()
  o11560.StartCalculate()
  o11616.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11394.Node, o11394.Node, 440)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o11408.Value == L0) then
    o11408["Value"] = L0
    o11448.ReCalculate()
    o11504.ReCalculate()
    o11560.ReCalculate()
    o11616.ReCalculate()
    if not (L0 ~= 1) then
      o11408.ChangeTo1()
    end
  end
end }
o11409 = { [nil] = {}, GetCalculated = function()
  if not (o11404.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11409.SetStateValue(o11409.GetCalculated())
end, StartCalculate = function()
  o11409["Value"] = o11409.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11394.Node, o11394.Node, 446)
end, SetStateValue = function(L0)
  if not (o11409.Value == L0) then
    o11409["Value"] = L0
    if not (L0 ~= 1) then
      o11409.ChangeTo1()
    end
  end
end }
o11410 = { [nil] = {}, GetCalculated = function()
  if not (o11457.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11410.SetStateValue(o11410.GetCalculated())
end, StartCalculate = function()
  o11410["Value"] = o11410.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11394.Node, o11394.Node, 443)
end, SetStateValue = function(L0)
  if not (o11410.Value == L0) then
    o11410["Value"] = L0
    if not (L0 ~= 1) then
      o11410.ChangeTo1()
    end
  end
end }
o11411 = { [nil] = {}, GetCalculated = function()
  if not (o11451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11411.SetStateValue(o11411.GetCalculated())
end, StartCalculate = function()
  o11411["Value"] = o11411.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11394.Node, o11394.Node, 444)
end, SetStateValue = function(L0)
  if not (o11411.Value == L0) then
    o11411["Value"] = L0
    if not (L0 ~= 1) then
      o11411.ChangeTo1()
    end
  end
end }
o11412 = { [nil] = {}, GetCalculated = function()
  if not (o11406.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11412.SetStateValue(o11412.GetCalculated())
end, StartCalculate = function()
  o11412["Value"] = o11412.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o11394.Node, o11394.Node, 448)
end, SetStateValue = function(L0)
  if not (o11412.Value == L0) then
    o11412["Value"] = L0
    if not (L0 ~= 1) then
      o11412.ChangeTo1()
    end
  end
end }
o11413 = { [nil] = {}, GetCalculated = function()
  if not (o11451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11413.SetStateValue(o11413.GetCalculated())
end, StartCalculate = function()
  o11413["Value"] = o11413.GetCalculated()
  o11417.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o11413.Value == L0) then
    DelayedFunction(3, o11413, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11413.Value == L0) then
    o11413["Value"] = L0
    o11417.ReCalculate()
    if not (L0 ~= 1) then
      o11413.ChangeTo1()
    end
  end
end }
o11414 = { [nil] = {}, GetCalculated = function()
  if not (o11507.Value ~= True) then
    if not (o11563.Value ~= True) then
      if not (o11619.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o11414.SetStateValue(o11414.GetCalculated())
end, StartCalculate = function()
  o11414["Value"] = o11414.GetCalculated()
  o11425.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11414.Value == L0) then
    DelayedFunction(1, o11414, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o11414.Value == L0) then
    o11414["Value"] = L0
    o11425.ReCalculate()
  end
end }
o11415 = { [nil] = {}, GetCalculated = function()
  if not (o11688.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11415.SetStateValue(o11415.GetCalculated())
end, StartCalculate = function()
  o11415["Value"] = o11415.GetCalculated()
  o11426.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11415.Value == L0) then
    o11415["Value"] = L0
    o11426.ReCalculate()
  end
end }
o11416 = { [nil] = {}, GetCalculated = function()
  if not (o11680.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11416.SetStateValue(o11416.GetCalculated())
end, StartCalculate = function()
  o11416["Value"] = o11416.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveFailed(GetGameNode(), 2, 0, 0)
end, SetStateValue = function(L0)
  if not (o11416.Value == L0) then
    o11416["Value"] = L0
    if not (L0 ~= 1) then
      o11416.ChangeTo1()
    end
  end
end }
o11417 = { [nil] = {}, GetCalculated = function()
  if not (o11413.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11417.SetStateValue(o11417.GetCalculated())
end, StartCalculate = function()
  o11417["Value"] = o11417.GetCalculated()
  o2.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(0, -1, -1)
end, SetStateValue = function(L0)
  if not (o11417.Value == L0) then
    o11417["Value"] = L0
    o2.ReCalculate()
    if not (L0 ~= 1) then
      o11417.ChangeTo1()
    end
  end
end }
o11425 = { [nil] = {}, GetCalculated = function()
  if not (o11414.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11425.SetStateValue(o11425.GetCalculated())
end, StartCalculate = function()
  o11425["Value"] = o11425.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 1, 2002, 2101)
end, SetStateValue = function(L0)
  if not (o11425.Value == L0) then
    o11425["Value"] = L0
    if not (L0 ~= 1) then
      o11425.ChangeTo1()
    end
  end
end }
o11426 = { [nil] = {}, GetCalculated = function()
  if not (o11415.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11426.SetStateValue(o11426.GetCalculated())
end, StartCalculate = function()
  o11426["Value"] = o11426.GetCalculated()
end, ChangeTo1 = function()
  Game_BonusObjectiveReached(GetGameNode(), 2, 2002, 2102)
end, SetStateValue = function(L0)
  if not (o11426.Value == L0) then
    o11426["Value"] = L0
    if not (L0 ~= 1) then
      o11426.ChangeTo1()
    end
  end
end }
S_o11445 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11445, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11445, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11445, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o11445, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11445, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardFollowArea", "player1", "", "", "", 1, "Code6")
  else
    CallFunction(o11445, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o11449.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o11451.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o11457.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o11448.Value ~= True) then
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
o11448 = { [nil] = {}, GetCalculated = function()
  if not (o11408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11448.SetStateValue(o11448.GetCalculated())
end, StartCalculate = function()
  o11448["Value"] = o11448.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11448.Value == L0) then
    o11448["Value"] = L0
    CallFunction(o11445, "ProcesseStateChange")
  end
end }
o11449 = { [nil] = {}, Start = function()
  o11449["Value"] = False
  o11408.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11449.Value == L0) then
    o11449["Value"] = L0
    o11408.ReCalculate()
  end
end }
o11451 = { [nil] = {}, Start = function()
  o11451["Value"] = False
  o11411.StartCalculate()
  o11413.StartCalculate()
  o11503.StartCalculate()
  o11559.StartCalculate()
  o11615.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11451.Value == L0) then
    o11451["Value"] = L0
    o11411.ReCalculate()
    o11413.ReCalculate()
    o11503.ReCalculate()
    o11559.ReCalculate()
    o11615.ReCalculate()
  end
end }
o11457 = { [nil] = {}, Start = function()
  o11457["Value"] = False
  o11410.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11457.Value == L0) then
    o11457["Value"] = L0
    o11410.ReCalculate()
  end
end }
S_o11502 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11502, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11502, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o11502, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardFollowArea", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o11502, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o11502, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o11507.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11504.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o11503.Value ~= True) then
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
o11503 = { [nil] = {}, GetCalculated = function()
  if not (o11451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11503.SetStateValue(o11503.GetCalculated())
end, StartCalculate = function()
  o11503["Value"] = o11503.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11503.Value == L0) then
    o11503["Value"] = L0
    CallFunction(o11502, "ProcesseStateChange")
  end
end }
o11504 = { [nil] = {}, GetCalculated = function()
  if not (o11408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11504.SetStateValue(o11504.GetCalculated())
end, StartCalculate = function()
  o11504["Value"] = o11504.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11504.Value == L0) then
    o11504["Value"] = L0
    CallFunction(o11502, "ProcesseStateChange")
  end
end }
o11507 = { [nil] = {}, Start = function()
  o11507["Value"] = False
  o11414.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11507.Value == L0) then
    o11507["Value"] = L0
    o11414.ReCalculate()
  end
end }
S_o11558 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11558, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11558, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o11558, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardFollowArea", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o11558, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o11558, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o11563.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11560.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o11559.Value ~= True) then
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
o11559 = { [nil] = {}, GetCalculated = function()
  if not (o11451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11559.SetStateValue(o11559.GetCalculated())
end, StartCalculate = function()
  o11559["Value"] = o11559.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11559.Value == L0) then
    o11559["Value"] = L0
    CallFunction(o11558, "ProcesseStateChange")
  end
end }
o11560 = { [nil] = {}, GetCalculated = function()
  if not (o11408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11560.SetStateValue(o11560.GetCalculated())
end, StartCalculate = function()
  o11560["Value"] = o11560.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11560.Value == L0) then
    o11560["Value"] = L0
    CallFunction(o11558, "ProcesseStateChange")
  end
end }
o11563 = { [nil] = {}, Start = function()
  o11563["Value"] = False
  o11414.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11563.Value == L0) then
    o11563["Value"] = L0
    o11414.ReCalculate()
  end
end }
S_o11614 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11614, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11614, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o11614, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardArea", "/Scenario_Dynamic/Navigation/RedbeardFollowArea", "player1", "", "", "", 1, "Code4")
  else
    CallFunction(o11614, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o11614, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o11619.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o11616.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o11615.Value ~= True) then
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
o11615 = { [nil] = {}, GetCalculated = function()
  if not (o11451.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11615.SetStateValue(o11615.GetCalculated())
end, StartCalculate = function()
  o11615["Value"] = o11615.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11615.Value == L0) then
    o11615["Value"] = L0
    CallFunction(o11614, "ProcesseStateChange")
  end
end }
o11616 = { [nil] = {}, GetCalculated = function()
  if not (o11408.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o11616.SetStateValue(o11616.GetCalculated())
end, StartCalculate = function()
  o11616["Value"] = o11616.GetCalculated()
end, SetStateValue = function(L0)
  if not (o11616.Value == L0) then
    o11616["Value"] = L0
    CallFunction(o11614, "ProcesseStateChange")
  end
end }
o11619 = { [nil] = {}, Start = function()
  o11619["Value"] = False
  o11414.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11619.Value == L0) then
    o11619["Value"] = L0
    o11414.ReCalculate()
  end
end }
S_o11670 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o11445.Node)
  CallFunction(o11670, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o11673.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o11673 = { [nil] = {}, Start = function()
  o11673["Value"] = False
  o11408.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11673.Value == L0) then
    o11673["Value"] = L0
    o11408.ReCalculate()
  end
end }
S_o11675 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o11675, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o11675, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o11675, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetFriendlyFireMode(L0.Node, 0)
  CallFunction(o11675, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/TransporterPath_1", 1, 1 } }("Code5")
  else
    CallFunction(o11675, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code6")
  else
    CallFunction(o11675, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Destroyed = function(L0, L1)
  o11680.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o11688.SetStateValue(L1)
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
o11680 = { [nil] = {}, Start = function()
  o11680["Value"] = False
  o11416.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11680.Value == L0) then
    o11680["Value"] = L0
    o11416.ReCalculate()
  end
end }
o11688 = { [nil] = {}, Start = function()
  o11688["Value"] = False
  o11415.StartCalculate()
end, SetStateValue = function(L0)
  if not (o11688.Value == L0) then
    o11688["Value"] = L0
    o11415.ReCalculate()
  end
end }
S_o11731 = { [nil] = {}, Start = function(L0)

end }
o11733 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o11734 = { [nil] = {}, Start = function(L0)

end }
S_o11735 = { [nil] = {}, Start = function(L0)

end }
S_o11736 = { [nil] = {}, Start = function(L0)

end }
S_o11737 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o11737, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o11737, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o11737, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code9")
  else
    CallFunction(o11737, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o11394.Node, o11394.Node, 433)
  CallFunction(o11737, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1.5, "Code11")
  else
    CallFunction(o11737, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o11742 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o11732, o11733, "/InGameSequences/Navigation/PlayerPath_1")
  CallFunction(o11742, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o11732, o11733, "/InGameSequences/Navigation/PlayerPath_1", "pos_2", "pos_3", 1, 1, "Code2")
  else
    CallFunction(o11742, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Camera_Cut(L0.Node, 1)
  CallFunction(o11742, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o11742, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o11732, o11733, "/InGameSequences/Navigation/Path_2")
  CallFunction(o11742, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code6")
  else
    CallFunction(o11742, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Game_SetWayPoint(GetGameNode(), o11670.Node)
  Director_EndCutscene(L0.Node)
  CallFunction(o11742, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code9")
  else
    CallFunction(o11742, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o11394.Node, o11394.Node, 435)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o11742, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 14, "Code12")
  else
    CallFunction(o11742, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  SendRadioMessageTake(o11394.Node, o11394.Node, 434)
  CallFunction(o11742, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 316)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object/RedBeard"), "atl_wblock3a_build_1", S_o30)
  o76 = BindEasy(Node_Find("/Scenario_Static/Object/RedBeard"), "atl_wblock3a_build_2", S_o76)
  o122 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_1", S_o122)
  o168 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock3_2", S_o168)
  o214 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_2", S_o214)
  o260 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_concordia_1", S_o260)
  o306 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_2", S_o306)
  o352 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_ec_obelisk_1", S_o352)
  o398 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_ec_tower_1", S_o398)
  o444 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_ec_triumph_1", S_o444)
  o490 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_3", S_o490)
  o536 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_1", S_o536)
  o582 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_1", S_o582)
  o628 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_1", S_o628)
  o674 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_1", S_o674)
  o720 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_1", S_o720)
  o766 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_1", S_o766)
  o812 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_2", S_o812)
  o858 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_2", S_o858)
  o904 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_2", S_o904)
  o950 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_2", S_o950)
  o996 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_2", S_o996)
  o1042 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_2", S_o1042)
  o1088 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_3", S_o1088)
  o1134 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_3", S_o1134)
  o1180 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_3", S_o1180)
  o1226 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_3", S_o1226)
  o1272 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_3", S_o1272)
  o1318 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_3", S_o1318)
  o1364 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_4", S_o1364)
  o1410 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_4", S_o1410)
  o1456 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_4", S_o1456)
  o1502 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_4", S_o1502)
  o1548 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_4", S_o1548)
  o1594 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_4", S_o1594)
  o1640 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_5", S_o1640)
  o1686 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_5", S_o1686)
  o1732 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_5", S_o1732)
  o1778 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_5", S_o1778)
  o1824 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_5", S_o1824)
  o1870 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_5", S_o1870)
  o1916 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_6", S_o1916)
  o1962 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_6", S_o1962)
  o2008 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_6", S_o2008)
  o2054 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_6", S_o2054)
  o2100 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_6", S_o2100)
  o2146 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_6", S_o2146)
  o2192 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_7", S_o2192)
  o2238 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_7", S_o2238)
  o2284 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_7", S_o2284)
  o2330 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_7", S_o2330)
  o2376 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_7", S_o2376)
  o2422 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_7", S_o2422)
  o2468 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_8", S_o2468)
  o2514 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_8", S_o2514)
  o2560 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_8", S_o2560)
  o2606 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_8", S_o2606)
  o2652 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_8", S_o2652)
  o2698 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_9", S_o2698)
  o2744 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_9", S_o2744)
  o2790 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_9", S_o2790)
  o2836 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_9", S_o2836)
  o2882 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_9", S_o2882)
  o2928 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_9", S_o2928)
  o2974 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_10", S_o2974)
  o3020 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_10", S_o3020)
  o3066 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_10", S_o3066)
  o3112 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house4_10", S_o3112)
  o3158 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house1_11", S_o3158)
  o3204 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house2_11", S_o3204)
  o3250 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house3_11", S_o3250)
  o3296 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_11", S_o3296)
  o3342 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_11", S_o3342)
  o3388 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house5_12", S_o3388)
  o3434 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_neo_house6_12", S_o3434)
  o3480 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_1", S_o3480)
  o3526 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_2", S_o3526)
  o3572 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_3", S_o3572)
  o3618 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_4", S_o3618)
  o3664 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_1", S_o3664)
  o3710 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_2", S_o3710)
  o3756 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_1", S_o3756)
  o3802 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock2_2", S_o3802)
  o3848 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_metalblock3_1", S_o3848)
  o3894 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_1", S_o3894)
  o3940 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_2", S_o3940)
  o3986 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_3", S_o3986)
  o4032 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_4", S_o4032)
  o4078 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_10", S_o4078)
  o4124 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small02_11", S_o4124)
  o4170 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_1", S_o4170)
  o4216 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_2", S_o4216)
  o4262 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_10", S_o4262)
  o4308 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small03_11", S_o4308)
  o4354 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_5", S_o4354)
  o4400 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant1_6", S_o4400)
  o4446 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_pplant2_3", S_o4446)
  o4492 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_5", S_o4492)
  o4538 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_6", S_o4538)
  o4584 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_7", S_o4584)
  o4630 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_11", S_o4630)
  o4676 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_8", S_o4676)
  o4722 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_9", S_o4722)
  o4768 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_small01_10", S_o4768)
  o4814 = BindEasy(Node_Find("/Scenario_Static/Object"), "NAVYHQ", S_o4814)
  o4860 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dockingnode_1", S_o4860)
  o4906 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dockingnode_2", S_o4906)
  o4952 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dockingnode_3", S_o4952)
  o4998 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_quay_1", S_o4998)
  o5044 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_quay_2", S_o5044)
  o5090 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_quay_3", S_o5090)
  o5136 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_shelter_1", S_o5136)
  o5182 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_metalblock3_1", S_o5182)
  o5228 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_metalblock2_1", S_o5228)
  o5274 = BindEasy(Node_Find("/Scenario_Static/Object"), "navyhq_dock3_3", S_o5274)
  o5320 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum", S_o5320)
  o5367 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_museum_1", S_o5367)
  o5413 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_l_1", S_o5413)
  o5459 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_1", S_o5459)
  o5505 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_2", S_o5505)
  o5551 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_3", S_o5551)
  o5597 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_4", S_o5597)
  o5643 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_5", S_o5643)
  o5689 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_6", S_o5689)
  o5735 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_7", S_o5735)
  o5781 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_8", S_o5781)
  o5827 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_s", S_o5827)
  o5873 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_1", S_o5873)
  o5919 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_2", S_o5919)
  o5965 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_3", S_o5965)
  o6011 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_4", S_o6011)
  o6057 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_1", S_o6057)
  o6103 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_2", S_o6103)
  o6149 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_3", S_o6149)
  o6195 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_4", S_o6195)
  o6241 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_5", S_o6241)
  o6287 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_6", S_o6287)
  o6333 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_7", S_o6333)
  o6379 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_8", S_o6379)
  o6425 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_9", S_o6425)
  o6471 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_1", S_o6471)
  o6517 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_2", S_o6517)
  o6563 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_3", S_o6563)
  o6609 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_1", S_o6609)
  o6655 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_2", S_o6655)
  o6701 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_3", S_o6701)
  o6747 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_4", S_o6747)
  o6793 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_5", S_o6793)
  o6839 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_6", S_o6839)
  o6885 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_7", S_o6885)
  o6931 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_8", S_o6931)
  o6977 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_9", S_o6977)
  o7023 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_10", S_o7023)
  o7069 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_11", S_o7069)
  o7115 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_12", S_o7115)
  o7161 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_13", S_o7161)
  o7207 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_14", S_o7207)
  o7253 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_15", S_o7253)
  o7299 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_16", S_o7299)
  o7345 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_17", S_o7345)
  o7391 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_18", S_o7391)
  o7437 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_scoop_1", S_o7437)
  o7483 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_laserwall_1", S_o7483)
  o7485 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_t1", S_o7485)
  o7531 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_t2", S_o7531)
  o7577 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_3", S_o7577)
  o7623 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_4", S_o7623)
  o7669 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o7669)
  o7715 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_2", S_o7715)
  o7761 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_3", S_o7761)
  o7807 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_4", S_o7807)
  o7853 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_3", S_o7853)
  o7899 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_4", S_o7899)
  o7945 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_shelter_1", S_o7945)
  o7991 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_shelter_2", S_o7991)
  o8037 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_01_1", S_o8037)
  o8083 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_1", S_o8083)
  o8129 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_03_1", S_o8129)
  o8175 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_2", S_o8175)
  o8221 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_1", S_o8221)
  o8267 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_2", S_o8267)
  o8313 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_3", S_o8313)
  o8359 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_4", S_o8359)
  o8405 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o8405)
  o8451 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o8451)
  o8497 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_3", S_o8497)
  o8543 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_4", S_o8543)
  o8589 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_5", S_o8589)
  o8635 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_6", S_o8635)
  o8681 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_1", S_o8681)
  o8727 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_2", S_o8727)
  o8773 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_3", S_o8773)
  o8819 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_4", S_o8819)
  o8865 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_6", S_o8865)
  o8911 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_7", S_o8911)
  o8957 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_8", S_o8957)
  o9003 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_9", S_o9003)
  o9049 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_10", S_o9049)
  o9095 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_11", S_o9095)
  o9141 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_12", S_o9141)
  o9187 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_13", S_o9187)
  o9233 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_14", S_o9233)
  o9279 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_15", S_o9279)
  o9325 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_1", S_o9325)
  o9371 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_2", S_o9371)
  o9417 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_3", S_o9417)
  o9463 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_4", S_o9463)
  o9509 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_5", S_o9509)
  o9555 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_6", S_o9555)
  o9601 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_7", S_o9601)
  o9647 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_8", S_o9647)
  o9693 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_9", S_o9693)
  o9739 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_10", S_o9739)
  o9785 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_1", S_o9785)
  o9831 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_2", S_o9831)
  o9877 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_3", S_o9877)
  o9923 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_4", S_o9923)
  o9969 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_9", S_o9969)
  o10015 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_10", S_o10015)
  o10061 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_11", S_o10061)
  o10107 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_12", S_o10107)
  o10153 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_13", S_o10153)
  o10199 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_14", S_o10199)
  o10245 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_15", S_o10245)
  o10291 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_16", S_o10291)
  o10337 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_1", S_o10337)
  o10383 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_2", S_o10383)
  o10429 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_3", S_o10429)
  o10475 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_4", S_o10475)
  o10521 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_5", S_o10521)
  o10567 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_6", S_o10567)
  o10613 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_7", S_o10613)
  o10659 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_8", S_o10659)
  o10705 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_1", S_o10705)
  o10751 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_2", S_o10751)
  o10797 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_3", S_o10797)
  o10843 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_4", S_o10843)
  o10890 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p1", S_o10890)
  o10946 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p1", S_o10946)
  o11002 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p1", S_o11002)
  o11058 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p1", S_o11058)
  o11114 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_skipjack_p1", S_o11114)
  o11170 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p2", S_o11170)
  o11226 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p2", S_o11226)
  o11282 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p2", S_o11282)
  o11338 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p2", S_o11338)
  o11394 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o11394)
  o11404.Start()
  o11406.Start()
  o11445 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_redbeard_wide_1", S_o11445)
  o11449.Start()
  o11451.Start()
  o11457.Start()
  o11502 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_1", S_o11502)
  o11507.Start()
  o11558 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_2", S_o11558)
  o11563.Start()
  o11614 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "pir_sho_scout_wide_3", S_o11614)
  o11619.Start()
  o11670 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_1", S_o11670)
  o11673.Start()
  o11675 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_transporter_1", S_o11675)
  o11680.Start()
  o11688.Start()
  o11731 = BindEasy(Node_Find("/"), "Camera", S_o11731)
  o11734 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o11734)
  o11735 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o11735)
  o11736 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o11736)
  o11737 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro", S_o11737)
  o11742 = BindEasy(Node_Find("/InGameSequences/Director"), "Intro_2", S_o11742)
  o11732 = { {}, o11394 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
