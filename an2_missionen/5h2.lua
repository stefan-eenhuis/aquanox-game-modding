-- dekompiliert aus 5h2.sco
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
  Game_LoadTextTable(node0, "dat/sty/de/minfo_5h2.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_5H2.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit3.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_unhancy3.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_guit2.sam", 4)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/5H2/CubeMap/envcubemap.dds")
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
  node5 = Node_CreateNode("NOD_PatrolArea", "ReadbeardArea")
  Node_AddSon(node4, node5)
  PatrolArea_SetPosition(node5, MAT_Vector3(778.255202, 938.635584, 205.158319))
  PatrolArea_SetRadius(node5, 500)
  PatrolArea_SetMinZ(node5, -20)
  PatrolArea_SetMaxZ(node5, 20)
  Game_LoadProgress_Advance(node0)
  node6 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node2, node6)
  Node_EnterSimulation(node6)
  Game_LoadProgress_Advance(node0)
  node7 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node2, node7)
  Node_EnterSimulation(node7)
  Game_LoadProgress_Advance(node0)
  node8 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node2, node8)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_flare", "fx_flare_5H1_1")
  Node_AddSon(node8, node9)
  Node_ParseIniFile(node9, "osd/fx_flare/fx_flare_5H1.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_sky", "fx_sky_5H1_1")
  Node_AddSon(node8, node10)
  Node_ParseIniFile(node10, "osd/fx_sky/fx_sky_5H1.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_rays", "fx_rays_5H1_1")
  Node_AddSon(node8, node11)
  Node_ParseIniFile(node11, "osd/fx_rays/fx_rays_5H1.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "atl_dock3_1")
  Node_AddSon(node8, node12)
  Body_SetCS(node12, MAT_Vector3(2073.465, 2435.761, 129.2463), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node12, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_fx_plankton", "fx_plankton_blue_n_1")
  Node_AddSon(node8, node13)
  Node_ParseIniFile(node13, "osd/fx_plankton/fx_plankton_blue_n.osd")
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "atl_dock3_2")
  Node_AddSon(node8, node14)
  Body_SetCS(node14, MAT_Vector3(3923.485, 3162.483, 129.2463), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node14, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "atl_dock1_4_2")
  Node_AddSon(node8, node15)
  Body_SetCS(node15, MAT_Vector3(1535.22, 3499.061, 140.7347), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node15, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "atl_concordia_1")
  Node_AddSon(node8, node16)
  Body_SetCS(node16, MAT_Vector3(2376.587, 3257.644, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node16, "osd/atl/atl_concordia.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "atl_shipyard_2")
  Node_AddSon(node8, node17)
  Body_SetCS(node17, MAT_Vector3(1105.844, 2671.703, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node17, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "atl_ec_obelisk_1")
  Node_AddSon(node8, node18)
  Body_SetCS(node18, MAT_Vector3(3209.853, 3318.218, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/atl/atl_ec_obelisk.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "atl_ec_tower_1")
  Node_AddSon(node8, node19)
  Body_SetCS(node19, MAT_Vector3(1230, 3177, 191.2339), MAT_Vector3(80, 0, 0))
  Node_ParseIniFile(node19, "osd/atl/atl_ec_tower.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "atl_ec_triumph_1")
  Node_AddSon(node8, node20)
  Body_SetCS(node20, MAT_Vector3(3054.769, 2459.933, 118), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/atl/atl_ec_triumph.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "gen_shelter_3")
  Node_AddSon(node8, node21)
  Body_SetCS(node21, MAT_Vector3(1230, 3177, 130), MAT_Vector3(89.81774, 0, 0))
  Node_ParseIniFile(node21, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "atl_neo_house1_1")
  Node_AddSon(node8, node22)
  Body_SetCS(node22, MAT_Vector3(2146.324, 3473.884, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node22, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "atl_neo_house2_1")
  Node_AddSon(node8, node23)
  Body_SetCS(node23, MAT_Vector3(3006.342, 1852.981, 122), MAT_Vector3(90.21938, 0, 0))
  Node_ParseIniFile(node23, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "atl_neo_house3_1")
  Node_AddSon(node8, node24)
  Body_SetCS(node24, MAT_Vector3(3741.885, 2374.919, 122), MAT_Vector3(-89.61197, 0, 0))
  Node_ParseIniFile(node24, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "atl_neo_house4_1")
  Node_AddSon(node8, node25)
  Body_SetCS(node25, MAT_Vector3(2610.062, 3038.711, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node25, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "atl_neo_house5_1")
  Node_AddSon(node8, node26)
  Body_SetCS(node26, MAT_Vector3(2570.748, 2690.341, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node26, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "atl_neo_house6_1")
  Node_AddSon(node8, node27)
  Body_SetCS(node27, MAT_Vector3(2204.478, 2693.491, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node27, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "atl_neo_house1_2")
  Node_AddSon(node8, node28)
  Body_SetCS(node28, MAT_Vector3(2978.109, 2719.454, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node28, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "atl_neo_house2_2")
  Node_AddSon(node8, node29)
  Body_SetCS(node29, MAT_Vector3(2574.92, 2322.713, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node29, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "atl_neo_house3_2")
  Node_AddSon(node8, node30)
  Body_SetCS(node30, MAT_Vector3(2937.703, 2207.593, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node30, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "atl_neo_house4_2")
  Node_AddSon(node8, node31)
  Body_SetCS(node31, MAT_Vector3(3317.839, 2216.294, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node31, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "atl_neo_house5_2")
  Node_AddSon(node8, node32)
  Body_SetCS(node32, MAT_Vector3(2964.182, 3465.773, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node32, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "atl_neo_house6_2")
  Node_AddSon(node8, node33)
  Body_SetCS(node33, MAT_Vector3(2960.468, 3101.693, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node33, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "atl_neo_house1_3")
  Node_AddSon(node8, node34)
  Body_SetCS(node34, MAT_Vector3(1834.136, 2682.137, 122), MAT_Vector3(-89.90576, 0, 0))
  Node_ParseIniFile(node34, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "atl_neo_house2_3")
  Node_AddSon(node8, node35)
  Body_SetCS(node35, MAT_Vector3(2140.641, 3839.051, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node35, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "atl_neo_house3_3")
  Node_AddSon(node8, node36)
  Body_SetCS(node36, MAT_Vector3(1806.202, 3039.115, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node36, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "atl_neo_house4_3")
  Node_AddSon(node8, node37)
  Body_SetCS(node37, MAT_Vector3(1788.409, 3394.038, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node37, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "atl_neo_house5_3")
  Node_AddSon(node8, node38)
  Body_SetCS(node38, MAT_Vector3(1462.331, 3043.285, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node38, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "atl_neo_house6_3")
  Node_AddSon(node8, node39)
  Body_SetCS(node39, MAT_Vector3(1269.722, 3408.016, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node39, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "atl_neo_house1_4")
  Node_AddSon(node8, node40)
  Body_SetCS(node40, MAT_Vector3(1826.922, 4552.048, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node40, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "atl_neo_house2_4")
  Node_AddSon(node8, node41)
  Body_SetCS(node41, MAT_Vector3(920.2925, 3407.198, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node41, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "atl_neo_house3_4")
  Node_AddSon(node8, node42)
  Body_SetCS(node42, MAT_Vector3(1791.384, 3755.214, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node42, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "atl_neo_house4_4")
  Node_AddSon(node8, node43)
  Body_SetCS(node43, MAT_Vector3(2184.476, 4546.447, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node43, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "atl_neo_house5_4")
  Node_AddSon(node8, node44)
  Body_SetCS(node44, MAT_Vector3(2267.938, 4195.637, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node44, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "atl_neo_house6_4")
  Node_AddSon(node8, node45)
  Body_SetCS(node45, MAT_Vector3(1478.97, 4560.387, 122), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node45, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "atl_neo_house1_5")
  Node_AddSon(node8, node46)
  Body_SetCS(node46, MAT_Vector3(1436.313, 3751.422, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node46, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "atl_neo_house2_5")
  Node_AddSon(node8, node47)
  Body_SetCS(node47, MAT_Vector3(2504.562, 3836.625, 122), MAT_Vector3(-90.06336, 0, 0))
  Node_ParseIniFile(node47, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "atl_neo_house3_5")
  Node_AddSon(node8, node48)
  Body_SetCS(node48, MAT_Vector3(2623.55, 4191.919, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node48, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "atl_neo_house4_5")
  Node_AddSon(node8, node49)
  Body_SetCS(node49, MAT_Vector3(1083.008, 3757.951, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node49, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "atl_neo_house5_5")
  Node_AddSon(node8, node50)
  Body_SetCS(node50, MAT_Vector3(734.6174, 3761.358, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node50, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "atl_neo_house6_5")
  Node_AddSon(node8, node51)
  Body_SetCS(node51, MAT_Vector3(1117.218, 2944.916, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node51, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "atl_neo_house1_6")
  Node_AddSon(node8, node52)
  Body_SetCS(node52, MAT_Vector3(732.8609, 4111.736, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node52, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "atl_neo_house2_6")
  Node_AddSon(node8, node53)
  Body_SetCS(node53, MAT_Vector3(725.8118, 4459.8, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node53, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "atl_neo_house3_6")
  Node_AddSon(node8, node54)
  Body_SetCS(node54, MAT_Vector3(1129.965, 4557.218, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node54, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "atl_neo_house4_6")
  Node_AddSon(node8, node55)
  Body_SetCS(node55, MAT_Vector3(1469.361, 2693.728, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node55, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "atl_neo_house5_6")
  Node_AddSon(node8, node56)
  Body_SetCS(node56, MAT_Vector3(2862.33, 3836.712, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node56, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "atl_neo_house6_6")
  Node_AddSon(node8, node57)
  Body_SetCS(node57, MAT_Vector3(2531.15, 4545.612, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node57, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "atl_neo_house1_7")
  Node_AddSon(node8, node58)
  Body_SetCS(node58, MAT_Vector3(1116.191, 2408.586, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node58, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "atl_neo_house2_7")
  Node_AddSon(node8, node59)
  Body_SetCS(node59, MAT_Vector3(757.3516, 2901.013, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node59, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "atl_neo_house3_7")
  Node_AddSon(node8, node60)
  Body_SetCS(node60, MAT_Vector3(2215.779, 2174.997, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node60, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "atl_neo_house4_7")
  Node_AddSon(node8, node61)
  Body_SetCS(node61, MAT_Vector3(1836.771, 2333.674, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node61, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "atl_neo_house5_7")
  Node_AddSon(node8, node62)
  Body_SetCS(node62, MAT_Vector3(1480.429, 2338.323, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node62, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "atl_neo_house6_7")
  Node_AddSon(node8, node63)
  Body_SetCS(node63, MAT_Vector3(1561.314, 1987.779, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node63, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "atl_neo_house1_8")
  Node_AddSon(node8, node64)
  Body_SetCS(node64, MAT_Vector3(3333.51, 2727.811, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node64, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "atl_neo_house3_8")
  Node_AddSon(node8, node65)
  Body_SetCS(node65, MAT_Vector3(3309.394, 3076.406, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node65, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "atl_neo_house4_8")
  Node_AddSon(node8, node66)
  Body_SetCS(node66, MAT_Vector3(2606.451, 3469.6, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node66, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "atl_neo_house5_8")
  Node_AddSon(node8, node67)
  Body_SetCS(node67, MAT_Vector3(3316.824, 3778.205, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node67, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "atl_neo_house6_8")
  Node_AddSon(node8, node68)
  Body_SetCS(node68, MAT_Vector3(3160.805, 4186.863, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node68, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "atl_neo_house1_9")
  Node_AddSon(node8, node69)
  Body_SetCS(node69, MAT_Vector3(3662.078, 3073.172, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node69, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "atl_neo_house2_9")
  Node_AddSon(node8, node70)
  Body_SetCS(node70, MAT_Vector3(3681.171, 2722.375, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node70, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "atl_neo_house3_9")
  Node_AddSon(node8, node71)
  Body_SetCS(node71, MAT_Vector3(3668.463, 3775.134, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node71, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "atl_neo_house4_9")
  Node_AddSon(node8, node72)
  Body_SetCS(node72, MAT_Vector3(3461.494, 3424.993, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node72, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "atl_neo_house5_9")
  Node_AddSon(node8, node73)
  Body_SetCS(node73, MAT_Vector3(2903.124, 4565.731, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node73, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "atl_neo_house6_9")
  Node_AddSon(node8, node74)
  Body_SetCS(node74, MAT_Vector3(3833.691, 3429.243, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node74, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "atl_neo_house1_10")
  Node_AddSon(node8, node75)
  Body_SetCS(node75, MAT_Vector3(3268.311, 4558.106, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node75, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "atl_neo_house2_10")
  Node_AddSon(node8, node76)
  Body_SetCS(node76, MAT_Vector3(4193.654, 3246.313, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "atl_neo_house3_10")
  Node_AddSon(node8, node77)
  Body_SetCS(node77, MAT_Vector3(3362.993, 1850.257, 122), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node77, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "atl_neo_house4_10")
  Node_AddSon(node8, node78)
  Body_SetCS(node78, MAT_Vector3(2151.069, 3047.624, 122), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node78, "osd/atl/atl_neo_house4.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "atl_neo_house1_11")
  Node_AddSon(node8, node79)
  Body_SetCS(node79, MAT_Vector3(4093.902, 2381.126, 122), MAT_Vector3(179.8247, 0, 0))
  Node_ParseIniFile(node79, "osd/atl/atl_neo_house1.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "atl_neo_house2_11")
  Node_AddSon(node8, node80)
  Body_SetCS(node80, MAT_Vector3(2015.496, 4906.099, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node80, "osd/atl/atl_neo_house2.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "atl_neo_house3_11")
  Node_AddSon(node8, node81)
  Body_SetCS(node81, MAT_Vector3(3382.93, 4915.628, 122), MAT_Vector3(-0.335363, 0, 0))
  Node_ParseIniFile(node81, "osd/atl/atl_neo_house3.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "atl_neo_house5_11")
  Node_AddSon(node8, node82)
  Body_SetCS(node82, MAT_Vector3(1658.892, 4920.058, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node82, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "atl_neo_house6_11")
  Node_AddSon(node8, node83)
  Body_SetCS(node83, MAT_Vector3(1304.283, 4918.485, 122), MAT_Vector3(89.76241, 0, 0))
  Node_ParseIniFile(node83, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "atl_neo_house5_12")
  Node_AddSon(node8, node84)
  Body_SetCS(node84, MAT_Vector3(746.7569, 2547.51, 122), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node84, "osd/atl/atl_neo_house5.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "atl_neo_house6_12")
  Node_AddSon(node8, node85)
  Body_SetCS(node85, MAT_Vector3(4043.509, 2732.785, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node85, "osd/atl/atl_neo_house6.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "gen_pplant1_1")
  Node_AddSon(node8, node86)
  Body_SetCS(node86, MAT_Vector3(1116.499, 4194.17, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node86, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "gen_pplant1_2")
  Node_AddSon(node8, node87)
  Body_SetCS(node87, MAT_Vector3(1261.193, 4193.412, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node87, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "gen_pplant1_3")
  Node_AddSon(node8, node88)
  Body_SetCS(node88, MAT_Vector3(1115.848, 4087.062, 126.3762), MAT_Vector3(179.9564, 0, 0))
  Node_ParseIniFile(node88, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "gen_pplant1_4")
  Node_AddSon(node8, node89)
  Body_SetCS(node89, MAT_Vector3(1262.841, 4086.304, 126.3762), MAT_Vector3(-0.342134, 0, 0))
  Node_ParseIniFile(node89, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "gen_pplant2_1")
  Node_AddSon(node8, node90)
  Body_SetCS(node90, MAT_Vector3(990.7348, 4193.845, 115.9661), MAT_Vector3(-179.9593, 0, 0))
  Node_ParseIniFile(node90, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "gen_pplant2_2")
  Node_AddSon(node8, node91)
  Body_SetCS(node91, MAT_Vector3(990.3774, 4087.583, 115.9661), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node91, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "gen_metalblock2_1")
  Node_AddSon(node8, node92)
  Body_SetCS(node92, MAT_Vector3(1124.998, 4285.873, 135.8734), MAT_Vector3(90.00559, 0, 0))
  Node_ParseIniFile(node92, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "gen_metalblock2_2")
  Node_AddSon(node8, node93)
  Body_SetCS(node93, MAT_Vector3(1002.635, 4352.304, 110.053), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node93, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "gen_metalblock3_1")
  Node_AddSon(node8, node94)
  Body_SetCS(node94, MAT_Vector3(1040.658, 4286.509, 139.7296), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node94, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "gen_rohr_small01_1")
  Node_AddSon(node8, node95)
  Body_SetCS(node95, MAT_Vector3(990.6709, 4248.364, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node95, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "gen_rohr_small01_2")
  Node_AddSon(node8, node96)
  Body_SetCS(node96, MAT_Vector3(989.847, 4140.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node96, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "gen_rohr_small01_3")
  Node_AddSon(node8, node97)
  Body_SetCS(node97, MAT_Vector3(1115.547, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node97, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "gen_rohr_small01_4")
  Node_AddSon(node8, node98)
  Body_SetCS(node98, MAT_Vector3(1261.926, 4140.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node98, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "gen_rohr_small02_10")
  Node_AddSon(node8, node99)
  Body_SetCS(node99, MAT_Vector3(1095.479, 4317.799, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node99, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "gen_rohr_small02_11")
  Node_AddSon(node8, node100)
  Body_SetCS(node100, MAT_Vector3(1095.479, 4348.278, 121.7787), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node100, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "gen_rohr_small03_1")
  Node_AddSon(node8, node101)
  Body_SetCS(node101, MAT_Vector3(1123.32, 4192.826, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node101, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "gen_rohr_small03_2")
  Node_AddSon(node8, node102)
  Body_SetCS(node102, MAT_Vector3(1123.129, 4086.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node102, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "gen_rohr_small03_10")
  Node_AddSon(node8, node103)
  Body_SetCS(node103, MAT_Vector3(1123.129, 3986.796, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node103, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "gen_rohr_small03_11")
  Node_AddSon(node8, node104)
  Body_SetCS(node104, MAT_Vector3(1133.572, 4280.691, 124.2256), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node104, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "gen_pplant1_5")
  Node_AddSon(node8, node105)
  Body_SetCS(node105, MAT_Vector3(1118.147, 3987.062, 126.3762), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node105, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "gen_pplant1_6")
  Node_AddSon(node8, node106)
  Body_SetCS(node106, MAT_Vector3(1262.841, 3986.304, 126.3762), MAT_Vector3(-89.84697, 0, 0))
  Node_ParseIniFile(node106, "osd/gen/gen_pplant1.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "gen_pplant2_3")
  Node_AddSon(node8, node107)
  Body_SetCS(node107, MAT_Vector3(990.3774, 3987.583, 115.9661), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/gen/gen_pplant2.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "gen_rohr_small01_5")
  Node_AddSon(node8, node108)
  Body_SetCS(node108, MAT_Vector3(989.847, 4040.432, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "gen_rohr_small01_6")
  Node_AddSon(node8, node109)
  Body_SetCS(node109, MAT_Vector3(1115.547, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node109, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "gen_rohr_small01_7")
  Node_AddSon(node8, node110)
  Body_SetCS(node110, MAT_Vector3(1261.926, 4040.053, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node110, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "gen_shelter_11")
  Node_AddSon(node8, node111)
  Body_SetCS(node111, MAT_Vector3(1292.186, 4320.126, 138), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node111, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_generic", "gen_rohr_small01_8")
  Node_AddSon(node8, node112)
  Body_SetCS(node112, MAT_Vector3(1261.145, 4246.658, 124.3724), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node112, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node112, 0)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_generic", "gen_rohr_small01_9")
  Node_AddSon(node8, node113)
  Body_SetCS(node113, MAT_Vector3(1203.797, 4334.485, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node113, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node113, 0)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_generic", "gen_rohr_small01_10")
  Node_AddSon(node8, node114)
  Body_SetCS(node114, MAT_Vector3(1203.396, 4300.798, 124.3724), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node114, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node114, 0)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_generic", "NAVYHQ")
  Node_AddSon(node8, node115)
  Body_SetCS(node115, MAT_Vector3(3778.916, 4279.821, 40), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node115, "osd/mac/mac_building1_big.osd")
  Body_SetFriendOrFoeID(node115, 0)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_generic", "navyhq_dockingnode_1")
  Node_AddSon(node8, node116)
  Body_SetCS(node116, MAT_Vector3(3843.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node116, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node116, 0)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_generic", "navyhq_dockingnode_2")
  Node_AddSon(node8, node117)
  Body_SetCS(node117, MAT_Vector3(3775.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node117, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node117, 0)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_generic", "navyhq_dockingnode_3")
  Node_AddSon(node8, node118)
  Body_SetCS(node118, MAT_Vector3(3705.99, 4231.466, 527.9505), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node118, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node118, 0)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_generic", "navyhq_quay_1")
  Node_AddSon(node8, node119)
  Body_SetCS(node119, MAT_Vector3(3442.286, 4243.51, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node119, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node119, 0)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_generic", "navyhq_quay_2")
  Node_AddSon(node8, node120)
  Body_SetCS(node120, MAT_Vector3(3770.662, 4050.547, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node120, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node120, 0)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_generic", "navyhq_quay_3")
  Node_AddSon(node8, node121)
  Body_SetCS(node121, MAT_Vector3(3792.667, 4614.203, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node121, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node121, 0)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_generic", "navyhq_shelter_1")
  Node_AddSon(node8, node122)
  Body_SetCS(node122, MAT_Vector3(3895.218, 4466.632, 128.5559), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node122, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node122, 0)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_generic", "navyhq_metalblock3_1")
  Node_AddSon(node8, node123)
  Body_SetCS(node123, MAT_Vector3(3859.252, 4229.73, 126.6685), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node123, "osd/gen/gen_metalblock3.osd")
  Body_SetFriendOrFoeID(node123, 0)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_generic", "navyhq_metalblock2_1")
  Node_AddSon(node8, node124)
  Body_SetCS(node124, MAT_Vector3(3939.914, 4309.355, 130.7812), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node124, "osd/gen/gen_metalblock2.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Body_SetNameKey(node124, -1)
  Body_SetCargoKey(node124, -1, 0)
  Body_SetCargoKey(node124, -1, 1)
  Body_SetCargoKey(node124, -1, 2)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_generic", "navyhq_dock3_3")
  Node_AddSon(node8, node125)
  Body_SetCS(node125, MAT_Vector3(3662.658, 4450.381, 128.2063), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node125, "osd/atl/atl_dock3.osd")
  Body_SetFriendOrFoeID(node125, 0)
  Body_SetNameKey(node125, -1)
  Body_SetCargoKey(node125, -1, 0)
  Body_SetCargoKey(node125, -1, 1)
  Body_SetCargoKey(node125, -1, 2)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "MUSEUM")
  Node_AddSon(node8, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_turret", "gen_torptower_1")
  Node_AddSon(node8, node127)
  Body_SetCS(node127, MAT_Vector3(1032.812918, 4334.45603, 210), MAT_Vector3(-180, 0, 0))
  Node_ParseIniFile(node127, "osd/gen/gen_torptower.osd")
  Body_SetFriendOrFoeID(node127, 2)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_turret", "gen_turret_hard_1")
  Node_AddSon(node8, node128)
  Body_SetCS(node128, MAT_Vector3(982.581378, 4293.80446, 210), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node128, "osd/gen/gen_turret_hard.osd")
  Body_SetFriendOrFoeID(node128, 2)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum1")
  Node_AddSon(node8, node129)
  Body_SetCS(node129, MAT_Vector3(952.644714, 4299.869196, 176.9181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node129, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node129, 2)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum2")
  Node_AddSon(node8, node130)
  Body_SetCS(node130, MAT_Vector3(952.909865, 4318.695696, 176.9181), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node130, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node130, 2)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum3")
  Node_AddSon(node8, node131)
  Body_SetCS(node131, MAT_Vector3(971.040279, 4169.77371, 118.361509), MAT_Vector3(-147.273008, 0, 0))
  Node_ParseIniFile(node131, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node131, 2)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum4")
  Node_AddSon(node8, node132)
  Body_SetCS(node132, MAT_Vector3(971.818921, 4009.179118, 118.3615), MAT_Vector3(-32.918669, 0, 0))
  Node_ParseIniFile(node132, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node132, 2)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "gen_trafo_des_for_museum5")
  Node_AddSon(node8, node133)
  Body_SetCS(node133, MAT_Vector3(967.133949, 4087.06631, 118.3615), MAT_Vector3(0.151729, 0, 0))
  Node_ParseIniFile(node133, "osd/gen/gen_trafo_des.osd")
  Body_SetFriendOrFoeID(node133, 2)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "mu_trafo_des_2")
  Node_AddSon(node8, node134)
  Body_SetCS(node134, MAT_Vector3(1949.844, 4132.947, 121.8487), MAT_Vector3(-179.8465, 0, 0))
  Node_ParseIniFile(node134, "osd/gen/gen_trafo_02_ws_des.osd")
  Body_SetFriendOrFoeID(node134, 2)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "mu_museum_1")
  Node_AddSon(node8, node135)
  Body_SetCS(node135, MAT_Vector3(1972, 4132, 122), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node135, "osd/atl/atl_museum.osd")
  Body_SetFriendOrFoeID(node135, 2)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "mu_bottom_hole_l_1")
  Node_AddSon(node8, node136)
  Body_SetCS(node136, MAT_Vector3(1458, 4309, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node136, "osd/atl/atl_bottom_hole_l.osd")
  Body_SetFriendOrFoeID(node136, 2)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "mu_bottom_03_1")
  Node_AddSon(node8, node137)
  Body_SetCS(node137, MAT_Vector3(1398, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node137, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node137, 2)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_generic", "mu_bottom_03_2")
  Node_AddSon(node8, node138)
  Body_SetCS(node138, MAT_Vector3(1398, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node138, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node138, 2)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_generic", "mu_bottom_03_3")
  Node_AddSon(node8, node139)
  Body_SetCS(node139, MAT_Vector3(1533, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node139, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node139, 2)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_generic", "mu_bottom_03_4")
  Node_AddSon(node8, node140)
  Body_SetCS(node140, MAT_Vector3(1533, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node140, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node140, 2)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_generic", "mu_bottom_03_5")
  Node_AddSon(node8, node141)
  Body_SetCS(node141, MAT_Vector3(1668, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node141, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node141, 2)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_generic", "mu_bottom_03_6")
  Node_AddSon(node8, node142)
  Body_SetCS(node142, MAT_Vector3(1668, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node142, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node142, 2)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_generic", "mu_bottom_03_7")
  Node_AddSon(node8, node143)
  Body_SetCS(node143, MAT_Vector3(1803, 4192, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node143, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node143, 2)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_generic", "mu_bottom_03_8")
  Node_AddSon(node8, node144)
  Body_SetCS(node144, MAT_Vector3(1803, 4074, 121), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node144, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node144, 2)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_generic", "mu_bottom_hole_s")
  Node_AddSon(node8, node145)
  Body_SetCS(node145, MAT_Vector3(1928.228, 4135.668, 121), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node145, "osd/atl/atl_bottom_hole_s.osd")
  Body_SetFriendOrFoeID(node145, 2)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_generic", "mu_bottom_02_1")
  Node_AddSon(node8, node146)
  Body_SetCS(node146, MAT_Vector3(1928.485, 4245.53, 123), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node146, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node146, 2)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_generic", "mu_bottom_02_2")
  Node_AddSon(node8, node147)
  Body_SetCS(node147, MAT_Vector3(1929.075, 4026.198, 121.8822), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node147, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node147, 2)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_generic", "mu_bottom_02_3")
  Node_AddSon(node8, node148)
  Body_SetCS(node148, MAT_Vector3(2030.921, 4075.403, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node148, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node148, 2)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_generic", "mu_bottom_02_4")
  Node_AddSon(node8, node149)
  Body_SetCS(node149, MAT_Vector3(2030.921, 4193.272, 123), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node149, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node149, 2)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_generic", "mu_vbstueck_1")
  Node_AddSon(node8, node150)
  Body_SetCS(node150, MAT_Vector3(1466.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node150, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node150, 2)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_generic", "mu_vbstueck_2")
  Node_AddSon(node8, node151)
  Body_SetCS(node151, MAT_Vector3(1466.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node151, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node151, 2)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_generic", "mu_vbstueck_3")
  Node_AddSon(node8, node152)
  Body_SetCS(node152, MAT_Vector3(1601.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node152, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node152, 2)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_generic", "mu_vbstueck_4")
  Node_AddSon(node8, node153)
  Body_SetCS(node153, MAT_Vector3(1601.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node153, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node153, 2)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_generic", "mu_vbstueck_5")
  Node_AddSon(node8, node154)
  Body_SetCS(node154, MAT_Vector3(1736.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node154, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node154, 2)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_generic", "mu_vbstueck_6")
  Node_AddSon(node8, node155)
  Body_SetCS(node155, MAT_Vector3(1736.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node155, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node155, 2)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_generic", "mu_vbstueck_7")
  Node_AddSon(node8, node156)
  Body_SetCS(node156, MAT_Vector3(1871.273, 4193.532, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node156, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node156, 2)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_generic", "mu_vbstueck_8")
  Node_AddSon(node8, node157)
  Body_SetCS(node157, MAT_Vector3(1871.273, 4073.969, 119.358), MAT_Vector3(-89.90892, 0, 0))
  Node_ParseIniFile(node157, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node157, 2)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_generic", "mu_vbstueck_9")
  Node_AddSon(node8, node158)
  Body_SetCS(node158, MAT_Vector3(2032.223, 4134.9, 122.8673), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node158, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node158, 2)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_1")
  Node_AddSon(node8, node159)
  Body_SetCS(node159, MAT_Vector3(1592, 4131.806, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node159, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node159, 2)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_2")
  Node_AddSon(node8, node160)
  Body_SetCS(node160, MAT_Vector3(1592, 4251.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node160, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node160, 2)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_generic", "mu_cl_vbstueck_g_3")
  Node_AddSon(node8, node161)
  Body_SetCS(node161, MAT_Vector3(1592, 4016.08, 116.7827), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node161, "osd/atl/atl_vbstueck_g.osd")
  Body_SetFriendOrFoeID(node161, 2)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_generic", "2nd_vbstueck_1")
  Node_AddSon(node8, node162)
  Body_SetCS(node162, MAT_Vector3(1460.658, 4254.089, 61.12362), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node162, "osd/atl/atl_vbstueck.osd")
  Body_SetFriendOrFoeID(node162, 2)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_generic", "2nd_bottom_hole_1")
  Node_AddSon(node8, node163)
  Body_SetCS(node163, MAT_Vector3(1456.115, 4319.67, 60), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node163, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node163, 2)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_generic", "2nd_bottom_hole_2")
  Node_AddSon(node8, node164)
  Body_SetCS(node164, MAT_Vector3(1499.801, 4049.505, 60), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node164, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node164, 2)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_generic", "2nd_bottom_hole_3")
  Node_AddSon(node8, node165)
  Body_SetCS(node165, MAT_Vector3(1481.58, 4067.711, 65.31613), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node165, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node165, 2)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_generic", "2nd_bottom_hole_4")
  Node_AddSon(node8, node166)
  Body_SetCS(node166, MAT_Vector3(1534.265, 4127.473, 64.61966), MAT_Vector3(-90, 90, 0))
  Node_ParseIniFile(node166, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node166, 2)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_generic", "2nd_bottom_hole_5")
  Node_AddSon(node8, node167)
  Body_SetCS(node167, MAT_Vector3(1589.924, 4181.021, 54.06693), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node167, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node167, 2)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_generic", "2nd_bottom_hole_6")
  Node_AddSon(node8, node168)
  Body_SetCS(node168, MAT_Vector3(1788.812, 4182.745, 89.01008), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node168, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node168, 2)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_generic", "2nd_bottom_03_0")
  Node_AddSon(node8, node169)
  Body_SetCS(node169, MAT_Vector3(1464.668, 4193.639, 60), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node169, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node169, 2)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_generic", "2nd_bottom_03_1")
  Node_AddSon(node8, node170)
  Body_SetCS(node170, MAT_Vector3(1488.81, 4129.834, 56.12141), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node170, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node170, 2)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_generic", "2nd_bottom_03_2")
  Node_AddSon(node8, node171)
  Body_SetCS(node171, MAT_Vector3(1397.414, 4072.352, 58.48695), MAT_Vector3(179.9584, 0, 0))
  Node_ParseIniFile(node171, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node171, 2)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_generic", "2nd_bottom_03_3")
  Node_AddSon(node8, node172)
  Body_SetCS(node172, MAT_Vector3(1583.656, 4059.131, 58.92653), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node172, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node172, 2)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_generic", "2nd_bottom_03_4")
  Node_AddSon(node8, node173)
  Body_SetCS(node173, MAT_Vector3(1840.703, 4121.727, 20.70737), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node173, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node173, 2)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_generic", "2nd_bottom_03_5")
  Node_AddSon(node8, node174)
  Body_SetCS(node174, MAT_Vector3(1873.999, 4082.276, 54.51744), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node174, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node174, 2)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_generic", "2nd_bottom_03_6")
  Node_AddSon(node8, node175)
  Body_SetCS(node175, MAT_Vector3(1919.308, 4182.838, 87.94242), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node175, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node175, 2)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_generic", "2nd_bottom_03_7")
  Node_AddSon(node8, node176)
  Body_SetCS(node176, MAT_Vector3(1941.383, 4077.905, 93.11247), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node176, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node176, 2)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_generic", "2nd_bottom_03_8")
  Node_AddSon(node8, node177)
  Body_SetCS(node177, MAT_Vector3(2041.242, 4175.758, 87.58904), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node177, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node177, 2)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_generic", "2nd_bottom_03_9")
  Node_AddSon(node8, node178)
  Body_SetCS(node178, MAT_Vector3(2041.242, 4175.758, 87.58904), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node178, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node178, 2)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_generic", "2nd_bottom_03_10")
  Node_AddSon(node8, node179)
  Body_SetCS(node179, MAT_Vector3(2065.304, 4057.452, 91.48793), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node179, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node179, 2)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_generic", "2nd_bottom_03_11")
  Node_AddSon(node8, node180)
  Body_SetCS(node180, MAT_Vector3(1960.025, 4201.602, 53.4517), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node180, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node180, 2)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_generic", "2nd_bottom_03_12")
  Node_AddSon(node8, node181)
  Body_SetCS(node181, MAT_Vector3(1932.754, 4070.864, 53.4517), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node181, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node181, 2)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_generic", "2nd_bottom_03_13")
  Node_AddSon(node8, node182)
  Body_SetCS(node182, MAT_Vector3(1984.889, 4144.254, 53.4517), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node182, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node182, 2)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_generic", "2nd_bottom_02_1")
  Node_AddSon(node8, node183)
  Body_SetCS(node183, MAT_Vector3(1423.914, 4010.227, 79.2413), MAT_Vector3(-90, 90, 0))
  Node_ParseIniFile(node183, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node183, 2)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_generic", "2nd_bottom_02_2")
  Node_AddSon(node8, node184)
  Body_SetCS(node184, MAT_Vector3(1593.209, 4088.717, 88.11785), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node184, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node184, 2)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_generic", "2nd_bottom_02_3")
  Node_AddSon(node8, node185)
  Body_SetCS(node185, MAT_Vector3(1645.063, 4147.033, 77.73742), MAT_Vector3(90, 90, 0))
  Node_ParseIniFile(node185, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node185, 2)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_generic", "2nd_bottom_02_4")
  Node_AddSon(node8, node186)
  Body_SetCS(node186, MAT_Vector3(1816.186, 4068.547, 77.73742), MAT_Vector3(90, 90, 0))
  Node_ParseIniFile(node186, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node186, 2)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_generic", "mu_bottom_wall_1")
  Node_AddSon(node8, node187)
  Body_SetCS(node187, MAT_Vector3(1509.381, 4312.657, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node187, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node187, 2)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_generic", "mu_bottom_wall_2")
  Node_AddSon(node8, node188)
  Body_SetCS(node188, MAT_Vector3(1401.111, 4311.915, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node188, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node188, 2)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_generic", "mu_bottom_wall_3")
  Node_AddSon(node8, node189)
  Body_SetCS(node189, MAT_Vector3(1456.097, 4391.631, 55), MAT_Vector3(-90.25387, -90, -90))
  Node_ParseIniFile(node189, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node189, 2)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_generic", "mu_bottom_wall_4")
  Node_AddSon(node8, node190)
  Body_SetCS(node190, MAT_Vector3(1371.976, 4197.441, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node190, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node190, 2)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_generic", "mu_bottom_wall_5")
  Node_AddSon(node8, node191)
  Body_SetCS(node191, MAT_Vector3(1371.575, 4084.121, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node191, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node191, 2)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_generic", "mu_bottom_wall_6")
  Node_AddSon(node8, node192)
  Body_SetCS(node192, MAT_Vector3(1454.907, 4000.797, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node192, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node192, 2)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_generic", "mu_bottom_wall_7")
  Node_AddSon(node8, node193)
  Body_SetCS(node193, MAT_Vector3(1569.604, 3999.995, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node193, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node193, 2)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_generic", "mu_bottom_wall_8")
  Node_AddSon(node8, node194)
  Body_SetCS(node194, MAT_Vector3(1683.499, 4020.848, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node194, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node194, 2)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_generic", "mu_bottom_wall_9")
  Node_AddSon(node8, node195)
  Body_SetCS(node195, MAT_Vector3(1797.795, 4002.802, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node195, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node195, 2)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_generic", "mu_bottom_wall_10")
  Node_AddSon(node8, node196)
  Body_SetCS(node196, MAT_Vector3(1912.904, 4004.493, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node196, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node196, 2)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_generic", "mu_bottom_wall_11")
  Node_AddSon(node8, node197)
  Body_SetCS(node197, MAT_Vector3(2028.767, 3999.448, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node197, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node197, 2)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_generic", "mu_bottom_wall_12")
  Node_AddSon(node8, node198)
  Body_SetCS(node198, MAT_Vector3(1966.095, 4269.196, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node198, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node198, 2)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_generic", "mu_bottom_wall_13")
  Node_AddSon(node8, node199)
  Body_SetCS(node199, MAT_Vector3(1850.819, 4267.238, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node199, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node199, 2)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_generic", "mu_bottom_wall_14")
  Node_AddSon(node8, node200)
  Body_SetCS(node200, MAT_Vector3(1736.103, 4269.476, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node200, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node200, 2)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_generic", "mu_bottom_wall_15")
  Node_AddSon(node8, node201)
  Body_SetCS(node201, MAT_Vector3(1621.387, 4271.155, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node201, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node201, 2)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_generic", "mu_bottom_wall_16")
  Node_AddSon(node8, node202)
  Body_SetCS(node202, MAT_Vector3(1564.48, 4253.911, 55), MAT_Vector3(90, -90, 90))
  Node_ParseIniFile(node202, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node202, 2)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_generic", "mu_bottom_wall_17")
  Node_AddSon(node8, node203)
  Body_SetCS(node203, MAT_Vector3(2042.59, 4194.329, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node203, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node203, 2)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_generic", "mu_bottom_wall_18")
  Node_AddSon(node8, node204)
  Body_SetCS(node204, MAT_Vector3(2043.989, 4080.179, 55), MAT_Vector3(90, -90, 180))
  Node_ParseIniFile(node204, "osd/atl/atl_bottom_wall.osd")
  Body_SetFriendOrFoeID(node204, 2)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_generic", "1st_bottom_03_1")
  Node_AddSon(node8, node205)
  Body_SetCS(node205, MAT_Vector3(1451.835, 4196.795, 54.00335), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node205, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node205, 2)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("nod_generic", "1st_bottom_03_2")
  Node_AddSon(node8, node206)
  Body_SetCS(node206, MAT_Vector3(1530.513, 4221.174, 54.00335), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node206, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node206, 2)
  Body_SetNameKey(node206, -1)
  Body_SetCargoKey(node206, -1, 0)
  Body_SetCargoKey(node206, -1, 1)
  Body_SetCargoKey(node206, -1, 2)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("nod_generic", "1st_bottom_03_3")
  Node_AddSon(node8, node207)
  Body_SetCS(node207, MAT_Vector3(1474.347, 4166.435, 54.00335), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node207, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node207, 2)
  Body_SetNameKey(node207, -1)
  Body_SetCargoKey(node207, -1, 0)
  Body_SetCargoKey(node207, -1, 1)
  Body_SetCargoKey(node207, -1, 2)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("nod_generic", "1st_bottom_03_4")
  Node_AddSon(node8, node208)
  Body_SetCS(node208, MAT_Vector3(1420.722, 4108.376, 54.00335), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node208, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node208, 2)
  Body_SetNameKey(node208, -1)
  Body_SetCargoKey(node208, -1, 0)
  Body_SetCargoKey(node208, -1, 1)
  Body_SetCargoKey(node208, -1, 2)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("nod_generic", "1st_bottom_03_5")
  Node_AddSon(node8, node209)
  Body_SetCS(node209, MAT_Vector3(1480.77, 4069.715, -2.37855), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node209, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node209, 2)
  Body_SetNameKey(node209, -1)
  Body_SetCargoKey(node209, -1, 0)
  Body_SetCargoKey(node209, -1, 1)
  Body_SetCargoKey(node209, -1, 2)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("nod_generic", "1st_bottom_03_6")
  Node_AddSon(node8, node210)
  Body_SetCS(node210, MAT_Vector3(1531.602, 4011.493, 54.00335), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node210, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node210, 2)
  Body_SetNameKey(node210, -1)
  Body_SetCargoKey(node210, -1, 0)
  Body_SetCargoKey(node210, -1, 1)
  Body_SetCargoKey(node210, -1, 2)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("nod_generic", "1st_bottom_03_7")
  Node_AddSon(node8, node211)
  Body_SetCS(node211, MAT_Vector3(1648.29, 4184.514, 51.02599), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node211, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node211, 2)
  Body_SetNameKey(node211, -1)
  Body_SetCargoKey(node211, -1, 0)
  Body_SetCargoKey(node211, -1, 1)
  Body_SetCargoKey(node211, -1, 2)
  Node_EnterSimulation(node211)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("nod_generic", "1st_bottom_03_8")
  Node_AddSon(node8, node212)
  Body_SetCS(node212, MAT_Vector3(1735.633, 4125.852, 51.02599), MAT_Vector3(0, -90, 0))
  Node_ParseIniFile(node212, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node212, 2)
  Body_SetNameKey(node212, -1)
  Body_SetCargoKey(node212, -1, 0)
  Body_SetCargoKey(node212, -1, 1)
  Body_SetCargoKey(node212, -1, 2)
  Node_EnterSimulation(node212)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("nod_generic", "1st_bottom_03_9")
  Node_AddSon(node8, node213)
  Body_SetCS(node213, MAT_Vector3(1780.68, 4067.934, 51.02599), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node213, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node213, 2)
  Body_SetNameKey(node213, -1)
  Body_SetCargoKey(node213, -1, 0)
  Body_SetCargoKey(node213, -1, 1)
  Body_SetCargoKey(node213, -1, 2)
  Node_EnterSimulation(node213)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("nod_generic", "1st_bottom_03_10")
  Node_AddSon(node8, node214)
  Body_SetCS(node214, MAT_Vector3(1813.365, 4180.943, 53.19726), MAT_Vector3(90, -90, 0))
  Node_ParseIniFile(node214, "osd/atl/atl_bottom_03.osd")
  Body_SetFriendOrFoeID(node214, 2)
  Body_SetNameKey(node214, -1)
  Body_SetCargoKey(node214, -1, 0)
  Body_SetCargoKey(node214, -1, 1)
  Body_SetCargoKey(node214, -1, 2)
  Node_EnterSimulation(node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("nod_generic", "1st_bottom_02_1")
  Node_AddSon(node8, node215)
  Body_SetCS(node215, MAT_Vector3(1536.112, 4122.145, 21.31482), MAT_Vector3(-90, 90, 0))
  Node_ParseIniFile(node215, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node215, 2)
  Body_SetNameKey(node215, -1)
  Body_SetCargoKey(node215, -1, 0)
  Body_SetCargoKey(node215, -1, 1)
  Body_SetCargoKey(node215, -1, 2)
  Node_EnterSimulation(node215)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("nod_generic", "1st_bottom_02_2")
  Node_AddSon(node8, node216)
  Body_SetCS(node216, MAT_Vector3(1722.996, 4185.91, 32.264), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node216, "osd/atl/atl_bottom_02.osd")
  Body_SetFriendOrFoeID(node216, 2)
  Body_SetNameKey(node216, -1)
  Body_SetCargoKey(node216, -1, 0)
  Body_SetCargoKey(node216, -1, 1)
  Body_SetCargoKey(node216, -1, 2)
  Node_EnterSimulation(node216)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("nod_generic", "1st_bottom_hole_1")
  Node_AddSon(node8, node217)
  Body_SetCS(node217, MAT_Vector3(1649.586, 4070.143, 36.65591), MAT_Vector3(90, 90, 0))
  Node_ParseIniFile(node217, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node217, 2)
  Body_SetNameKey(node217, -1)
  Body_SetCargoKey(node217, -1, 0)
  Body_SetCargoKey(node217, -1, 1)
  Body_SetCargoKey(node217, -1, 2)
  Node_EnterSimulation(node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("nod_generic", "1st_bottom_hole_2")
  Node_AddSon(node8, node218)
  Body_SetCS(node218, MAT_Vector3(1679.247, 4184.666, 52.51027), MAT_Vector3(90, 90, 0))
  Node_ParseIniFile(node218, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node218, 2)
  Body_SetNameKey(node218, -1)
  Body_SetCargoKey(node218, -1, 0)
  Body_SetCargoKey(node218, -1, 1)
  Body_SetCargoKey(node218, -1, 2)
  Node_EnterSimulation(node218)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("nod_generic", "1st_bottom_hole_3")
  Node_AddSon(node8, node219)
  Body_SetCS(node219, MAT_Vector3(1721.517, 4185.226, 52.51027), MAT_Vector3(90, 90, 0))
  Node_ParseIniFile(node219, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node219, 2)
  Body_SetNameKey(node219, -1)
  Body_SetCargoKey(node219, -1, 0)
  Body_SetCargoKey(node219, -1, 1)
  Body_SetCargoKey(node219, -1, 2)
  Node_EnterSimulation(node219)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("nod_generic", "1st_bottom_hole_4")
  Node_AddSon(node8, node220)
  Body_SetCS(node220, MAT_Vector3(1764.595, 4185.505, 52.51027), MAT_Vector3(90, 90, 0))
  Node_ParseIniFile(node220, "osd/atl/atl_bottom_hole.osd")
  Body_SetFriendOrFoeID(node220, 2)
  Body_SetNameKey(node220, -1)
  Body_SetCargoKey(node220, -1, 0)
  Body_SetCargoKey(node220, -1, 1)
  Body_SetCargoKey(node220, -1, 2)
  Node_EnterSimulation(node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("nod_generic", "mu_scoop_1")
  Node_AddSon(node8, node221)
  Body_SetCS(node221, MAT_Vector3(1458.626, 4308.962, 120.2385), MAT_Vector3(-0.174314, 0, 0))
  Node_ParseIniFile(node221, "osd/gen/gen_scoop.osd")
  Body_SetFriendOrFoeID(node221, 2)
  Body_SetNameKey(node221, -1)
  Body_SetCargoKey(node221, -1, 0)
  Body_SetCargoKey(node221, -1, 1)
  Body_SetCargoKey(node221, -1, 2)
  Node_EnterSimulation(node221)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("nod_turret", "mu_turret_hard_emp_1")
  Node_AddSon(node8, node222)
  Body_SetCS(node222, MAT_Vector3(1388, 4031.001, 123.4815), MAT_Vector3(90.10486, 0, 0))
  Node_ParseIniFile(node222, "osd/gen/gen_turret_hard_emp.osd")
  Body_SetFriendOrFoeID(node222, 2)
  Node_EnterSimulation(node222)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("nod_turret", "mu_turret_hard_emp_2")
  Node_AddSon(node8, node223)
  Body_SetCS(node223, MAT_Vector3(1388, 4237.029, 123.4815), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node223, "osd/gen/gen_turret_hard_emp.osd")
  Body_SetFriendOrFoeID(node223, 2)
  Node_EnterSimulation(node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("nod_turret", "mu_turret_hard_emp_3")
  Node_AddSon(node8, node224)
  Body_SetCS(node224, MAT_Vector3(1388, 4087.116, 123.4815), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node224, "osd/gen/gen_turret_hard_emp.osd")
  Body_SetFriendOrFoeID(node224, 2)
  Node_EnterSimulation(node224)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("nod_turret", "mu_turret_hard_emp_4")
  Node_AddSon(node8, node225)
  Body_SetCS(node225, MAT_Vector3(1388, 4175.811, 123.4815), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node225, "osd/gen/gen_turret_hard_emp.osd")
  Body_SetFriendOrFoeID(node225, 2)
  Node_EnterSimulation(node225)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("nod_turret", "mu_torptower_emp_1")
  Node_AddSon(node8, node226)
  Body_SetCS(node226, MAT_Vector3(1411, 4046.452, 165), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node226, "osd/gen/gen_torptower_emp.osd")
  Body_SetFriendOrFoeID(node226, 2)
  Node_EnterSimulation(node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("nod_turret", "mu_torptower_emp_2")
  Node_AddSon(node8, node227)
  Body_SetCS(node227, MAT_Vector3(1411, 4223.889, 165), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node227, "osd/gen/gen_torptower_emp.osd")
  Body_SetFriendOrFoeID(node227, 2)
  Node_EnterSimulation(node227)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("nod_turret", "mu_torptower_emp_3")
  Node_AddSon(node8, node228)
  Body_SetCS(node228, MAT_Vector3(1411, 4132.532, 165), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node228, "osd/gen/gen_torptower_emp.osd")
  Body_SetFriendOrFoeID(node228, 2)
  Node_EnterSimulation(node228)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("nod_laserwall", "mu_laserwall_1")
  Node_AddSon(node8, node229)
  Body_SetCS(node229, MAT_Vector3(1920, 4132, 106.7221), MAT_Vector3(-90, 0, 0))
  LaserWall_SetWallExtensionX(node229, 50)
  LaserWall_SetWallExtensionZ(node229, 50)
  Node_ParseIniFile(node229, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node229)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("nod_laserwall", "mu_laserwall_2")
  Node_AddSon(node8, node230)
  Body_SetCS(node230, MAT_Vector3(1405, 4132, 106.7221), MAT_Vector3(-90, 0, 0))
  LaserWall_SetWallExtensionX(node230, 50)
  LaserWall_SetWallExtensionZ(node230, 50)
  Node_ParseIniFile(node230, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node230)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Directory", "SHIPYARD")
  Node_AddSon(node8, node231)
  Node_EnterSimulation(node231)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("nod_generic", "atl_shipyard_t1")
  Node_AddSon(node8, node232)
  Body_SetCS(node232, MAT_Vector3(4714.508405, 1395, 117), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node232, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node232, 1)
  Body_SetNameKey(node232, -1)
  Body_SetCargoKey(node232, -1, 0)
  Body_SetCargoKey(node232, -1, 1)
  Body_SetCargoKey(node232, -1, 2)
  Node_EnterSimulation(node232)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("nod_generic", "atl_shipyard_t2")
  Node_AddSon(node8, node233)
  Body_SetCS(node233, MAT_Vector3(4014.507981, 1395, 117), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node233, "osd/atl/atl_shipyard.osd")
  Body_SetFriendOrFoeID(node233, 1)
  Body_SetNameKey(node233, -1)
  Body_SetCargoKey(node233, -1, 0)
  Body_SetCargoKey(node233, -1, 1)
  Body_SetCargoKey(node233, -1, 2)
  Node_EnterSimulation(node233)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("nod_generic", "atl_dock1_4_3")
  Node_AddSon(node8, node234)
  Body_SetCS(node234, MAT_Vector3(4362, 1155.17014, 129.159646), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node234, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node234, 1)
  Body_SetNameKey(node234, -1)
  Body_SetCargoKey(node234, -1, 0)
  Body_SetCargoKey(node234, -1, 1)
  Body_SetCargoKey(node234, -1, 2)
  Node_EnterSimulation(node234)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("nod_generic", "atl_dock1_4_4")
  Node_AddSon(node8, node235)
  Body_SetCS(node235, MAT_Vector3(4362, 1637.020419, 129.1596), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node235, "osd/atl/atl_dock1_4.osd")
  Body_SetFriendOrFoeID(node235, 1)
  Body_SetNameKey(node235, -1)
  Body_SetCargoKey(node235, -1, 0)
  Body_SetCargoKey(node235, -1, 1)
  Body_SetCargoKey(node235, -1, 2)
  Node_EnterSimulation(node235)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("nod_generic", "gen_vehiclestation_1")
  Node_AddSon(node8, node236)
  Body_SetCS(node236, MAT_Vector3(4664.811054, 1155, 121.294373), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node236, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node236, 1)
  Body_SetNameKey(node236, -1)
  Body_SetCargoKey(node236, -1, 0)
  Body_SetCargoKey(node236, -1, 1)
  Body_SetCargoKey(node236, -1, 2)
  Node_EnterSimulation(node236)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("nod_generic", "gen_vehiclestation_2")
  Node_AddSon(node8, node237)
  Body_SetCS(node237, MAT_Vector3(4662.449142, 1632, 121.2944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node237, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node237, 1)
  Body_SetNameKey(node237, -1)
  Body_SetCargoKey(node237, -1, 0)
  Body_SetCargoKey(node237, -1, 1)
  Body_SetCargoKey(node237, -1, 2)
  Node_EnterSimulation(node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("nod_generic", "gen_vehiclestation_3")
  Node_AddSon(node8, node238)
  Body_SetCS(node238, MAT_Vector3(4058.275938, 1155, 121.2944), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node238, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node238, 1)
  Body_SetNameKey(node238, -1)
  Body_SetCargoKey(node238, -1, 0)
  Body_SetCargoKey(node238, -1, 1)
  Body_SetCargoKey(node238, -1, 2)
  Node_EnterSimulation(node238)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("nod_generic", "gen_vehiclestation_4")
  Node_AddSon(node8, node239)
  Body_SetCS(node239, MAT_Vector3(4053.089512, 1632, 121.2944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node239, "osd/gen/gen_vehiclestation.osd")
  Body_SetFriendOrFoeID(node239, 1)
  Body_SetNameKey(node239, -1)
  Body_SetCargoKey(node239, -1, 0)
  Body_SetCargoKey(node239, -1, 1)
  Body_SetCargoKey(node239, -1, 2)
  Node_EnterSimulation(node239)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("nod_generic", "gen_shelter_docking_3")
  Node_AddSon(node8, node240)
  Body_SetCS(node240, MAT_Vector3(4220.947917, 1277.185105, 111.080859), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node240, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node240, 1)
  Body_SetNameKey(node240, -1)
  Body_SetCargoKey(node240, -1, 0)
  Body_SetCargoKey(node240, -1, 1)
  Body_SetCargoKey(node240, -1, 2)
  Node_EnterSimulation(node240)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("nod_generic", "gen_shelter_docking_4")
  Node_AddSon(node8, node241)
  Body_SetCS(node241, MAT_Vector3(4503.744354, 1518.12304, 111.0809), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node241, "osd/gen/gen_shelter_docking.osd")
  Body_SetFriendOrFoeID(node241, 1)
  Body_SetNameKey(node241, -1)
  Body_SetCargoKey(node241, -1, 0)
  Body_SetCargoKey(node241, -1, 1)
  Body_SetCargoKey(node241, -1, 2)
  Node_EnterSimulation(node241)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("nod_generic", "ship_shelter_1")
  Node_AddSon(node8, node242)
  Body_SetCS(node242, MAT_Vector3(4163.854591, 998.464318, 139.478846), MAT_Vector3(-89.877592, 0, 0))
  Node_ParseIniFile(node242, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node242, 1)
  Body_SetNameKey(node242, -1)
  Body_SetCargoKey(node242, -1, 0)
  Body_SetCargoKey(node242, -1, 1)
  Body_SetCargoKey(node242, -1, 2)
  Node_EnterSimulation(node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("nod_generic", "ship_shelter_2")
  Node_AddSon(node8, node243)
  Body_SetCS(node243, MAT_Vector3(4559.937548, 996.771376, 139.4788), MAT_Vector3(89.972737, 0, 0))
  Node_ParseIniFile(node243, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node243, 1)
  Body_SetNameKey(node243, -1)
  Body_SetCargoKey(node243, -1, 0)
  Body_SetCargoKey(node243, -1, 1)
  Body_SetCargoKey(node243, -1, 2)
  Node_EnterSimulation(node243)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("nod_generic", "atl_wblock3b_01_1")
  Node_AddSon(node8, node244)
  Body_SetCS(node244, MAT_Vector3(4822.463639, 1738.969231, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node244, "osd/atl/atl_wblock3b_01.osd")
  Body_SetFriendOrFoeID(node244, 1)
  Body_SetNameKey(node244, -1)
  Body_SetCargoKey(node244, -1, 0)
  Body_SetCargoKey(node244, -1, 1)
  Body_SetCargoKey(node244, -1, 2)
  Node_EnterSimulation(node244)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("nod_generic", "atl_wblock3b_02_1")
  Node_AddSon(node8, node245)
  Body_SetCS(node245, MAT_Vector3(4827.595329, 1055.520197, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node245, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node245, 1)
  Body_SetNameKey(node245, -1)
  Body_SetCargoKey(node245, -1, 0)
  Body_SetCargoKey(node245, -1, 1)
  Body_SetCargoKey(node245, -1, 2)
  Node_EnterSimulation(node245)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("nod_generic", "atl_wblock3b_03_1")
  Node_AddSon(node8, node246)
  Body_SetCS(node246, MAT_Vector3(3900.016983, 1055.52, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node246, "osd/atl/atl_wblock3b_03.osd")
  Body_SetFriendOrFoeID(node246, 1)
  Body_SetNameKey(node246, -1)
  Body_SetCargoKey(node246, -1, 0)
  Body_SetCargoKey(node246, -1, 1)
  Body_SetCargoKey(node246, -1, 2)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("nod_generic", "atl_wblock3b_02_2")
  Node_AddSon(node8, node247)
  Body_SetCS(node247, MAT_Vector3(3896.631662, 1742.74021, 120), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node247, "osd/atl/atl_wblock3b_02.osd")
  Body_SetFriendOrFoeID(node247, 1)
  Body_SetNameKey(node247, -1)
  Body_SetCargoKey(node247, -1, 0)
  Body_SetCargoKey(node247, -1, 1)
  Body_SetCargoKey(node247, -1, 2)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("nod_generic", "gen_fin_1")
  Node_AddSon(node8, node248)
  Body_SetCS(node248, MAT_Vector3(4740.055658, 1745, 142.60261), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node248, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node248, 1)
  Body_SetNameKey(node248, -1)
  Body_SetCargoKey(node248, -1, 0)
  Body_SetCargoKey(node248, -1, 1)
  Body_SetCargoKey(node248, -1, 2)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("nod_generic", "gen_fin_2")
  Node_AddSon(node8, node249)
  Body_SetCS(node249, MAT_Vector3(4749.503434, 1056, 142.6026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node249, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node249, 1)
  Body_SetNameKey(node249, -1)
  Body_SetCargoKey(node249, -1, 0)
  Body_SetCargoKey(node249, -1, 1)
  Body_SetCargoKey(node249, -1, 2)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("nod_generic", "gen_fin_3")
  Node_AddSon(node8, node250)
  Body_SetCS(node250, MAT_Vector3(3974, 1745, 142.6026), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node250, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node250, 1)
  Body_SetNameKey(node250, -1)
  Body_SetCargoKey(node250, -1, 0)
  Body_SetCargoKey(node250, -1, 1)
  Body_SetCargoKey(node250, -1, 2)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("nod_generic", "gen_fin_4")
  Node_AddSon(node8, node251)
  Body_SetCS(node251, MAT_Vector3(3974, 1056, 142.6026), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node251, "osd/gen/gen_fin.osd")
  Body_SetFriendOrFoeID(node251, 1)
  Body_SetNameKey(node251, -1)
  Body_SetCargoKey(node251, -1, 0)
  Body_SetCargoKey(node251, -1, 1)
  Body_SetCargoKey(node251, -1, 2)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_generic", "gen_quay_1")
  Node_AddSon(node8, node252)
  Body_SetCS(node252, MAT_Vector3(4080, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node252, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node252, 1)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
  Game_LoadProgress_Advance(node0)
  node253 = Node_CreateNode("nod_generic", "gen_quay_2")
  Node_AddSon(node8, node253)
  Body_SetCS(node253, MAT_Vector3(4652, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node253, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node253, 1)
  Body_SetNameKey(node253, -1)
  Body_SetCargoKey(node253, -1, 0)
  Body_SetCargoKey(node253, -1, 1)
  Body_SetCargoKey(node253, -1, 2)
  Node_EnterSimulation(node253)
  Game_LoadProgress_Advance(node0)
  node254 = Node_CreateNode("nod_generic", "gen_quay_3")
  Node_AddSon(node8, node254)
  Body_SetCS(node254, MAT_Vector3(4367, 1918, 130), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node254, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node254, 1)
  Body_SetNameKey(node254, -1)
  Body_SetCargoKey(node254, -1, 0)
  Body_SetCargoKey(node254, -1, 1)
  Body_SetCargoKey(node254, -1, 2)
  Node_EnterSimulation(node254)
  Game_LoadProgress_Advance(node0)
  node255 = Node_CreateNode("nod_generic", "gen_quay_4")
  Node_AddSon(node8, node255)
  Body_SetCS(node255, MAT_Vector3(3780, 1400, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node255, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node255, 1)
  Body_SetNameKey(node255, -1)
  Body_SetCargoKey(node255, -1, 0)
  Body_SetCargoKey(node255, -1, 1)
  Body_SetCargoKey(node255, -1, 2)
  Node_EnterSimulation(node255)
  Game_LoadProgress_Advance(node0)
  node256 = Node_CreateNode("nod_generic", "gen_quay_5")
  Node_AddSon(node8, node256)
  Body_SetCS(node256, MAT_Vector3(3780, 1745, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node256, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node256, 1)
  Body_SetNameKey(node256, -1)
  Body_SetCargoKey(node256, -1, 0)
  Body_SetCargoKey(node256, -1, 1)
  Body_SetCargoKey(node256, -1, 2)
  Node_EnterSimulation(node256)
  Game_LoadProgress_Advance(node0)
  node257 = Node_CreateNode("nod_generic", "gen_quay_6")
  Node_AddSon(node8, node257)
  Body_SetCS(node257, MAT_Vector3(3780, 1060, 130), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node257, "osd/gen/gen_quay.osd")
  Body_SetFriendOrFoeID(node257, 1)
  Body_SetNameKey(node257, -1)
  Body_SetCargoKey(node257, -1, 0)
  Body_SetCargoKey(node257, -1, 1)
  Body_SetCargoKey(node257, -1, 2)
  Node_EnterSimulation(node257)
  Game_LoadProgress_Advance(node0)
  node258 = Node_CreateNode("nod_generic", "ship_rohr_small03_1")
  Node_AddSon(node8, node258)
  Body_SetCS(node258, MAT_Vector3(4546.180578, 1574, 123.969859), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node258, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node258, 1)
  Body_SetNameKey(node258, -1)
  Body_SetCargoKey(node258, -1, 0)
  Body_SetCargoKey(node258, -1, 1)
  Body_SetCargoKey(node258, -1, 2)
  Node_EnterSimulation(node258)
  Game_LoadProgress_Advance(node0)
  node259 = Node_CreateNode("nod_generic", "ship_rohr_small03_2")
  Node_AddSon(node8, node259)
  Body_SetCS(node259, MAT_Vector3(4183.49996, 1574, 123.9699), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node259, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node259, 1)
  Body_SetNameKey(node259, -1)
  Body_SetCargoKey(node259, -1, 0)
  Body_SetCargoKey(node259, -1, 1)
  Body_SetCargoKey(node259, -1, 2)
  Node_EnterSimulation(node259)
  Game_LoadProgress_Advance(node0)
  node260 = Node_CreateNode("nod_generic", "ship_rohr_small03_3")
  Node_AddSon(node8, node260)
  Body_SetCS(node260, MAT_Vector3(4546.181, 1216, 123.9699), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node260, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node260, 1)
  Body_SetNameKey(node260, -1)
  Body_SetCargoKey(node260, -1, 0)
  Body_SetCargoKey(node260, -1, 1)
  Body_SetCargoKey(node260, -1, 2)
  Node_EnterSimulation(node260)
  Game_LoadProgress_Advance(node0)
  node261 = Node_CreateNode("nod_generic", "ship_rohr_small03_4")
  Node_AddSon(node8, node261)
  Body_SetCS(node261, MAT_Vector3(4183.220205, 1216, 123.9699), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node261, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node261, 1)
  Body_SetNameKey(node261, -1)
  Body_SetCargoKey(node261, -1, 0)
  Body_SetCargoKey(node261, -1, 1)
  Body_SetCargoKey(node261, -1, 2)
  Node_EnterSimulation(node261)
  Game_LoadProgress_Advance(node0)
  node262 = Node_CreateNode("nod_generic", "ship_rohr_small03_6")
  Node_AddSon(node8, node262)
  Body_SetCS(node262, MAT_Vector3(3891.503318, 2089.952901, 124.225401), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node262, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node262, 1)
  Body_SetNameKey(node262, -1)
  Body_SetCargoKey(node262, -1, 0)
  Body_SetCargoKey(node262, -1, 1)
  Body_SetCargoKey(node262, -1, 2)
  Node_EnterSimulation(node262)
  Game_LoadProgress_Advance(node0)
  node263 = Node_CreateNode("nod_generic", "ship_rohr_small03_7")
  Node_AddSon(node8, node263)
  Body_SetCS(node263, MAT_Vector3(3891.253527, 1854.315187, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node263, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node263, 1)
  Body_SetNameKey(node263, -1)
  Body_SetCargoKey(node263, -1, 0)
  Body_SetCargoKey(node263, -1, 1)
  Body_SetCargoKey(node263, -1, 2)
  Node_EnterSimulation(node263)
  Game_LoadProgress_Advance(node0)
  node264 = Node_CreateNode("nod_generic", "ship_rohr_small03_8")
  Node_AddSon(node8, node264)
  Body_SetCS(node264, MAT_Vector3(3905.772541, 2088.27423, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node264, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node264, 1)
  Body_SetNameKey(node264, -1)
  Body_SetCargoKey(node264, -1, 0)
  Body_SetCargoKey(node264, -1, 1)
  Body_SetCargoKey(node264, -1, 2)
  Node_EnterSimulation(node264)
  Game_LoadProgress_Advance(node0)
  node265 = Node_CreateNode("nod_generic", "ship_rohr_small03_9")
  Node_AddSon(node8, node265)
  Body_SetCS(node265, MAT_Vector3(3905.803336, 1853.19582, 124.2254), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node265, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node265, 1)
  Body_SetNameKey(node265, -1)
  Body_SetCargoKey(node265, -1, 0)
  Body_SetCargoKey(node265, -1, 1)
  Body_SetCargoKey(node265, -1, 2)
  Node_EnterSimulation(node265)
  Game_LoadProgress_Advance(node0)
  node266 = Node_CreateNode("nod_generic", "ship_rohr_small03_10")
  Node_AddSon(node8, node266)
  Body_SetCS(node266, MAT_Vector3(4248.124075, 1917.071001, 129.738865), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node266, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node266, 1)
  Body_SetNameKey(node266, -1)
  Body_SetCargoKey(node266, -1, 0)
  Body_SetCargoKey(node266, -1, 1)
  Body_SetCargoKey(node266, -1, 2)
  Node_EnterSimulation(node266)
  Game_LoadProgress_Advance(node0)
  node267 = Node_CreateNode("nod_generic", "ship_rohr_small03_11")
  Node_AddSon(node8, node267)
  Body_SetCS(node267, MAT_Vector3(4510.290291, 1917.071, 129.7389), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node267, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node267, 1)
  Body_SetNameKey(node267, -1)
  Body_SetCargoKey(node267, -1, 0)
  Body_SetCargoKey(node267, -1, 1)
  Body_SetCargoKey(node267, -1, 2)
  Node_EnterSimulation(node267)
  Game_LoadProgress_Advance(node0)
  node268 = Node_CreateNode("nod_generic", "ship_rohr_small03_12")
  Node_AddSon(node8, node268)
  Body_SetCS(node268, MAT_Vector3(3780.47573, 1560.43037, 129.7389), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node268, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node268, 1)
  Body_SetNameKey(node268, -1)
  Body_SetCargoKey(node268, -1, 0)
  Body_SetCargoKey(node268, -1, 1)
  Body_SetCargoKey(node268, -1, 2)
  Node_EnterSimulation(node268)
  Game_LoadProgress_Advance(node0)
  node269 = Node_CreateNode("nod_generic", "ship_rohr_small03_13")
  Node_AddSon(node8, node269)
  Body_SetCS(node269, MAT_Vector3(3781.656929, 1215.598662, 129.7389), MAT_Vector3(180, 0, 0))
  Node_ParseIniFile(node269, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node269, 1)
  Body_SetNameKey(node269, -1)
  Body_SetCargoKey(node269, -1, 0)
  Body_SetCargoKey(node269, -1, 1)
  Body_SetCargoKey(node269, -1, 2)
  Node_EnterSimulation(node269)
  Game_LoadProgress_Advance(node0)
  node270 = Node_CreateNode("nod_generic", "ship_rohr_small03_14")
  Node_AddSon(node8, node270)
  Body_SetCS(node270, MAT_Vector3(4370.702894, 2165.181605, 106.660696), MAT_Vector3(-123.64702, 0, 0))
  Node_ParseIniFile(node270, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node270, 1)
  Body_SetNameKey(node270, -1)
  Body_SetCargoKey(node270, -1, 0)
  Body_SetCargoKey(node270, -1, 1)
  Body_SetCargoKey(node270, -1, 2)
  Node_EnterSimulation(node270)
  Game_LoadProgress_Advance(node0)
  node271 = Node_CreateNode("nod_generic", "ship_rohr_small03_15")
  Node_AddSon(node8, node271)
  Body_SetCS(node271, MAT_Vector3(4338.542448, 2112.709521, 101.571348), MAT_Vector3(-98.292162, 0, 0))
  Node_ParseIniFile(node271, "osd/gen/gen_rohr_small03.osd")
  Body_SetFriendOrFoeID(node271, 1)
  Body_SetNameKey(node271, -1)
  Body_SetCargoKey(node271, -1, 0)
  Body_SetCargoKey(node271, -1, 1)
  Body_SetCargoKey(node271, -1, 2)
  Node_EnterSimulation(node271)
  Game_LoadProgress_Advance(node0)
  node272 = Node_CreateNode("nod_generic", "ship_rohr_small02_1")
  Node_AddSon(node8, node272)
  Body_SetCS(node272, MAT_Vector3(4425.913635, 2177.871319, 113.692655), MAT_Vector3(40.547853, 0, 0))
  Node_ParseIniFile(node272, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node272, 0)
  Body_SetNameKey(node272, -1)
  Body_SetCargoKey(node272, -1, 0)
  Body_SetCargoKey(node272, -1, 1)
  Body_SetCargoKey(node272, -1, 2)
  Node_EnterSimulation(node272)
  Game_LoadProgress_Advance(node0)
  node273 = Node_CreateNode("nod_generic", "ship_rohr_small02_2")
  Node_AddSon(node8, node273)
  Body_SetCS(node273, MAT_Vector3(4404.712252, 2040.580777, 113.6927), MAT_Vector3(125.495263, 0, 0))
  Node_ParseIniFile(node273, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node273, 0)
  Body_SetNameKey(node273, -1)
  Body_SetCargoKey(node273, -1, 0)
  Body_SetCargoKey(node273, -1, 1)
  Body_SetCargoKey(node273, -1, 2)
  Node_EnterSimulation(node273)
  Game_LoadProgress_Advance(node0)
  node274 = Node_CreateNode("nod_generic", "ship_rohr_small02_3")
  Node_AddSon(node8, node274)
  Body_SetCS(node274, MAT_Vector3(4230.367957, 1994.879163, 113.6927), MAT_Vector3(89.768878, 0, 0))
  Node_ParseIniFile(node274, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node274, 0)
  Body_SetNameKey(node274, -1)
  Body_SetCargoKey(node274, -1, 0)
  Body_SetCargoKey(node274, -1, 1)
  Body_SetCargoKey(node274, -1, 2)
  Node_EnterSimulation(node274)
  Game_LoadProgress_Advance(node0)
  node275 = Node_CreateNode("nod_generic", "ship_rohr_small02_4")
  Node_AddSon(node8, node275)
  Body_SetCS(node275, MAT_Vector3(4039.09735, 2011.805606, 117.085602), MAT_Vector3(-179.60493, 0, 0))
  Node_ParseIniFile(node275, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node275, 0)
  Body_SetNameKey(node275, -1)
  Body_SetCargoKey(node275, -1, 0)
  Body_SetCargoKey(node275, -1, 1)
  Body_SetCargoKey(node275, -1, 2)
  Node_EnterSimulation(node275)
  Game_LoadProgress_Advance(node0)
  node276 = Node_CreateNode("nod_generic", "ship_rohr_small02_5")
  Node_AddSon(node8, node276)
  Body_SetCS(node276, MAT_Vector3(4135.578655, 2030.425267, 113.6927), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node276, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node276, 0)
  Body_SetNameKey(node276, -1)
  Body_SetCargoKey(node276, -1, 0)
  Body_SetCargoKey(node276, -1, 1)
  Body_SetCargoKey(node276, -1, 2)
  Node_EnterSimulation(node276)
  Game_LoadProgress_Advance(node0)
  node277 = Node_CreateNode("nod_generic", "ship_rohr_small02_6")
  Node_AddSon(node8, node277)
  Body_SetCS(node277, MAT_Vector3(4086.491842, 2033.810321, 107.755122), MAT_Vector3(-179.6049, 0, 0))
  Node_ParseIniFile(node277, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node277, 0)
  Body_SetNameKey(node277, -1)
  Body_SetCargoKey(node277, -1, 0)
  Body_SetCargoKey(node277, -1, 1)
  Body_SetCargoKey(node277, -1, 2)
  Node_EnterSimulation(node277)
  Game_LoadProgress_Advance(node0)
  node278 = Node_CreateNode("nod_generic", "ship_rohr_small02_7")
  Node_AddSon(node8, node278)
  Body_SetCS(node278, MAT_Vector3(3651.625453, 1926.872224, 113.268565), MAT_Vector3(-134.910811, 0, 0))
  Node_ParseIniFile(node278, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node278, 0)
  Body_SetNameKey(node278, -1)
  Body_SetCargoKey(node278, -1, 0)
  Body_SetCargoKey(node278, -1, 1)
  Body_SetCargoKey(node278, -1, 2)
  Node_EnterSimulation(node278)
  Game_LoadProgress_Advance(node0)
  node279 = Node_CreateNode("nod_generic", "ship_rohr_small02_8")
  Node_AddSon(node8, node279)
  Body_SetCS(node279, MAT_Vector3(3598.483184, 1806.417218, 113.2686), MAT_Vector3(-91.267317, 0, 0))
  Node_ParseIniFile(node279, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node279, 0)
  Body_SetNameKey(node279, -1)
  Body_SetCargoKey(node279, -1, 0)
  Body_SetCargoKey(node279, -1, 1)
  Body_SetCargoKey(node279, -1, 2)
  Node_EnterSimulation(node279)
  Game_LoadProgress_Advance(node0)
  node280 = Node_CreateNode("nod_generic", "ship_rohr_small02_9")
  Node_AddSon(node8, node280)
  Body_SetCS(node280, MAT_Vector3(3687.052693, 1556.060001, 113.2686), MAT_Vector3(-128.16026, 0, 0))
  Node_ParseIniFile(node280, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node280, 0)
  Body_SetNameKey(node280, -1)
  Body_SetCargoKey(node280, -1, 0)
  Body_SetCargoKey(node280, -1, 1)
  Body_SetCargoKey(node280, -1, 2)
  Node_EnterSimulation(node280)
  Game_LoadProgress_Advance(node0)
  node281 = Node_CreateNode("nod_generic", "ship_rohr_small02_10")
  Node_AddSon(node8, node281)
  Body_SetCS(node281, MAT_Vector3(3662.253486, 1524.174911, 113.2686), MAT_Vector3(-128.1603, 0, 0))
  Node_ParseIniFile(node281, "osd/gen/gen_rohr_small02.osd")
  Body_SetFriendOrFoeID(node281, 0)
  Body_SetNameKey(node281, -1)
  Body_SetCargoKey(node281, -1, 0)
  Body_SetCargoKey(node281, -1, 1)
  Body_SetCargoKey(node281, -1, 2)
  Node_EnterSimulation(node281)
  Game_LoadProgress_Advance(node0)
  node282 = Node_CreateNode("nod_generic", "ship_rohr_small01_1")
  Node_AddSon(node8, node282)
  Body_SetCS(node282, MAT_Vector3(4016.015228, 1199.338745, 127.129695), MAT_Vector3(-134.967975, 0, 0))
  Node_ParseIniFile(node282, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node282, 1)
  Body_SetNameKey(node282, -1)
  Body_SetCargoKey(node282, -1, 0)
  Body_SetCargoKey(node282, -1, 1)
  Body_SetCargoKey(node282, -1, 2)
  Node_EnterSimulation(node282)
  Game_LoadProgress_Advance(node0)
  node283 = Node_CreateNode("nod_generic", "ship_rohr_small01_2")
  Node_AddSon(node8, node283)
  Body_SetCS(node283, MAT_Vector3(4008.894418, 1583.654475, 127.1297), MAT_Vector3(-43.679705, 0, 0))
  Node_ParseIniFile(node283, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node283, 1)
  Body_SetNameKey(node283, -1)
  Body_SetCargoKey(node283, -1, 0)
  Body_SetCargoKey(node283, -1, 1)
  Body_SetCargoKey(node283, -1, 2)
  Node_EnterSimulation(node283)
  Game_LoadProgress_Advance(node0)
  node284 = Node_CreateNode("nod_generic", "ship_rohr_small01_3")
  Node_AddSon(node8, node284)
  Body_SetCS(node284, MAT_Vector3(4691.506525, 1599.674012, 127.1297), MAT_Vector3(-134.968, 0, 0))
  Node_ParseIniFile(node284, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node284, 1)
  Body_SetNameKey(node284, -1)
  Body_SetCargoKey(node284, -1, 0)
  Body_SetCargoKey(node284, -1, 1)
  Body_SetCargoKey(node284, -1, 2)
  Node_EnterSimulation(node284)
  Game_LoadProgress_Advance(node0)
  node285 = Node_CreateNode("nod_generic", "ship_rohr_small01_4")
  Node_AddSon(node8, node285)
  Body_SetCS(node285, MAT_Vector3(4698.556676, 1192.766422, 127.1297), MAT_Vector3(-43.6797, 0, 0))
  Node_ParseIniFile(node285, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node285, 1)
  Body_SetNameKey(node285, -1)
  Body_SetCargoKey(node285, -1, 0)
  Body_SetCargoKey(node285, -1, 1)
  Body_SetCargoKey(node285, -1, 2)
  Node_EnterSimulation(node285)
  Game_LoadProgress_Advance(node0)
  node286 = Node_CreateNode("nod_generic", "ship_rohr_small01_9")
  Node_AddSon(node8, node286)
  Body_SetCS(node286, MAT_Vector3(4798.8115, 1204.31793, 127.1297), MAT_Vector3(46.391617, 0, 0))
  Node_ParseIniFile(node286, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node286, 1)
  Body_SetNameKey(node286, -1)
  Body_SetCargoKey(node286, -1, 0)
  Body_SetCargoKey(node286, -1, 1)
  Body_SetCargoKey(node286, -1, 2)
  Node_EnterSimulation(node286)
  Game_LoadProgress_Advance(node0)
  node287 = Node_CreateNode("nod_generic", "ship_rohr_small01_10")
  Node_AddSon(node8, node287)
  Body_SetCS(node287, MAT_Vector3(4797.599427, 1591.264677, 127.1297), MAT_Vector3(-37.60551, 0, 0))
  Node_ParseIniFile(node287, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node287, 1)
  Body_SetNameKey(node287, -1)
  Body_SetCargoKey(node287, -1, 0)
  Body_SetCargoKey(node287, -1, 1)
  Body_SetCargoKey(node287, -1, 2)
  Node_EnterSimulation(node287)
  Game_LoadProgress_Advance(node0)
  node288 = Node_CreateNode("nod_generic", "ship_rohr_small01_11")
  Node_AddSon(node8, node288)
  Body_SetCS(node288, MAT_Vector3(4809.122147, 1055.480991, 136.340506), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node288, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node288, 1)
  Body_SetNameKey(node288, -1)
  Body_SetCargoKey(node288, -1, 0)
  Body_SetCargoKey(node288, -1, 1)
  Body_SetCargoKey(node288, -1, 2)
  Node_EnterSimulation(node288)
  Game_LoadProgress_Advance(node0)
  node289 = Node_CreateNode("nod_generic", "ship_rohr_small01_12")
  Node_AddSon(node8, node289)
  Body_SetCS(node289, MAT_Vector3(4797.171335, 1744.786384, 136.3405), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node289, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node289, 1)
  Body_SetNameKey(node289, -1)
  Body_SetCargoKey(node289, -1, 0)
  Body_SetCargoKey(node289, -1, 1)
  Body_SetCargoKey(node289, -1, 2)
  Node_EnterSimulation(node289)
  Game_LoadProgress_Advance(node0)
  node290 = Node_CreateNode("nod_generic", "ship_rohr_small01_13")
  Node_AddSon(node8, node290)
  Body_SetCS(node290, MAT_Vector3(3914.886584, 1745.198737, 136.3405), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node290, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node290, 1)
  Body_SetNameKey(node290, -1)
  Body_SetCargoKey(node290, -1, 0)
  Body_SetCargoKey(node290, -1, 1)
  Body_SetCargoKey(node290, -1, 2)
  Node_EnterSimulation(node290)
  Game_LoadProgress_Advance(node0)
  node291 = Node_CreateNode("nod_generic", "ship_rohr_small01_14")
  Node_AddSon(node8, node291)
  Body_SetCS(node291, MAT_Vector3(3915.455828, 1056.128221, 136.3405), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node291, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node291, 1)
  Body_SetNameKey(node291, -1)
  Body_SetCargoKey(node291, -1, 0)
  Body_SetCargoKey(node291, -1, 1)
  Body_SetCargoKey(node291, -1, 2)
  Node_EnterSimulation(node291)
  Game_LoadProgress_Advance(node0)
  node292 = Node_CreateNode("nod_generic", "ship_rohr_small01_15")
  Node_AddSon(node8, node292)
  Body_SetCS(node292, MAT_Vector3(3923.695064, 1201.135522, 126.692385), MAT_Vector3(136.62177, 0, 0))
  Node_ParseIniFile(node292, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node292, 1)
  Body_SetNameKey(node292, -1)
  Body_SetCargoKey(node292, -1, 0)
  Body_SetCargoKey(node292, -1, 1)
  Body_SetCargoKey(node292, -1, 2)
  Node_EnterSimulation(node292)
  Game_LoadProgress_Advance(node0)
  node293 = Node_CreateNode("nod_generic", "ship_rohr_small01_16")
  Node_AddSon(node8, node293)
  Body_SetCS(node293, MAT_Vector3(3920.399375, 1595.787153, 126.6924), MAT_Vector3(37.794977, 0, 0))
  Node_ParseIniFile(node293, "osd/gen/gen_rohr_small01.osd")
  Body_SetFriendOrFoeID(node293, 1)
  Body_SetNameKey(node293, -1)
  Body_SetCargoKey(node293, -1, 0)
  Body_SetCargoKey(node293, -1, 1)
  Body_SetCargoKey(node293, -1, 2)
  Node_EnterSimulation(node293)
  Game_LoadProgress_Advance(node0)
  node294 = Node_CreateNode("nod_generic", "ship_gangway03_1")
  Node_AddSon(node8, node294)
  Body_SetCS(node294, MAT_Vector3(4181.629465, 1215.936123, 151.822944), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node294, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node294, 1)
  Body_SetNameKey(node294, -1)
  Body_SetCargoKey(node294, -1, 0)
  Body_SetCargoKey(node294, -1, 1)
  Body_SetCargoKey(node294, -1, 2)
  Node_EnterSimulation(node294)
  Game_LoadProgress_Advance(node0)
  node295 = Node_CreateNode("nod_generic", "ship_gangway03_2")
  Node_AddSon(node8, node295)
  Body_SetCS(node295, MAT_Vector3(4181.629, 1215.936, 174.327792), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node295, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node295, 1)
  Body_SetNameKey(node295, -1)
  Body_SetCargoKey(node295, -1, 0)
  Body_SetCargoKey(node295, -1, 1)
  Body_SetCargoKey(node295, -1, 2)
  Node_EnterSimulation(node295)
  Game_LoadProgress_Advance(node0)
  node296 = Node_CreateNode("nod_generic", "ship_gangway03_3")
  Node_AddSon(node8, node296)
  Body_SetCS(node296, MAT_Vector3(4181.629, 1574.936, 151.8229), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node296, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node296, 1)
  Body_SetNameKey(node296, -1)
  Body_SetCargoKey(node296, -1, 0)
  Body_SetCargoKey(node296, -1, 1)
  Body_SetCargoKey(node296, -1, 2)
  Node_EnterSimulation(node296)
  Game_LoadProgress_Advance(node0)
  node297 = Node_CreateNode("nod_generic", "ship_gangway03_4")
  Node_AddSon(node8, node297)
  Body_SetCS(node297, MAT_Vector3(4181.629, 1574.936, 174.3278), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node297, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node297, 1)
  Body_SetNameKey(node297, -1)
  Body_SetCargoKey(node297, -1, 0)
  Body_SetCargoKey(node297, -1, 1)
  Body_SetCargoKey(node297, -1, 2)
  Node_EnterSimulation(node297)
  Game_LoadProgress_Advance(node0)
  node298 = Node_CreateNode("nod_generic", "ship_gangway03_5")
  Node_AddSon(node8, node298)
  Body_SetCS(node298, MAT_Vector3(4549.629, 1215.936, 151.8229), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node298, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node298, 1)
  Body_SetNameKey(node298, -1)
  Body_SetCargoKey(node298, -1, 0)
  Body_SetCargoKey(node298, -1, 1)
  Body_SetCargoKey(node298, -1, 2)
  Node_EnterSimulation(node298)
  Game_LoadProgress_Advance(node0)
  node299 = Node_CreateNode("nod_generic", "ship_gangway03_6")
  Node_AddSon(node8, node299)
  Body_SetCS(node299, MAT_Vector3(4549.629, 1215.936, 174.3278), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node299, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node299, 1)
  Body_SetNameKey(node299, -1)
  Body_SetCargoKey(node299, -1, 0)
  Body_SetCargoKey(node299, -1, 1)
  Body_SetCargoKey(node299, -1, 2)
  Node_EnterSimulation(node299)
  Game_LoadProgress_Advance(node0)
  node300 = Node_CreateNode("nod_generic", "ship_gangway03_7")
  Node_AddSon(node8, node300)
  Body_SetCS(node300, MAT_Vector3(4549.629, 1574.936, 151.8229), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node300, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node300, 1)
  Body_SetNameKey(node300, -1)
  Body_SetCargoKey(node300, -1, 0)
  Body_SetCargoKey(node300, -1, 1)
  Body_SetCargoKey(node300, -1, 2)
  Node_EnterSimulation(node300)
  Game_LoadProgress_Advance(node0)
  node301 = Node_CreateNode("nod_generic", "ship_gangway03_8")
  Node_AddSon(node8, node301)
  Body_SetCS(node301, MAT_Vector3(4549.629, 1574.936, 174.3278), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node301, "osd/gen/gen_gangway03.osd")
  Body_SetFriendOrFoeID(node301, 1)
  Body_SetNameKey(node301, -1)
  Body_SetCargoKey(node301, -1, 0)
  Body_SetCargoKey(node301, -1, 1)
  Body_SetCargoKey(node301, -1, 2)
  Node_EnterSimulation(node301)
  Game_LoadProgress_Advance(node0)
  node302 = Node_CreateNode("nod_generic", "ship_hetank_des_1")
  Node_AddSon(node8, node302)
  Body_SetCS(node302, MAT_Vector3(4156.629378, 1315.741304, 124.747408), MAT_Vector3(-22.050439, 0, 0))
  Node_ParseIniFile(node302, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node302, 1)
  Body_SetNameKey(node302, -1)
  Body_SetCargoKey(node302, -1, 0)
  Body_SetCargoKey(node302, -1, 1)
  Body_SetCargoKey(node302, -1, 2)
  Node_EnterSimulation(node302)
  Game_LoadProgress_Advance(node0)
  node303 = Node_CreateNode("nod_generic", "ship_hetank_des_2")
  Node_AddSon(node8, node303)
  Body_SetCS(node303, MAT_Vector3(4156.147334, 1258.318764, 124.7474), MAT_Vector3(70.572365, 0, 0))
  Node_ParseIniFile(node303, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node303, 1)
  Body_SetNameKey(node303, -1)
  Body_SetCargoKey(node303, -1, 0)
  Body_SetCargoKey(node303, -1, 1)
  Body_SetCargoKey(node303, -1, 2)
  Node_EnterSimulation(node303)
  Game_LoadProgress_Advance(node0)
  node304 = Node_CreateNode("nod_generic", "ship_hetank_des_3")
  Node_AddSon(node8, node304)
  Body_SetCS(node304, MAT_Vector3(4570.653163, 1542.922947, 124.7474), MAT_Vector3(70.57237, 0, 0))
  Node_ParseIniFile(node304, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node304, 1)
  Body_SetNameKey(node304, -1)
  Body_SetCargoKey(node304, -1, 0)
  Body_SetCargoKey(node304, -1, 1)
  Body_SetCargoKey(node304, -1, 2)
  Node_EnterSimulation(node304)
  Game_LoadProgress_Advance(node0)
  node305 = Node_CreateNode("nod_generic", "ship_hetank_des_4")
  Node_AddSon(node8, node305)
  Body_SetCS(node305, MAT_Vector3(4572.61382, 1486.195722, 124.7474), MAT_Vector3(121.559453, 0, 0))
  Node_ParseIniFile(node305, "osd/gen/gen_hetank_des.osd")
  Body_SetFriendOrFoeID(node305, 1)
  Body_SetNameKey(node305, -1)
  Body_SetCargoKey(node305, -1, 0)
  Body_SetCargoKey(node305, -1, 1)
  Body_SetCargoKey(node305, -1, 2)
  Node_EnterSimulation(node305)
  Game_LoadProgress_Advance(node0)
  node306 = Node_CreateNode("nod_fx_plant", "org_grass_s_1")
  Node_AddSon(node8, node306)
  Node_ParseIniFile(node306, "osd/fx_plant/org_grass_s.osd")
  FX_Plant_SetMap(node306, "map/5H1/Terrain/org_grass_s.tga")
  Node_EnterSimulation(node306)
  Game_LoadProgress_Advance(node0)
  node307 = Node_CreateNode("nod_fx_plant", "org_stone_s_1")
  Node_AddSon(node8, node307)
  Node_ParseIniFile(node307, "osd/fx_plant/org_stone_s.osd")
  FX_Plant_SetMap(node307, "map/5H1/Terrain/org_stone_s.tga")
  Node_EnterSimulation(node307)
  Game_LoadProgress_Advance(node0)
  node308 = Node_CreateNode("nod_fx_plant", "org_seetang_1")
  Node_AddSon(node8, node308)
  Node_ParseIniFile(node308, "osd/fx_plant/org_seetang.osd")
  FX_Plant_SetMap(node308, "map/5H1/Terrain/org_seetang.tga")
  Node_EnterSimulation(node308)
  Game_LoadProgress_Advance(node0)
  node309 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node309)
  Node_EnterSimulation(node309)
  Game_LoadProgress_Advance(node0)
  node310 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node309, node310)
  Node_EnterSimulation(node310)
  Game_LoadProgress_Advance(node0)
  node311 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node309, node311)
  Node_EnterSimulation(node311)
  Game_LoadProgress_Advance(node0)
  node312 = Node_CreateNode("NOD_PatrolArea", "NeopolisTraffic_Area")
  Node_AddSon(node311, node312)
  PatrolArea_SetPosition(node312, MAT_Vector3(2301.450416, 3485.739169, 400))
  PatrolArea_SetRadius(node312, 1400)
  PatrolArea_SetMinZ(node312, -60)
  PatrolArea_SetMaxZ(node312, 25)
  Game_LoadProgress_Advance(node0)
  node313 = Node_CreateNode("NOD_PatrolArea", "dmNeopolis_South_Area")
  Node_AddSon(node311, node313)
  PatrolArea_SetPosition(node313, MAT_Vector3(1105.234867, 2941.952278, 252.665984))
  PatrolArea_SetRadius(node313, 150)
  PatrolArea_SetMinZ(node313, 0)
  PatrolArea_SetMaxZ(node313, 75)
  Game_LoadProgress_Advance(node0)
  node314 = Node_CreateNode("NOD_Path", "dmNeopolis_South_DockPath")
  Node_AddSon(node311, node314)
  Game_LoadProgress_Advance(node0)
  node315 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node314, node315)
  Position_SetPosition(node315, MAT_Vector3(1104, 2745.409483, 313))
  Position_SetRadius(node315, 5)
  Game_LoadProgress_Advance(node0)
  node316 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node314, node316)
  Position_SetPosition(node316, MAT_Vector3(1104, 2675, 313))
  Position_SetRadius(node316, 5)
  Game_LoadProgress_Advance(node0)
  node317 = Node_CreateNode("NOD_Path", "dmNeopolis_South_ApproachPath")
  Node_AddSon(node311, node317)
  Game_LoadProgress_Advance(node0)
  node318 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node317, node318)
  Position_SetPosition(node318, MAT_Vector3(1104.01523, 2841.110637, 313))
  Position_SetRadius(node318, 5)
  Game_LoadProgress_Advance(node0)
  node319 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node317, node319)
  Position_SetPosition(node319, MAT_Vector3(1104.295025, 2774.119344, 313))
  Position_SetRadius(node319, 5)
  Game_LoadProgress_Advance(node0)
  node320 = Node_CreateNode("NOD_Path", "Buggy1Path_1")
  Node_AddSon(node311, node320)
  Game_LoadProgress_Advance(node0)
  node321 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node320, node321)
  Position_SetPosition(node321, MAT_Vector3(938.955847, 3982.801061, 203))
  Position_SetRadius(node321, 5)
  Game_LoadProgress_Advance(node0)
  node322 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node320, node322)
  Position_SetPosition(node322, MAT_Vector3(938.955847, 4084.965452, 203))
  Position_SetRadius(node322, 5)
  Game_LoadProgress_Advance(node0)
  node323 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node320, node323)
  Position_SetPosition(node323, MAT_Vector3(938.955847, 4192.897186, 203))
  Position_SetRadius(node323, 5)
  Game_LoadProgress_Advance(node0)
  node324 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node320, node324)
  Position_SetPosition(node324, MAT_Vector3(939.064844, 4084.81314, 203))
  Position_SetRadius(node324, 5)
  Game_LoadProgress_Advance(node0)
  node325 = Node_CreateNode("NOD_Path", "EerieToMuseumPath_1")
  Node_AddSon(node311, node325)
  Game_LoadProgress_Advance(node0)
  node326 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node325, node326)
  Position_SetPosition(node326, MAT_Vector3(1088.14754, 3444.333975, 335))
  Position_SetRadius(node326, 5)
  Game_LoadProgress_Advance(node0)
  node327 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node325, node327)
  Position_SetPosition(node327, MAT_Vector3(1087.324094, 3536.611514, 350))
  Position_SetRadius(node327, 5)
  Game_LoadProgress_Advance(node0)
  node328 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node325, node328)
  Position_SetPosition(node328, MAT_Vector3(1265.053365, 3758.350541, 350))
  Position_SetRadius(node328, 5)
  Game_LoadProgress_Advance(node0)
  node329 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node325, node329)
  Position_SetPosition(node329, MAT_Vector3(1266.746261, 3925.924098, 350))
  Position_SetRadius(node329, 5)
  Game_LoadProgress_Advance(node0)
  node330 = Node_CreateNode("NOD_Path", "EerieToRetreatPath_1")
  Node_AddSon(node311, node330)
  Game_LoadProgress_Advance(node0)
  node331 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node330, node331)
  Position_SetPosition(node331, MAT_Vector3(1237.613727, 3823.883713, 335))
  Position_SetRadius(node331, 5)
  Game_LoadProgress_Advance(node0)
  node332 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node330, node332)
  Position_SetPosition(node332, MAT_Vector3(1211.32157, 3567.31616, 350))
  Position_SetRadius(node332, 5)
  Game_LoadProgress_Advance(node0)
  node333 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node330, node333)
  Position_SetPosition(node333, MAT_Vector3(1169.397732, 3339.12112, 350))
  Position_SetRadius(node333, 5)
  Game_LoadProgress_Advance(node0)
  node334 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node330, node334)
  Position_SetPosition(node334, MAT_Vector3(1149.834005, 3285.860352, 350))
  Position_SetRadius(node334, 5)
  Game_LoadProgress_Advance(node0)
  node335 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node330, node335)
  Position_SetPosition(node335, MAT_Vector3(1159.538561, 3130.587024, 350))
  Position_SetRadius(node335, 5)
  Game_LoadProgress_Advance(node0)
  node336 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node330, node336)
  Position_SetPosition(node336, MAT_Vector3(1030.442558, 3021.249185, 350))
  Position_SetRadius(node336, 5)
  Game_LoadProgress_Advance(node0)
  node337 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node330, node337)
  Position_SetPosition(node337, MAT_Vector3(1043.420534, 2948.617456, 350))
  Position_SetRadius(node337, 5)
  Game_LoadProgress_Advance(node0)
  node338 = Node_CreateNode("NOD_Path", "AnimalToMuseumPath_1")
  Node_AddSon(node311, node338)
  Game_LoadProgress_Advance(node0)
  node339 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node338, node339)
  Position_SetPosition(node339, MAT_Vector3(1115.23057, 3491.728497, 360))
  Position_SetRadius(node339, 5)
  Game_LoadProgress_Advance(node0)
  node340 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node338, node340)
  Position_SetPosition(node340, MAT_Vector3(1300.599238, 3695.722098, 360))
  Position_SetRadius(node340, 5)
  Game_LoadProgress_Advance(node0)
  node341 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node338, node341)
  Position_SetPosition(node341, MAT_Vector3(1307.370116, 3749.887394, 350))
  Position_SetRadius(node341, 5)
  Game_LoadProgress_Advance(node0)
  node342 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node338, node342)
  Position_SetPosition(node342, MAT_Vector3(1307.369795, 3929.309, 350))
  Position_SetRadius(node342, 5)
  Game_LoadProgress_Advance(node0)
  node343 = Node_CreateNode("NOD_Path", "StoneyToMuseumPath_1")
  Node_AddSon(node311, node343)
  Game_LoadProgress_Advance(node0)
  node344 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node343, node344)
  Position_SetPosition(node344, MAT_Vector3(1059.3732, 3490.035339, 310))
  Position_SetRadius(node344, 5)
  Game_LoadProgress_Advance(node0)
  node345 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node343, node345)
  Position_SetPosition(node345, MAT_Vector3(1061.065661, 3578.053352, 310))
  Position_SetRadius(node345, 5)
  Game_LoadProgress_Advance(node0)
  node346 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node343, node346)
  Position_SetPosition(node346, MAT_Vector3(1181.244904, 3684.690619, 310))
  Position_SetRadius(node346, 5)
  Game_LoadProgress_Advance(node0)
  node347 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node343, node347)
  Position_SetPosition(node347, MAT_Vector3(1237.1028, 3762.553388, 400))
  Position_SetRadius(node347, 5)
  Game_LoadProgress_Advance(node0)
  node348 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node343, node348)
  Position_SetPosition(node348, MAT_Vector3(1238.79594, 3855.649922, 350))
  Position_SetRadius(node348, 5)
  Game_LoadProgress_Advance(node0)
  node349 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node343, node349)
  Position_SetPosition(node349, MAT_Vector3(1237.103601, 3926.74171, 350))
  Position_SetRadius(node349, 5)
  Game_LoadProgress_Advance(node0)
  node350 = Node_CreateNode("NOD_Path", "AnimalToMuseumPath_2")
  Node_AddSon(node311, node350)
  Game_LoadProgress_Advance(node0)
  node351 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node350, node351)
  Position_SetPosition(node351, MAT_Vector3(1309.886971, 3963.980312, 203))
  Position_SetRadius(node351, 5)
  Game_LoadProgress_Advance(node0)
  node352 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node350, node352)
  Position_SetPosition(node352, MAT_Vector3(1304.355424, 4042.274534, 170.215949))
  Position_SetRadius(node352, 5)
  Game_LoadProgress_Advance(node0)
  node353 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node350, node353)
  Position_SetPosition(node353, MAT_Vector3(1305.17933, 4113.130482, 162.019936))
  Position_SetRadius(node353, 5)
  Game_LoadProgress_Advance(node0)
  node354 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node350, node354)
  Position_SetPosition(node354, MAT_Vector3(1349.670274, 4226.005655, 156.0592))
  Position_SetRadius(node354, 5)
  Game_LoadProgress_Advance(node0)
  node355 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node350, node355)
  Position_SetPosition(node355, MAT_Vector3(1358.733315, 4193.04903, 156.0592))
  Position_SetRadius(node355, 5)
  Game_LoadProgress_Advance(node0)
  node356 = Node_CreateNode("NOD_Path", "StoneyToMuseumPath_2")
  Node_AddSon(node311, node356)
  Game_LoadProgress_Advance(node0)
  node357 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node356, node357)
  Position_SetPosition(node357, MAT_Vector3(1237.383239, 3952.445311, 203))
  Position_SetRadius(node357, 5)
  Game_LoadProgress_Advance(node0)
  node358 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node356, node358)
  Position_SetPosition(node358, MAT_Vector3(1333.191723, 3983.777648, 170.2159))
  Position_SetRadius(node358, 5)
  Game_LoadProgress_Advance(node0)
  node359 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node356, node359)
  Position_SetPosition(node359, MAT_Vector3(1363.676352, 4019.204673, 162.0199))
  Position_SetRadius(node359, 5)
  Game_LoadProgress_Advance(node0)
  node360 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node356, node360)
  Position_SetPosition(node360, MAT_Vector3(1364.500315, 4049.690036, 156.0592))
  Position_SetRadius(node360, 5)
  Game_LoadProgress_Advance(node0)
  node361 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node356, node361)
  Position_SetPosition(node361, MAT_Vector3(1356.261281, 4084.293359, 156.0592))
  Position_SetRadius(node361, 5)
  Game_LoadProgress_Advance(node0)
  node362 = Node_CreateNode("NOD_PatrolArea", "FakePatrol")
  Node_AddSon(node311, node362)
  PatrolArea_SetPosition(node362, MAT_Vector3(1222.025683, 4136.254075, 171.48134))
  PatrolArea_SetRadius(node362, 150)
  PatrolArea_SetMinZ(node362, -20)
  PatrolArea_SetMaxZ(node362, 20)
  Game_LoadProgress_Advance(node0)
  node363 = Node_CreateNode("NOD_PatrolArea", "MayLingPatrolArea")
  Node_AddSon(node311, node363)
  PatrolArea_SetPosition(node363, MAT_Vector3(1118.349956, 4125.75055, 202.058629))
  PatrolArea_SetRadius(node363, 150)
  PatrolArea_SetMinZ(node363, -50)
  PatrolArea_SetMaxZ(node363, 50)
  Game_LoadProgress_Advance(node0)
  node364 = Node_CreateNode("NOD_PatrolArea", "MayLingTriggerArea")
  Node_AddSon(node311, node364)
  PatrolArea_SetPosition(node364, MAT_Vector3(1118.35, 4125.751, 202.0586))
  PatrolArea_SetRadius(node364, 900)
  PatrolArea_SetMinZ(node364, -100)
  PatrolArea_SetMaxZ(node364, 550)
  Game_LoadProgress_Advance(node0)
  node365 = Node_CreateNode("NOD_PatrolArea", "MayLingFollowArea")
  Node_AddSon(node311, node365)
  PatrolArea_SetPosition(node365, MAT_Vector3(1118.35, 4125.751, 200))
  PatrolArea_SetRadius(node365, 1200)
  PatrolArea_SetMinZ(node365, 0)
  PatrolArea_SetMaxZ(node365, 200)
  Game_LoadProgress_Advance(node0)
  node366 = Node_CreateNode("NOD_PatrolArea", "PolicePatrolArea")
  Node_AddSon(node311, node366)
  PatrolArea_SetPosition(node366, MAT_Vector3(1118.35, 4125.751, 202.0586))
  PatrolArea_SetRadius(node366, 150)
  PatrolArea_SetMinZ(node366, -50)
  PatrolArea_SetMaxZ(node366, 50)
  Game_LoadProgress_Advance(node0)
  node367 = Node_CreateNode("NOD_PatrolArea", "PoliceTriggerArea")
  Node_AddSon(node311, node367)
  PatrolArea_SetPosition(node367, MAT_Vector3(1118.35, 4125.751, 202.0586))
  PatrolArea_SetRadius(node367, 500)
  PatrolArea_SetMinZ(node367, -100)
  PatrolArea_SetMaxZ(node367, 550)
  Game_LoadProgress_Advance(node0)
  node368 = Node_CreateNode("NOD_PatrolArea", "PoliceFollowArea")
  Node_AddSon(node311, node368)
  PatrolArea_SetPosition(node368, MAT_Vector3(1118.35, 4125.751, 200))
  PatrolArea_SetRadius(node368, 700)
  PatrolArea_SetMinZ(node368, 0)
  PatrolArea_SetMaxZ(node368, 200)
  Game_LoadProgress_Advance(node0)
  node369 = Node_CreateNode("NOD_Path", "PolicePath_1")
  Node_AddSon(node311, node369)
  Game_LoadProgress_Advance(node0)
  node370 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node369, node370)
  Position_SetPosition(node370, MAT_Vector3(1529.592213, 4270.372787, 250))
  Position_SetRadius(node370, 50)
  Game_LoadProgress_Advance(node0)
  node371 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node309, node371)
  Node_EnterSimulation(node371)
  Game_LoadProgress_Advance(node0)
  node372 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node309, node372)
  Node_EnterSimulation(node372)
  Game_LoadProgress_Advance(node0)
  node373 = Node_CreateNode("NOD_Trigger", "tReachedActiveBarrier")
  Node_AddSon(node372, node373)
  Body_SetFriendOrFoeID(node373, 0)
  Body_SetCS(node373, MAT_Vector3(1874.890127, 4132.147569, 139), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node373, 20, 70, 20)
  Node_EnterSimulation(node373)
  Game_LoadProgress_Advance(node0)
  node374 = Node_CreateNode("NOD_Trigger", "tMayLingStart")
  Node_AddSon(node372, node374)
  Body_SetFriendOrFoeID(node374, 0)
  Body_SetCS(node374, MAT_Vector3(1400.140712, 4130.352187, 89), MAT_Vector3(0, 0, 0))
  Trigger_SetBoxMode(node374, 20, 70, 60)
  Node_EnterSimulation(node374)
  Game_LoadProgress_Advance(node0)
  node375 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node309, node375)
  Node_EnterSimulation(node375)
  Game_LoadProgress_Advance(node0)
  node376 = Node_CreateNode("NOD_Directory", "TRAFFIC")
  Node_AddSon(node375, node376)
  Node_EnterSimulation(node376)
  Game_LoadProgress_Advance(node0)
  node377 = Node_CreateNode("nod_vessel", "trc_avenger_p1")
  Node_AddSon(node376, node377)
  Body_SetCS(node377, MAT_Vector3(1097.722, 1893.525, 350), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node377, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node377, 0)
  Body_SetNameKey(node377, -1)
  Body_SetCargoKey(node377, -1, 0)
  Body_SetCargoKey(node377, -1, 1)
  Body_SetCargoKey(node377, -1, 2)
  Node_EnterSimulation(node377)
  Game_LoadProgress_Advance(node0)
  node378 = Node_CreateNode("nod_vessel", "trc_police_p1")
  Node_AddSon(node376, node378)
  Body_SetCS(node378, MAT_Vector3(923.1009, 3173.487, 223.4119), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node378, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node378, 0)
  Body_SetNameKey(node378, -1)
  Body_SetCargoKey(node378, -1, 0)
  Body_SetCargoKey(node378, -1, 1)
  Body_SetCargoKey(node378, -1, 2)
  Node_EnterSimulation(node378)
  Game_LoadProgress_Advance(node0)
  node379 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p1")
  Node_AddSon(node376, node379)
  Body_SetCS(node379, MAT_Vector3(2163.426, 3133.485, 350), MAT_Vector3(-83.52366, 0, 0))
  Node_ParseIniFile(node379, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node379, 0)
  Body_SetNameKey(node379, -1)
  Body_SetCargoKey(node379, -1, 0)
  Body_SetCargoKey(node379, -1, 1)
  Body_SetCargoKey(node379, -1, 2)
  Node_EnterSimulation(node379)
  Game_LoadProgress_Advance(node0)
  node380 = Node_CreateNode("nod_vessel", "trc_toiler_p1")
  Node_AddSon(node376, node380)
  Body_SetCS(node380, MAT_Vector3(1363.144, 2953.196, 450.24), MAT_Vector3(42.92338, 0, 0))
  Node_ParseIniFile(node380, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node380, 0)
  Body_SetNameKey(node380, -1)
  Body_SetCargoKey(node380, -1, 0)
  Body_SetCargoKey(node380, -1, 1)
  Body_SetCargoKey(node380, -1, 2)
  Node_EnterSimulation(node380)
  Game_LoadProgress_Advance(node0)
  node381 = Node_CreateNode("nod_vessel", "trc_skipjack_p1")
  Node_AddSon(node376, node381)
  Body_SetCS(node381, MAT_Vector3(2313.169, 4002.909, 550.411), MAT_Vector3(-107.4887, 0, 0))
  Node_ParseIniFile(node381, "osd/gen/gen_skipjack.osd")
  Body_SetFriendOrFoeID(node381, 0)
  Body_SetNameKey(node381, -1)
  Body_SetCargoKey(node381, -1, 0)
  Body_SetCargoKey(node381, -1, 1)
  Body_SetCargoKey(node381, -1, 2)
  Node_EnterSimulation(node381)
  Game_LoadProgress_Advance(node0)
  node382 = Node_CreateNode("nod_vessel", "trc_avenger_p2")
  Node_AddSon(node376, node382)
  Body_SetCS(node382, MAT_Vector3(1447.722, 2293.525, 400), MAT_Vector3(-139.3504, 0, 0))
  Node_ParseIniFile(node382, "osd/gen/gen_avenger_narrow.osd")
  Body_SetFriendOrFoeID(node382, 0)
  Body_SetNameKey(node382, -1)
  Body_SetCargoKey(node382, -1, 0)
  Body_SetCargoKey(node382, -1, 1)
  Body_SetCargoKey(node382, -1, 2)
  Node_EnterSimulation(node382)
  Game_LoadProgress_Advance(node0)
  node383 = Node_CreateNode("nod_vessel", "trc_police_p2")
  Node_AddSon(node376, node383)
  Body_SetCS(node383, MAT_Vector3(1273.101, 3573.487, 273.4119), MAT_Vector3(-108.3242, 0, 0))
  Node_ParseIniFile(node383, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node383, 0)
  Body_SetNameKey(node383, -1)
  Body_SetCargoKey(node383, -1, 0)
  Body_SetCargoKey(node383, -1, 1)
  Body_SetCargoKey(node383, -1, 2)
  Node_EnterSimulation(node383)
  Game_LoadProgress_Advance(node0)
  node384 = Node_CreateNode("nod_vessel", "trc_drowsymaggie_p2")
  Node_AddSon(node376, node384)
  Body_SetCS(node384, MAT_Vector3(2513.426, 3533.485, 400), MAT_Vector3(67.60977, 0, 0))
  Node_ParseIniFile(node384, "osd/gen/gen_drowsymaggie.osd")
  Body_SetFriendOrFoeID(node384, 0)
  Body_SetNameKey(node384, -1)
  Body_SetCargoKey(node384, -1, 0)
  Body_SetCargoKey(node384, -1, 1)
  Body_SetCargoKey(node384, -1, 2)
  Node_EnterSimulation(node384)
  Game_LoadProgress_Advance(node0)
  node385 = Node_CreateNode("nod_vessel", "trc_toiler_p2")
  Node_AddSon(node376, node385)
  Body_SetCS(node385, MAT_Vector3(1713.144, 3353.196, 500.24), MAT_Vector3(134.5185, 0, 0))
  Node_ParseIniFile(node385, "osd/gen/gen_toiler_narrow.osd")
  Body_SetFriendOrFoeID(node385, 0)
  Body_SetNameKey(node385, -1)
  Body_SetCargoKey(node385, -1, 0)
  Body_SetCargoKey(node385, -1, 1)
  Body_SetCargoKey(node385, -1, 2)
  Node_EnterSimulation(node385)
  Game_LoadProgress_Advance(node0)
  node386 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node375, node386)
  Body_SetCS(node386, MAT_Vector3(1162.24998, 2809.155768, 310), MAT_Vector3(1.502248, 0, 0))
  Node_ParseIniFile(node386, "osd/pla/pla_ship4.osd")
  Body_SetFriendOrFoeID(node386, 3)
  Node_EnterSimulation(node386)
  Game_LoadProgress_Advance(node0)
  node387 = Node_CreateNode("nod_vehicle", "atl_tank_1")
  Node_AddSon(node375, node387)
  Body_SetCS(node387, MAT_Vector3(943.287723, 4253.327621, 179.594699), MAT_Vector3(-141.430243, 0, 0))
  Node_ParseIniFile(node387, "osd/atl/atl_tank.osd")
  Body_SetFriendOrFoeID(node387, 2)
  Body_SetNameKey(node387, -1)
  Body_SetCargoKey(node387, -1, 0)
  Body_SetCargoKey(node387, -1, 1)
  Body_SetCargoKey(node387, -1, 2)
  Node_EnterSimulation(node387)
  Game_LoadProgress_Advance(node0)
  node388 = Node_CreateNode("nod_vehicle", "atl_torpedobuggy_1")
  Node_AddSon(node375, node388)
  Body_SetCS(node388, MAT_Vector3(939.601056, 3962.053602, 303), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node388, "osd/atl/atl_torpedobuggy.osd")
  Body_SetFriendOrFoeID(node388, 2)
  Body_SetNameKey(node388, -1)
  Body_SetCargoKey(node388, -1, 0)
  Body_SetCargoKey(node388, -1, 1)
  Body_SetCargoKey(node388, -1, 2)
  Node_EnterSimulation(node388)
  Game_LoadProgress_Advance(node0)
  node389 = Node_CreateNode("nod_vessel", "wng_eerie")
  Node_AddSon(node375, node389)
  Body_SetCS(node389, MAT_Vector3(875.101489, 2800.178413, 344.024865), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node389, "osd/wng/wng_techbomber.osd")
  Body_SetFriendOrFoeID(node389, 4)
  Body_SetNameKey(node389, -1)
  Body_SetCargoKey(node389, -1, 0)
  Body_SetCargoKey(node389, -1, 1)
  Body_SetCargoKey(node389, -1, 2)
  Node_EnterSimulation(node389)
  Game_LoadProgress_Advance(node0)
  node390 = Node_CreateNode("nod_vessel", "wng_animal_1")
  Node_AddSon(node375, node390)
  Body_SetCS(node390, MAT_Vector3(836.377889, 2825.719511, 341.553146), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node390, "osd/wng/wng_animal.osd")
  Body_SetFriendOrFoeID(node390, 4)
  Body_SetNameKey(node390, -1)
  Body_SetCargoKey(node390, -1, 0)
  Body_SetCargoKey(node390, -1, 1)
  Body_SetCargoKey(node390, -1, 2)
  Node_EnterSimulation(node390)
  Game_LoadProgress_Advance(node0)
  node391 = Node_CreateNode("nod_vessel", "wng_stoney_1")
  Node_AddSon(node375, node391)
  Body_SetCS(node391, MAT_Vector3(921.240245, 2810.889196, 343.200958), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node391, "osd/wng/wng_stoney.osd")
  Body_SetFriendOrFoeID(node391, 4)
  Body_SetNameKey(node391, -1)
  Body_SetCargoKey(node391, -1, 0)
  Body_SetCargoKey(node391, -1, 1)
  Body_SetCargoKey(node391, -1, 2)
  Node_EnterSimulation(node391)
  Game_LoadProgress_Advance(node0)
  node392 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node375, node392)
  Body_SetPosition(node392, MAT_Vector3(957.814599, 4114.627038, 180))
  WayPoint_SetRadius(node392, 300)
  Node_ParseIniFile(node392, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node392)
  Game_LoadProgress_Advance(node0)
  node393 = Node_CreateNode("nod_waypoint", "nav_waypoint_2")
  Node_AddSon(node375, node393)
  Body_SetPosition(node393, MAT_Vector3(1269.264152, 3923.356388, 335))
  WayPoint_SetRadius(node393, 150)
  Node_ParseIniFile(node393, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node393)
  Game_LoadProgress_Advance(node0)
  node394 = Node_CreateNode("nod_vessel", "wng_mayday_1")
  Node_AddSon(node375, node394)
  Body_SetCS(node394, MAT_Vector3(1417.90029, 4132.022939, 195), MAT_Vector3(90, 0, 0))
  Node_ParseIniFile(node394, "osd/wng/wng_mayday_evil_5h2.osd")
  Body_SetFriendOrFoeID(node394, 5)
  Body_SetNameKey(node394, -1)
  Body_SetCargoKey(node394, -1, 0)
  Body_SetCargoKey(node394, -1, 1)
  Body_SetCargoKey(node394, -1, 2)
  Node_EnterSimulation(node394)
  Game_LoadProgress_Advance(node0)
  node395 = Node_CreateNode("nod_waypoint", "nav_escort_1")
  Node_AddSon(node375, node395)
  Body_SetPosition(node395, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node395, 128)
  Node_ParseIniFile(node395, "osd/nav/nav_escort.osd")
  Node_EnterSimulation(node395)
  Game_LoadProgress_Advance(node0)
  node396 = Node_CreateNode("nod_vessel", "atl_police_1")
  Node_AddSon(node375, node396)
  Body_SetCS(node396, MAT_Vector3(2055.949934, 4323.675161, 300), MAT_Vector3(114.677712, 0, 0))
  Node_ParseIniFile(node396, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node396, 2)
  Body_SetNameKey(node396, -1)
  Body_SetCargoKey(node396, -1, 0)
  Body_SetCargoKey(node396, -1, 1)
  Body_SetCargoKey(node396, -1, 2)
  Node_EnterSimulation(node396)
  Game_LoadProgress_Advance(node0)
  node397 = Node_CreateNode("nod_vessel", "atl_police_2")
  Node_AddSon(node375, node397)
  Body_SetCS(node397, MAT_Vector3(2050.182655, 4345.920472, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node397, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node397, 2)
  Body_SetNameKey(node397, -1)
  Body_SetCargoKey(node397, -1, 0)
  Body_SetCargoKey(node397, -1, 1)
  Body_SetCargoKey(node397, -1, 2)
  Node_EnterSimulation(node397)
  Game_LoadProgress_Advance(node0)
  node398 = Node_CreateNode("nod_vessel", "atl_police_3")
  Node_AddSon(node375, node398)
  Body_SetCS(node398, MAT_Vector3(2070.780315, 4344.272659, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node398, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node398, 2)
  Body_SetNameKey(node398, -1)
  Body_SetCargoKey(node398, -1, 0)
  Body_SetCargoKey(node398, -1, 1)
  Body_SetCargoKey(node398, -1, 2)
  Node_EnterSimulation(node398)
  Game_LoadProgress_Advance(node0)
  node399 = Node_CreateNode("nod_vessel", "atl_police_4")
  Node_AddSon(node375, node399)
  Body_SetCS(node399, MAT_Vector3(2062.541251, 4301.429528, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node399, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node399, 2)
  Body_SetNameKey(node399, -1)
  Body_SetCargoKey(node399, -1, 0)
  Body_SetCargoKey(node399, -1, 1)
  Body_SetCargoKey(node399, -1, 2)
  Node_EnterSimulation(node399)
  Game_LoadProgress_Advance(node0)
  node400 = Node_CreateNode("nod_vessel", "atl_police_5")
  Node_AddSon(node375, node400)
  Body_SetCS(node400, MAT_Vector3(2082.315004, 4321.203281, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node400, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node400, 2)
  Body_SetNameKey(node400, -1)
  Body_SetCargoKey(node400, -1, 0)
  Body_SetCargoKey(node400, -1, 1)
  Body_SetCargoKey(node400, -1, 2)
  Node_EnterSimulation(node400)
  Game_LoadProgress_Advance(node0)
  node401 = Node_CreateNode("nod_vessel", "atl_police_6")
  Node_AddSon(node375, node401)
  Body_SetCS(node401, MAT_Vector3(2040.295779, 4331.914064, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node401, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node401, 2)
  Body_SetNameKey(node401, -1)
  Body_SetCargoKey(node401, -1, 0)
  Body_SetCargoKey(node401, -1, 1)
  Body_SetCargoKey(node401, -1, 2)
  Node_EnterSimulation(node401)
  Game_LoadProgress_Advance(node0)
  node402 = Node_CreateNode("nod_vessel", "atl_police_7")
  Node_AddSon(node375, node402)
  Body_SetCS(node402, MAT_Vector3(2079.843285, 4298.957809, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node402, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node402, 2)
  Body_SetNameKey(node402, -1)
  Body_SetCargoKey(node402, -1, 0)
  Body_SetCargoKey(node402, -1, 1)
  Body_SetCargoKey(node402, -1, 2)
  Node_EnterSimulation(node402)
  Game_LoadProgress_Advance(node0)
  node403 = Node_CreateNode("nod_vessel", "atl_police_8")
  Node_AddSon(node375, node403)
  Body_SetCS(node403, MAT_Vector3(2069.956408, 4362.3986, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node403, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node403, 2)
  Body_SetNameKey(node403, -1)
  Body_SetCargoKey(node403, -1, 0)
  Body_SetCargoKey(node403, -1, 1)
  Body_SetCargoKey(node403, -1, 2)
  Node_EnterSimulation(node403)
  Game_LoadProgress_Advance(node0)
  node404 = Node_CreateNode("nod_vessel", "atl_police_9")
  Node_AddSon(node375, node404)
  Body_SetCS(node404, MAT_Vector3(2080.63623, 4335.752336, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node404, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node404, 2)
  Body_SetNameKey(node404, -1)
  Body_SetCargoKey(node404, -1, 0)
  Body_SetCargoKey(node404, -1, 1)
  Body_SetCargoKey(node404, -1, 2)
  Node_EnterSimulation(node404)
  Game_LoadProgress_Advance(node0)
  node405 = Node_CreateNode("nod_vessel", "atl_police_10")
  Node_AddSon(node375, node405)
  Body_SetCS(node405, MAT_Vector3(2034.140512, 4356.256158, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node405, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node405, 2)
  Body_SetNameKey(node405, -1)
  Body_SetCargoKey(node405, -1, 0)
  Body_SetCargoKey(node405, -1, 1)
  Body_SetCargoKey(node405, -1, 2)
  Node_EnterSimulation(node405)
  Game_LoadProgress_Advance(node0)
  node406 = Node_CreateNode("nod_vessel", "atl_police_11")
  Node_AddSon(node375, node406)
  Body_SetCS(node406, MAT_Vector3(2067.811819, 4320.222414, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node406, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node406, 2)
  Body_SetNameKey(node406, -1)
  Body_SetCargoKey(node406, -1, 0)
  Body_SetCargoKey(node406, -1, 1)
  Body_SetCargoKey(node406, -1, 2)
  Node_EnterSimulation(node406)
  Game_LoadProgress_Advance(node0)
  node407 = Node_CreateNode("nod_vessel", "atl_police_12")
  Node_AddSon(node375, node407)
  Body_SetCS(node407, MAT_Vector3(2051.209741, 4365.476744, 300), MAT_Vector3(114.6777, 0, 0))
  Node_ParseIniFile(node407, "osd/atl/atl_police.osd")
  Body_SetFriendOrFoeID(node407, 2)
  Body_SetNameKey(node407, -1)
  Body_SetCargoKey(node407, -1, 0)
  Body_SetCargoKey(node407, -1, 1)
  Body_SetCargoKey(node407, -1, 2)
  Node_EnterSimulation(node407)
  Game_LoadProgress_Advance(node0)
  node408 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_1_1")
  Node_AddSon(node375, node408)
  Body_SetCS(node408, MAT_Vector3(1432.022656, 4131.595476, 147.422007), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node408, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node408, 0)
  Node_EnterSimulation(node408)
  Game_LoadProgress_Advance(node0)
  node409 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_1_2")
  Node_AddSon(node375, node409)
  Body_SetCS(node409, MAT_Vector3(1432.023, 4131.595, 142.671145), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node409, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node409, 0)
  Node_EnterSimulation(node409)
  Game_LoadProgress_Advance(node0)
  node410 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_1_3")
  Node_AddSon(node375, node410)
  Body_SetCS(node410, MAT_Vector3(1432.023, 4131.595, 136.875057), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node410, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node410, 0)
  Node_EnterSimulation(node410)
  Game_LoadProgress_Advance(node0)
  node411 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_1_4")
  Node_AddSon(node375, node411)
  Body_SetCS(node411, MAT_Vector3(1432.023, 4131.595, 130.31892), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node411, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node411, 0)
  Node_EnterSimulation(node411)
  Game_LoadProgress_Advance(node0)
  node412 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_2_1")
  Node_AddSon(node375, node412)
  Body_SetCS(node412, MAT_Vector3(1552.023, 4131.595, 147.422), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node412, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node412, 0)
  Node_EnterSimulation(node412)
  Game_LoadProgress_Advance(node0)
  node413 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_2_2")
  Node_AddSon(node375, node413)
  Body_SetCS(node413, MAT_Vector3(1552.023, 4131.595, 142.6711), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node413, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node413, 0)
  Node_EnterSimulation(node413)
  Game_LoadProgress_Advance(node0)
  node414 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_2_3")
  Node_AddSon(node375, node414)
  Body_SetCS(node414, MAT_Vector3(1552.023, 4131.595, 136.8751), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node414, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node414, 0)
  Node_EnterSimulation(node414)
  Game_LoadProgress_Advance(node0)
  node415 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_2_4")
  Node_AddSon(node375, node415)
  Body_SetCS(node415, MAT_Vector3(1552.023, 4131.595, 130.3189), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node415, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node415, 0)
  Node_EnterSimulation(node415)
  Game_LoadProgress_Advance(node0)
  node416 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_3_1")
  Node_AddSon(node375, node416)
  Body_SetCS(node416, MAT_Vector3(1702.023, 4131.595, 147.422), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node416, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node416, 0)
  Node_EnterSimulation(node416)
  Game_LoadProgress_Advance(node0)
  node417 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_3_2")
  Node_AddSon(node375, node417)
  Body_SetCS(node417, MAT_Vector3(1702.023, 4131.595, 142.6711), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node417, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node417, 0)
  Node_EnterSimulation(node417)
  Game_LoadProgress_Advance(node0)
  node418 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_3_3")
  Node_AddSon(node375, node418)
  Body_SetCS(node418, MAT_Vector3(1702.023, 4131.595, 136.8751), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node418, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node418, 0)
  Node_EnterSimulation(node418)
  Game_LoadProgress_Advance(node0)
  node419 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_3_4")
  Node_AddSon(node375, node419)
  Body_SetCS(node419, MAT_Vector3(1702.023, 4131.595, 130.3189), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node419, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node419, 0)
  Node_EnterSimulation(node419)
  Game_LoadProgress_Advance(node0)
  node420 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_4_1")
  Node_AddSon(node375, node420)
  Body_SetCS(node420, MAT_Vector3(1772.023, 4131.595, 147.422), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node420, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node420, 0)
  Node_EnterSimulation(node420)
  Game_LoadProgress_Advance(node0)
  node421 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_4_2")
  Node_AddSon(node375, node421)
  Body_SetCS(node421, MAT_Vector3(1772.023, 4131.595, 142.6711), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node421, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node421, 0)
  Node_EnterSimulation(node421)
  Game_LoadProgress_Advance(node0)
  node422 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_4_3")
  Node_AddSon(node375, node422)
  Body_SetCS(node422, MAT_Vector3(1772.023, 4131.595, 136.8751), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node422, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node422, 0)
  Node_EnterSimulation(node422)
  Game_LoadProgress_Advance(node0)
  node423 = Node_CreateNode("nod_trash", "gen_laserbeam_5h3_4_4")
  Node_AddSon(node375, node423)
  Body_SetCS(node423, MAT_Vector3(1772.023, 4131.595, 130.3189), MAT_Vector3(-90, 0, 0))
  Node_ParseIniFile(node423, "osd/gen/gen_laserbeam_5h3.osd")
  Body_SetFriendOrFoeID(node423, 0)
  Node_EnterSimulation(node423)
  Game_LoadProgress_Advance(node0)
  node424 = Node_CreateNode("nod_laserwall", "mu_laserwall_trig")
  Node_AddSon(node375, node424)
  Body_SetCS(node424, MAT_Vector3(1848.587331, 4132.173782, 106.7221), MAT_Vector3(90, 0, 0))
  LaserWall_SetWallExtensionX(node424, 50)
  LaserWall_SetWallExtensionZ(node424, 50)
  Node_ParseIniFile(node424, "osd/gen/gen_laserwall.osd")
  Node_EnterSimulation(node424)
  Game_LoadProgress_Advance(node0)
  node425 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node425)
  Camera_SetBackPlane(node425, 750)
  Node_EnterSimulation(node425)
  Game_LoadProgress_Advance(node0)
  node426 = Node_CreateNode("NOD_Scenario", "IngameScenes")
  Node_AddSon(node0, node426)
  Node_EnterSimulation(node426)
  Game_LoadProgress_Advance(node0)
  node427 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node426, node427)
  Node_EnterSimulation(node427)
  Game_LoadProgress_Advance(node0)
  node428 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node426, node428)
  Node_EnterSimulation(node428)
  Game_LoadProgress_Advance(node0)
  node429 = Node_CreateNode("NOD_Path", "PlayerPath")
  Node_AddSon(node428, node429)
  Game_LoadProgress_Advance(node0)
  node430 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node429, node430)
  Position_SetPosition(node430, MAT_Vector3(1104, 2675, 313))
  Position_SetRadius(node430, 5)
  Game_LoadProgress_Advance(node0)
  node431 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node429, node431)
  Position_SetPosition(node431, MAT_Vector3(1104, 2745.409, 313))
  Position_SetRadius(node431, 5)
  Game_LoadProgress_Advance(node0)
  node432 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node429, node432)
  Position_SetPosition(node432, MAT_Vector3(1096.080701, 2868.888992, 325))
  Position_SetRadius(node432, 5)
  Game_LoadProgress_Advance(node0)
  node433 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node429, node433)
  Position_SetPosition(node433, MAT_Vector3(1124.744719, 2941.066578, 325))
  Position_SetRadius(node433, 5)
  Game_LoadProgress_Advance(node0)
  node434 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node429, node434)
  Position_SetPosition(node434, MAT_Vector3(1146.990285, 3170.112725, 325))
  Position_SetRadius(node434, 5)
  Game_LoadProgress_Advance(node0)
  node435 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node429, node435)
  Position_SetPosition(node435, MAT_Vector3(1146.990592, 3268.157233, 325))
  Position_SetRadius(node435, 5)
  Game_LoadProgress_Advance(node0)
  node436 = Node_CreateNode("NOD_Position", "pos_7")
  Node_AddSon(node429, node436)
  Position_SetPosition(node436, MAT_Vector3(1146.990592, 3416.46038, 325))
  Position_SetRadius(node436, 5)
  Game_LoadProgress_Advance(node0)
  node437 = Node_CreateNode("NOD_Path", "WingmenPath")
  Node_AddSon(node428, node437)
  Game_LoadProgress_Advance(node0)
  node438 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node437, node438)
  Position_SetPosition(node438, MAT_Vector3(1066.247554, 2866.091105, 335))
  Position_SetRadius(node438, 5)
  Game_LoadProgress_Advance(node0)
  node439 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node437, node439)
  Position_SetPosition(node439, MAT_Vector3(1065.423554, 2939.41894, 335))
  Position_SetRadius(node439, 5)
  Game_LoadProgress_Advance(node0)
  node440 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node437, node440)
  Position_SetPosition(node440, MAT_Vector3(1087.669333, 3170.936281, 335))
  Position_SetRadius(node440, 5)
  Game_LoadProgress_Advance(node0)
  node441 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node437, node441)
  Position_SetPosition(node441, MAT_Vector3(1086.845426, 3267.333327, 335))
  Position_SetRadius(node441, 5)
  Game_LoadProgress_Advance(node0)
  node442 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node437, node442)
  Position_SetPosition(node442, MAT_Vector3(1087.669239, 3413.988611, 335))
  Position_SetRadius(node442, 5)
  Game_LoadProgress_Advance(node0)
  node443 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node428, node443)
  Position_SetPosition(node443, MAT_Vector3(1085.254077, 2777.774468, 323.283549))
  Position_SetRadius(node443, 5)
  Game_LoadProgress_Advance(node0)
  node444 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node426, node444)
  Node_EnterSimulation(node444)
  Game_LoadProgress_Advance(node0)
  node445 = Node_CreateNode("NOD_Director", "Intro")
  Node_AddSon(node444, node445)
  Node_EnterSimulation(node445)
  Game_LoadProgress_Advance(node0)
  node446 = Node_CreateNode("NOD_Director", "Intro_AddOn")
  Node_AddSon(node444, node446)
  Node_EnterSimulation(node446)
  Game_LoadProgress_Advance(node0)
  node447 = Node_CreateNode("NOD_Director", "Intro_AddOn2")
  Node_AddSon(node444, node447)
  Node_EnterSimulation(node447)
  Game_LoadProgress_Advance(node0)
  node448 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node426, node448)
  Node_EnterSimulation(node448)
  Game_LoadProgress_Advance(node0)
  node449 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node426, node449)
  Node_EnterSimulation(node449)
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
                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (o13894.Value ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (True ~= True) then
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
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (o13918.Value == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if not (False == True) then
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      if not (False == True) then
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
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                end
                                                                                                                                                                                                              end
                                                                                                                                                                                                            end
                                                                                                                                                                                                          end
                                                                                                                                                                                                        end
                                                                                                                                                                                                      end
                                                                                                                                                                                                    end
                                                                                                                                                                                                  end
                                                                                                                                                                                                end
                                                                                                                                                                                              end
                                                                                                                                                                                            end
                                                                                                                                                                                          end
                                                                                                                                                                                        end
                                                                                                                                                                                      end
                                                                                                                                                                                    end
                                                                                                                                                                                  end
                                                                                                                                                                                end
                                                                                                                                                                              end
                                                                                                                                                                            end
                                                                                                                                                                          end
                                                                                                                                                                        end
                                                                                                                                                                      end
                                                                                                                                                                    end
                                                                                                                                                                  end
                                                                                                                                                                end
                                                                                                                                                              end
                                                                                                                                                            end
                                                                                                                                                          end
                                                                                                                                                        end
                                                                                                                                                      end
                                                                                                                                                    end
                                                                                                                                                  end
                                                                                                                                                end
                                                                                                                                              end
                                                                                                                                            end
                                                                                                                                          end
                                                                                                                                        end
                                                                                                                                      end
                                                                                                                                    end
                                                                                                                                  end
                                                                                                                                end
                                                                                                                              end
                                                                                                                            end
                                                                                                                          end
                                                                                                                        end
                                                                                                                      end
                                                                                                                    end
                                                                                                                  end
                                                                                                                end
                                                                                                              end
                                                                                                            end
                                                                                                          end
                                                                                                        end
                                                                                                      end
                                                                                                    end
                                                                                                  end
                                                                                                end
                                                                                              end
                                                                                            end
                                                                                          end
                                                                                        end
                                                                                      end
                                                                                    end
                                                                                  end
                                                                                end
                                                                              end
                                                                            end
                                                                          end
                                                                        end
                                                                      end
                                                                    end
                                                                  end
                                                                end
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
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
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o5228, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o5228, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5228, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o5231.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5229.Value ~= True) then
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
o5229 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5229.SetStateValue(o5229.GetCalculated())
end, StartCalculate = function()
  o5229["Value"] = o5229.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5229.Value == L0) then
    o5229["Value"] = L0
    CallFunction(o5228, "ProcesseStateChange")
  end
end }
o5231 = { [nil] = {}, Start = function()
  o5231["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5231.Value == L0) then
    o5231["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o5274 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5274, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5274, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5274, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -15, 60)
  CallFunction(o5274, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 500, 500, "E", "", "", "", "Code5")
  else
    CallFunction(o5274, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o5274, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o5277.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o5275.Value ~= True) then
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
o5275 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5275.SetStateValue(o5275.GetCalculated())
end, StartCalculate = function()
  o5275["Value"] = o5275.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5275.Value == L0) then
    o5275["Value"] = L0
    CallFunction(o5274, "ProcesseStateChange")
  end
end }
o5277 = { [nil] = {}, Start = function()
  o5277["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5277.Value == L0) then
    o5277["Value"] = L0
    o13881.ReCalculate()
  end
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
end, SetStateValue_Attacked = function(L0, L1)
  o5322.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5323.SetStateValue(L1)
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
o5322 = { [nil] = {}, Start = function()
  o5322["Value"] = False
  o13880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5322.Value == L0) then
    o5322["Value"] = L0
    o13880.ReCalculate()
  end
end }
o5323 = { [nil] = {}, Start = function()
  o5323["Value"] = False
  o13882.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5323.Value == L0) then
    o5323["Value"] = L0
    o13882.ReCalculate()
  end
end }
S_o5367 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5367, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5367, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5367, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o5369.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5370.SetStateValue(L1)
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
o5369 = { [nil] = {}, Start = function()
  o5369["Value"] = False
  o13880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5369.Value == L0) then
    o5369["Value"] = L0
    o13880.ReCalculate()
  end
end }
o5370 = { [nil] = {}, Start = function()
  o5370["Value"] = False
  o13882.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5370.Value == L0) then
    o5370["Value"] = L0
    o13882.ReCalculate()
  end
end }
S_o5414 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5414, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5414, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5414, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o5416.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5417.SetStateValue(L1)
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
o5416 = { [nil] = {}, Start = function()
  o5416["Value"] = False
  o13880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5416.Value == L0) then
    o5416["Value"] = L0
    o13880.ReCalculate()
  end
end }
o5417 = { [nil] = {}, Start = function()
  o5417["Value"] = False
  o13882.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5417.Value == L0) then
    o5417["Value"] = L0
    o13882.ReCalculate()
  end
end }
S_o5461 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5461, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5461, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5461, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o5463.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5464.SetStateValue(L1)
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
o5463 = { [nil] = {}, Start = function()
  o5463["Value"] = False
  o13880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5463.Value == L0) then
    o5463["Value"] = L0
    o13880.ReCalculate()
  end
end }
o5464 = { [nil] = {}, Start = function()
  o5464["Value"] = False
  o13882.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5464.Value == L0) then
    o5464["Value"] = L0
    o13882.ReCalculate()
  end
end }
S_o5508 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5508, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5508, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5508, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o5510.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o5511.SetStateValue(L1)
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
o5510 = { [nil] = {}, Start = function()
  o5510["Value"] = False
  o13880.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5510.Value == L0) then
    o5510["Value"] = L0
    o13880.ReCalculate()
  end
end }
o5511 = { [nil] = {}, Start = function()
  o5511["Value"] = False
  o13882.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5511.Value == L0) then
    o5511["Value"] = L0
    o13882.ReCalculate()
  end
end }
S_o5555 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5555, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5555, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5555, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o5555, "Code4")
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
S_o5602 = { [nil] = {}, Start = function(L0)

end }
S_o5648 = { [nil] = {}, Start = function(L0)

end }
S_o5694 = { [nil] = {}, Start = function(L0)

end }
S_o5740 = { [nil] = {}, Start = function(L0)

end }
S_o5786 = { [nil] = {}, Start = function(L0)

end }
S_o5832 = { [nil] = {}, Start = function(L0)

end }
S_o5878 = { [nil] = {}, Start = function(L0)

end }
S_o5924 = { [nil] = {}, Start = function(L0)

end }
S_o5970 = { [nil] = {}, Start = function(L0)

end }
S_o6016 = { [nil] = {}, Start = function(L0)

end }
S_o6062 = { [nil] = {}, Start = function(L0)

end }
S_o6108 = { [nil] = {}, Start = function(L0)

end }
S_o6154 = { [nil] = {}, Start = function(L0)

end }
S_o6200 = { [nil] = {}, Start = function(L0)

end }
S_o6246 = { [nil] = {}, Start = function(L0)

end }
S_o6292 = { [nil] = {}, Start = function(L0)

end }
S_o6338 = { [nil] = {}, Start = function(L0)

end }
S_o6384 = { [nil] = {}, Start = function(L0)

end }
S_o6430 = { [nil] = {}, Start = function(L0)

end }
S_o6476 = { [nil] = {}, Start = function(L0)

end }
S_o6522 = { [nil] = {}, Start = function(L0)

end }
S_o6568 = { [nil] = {}, Start = function(L0)

end }
S_o6614 = { [nil] = {}, Start = function(L0)

end }
S_o6660 = { [nil] = {}, Start = function(L0)

end }
S_o6706 = { [nil] = {}, Start = function(L0)

end }
S_o6752 = { [nil] = {}, Start = function(L0)

end }
S_o6798 = { [nil] = {}, Start = function(L0)

end }
S_o6844 = { [nil] = {}, Start = function(L0)

end }
S_o6890 = { [nil] = {}, Start = function(L0)

end }
S_o6936 = { [nil] = {}, Start = function(L0)

end }
S_o6982 = { [nil] = {}, Start = function(L0)

end }
S_o7028 = { [nil] = {}, Start = function(L0)

end }
S_o7074 = { [nil] = {}, Start = function(L0)

end }
S_o7120 = { [nil] = {}, Start = function(L0)

end }
S_o7166 = { [nil] = {}, Start = function(L0)

end }
S_o7212 = { [nil] = {}, Start = function(L0)

end }
S_o7258 = { [nil] = {}, Start = function(L0)

end }
S_o7304 = { [nil] = {}, Start = function(L0)

end }
S_o7350 = { [nil] = {}, Start = function(L0)

end }
S_o7396 = { [nil] = {}, Start = function(L0)

end }
S_o7442 = { [nil] = {}, Start = function(L0)

end }
S_o7488 = { [nil] = {}, Start = function(L0)

end }
S_o7534 = { [nil] = {}, Start = function(L0)

end }
S_o7580 = { [nil] = {}, Start = function(L0)

end }
S_o7626 = { [nil] = {}, Start = function(L0)

end }
S_o7672 = { [nil] = {}, Start = function(L0)

end }
S_o7718 = { [nil] = {}, Start = function(L0)

end }
S_o7764 = { [nil] = {}, Start = function(L0)

end }
S_o7810 = { [nil] = {}, Start = function(L0)

end }
S_o7856 = { [nil] = {}, Start = function(L0)

end }
S_o7902 = { [nil] = {}, Start = function(L0)

end }
S_o7948 = { [nil] = {}, Start = function(L0)

end }
S_o7994 = { [nil] = {}, Start = function(L0)

end }
S_o8040 = { [nil] = {}, Start = function(L0)

end }
S_o8086 = { [nil] = {}, Start = function(L0)

end }
S_o8132 = { [nil] = {}, Start = function(L0)

end }
S_o8178 = { [nil] = {}, Start = function(L0)

end }
S_o8224 = { [nil] = {}, Start = function(L0)

end }
S_o8270 = { [nil] = {}, Start = function(L0)

end }
S_o8316 = { [nil] = {}, Start = function(L0)

end }
S_o8362 = { [nil] = {}, Start = function(L0)

end }
S_o8408 = { [nil] = {}, Start = function(L0)

end }
S_o8454 = { [nil] = {}, Start = function(L0)

end }
S_o8500 = { [nil] = {}, Start = function(L0)

end }
S_o8546 = { [nil] = {}, Start = function(L0)

end }
S_o8592 = { [nil] = {}, Start = function(L0)

end }
S_o8638 = { [nil] = {}, Start = function(L0)

end }
S_o8684 = { [nil] = {}, Start = function(L0)

end }
S_o8730 = { [nil] = {}, Start = function(L0)

end }
S_o8776 = { [nil] = {}, Start = function(L0)

end }
S_o8822 = { [nil] = {}, Start = function(L0)

end }
S_o8868 = { [nil] = {}, Start = function(L0)

end }
S_o8914 = { [nil] = {}, Start = function(L0)

end }
S_o8960 = { [nil] = {}, Start = function(L0)

end }
S_o9006 = { [nil] = {}, Start = function(L0)

end }
S_o9052 = { [nil] = {}, Start = function(L0)

end }
S_o9098 = { [nil] = {}, Start = function(L0)

end }
S_o9144 = { [nil] = {}, Start = function(L0)

end }
S_o9190 = { [nil] = {}, Start = function(L0)

end }
S_o9236 = { [nil] = {}, Start = function(L0)

end }
S_o9282 = { [nil] = {}, Start = function(L0)

end }
S_o9328 = { [nil] = {}, Start = function(L0)

end }
S_o9374 = { [nil] = {}, Start = function(L0)

end }
S_o9420 = { [nil] = {}, Start = function(L0)

end }
S_o9466 = { [nil] = {}, Start = function(L0)

end }
S_o9512 = { [nil] = {}, Start = function(L0)

end }
S_o9558 = { [nil] = {}, Start = function(L0)

end }
S_o9604 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9604, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9604, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9604, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9604, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9604, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9604, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9604, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9604, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9604, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9604, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9609.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9605.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9606.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9607.Value ~= True) then
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
o9605 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9605.SetStateValue(o9605.GetCalculated())
end, StartCalculate = function()
  o9605["Value"] = o9605.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9605.Value == L0) then
    o9605["Value"] = L0
    CallFunction(o9604, "ProcesseStateChange")
  end
end }
o9606 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9606.SetStateValue(o9606.GetCalculated())
end, StartCalculate = function()
  o9606["Value"] = o9606.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9606.Value == L0) then
    o9606["Value"] = L0
    CallFunction(o9604, "ProcesseStateChange")
  end
end }
o9607 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9607.SetStateValue(o9607.GetCalculated())
end, StartCalculate = function()
  o9607["Value"] = o9607.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9607.Value == L0) then
    DelayedFunction(1.984985, o9607, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9607.Value == L0) then
    o9607["Value"] = L0
    CallFunction(o9604, "ProcesseStateChange")
  end
end }
o9609 = { [nil] = {}, Start = function()
  o9609["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9609.Value == L0) then
    o9609["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9652, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9652, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9652, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9652, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9652, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9652, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9652, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9652, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9652, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9652, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9657.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9653.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9654.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9655.Value ~= True) then
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
o9653 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9653.SetStateValue(o9653.GetCalculated())
end, StartCalculate = function()
  o9653["Value"] = o9653.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9653.Value == L0) then
    o9653["Value"] = L0
    CallFunction(o9652, "ProcesseStateChange")
  end
end }
o9654 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9654.SetStateValue(o9654.GetCalculated())
end, StartCalculate = function()
  o9654["Value"] = o9654.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9654.Value == L0) then
    o9654["Value"] = L0
    CallFunction(o9652, "ProcesseStateChange")
  end
end }
o9655 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9655.SetStateValue(o9655.GetCalculated())
end, StartCalculate = function()
  o9655["Value"] = o9655.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9655.Value == L0) then
    DelayedFunction(4.984985, o9655, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9655.Value == L0) then
    o9655["Value"] = L0
    CallFunction(o9652, "ProcesseStateChange")
  end
end }
o9657 = { [nil] = {}, Start = function()
  o9657["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9657.Value == L0) then
    o9657["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9700 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9700, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9700, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9700, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9700, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9700, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9700, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9700, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9700, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9700, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9700, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9705.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9701.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9702.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9703.Value ~= True) then
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
o9701 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9701.SetStateValue(o9701.GetCalculated())
end, StartCalculate = function()
  o9701["Value"] = o9701.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9701.Value == L0) then
    o9701["Value"] = L0
    CallFunction(o9700, "ProcesseStateChange")
  end
end }
o9702 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9702.SetStateValue(o9702.GetCalculated())
end, StartCalculate = function()
  o9702["Value"] = o9702.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9702.Value == L0) then
    o9702["Value"] = L0
    CallFunction(o9700, "ProcesseStateChange")
  end
end }
o9703 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9703.SetStateValue(o9703.GetCalculated())
end, StartCalculate = function()
  o9703["Value"] = o9703.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9703.Value == L0) then
    DelayedFunction(0.984985, o9703, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9703.Value == L0) then
    o9703["Value"] = L0
    CallFunction(o9700, "ProcesseStateChange")
  end
end }
o9705 = { [nil] = {}, Start = function()
  o9705["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9705.Value == L0) then
    o9705["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9748 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9748, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9748, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9748, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9748, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9748, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9748, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9748, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9748, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9748, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9748, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9753.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9749.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9750.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9751.Value ~= True) then
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
o9749 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9749.SetStateValue(o9749.GetCalculated())
end, StartCalculate = function()
  o9749["Value"] = o9749.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9749.Value == L0) then
    o9749["Value"] = L0
    CallFunction(o9748, "ProcesseStateChange")
  end
end }
o9750 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9750.SetStateValue(o9750.GetCalculated())
end, StartCalculate = function()
  o9750["Value"] = o9750.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9750.Value == L0) then
    o9750["Value"] = L0
    CallFunction(o9748, "ProcesseStateChange")
  end
end }
o9751 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9751.SetStateValue(o9751.GetCalculated())
end, StartCalculate = function()
  o9751["Value"] = o9751.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9751.Value == L0) then
    DelayedFunction(1.123186, o9751, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9751.Value == L0) then
    o9751["Value"] = L0
    CallFunction(o9748, "ProcesseStateChange")
  end
end }
o9753 = { [nil] = {}, Start = function()
  o9753["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9753.Value == L0) then
    o9753["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9796 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9796, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9796, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9796, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9796, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9796, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9796, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9796, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9796, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9796, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9796, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9801.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9797.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9798.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9799.Value ~= True) then
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
o9797 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9797.SetStateValue(o9797.GetCalculated())
end, StartCalculate = function()
  o9797["Value"] = o9797.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9797.Value == L0) then
    o9797["Value"] = L0
    CallFunction(o9796, "ProcesseStateChange")
  end
end }
o9798 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9798.SetStateValue(o9798.GetCalculated())
end, StartCalculate = function()
  o9798["Value"] = o9798.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9798.Value == L0) then
    o9798["Value"] = L0
    CallFunction(o9796, "ProcesseStateChange")
  end
end }
o9799 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9799.SetStateValue(o9799.GetCalculated())
end, StartCalculate = function()
  o9799["Value"] = o9799.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9799.Value == L0) then
    DelayedFunction(1.484985, o9799, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9799.Value == L0) then
    o9799["Value"] = L0
    CallFunction(o9796, "ProcesseStateChange")
  end
end }
o9801 = { [nil] = {}, Start = function()
  o9801["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9801.Value == L0) then
    o9801["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9844 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9844, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9844, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9844, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9844, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9844, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9844, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9844, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9844, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9844, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9844, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9849.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9845.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9846.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9847.Value ~= True) then
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
o9845 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9845.SetStateValue(o9845.GetCalculated())
end, StartCalculate = function()
  o9845["Value"] = o9845.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9845.Value == L0) then
    o9845["Value"] = L0
    CallFunction(o9844, "ProcesseStateChange")
  end
end }
o9846 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9846.SetStateValue(o9846.GetCalculated())
end, StartCalculate = function()
  o9846["Value"] = o9846.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9846.Value == L0) then
    o9846["Value"] = L0
    CallFunction(o9844, "ProcesseStateChange")
  end
end }
o9847 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9847.SetStateValue(o9847.GetCalculated())
end, StartCalculate = function()
  o9847["Value"] = o9847.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9847.Value == L0) then
    DelayedFunction(5.984985, o9847, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9847.Value == L0) then
    o9847["Value"] = L0
    CallFunction(o9844, "ProcesseStateChange")
  end
end }
o9849 = { [nil] = {}, Start = function()
  o9849["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9849.Value == L0) then
    o9849["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9892 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9892, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9892, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o9892, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9892, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "E", "", "", "", "Code6")
  else
    CallFunction(o9892, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_SetShieldBarrier(L0.Node, 0.1, 0)
  ShieldedBody_MakeVulnerable(L0.Node)
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o9892, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9892, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Body_SetEmpShield(L0.Node, 0.5)
  Turret_SetAngleArea(L0.Node, 160, -15, 60)
  CallFunction(o9892, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 300, 400, "wng_sto", "wng_ani", "", "", "Code13")
  else
    CallFunction(o9892, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o9892, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
end, SetStateValue_Attacked = function(L0, L1)
  o9897.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o9893.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o9894.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 12) then
    if not (L0.CodeIndex >= 13) then
      if not (o9895.Value ~= True) then
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
o9893 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9893.SetStateValue(o9893.GetCalculated())
end, StartCalculate = function()
  o9893["Value"] = o9893.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9893.Value == L0) then
    o9893["Value"] = L0
    CallFunction(o9892, "ProcesseStateChange")
  end
end }
o9894 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9894.SetStateValue(o9894.GetCalculated())
end, StartCalculate = function()
  o9894["Value"] = o9894.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9894.Value == L0) then
    o9894["Value"] = L0
    CallFunction(o9892, "ProcesseStateChange")
  end
end }
o9895 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9895.SetStateValue(o9895.GetCalculated())
end, StartCalculate = function()
  o9895["Value"] = o9895.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9895.Value == L0) then
    DelayedFunction(0.284985, o9895, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o9895.Value == L0) then
    o9895["Value"] = L0
    CallFunction(o9892, "ProcesseStateChange")
  end
end }
o9897 = { [nil] = {}, Start = function()
  o9897["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o9897.Value == L0) then
    o9897["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o9940 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  CallFunction(o9940, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9940, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9940, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o9942 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  CallFunction(o9942, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o9942, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  Node_LeaveSimulation(L0.Node)
  CallFunction(o9942, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o9943.Value ~= True) then
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
o9943 = { [nil] = {}, GetCalculated = function()
  if not (o13882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o9943.SetStateValue(o9943.GetCalculated())
end, StartCalculate = function()
  o9943["Value"] = o9943.GetCalculated()
end, SetStateValue = function(L0)
  if not (o9943.Value == L0) then
    o9943["Value"] = L0
    CallFunction(o9942, "ProcesseStateChange")
  end
end }
S_o9944 = { [nil] = {}, Start = function(L0)

end }
S_o9990 = { [nil] = {}, Start = function(L0)

end }
S_o10036 = { [nil] = {}, Start = function(L0)

end }
S_o10082 = { [nil] = {}, Start = function(L0)

end }
S_o10128 = { [nil] = {}, Start = function(L0)

end }
S_o10174 = { [nil] = {}, Start = function(L0)

end }
S_o10220 = { [nil] = {}, Start = function(L0)

end }
S_o10266 = { [nil] = {}, Start = function(L0)

end }
S_o10312 = { [nil] = {}, Start = function(L0)

end }
S_o10358 = { [nil] = {}, Start = function(L0)

end }
S_o10404 = { [nil] = {}, Start = function(L0)

end }
S_o10450 = { [nil] = {}, Start = function(L0)

end }
S_o10496 = { [nil] = {}, Start = function(L0)

end }
S_o10542 = { [nil] = {}, Start = function(L0)

end }
S_o10588 = { [nil] = {}, Start = function(L0)

end }
S_o10634 = { [nil] = {}, Start = function(L0)

end }
S_o10680 = { [nil] = {}, Start = function(L0)

end }
S_o10726 = { [nil] = {}, Start = function(L0)

end }
S_o10772 = { [nil] = {}, Start = function(L0)

end }
S_o10818 = { [nil] = {}, Start = function(L0)

end }
S_o10864 = { [nil] = {}, Start = function(L0)

end }
S_o10910 = { [nil] = {}, Start = function(L0)

end }
S_o10956 = { [nil] = {}, Start = function(L0)

end }
S_o11002 = { [nil] = {}, Start = function(L0)

end }
S_o11048 = { [nil] = {}, Start = function(L0)

end }
S_o11094 = { [nil] = {}, Start = function(L0)

end }
S_o11140 = { [nil] = {}, Start = function(L0)

end }
S_o11186 = { [nil] = {}, Start = function(L0)

end }
S_o11232 = { [nil] = {}, Start = function(L0)

end }
S_o11278 = { [nil] = {}, Start = function(L0)

end }
S_o11324 = { [nil] = {}, Start = function(L0)

end }
S_o11370 = { [nil] = {}, Start = function(L0)

end }
S_o11416 = { [nil] = {}, Start = function(L0)

end }
S_o11462 = { [nil] = {}, Start = function(L0)

end }
S_o11508 = { [nil] = {}, Start = function(L0)

end }
S_o11554 = { [nil] = {}, Start = function(L0)

end }
S_o11600 = { [nil] = {}, Start = function(L0)

end }
S_o11646 = { [nil] = {}, Start = function(L0)

end }
S_o11692 = { [nil] = {}, Start = function(L0)

end }
S_o11738 = { [nil] = {}, Start = function(L0)

end }
S_o11784 = { [nil] = {}, Start = function(L0)

end }
S_o11830 = { [nil] = {}, Start = function(L0)

end }
S_o11876 = { [nil] = {}, Start = function(L0)

end }
S_o11922 = { [nil] = {}, Start = function(L0)

end }
S_o11968 = { [nil] = {}, Start = function(L0)

end }
S_o12014 = { [nil] = {}, Start = function(L0)

end }
S_o12060 = { [nil] = {}, Start = function(L0)

end }
S_o12106 = { [nil] = {}, Start = function(L0)

end }
S_o12152 = { [nil] = {}, Start = function(L0)

end }
S_o12198 = { [nil] = {}, Start = function(L0)

end }
S_o12244 = { [nil] = {}, Start = function(L0)

end }
S_o12290 = { [nil] = {}, Start = function(L0)

end }
S_o12336 = { [nil] = {}, Start = function(L0)

end }
S_o12382 = { [nil] = {}, Start = function(L0)

end }
S_o12428 = { [nil] = {}, Start = function(L0)

end }
S_o12474 = { [nil] = {}, Start = function(L0)

end }
S_o12520 = { [nil] = {}, Start = function(L0)

end }
S_o12566 = { [nil] = {}, Start = function(L0)

end }
S_o12612 = { [nil] = {}, Start = function(L0)

end }
S_o12658 = { [nil] = {}, Start = function(L0)

end }
S_o12704 = { [nil] = {}, Start = function(L0)

end }
S_o12750 = { [nil] = {}, Start = function(L0)

end }
S_o12796 = { [nil] = {}, Start = function(L0)

end }
S_o12842 = { [nil] = {}, Start = function(L0)

end }
S_o12888 = { [nil] = {}, Start = function(L0)

end }
S_o12934 = { [nil] = {}, Start = function(L0)

end }
S_o12980 = { [nil] = {}, Start = function(L0)

end }
S_o13026 = { [nil] = {}, Start = function(L0)

end }
S_o13072 = { [nil] = {}, Start = function(L0)

end }
S_o13118 = { [nil] = {}, Start = function(L0)

end }
S_o13164 = { [nil] = {}, Start = function(L0)

end }
S_o13210 = { [nil] = {}, Start = function(L0)

end }
S_o13256 = { [nil] = {}, Start = function(L0)

end }
S_o13302 = { [nil] = {}, Start = function(L0)

end }
o13348 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/dmNeopolis_South_ApproachPath", "/Scenario_Dynamic/Navigation/dmNeopolis_South_DockPath", "/Scenario_Dynamic/Navigation/dmNeopolis_South_Area")
S_o13349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o13349, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13349, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o13354.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o13350.Value ~= True) then
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
o13350 = { [nil] = {}, GetCalculated = function()
  if not (o13883.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13350.SetStateValue(o13350.GetCalculated())
end, StartCalculate = function()
  o13350["Value"] = o13350.GetCalculated()
end, SetStateValue = function(L0)
  if not (o13350.Value == L0) then
    o13350["Value"] = L0
    CallFunction(o13349, "ProcesseStateChange")
  end
end }
o13354 = { [nil] = {}, Start = function()
  o13354["Value"] = False
  o13884.StartCalculate()
  o13885.StartCalculate()
  o15637.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13354.Value == L0) then
    o13354["Value"] = L0
    o13884.ReCalculate()
    o13885.ReCalculate()
    o15637.ReCalculate()
  end
end }
S_o13355 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13355, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13355, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13355, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o13355, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13355, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13355, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o13360.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o13356.Value ~= True) then
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
o13356 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13356.SetStateValue(o13356.GetCalculated())
end, StartCalculate = function()
  o13356["Value"] = o13356.GetCalculated()
end, SetStateValue = function(L0)
  if not (o13356.Value == L0) then
    o13356["Value"] = L0
    CallFunction(o13355, "ProcesseStateChange")
  end
end }
o13360 = { [nil] = {}, Start = function()
  o13360["Value"] = False
  o13888.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13360.Value == L0) then
    o13360["Value"] = L0
    o13888.ReCalculate()
  end
end }
S_o13361 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13361, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13361, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13361, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13361, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13361, "Code5")
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
S_o13417 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13417, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13417, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13417, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13417, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13417, "Code5")
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
S_o13473 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13473, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13473, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13473, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13473, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13473, "Code5")
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
S_o13529 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13529, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13529, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13529, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13529, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13529, "Code5")
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
S_o13585 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13585, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13585, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13585, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13585, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13585, "Code5")
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
S_o13641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13641, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13641, "Code5")
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
S_o13697 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13697, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13697, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13697, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13697, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13697, "Code5")
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
S_o13753 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13753, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13753, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13753, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13753, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13753, "Code5")
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
S_o13809 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13809, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13809, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13809, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o13809, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area", "/Scenario_Dynamic/Navigation/NeopolisTraffic_Area" }, 666, 0.75, "Code5")
  else
    CallFunction(o13809, "Code5")
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
S_o13865 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 99999)
  Body_AddItem(L0.Node, "device_repair3", 1)
  Body_AddItem(L0.Node, "device_generator3", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  Body_AddItem(L0.Node, "gun_vendetta1", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  Body_AddItem(L0.Node, "ammo_rocket", 99999)
  Body_AddItem(L0.Node, "gun_rocketlauncher", 1)
  CallFunction(o13865, "Code11")
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
o13879 = { [nil] = {}, GetCalculated = function()
  if not (o14209.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13879.SetStateValue(o13879.GetCalculated())
end, StartCalculate = function()
  o13879["Value"] = o13879.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o14017.Node, o13865.Node, 467)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Track5")
end, SetStateValue = function(L0)
  if not (o13879.Value == L0) then
    o13879["Value"] = L0
    if not (L0 ~= 1) then
      o13879.ChangeTo1()
    end
  end
end }
o13880 = { [nil] = {}, GetCalculated = function()
  if not (o5322.Value == True) then
    if not (o5369.Value == True) then
      if not (o5416.Value == True) then
        if not (o5463.Value == True) then
          if not (o5510.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o13880.SetStateValue(o13880.GetCalculated())
end, StartCalculate = function()
  o13880["Value"] = o13880.GetCalculated()
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13880.Value == L0) then
    o13880["Value"] = L0
    o13881.ReCalculate()
  end
end }
o13881 = { [nil] = {}, GetCalculated = function()
  if not (o13880.Value == True) then
    if not (o13926.Value == True) then
      if not (o13973.Value == True) then
        if not (o5231.Value == True) then
          if not (o5277.Value == True) then
            if not (o9609.Value == True) then
              if not (o9657.Value == True) then
                if not (o9705.Value == True) then
                  if not (o9753.Value == True) then
                    if not (o9801.Value == True) then
                      if not (o9849.Value == True) then
                        if not (o9897.Value ~= True) then
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
end, ReCalculate = function()
  o13881.SetStateValue(o13881.GetCalculated())
end, StartCalculate = function()
  o13881["Value"] = o13881.GetCalculated()
end, ChangeTo1 = function()
  SetEnemyMatrixElement(2, 3, E)
  SetEnemyMatrixElement(3, 2, E)
end, SetStateValue = function(L0)
  if not (o13881.Value == L0) then
    o13881["Value"] = L0
    if not (L0 ~= 1) then
      o13881.ChangeTo1()
    end
  end
end }
o13882 = { [nil] = {}, GetCalculated = function()
  if not (o5323.Value ~= True) then
    if not (o5370.Value ~= True) then
      if not (o5417.Value ~= True) then
        if not (o5464.Value ~= True) then
          if not (o5511.Value ~= True) then
            return 1
          else
            return 0
          end
        end
      end
    end
  end
end, ReCalculate = function()
  o13882.SetStateValue(o13882.GetCalculated())
end, StartCalculate = function()
  o13882["Value"] = o13882.GetCalculated()
  o5229.StartCalculate()
  o5275.StartCalculate()
  o9605.StartCalculate()
  o9653.StartCalculate()
  o9701.StartCalculate()
  o9749.StartCalculate()
  o9797.StartCalculate()
  o9845.StartCalculate()
  o9893.StartCalculate()
  o9943.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2100)
  SED_SetTaskTextKey(2101, -1, -1)
  SendRadioMessageTake(o14017.Node, o13865.Node, 468)
  Game_SetWayPoint(GetGameNode(), o14211.Node)
  Game_PlayMusic(GetGameNode(), "Atmo")
end, SetStateValue = function(L0)
  if not (o13882.Value == L0) then
    o13882["Value"] = L0
    o5229.ReCalculate()
    o5275.ReCalculate()
    o9605.ReCalculate()
    o9653.ReCalculate()
    o9701.ReCalculate()
    o9749.ReCalculate()
    o9797.ReCalculate()
    o9845.ReCalculate()
    o9893.ReCalculate()
    o9943.ReCalculate()
    if not (L0 ~= 1) then
      o13882.ChangeTo1()
    end
  end
end }
o13883 = { [nil] = {}, GetCalculated = function()
  if not (o14214.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13883.SetStateValue(o13883.GetCalculated())
end, StartCalculate = function()
  o13883["Value"] = o13883.GetCalculated()
  o13350.StartCalculate()
  o14088.StartCalculate()
  o14151.StartCalculate()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(2102, -1, -1)
  SendRadioMessageTake(o14017.Node, o13865.Node, 469)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o13883.Value == L0) then
    o13883["Value"] = L0
    o13350.ReCalculate()
    o14088.ReCalculate()
    o14151.ReCalculate()
    if not (L0 ~= 1) then
      o13883.ChangeTo1()
    end
  end
end }
o13884 = { [nil] = {}, GetCalculated = function()
  if not (o13354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13884.SetStateValue(o13884.GetCalculated())
end, StartCalculate = function()
  o13884["Value"] = o13884.GetCalculated()
  o13886.StartCalculate()
  o14087.StartCalculate()
  o14089.StartCalculate()
  o14150.StartCalculate()
  o14152.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o14017.Node, o13865.Node, 471)
  SED_SetTaskTextKey(2103, -1, -1)
end, SetStateValue = function(L0)
  if not (o13884.Value == L0) then
    o13884["Value"] = L0
    o13886.ReCalculate()
    o14087.ReCalculate()
    o14089.ReCalculate()
    o14150.ReCalculate()
    o14152.ReCalculate()
    if not (L0 ~= 1) then
      o13884.ChangeTo1()
    end
  end
end }
o13885 = { [nil] = {}, GetCalculated = function()
  if not (o13354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13885.SetStateValue(o13885.GetCalculated())
end, StartCalculate = function()
  o13885["Value"] = o13885.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o13885.Value == L0) then
    DelayedFunction(2, o13885, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o13885.Value == L0) then
    o13885["Value"] = L0
    if not (L0 ~= 1) then
      o13885.ChangeTo1()
    end
  end
end }
o13886 = { [nil] = {}, GetCalculated = function()
  if not (o13884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13886.SetStateValue(o13886.GetCalculated())
end, StartCalculate = function()
  o13886["Value"] = o13886.GetCalculated()
  o9606.StartCalculate()
  o9654.StartCalculate()
  o9702.StartCalculate()
  o9750.StartCalculate()
  o9798.StartCalculate()
  o9846.StartCalculate()
  o9894.StartCalculate()
  o14964.StartCalculate()
  o15006.StartCalculate()
  o15048.StartCalculate()
  o15090.StartCalculate()
  o15132.StartCalculate()
  o15174.StartCalculate()
  o15216.StartCalculate()
  o15258.StartCalculate()
  o15300.StartCalculate()
  o15342.StartCalculate()
  o15384.StartCalculate()
  o15426.StartCalculate()
  o15468.StartCalculate()
  o15510.StartCalculate()
  o15552.StartCalculate()
  o15594.StartCalculate()
  o15636.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o14143.Node, o13865.Node, 472)
  SendRadioMessageTake(o14080.Node, o13865.Node, 473)
end, SetStateValue = function(L0)
  if not (o13886.Value == L0) then
    DelayedFunction(10, o13886, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o13886.Value == L0) then
    o13886["Value"] = L0
    o9606.ReCalculate()
    o9654.ReCalculate()
    o9702.ReCalculate()
    o9750.ReCalculate()
    o9798.ReCalculate()
    o9846.ReCalculate()
    o9894.ReCalculate()
    o14964.ReCalculate()
    o15006.ReCalculate()
    o15048.ReCalculate()
    o15090.ReCalculate()
    o15132.ReCalculate()
    o15174.ReCalculate()
    o15216.ReCalculate()
    o15258.ReCalculate()
    o15300.ReCalculate()
    o15342.ReCalculate()
    o15384.ReCalculate()
    o15426.ReCalculate()
    o15468.ReCalculate()
    o15510.ReCalculate()
    o15552.ReCalculate()
    o15594.ReCalculate()
    o15636.ReCalculate()
    if not (L0 ~= 1) then
      o13886.ChangeTo1()
    end
  end
end }
o13887 = { [nil] = {}, GetCalculated = function()
  if not (o14100.Value ~= True) then
    if not (o14163.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o13887.SetStateValue(o13887.GetCalculated())
end, StartCalculate = function()
  o13887["Value"] = o13887.GetCalculated()
  o9607.StartCalculate()
  o9655.StartCalculate()
  o9703.StartCalculate()
  o9751.StartCalculate()
  o9799.StartCalculate()
  o9847.StartCalculate()
  o9895.StartCalculate()
  o13356.StartCalculate()
  o14025.StartCalculate()
  o14219.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o14017.Node, o13865.Node, 474)
end, SetStateValue = function(L0)
  if not (o13887.Value == L0) then
    o13887["Value"] = L0
    o9607.ReCalculate()
    o9655.ReCalculate()
    o9703.ReCalculate()
    o9751.ReCalculate()
    o9799.ReCalculate()
    o9847.ReCalculate()
    o9895.ReCalculate()
    o13356.ReCalculate()
    o14025.ReCalculate()
    o14219.ReCalculate()
    if not (L0 ~= 1) then
      o13887.ChangeTo1()
    end
  end
end }
o13888 = { [nil] = {}, GetCalculated = function()
  if not (o13360.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13888.SetStateValue(o13888.GetCalculated())
end, StartCalculate = function()
  o13888["Value"] = o13888.GetCalculated()
  o14220.StartCalculate()
  o14282.StartCalculate()
  o14339.StartCalculate()
  o14396.StartCalculate()
  o14453.StartCalculate()
  o14510.StartCalculate()
  o14567.StartCalculate()
  o14624.StartCalculate()
  o14681.StartCalculate()
  o14738.StartCalculate()
  o14795.StartCalculate()
  o14852.StartCalculate()
  o14909.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o14216.Node, o13865.Node, 475)
  SendRadioMessageTake(o14017.Node, o13865.Node, 476)
end, SetStateValue = function(L0)
  if not (o13888.Value == L0) then
    DelayedFunction(2, o13888, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o13888.Value == L0) then
    o13888["Value"] = L0
    o14220.ReCalculate()
    o14282.ReCalculate()
    o14339.ReCalculate()
    o14396.ReCalculate()
    o14453.ReCalculate()
    o14510.ReCalculate()
    o14567.ReCalculate()
    o14624.ReCalculate()
    o14681.ReCalculate()
    o14738.ReCalculate()
    o14795.ReCalculate()
    o14852.ReCalculate()
    o14909.ReCalculate()
    if not (L0 ~= 1) then
      o13888.ChangeTo1()
    end
  end
end }
o13889 = { [nil] = {}, GetCalculated = function()
  if not (o14223.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13889.SetStateValue(o13889.GetCalculated())
end, StartCalculate = function()
  o13889["Value"] = o13889.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o14017.Node, o13865.Node, 477)
  Game_SetWayPoint(GetGameNode(), o14274.Node)
  SED_SetTaskTextKey(2104, -1, -1)
  Game_PrimaryObjectiveReached(GetGameNode(), 3, 2000, 2105)
  Game_PlayMusic(GetGameNode(), "Track3")
end, SetStateValue = function(L0)
  if not (o13889.Value == L0) then
    DelayedFunction(2, o13889, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o13889.Value == L0) then
    o13889["Value"] = L0
    if not (L0 ~= 1) then
      o13889.ChangeTo1()
    end
  end
end }
o13890 = { [nil] = {}, GetCalculated = function()
  if not (o14051.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13890.SetStateValue(o13890.GetCalculated())
end, StartCalculate = function()
  o13890["Value"] = o13890.GetCalculated()
  o13894.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveReached(GetGameNode(), 2, 2000, 2104)
  SED_SetTaskTextKey(0, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
end, SetStateValue = function(L0)
  if not (o13890.Value == L0) then
    o13890["Value"] = L0
    o13894.ReCalculate()
    if not (L0 ~= 1) then
      o13890.ChangeTo1()
    end
  end
end }
o13891 = { [nil] = {}, GetCalculated = function()
  if not (o14039.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13891.SetStateValue(o13891.GetCalculated())
end, StartCalculate = function()
  o13891["Value"] = o13891.GetCalculated()
  o13918.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 2104)
end, SetStateValue = function(L0)
  if not (o13891.Value == L0) then
    o13891["Value"] = L0
    o13918.ReCalculate()
    if not (L0 ~= 1) then
      o13891.ChangeTo1()
    end
  end
end }
o13892 = { [nil] = {}, GetCalculated = function()
  if not (o14155.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13892.SetStateValue(o13892.GetCalculated())
end, StartCalculate = function()
  o13892["Value"] = o13892.GetCalculated()
  o13918.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 0)
end, SetStateValue = function(L0)
  if not (o13892.Value == L0) then
    o13892["Value"] = L0
    o13918.ReCalculate()
    if not (L0 ~= 1) then
      o13892.ChangeTo1()
    end
  end
end }
o13893 = { [nil] = {}, GetCalculated = function()
  if not (o14092.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13893.SetStateValue(o13893.GetCalculated())
end, StartCalculate = function()
  o13893["Value"] = o13893.GetCalculated()
  o13918.StartCalculate()
end, ChangeTo1 = function()
  Game_PrimaryObjectiveFailed(GetGameNode(), 1, 2001, 0)
end, SetStateValue = function(L0)
  if not (o13893.Value == L0) then
    o13893["Value"] = L0
    o13918.ReCalculate()
    if not (L0 ~= 1) then
      o13893.ChangeTo1()
    end
  end
end }
o13894 = { [nil] = {}, GetCalculated = function()
  if not (o13890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o13894.SetStateValue(o13894.GetCalculated())
end, StartCalculate = function()
  o13894["Value"] = o13894.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13894.Value == L0) then
    o13894["Value"] = L0
    o2.ReCalculate()
  end
end }
o13918 = { [nil] = {}, GetCalculated = function()
  if not (o13891.Value == True) then
    if not (o13892.Value == True) then
      if not (o13893.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o13918.SetStateValue(o13918.GetCalculated())
end, StartCalculate = function()
  o13918["Value"] = o13918.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13918.Value == L0) then
    o13918["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o13922 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13922, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13922, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13922, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o13922, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code5")
  else
    CallFunction(o13922, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o13922, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13922, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o13926.SetStateValue(L1)
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
o13926 = { [nil] = {}, Start = function()
  o13926["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13926.Value == L0) then
    o13926["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o13970 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o13970, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o13970, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o13970, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o13970, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Vehicle_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o13970, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Buggy1Path_1", 0.2, 1 } }("Code6")
  else
    CallFunction(o13970, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o13970, "Code5")
  else
    CallFunction(o13970, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o13973.SetStateValue(L1)
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
o13973 = { [nil] = {}, Start = function()
  o13973["Value"] = False
  o13881.StartCalculate()
end, SetStateValue = function(L0)
  if not (o13973.Value == L0) then
    o13973["Value"] = L0
    o13881.ReCalculate()
  end
end }
S_o14017 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14017, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14017, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o14017, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o14017, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o14017, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o14017, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14017, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  Vessel_AttackTurrets(L0.Node, "", "E", "", "", "")
  CallFunction(o14017, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code10")
  else
    CallFunction(o14017, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EerieToMuseumPath_1", 1, 1 } }("Code11")
  else
    CallFunction(o14017, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code12")
  else
    CallFunction(o14017, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code13")
  else
    CallFunction(o14017, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14017, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/EerieToRetreatPath_1", 1, 1 } }("Code15")
  else
    CallFunction(o14017, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code16")
  else
    CallFunction(o14017, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code17")
  else
    CallFunction(o14017, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14017, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.Dock(L0, o13348, nil, 0, "Code19")
  else
    CallFunction(o14017, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, SetStateValue_DestEmp = function(L0, L1)
  o14039.SetStateValue(L1)
end, SetStateValue_DockedOn = function(L0, L1)
  o14051.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 13) then
    if not (L0.CodeIndex >= 14) then
      if not (o14025.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 17) then
    if not (L0.CodeIndex >= 18) then
      if not (o14026.Value ~= True) then
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
o14025 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14025.SetStateValue(o14025.GetCalculated())
end, StartCalculate = function()
  o14025["Value"] = o14025.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14025.Value == L0) then
    DelayedFunction(5, o14025, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14025.Value == L0) then
    o14025["Value"] = L0
    CallFunction(o14017, "ProcesseStateChange")
  end
end }
o14026 = { [nil] = {}, GetCalculated = function()
  if not (o14277.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14026.SetStateValue(o14026.GetCalculated())
end, StartCalculate = function()
  o14026["Value"] = o14026.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14026.Value == L0) then
    o14026["Value"] = L0
    CallFunction(o14017, "ProcesseStateChange")
  end
end }
o14039 = { [nil] = {}, Start = function()
  o14039["Value"] = False
  o13891.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14039.Value == L0) then
    o14039["Value"] = L0
    o13891.ReCalculate()
  end
end }
o14051 = { [nil] = {}, Start = function()
  o14051["Value"] = False
  o13890.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14051.Value == L0) then
    o14051["Value"] = L0
    o13890.ReCalculate()
  end
end }
S_o14080 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14080, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14080, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o14080, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o14080, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o14080, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14080, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o14080, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code8")
  else
    CallFunction(o14080, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AnimalToMuseumPath_1", 1, 1 } }("Code9")
  else
    CallFunction(o14080, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code10")
  else
    CallFunction(o14080, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o14080, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14080, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/AnimalToMuseumPath_2", 1, 1 } }("Code13")
  else
    CallFunction(o14080, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code14")
  else
    CallFunction(o14080, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code15")
  else
    CallFunction(o14080, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14080, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Body_SetEmpShield(L0.Node, 0.091565)
  Body_SetKineticShield(L0.Node, 0, 0.789465)
  CallFunction(o14080, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FakePatrol", "/Scenario_Dynamic/Navigation/FakePatrol" }, 63, 0.5, "Code19")
  else
    CallFunction(o14080, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o14080, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
end, SetStateValue_Destroyed = function(L0, L1)
  o14092.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o14100.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o14088.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 15) then
    if not (L0.CodeIndex >= 16) then
      if not (o14089.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 18) then
    if not (L0.CodeIndex >= 19) then
      if not (o14087.Value ~= True) then
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
o14087 = { [nil] = {}, GetCalculated = function()
  if not (o13884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14087.SetStateValue(o14087.GetCalculated())
end, StartCalculate = function()
  o14087["Value"] = o14087.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14087.Value == L0) then
    DelayedFunction(11, o14087, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14087.Value == L0) then
    o14087["Value"] = L0
    CallFunction(o14080, "ProcesseStateChange")
  end
end }
o14088 = { [nil] = {}, GetCalculated = function()
  if not (o13883.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14088.SetStateValue(o14088.GetCalculated())
end, StartCalculate = function()
  o14088["Value"] = o14088.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14088.Value == L0) then
    DelayedFunction(2, o14088, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14088.Value == L0) then
    o14088["Value"] = L0
    CallFunction(o14080, "ProcesseStateChange")
  end
end }
o14089 = { [nil] = {}, GetCalculated = function()
  if not (o13884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14089.SetStateValue(o14089.GetCalculated())
end, StartCalculate = function()
  o14089["Value"] = o14089.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14089.Value == L0) then
    o14089["Value"] = L0
    CallFunction(o14080, "ProcesseStateChange")
  end
end }
o14092 = { [nil] = {}, Start = function()
  o14092["Value"] = False
  o13893.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14092.Value == L0) then
    o14092["Value"] = L0
    o13893.ReCalculate()
  end
end }
o14100 = { [nil] = {}, Start = function()
  o14100["Value"] = False
  o13887.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14100.Value == L0) then
    o14100["Value"] = L0
    o13887.ReCalculate()
  end
end }
S_o14143 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14143, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14143, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o14143, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code4")
  else
    CallFunction(o14143, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o14143, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14143, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  StopAllActiveBehaviours(L0)
  CallFunction(o14143, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code8")
  else
    CallFunction(o14143, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyToMuseumPath_1", 1, 1 } }("Code9")
  else
    CallFunction(o14143, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code10")
  else
    CallFunction(o14143, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code11")
  else
    CallFunction(o14143, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14143, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/StoneyToMuseumPath_2", 1, 1 } }("Code13")
  else
    CallFunction(o14143, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  SendRadioMessageTake(o14143.Node, o13865.Node, 470)
  CallFunction(o14143, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code15")
  else
    CallFunction(o14143, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code16")
  else
    CallFunction(o14143, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14143, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Body_SetEmpShield(L0.Node, 0.115646)
  Body_SetKineticShield(L0.Node, 0, 0.789465)
  CallFunction(o14143, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/FakePatrol", "/Scenario_Dynamic/Navigation/FakePatrol" }, 63, 0.5, "Code20")
  else
    CallFunction(o14143, "Code20")
  end
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o14143, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
end, SetStateValue_Destroyed = function(L0, L1)
  o14155.SetStateValue(L1)
end, SetStateValue_Emp = function(L0, L1)
  o14163.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 11) then
    if not (L0.CodeIndex >= 12) then
      if not (o14151.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 16) then
    if not (L0.CodeIndex >= 17) then
      if not (o14152.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 19) then
    if not (L0.CodeIndex >= 20) then
      if not (o14150.Value ~= True) then
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
o14150 = { [nil] = {}, GetCalculated = function()
  if not (o13884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14150.SetStateValue(o14150.GetCalculated())
end, StartCalculate = function()
  o14150["Value"] = o14150.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14150.Value == L0) then
    DelayedFunction(12, o14150, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14150.Value == L0) then
    o14150["Value"] = L0
    CallFunction(o14143, "ProcesseStateChange")
  end
end }
o14151 = { [nil] = {}, GetCalculated = function()
  if not (o13883.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14151.SetStateValue(o14151.GetCalculated())
end, StartCalculate = function()
  o14151["Value"] = o14151.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14151.Value == L0) then
    DelayedFunction(2, o14151, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14151.Value == L0) then
    o14151["Value"] = L0
    CallFunction(o14143, "ProcesseStateChange")
  end
end }
o14152 = { [nil] = {}, GetCalculated = function()
  if not (o13884.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14152.SetStateValue(o14152.GetCalculated())
end, StartCalculate = function()
  o14152["Value"] = o14152.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14152.Value == L0) then
    o14152["Value"] = L0
    CallFunction(o14143, "ProcesseStateChange")
  end
end }
o14155 = { [nil] = {}, Start = function()
  o14155["Value"] = False
  o13892.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14155.Value == L0) then
    o14155["Value"] = L0
    o13892.ReCalculate()
  end
end }
o14163 = { [nil] = {}, Start = function()
  o14163["Value"] = False
  o13887.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14163.Value == L0) then
    o14163["Value"] = L0
    o13887.ReCalculate()
  end
end }
S_o14206 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o14206, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o14209.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o14209 = { [nil] = {}, Start = function()
  o14209["Value"] = False
  o13879.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14209.Value == L0) then
    o14209["Value"] = L0
    o13879.ReCalculate()
  end
end }
S_o14211 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o14211, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o14214.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o14214 = { [nil] = {}, Start = function()
  o14214["Value"] = False
  o13883.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14214.Value == L0) then
    o14214["Value"] = L0
    o13883.ReCalculate()
  end
end }
S_o14216 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14216, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14216, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o14216, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code4")
  else
    CallFunction(o14216, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o14216, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14216, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/MayLingPatrolArea", "/Scenario_Dynamic/Navigation/MayLingTriggerArea", "/Scenario_Dynamic/Navigation/MayLingFollowArea", "player1", "", "", "", 1, "Code7")
  else
    CallFunction(o14216, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o14223.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14219.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o14220.Value ~= True) then
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
o14219 = { [nil] = {}, GetCalculated = function()
  if not (o13887.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14219.SetStateValue(o14219.GetCalculated())
end, StartCalculate = function()
  o14219["Value"] = o14219.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14219.Value == L0) then
    DelayedFunction(2, o14219, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14219.Value == L0) then
    o14219["Value"] = L0
    CallFunction(o14216, "ProcesseStateChange")
  end
end }
o14220 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14220.SetStateValue(o14220.GetCalculated())
end, StartCalculate = function()
  o14220["Value"] = o14220.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14220.Value == L0) then
    o14220["Value"] = L0
    CallFunction(o14216, "ProcesseStateChange")
  end
end }
o14223 = { [nil] = {}, Start = function()
  o14223["Value"] = False
  o13889.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14223.Value == L0) then
    o14223["Value"] = L0
    o13889.ReCalculate()
  end
end }
S_o14274 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o14017.Node)
  CallFunction(o14274, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o14277.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o14277 = { [nil] = {}, Start = function()
  o14277["Value"] = False
  o14026.StartCalculate()
end, SetStateValue = function(L0)
  if not (o14277.Value == L0) then
    o14277["Value"] = L0
    o14026.ReCalculate()
  end
end }
S_o14279 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14279, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14279, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14279, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14279, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14279, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14282.Value ~= True) then
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
o14282 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14282.SetStateValue(o14282.GetCalculated())
end, StartCalculate = function()
  o14282["Value"] = o14282.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14282.Value == L0) then
    DelayedFunction(60, o14282, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14282.Value == L0) then
    o14282["Value"] = L0
    CallFunction(o14279, "ProcesseStateChange")
  end
end }
S_o14336 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14336, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14336, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14336, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14336, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14336, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14339.Value ~= True) then
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
o14339 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14339.SetStateValue(o14339.GetCalculated())
end, StartCalculate = function()
  o14339["Value"] = o14339.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14339.Value == L0) then
    DelayedFunction(60.994654, o14339, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14339.Value == L0) then
    o14339["Value"] = L0
    CallFunction(o14336, "ProcesseStateChange")
  end
end }
S_o14393 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14393, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14393, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14393, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14393, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14393, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14396.Value ~= True) then
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
o14396 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14396.SetStateValue(o14396.GetCalculated())
end, StartCalculate = function()
  o14396["Value"] = o14396.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14396.Value == L0) then
    DelayedFunction(61.78454, o14396, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14396.Value == L0) then
    o14396["Value"] = L0
    CallFunction(o14393, "ProcesseStateChange")
  end
end }
S_o14450 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14450, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14450, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14450, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14450, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14450, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14453.Value ~= True) then
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
o14453 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14453.SetStateValue(o14453.GetCalculated())
end, StartCalculate = function()
  o14453["Value"] = o14453.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14453.Value == L0) then
    DelayedFunction(60.578945, o14453, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14453.Value == L0) then
    o14453["Value"] = L0
    CallFunction(o14450, "ProcesseStateChange")
  end
end }
S_o14507 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14507, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14507, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14507, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14507, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14507, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14510.Value ~= True) then
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
o14510 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14510.SetStateValue(o14510.GetCalculated())
end, StartCalculate = function()
  o14510["Value"] = o14510.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14510.Value == L0) then
    DelayedFunction(61.879843, o14510, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14510.Value == L0) then
    o14510["Value"] = L0
    CallFunction(o14507, "ProcesseStateChange")
  end
end }
S_o14564 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14564, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14564, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14564, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14564, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14564, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14567.Value ~= True) then
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
o14567 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14567.SetStateValue(o14567.GetCalculated())
end, StartCalculate = function()
  o14567["Value"] = o14567.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14567.Value == L0) then
    DelayedFunction(62.315647, o14567, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14567.Value == L0) then
    o14567["Value"] = L0
    CallFunction(o14564, "ProcesseStateChange")
  end
end }
S_o14621 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14621, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14621, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14621, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14621, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14621, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14624.Value ~= True) then
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
o14624 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14624.SetStateValue(o14624.GetCalculated())
end, StartCalculate = function()
  o14624["Value"] = o14624.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14624.Value == L0) then
    DelayedFunction(62.867454, o14624, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14624.Value == L0) then
    o14624["Value"] = L0
    CallFunction(o14621, "ProcesseStateChange")
  end
end }
S_o14678 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14678, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14678, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14678, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14678, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14678, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14681.Value ~= True) then
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
o14681 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14681.SetStateValue(o14681.GetCalculated())
end, StartCalculate = function()
  o14681["Value"] = o14681.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14681.Value == L0) then
    DelayedFunction(62.54565, o14681, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14681.Value == L0) then
    o14681["Value"] = L0
    CallFunction(o14678, "ProcesseStateChange")
  end
end }
S_o14735 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14735, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14735, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14735, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14735, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14735, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14738.Value ~= True) then
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
o14738 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14738.SetStateValue(o14738.GetCalculated())
end, StartCalculate = function()
  o14738["Value"] = o14738.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14738.Value == L0) then
    DelayedFunction(61.87984, o14738, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14738.Value == L0) then
    o14738["Value"] = L0
    CallFunction(o14735, "ProcesseStateChange")
  end
end }
S_o14792 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14792, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14792, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14792, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14792, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14792, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14795.Value ~= True) then
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
o14795 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14795.SetStateValue(o14795.GetCalculated())
end, StartCalculate = function()
  o14795["Value"] = o14795.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14795.Value == L0) then
    DelayedFunction(62.31565, o14795, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14795.Value == L0) then
    o14795["Value"] = L0
    CallFunction(o14792, "ProcesseStateChange")
  end
end }
S_o14849 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14849, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14849, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14849, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14849, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14849, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14852.Value ~= True) then
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
o14852 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14852.SetStateValue(o14852.GetCalculated())
end, StartCalculate = function()
  o14852["Value"] = o14852.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14852.Value == L0) then
    DelayedFunction(62.86745, o14852, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14852.Value == L0) then
    o14852["Value"] = L0
    CallFunction(o14849, "ProcesseStateChange")
  end
end }
S_o14906 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14906, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14906, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o14906, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PolicePath_1", 1, 1 } }("Code4")
  else
    CallFunction(o14906, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PolicePatrolArea", "/Scenario_Dynamic/Navigation/PoliceTriggerArea", "/Scenario_Dynamic/Navigation/PoliceFollowArea", "pla", "wng_may", "", "", 0.25, "Code5")
  else
    CallFunction(o14906, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14909.Value ~= True) then
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
o14909 = { [nil] = {}, GetCalculated = function()
  if not (o13888.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14909.SetStateValue(o14909.GetCalculated())
end, StartCalculate = function()
  o14909["Value"] = o14909.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14909.Value == L0) then
    DelayedFunction(62.54565, o14909, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o14909.Value == L0) then
    o14909["Value"] = L0
    CallFunction(o14906, "ProcesseStateChange")
  end
end }
S_o14963 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o14963, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o14963, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o14963, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o14964.Value ~= True) then
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
o14964 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o14964.SetStateValue(o14964.GetCalculated())
end, StartCalculate = function()
  o14964["Value"] = o14964.GetCalculated()
end, SetStateValue = function(L0)
  if not (o14964.Value == L0) then
    o14964["Value"] = L0
    CallFunction(o14963, "ProcesseStateChange")
  end
end }
S_o15005 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15005, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15005, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15005, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15006.Value ~= True) then
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
o15006 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15006.SetStateValue(o15006.GetCalculated())
end, StartCalculate = function()
  o15006["Value"] = o15006.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15006.Value == L0) then
    o15006["Value"] = L0
    CallFunction(o15005, "ProcesseStateChange")
  end
end }
S_o15047 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15047, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15047, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15047, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15048.Value ~= True) then
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
o15048 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15048.SetStateValue(o15048.GetCalculated())
end, StartCalculate = function()
  o15048["Value"] = o15048.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15048.Value == L0) then
    o15048["Value"] = L0
    CallFunction(o15047, "ProcesseStateChange")
  end
end }
S_o15089 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15089, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15089, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15089, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15090.Value ~= True) then
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
o15090 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15090.SetStateValue(o15090.GetCalculated())
end, StartCalculate = function()
  o15090["Value"] = o15090.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15090.Value == L0) then
    o15090["Value"] = L0
    CallFunction(o15089, "ProcesseStateChange")
  end
end }
S_o15131 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15131, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15131, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15131, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15132.Value ~= True) then
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
o15132 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15132.SetStateValue(o15132.GetCalculated())
end, StartCalculate = function()
  o15132["Value"] = o15132.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15132.Value == L0) then
    o15132["Value"] = L0
    CallFunction(o15131, "ProcesseStateChange")
  end
end }
S_o15173 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15173, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15173, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15173, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15174.Value ~= True) then
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
o15174 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15174.SetStateValue(o15174.GetCalculated())
end, StartCalculate = function()
  o15174["Value"] = o15174.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15174.Value == L0) then
    o15174["Value"] = L0
    CallFunction(o15173, "ProcesseStateChange")
  end
end }
S_o15215 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15215, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15215, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15215, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15216.Value ~= True) then
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
o15216 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15216.SetStateValue(o15216.GetCalculated())
end, StartCalculate = function()
  o15216["Value"] = o15216.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15216.Value == L0) then
    o15216["Value"] = L0
    CallFunction(o15215, "ProcesseStateChange")
  end
end }
S_o15257 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15257, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15257, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15257, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15258.Value ~= True) then
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
o15258 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15258.SetStateValue(o15258.GetCalculated())
end, StartCalculate = function()
  o15258["Value"] = o15258.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15258.Value == L0) then
    o15258["Value"] = L0
    CallFunction(o15257, "ProcesseStateChange")
  end
end }
S_o15299 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15299, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15299, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15299, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15300.Value ~= True) then
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
o15300 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15300.SetStateValue(o15300.GetCalculated())
end, StartCalculate = function()
  o15300["Value"] = o15300.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15300.Value == L0) then
    o15300["Value"] = L0
    CallFunction(o15299, "ProcesseStateChange")
  end
end }
S_o15341 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15341, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15341, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15341, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15342.Value ~= True) then
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
o15342 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15342.SetStateValue(o15342.GetCalculated())
end, StartCalculate = function()
  o15342["Value"] = o15342.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15342.Value == L0) then
    o15342["Value"] = L0
    CallFunction(o15341, "ProcesseStateChange")
  end
end }
S_o15383 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15383, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15383, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15383, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15384.Value ~= True) then
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
o15384 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15384.SetStateValue(o15384.GetCalculated())
end, StartCalculate = function()
  o15384["Value"] = o15384.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15384.Value == L0) then
    o15384["Value"] = L0
    CallFunction(o15383, "ProcesseStateChange")
  end
end }
S_o15425 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15425, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15425, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15425, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15426.Value ~= True) then
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
o15426 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15426.SetStateValue(o15426.GetCalculated())
end, StartCalculate = function()
  o15426["Value"] = o15426.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15426.Value == L0) then
    o15426["Value"] = L0
    CallFunction(o15425, "ProcesseStateChange")
  end
end }
S_o15467 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15467, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15467, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15467, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15468.Value ~= True) then
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
o15468 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15468.SetStateValue(o15468.GetCalculated())
end, StartCalculate = function()
  o15468["Value"] = o15468.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15468.Value == L0) then
    o15468["Value"] = L0
    CallFunction(o15467, "ProcesseStateChange")
  end
end }
S_o15509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15510.Value ~= True) then
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
o15510 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15510.SetStateValue(o15510.GetCalculated())
end, StartCalculate = function()
  o15510["Value"] = o15510.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15510.Value == L0) then
    o15510["Value"] = L0
    CallFunction(o15509, "ProcesseStateChange")
  end
end }
S_o15551 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15551, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15551, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15551, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15552.Value ~= True) then
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
o15552 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15552.SetStateValue(o15552.GetCalculated())
end, StartCalculate = function()
  o15552["Value"] = o15552.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15552.Value == L0) then
    o15552["Value"] = L0
    CallFunction(o15551, "ProcesseStateChange")
  end
end }
S_o15593 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15593, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15593, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15593, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15594.Value ~= True) then
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
o15594 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15594.SetStateValue(o15594.GetCalculated())
end, StartCalculate = function()
  o15594["Value"] = o15594.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15594.Value == L0) then
    o15594["Value"] = L0
    CallFunction(o15593, "ProcesseStateChange")
  end
end }
S_o15635 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15635, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15635, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o15635, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o15635, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Node_LeaveSimulation(L0.Node)
  CallFunction(o15635, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o15637.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o15636.Value ~= True) then
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
o15636 = { [nil] = {}, GetCalculated = function()
  if not (o13886.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15636.SetStateValue(o15636.GetCalculated())
end, StartCalculate = function()
  o15636["Value"] = o15636.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15636.Value == L0) then
    o15636["Value"] = L0
    CallFunction(o15635, "ProcesseStateChange")
  end
end }
o15637 = { [nil] = {}, GetCalculated = function()
  if not (o13354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o15637.SetStateValue(o15637.GetCalculated())
end, StartCalculate = function()
  o15637["Value"] = o15637.GetCalculated()
end, SetStateValue = function(L0)
  if not (o15637.Value == L0) then
    o15637["Value"] = L0
    CallFunction(o15635, "ProcesseStateChange")
  end
end }
S_o15638 = { [nil] = {}, Start = function(L0)

end }
o15640 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o15642 = FormationLib.CreateFormation("Triangle", "", "", "", 30, 30)
S_o15643 = { [nil] = {}, Start = function(L0)

end }
S_o15644 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o15644, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o15644, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o15639, o15640, "/IngameScenes/Navigation/PlayerPath")
  FormationLib.PlaceFormationPath(o15641, o15642, "/IngameScenes/Navigation/WingmenPath")
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_MoveTo(L0.Node, "/IngameScenes/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0.75, "MMMN", 0)
  CallFunction(o15644, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 11.8, "Code11")
  else
    CallFunction(o15644, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  CallFunction(o14017, "Code7")
  CallFunction(o14080, "Code6")
  CallFunction(o14143, "Code6")
  CallFunction(o15644, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code16")
  else
    CallFunction(o15644, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  Game_SetWayPoint(GetGameNode(), o14206.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  SendRadioMessageTake(o13865.Node, o13865.Node, 466)
  CallFunction(o15644, "Code19")
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o15649 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.3, "Code1")
  else
    CallFunction(o15649, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o15639, o15640, "/IngameScenes/Navigation/PlayerPath", "pos_1", "pos_7", 0.6, 1, "Code2")
  else
    CallFunction(o15649, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o15652 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.3, "Code1")
  else
    CallFunction(o15652, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o15641, o15642, "/IngameScenes/Navigation/WingmenPath", "pos_1", "pos_5", 1, 1, "Code2")
  else
    CallFunction(o15652, "Code2")
  end
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
  Game_LoadProgress_Enter(Node_Find("/"), 449)
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
  o5228 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_torptower_1/Turm1", S_o5228)
  o5231.Start()
  o5274 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_turret_hard_1/Turm1", S_o5274)
  o5277.Start()
  o5320 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum1", S_o5320)
  o5322.Start()
  o5323.Start()
  o5367 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum2", S_o5367)
  o5369.Start()
  o5370.Start()
  o5414 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum3", S_o5414)
  o5416.Start()
  o5417.Start()
  o5461 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum4", S_o5461)
  o5463.Start()
  o5464.Start()
  o5508 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_trafo_des_for_museum5", S_o5508)
  o5510.Start()
  o5511.Start()
  o5555 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_trafo_des_2", S_o5555)
  o5602 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_museum_1", S_o5602)
  o5648 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_l_1", S_o5648)
  o5694 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_1", S_o5694)
  o5740 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_2", S_o5740)
  o5786 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_3", S_o5786)
  o5832 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_4", S_o5832)
  o5878 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_5", S_o5878)
  o5924 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_6", S_o5924)
  o5970 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_7", S_o5970)
  o6016 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_03_8", S_o6016)
  o6062 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_hole_s", S_o6062)
  o6108 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_1", S_o6108)
  o6154 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_2", S_o6154)
  o6200 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_3", S_o6200)
  o6246 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_02_4", S_o6246)
  o6292 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_1", S_o6292)
  o6338 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_2", S_o6338)
  o6384 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_3", S_o6384)
  o6430 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_4", S_o6430)
  o6476 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_5", S_o6476)
  o6522 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_6", S_o6522)
  o6568 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_7", S_o6568)
  o6614 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_8", S_o6614)
  o6660 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_vbstueck_9", S_o6660)
  o6706 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_1", S_o6706)
  o6752 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_2", S_o6752)
  o6798 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_cl_vbstueck_g_3", S_o6798)
  o6844 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_vbstueck_1", S_o6844)
  o6890 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_hole_1", S_o6890)
  o6936 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_hole_2", S_o6936)
  o6982 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_hole_3", S_o6982)
  o7028 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_hole_4", S_o7028)
  o7074 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_hole_5", S_o7074)
  o7120 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_hole_6", S_o7120)
  o7166 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_0", S_o7166)
  o7212 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_1", S_o7212)
  o7258 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_2", S_o7258)
  o7304 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_3", S_o7304)
  o7350 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_4", S_o7350)
  o7396 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_5", S_o7396)
  o7442 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_6", S_o7442)
  o7488 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_7", S_o7488)
  o7534 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_8", S_o7534)
  o7580 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_9", S_o7580)
  o7626 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_10", S_o7626)
  o7672 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_11", S_o7672)
  o7718 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_12", S_o7718)
  o7764 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_03_13", S_o7764)
  o7810 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_02_1", S_o7810)
  o7856 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_02_2", S_o7856)
  o7902 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_02_3", S_o7902)
  o7948 = BindEasy(Node_Find("/Scenario_Static/Object"), "2nd_bottom_02_4", S_o7948)
  o7994 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_1", S_o7994)
  o8040 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_2", S_o8040)
  o8086 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_3", S_o8086)
  o8132 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_4", S_o8132)
  o8178 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_5", S_o8178)
  o8224 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_6", S_o8224)
  o8270 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_7", S_o8270)
  o8316 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_8", S_o8316)
  o8362 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_9", S_o8362)
  o8408 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_10", S_o8408)
  o8454 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_11", S_o8454)
  o8500 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_12", S_o8500)
  o8546 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_13", S_o8546)
  o8592 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_14", S_o8592)
  o8638 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_15", S_o8638)
  o8684 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_16", S_o8684)
  o8730 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_17", S_o8730)
  o8776 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_bottom_wall_18", S_o8776)
  o8822 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_1", S_o8822)
  o8868 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_2", S_o8868)
  o8914 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_3", S_o8914)
  o8960 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_4", S_o8960)
  o9006 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_5", S_o9006)
  o9052 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_6", S_o9052)
  o9098 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_7", S_o9098)
  o9144 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_8", S_o9144)
  o9190 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_9", S_o9190)
  o9236 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_03_10", S_o9236)
  o9282 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_02_1", S_o9282)
  o9328 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_02_2", S_o9328)
  o9374 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_hole_1", S_o9374)
  o9420 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_hole_2", S_o9420)
  o9466 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_hole_3", S_o9466)
  o9512 = BindEasy(Node_Find("/Scenario_Static/Object"), "1st_bottom_hole_4", S_o9512)
  o9558 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_scoop_1", S_o9558)
  o9604 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_turret_hard_emp_1/Turm1", S_o9604)
  o9609.Start()
  o9652 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_turret_hard_emp_2/Turm1", S_o9652)
  o9657.Start()
  o9700 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_turret_hard_emp_3/Turm1", S_o9700)
  o9705.Start()
  o9748 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_turret_hard_emp_4/Turm1", S_o9748)
  o9753.Start()
  o9796 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_torptower_emp_1/Turm1", S_o9796)
  o9801.Start()
  o9844 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_torptower_emp_2/Turm1", S_o9844)
  o9849.Start()
  o9892 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_torptower_emp_3/Turm1", S_o9892)
  o9897.Start()
  o9940 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_laserwall_1", S_o9940)
  o9942 = BindEasy(Node_Find("/Scenario_Static/Object"), "mu_laserwall_2", S_o9942)
  o9944 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_t1", S_o9944)
  o9990 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_shipyard_t2", S_o9990)
  o10036 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_3", S_o10036)
  o10082 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_dock1_4_4", S_o10082)
  o10128 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_1", S_o10128)
  o10174 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_2", S_o10174)
  o10220 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_3", S_o10220)
  o10266 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_4", S_o10266)
  o10312 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_3", S_o10312)
  o10358 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_docking_4", S_o10358)
  o10404 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_shelter_1", S_o10404)
  o10450 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_shelter_2", S_o10450)
  o10496 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_01_1", S_o10496)
  o10542 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_1", S_o10542)
  o10588 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_03_1", S_o10588)
  o10634 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3b_02_2", S_o10634)
  o10680 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_1", S_o10680)
  o10726 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_2", S_o10726)
  o10772 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_3", S_o10772)
  o10818 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_fin_4", S_o10818)
  o10864 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_1", S_o10864)
  o10910 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_2", S_o10910)
  o10956 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_3", S_o10956)
  o11002 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_4", S_o11002)
  o11048 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_5", S_o11048)
  o11094 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_quay_6", S_o11094)
  o11140 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_1", S_o11140)
  o11186 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_2", S_o11186)
  o11232 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_3", S_o11232)
  o11278 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_4", S_o11278)
  o11324 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_6", S_o11324)
  o11370 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_7", S_o11370)
  o11416 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_8", S_o11416)
  o11462 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_9", S_o11462)
  o11508 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_10", S_o11508)
  o11554 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_11", S_o11554)
  o11600 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_12", S_o11600)
  o11646 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_13", S_o11646)
  o11692 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_14", S_o11692)
  o11738 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small03_15", S_o11738)
  o11784 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_1", S_o11784)
  o11830 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_2", S_o11830)
  o11876 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_3", S_o11876)
  o11922 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_4", S_o11922)
  o11968 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_5", S_o11968)
  o12014 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_6", S_o12014)
  o12060 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_7", S_o12060)
  o12106 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_8", S_o12106)
  o12152 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_9", S_o12152)
  o12198 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small02_10", S_o12198)
  o12244 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_1", S_o12244)
  o12290 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_2", S_o12290)
  o12336 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_3", S_o12336)
  o12382 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_4", S_o12382)
  o12428 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_9", S_o12428)
  o12474 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_10", S_o12474)
  o12520 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_11", S_o12520)
  o12566 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_12", S_o12566)
  o12612 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_13", S_o12612)
  o12658 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_14", S_o12658)
  o12704 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_15", S_o12704)
  o12750 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_rohr_small01_16", S_o12750)
  o12796 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_1", S_o12796)
  o12842 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_2", S_o12842)
  o12888 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_3", S_o12888)
  o12934 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_4", S_o12934)
  o12980 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_5", S_o12980)
  o13026 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_6", S_o13026)
  o13072 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_7", S_o13072)
  o13118 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_gangway03_8", S_o13118)
  o13164 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_1", S_o13164)
  o13210 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_2", S_o13210)
  o13256 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_3", S_o13256)
  o13302 = BindEasy(Node_Find("/Scenario_Static/Object"), "ship_hetank_des_4", S_o13302)
  o13349 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tReachedActiveBarrier", S_o13349)
  o13354.Start()
  o13355 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "tMayLingStart", S_o13355)
  o13360.Start()
  o13361 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p1", S_o13361)
  o13417 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p1", S_o13417)
  o13473 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p1", S_o13473)
  o13529 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p1", S_o13529)
  o13585 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_skipjack_p1", S_o13585)
  o13641 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_avenger_p2", S_o13641)
  o13697 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_police_p2", S_o13697)
  o13753 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_drowsymaggie_p2", S_o13753)
  o13809 = BindEasy(Node_Find("/Scenario_Dynamic/Object/TRAFFIC"), "trc_toiler_p2", S_o13809)
  o13865 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o13865)
  o13922 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_tank_1", S_o13922)
  o13926.Start()
  o13970 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_torpedobuggy_1", S_o13970)
  o13973.Start()
  o14017 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_eerie", S_o14017)
  o14039.Start()
  o14051.Start()
  o14080 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_animal_1", S_o14080)
  o14092.Start()
  o14100.Start()
  o14143 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_stoney_1", S_o14143)
  o14155.Start()
  o14163.Start()
  o14206 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o14206)
  o14209.Start()
  o14211 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_2", S_o14211)
  o14214.Start()
  o14216 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_mayday_1", S_o14216)
  o14223.Start()
  o14274 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_escort_1", S_o14274)
  o14277.Start()
  o14279 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_1", S_o14279)
  o14336 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_2", S_o14336)
  o14393 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_3", S_o14393)
  o14450 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_4", S_o14450)
  o14507 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_5", S_o14507)
  o14564 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_6", S_o14564)
  o14621 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_7", S_o14621)
  o14678 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_8", S_o14678)
  o14735 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_9", S_o14735)
  o14792 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_10", S_o14792)
  o14849 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_11", S_o14849)
  o14906 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "atl_police_12", S_o14906)
  o14963 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_1_1", S_o14963)
  o15005 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_1_2", S_o15005)
  o15047 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_1_3", S_o15047)
  o15089 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_1_4", S_o15089)
  o15131 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_2_1", S_o15131)
  o15173 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_2_2", S_o15173)
  o15215 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_2_3", S_o15215)
  o15257 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_2_4", S_o15257)
  o15299 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_3_1", S_o15299)
  o15341 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_3_2", S_o15341)
  o15383 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_3_3", S_o15383)
  o15425 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_3_4", S_o15425)
  o15467 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_4_1", S_o15467)
  o15509 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_4_2", S_o15509)
  o15551 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_4_3", S_o15551)
  o15593 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_laserbeam_5h3_4_4", S_o15593)
  o15635 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "mu_laserwall_trig", S_o15635)
  o15638 = BindEasy(Node_Find("/"), "Camera", S_o15638)
  o15643 = BindEasy(Node_Find("/IngameScenes/Navigation"), "LookFrom_1", S_o15643)
  o15644 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro", S_o15644)
  o15649 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn", S_o15649)
  o15652 = BindEasy(Node_Find("/IngameScenes/Director"), "Intro_AddOn2", S_o15652)
  o15639 = { {}, o13865 }()
  o15641 = { {}, o14017, o14080, o14143 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
