-- dekompiliert aus dogfight.sco
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
  Terrain_LoadTerrain(node1, "map/dogfight/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/dogfight/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/dogfight/Lmsh/", "map/dogfight/Ltex/")
  Game_SetTerrainDepth(node0, 3666)
  Game_SetDecompressionHeight(node0, 900)
  Game_SetAmbientLight(node0, 0.019608, 0.086275, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.172549, 0.282353)
  Game_SetParallelLightB(node0, 0.462745, 0.462745, 0.086275)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_dogfight_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music_track02.sam", 1)
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
  node8 = Node_CreateNode("nod_generic", "atl_digmod_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(366.006294, 1390.722767, 246.461021), MAT_Vector3(-41.985254, 0, 0))
  Node_ParseIniFile(node8, "osd/atl/atl_digmod.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_tnk_k_1")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(459.817562, 1368.380852, 238.13857), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node9, 0)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_tnk_k_2")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(561.436772, 861.34726, 295.093647), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_tank_sml.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "navstab1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(1002.049517, 1832.111486, 69.118521), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node11, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "navstab2")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(752.25084, 2071.169677, 67.462442), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node12, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "navstab3")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(462.088159, 2175.459108, 67.784995), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node13, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "navstab4")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(231.211199, 2111.872862, 70.313924), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node14, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "navstab5")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(209.928479, 1835.977033, 111.854219), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node15, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "navstab6")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(201.782373, 1967.456032, 91.560623), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node16, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "navstab7")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(248.100101, 1694.690077, 126.605817), MAT_Vector3(-163.3424, -3.7, 0.6))
  Node_ParseIniFile(node17, "osd/gen/gen_pole1.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "gen_kai2_1")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(275.183133, 1246.673279, 234.752103), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node18, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "gen_industry1_1")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(278.780917, 1135.288153, 276.263128), MAT_Vector3(-178.613739, 0, 0))
  Node_ParseIniFile(node19, "osd/gen/gen_industry1.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "atl_wblock3a_01_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(522.112698, 831.896739, 280.569743), MAT_Vector3(-17.2495, 0, 0))
  Node_ParseIniFile(node20, "osd/atl/atl_wblock3a_01.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "tz_element01_1")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(484.586863, 740.175396, 301.299119), MAT_Vector3(93.504077, 3.433169, 0))
  Node_ParseIniFile(node21, "osd/tz/tz_element01.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "tz_element05a_1")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(682.679148, 725.903162, 321.562801), MAT_Vector3(-177.279105, 0, 0))
  Node_ParseIniFile(node22, "osd/tz/tz_element05a.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "gen_industry2_1")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(824.578198, 753.156391, 318.357761), MAT_Vector3(1.424549, 0, 0))
  Node_ParseIniFile(node23, "osd/gen/gen_industry2.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "gen_kai2_2")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(786.192997, 815.696911, 286.610988), MAT_Vector3(0, -1.525853, 0))
  Node_ParseIniFile(node24, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "gen_kai2_3")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(20.619552, 1625.489045, 327.460869), MAT_Vector3(-90.025326, 0, 0))
  Node_ParseIniFile(node25, "osd/gen/gen_kai2.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(-33.811786, 1630.204072, 354.148358), MAT_Vector3(-90.025326, 0, 0))
  Node_ParseIniFile(node26, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node27)
  Node_ParseIniFile(node27, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node27, "map/dogfight/Terrain/coral_01.tga")
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_fx_plant", "fungus_01_1")
  Node_AddSon(node7, node28)
  Node_ParseIniFile(node28, "osd/fx_plant/fungus_01.osd")
  FX_Plant_SetMap(node28, "map/dogfight/Terrain/fungus_01.tga")
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_fx_plant", "grass_01_1")
  Node_AddSon(node7, node29)
  Node_ParseIniFile(node29, "osd/fx_plant/grass_01.osd")
  FX_Plant_SetMap(node29, "map/dogfight/Terrain/grass_01.tga")
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_fx_plant", "stone_01_1")
  Node_AddSon(node7, node30)
  Node_ParseIniFile(node30, "osd/fx_plant/stone_01.osd")
  FX_Plant_SetMap(node30, "map/dogfight/Terrain/stone_01.tga")
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_fx_sky", "fx_sky_01_1")
  Node_AddSon(node7, node31)
  Node_ParseIniFile(node31, "osd/fx_sky/fx_sky_01.osd")
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node32)
  Node_ParseIniFile(node32, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_fx_plankton", "fx_plankton_green_1")
  Node_AddSon(node7, node33)
  Node_ParseIniFile(node33, "osd/fx_plankton/fx_plankton_green.osd")
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node34)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node34, node35)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node34, node36)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_1")
  Node_AddSon(node36, node37)
  PatrolArea_SetPosition(node37, MAT_Vector3(2054.081237, 2083.170307, 300.473445))
  PatrolArea_SetRadius(node37, 3500)
  PatrolArea_SetMinZ(node37, -1200)
  PatrolArea_SetMaxZ(node37, 2220)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_2")
  Node_AddSon(node36, node38)
  PatrolArea_SetPosition(node38, MAT_Vector3(952.316801, 1482.815594, 309.635263))
  PatrolArea_SetRadius(node38, 150)
  PatrolArea_SetMinZ(node38, -80)
  PatrolArea_SetMaxZ(node38, 20)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_3")
  Node_AddSon(node36, node39)
  PatrolArea_SetPosition(node39, MAT_Vector3(798.792989, 1647.02005, 317.384703))
  PatrolArea_SetRadius(node39, 150)
  PatrolArea_SetMinZ(node39, -120)
  PatrolArea_SetMaxZ(node39, 20)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("NOD_PatrolArea", "PatrolArea_4")
  Node_AddSon(node36, node40)
  PatrolArea_SetPosition(node40, MAT_Vector3(600.142652, 1795.308722, 299.9549))
  PatrolArea_SetRadius(node40, 150)
  PatrolArea_SetMinZ(node40, -100)
  PatrolArea_SetMaxZ(node40, 20)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("NOD_Position", "Waypoint_1")
  Node_AddSon(node36, node41)
  Position_SetPosition(node41, MAT_Vector3(607.304986, 2174.715104, 228.422089))
  Position_SetRadius(node41, 5)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("NOD_Position", "Waypoint_2")
  Node_AddSon(node36, node42)
  Position_SetPosition(node42, MAT_Vector3(261.690031, 2114.005269, 236.233262))
  Position_SetRadius(node42, 5)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("NOD_Position", "Waypoint_3")
  Node_AddSon(node36, node43)
  Position_SetPosition(node43, MAT_Vector3(202.260139, 1926.7185, 263.616559))
  Position_SetRadius(node43, 5)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Position", "Waypoint_4")
  Node_AddSon(node36, node44)
  Position_SetPosition(node44, MAT_Vector3(247.052836, 1720.198041, 302.620423))
  Position_SetRadius(node44, 5)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_Position", "Waypoint_5")
  Node_AddSon(node36, node45)
  Position_SetPosition(node45, MAT_Vector3(316.379602, 1471.019464, 259.749115))
  Position_SetRadius(node45, 15)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node34, node46)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node34, node47)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node47, node48)
  Body_SetPosition(node48, MAT_Vector3(636.261642, 1807.923216, 286.758329))
  Trigger_SetPresenceSphere(node48, 200)
  Node_EnterSimulation(node48)
  Body_SetFriendOrFoeID(node48, 0)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Trigger", "TriggerPresence_2")
  Node_AddSon(node47, node49)
  Body_SetPosition(node49, MAT_Vector3(983.229378, 1453.348387, 294.808108))
  Trigger_SetPresenceSphere(node49, 200)
  Node_EnterSimulation(node49)
  Body_SetFriendOrFoeID(node49, 0)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Trigger", "TriggerPresence_3")
  Node_AddSon(node47, node50)
  Body_SetPosition(node50, MAT_Vector3(823.370565, 1619.821948, 278.210782))
  Trigger_SetPresenceSphere(node50, 200)
  Node_EnterSimulation(node50)
  Body_SetFriendOrFoeID(node50, 0)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Trigger", "TriggerPresence_4")
  Node_AddSon(node47, node51)
  Body_SetPosition(node51, MAT_Vector3(1054.001253, 1193.41271, 286.7583))
  Trigger_SetPresenceSphere(node51, 200)
  Node_EnterSimulation(node51)
  Body_SetFriendOrFoeID(node51, 0)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Trigger", "TriggerPresence_5")
  Node_AddSon(node47, node52)
  Body_SetPosition(node52, MAT_Vector3(984.235262, 923.712498, 294.8081))
  Trigger_SetPresenceSphere(node52, 200)
  Node_EnterSimulation(node52)
  Body_SetFriendOrFoeID(node52, 0)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Trigger", "TriggerPresence_6")
  Node_AddSon(node47, node53)
  Body_SetPosition(node53, MAT_Vector3(776.635442, 789.09958, 278.2108))
  Trigger_SetPresenceSphere(node53, 200)
  Node_EnterSimulation(node53)
  Body_SetFriendOrFoeID(node53, 0)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Trigger", "TriggerPresence_7")
  Node_AddSon(node47, node54)
  Body_SetPosition(node54, MAT_Vector3(520.325356, 783.178528, 286.7583))
  Trigger_SetPresenceSphere(node54, 200)
  Node_EnterSimulation(node54)
  Body_SetFriendOrFoeID(node54, 0)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Trigger", "TriggerPresence_8")
  Node_AddSon(node47, node55)
  Body_SetPosition(node55, MAT_Vector3(228.510389, 913.532542, 294.8081))
  Trigger_SetPresenceSphere(node55, 200)
  Node_EnterSimulation(node55)
  Body_SetFriendOrFoeID(node55, 0)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Trigger", "TriggerPresence_9")
  Node_AddSon(node47, node56)
  Body_SetPosition(node56, MAT_Vector3(107.009873, 1176.02011, 278.2108))
  Trigger_SetPresenceSphere(node56, 200)
  Node_EnterSimulation(node56)
  Body_SetFriendOrFoeID(node56, 0)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Trigger", "TriggerPresence_10")
  Node_AddSon(node47, node57)
  Body_SetPosition(node57, MAT_Vector3(56.119768, 1471.165735, 286.7583))
  Trigger_SetPresenceSphere(node57, 200)
  Node_EnterSimulation(node57)
  Body_SetFriendOrFoeID(node57, 0)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Trigger", "TriggerPresence_11")
  Node_AddSon(node47, node58)
  Body_SetPosition(node58, MAT_Vector3(489.849643, 1898.071712, 294.8081))
  Trigger_SetPresenceSphere(node58, 200)
  Node_EnterSimulation(node58)
  Body_SetFriendOrFoeID(node58, 0)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Trigger", "SetWaypoint2_Trg")
  Node_AddSon(node47, node59)
  Body_SetFriendOrFoeID(node59, 1)
  Body_SetPosition(node59, MAT_Vector3(577.685611, 2172.024353, 225.931441))
  Trigger_SetPresenceSphere(node59, 80)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Trigger", "SetWaypoint3_Trg")
  Node_AddSon(node47, node60)
  Body_SetFriendOrFoeID(node60, 1)
  Body_SetPosition(node60, MAT_Vector3(252.066293, 2104.770408, 237.094172))
  Trigger_SetPresenceSphere(node60, 80)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Trigger", "SetWaypoint4_Trg")
  Node_AddSon(node47, node61)
  Body_SetFriendOrFoeID(node61, 1)
  Body_SetPosition(node61, MAT_Vector3(196.453347, 1954.043243, 278.289666))
  Trigger_SetPresenceSphere(node61, 80)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Trigger", "SetWaypoint5_Trg")
  Node_AddSon(node47, node62)
  Body_SetFriendOrFoeID(node62, 1)
  Body_SetPosition(node62, MAT_Vector3(238.651476, 1692.876822, 306.824944))
  Trigger_SetPresenceSphere(node62, 80)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node34, node63)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_vessel", "cra_scout2v2_fat_1")
  Node_AddSon(node63, node64)
  Body_SetCS(node64, MAT_Vector3(465.398329, 1237.641629, 347.28125), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node64, "osd/cra/cra_scout2v2_fat.osd")
  Body_SetFriendOrFoeID(node64, 1)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, 1100, 0)
  Body_SetCargoKey(node64, 1107, 1)
  Body_SetCargoKey(node64, 1105, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node63, node65)
  Body_SetCS(node65, MAT_Vector3(940.03134, 1823.116376, 237.816977), MAT_Vector3(126.342871, 0, 0))
  Node_ParseIniFile(node65, "osd/pla/pla_phobocaster.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "gen_turrete3_1")
  Node_AddSon(node63, node66)
  Body_SetCS(node66, MAT_Vector3(669.634481, 1758.629997, 260.731995), MAT_Vector3(-25.207183, 0, 0))
  Node_ParseIniFile(node66, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node66, 1)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "gen_turrete3_2")
  Node_AddSon(node63, node67)
  Body_SetCS(node67, MAT_Vector3(805.534195, 1596.24525, 270.563749), MAT_Vector3(-45.146104, 0, 0))
  Node_ParseIniFile(node67, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node67, 1)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "gen_turrete3_3")
  Node_AddSon(node63, node68)
  Body_SetCS(node68, MAT_Vector3(915.256914, 1481.832766, 265.132031), MAT_Vector3(-41.071571, 0, 0))
  Node_ParseIniFile(node68, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node68, 1)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "gen_turrete3_4")
  Node_AddSon(node63, node69)
  Body_SetCS(node69, MAT_Vector3(569.5484, 1817.272006, 248.525146), MAT_Vector3(-19.515799, 0, 0))
  Node_ParseIniFile(node69, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node69, 1)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "gen_turrete3_5")
  Node_AddSon(node63, node70)
  Body_SetCS(node70, MAT_Vector3(993.98645, 1142.366382, 273.933714), MAT_Vector3(-85.194202, 0, 0))
  Node_ParseIniFile(node70, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node70, 1)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "gen_turrete3_6")
  Node_AddSon(node63, node71)
  Body_SetCS(node71, MAT_Vector3(899.754311, 903.550576, 299.29991), MAT_Vector3(-108.913799, 0, 0))
  Node_ParseIniFile(node71, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node71, 1)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "gen_turrete3_7")
  Node_AddSon(node63, node72)
  Body_SetCS(node72, MAT_Vector3(1021.911815, 1324.599293, 254.421151), MAT_Vector3(-70.123958, 0, 0))
  Node_ParseIniFile(node72, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node72, 1)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "gen_turrete3_8")
  Node_AddSon(node63, node73)
  Body_SetCS(node73, MAT_Vector3(695.824895, 817.367043, 311.8767), MAT_Vector3(-149.945607, 0, 0))
  Node_ParseIniFile(node73, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node73, 1)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "gen_turrete3_9")
  Node_AddSon(node63, node74)
  Body_SetCS(node74, MAT_Vector3(218.058947, 1521.313327, 243.506472), MAT_Vector3(-115.22629, 0, 0))
  Node_ParseIniFile(node74, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node74, 1)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "gen_turrete3_10")
  Node_AddSon(node63, node75)
  Body_SetCS(node75, MAT_Vector3(194.710444, 1351.892183, 238.603767), MAT_Vector3(-16.892915, 0, 0))
  Node_ParseIniFile(node75, "osd/gen/gen_turrete3.osd")
  Body_SetFriendOrFoeID(node75, 1)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "des_trafoe3_1")
  Node_AddSon(node63, node76)
  Body_SetCS(node76, MAT_Vector3(316.022101, 1471.388281, 248.894293), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node76, "osd/des/des_trafoe3.osd")
  Body_SetFriendOrFoeID(node76, 1)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node63, node77)
  Body_SetPosition(node77, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node77, 50)
  Node_ParseIniFile(node77, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node78)
  Camera_SetBackPlane(node78, 1024)
  Node_EnterSimulation(node78)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, E)
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
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, F)
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
o2 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o1307.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
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
S_o704 = { [nil] = {}, Start = function(L0)

end }
S_o705 = { [nil] = {}, Start = function(L0)

end }
S_o706 = { [nil] = {}, Start = function(L0)

end }
S_o707 = { [nil] = {}, Start = function(L0)

end }
S_o708 = { [nil] = {}, Start = function(L0)

end }
S_o709 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o709, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o709, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o709, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o709, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o709, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o714.SetStateValue(L1)
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
o714 = { [nil] = {}, Start = function()
  o714["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o714.Value == L0) then
    o714["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o715 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o715, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o715, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o715, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o715, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o715, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o720.SetStateValue(L1)
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
o720 = { [nil] = {}, Start = function()
  o720["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o720.Value == L0) then
    o720["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o721 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o721, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o721, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o721, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o721, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o721, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o726.SetStateValue(L1)
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
o726 = { [nil] = {}, Start = function()
  o726["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o726.Value == L0) then
    o726["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o727 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o727, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o727, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o727, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o727, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o727, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o732.SetStateValue(L1)
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
o732 = { [nil] = {}, Start = function()
  o732["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o732.Value == L0) then
    o732["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o733 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o733, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o733, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o733, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o733, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o733, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o738.SetStateValue(L1)
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
o738 = { [nil] = {}, Start = function()
  o738["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o738.Value == L0) then
    o738["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o739 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o739, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o739, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o739, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o739, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o739, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o744.SetStateValue(L1)
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
o744 = { [nil] = {}, Start = function()
  o744["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o744.Value == L0) then
    o744["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o745 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o745, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o745, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o745, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o745, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o745, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o750.SetStateValue(L1)
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
o750 = { [nil] = {}, Start = function()
  o750["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o750.Value == L0) then
    o750["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o751 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o751, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o751, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o751, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o751, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o751, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o756.SetStateValue(L1)
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
o756 = { [nil] = {}, Start = function()
  o756["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o756.Value == L0) then
    o756["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o757 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o757, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o757, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o757, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o757, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o757, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o762.SetStateValue(L1)
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
o762 = { [nil] = {}, Start = function()
  o762["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o762.Value == L0) then
    o762["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o763 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o763, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o763, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o763, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o763, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o763, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o768.SetStateValue(L1)
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
o768 = { [nil] = {}, Start = function()
  o768["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o768.Value == L0) then
    o768["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o769 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o769, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o769, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o769, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o769, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o769, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o774.SetStateValue(L1)
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
o774 = { [nil] = {}, Start = function()
  o774["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o774.Value == L0) then
    o774["Value"] = L0
    o800.ReCalculate()
  end
end }
S_o775 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o775, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o775, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o775, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", False, False, True)
  CallFunction(o775, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o775, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o775, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o780.SetStateValue(L1)
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
o780 = { [nil] = {}, Start = function()
  o780["Value"] = False
  o853.StartCalculate()
end, SetStateValue = function(L0)
  if not (o780.Value == L0) then
    o780["Value"] = L0
    o853.ReCalculate()
  end
end }
S_o781 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o781, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o781, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o781, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", False, False, True)
  CallFunction(o781, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o781, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o781, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o786.SetStateValue(L1)
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
o786 = { [nil] = {}, Start = function()
  o786["Value"] = False
  o854.StartCalculate()
end, SetStateValue = function(L0)
  if not (o786.Value == L0) then
    o786["Value"] = L0
    o854.ReCalculate()
  end
end }
S_o787 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o787, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o787, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o787, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", False, False, True)
  CallFunction(o787, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o787, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o787, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o792.SetStateValue(L1)
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
o792 = { [nil] = {}, Start = function()
  o792["Value"] = False
  o855.StartCalculate()
end, SetStateValue = function(L0)
  if not (o792.Value == L0) then
    o792["Value"] = L0
    o855.ReCalculate()
  end
end }
S_o793 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o793, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o793, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o793, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "E", "", "", "", False, False, True)
  CallFunction(o793, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o793, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o793, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o798.SetStateValue(L1)
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
o798 = { [nil] = {}, Start = function()
  o798["Value"] = False
  o856.StartCalculate()
end, SetStateValue = function(L0)
  if not (o798.Value == L0) then
    o798["Value"] = L0
    o856.ReCalculate()
  end
end }
S_o799 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 20)
  Gun_SetDogBullet(L0.Node, "bul_doommortar_c4_s", 7)
  Node_LeaveSimulation(L0.Node)
  CallFunction(o799, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o799, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code5")
  else
    CallFunction(o799, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_CollisionTerrain(L0.Node, 1)
  Game_PlayMusic(GetGameNode(), "agressive")
  SED_SetTaskTextKey(9000, 10, 10)
  CallFunction(o799, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselGotoLib.MultiPatrol({ {}, "/Scenario_Dynamic/Navigation/PatrolArea_2", "/Scenario_Dynamic/Navigation/PatrolArea_3", "/Scenario_Dynamic/Navigation/PatrolArea_4" }, 2, 1, "Code9")
  else
    CallFunction(o799, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "/Scenario_Dynamic/Navigation/PatrolArea_1", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o799, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Attacked = function(L0, L1)
  o803.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o805.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o800.Value ~= True) then
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
o800 = { [nil] = {}, GetCalculated = function()
  if not (o803.Value == True) then
    if not (o890.Value == True) then
      if not (o928.Value == True) then
        if not (o966.Value == True) then
          if not (o1004.Value == True) then
            if not (o714.Value == True) then
              if not (o720.Value == True) then
                if not (o726.Value == True) then
                  if not (o732.Value == True) then
                    if not (o738.Value == True) then
                      if not (o744.Value == True) then
                        if not (o750.Value == True) then
                          if not (o756.Value == True) then
                            if not (o762.Value == True) then
                              if not (o768.Value == True) then
                                if not (o774.Value == True) then
                                  if not (o1042.Value == True) then
                                    if not (o1080.Value == True) then
                                      if not (o1118.Value == True) then
                                        if not (o1156.Value == True) then
                                          if not (o1194.Value == True) then
                                            if not (o1232.Value == True) then
                                              if not (o1269.Value ~= True) then
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
end, ReCalculate = function()
  o800.SetStateValue(o800.GetCalculated())
end, StartCalculate = function()
  o800["Value"] = o800.GetCalculated()
end, SetStateValue = function(L0)
  if not (o800.Value == L0) then
    o800["Value"] = L0
    CallFunction(o799, "ProcesseStateChange")
  end
end }
o803 = { [nil] = {}, Start = function()
  o803["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o803.Value == L0) then
    o803["Value"] = L0
    o800.ReCalculate()
  end
end }
o805 = { [nil] = {}, Start = function()
  o805["Value"] = False
  o859.StartCalculate()
end, SetStateValue = function(L0)
  if not (o805.Value == L0) then
    o805["Value"] = L0
    o859.ReCalculate()
  end
end }
S_o848 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_energy", 5000)
  Body_AddItem(L0.Node, "device_generator", 1)
  Body_AddItem(L0.Node, "torpedo_hammerhead", 4)
  Body_AddItem(L0.Node, "torpedo_maneater", 4)
  Body_AddItem(L0.Node, "ammo_shell", 5000)
  CallFunction(o848, "Code9")
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
o853 = { [nil] = {}, GetCalculated = function()
  if not (o780.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o853.SetStateValue(o853.GetCalculated())
end, StartCalculate = function()
  o853["Value"] = o853.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o705.Node)
end, SetStateValue = function(L0)
  if not (o853.Value == L0) then
    o853["Value"] = L0
    if not (L0 ~= 1) then
      o853.ChangeTo1()
    end
  end
end }
o854 = { [nil] = {}, GetCalculated = function()
  if not (o786.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o854.SetStateValue(o854.GetCalculated())
end, StartCalculate = function()
  o854["Value"] = o854.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o706.Node)
end, SetStateValue = function(L0)
  if not (o854.Value == L0) then
    o854["Value"] = L0
    if not (L0 ~= 1) then
      o854.ChangeTo1()
    end
  end
end }
o855 = { [nil] = {}, GetCalculated = function()
  if not (o792.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o855.SetStateValue(o855.GetCalculated())
end, StartCalculate = function()
  o855["Value"] = o855.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o707.Node)
end, SetStateValue = function(L0)
  if not (o855.Value == L0) then
    o855["Value"] = L0
    if not (L0 ~= 1) then
      o855.ChangeTo1()
    end
  end
end }
o856 = { [nil] = {}, GetCalculated = function()
  if not (o798.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o856.SetStateValue(o856.GetCalculated())
end, StartCalculate = function()
  o856["Value"] = o856.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o708.Node)
  SED_SetTaskTextKey(9001, 20, 10)
end, SetStateValue = function(L0)
  if not (o856.Value == L0) then
    o856["Value"] = L0
    if not (L0 ~= 1) then
      o856.ChangeTo1()
    end
  end
end }
o857 = { [nil] = {}, GetCalculated = function()
  if not (o858.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o857.SetStateValue(o857.GetCalculated())
end, StartCalculate = function()
  o857["Value"] = o857.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o1302.Node)
end, SetStateValue = function(L0)
  if not (o857.Value == L0) then
    o857["Value"] = L0
    if not (L0 ~= 1) then
      o857.ChangeTo1()
    end
  end
end }
o858 = { [nil] = {}, GetCalculated = function()
  if not (o896.Value ~= True) then
    if not (o934.Value ~= True) then
      if not (o972.Value ~= True) then
        if not (o1010.Value ~= True) then
          if not (o1048.Value ~= True) then
            if not (o1086.Value ~= True) then
              if not (o1124.Value ~= True) then
                if not (o1162.Value ~= True) then
                  if not (o1200.Value ~= True) then
                    if not (o1238.Value ~= True) then
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
end, ReCalculate = function()
  o858.SetStateValue(o858.GetCalculated())
end, StartCalculate = function()
  o858["Value"] = o858.GetCalculated()
  o857.StartCalculate()
  o859.StartCalculate()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(9002, 10, 15)
end, SetStateValue = function(L0)
  if not (o858.Value == L0) then
    o858["Value"] = L0
    o857.ReCalculate()
    o859.ReCalculate()
    if not (L0 ~= 1) then
      o858.ChangeTo1()
    end
  end
end }
o859 = { [nil] = {}, GetCalculated = function()
  if not (o805.Value ~= True) then
    if not (o858.Value ~= True) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o859.SetStateValue(o859.GetCalculated())
end, StartCalculate = function()
  o859["Value"] = o859.GetCalculated()
  o1307.StartCalculate()
end, SetStateValue = function(L0)
  if not (o859.Value == L0) then
    o859["Value"] = L0
    o1307.ReCalculate()
  end
end }
S_o887 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o887, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o887, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o887, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_SetWayPoint(GetGameNode(), o704.Node)
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o887, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code6")
  else
    CallFunction(o887, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o887, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o890.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o896.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o888.Value ~= True) then
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
o888 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o888.SetStateValue(o888.GetCalculated())
end, StartCalculate = function()
  o888["Value"] = o888.GetCalculated()
end, SetStateValue = function(L0)
  if not (o888.Value == L0) then
    o888["Value"] = L0
    CallFunction(o887, "ProcesseStateChange")
  end
end }
o890 = { [nil] = {}, Start = function()
  o890["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o890.Value == L0) then
    o890["Value"] = L0
    o800.ReCalculate()
  end
end }
o896 = { [nil] = {}, Start = function()
  o896["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o896.Value == L0) then
    o896["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o925 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "sfx/sample/music_track01.sam")
  Node_LeaveSimulation(L0.Node)
  CallFunction(o925, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o925, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code4")
  else
    CallFunction(o925, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o925, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code6")
  else
    CallFunction(o925, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o925, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Attacked = function(L0, L1)
  o928.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o934.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o926.Value ~= True) then
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
o926 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o926.SetStateValue(o926.GetCalculated())
end, StartCalculate = function()
  o926["Value"] = o926.GetCalculated()
end, SetStateValue = function(L0)
  if not (o926.Value == L0) then
    o926["Value"] = L0
    CallFunction(o925, "ProcesseStateChange")
  end
end }
o928 = { [nil] = {}, Start = function()
  o928["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o928.Value == L0) then
    o928["Value"] = L0
    o800.ReCalculate()
  end
end }
o934 = { [nil] = {}, Start = function()
  o934["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o934.Value == L0) then
    o934["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o963 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o963, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o963, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o963, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o963, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o963, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o963, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o966.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o972.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o964.Value ~= True) then
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
o964 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o964.SetStateValue(o964.GetCalculated())
end, StartCalculate = function()
  o964["Value"] = o964.GetCalculated()
end, SetStateValue = function(L0)
  if not (o964.Value == L0) then
    o964["Value"] = L0
    CallFunction(o963, "ProcesseStateChange")
  end
end }
o966 = { [nil] = {}, Start = function()
  o966["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o966.Value == L0) then
    o966["Value"] = L0
    o800.ReCalculate()
  end
end }
o972 = { [nil] = {}, Start = function()
  o972["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o972.Value == L0) then
    o972["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1001 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1001, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1001, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1001, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1001, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1001, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1001, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1004.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1010.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1002.Value ~= True) then
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
o1002 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1002.SetStateValue(o1002.GetCalculated())
end, StartCalculate = function()
  o1002["Value"] = o1002.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1002.Value == L0) then
    o1002["Value"] = L0
    CallFunction(o1001, "ProcesseStateChange")
  end
end }
o1004 = { [nil] = {}, Start = function()
  o1004["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1004.Value == L0) then
    o1004["Value"] = L0
    o800.ReCalculate()
  end
end }
o1010 = { [nil] = {}, Start = function()
  o1010["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1010.Value == L0) then
    o1010["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1039 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1039, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1039, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1039, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1039, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1039, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1039, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1042.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1048.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1040.Value ~= True) then
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
o1040 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1040.SetStateValue(o1040.GetCalculated())
end, StartCalculate = function()
  o1040["Value"] = o1040.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1040.Value == L0) then
    o1040["Value"] = L0
    CallFunction(o1039, "ProcesseStateChange")
  end
end }
o1042 = { [nil] = {}, Start = function()
  o1042["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1042.Value == L0) then
    o1042["Value"] = L0
    o800.ReCalculate()
  end
end }
o1048 = { [nil] = {}, Start = function()
  o1048["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1048.Value == L0) then
    o1048["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1077 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1077, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1077, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1077, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1077, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1077, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1077, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1080.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1086.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1078.Value ~= True) then
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
o1078 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1078.SetStateValue(o1078.GetCalculated())
end, StartCalculate = function()
  o1078["Value"] = o1078.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1078.Value == L0) then
    o1078["Value"] = L0
    CallFunction(o1077, "ProcesseStateChange")
  end
end }
o1080 = { [nil] = {}, Start = function()
  o1080["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1080.Value == L0) then
    o1080["Value"] = L0
    o800.ReCalculate()
  end
end }
o1086 = { [nil] = {}, Start = function()
  o1086["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1086.Value == L0) then
    o1086["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1115 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1115, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1115, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1115, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1115, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1115, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1115, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1118.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1124.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1116.Value ~= True) then
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
o1116 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1116.SetStateValue(o1116.GetCalculated())
end, StartCalculate = function()
  o1116["Value"] = o1116.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1116.Value == L0) then
    o1116["Value"] = L0
    CallFunction(o1115, "ProcesseStateChange")
  end
end }
o1118 = { [nil] = {}, Start = function()
  o1118["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1118.Value == L0) then
    o1118["Value"] = L0
    o800.ReCalculate()
  end
end }
o1124 = { [nil] = {}, Start = function()
  o1124["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1124.Value == L0) then
    o1124["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1153 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1153, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1153, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1153, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1153, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1153, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1153, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1156.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1162.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1154.Value ~= True) then
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
o1154 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1154.SetStateValue(o1154.GetCalculated())
end, StartCalculate = function()
  o1154["Value"] = o1154.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1154.Value == L0) then
    o1154["Value"] = L0
    CallFunction(o1153, "ProcesseStateChange")
  end
end }
o1156 = { [nil] = {}, Start = function()
  o1156["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1156.Value == L0) then
    o1156["Value"] = L0
    o800.ReCalculate()
  end
end }
o1162 = { [nil] = {}, Start = function()
  o1162["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1162.Value == L0) then
    o1162["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1191 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1191, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1191, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1191, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1191, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1191, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1191, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1194.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1200.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1192.Value ~= True) then
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
o1192 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1192.SetStateValue(o1192.GetCalculated())
end, StartCalculate = function()
  o1192["Value"] = o1192.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1192.Value == L0) then
    o1192["Value"] = L0
    CallFunction(o1191, "ProcesseStateChange")
  end
end }
o1194 = { [nil] = {}, Start = function()
  o1194["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1194.Value == L0) then
    o1194["Value"] = L0
    o800.ReCalculate()
  end
end }
o1200 = { [nil] = {}, Start = function()
  o1200["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1200.Value == L0) then
    o1200["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1229 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1229, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1229, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1229, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Turret_SetAngleArea(L0.Node, 180, -10, 70)
  CallFunction(o1229, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    TurretLib.Attack(L0, 200, 350, "E", "", "", "", "Code5")
  else
    CallFunction(o1229, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetEmpShield(L0.Node, 0)
  CallFunction(o1229, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Attacked = function(L0, L1)
  o1232.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1238.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o1230.Value ~= True) then
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
o1230 = { [nil] = {}, GetCalculated = function()
  if not (o1270.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1230.SetStateValue(o1230.GetCalculated())
end, StartCalculate = function()
  o1230["Value"] = o1230.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1230.Value == L0) then
    o1230["Value"] = L0
    CallFunction(o1229, "ProcesseStateChange")
  end
end }
o1232 = { [nil] = {}, Start = function()
  o1232["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1232.Value == L0) then
    o1232["Value"] = L0
    o800.ReCalculate()
  end
end }
o1238 = { [nil] = {}, Start = function()
  o1238["Value"] = False
  o858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1238.Value == L0) then
    o1238["Value"] = L0
    o858.ReCalculate()
  end
end }
S_o1267 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1267, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1267, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1267, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, SetStateValue_Attacked = function(L0, L1)
  o1269.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o1270.SetStateValue(L1)
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
o1269 = { [nil] = {}, Start = function()
  o1269["Value"] = False
  o800.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1269.Value == L0) then
    o1269["Value"] = L0
    o800.ReCalculate()
  end
end }
o1270 = { [nil] = {}, Start = function()
  o1270["Value"] = False
  o888.StartCalculate()
  o926.StartCalculate()
  o964.StartCalculate()
  o1002.StartCalculate()
  o1040.StartCalculate()
  o1078.StartCalculate()
  o1116.StartCalculate()
  o1154.StartCalculate()
  o1192.StartCalculate()
  o1230.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1270.Value == L0) then
    o1270["Value"] = L0
    o888.ReCalculate()
    o926.ReCalculate()
    o964.ReCalculate()
    o1002.ReCalculate()
    o1040.ReCalculate()
    o1078.ReCalculate()
    o1116.ReCalculate()
    o1154.ReCalculate()
    o1192.ReCalculate()
    o1230.ReCalculate()
  end
end }
S_o1302 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o799.Node)
  CallFunction(o1302, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1307 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (o859.Value ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
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
end, ReCalculate = function()
  o1307.SetStateValue(o1307.GetCalculated())
end, StartCalculate = function()
  o1307["Value"] = o1307.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1307.Value == L0) then
    o1307["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1335 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 78)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_digmod_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_1", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_tnk_k_2", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab1", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab2", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab3", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab4", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab5", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab6", S_o302)
  o336 = BindEasy(Node_Find("/Scenario_Static/Object"), "navstab7", S_o336)
  o370 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_1", S_o370)
  o404 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry1_1", S_o404)
  o438 = BindEasy(Node_Find("/Scenario_Static/Object"), "atl_wblock3a_01_1", S_o438)
  o472 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element01_1", S_o472)
  o506 = BindEasy(Node_Find("/Scenario_Static/Object"), "tz_element05a_1", S_o506)
  o540 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_industry2_1", S_o540)
  o574 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_2", S_o574)
  o608 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_kai2_3", S_o608)
  o642 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o642)
  o704 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Waypoint_1", S_o704)
  o705 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Waypoint_2", S_o705)
  o706 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Waypoint_3", S_o706)
  o707 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Waypoint_4", S_o707)
  o708 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Waypoint_5", S_o708)
  o709 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o709)
  o714.Start()
  o715 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_2", S_o715)
  o720.Start()
  o721 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_3", S_o721)
  o726.Start()
  o727 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_4", S_o727)
  o732.Start()
  o733 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_5", S_o733)
  o738.Start()
  o739 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_6", S_o739)
  o744.Start()
  o745 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_7", S_o745)
  o750.Start()
  o751 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_8", S_o751)
  o756.Start()
  o757 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_9", S_o757)
  o762.Start()
  o763 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_10", S_o763)
  o768.Start()
  o769 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_11", S_o769)
  o774.Start()
  o775 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SetWaypoint2_Trg", S_o775)
  o780.Start()
  o781 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SetWaypoint3_Trg", S_o781)
  o786.Start()
  o787 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SetWaypoint4_Trg", S_o787)
  o792.Start()
  o793 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "SetWaypoint5_Trg", S_o793)
  o798.Start()
  o799 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "cra_scout2v2_fat_1", S_o799)
  o803.Start()
  o805.Start()
  o848 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o848)
  o887 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_1/Turm1", S_o887)
  o890.Start()
  o896.Start()
  o925 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_2/Turm1", S_o925)
  o928.Start()
  o934.Start()
  o963 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_3/Turm1", S_o963)
  o966.Start()
  o972.Start()
  o1001 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_4/Turm1", S_o1001)
  o1004.Start()
  o1010.Start()
  o1039 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_5/Turm1", S_o1039)
  o1042.Start()
  o1048.Start()
  o1077 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_6/Turm1", S_o1077)
  o1080.Start()
  o1086.Start()
  o1115 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_7/Turm1", S_o1115)
  o1118.Start()
  o1124.Start()
  o1153 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_8/Turm1", S_o1153)
  o1156.Start()
  o1162.Start()
  o1191 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_9/Turm1", S_o1191)
  o1194.Start()
  o1200.Start()
  o1229 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "gen_turrete3_10/Turm1", S_o1229)
  o1232.Start()
  o1238.Start()
  o1267 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "des_trafoe3_1", S_o1267)
  o1269.Start()
  o1270.Start()
  o1302 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o1302)
  o1335 = BindEasy(Node_Find("/"), "Camera", S_o1335)
  Game_LoadProgress_Leave(Node_Find("/"))
end
