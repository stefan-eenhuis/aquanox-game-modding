-- dekompiliert aus map\2h2\script\2h2.sco
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
  Terrain_LoadTerrain(node1, "map/2H2/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/2H2/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.3)
  Game_SetCausticObject(node0, 0.1, 0.3)
  Game_SetCausticBuilding(node0, 0.025, 0.3)
  Game_SetLightCache(node0, "map/2H2/Lmsh/", "map/2H2/Ltex/")
  Game_SetTerrainDepth(node0, 2565)
  Game_SetDecompressionHeight(node0, 720)
  Game_SetAmbientLight(node0, 0.019608, 0.141176, 0.141176)
  Game_SetParallelLightT(node0, 0.039216, 0.282353, 0.282353)
  Game_SetParallelLightB(node0, 0.643137, 0.627451, 0.439216)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_2H2_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_matrixdist2.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track05.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_sfx_timesend.sam", 3)
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
  node8 = Node_CreateNode("nod_generic", "gen_vehiclestation_docking_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(2998.442223, 3053.094153, 550.251189), MAT_Vector3(-93.21489, 0, 0))
  Node_ParseIniFile(node8, "osd/gen/gen_vehiclestation_docking.osd")
  Body_SetFriendOrFoeID(node8, 3)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_generic", "gen_vehiclestation_docking_2")
  Node_AddSon(node7, node9)
  Body_SetCS(node9, MAT_Vector3(3588.198637, 3380.731596, 430.721147), MAT_Vector3(101.099804, 0, 0))
  Node_ParseIniFile(node9, "osd/gen/gen_vehiclestation_docking.osd")
  Body_SetFriendOrFoeID(node9, 3)
  Body_SetNameKey(node9, -1)
  Body_SetCargoKey(node9, -1, 0)
  Body_SetCargoKey(node9, -1, 1)
  Body_SetCargoKey(node9, -1, 2)
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "gen_rohr_big03_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(3167.189437, 3138.148989, 471.830106), MAT_Vector3(115.384598, 0, 0))
  Node_ParseIniFile(node10, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node10, 3)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "gen_rohr_big03_2")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3858.078741, 3389.327843, 562.88581), MAT_Vector3(93.133411, -5.799606, -2.902437))
  Node_ParseIniFile(node11, "osd/gen/gen_rohr_big03.osd")
  Body_SetFriendOrFoeID(node11, 3)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "gen_rohr_big02_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3416.616211, 3255.019809, 465.473452), MAT_Vector3(122.741457, 44.660249, -8.861949))
  Node_ParseIniFile(node12, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node12, 3)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "gen_rohr_big02_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3858.078741, 3389.327843, 561.483275), MAT_Vector3(93.280557, -2.899812, -2.891273))
  Node_ParseIniFile(node13, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node13, 3)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "gen_rohr_big02_3")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(3633.608182, 3389.751, 481.51675), MAT_Vector3(95.470389, -43.539781, -23.555246))
  Node_ParseIniFile(node14, "osd/gen/gen_rohr_big02.osd")
  Body_SetFriendOrFoeID(node14, 3)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "gen_shelter_1")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3950.901714, 3369.077476, 566.864491), MAT_Vector3(2.983878, 0, 0))
  Node_ParseIniFile(node15, "osd/gen/gen_shelter.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "gen_dockingnode_1")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3942.038189, 3351.238795, 608.851702), MAT_Vector3(116.756622, 0.385123, -0.094616))
  Node_ParseIniFile(node16, "osd/gen/gen_dockingnode.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_fx_rays", "fx_rays_01_1")
  Node_AddSon(node7, node17)
  Node_ParseIniFile(node17, "osd/fx_rays/fx_rays_01.osd")
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node18)
  Node_ParseIniFile(node18, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_fx_sky", "fx_sky_06_1")
  Node_AddSon(node7, node19)
  Node_ParseIniFile(node19, "osd/fx_sky/fx_sky_06.osd")
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_fungus", "fungus_02_1")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2624.281395, 2337.925629, 600), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node20, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_fungus", "fungus_02_2")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2684.123908, 2264.125165, 580), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node21, "osd/fungus/fungus_02.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_particleemitter", "fx_pe_mag01_white_1")
  Node_AddSon(node7, node22)
  ParticleEmitter_SetCone(node22, MAT_Vector3(2963.887344, 2877.468989, 534.592486), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node22, "osd/fx_pe/fx_pe_mag01_white.osd")
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_white_1")
  Node_AddSon(node7, node23)
  ParticleEmitter_SetCone(node23, MAT_Vector3(3005.368258, 2791.457928, 525.727548), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node23, "osd/fx_pe/fx_pe_mag02_white.osd")
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_white_1")
  Node_AddSon(node7, node24)
  ParticleEmitter_SetCone(node24, MAT_Vector3(2916.763773, 2998.072549, 551.432798), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node24, "osd/fx_pe/fx_pe_mag03_white.osd")
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_particleemitter", "fx_pe_mag01_white_2")
  Node_AddSon(node7, node25)
  ParticleEmitter_SetCone(node25, MAT_Vector3(3052.411033, 3502.822023, 479.517425), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node25, "osd/fx_pe/fx_pe_mag01_white.osd")
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_white_2")
  Node_AddSon(node7, node26)
  ParticleEmitter_SetCone(node26, MAT_Vector3(3106.940828, 3373.767991, 468.251501), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node26, "osd/fx_pe/fx_pe_mag02_white.osd")
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_white_2")
  Node_AddSon(node7, node27)
  ParticleEmitter_SetCone(node27, MAT_Vector3(3277.84627, 3449.386656, 462.778849), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node27, "osd/fx_pe/fx_pe_mag03_white.osd")
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_particleemitter", "fx_pe_mag01_white_3")
  Node_AddSon(node7, node28)
  ParticleEmitter_SetCone(node28, MAT_Vector3(3630.370448, 2402.627643, 526.25348), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node28, "osd/fx_pe/fx_pe_mag01_white.osd")
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_white_3")
  Node_AddSon(node7, node29)
  ParticleEmitter_SetCone(node29, MAT_Vector3(3590.929907, 2161.414279, 562.899693), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node29, "osd/fx_pe/fx_pe_mag02_white.osd")
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_white_3")
  Node_AddSon(node7, node30)
  ParticleEmitter_SetCone(node30, MAT_Vector3(3785.679643, 2284.244125, 527.497974), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node30, "osd/fx_pe/fx_pe_mag03_white.osd")
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node31)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node31, node32)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node31, node33)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("NOD_Path", "Chapter3BomberPath")
  Node_AddSon(node33, node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node34, node35)
  Position_SetPosition(node35, MAT_Vector3(3381.191007, 3439.76206, 625.686361))
  Position_SetRadius(node35, 5)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node34, node36)
  Position_SetPosition(node36, MAT_Vector3(3268.940331, 3311.278735, 567.1899))
  Position_SetRadius(node36, 5)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node34, node37)
  Position_SetPosition(node37, MAT_Vector3(3154.67492, 3143.938355, 581.9307))
  Position_SetRadius(node37, 5)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node34, node38)
  Position_SetPosition(node38, MAT_Vector3(3077.964447, 3026.871431, 654.224424))
  Position_SetRadius(node38, 5)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node34, node39)
  Position_SetPosition(node39, MAT_Vector3(2993.27137, 2958.102229, 631.891))
  Position_SetRadius(node39, 5)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("NOD_PatrolArea", "Chapter1Area_1")
  Node_AddSon(node33, node40)
  PatrolArea_SetPosition(node40, MAT_Vector3(2996.405229, 2949.480832, 536.357284))
  PatrolArea_SetRadius(node40, 450)
  PatrolArea_SetMinZ(node40, -110)
  PatrolArea_SetMaxZ(node40, 135)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("NOD_PatrolArea", "Chapter2Area_1")
  Node_AddSon(node33, node41)
  PatrolArea_SetPosition(node41, MAT_Vector3(4037.397278, 2512.912996, 479.547946))
  PatrolArea_SetRadius(node41, 600)
  PatrolArea_SetMinZ(node41, -80)
  PatrolArea_SetMaxZ(node41, 180)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("NOD_PatrolArea", "Chapter2Area_2")
  Node_AddSon(node33, node42)
  PatrolArea_SetPosition(node42, MAT_Vector3(3835.060617, 2296.780955, 500))
  PatrolArea_SetRadius(node42, 300)
  PatrolArea_SetMinZ(node42, -80)
  PatrolArea_SetMaxZ(node42, 250)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("NOD_PatrolArea", "HoleMapArea")
  Node_AddSon(node33, node43)
  PatrolArea_SetPosition(node43, MAT_Vector3(2233.155116, 2178.027424, 631.23947))
  PatrolArea_SetRadius(node43, 2500)
  PatrolArea_SetMinZ(node43, -200)
  PatrolArea_SetMaxZ(node43, 90)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("NOD_Path", "CapeFearPath_1")
  Node_AddSon(node33, node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node44, node45)
  Position_SetPosition(node45, MAT_Vector3(3807.665867, 3067.386792, 647.204581))
  Position_SetRadius(node45, 5)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node44, node46)
  Position_SetPosition(node46, MAT_Vector3(3822.08177, 2949.667953, 641.668862))
  Position_SetRadius(node46, 5)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node44, node47)
  Position_SetPosition(node47, MAT_Vector3(3838.548285, 2742.000502, 647.82703))
  Position_SetRadius(node47, 5)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node44, node48)
  Position_SetPosition(node48, MAT_Vector3(3904.475069, 2314.962874, 680.379454))
  Position_SetRadius(node48, 5)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_1")
  Node_AddSon(node33, node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node49, node50)
  Position_SetPosition(node50, MAT_Vector3(2892.298516, 2805.48862, 616.526219))
  Position_SetRadius(node50, 5)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node49, node51)
  Position_SetPosition(node51, MAT_Vector3(2794.16689, 2884.76015, 628.951398))
  Position_SetRadius(node51, 5)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node49, node52)
  Position_SetPosition(node52, MAT_Vector3(2793.243574, 2939.256316, 635.504876))
  Position_SetRadius(node52, 5)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node49, node53)
  Position_SetPosition(node53, MAT_Vector3(2889.581823, 2895.472591, 621.214103))
  Position_SetRadius(node53, 5)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_1_2")
  Node_AddSon(node33, node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node54, node55)
  Position_SetPosition(node55, MAT_Vector3(2892.299, 2805.489, 616.5262))
  Position_SetRadius(node55, 5)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node54, node56)
  Position_SetPosition(node56, MAT_Vector3(2794.167, 2884.76, 628.9514))
  Position_SetRadius(node56, 5)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node54, node57)
  Position_SetPosition(node57, MAT_Vector3(2793.244, 2939.256, 635.5049))
  Position_SetRadius(node57, 5)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node54, node58)
  Position_SetPosition(node58, MAT_Vector3(2860.332422, 3021.404458, 621.2141))
  Position_SetRadius(node58, 5)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_2")
  Node_AddSon(node33, node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node59, node60)
  Position_SetPosition(node60, MAT_Vector3(3020.826302, 2897.034383, 619.070179))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node59, node61)
  Position_SetPosition(node61, MAT_Vector3(3096.643188, 2913.41083, 624.337559))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node59, node62)
  Position_SetPosition(node62, MAT_Vector3(3083.299417, 2966.785918, 629.201426))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node59, node63)
  Position_SetPosition(node63, MAT_Vector3(2983.969141, 2976.530881, 625.271367))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_2_2")
  Node_AddSon(node33, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(3020.826, 2897.034, 619.0702))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(3096.643, 2913.411, 624.3376))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(3083.299, 2966.786, 629.2014))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(2983.969, 2976.531, 625.2714))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_3")
  Node_AddSon(node33, node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node69, node70)
  Position_SetPosition(node70, MAT_Vector3(2884.950515, 2949.243605, 643.726628))
  Position_SetRadius(node70, 5)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node69, node71)
  Position_SetPosition(node71, MAT_Vector3(2875.808898, 3065.993057, 644.574659))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node69, node72)
  Position_SetPosition(node72, MAT_Vector3(2909.302329, 3092.770523, 648.139955))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node69, node73)
  Position_SetPosition(node73, MAT_Vector3(2952.582525, 3015.264169, 636.192219))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_3_2")
  Node_AddSon(node33, node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node74, node75)
  Position_SetPosition(node75, MAT_Vector3(2884.951, 2949.244, 643.7266))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node74, node76)
  Position_SetPosition(node76, MAT_Vector3(2875.809, 3065.993, 644.5747))
  Position_SetRadius(node76, 5)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node74, node77)
  Position_SetPosition(node77, MAT_Vector3(2909.302, 3092.771, 648.14))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node74, node78)
  Position_SetPosition(node78, MAT_Vector3(2952.583, 3015.264, 636.1922))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_4")
  Node_AddSon(node33, node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node79, node80)
  Position_SetPosition(node80, MAT_Vector3(3038.867328, 2831.75766, 617.319208))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node79, node81)
  Position_SetPosition(node81, MAT_Vector3(3043.997639, 2724.795038, 610.38899))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node79, node82)
  Position_SetPosition(node82, MAT_Vector3(2982.238615, 2703.401525, 584.343872))
  Position_SetRadius(node82, 5)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node79, node83)
  Position_SetPosition(node83, MAT_Vector3(2964.019389, 2807.896395, 611.367832))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Path", "Chapter3GrubPath_4_2")
  Node_AddSon(node33, node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node84, node85)
  Position_SetPosition(node85, MAT_Vector3(3038.867, 2831.758, 617.3192))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node84, node86)
  Position_SetPosition(node86, MAT_Vector3(3043.998, 2724.795, 610.389))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node84, node87)
  Position_SetPosition(node87, MAT_Vector3(2982.239, 2703.402, 584.3439))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node84, node88)
  Position_SetPosition(node88, MAT_Vector3(2964.019, 2807.896, 611.3678))
  Position_SetRadius(node88, 5)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_PatrolArea", "GrubDockArea_1")
  Node_AddSon(node33, node89)
  PatrolArea_SetPosition(node89, MAT_Vector3(2944.629516, 2935.63504, 594.105593))
  PatrolArea_SetRadius(node89, 50)
  PatrolArea_SetMinZ(node89, -20)
  PatrolArea_SetMaxZ(node89, 20)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Path", "GrubApproachPath_1")
  Node_AddSon(node33, node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node90, node91)
  Position_SetPosition(node91, MAT_Vector3(2896.760265, 2976.886963, 630.089762))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node90, node92)
  Position_SetPosition(node92, MAT_Vector3(2890.073897, 3046.328008, 653.643744))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Path", "GrubDockPath_1")
  Node_AddSon(node33, node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node93, node94)
  Position_SetPosition(node94, MAT_Vector3(2931.766727, 3052.102854, 650.351967))
  Position_SetRadius(node94, 5)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node93, node95)
  Position_SetPosition(node95, MAT_Vector3(2990.800537, 3051.134931, 631.473373))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_PatrolArea", "GrubDockArea_2")
  Node_AddSon(node33, node96)
  PatrolArea_SetPosition(node96, MAT_Vector3(3057.438103, 2917.605894, 600.11677))
  PatrolArea_SetRadius(node96, 50)
  PatrolArea_SetMinZ(node96, -20)
  PatrolArea_SetMaxZ(node96, 20)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Path", "GrubApproachPath_2")
  Node_AddSon(node33, node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node97, node98)
  Position_SetPosition(node98, MAT_Vector3(3060.661828, 2984.642376, 626.156664))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node97, node99)
  Position_SetPosition(node99, MAT_Vector3(3074.441199, 3014.293397, 624.313619))
  Position_SetRadius(node99, 5)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Path", "GrubDockPath_2")
  Node_AddSon(node33, node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node100, node101)
  Position_SetPosition(node101, MAT_Vector3(3061.022112, 3049.610921, 631.666803))
  Position_SetRadius(node101, 5)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node100, node102)
  Position_SetPosition(node102, MAT_Vector3(2998.309399, 3051.678465, 630.01277))
  Position_SetRadius(node102, 5)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Path", "DeathBlowPath_1")
  Node_AddSon(node33, node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node103, node104)
  Position_SetPosition(node104, MAT_Vector3(3868.500622, 2234.828297, 691.086042))
  Position_SetRadius(node104, 5)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("NOD_Path", "BonhamPath_1")
  Node_AddSon(node33, node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node105, node106)
  Position_SetPosition(node106, MAT_Vector3(3092.779113, 3099.732108, 604.948541))
  Position_SetRadius(node106, 5)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node105, node107)
  Position_SetPosition(node107, MAT_Vector3(3314.36448, 3386.875267, 527.872306))
  Position_SetRadius(node107, 5)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node105, node108)
  Position_SetPosition(node108, MAT_Vector3(3551.184907, 3245.478941, 506.71527))
  Position_SetRadius(node108, 5)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node105, node109)
  Position_SetPosition(node109, MAT_Vector3(3753.687135, 2930.851853, 558.575718))
  Position_SetRadius(node109, 5)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("NOD_Path", "PicoPath_1")
  Node_AddSon(node33, node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node110, node111)
  Position_SetPosition(node111, MAT_Vector3(3092.779, 3099.732, 654.9485))
  Position_SetRadius(node111, 5)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node110, node112)
  Position_SetPosition(node112, MAT_Vector3(3314.364, 3386.875, 577.8723))
  Position_SetRadius(node112, 5)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node110, node113)
  Position_SetPosition(node113, MAT_Vector3(3551.185, 3245.479, 556.7153))
  Position_SetRadius(node113, 5)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node110, node114)
  Position_SetPosition(node114, MAT_Vector3(3753.687, 2930.852, 608.5757))
  Position_SetRadius(node114, 5)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Path", "HarperPath_1")
  Node_AddSon(node33, node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node115, node116)
  Position_SetPosition(node116, MAT_Vector3(3062.785348, 3196.848076, 604.9485))
  Position_SetRadius(node116, 5)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node115, node117)
  Position_SetPosition(node117, MAT_Vector3(3336.042528, 3445.090977, 527.8723))
  Position_SetRadius(node117, 5)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node115, node118)
  Position_SetPosition(node118, MAT_Vector3(3601.185, 3245.479, 506.7153))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node115, node119)
  Position_SetPosition(node119, MAT_Vector3(3803.687, 2930.852, 558.5757))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Path", "DeGrangePath_1")
  Node_AddSon(node33, node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node120, node121)
  Position_SetPosition(node121, MAT_Vector3(3070.148169, 3168.748337, 654.9485))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node120, node122)
  Position_SetPosition(node122, MAT_Vector3(3306.458631, 3435.796018, 577.8723))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node120, node123)
  Position_SetPosition(node123, MAT_Vector3(3601.185, 3245.479, 556.7153))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node120, node124)
  Position_SetPosition(node124, MAT_Vector3(3803.687, 2930.852, 608.5757))
  Position_SetRadius(node124, 5)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node31, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node31, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node31, node127)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node127, node128)
  Body_SetCS(node128, MAT_Vector3(2997.389476, 2618.968585, 561.734684), MAT_Vector3(-32.604022, 0, 0))
  Node_ParseIniFile(node128, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node128, 0)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_generic", "Methan_1")
  Node_AddSon(node127, node129)
  Body_SetCS(node129, MAT_Vector3(2964.192756, 2877.357517, 535.486985), MAT_Vector3(-18.989648, 0, 0))
  Node_ParseIniFile(node129, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node129, 5)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_generic", "Methan_2")
  Node_AddSon(node127, node130)
  Body_SetCS(node130, MAT_Vector3(3005.495638, 2791.351148, 528.97321), MAT_Vector3(-17.867432, 0, 0))
  Node_ParseIniFile(node130, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node130, 5)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_generic", "Methan_3")
  Node_AddSon(node127, node131)
  Body_SetCS(node131, MAT_Vector3(2916.575785, 2998.05446, 554.894925), MAT_Vector3(-11.7182, 0.354454, 17.845759))
  Node_ParseIniFile(node131, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node131, 5)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_generic", "Methan_4")
  Node_AddSon(node127, node132)
  Body_SetCS(node132, MAT_Vector3(3106.868481, 3373.61946, 471.712207), MAT_Vector3(-18.98965, 0, 0))
  Node_ParseIniFile(node132, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node132, 5)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_generic", "Methan_5")
  Node_AddSon(node127, node133)
  Body_SetCS(node133, MAT_Vector3(3052.485021, 3502.804179, 483.398864), MAT_Vector3(-21.216258, -1.461999, -2.114694))
  Node_ParseIniFile(node133, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node133, 5)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_generic", "Methan_6")
  Node_AddSon(node127, node134)
  Body_SetCS(node134, MAT_Vector3(3278.411083, 3449.243401, 468.53914), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node134, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node134, 5)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_generic", "Methan_7")
  Node_AddSon(node127, node135)
  Body_SetCS(node135, MAT_Vector3(3785.783223, 2283.757089, 532.121425), MAT_Vector3(-18.98965, 0, 0))
  Node_ParseIniFile(node135, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node135, 5)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_generic", "Methan_8")
  Node_AddSon(node127, node136)
  Body_SetCS(node136, MAT_Vector3(3591.093886, 2161.227671, 565.349854), MAT_Vector3(42.102681, -0.772535, 6.49848))
  Node_ParseIniFile(node136, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node136, 5)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_generic", "Methan_9")
  Node_AddSon(node127, node137)
  Body_SetCS(node137, MAT_Vector3(3630.357625, 2403.049751, 530.992478), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node137, "osd/org/org_methan01.osd")
  Body_SetFriendOrFoeID(node137, 5)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_vehicle", "Chapter1Grub_1")
  Node_AddSon(node127, node138)
  Body_SetCS(node138, MAT_Vector3(2934.712969, 2790.864755, 589.121592), MAT_Vector3(-83.714857, 0, 0))
  Node_ParseIniFile(node138, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node138, 7)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vehicle", "Chapter1Grub_2")
  Node_AddSon(node127, node139)
  Body_SetCS(node139, MAT_Vector3(2998.099715, 2895.051089, 601.086522), MAT_Vector3(-71.878166, 0, 0))
  Node_ParseIniFile(node139, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node139, 7)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_vehicle", "Chapter1Grub_3")
  Node_AddSon(node127, node140)
  Body_SetCS(node140, MAT_Vector3(2910.456372, 2939.76401, 580.500248), MAT_Vector3(21.441311, 0, 0))
  Node_ParseIniFile(node140, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node140, 7)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_vehicle", "Chapter1Grub_4")
  Node_AddSon(node127, node141)
  Body_SetCS(node141, MAT_Vector3(3062.916421, 2853.773926, 596.077124), MAT_Vector3(178.102177, 0, 0))
  Node_ParseIniFile(node141, "osd/ent/ent_raupe.osd")
  Body_SetFriendOrFoeID(node141, 7)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_vessel", "capefear_big_1")
  Node_AddSon(node127, node142)
  Body_SetCS(node142, MAT_Vector3(3906.291215, 3291.985079, 647.738747), MAT_Vector3(-175.784569, 0, 0))
  Node_ParseIniFile(node142, "osd/ent/ent_capefear_big.osd")
  Body_SetFriendOrFoeID(node142, 1)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_vessel", "DeathBlow")
  Node_AddSon(node127, node143)
  Body_SetCS(node143, MAT_Vector3(3804.447034, 2890.561741, 554.010322), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node143, "osd/ent/ent_deathblow.osd")
  Body_SetFriendOrFoeID(node143, 8)
  Body_SetNameKey(node143, 308)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_vessel", "wng_bonham")
  Node_AddSon(node127, node144)
  Body_SetCS(node144, MAT_Vector3(2956.758858, 2644.179905, 525.535141), MAT_Vector3(-27.31441, 0, 0))
  Node_ParseIniFile(node144, "osd/wng/wng_bonham.osd")
  Body_SetFriendOrFoeID(node144, 2)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_vessel", "wng_degrange")
  Node_AddSon(node127, node145)
  Body_SetCS(node145, MAT_Vector3(2942.370435, 2614.796658, 544.637593), MAT_Vector3(-20.93695, 0, 0))
  Node_ParseIniFile(node145, "osd/wng/wng_degrange.osd")
  Body_SetFriendOrFoeID(node145, 2)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_vessel", "wng_harper")
  Node_AddSon(node127, node146)
  Body_SetCS(node146, MAT_Vector3(3033.9506, 2610.03486, 552.945095), MAT_Vector3(-42.84976, 0, 0))
  Node_ParseIniFile(node146, "osd/wng/wng_harper.osd")
  Body_SetFriendOrFoeID(node146, 2)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_vessel", "wng_pico")
  Node_AddSon(node127, node147)
  Body_SetCS(node147, MAT_Vector3(2979.969261, 2602.910053, 553.532143), MAT_Vector3(-46.151414, 0, 0))
  Node_ParseIniFile(node147, "osd/wng/wng_pico.osd")
  Body_SetFriendOrFoeID(node147, 2)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_1")
  Node_AddSon(node127, node148)
  Body_SetPosition(node148, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node148, 5)
  Node_ParseIniFile(node148, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_2")
  Node_AddSon(node127, node149)
  Body_SetPosition(node149, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node149, 5)
  Node_ParseIniFile(node149, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_vessel", "Terror_bomber")
  Node_AddSon(node127, node150)
  Body_SetCS(node150, MAT_Vector3(3548.701961, 3445.705156, 665.420356), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node150, "osd/ent/ent_bomber_2h2.osd")
  Body_SetFriendOrFoeID(node150, 6)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_fx_plant", "coral_04_1")
  Node_AddSon(node127, node151)
  Node_ParseIniFile(node151, "osd/fx_plant/coral_04.osd")
  FX_Plant_SetMap(node151, "map/2H2/Terrain/coral_04.tga")
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node127, node152)
  Body_SetPosition(node152, MAT_Vector3(3001.798182, 3022.543323, 572.669587))
  WayPoint_SetRadius(node152, 250)
  Node_ParseIniFile(node152, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_vessel", "ent_scout_2h2_1")
  Node_AddSon(node127, node153)
  Body_SetCS(node153, MAT_Vector3(3187.188026, 2782.592447, 658.683643), MAT_Vector3(145.116137, 0, 0))
  Node_ParseIniFile(node153, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node153, 8)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_vessel", "ent_scout_2h2_2")
  Node_AddSon(node127, node154)
  Body_SetCS(node154, MAT_Vector3(3061.64883, 3194.504949, 582.588943), MAT_Vector3(-83.27547, 13.678888, -71.522849))
  Node_ParseIniFile(node154, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node154, 8)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_vessel", "ent_scout_2h2_3")
  Node_AddSon(node127, node155)
  Body_SetCS(node155, MAT_Vector3(2978.728701, 2734.45235, 558.049139), MAT_Vector3(-171.874938, 8.331509, 10.460581))
  Node_ParseIniFile(node155, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node155, 1)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_vessel", "ent_scout_2h2_4")
  Node_AddSon(node127, node156)
  Body_SetCS(node156, MAT_Vector3(3165.132038, 3068.303611, 571.022177), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node156, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node156, 1)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_vessel", "ent_scout_2h2_5")
  Node_AddSon(node127, node157)
  Body_SetCS(node157, MAT_Vector3(2827.021671, 2913.532205, 646.643786), MAT_Vector3(-127.349474, 0, 0))
  Node_ParseIniFile(node157, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node157, 1)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_vessel", "ent_scout_2h2_6")
  Node_AddSon(node127, node158)
  Body_SetCS(node158, MAT_Vector3(3215.786929, 2930.439399, 624.991413), MAT_Vector3(58.370191, 0, 0))
  Node_ParseIniFile(node158, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node158, 1)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_vessel", "ent_scout_2h2_1_cape")
  Node_AddSon(node127, node159)
  Body_SetCS(node159, MAT_Vector3(3971.400533, 3347.034857, 641.751824), MAT_Vector3(-174.300361, 0, 0))
  Node_ParseIniFile(node159, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node159, 8)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_vessel", "ent_scout_2h2_2_cape")
  Node_AddSon(node127, node160)
  Body_SetCS(node160, MAT_Vector3(3812.080477, 3337.239007, 604.406615), MAT_Vector3(-166.180955, 0, 0))
  Node_ParseIniFile(node160, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node160, 8)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_vessel", "ent_scout_2h2_3_cape")
  Node_AddSon(node127, node161)
  Body_SetCS(node161, MAT_Vector3(4004.964523, 3388.699931, 644.576995), MAT_Vector3(-171.738681, 0, 0))
  Node_ParseIniFile(node161, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node161, 1)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_vessel", "ent_scout_2h2_4_cape")
  Node_AddSon(node127, node162)
  Body_SetCS(node162, MAT_Vector3(3754.093647, 3383.736839, 604.4066), MAT_Vector3(-166.181, 0, 0))
  Node_ParseIniFile(node162, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node162, 1)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_vessel", "ent_scout_2h2_5_cape")
  Node_AddSon(node127, node163)
  Body_SetCS(node163, MAT_Vector3(4017.385308, 3437.693228, 602.0889), MAT_Vector3(-171.7387, 0, 0))
  Node_ParseIniFile(node163, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node163, 1)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_waypoint", "nav_waypoint_02_1")
  Node_AddSon(node127, node164)
  Body_SetPosition(node164, MAT_Vector3(3406.192971, 3400.662988, 509.583282))
  WayPoint_SetRadius(node164, 150)
  Node_ParseIniFile(node164, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_waypoint", "nav_waypoint_03_1")
  Node_AddSon(node127, node165)
  Body_SetPosition(node165, MAT_Vector3(3840.411229, 2889.196514, 541.551166))
  WayPoint_SetRadius(node165, 200)
  Node_ParseIniFile(node165, "osd/nav/nav_waypoint_03.osd")
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_waypoint", "nav_waypoint_attack_3")
  Node_AddSon(node127, node166)
  Body_SetPosition(node166, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node166, 5)
  Node_ParseIniFile(node166, "osd/nav/nav_waypoint_attack.osd")
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "ent_scout_2h2_1_bomber")
  Node_AddSon(node127, node167)
  Body_SetCS(node167, MAT_Vector3(3601.5751, 3317.802059, 492.640945), MAT_Vector3(102.673417, 0, 0))
  Node_ParseIniFile(node167, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node167, 1)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vessel", "ent_scout_2h2_2_bomber")
  Node_AddSon(node127, node168)
  Body_SetCS(node168, MAT_Vector3(3571.441186, 3382.269564, 512.145534), MAT_Vector3(102.635656, 0, 0))
  Node_ParseIniFile(node168, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node168, 1)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vessel", "ent_scout_2h2_7")
  Node_AddSon(node127, node169)
  Body_SetCS(node169, MAT_Vector3(3645.818834, 2279.22131, 704.981377), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node169, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node169, 8)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_vessel", "ent_scout_2h2_8")
  Node_AddSon(node127, node170)
  Body_SetCS(node170, MAT_Vector3(4015.899081, 2296.154883, 688.479546), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node170, "osd/ent/ent_scout_2h2.osd")
  Body_SetFriendOrFoeID(node170, 8)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node171)
  Camera_SetBackPlane(node171, 512)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node172)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node172, node173)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node172, node174)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("NOD_Position", "Chapter1_CamPosition_1")
  Node_AddSon(node174, node175)
  Position_SetPosition(node175, MAT_Vector3(2806.185569, 2463.965839, 695.129496))
  Position_SetRadius(node175, 5)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("NOD_Position", "Chapter1_CamPosition_2")
  Node_AddSon(node174, node176)
  Position_SetPosition(node176, MAT_Vector3(2992.877867, 2680.641696, 616.733184))
  Position_SetRadius(node176, 5)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("NOD_Position", "Chapter1_CamPosition_3")
  Node_AddSon(node174, node177)
  Position_SetPosition(node177, MAT_Vector3(2914.224038, 3060.264714, 595.631671))
  Position_SetRadius(node177, 5)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node174, node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node178, node179)
  Position_SetPosition(node179, MAT_Vector3(2679.820604, 2321.15779, 715.996187))
  Position_SetRadius(node179, 5)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node178, node180)
  Position_SetPosition(node180, MAT_Vector3(2780.972716, 2425.323696, 711.615495))
  Position_SetRadius(node180, 5)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node178, node181)
  Position_SetPosition(node181, MAT_Vector3(2929.355672, 2548.638184, 646.862074))
  Position_SetRadius(node181, 5)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("NOD_Position", "BomberPosition_1")
  Node_AddSon(node174, node182)
  Position_SetPosition(node182, MAT_Vector3(3502.414982, 3375.310742, 590.243585))
  Position_SetRadius(node182, 5)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("NOD_Position", "CapeFearPosition_1")
  Node_AddSon(node174, node183)
  Position_SetPosition(node183, MAT_Vector3(3940.84287, 3522.827172, 724.156192))
  Position_SetRadius(node183, 5)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node172, node184)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("NOD_Director", "Chapter1IntroV")
  Node_AddSon(node184, node185)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("NOD_Director", "Chapter1IntroAddon")
  Node_AddSon(node184, node186)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("NOD_Director", "ShowBomberUnDockingV")
  Node_AddSon(node184, node187)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("NOD_Director", "ShowCapeFearUnDockingV")
  Node_AddSon(node184, node188)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node172, node189)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node172, node190)
  Node_EnterSimulation(node190)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, E)
SetEnemyMatrixElement(2, 0, F)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, N)
SetEnemyMatrixElement(6, 0, E)
SetEnemyMatrixElement(7, 0, E)
SetEnemyMatrixElement(8, 0, E)
SetEnemyMatrixElement(9, 0, N)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, E)
SetEnemyMatrixElement(1, 1, N)
SetEnemyMatrixElement(2, 1, E)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, N)
SetEnemyMatrixElement(6, 1, F)
SetEnemyMatrixElement(7, 1, N)
SetEnemyMatrixElement(8, 1, F)
SetEnemyMatrixElement(9, 1, N)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, F)
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, N)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, E)
SetEnemyMatrixElement(8, 2, N)
SetEnemyMatrixElement(9, 2, E)
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
SetEnemyMatrixElement(0, 6, E)
SetEnemyMatrixElement(1, 6, F)
SetEnemyMatrixElement(2, 6, N)
SetEnemyMatrixElement(3, 6, N)
SetEnemyMatrixElement(4, 6, N)
SetEnemyMatrixElement(5, 6, N)
SetEnemyMatrixElement(6, 6, N)
SetEnemyMatrixElement(7, 6, N)
SetEnemyMatrixElement(8, 6, F)
SetEnemyMatrixElement(9, 6, N)
SetEnemyMatrixElement(10, 6, N)
SetEnemyMatrixElement(11, 6, N)
SetEnemyMatrixElement(12, 6, N)
SetEnemyMatrixElement(13, 6, N)
SetEnemyMatrixElement(14, 6, N)
SetEnemyMatrixElement(15, 6, N)
SetEnemyMatrixElement(0, 7, E)
SetEnemyMatrixElement(1, 7, N)
SetEnemyMatrixElement(2, 7, E)
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
SetEnemyMatrixElement(0, 8, E)
SetEnemyMatrixElement(1, 8, F)
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
SetEnemyMatrixElement(2, 9, E)
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
                    if not (o372.Value ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1 2509 1326")
  Game_MissionEnd(GetGameNode(), 1)
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
                    if not (o396.Value == True) then
                      if not (False == True) then
                        if not (False == True) then
                          if not (False == True) then
                            if not (False == True) then
                              if not (False == True) then
                                if not (False == True) then
                                  if not (False == True) then
                                    if not (False == True) then
                                      if not (False == True) then
                                        if not (False == True) then
                                          if not (False == True) then
                                            if not (False == True) then
                                              if not (False == True) then
                                                if not (False == True) then
                                                  if not (False == True) then
                                                    if not (False == True) then
                                                      if not (False == True) then
                                                        if not (False == True) then
                                                          if not (False == True) then
                                                            if not (False == True) then
                                                              if not (False == True) then
                                                                if not (False == True) then
                                                                  if not (False == True) then
                                                                    if not (False == True) then
                                                                      if not (False == True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
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
o336 = FormationLib.CreateFormation("Line", "", "", "", 15, 15)
o338 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/GrubApproachPath_1", "/Scenario_Dynamic/Navigation/GrubDockPath_1", "/Scenario_Dynamic/Navigation/GrubDockArea_1")
o339 = DockLib.CreateDockMaster("/Scenario_Dynamic/Navigation/GrubApproachPath_2", "/Scenario_Dynamic/Navigation/GrubDockPath_2", "/Scenario_Dynamic/Navigation/GrubDockArea_2")
o341 = FormationLib.CreateFormation("Triangle", "", "", "", 60, 60)
o343 = FormationLib.CreateFormation("Triangle", "", "", "", 50, 50)
S_o344 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma1", 1)
  Body_AddItem(L0.Node, "gun_vendetta2", 1)
  Body_AddItem(L0.Node, "ammo_energy", 500)
  Body_AddItem(L0.Node, "ammo_shell", 500)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_tigershark", 6)
  Body_AddItem(L0.Node, "device_generator0", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 4)
  CallFunction(o344, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
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
o350 = { [nil] = {}, GetCalculated = function()
  if not (o1268.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1316.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1364.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1412.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1460.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1508.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 < 6) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o350.SetStateValue(o350.GetCalculated())
end, StartCalculate = function()
  o350["Value"] = o350.GetCalculated()
  o401.StartCalculate()
  o438.StartCalculate()
  o474.StartCalculate()
  o510.StartCalculate()
  o546.StartCalculate()
  o582.StartCalculate()
  o1199.StartCalculate()
  o2029.StartCalculate()
end, SetStateValue = function(L0)
  if not (o350.Value == L0) then
    o350["Value"] = L0
    o401.ReCalculate()
    o438.ReCalculate()
    o474.ReCalculate()
    o510.ReCalculate()
    o546.ReCalculate()
    o582.ReCalculate()
    o1199.ReCalculate()
    o2029.ReCalculate()
  end
end }
o351 = { [nil] = {}, GetCalculated = function()
  if not (o892.Value ~= True) then
    if not (o357.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o351.SetStateValue(o351.GetCalculated())
end, StartCalculate = function()
  o351["Value"] = o351.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o886.Node, o344.Node, 71)
end, SetStateValue = function(L0)
  if not (o351.Value == L0) then
    o351["Value"] = L0
    if not (L0 ~= 1) then
      o351.ChangeTo1()
    end
  end
end }
o352 = { [nil] = {}, GetCalculated = function()
  if not (o1256.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1304.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1352.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1400.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1448.Value ~= True) then
    L0 = L0 + 1
  end
  if not (o1496.Value ~= True) then
    L0 = L0 + 1
  end
  if not (L0 ~= 2) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o352.SetStateValue(o352.GetCalculated())
end, StartCalculate = function()
  o352["Value"] = o352.GetCalculated()
  o353.StartCalculate()
  o355.StartCalculate()
end, SetStateValue = function(L0)
  if not (o352.Value == L0) then
    o352["Value"] = L0
    o353.ReCalculate()
    o355.ReCalculate()
  end
end }
o353 = { [nil] = {}, GetCalculated = function()
  if not (o352.Value ~= True) then
    if not (o357.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o353.SetStateValue(o353.GetCalculated())
end, StartCalculate = function()
  o353["Value"] = o353.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o886.Node, o344.Node, 65)
  SendRadioMessageTake(o344.Node, o344.Node, 66)
end, SetStateValue = function(L0)
  if not (o353.Value == L0) then
    o353["Value"] = L0
    if not (L0 ~= 1) then
      o353.ChangeTo1()
    end
  end
end }
o354 = { [nil] = {}, GetCalculated = function()
  if not (o1205.Value ~= True) then
    if not (o1812.Value ~= True) then
      if not (o1861.Value ~= True) then
        return 1
      else
        return 0
      end
    end
  end
end, ReCalculate = function()
  o354.SetStateValue(o354.GetCalculated())
end, StartCalculate = function()
  o354["Value"] = o354.GetCalculated()
  o889.StartCalculate()
  o1545.StartCalculate()
  o1595.StartCalculate()
  o1645.StartCalculate()
  o1695.StartCalculate()
  o1745.StartCalculate()
  o2035.StartCalculate()
end, SetStateValue = function(L0)
  if not (o354.Value == L0) then
    DelayedFunction(2, o354, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o354.Value == L0) then
    o354["Value"] = L0
    o889.ReCalculate()
    o1545.ReCalculate()
    o1595.ReCalculate()
    o1645.ReCalculate()
    o1695.ReCalculate()
    o1745.ReCalculate()
    o2035.ReCalculate()
  end
end }
o355 = { [nil] = {}, GetCalculated = function()
  if not (o352.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o355.SetStateValue(o355.GetCalculated())
end, StartCalculate = function()
  o355["Value"] = o355.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("GrubsDockCom = True")
  CallFunction(o726, "Code7")
  CallFunction(o766, "Code7")
  CallFunction(o806, "Code7")
  CallFunction(o846, "Code7")
end, SetStateValue = function(L0)
  if not (o355.Value == L0) then
    DelayedFunction(5, o355, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o355.Value == L0) then
    o355["Value"] = L0
    if not (L0 ~= 1) then
      o355.ChangeTo1()
    end
  end
end }
o356 = { [nil] = {}, GetCalculated = function()
  if not (o405.Value == True) then
    if not (o441.Value == True) then
      if not (o477.Value == True) then
        if not (o513.Value == True) then
          if not (o549.Value == True) then
            if not (o585.Value == True) then
              if not (o622.Value == True) then
                if not (o658.Value == True) then
                  if not (o694.Value ~= True) then
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
  o356.SetStateValue(o356.GetCalculated())
end, StartCalculate = function()
  o356["Value"] = o356.GetCalculated()
  o396.StartCalculate()
end, SetStateValue = function(L0)
  if not (o356.Value == L0) then
    DelayedFunction(11, o356, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o356.Value == L0) then
    o356["Value"] = L0
    o396.ReCalculate()
  end
end }
o357 = { [nil] = {}, GetCalculated = function()
  if not (o405.Value == True) then
    if not (o441.Value == True) then
      if not (o477.Value == True) then
        if not (o513.Value == True) then
          if not (o549.Value == True) then
            if not (o585.Value == True) then
              if not (o622.Value == True) then
                if not (o658.Value == True) then
                  if not (o694.Value ~= True) then
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
  o357.SetStateValue(o357.GetCalculated())
end, StartCalculate = function()
  o357["Value"] = o357.GetCalculated()
  o351.StartCalculate()
  o353.StartCalculate()
  o938.StartCalculate()
  o2029.StartCalculate()
  o2035.StartCalculate()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track4")
end, SetStateValue = function(L0)
  if not (o357.Value == L0) then
    o357["Value"] = L0
    o351.ReCalculate()
    o353.ReCalculate()
    o938.ReCalculate()
    o2029.ReCalculate()
    o2035.ReCalculate()
    if not (L0 ~= 1) then
      o357.ChangeTo1()
    end
  end
end }
o358 = { [nil] = {}, Start = function()
  o358["Value"] = False
  o359.StartCalculate()
end, SetStateValue = function(L0)
  if not (o358.Value == L0) then
    o358["Value"] = L0
    o359.ReCalculate()
  end
end }
o359 = { [nil] = {}, GetCalculated = function()
  if not (o358.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o359.SetStateValue(o359.GetCalculated())
end, StartCalculate = function()
  o359["Value"] = o359.GetCalculated()
  o360.StartCalculate()
end, SetStateValue = function(L0)
  if not (o359.Value == L0) then
    DelayedFunction(40, o359, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o359.Value == L0) then
    o359["Value"] = L0
    o360.ReCalculate()
  end
end }
o360 = { [nil] = {}, GetCalculated = function()
  if not (o359.Value ~= True) then
    if not (o1205.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o360.SetStateValue(o360.GetCalculated())
end, StartCalculate = function()
  o360["Value"] = o360.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("Bomber not destroyed in 40 Seconds = True")
  CallFunction(o400, "Code8")
end, SetStateValue = function(L0)
  if not (o360.Value == L0) then
    o360["Value"] = L0
    if not (L0 ~= 1) then
      o360.ChangeTo1()
    end
  end
end }
o361 = { [nil] = {}, Start = function()
  o361["Value"] = False
  o362.StartCalculate()
  o1542.StartCalculate()
  o1592.StartCalculate()
  o1642.StartCalculate()
  o1692.StartCalculate()
  o1742.StartCalculate()
  o1906.StartCalculate()
  o1954.StartCalculate()
end, SetStateValue = function(L0)
  if not (o361.Value == L0) then
    o361["Value"] = L0
    o362.ReCalculate()
    o1542.ReCalculate()
    o1592.ReCalculate()
    o1642.ReCalculate()
    o1692.ReCalculate()
    o1742.ReCalculate()
    o1906.ReCalculate()
    o1954.ReCalculate()
  end
end }
o362 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o362.SetStateValue(o362.GetCalculated())
end, StartCalculate = function()
  o362["Value"] = o362.GetCalculated()
  o363.StartCalculate()
end, SetStateValue = function(L0)
  if not (o362.Value == L0) then
    DelayedFunction(50, o362, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o362.Value == L0) then
    o362["Value"] = L0
    o363.ReCalculate()
  end
end }
o363 = { [nil] = {}, GetCalculated = function()
  if not (o362.Value ~= True) then
    if not (o892.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o363.SetStateValue(o363.GetCalculated())
end, StartCalculate = function()
  o363["Value"] = o363.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("Caoe not destroyed in 50 Seconds = True")
  CallFunction(o617, "Code8")
end, SetStateValue = function(L0)
  if not (o363.Value == L0) then
    o363["Value"] = L0
    if not (L0 ~= 1) then
      o363.ChangeTo1()
    end
  end
end }
o364 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o364.SetStateValue(o364.GetCalculated())
end, StartCalculate = function()
  o364["Value"] = o364.GetCalculated()
  o372.StartCalculate()
end, SetStateValue = function(L0)
  if not (o364.Value == L0) then
    DelayedFunction(3, o364, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o364.Value == L0) then
    o364["Value"] = L0
    o372.ReCalculate()
  end
end }
o365 = { [nil] = {}, GetCalculated = function()
  if not (o1794.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o365.SetStateValue(o365.GetCalculated())
end, StartCalculate = function()
  o365["Value"] = o365.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o1796.Node)
end, SetStateValue = function(L0)
  if not (o365.Value == L0) then
    o365["Value"] = L0
    if not (L0 ~= 1) then
      o365.ChangeTo1()
    end
  end
end }
o366 = { [nil] = {}, GetCalculated = function()
  if not (o1799.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o366.SetStateValue(o366.GetCalculated())
end, StartCalculate = function()
  o366["Value"] = o366.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o1193.Node)
end, SetStateValue = function(L0)
  if not (o366.Value == L0) then
    o366["Value"] = L0
    if not (L0 ~= 1) then
      o366.ChangeTo1()
    end
  end
end }
o367 = { [nil] = {}, GetCalculated = function()
  if not (o940.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o367.SetStateValue(o367.GetCalculated())
end, StartCalculate = function()
  o367["Value"] = o367.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o1801.Node)
end, SetStateValue = function(L0)
  if not (o367.Value == L0) then
    o367["Value"] = L0
    if not (L0 ~= 1) then
      o367.ChangeTo1()
    end
  end
end }
o368 = { [nil] = {}, GetCalculated = function()
  if not (o898.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o368.SetStateValue(o368.GetCalculated())
end, StartCalculate = function()
  o368["Value"] = o368.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o886.Node, o344.Node, 1148)
end, SetStateValue = function(L0)
  if not (o368.Value == L0) then
    o368["Value"] = L0
    if not (L0 ~= 1) then
      o368.ChangeTo1()
    end
  end
end }
o369 = { [nil] = {}, GetCalculated = function()
  if not (o890.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o369.SetStateValue(o369.GetCalculated())
end, StartCalculate = function()
  o369["Value"] = o369.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o886.Node, o344.Node, 1145)
end, SetStateValue = function(L0)
  if not (o369.Value == L0) then
    o369["Value"] = L0
    if not (L0 ~= 1) then
      o369.ChangeTo1()
    end
  end
end }
o370 = { [nil] = {}, Start = function()
  o370["Value"] = False
  o1809.StartCalculate()
  o1858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o370.Value == L0) then
    o370["Value"] = L0
    o1809.ReCalculate()
    o1858.ReCalculate()
  end
end }
o371 = { [nil] = {}, GetCalculated = function()
  if not (o940.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o371.SetStateValue(o371.GetCalculated())
end, StartCalculate = function()
  o371["Value"] = o371.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(1284, -1, -1)
end, SetStateValue = function(L0)
  if not (o371.Value == L0) then
    DelayedFunction(1, o371, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o371.Value == L0) then
    o371["Value"] = L0
    if not (L0 ~= 1) then
      o371.ChangeTo1()
    end
  end
end }
o372 = { [nil] = {}, GetCalculated = function()
  if not (o364.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o372.SetStateValue(o372.GetCalculated())
end, StartCalculate = function()
  o372["Value"] = o372.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o372.Value == L0) then
    o372["Value"] = L0
    o2.ReCalculate()
  end
end }
o396 = { [nil] = {}, GetCalculated = function()
  if not (o356.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o396.SetStateValue(o396.GetCalculated())
end, StartCalculate = function()
  o396["Value"] = o396.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o396.Value == L0) then
    o396["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o400 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o400, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o400, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o400, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o400, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o400, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1198.Node)
  CallFunction(o400, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o400, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o400, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o405.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o401.Value ~= True) then
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
o401 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o401.SetStateValue(o401.GetCalculated())
end, StartCalculate = function()
  o401["Value"] = o401.GetCalculated()
end, SetStateValue = function(L0)
  if not (o401.Value == L0) then
    o401["Value"] = L0
    CallFunction(o400, "ProcesseStateChange")
  end
end }
o405 = { [nil] = {}, Start = function()
  o405["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o405.Value == L0) then
    o405["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o437 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o437, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o437, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o437, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o437, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o437, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1198.Node)
  CallFunction(o437, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o441.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o438.Value ~= True) then
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
o438 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o438.SetStateValue(o438.GetCalculated())
end, StartCalculate = function()
  o438["Value"] = o438.GetCalculated()
end, SetStateValue = function(L0)
  if not (o438.Value == L0) then
    o438["Value"] = L0
    CallFunction(o437, "ProcesseStateChange")
  end
end }
o441 = { [nil] = {}, Start = function()
  o441["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o441.Value == L0) then
    o441["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o473 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o473, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o473, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o473, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o473, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o473, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1198.Node)
  CallFunction(o473, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o477.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o474.Value ~= True) then
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
o474 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o474.SetStateValue(o474.GetCalculated())
end, StartCalculate = function()
  o474["Value"] = o474.GetCalculated()
end, SetStateValue = function(L0)
  if not (o474.Value == L0) then
    o474["Value"] = L0
    CallFunction(o473, "ProcesseStateChange")
  end
end }
o477 = { [nil] = {}, Start = function()
  o477["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o477.Value == L0) then
    o477["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o509 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o509, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o509, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o509, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o509, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o509, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1198.Node)
  CallFunction(o509, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o513.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o510.Value ~= True) then
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
o510 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o510.SetStateValue(o510.GetCalculated())
end, StartCalculate = function()
  o510["Value"] = o510.GetCalculated()
end, SetStateValue = function(L0)
  if not (o510.Value == L0) then
    o510["Value"] = L0
    CallFunction(o509, "ProcesseStateChange")
  end
end }
o513 = { [nil] = {}, Start = function()
  o513["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o513.Value == L0) then
    o513["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o545 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o545, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o545, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o545, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o545, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o545, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1198.Node)
  CallFunction(o545, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o549.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o546.Value ~= True) then
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
o546 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o546.SetStateValue(o546.GetCalculated())
end, StartCalculate = function()
  o546["Value"] = o546.GetCalculated()
end, SetStateValue = function(L0)
  if not (o546.Value == L0) then
    o546["Value"] = L0
    CallFunction(o545, "ProcesseStateChange")
  end
end }
o549 = { [nil] = {}, Start = function()
  o549["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o549.Value == L0) then
    o549["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o581 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o581, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o581, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o581, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o581, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o581, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o1198.Node)
  CallFunction(o581, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o585.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o582.Value ~= True) then
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
o582 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o582.SetStateValue(o582.GetCalculated())
end, StartCalculate = function()
  o582["Value"] = o582.GetCalculated()
end, SetStateValue = function(L0)
  if not (o582.Value == L0) then
    o582["Value"] = L0
    CallFunction(o581, "ProcesseStateChange")
  end
end }
o585 = { [nil] = {}, Start = function()
  o585["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o585.Value == L0) then
    o585["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o617 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o617, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o617, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o617, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o617, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o617, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o886.Node)
  CallFunction(o617, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o617, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o617, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Destroyed = function(L0, L1)
  o622.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o618.Value ~= True) then
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
o618 = { [nil] = {}, GetCalculated = function()
  if not (o1205.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o618.SetStateValue(o618.GetCalculated())
end, StartCalculate = function()
  o618["Value"] = o618.GetCalculated()
end, SetStateValue = function(L0)
  if not (o618.Value == L0) then
    o618["Value"] = L0
    CallFunction(o617, "ProcesseStateChange")
  end
end }
o622 = { [nil] = {}, Start = function()
  o622["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o622.Value == L0) then
    o622["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o654 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o654, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o654, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o654, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o654, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o654, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o886.Node)
  CallFunction(o654, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o658.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o655.Value ~= True) then
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
o655 = { [nil] = {}, GetCalculated = function()
  if not (o1205.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o655.SetStateValue(o655.GetCalculated())
end, StartCalculate = function()
  o655["Value"] = o655.GetCalculated()
end, SetStateValue = function(L0)
  if not (o655.Value == L0) then
    o655["Value"] = L0
    CallFunction(o654, "ProcesseStateChange")
  end
end }
o658 = { [nil] = {}, Start = function()
  o658["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o658.Value == L0) then
    o658["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o690 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o690, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o690, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o690, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o344.Node)
  CallFunction(o690, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o690, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  ShieldedBody_DeactivateSelectiveVulnerability(L0.Node)
  ShieldedBody_MakeSelectiveVulnerableAgainst(L0.Node, o886.Node)
  CallFunction(o690, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o694.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 4) then
    if not (L0.CodeIndex >= 5) then
      if not (o691.Value ~= True) then
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
o691 = { [nil] = {}, GetCalculated = function()
  if not (o1205.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o691.SetStateValue(o691.GetCalculated())
end, StartCalculate = function()
  o691["Value"] = o691.GetCalculated()
end, SetStateValue = function(L0)
  if not (o691.Value == L0) then
    o691["Value"] = L0
    CallFunction(o690, "ProcesseStateChange")
  end
end }
o694 = { [nil] = {}, Start = function()
  o694["Value"] = False
  o356.StartCalculate()
  o357.StartCalculate()
end, SetStateValue = function(L0)
  if not (o694.Value == L0) then
    o694["Value"] = L0
    o356.ReCalculate()
    o357.ReCalculate()
  end
end }
S_o726 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o726, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o726, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o726, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chapter3GrubPath_1", 0.5, 1 } }("Code4")
  else
    CallFunction(o726, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o726, "Code3")
  else
    CallFunction(o726, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o726, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o726, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o726, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o338, 1e+32, "Code9")
  else
    CallFunction(o726, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
S_o766 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o766, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o766, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o766, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chapter3GrubPath_2", 0.5, 1 } }("Code4")
  else
    CallFunction(o766, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o766, "Code3")
  else
    CallFunction(o766, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o766, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o766, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o766, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o339, 1e+32, "Code9")
  else
    CallFunction(o766, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
S_o806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o806, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o806, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o806, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chapter3GrubPath_3", 0.5, 1 } }("Code4")
  else
    CallFunction(o806, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o806, "Code3")
  else
    CallFunction(o806, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o806, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o806, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o806, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o338, 1e+32, "Code9")
  else
    CallFunction(o806, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
S_o846 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o846, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o846, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o846, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chapter3GrubPath_4", 0.5, 1 } }("Code4")
  else
    CallFunction(o846, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o846, "Code3")
  else
    CallFunction(o846, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o846, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o846, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  StopAllActiveBehaviours(L0)
  CallFunction(o846, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DockLib.DockVehicle(L0, o339, 1e+32, "Code9")
  else
    CallFunction(o846, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
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
S_o886 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o886, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o886, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o886, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 0)
  CallFunction(o886, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "DeactivateAvoidance" } }("Code5")
  else
    CallFunction(o886, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Vessel_AttackTurrets(L0.Node, "", "Methan_7", "E", "", "")
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o886, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code8")
  else
    CallFunction(o886, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o886, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  ShieldedBody_MakeVulnerable(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o886, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/CapeFearPath_1", 1, 1 } }(o340, o341, "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", False, "Code12")
  else
    CallFunction(o886, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  o361.SetStateValue(True)
  CallFunction(o886, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Attacked = function(L0, L1)
  o890.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o892.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o898.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o889.Value ~= True) then
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
o889 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o889.SetStateValue(o889.GetCalculated())
end, StartCalculate = function()
  o889["Value"] = o889.GetCalculated()
end, SetStateValue = function(L0)
  if not (o889.Value == L0) then
    DelayedFunction(2, o889, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o889.Value == L0) then
    o889["Value"] = L0
    CallFunction(o886, "ProcesseStateChange")
  end
end }
o890 = { [nil] = {}, Start = function()
  o890["Value"] = False
  o369.StartCalculate()
end, SetStateValue = function(L0)
  if not (o890.Value == L0) then
    o890["Value"] = L0
    o369.ReCalculate()
  end
end }
o892 = { [nil] = {}, Start = function()
  o892["Value"] = False
  o351.StartCalculate()
  o363.StartCalculate()
  o938.StartCalculate()
end, SetStateValue = function(L0)
  if not (o892.Value == L0) then
    o892["Value"] = L0
    o351.ReCalculate()
    o363.ReCalculate()
    o938.ReCalculate()
  end
end }
o898 = { [nil] = {}, Start = function()
  o898["Value"] = False
  o368.StartCalculate()
end, SetStateValue = function(L0)
  if not (o898.Value == L0) then
    o898["Value"] = L0
    o368.ReCalculate()
  end
end }
S_o935 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o935, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o935, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o935, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  Vessel_CollisionTerrain(L0.Node, 1)
  Body_SetPosition(L0.Node, Body_GetPosition(o886.Node))
  CallFunction(o935, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "/Scenario_Dynamic/Navigation/HoleMapArea", "player1", "", "", "", 1, "Code7")
  else
    CallFunction(o935, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  SendRadioMessageTake(o935.Node, o344.Node, 72)
  CallFunction(o935, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeathBlowPath_1", 1, 1 } }("Code9")
  else
    CallFunction(o935, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o935, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, SetStateValue_Born = function(L0, L1)
  o940.SetStateValue(L1)
end, SetStateValue_DipoledOut = function(L0, L1)
  o942.SetStateValue(L1)
end, SetStateValue_KineticShield75 = function(L0, L1)
  o946.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o938.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o936.Value ~= True) then
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
o936 = { [nil] = {}, GetCalculated = function()
  if not (o946.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o936.SetStateValue(o936.GetCalculated())
end, StartCalculate = function()
  o936["Value"] = o936.GetCalculated()
end, SetStateValue = function(L0)
  if not (o936.Value == L0) then
    o936["Value"] = L0
    CallFunction(o935, "ProcesseStateChange")
  end
end }
o938 = { [nil] = {}, GetCalculated = function()
  if not (o892.Value ~= True) then
    if not (o357.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o938.SetStateValue(o938.GetCalculated())
end, StartCalculate = function()
  o938["Value"] = o938.GetCalculated()
end, SetStateValue = function(L0)
  if not (o938.Value == L0) then
    DelayedFunction(7.9, o938, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o938.Value == L0) then
    o938["Value"] = L0
    CallFunction(o935, "ProcesseStateChange")
  end
end }
o940 = { [nil] = {}, Start = function()
  o940["Value"] = False
  o367.StartCalculate()
  o371.StartCalculate()
end, SetStateValue = function(L0)
  if not (o940.Value == L0) then
    o940["Value"] = L0
    o367.ReCalculate()
    o371.ReCalculate()
  end
end }
o942 = { [nil] = {}, Start = function()
  o942["Value"] = False
  o364.StartCalculate()
  o1543.StartCalculate()
  o1593.StartCalculate()
  o1643.StartCalculate()
  o1693.StartCalculate()
  o1743.StartCalculate()
  o1905.StartCalculate()
  o1953.StartCalculate()
end, SetStateValue = function(L0)
  if not (o942.Value == L0) then
    o942["Value"] = L0
    o364.ReCalculate()
    o1543.ReCalculate()
    o1593.ReCalculate()
    o1643.ReCalculate()
    o1693.ReCalculate()
    o1743.ReCalculate()
    o1905.ReCalculate()
    o1953.ReCalculate()
  end
end }
o946 = { [nil] = {}, Start = function()
  o946["Value"] = False
  o936.StartCalculate()
end, SetStateValue = function(L0)
  if not (o946.Value == L0) then
    o946["Value"] = L0
    o936.ReCalculate()
  end
end }
S_o984 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o984, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o984, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o984, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o984, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o984, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o984, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o984, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o984, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o984, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonhamPath_1", 1, 1 } }("Code12")
  else
    CallFunction(o984, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "ent_scout", "", "", "", 1, "Code13")
  else
    CallFunction(o984, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
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
S_o1035 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1035, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1035, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1035, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1035, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1035, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1035, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o1035, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o1035, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1035, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/DeGrangePath_1", 1, 1 } }("Code12")
  else
    CallFunction(o1035, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "ent_scout", "", "", "", 1, "Code13")
  else
    CallFunction(o1035, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
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
S_o1086 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1086, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1086, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1086, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1086, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1086, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1086, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o1086, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o1086, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1086, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/HarperPath_1", 1, 1 } }("Code12")
  else
    CallFunction(o1086, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "ent_scout", "", "", "", 1, "Code13")
  else
    CallFunction(o1086, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
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
S_o1137 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1137, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1137, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1137, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Body_ActivateEscapePod(L0.Node)
  Vessel_CollisionObjects(L0.Node, 1)
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1137, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code7")
  else
    CallFunction(o1137, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1137, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  StopAllActiveBehaviours(L0)
  CallFunction(o1137, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "E", "", "", "", 1, "Code10")
  else
    CallFunction(o1137, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  StopAllActiveBehaviours(L0)
  CallFunction(o1137, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/PicoPath_1", 1, 1 } }("Code12")
  else
    CallFunction(o1137, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code13")
  else
    CallFunction(o1137, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
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
S_o1188 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, o1198.Node)
  CallFunction(o1188, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1193 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, o886.Node)
  CallFunction(o1193, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1198 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1198, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1198, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1198, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1198, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.Infiltrate(L0, o64.Node, "DP_ver_1", "DP_ver_1", 0.75, 0.75, 0, "Code6")
  else
    CallFunction(o1198, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.UnInfiltrate(L0, "Code7")
  else
    CallFunction(o1198, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  ShieldedBody_MakeVulnerable(L0.Node)
  Vessel_AttackTurrets(L0.Node, "", "pla", "", "", "")
  o370.SetStateValue(True)
  CallFunction(o1198, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/Chapter3BomberPath", 1, 1 } }(o342, o343, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", False, "Code11")
  else
    CallFunction(o1198, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  o358.SetStateValue(True)
  CallFunction(o1198, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "Methan_1", "pla", "", "", 1, "Code13")
  else
    CallFunction(o1198, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, SetStateValue_Destroyed = function(L0, L1)
  o1205.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1199.Value ~= True) then
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
o1199 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1199.SetStateValue(o1199.GetCalculated())
end, StartCalculate = function()
  o1199["Value"] = o1199.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1199.Value == L0) then
    DelayedFunction(5, o1199, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1199.Value == L0) then
    o1199["Value"] = L0
    CallFunction(o1198, "ProcesseStateChange")
  end
end }
o1205 = { [nil] = {}, Start = function()
  o1205["Value"] = False
  o354.StartCalculate()
  o360.StartCalculate()
  o618.StartCalculate()
  o655.StartCalculate()
  o691.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1205.Value == L0) then
    o1205["Value"] = L0
    o354.ReCalculate()
    o360.ReCalculate()
    o618.ReCalculate()
    o655.ReCalculate()
    o691.ReCalculate()
  end
end }
S_o1248 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o1248, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1253 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1253, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1253, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1253, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1253, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1253, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o1256.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1268.SetStateValue(L1)
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
o1256 = { [nil] = {}, Start = function()
  o1256["Value"] = False
  o352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1256.Value == L0) then
    o1256["Value"] = L0
    o352.ReCalculate()
  end
end }
o1268 = { [nil] = {}, Start = function()
  o1268["Value"] = False
  o350.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1268.Value == L0) then
    o1268["Value"] = L0
    o350.ReCalculate()
  end
end }
S_o1301 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1301, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1301, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1301, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1301, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1301, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o1304.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1316.SetStateValue(L1)
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
o1304 = { [nil] = {}, Start = function()
  o1304["Value"] = False
  o352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1304.Value == L0) then
    o1304["Value"] = L0
    o352.ReCalculate()
  end
end }
o1316 = { [nil] = {}, Start = function()
  o1316["Value"] = False
  o350.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1316.Value == L0) then
    o1316["Value"] = L0
    o350.ReCalculate()
  end
end }
S_o1349 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1349, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1349, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1349, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1349, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "wng", "pla", "", "", 1, "Code5")
  else
    CallFunction(o1349, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o1352.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1364.SetStateValue(L1)
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
o1352 = { [nil] = {}, Start = function()
  o1352["Value"] = False
  o352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1352.Value == L0) then
    o1352["Value"] = L0
    o352.ReCalculate()
  end
end }
o1364 = { [nil] = {}, Start = function()
  o1364["Value"] = False
  o350.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1364.Value == L0) then
    o1364["Value"] = L0
    o350.ReCalculate()
  end
end }
S_o1397 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1397, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1397, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1397, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1397, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1397, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o1400.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1412.SetStateValue(L1)
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
o1400 = { [nil] = {}, Start = function()
  o1400["Value"] = False
  o352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1400.Value == L0) then
    o1400["Value"] = L0
    o352.ReCalculate()
  end
end }
o1412 = { [nil] = {}, Start = function()
  o1412["Value"] = False
  o350.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1412.Value == L0) then
    o1412["Value"] = L0
    o350.ReCalculate()
  end
end }
S_o1445 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1445, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1445, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1445, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1445, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1445, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o1448.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1460.SetStateValue(L1)
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
o1448 = { [nil] = {}, Start = function()
  o1448["Value"] = False
  o352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1448.Value == L0) then
    o1448["Value"] = L0
    o352.ReCalculate()
  end
end }
o1460 = { [nil] = {}, Start = function()
  o1460["Value"] = False
  o350.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1460.Value == L0) then
    o1460["Value"] = L0
    o350.ReCalculate()
  end
end }
S_o1493 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1493, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1493, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1493, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o1493, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/HoleMapArea", "E", "", "", "", 1, "Code5")
  else
    CallFunction(o1493, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Attacked = function(L0, L1)
  o1496.SetStateValue(L1)
end, SetStateValue_DestEmp = function(L0, L1)
  o1508.SetStateValue(L1)
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
o1496 = { [nil] = {}, Start = function()
  o1496["Value"] = False
  o352.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1496.Value == L0) then
    o1496["Value"] = L0
    o352.ReCalculate()
  end
end }
o1508 = { [nil] = {}, Start = function()
  o1508["Value"] = False
  o350.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1508.Value == L0) then
    o1508["Value"] = L0
    o350.ReCalculate()
  end
end }
S_o1541 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1541, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1541, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1541, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1541, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1541, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1541, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1541, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o341, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", 1, 1, "Code8")
  else
    CallFunction(o1541, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/HoleMapArea", "wng", "pla", "", "", 1, "Code9")
  else
    CallFunction(o1541, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1541, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1545.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1542.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1543.Value ~= True) then
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
o1542 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1542.SetStateValue(o1542.GetCalculated())
end, StartCalculate = function()
  o1542["Value"] = o1542.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1542.Value == L0) then
    o1542["Value"] = L0
    CallFunction(o1541, "ProcesseStateChange")
  end
end }
o1543 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1543.SetStateValue(o1543.GetCalculated())
end, StartCalculate = function()
  o1543["Value"] = o1543.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1543.Value == L0) then
    DelayedFunction(3, o1543, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1543.Value == L0) then
    o1543["Value"] = L0
    CallFunction(o1541, "ProcesseStateChange")
  end
end }
o1545 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1545.SetStateValue(o1545.GetCalculated())
end, StartCalculate = function()
  o1545["Value"] = o1545.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1545.Value == L0) then
    DelayedFunction(5, o1545, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1545.Value == L0) then
    o1545["Value"] = L0
    CallFunction(o1541, "ProcesseStateChange")
  end
end }
S_o1591 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1591, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1591, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1591, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1591, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1591, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1591, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1591, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o341, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", 1, 1, "Code8")
  else
    CallFunction(o1591, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/HoleMapArea", "wng", "pla", "", "", 1, "Code9")
  else
    CallFunction(o1591, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1591, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1595.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1592.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1593.Value ~= True) then
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
o1592 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1592.SetStateValue(o1592.GetCalculated())
end, StartCalculate = function()
  o1592["Value"] = o1592.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1592.Value == L0) then
    o1592["Value"] = L0
    CallFunction(o1591, "ProcesseStateChange")
  end
end }
o1593 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1593.SetStateValue(o1593.GetCalculated())
end, StartCalculate = function()
  o1593["Value"] = o1593.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1593.Value == L0) then
    DelayedFunction(2, o1593, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1593.Value == L0) then
    o1593["Value"] = L0
    CallFunction(o1591, "ProcesseStateChange")
  end
end }
o1595 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1595.SetStateValue(o1595.GetCalculated())
end, StartCalculate = function()
  o1595["Value"] = o1595.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1595.Value == L0) then
    DelayedFunction(5, o1595, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1595.Value == L0) then
    o1595["Value"] = L0
    CallFunction(o1591, "ProcesseStateChange")
  end
end }
S_o1641 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1641, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1641, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1641, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1641, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1641, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1641, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1641, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o341, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", 1, 1, "Code8")
  else
    CallFunction(o1641, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/HoleMapArea", "wng", "pla", "", "", 1, "Code9")
  else
    CallFunction(o1641, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1641, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1645.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1642.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1643.Value ~= True) then
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
o1642 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1642.SetStateValue(o1642.GetCalculated())
end, StartCalculate = function()
  o1642["Value"] = o1642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1642.Value == L0) then
    o1642["Value"] = L0
    CallFunction(o1641, "ProcesseStateChange")
  end
end }
o1643 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1643.SetStateValue(o1643.GetCalculated())
end, StartCalculate = function()
  o1643["Value"] = o1643.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1643.Value == L0) then
    DelayedFunction(4, o1643, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1643.Value == L0) then
    o1643["Value"] = L0
    CallFunction(o1641, "ProcesseStateChange")
  end
end }
o1645 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1645.SetStateValue(o1645.GetCalculated())
end, StartCalculate = function()
  o1645["Value"] = o1645.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1645.Value == L0) then
    DelayedFunction(5, o1645, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1645.Value == L0) then
    o1645["Value"] = L0
    CallFunction(o1641, "ProcesseStateChange")
  end
end }
S_o1691 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1691, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1691, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1691, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1691, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1691, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1691, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1691, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o341, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", 1, 1, "Code8")
  else
    CallFunction(o1691, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/HoleMapArea", "wng", "pla", "", "", 1, "Code9")
  else
    CallFunction(o1691, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1691, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1695.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1692.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1693.Value ~= True) then
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
o1692 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1692.SetStateValue(o1692.GetCalculated())
end, StartCalculate = function()
  o1692["Value"] = o1692.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1692.Value == L0) then
    o1692["Value"] = L0
    CallFunction(o1691, "ProcesseStateChange")
  end
end }
o1693 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1693.SetStateValue(o1693.GetCalculated())
end, StartCalculate = function()
  o1693["Value"] = o1693.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1693.Value == L0) then
    DelayedFunction(1, o1693, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1693.Value == L0) then
    o1693["Value"] = L0
    CallFunction(o1691, "ProcesseStateChange")
  end
end }
o1695 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1695.SetStateValue(o1695.GetCalculated())
end, StartCalculate = function()
  o1695["Value"] = o1695.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1695.Value == L0) then
    DelayedFunction(5, o1695, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1695.Value == L0) then
    o1695["Value"] = L0
    CallFunction(o1691, "ProcesseStateChange")
  end
end }
S_o1741 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1741, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1741, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1741, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1741, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1741, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1741, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1741, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o341, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter2Area_1", "/Scenario_Dynamic/Navigation/Chapter2Area_1", 1, 1, "Code8")
  else
    CallFunction(o1741, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/HoleMapArea", "wng", "pla", "", "", 1, "Code9")
  else
    CallFunction(o1741, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code10")
  else
    CallFunction(o1741, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1745.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o1742.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 8) then
    if not (L0.CodeIndex >= 9) then
      if not (o1743.Value ~= True) then
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
o1742 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1742.SetStateValue(o1742.GetCalculated())
end, StartCalculate = function()
  o1742["Value"] = o1742.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1742.Value == L0) then
    o1742["Value"] = L0
    CallFunction(o1741, "ProcesseStateChange")
  end
end }
o1743 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1743.SetStateValue(o1743.GetCalculated())
end, StartCalculate = function()
  o1743["Value"] = o1743.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1743.Value == L0) then
    o1743["Value"] = L0
    CallFunction(o1741, "ProcesseStateChange")
  end
end }
o1745 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1745.SetStateValue(o1745.GetCalculated())
end, StartCalculate = function()
  o1745["Value"] = o1745.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1745.Value == L0) then
    DelayedFunction(5, o1745, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1745.Value == L0) then
    o1745["Value"] = L0
    CallFunction(o1741, "ProcesseStateChange")
  end
end }
S_o1791 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o1791, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o1794.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1794 = { [nil] = {}, Start = function()
  o1794["Value"] = False
  o365.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1794.Value == L0) then
    o1794["Value"] = L0
    o365.ReCalculate()
  end
end }
S_o1796 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o1796, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o1799.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1799 = { [nil] = {}, Start = function()
  o1799["Value"] = False
  o366.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1799.Value == L0) then
    o1799["Value"] = L0
    o366.ReCalculate()
  end
end }
S_o1801 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o935.Node)
  CallFunction(o1801, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1806 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1806, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1806, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1806, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1806, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1806, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1806, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1806, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o343, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", 1, 50, "Code8")
  else
    CallFunction(o1806, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o1812.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1809.Value ~= True) then
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
o1809 = { [nil] = {}, GetCalculated = function()
  if not (o370.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1809.SetStateValue(o1809.GetCalculated())
end, StartCalculate = function()
  o1809["Value"] = o1809.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1809.Value == L0) then
    DelayedFunction(2, o1809, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1809.Value == L0) then
    o1809["Value"] = L0
    CallFunction(o1806, "ProcesseStateChange")
  end
end }
o1812 = { [nil] = {}, Start = function()
  o1812["Value"] = False
  o354.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1812.Value == L0) then
    o1812["Value"] = L0
    o354.ReCalculate()
  end
end }
S_o1855 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1855, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1855, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1855, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_MakeInvulnerable(L0.Node)
  CallFunction(o1855, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o1855, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1855, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  ShieldedBody_MakeVulnerable(L0.Node)
  CallFunction(o1855, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    MiscLib.FollowProtect(L0, o343, 0, 350, "wng", "pla", "", "", "/Scenario_Dynamic/Navigation/Chapter1Area_1", "/Scenario_Dynamic/Navigation/Chapter1Area_1", 1, 50, "Code8")
  else
    CallFunction(o1855, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o1861.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o1858.Value ~= True) then
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
o1858 = { [nil] = {}, GetCalculated = function()
  if not (o370.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1858.SetStateValue(o1858.GetCalculated())
end, StartCalculate = function()
  o1858["Value"] = o1858.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1858.Value == L0) then
    DelayedFunction(2, o1858, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1858.Value == L0) then
    o1858["Value"] = L0
    CallFunction(o1855, "ProcesseStateChange")
  end
end }
o1861 = { [nil] = {}, Start = function()
  o1861["Value"] = False
  o354.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1861.Value == L0) then
    o1861["Value"] = L0
    o354.ReCalculate()
  end
end }
S_o1904 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1904, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1904, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1904, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o1904, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1904, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1906.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1905.Value ~= True) then
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
o1905 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1905.SetStateValue(o1905.GetCalculated())
end, StartCalculate = function()
  o1905["Value"] = o1905.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1905.Value == L0) then
    DelayedFunction(3, o1905, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1905.Value == L0) then
    o1905["Value"] = L0
    CallFunction(o1904, "ProcesseStateChange")
  end
end }
o1906 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1906.SetStateValue(o1906.GetCalculated())
end, StartCalculate = function()
  o1906["Value"] = o1906.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1906.Value == L0) then
    o1906["Value"] = L0
    CallFunction(o1904, "ProcesseStateChange")
  end
end }
S_o1952 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1952, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1952, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o1952, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "/Scenario_Dynamic/Navigation/Chapter2Area_2", "pla", "", "", "", 1, "Code4")
  else
    CallFunction(o1952, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code5")
  else
    CallFunction(o1952, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o1954.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 3) then
    if not (L0.CodeIndex >= 4) then
      if not (o1953.Value ~= True) then
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
o1953 = { [nil] = {}, GetCalculated = function()
  if not (o942.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1953.SetStateValue(o1953.GetCalculated())
end, StartCalculate = function()
  o1953["Value"] = o1953.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1953.Value == L0) then
    DelayedFunction(5, o1953, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1953.Value == L0) then
    o1953["Value"] = L0
    CallFunction(o1952, "ProcesseStateChange")
  end
end }
o1954 = { [nil] = {}, GetCalculated = function()
  if not (o361.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o1954.SetStateValue(o1954.GetCalculated())
end, StartCalculate = function()
  o1954["Value"] = o1954.GetCalculated()
end, SetStateValue = function(L0)
  if not (o1954.Value == L0) then
    DelayedFunction(2, o1954, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o1954.Value == L0) then
    o1954["Value"] = L0
    CallFunction(o1952, "ProcesseStateChange")
  end
end }
S_o2000 = { [nil] = {}, Start = function(L0)

end }
o2001 = FormationLib.CreateFormation("Claw", "", "", "", 15, 20)
o2002 = FormationLib.CreateFormation("Line", "", "", "", 15, 20)
o2003 = FormationLib.CreateFormation("Line", "", "", "", 20, 20)
o2006 = FormationLib.CreateFormation("Line", "", "", "", 20, 20)
o2012 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o2013 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o2014 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
o2015 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o2016 = { [nil] = {}, Start = function(L0)

end }
S_o2017 = { [nil] = {}, Start = function(L0)

end }
S_o2018 = { [nil] = {}, Start = function(L0)

end }
S_o2019 = { [nil] = {}, Start = function(L0)

end }
S_o2020 = { [nil] = {}, Start = function(L0)

end }
S_o2021 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "agressive")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 2)
  Camera_MoveInto(L0.Node, "/InGameSequences/Navigation/Chapter1_CamPosition_1")
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 10)
  CallFunction(o2021, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code6")
  else
    CallFunction(o2021, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  SendRadioMessageTake(o1137.Node, o344.Node, 60)
  SendRadioMessageTake(o984.Node, o344.Node, 61)
  SendRadioMessageTake(o1137.Node, o344.Node, 62)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Chapter1_CamPosition_2", 3, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Chapter1_CamPosition_3", 5, "MMMN", 0)
  CallFunction(o2021, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 10, "Code12")
  else
    CallFunction(o2021, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2021, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2026 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  FormationLib.PlaceFormationPath(o2004, o2001, "/InGameSequences/Navigation/Path_1")
  CallFunction(o2026, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o2004, o2001, "/InGameSequences/Navigation/Path_1", "pos_1", "pos_3", 0.5, 1, "Code2")
  else
    CallFunction(o2026, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  CallFunction(o984, "Code8")
  CallFunction(o1035, "Code8")
  CallFunction(o1086, "Code8")
  CallFunction(o1137, "Code8")
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o1248.Node)
  SED_SetTaskTextKey(1281, -1, -1)
  CallFunction(o2026, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2028 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2028, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Game_PlayMusic(GetGameNode(), "atmo")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/BomberPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/Terror_bomber", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o2028, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code9")
  else
    CallFunction(o2028, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  SendRadioMessageTake(o344.Node, o344.Node, 68)
  SendRadioMessageTake(o1035.Node, o344.Node, 69)
  CallFunction(o2028, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code12")
  else
    CallFunction(o2028, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Game_PlayMusic(GetGameNode(), "agressive")
  CallFunction(o2028, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 13, "Code14")
  else
    CallFunction(o2028, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o1188.Node)
  SED_SetTaskTextKey(1282, -1, -1)
  CallFunction(o2028, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o2029.Value ~= True) then
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
o2029 = { [nil] = {}, GetCalculated = function()
  if not (o350.Value ~= True) then
    if not (o357.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2029.SetStateValue(o2029.GetCalculated())
end, StartCalculate = function()
  o2029["Value"] = o2029.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2029.Value == L0) then
    DelayedFunction(5, o2029, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2029.Value == L0) then
    o2029["Value"] = L0
    CallFunction(o2028, "ProcesseStateChange")
  end
end }
S_o2034 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2034, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/CapeFearPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/capefear_big_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  Camera_Cut(L0.Node, 1)
  CallFunction(o2034, "Code7")
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code8")
  else
    CallFunction(o2034, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  SendRadioMessageTake(o344.Node, o344.Node, 70)
  CallFunction(o2034, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code10")
  else
    CallFunction(o2034, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o1791.Node)
  SED_SetTaskTextKey(1283, -1, -1)
  CallFunction(o984, "Code10")
  CallFunction(o1035, "Code10")
  CallFunction(o1086, "Code10")
  CallFunction(o1137, "Code10")
  CallFunction(o2034, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o2035.Value ~= True) then
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
o2035 = { [nil] = {}, GetCalculated = function()
  if not (o354.Value ~= True) then
    if not (o357.Value ~= False) then
      return 1
    else
      return 0
    end
  end
end, ReCalculate = function()
  o2035.SetStateValue(o2035.GetCalculated())
end, StartCalculate = function()
  o2035["Value"] = o2035.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2035.Value == L0) then
    DelayedFunction(5, o2035, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2035.Value == L0) then
    o2035["Value"] = L0
    CallFunction(o2034, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 190)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_docking_1", S_o30)
  o64 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_vehiclestation_docking_2", S_o64)
  o98 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_1", S_o98)
  o132 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big03_2", S_o132)
  o166 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_1", S_o166)
  o200 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_2", S_o200)
  o234 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_rohr_big02_3", S_o234)
  o268 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_shelter_1", S_o268)
  o302 = BindEasy(Node_Find("/Scenario_Static/Object"), "gen_dockingnode_1", S_o302)
  o344 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o344)
  o358.Start()
  o361.Start()
  o370.Start()
  o400 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_1", S_o400)
  o405.Start()
  o437 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_2", S_o437)
  o441.Start()
  o473 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_3", S_o473)
  o477.Start()
  o509 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_4", S_o509)
  o513.Start()
  o545 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_5", S_o545)
  o549.Start()
  o581 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_6", S_o581)
  o585.Start()
  o617 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_7", S_o617)
  o622.Start()
  o654 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_8", S_o654)
  o658.Start()
  o690 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Methan_9", S_o690)
  o694.Start()
  o726 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Chapter1Grub_1", S_o726)
  o766 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Chapter1Grub_2", S_o766)
  o806 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Chapter1Grub_3", S_o806)
  o846 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Chapter1Grub_4", S_o846)
  o886 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "capefear_big_1", S_o886)
  o890.Start()
  o892.Start()
  o898.Start()
  o935 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "DeathBlow", S_o935)
  o940.Start()
  o942.Start()
  o946.Start()
  o984 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham", S_o984)
  o1035 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_degrange", S_o1035)
  o1086 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_harper", S_o1086)
  o1137 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_pico", S_o1137)
  o1188 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_1", S_o1188)
  o1193 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_2", S_o1193)
  o1198 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Terror_bomber", S_o1198)
  o1205.Start()
  o1248 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o1248)
  o1253 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_1", S_o1253)
  o1256.Start()
  o1268.Start()
  o1301 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_2", S_o1301)
  o1304.Start()
  o1316.Start()
  o1349 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_3", S_o1349)
  o1352.Start()
  o1364.Start()
  o1397 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_4", S_o1397)
  o1400.Start()
  o1412.Start()
  o1445 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_5", S_o1445)
  o1448.Start()
  o1460.Start()
  o1493 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_6", S_o1493)
  o1496.Start()
  o1508.Start()
  o1541 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_1_cape", S_o1541)
  o1591 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_2_cape", S_o1591)
  o1641 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_3_cape", S_o1641)
  o1691 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_4_cape", S_o1691)
  o1741 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_5_cape", S_o1741)
  o1791 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02_1", S_o1791)
  o1794.Start()
  o1796 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03_1", S_o1796)
  o1799.Start()
  o1801 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_attack_3", S_o1801)
  o1806 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_1_bomber", S_o1806)
  o1812.Start()
  o1855 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_2_bomber", S_o1855)
  o1861.Start()
  o1904 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_7", S_o1904)
  o1952 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "ent_scout_2h2_8", S_o1952)
  o2000 = BindEasy(Node_Find("/"), "Camera", S_o2000)
  o2016 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1_CamPosition_1", S_o2016)
  o2017 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1_CamPosition_2", S_o2017)
  o2018 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Chapter1_CamPosition_3", S_o2018)
  o2019 = BindEasy(Node_Find("/InGameSequences/Navigation"), "BomberPosition_1", S_o2019)
  o2020 = BindEasy(Node_Find("/InGameSequences/Navigation"), "CapeFearPosition_1", S_o2020)
  o2021 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroV", S_o2021)
  o2026 = BindEasy(Node_Find("/InGameSequences/Director"), "Chapter1IntroAddon", S_o2026)
  o2028 = BindEasy(Node_Find("/InGameSequences/Director"), "ShowBomberUnDockingV", S_o2028)
  o2034 = BindEasy(Node_Find("/InGameSequences/Director"), "ShowCapeFearUnDockingV", S_o2034)
  o337 = { {}, o1035, o1086, o1137 }()
  o340 = { {}, o886, o1541, o1591, o1641, o1691, o1741 }()
  o342 = { {}, o1198, o1806, o1855 }()
  o2004 = { {}, o344, o984, o1035, o1086, o1137 }()
  o2005 = { {}, o344, o984 }()
  o2007 = { {}, o1035, o1086, o1137 }()
  o2008 = { {}, o1035 }()
  o2009 = { {}, o1086 }()
  o2010 = { {}, o1137 }()
  o2011 = { {}, o984 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end