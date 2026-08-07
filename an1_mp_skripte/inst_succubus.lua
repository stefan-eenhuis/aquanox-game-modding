-- dekompiliert aus inst_succubus.sco
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
  Terrain_LoadTerrain(node1, "map/1H4/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H4/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.2)
  Game_SetCausticObject(node0, 0.1, 0.2)
  Game_SetCausticBuilding(node0, 0.025, 0.2)
  Game_SetLightCache(node0, "map/1H4/Lmsh/", "map/1H4/Ltex/")
  Game_SetTerrainDepth(node0, 6247)
  Game_SetDecompressionHeight(node0, 320)
  Game_SetAmbientLight(node0, 0.015686, 0.070588, 0.117647)
  Game_SetParallelLightT(node0, 0.015686, 0.070588, 0.117647)
  Game_SetParallelLightB(node0, 1, 0.168627, 0)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_5N4_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track08_sad.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track04.sam", 1)
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
  node8 = Node_CreateNode("nod_fx_plant", "coral_03_1")
  Node_AddSon(node7, node8)
  Node_ParseIniFile(node8, "osd/fx_plant/coral_03.osd")
  FX_Plant_SetMap(node8, "map/1H4/Terrain/coral_03.tga")
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_plant", "coral_01_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_plant/coral_01.osd")
  FX_Plant_SetMap(node9, "map/1H4/Terrain/coral_01.tga")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_fx_sky", "fx_sky_05_1")
  Node_AddSon(node7, node10)
  Node_ParseIniFile(node10, "osd/fx_sky/fx_sky_05.osd")
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_fx_rays", "fx_rays_02_1")
  Node_AddSon(node7, node11)
  Node_ParseIniFile(node11, "osd/fx_rays/fx_rays_02.osd")
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_fx_plankton", "fx_plankton_cyan_1")
  Node_AddSon(node7, node12)
  Node_ParseIniFile(node12, "osd/fx_plankton/fx_plankton_cyan.osd")
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_particleemitter", "fx_pe_mag01_1")
  Node_AddSon(node7, node13)
  ParticleEmitter_SetCone(node13, MAT_Vector3(2809.927949, 307.04072, 73.26415), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node13, "osd/fx_pe/fx_pe_mag01.osd")
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_particleemitter", "fx_pe_mag01_black_1")
  Node_AddSon(node7, node14)
  ParticleEmitter_SetCone(node14, MAT_Vector3(2810.32006, 306.854198, 71.656738), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node14, "osd/fx_pe/fx_pe_mag01_black.osd")
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_black_1")
  Node_AddSon(node7, node15)
  ParticleEmitter_SetCone(node15, MAT_Vector3(2522.716, 1548.485, 150), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node15, "osd/fx_pe/fx_pe_mag02_black.osd")
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_1")
  Node_AddSon(node7, node16)
  ParticleEmitter_SetCone(node16, MAT_Vector3(2647.406504, 764.424439, 69.483525), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node16, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_1")
  Node_AddSon(node7, node17)
  ParticleEmitter_SetCone(node17, MAT_Vector3(2587.103062, 1248.431856, 16.676614), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node17, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_1")
  Node_AddSon(node7, node18)
  ParticleEmitter_SetCone(node18, MAT_Vector3(2587.234231, 1249.448025, 21.676614), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node18, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_2")
  Node_AddSon(node7, node19)
  ParticleEmitter_SetCone(node19, MAT_Vector3(2523.397, 1548.872, 150), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node19, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_2")
  Node_AddSon(node7, node20)
  ParticleEmitter_SetCone(node20, MAT_Vector3(2587.04048, 1249.039884, 21.343461), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node20, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_3")
  Node_AddSon(node7, node21)
  ParticleEmitter_SetCone(node21, MAT_Vector3(2386.829, 1719.124, 85), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node21, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_4")
  Node_AddSon(node7, node22)
  ParticleEmitter_SetCone(node22, MAT_Vector3(2385.549, 1718.125, 85), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node22, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_5")
  Node_AddSon(node7, node23)
  ParticleEmitter_SetCone(node23, MAT_Vector3(2593.422, 1482.865, 50), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node23, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_6")
  Node_AddSon(node7, node24)
  ParticleEmitter_SetCone(node24, MAT_Vector3(2780.073, 1327.689, 100), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node24, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_7")
  Node_AddSon(node7, node25)
  ParticleEmitter_SetCone(node25, MAT_Vector3(2390.884, 873.8674, 40), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node25, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_2")
  Node_AddSon(node7, node26)
  ParticleEmitter_SetCone(node26, MAT_Vector3(2392.348, 874.5994, 40), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node26, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_3")
  Node_AddSon(node7, node27)
  ParticleEmitter_SetCone(node27, MAT_Vector3(2595.05, 1482.488, 60), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node27, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_8")
  Node_AddSon(node7, node28)
  ParticleEmitter_SetCone(node28, MAT_Vector3(2631.004742, 911.756811, 60), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node28, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_4")
  Node_AddSon(node7, node29)
  ParticleEmitter_SetCone(node29, MAT_Vector3(2627.452395, 908.309475, 68.661964), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node29, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_9")
  Node_AddSon(node7, node30)
  ParticleEmitter_SetCone(node30, MAT_Vector3(2323.751, 756.4473, 80), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node30, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_5")
  Node_AddSon(node7, node31)
  ParticleEmitter_SetCone(node31, MAT_Vector3(2323.587, 755.2026, 85), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node31, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_10")
  Node_AddSon(node7, node32)
  ParticleEmitter_SetCone(node32, MAT_Vector3(1658.732897, 464.228569, 80.972926), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node32, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_6")
  Node_AddSon(node7, node33)
  ParticleEmitter_SetCone(node33, MAT_Vector3(2567.17974, 1035.694563, 52.228949), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node33, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_11")
  Node_AddSon(node7, node34)
  ParticleEmitter_SetCone(node34, MAT_Vector3(2565.964494, 1035.763607, 50.264106), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node34, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_12")
  Node_AddSon(node7, node35)
  ParticleEmitter_SetCone(node35, MAT_Vector3(2018.914281, 2462.840394, 34.791011), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node35, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_4")
  Node_AddSon(node7, node36)
  ParticleEmitter_SetCone(node36, MAT_Vector3(1807.790994, 3054.197428, 94.282383), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node36, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_5")
  Node_AddSon(node7, node37)
  ParticleEmitter_SetCone(node37, MAT_Vector3(2054.807832, 3358.928618, 93.094757), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node37, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_7")
  Node_AddSon(node7, node38)
  ParticleEmitter_SetCone(node38, MAT_Vector3(1106.772307, 3737.062509, 92.706763), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node38, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_6")
  Node_AddSon(node7, node39)
  ParticleEmitter_SetCone(node39, MAT_Vector3(1390.773319, 2900.470519, 94.717027), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node39, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_7")
  Node_AddSon(node7, node40)
  ParticleEmitter_SetCone(node40, MAT_Vector3(1391.876324, 2900.517627, 99.372228), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node40, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_8")
  Node_AddSon(node7, node41)
  ParticleEmitter_SetCone(node41, MAT_Vector3(1810.275196, 3059.149591, 89.134093), MAT_Vector3(0, 90, 0), 50, 50)
  Node_ParseIniFile(node41, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_13")
  Node_AddSon(node7, node42)
  ParticleEmitter_SetCone(node42, MAT_Vector3(1678.962587, 3485.836185, 94.774833), MAT_Vector3(0, 90, 0), 20, 20)
  Node_ParseIniFile(node42, "osd/fx_pe/fx_pe_mag03.osd")
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_particleemitter", "fx_pe_mag03_black_9")
  Node_AddSon(node7, node43)
  ParticleEmitter_SetCone(node43, MAT_Vector3(2619.944377, 528.248706, 68.462829), MAT_Vector3(0, 90, 0), 20, 40)
  Node_ParseIniFile(node43, "osd/fx_pe/fx_pe_mag03_black.osd")
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_13")
  Node_AddSon(node7, node44)
  ParticleEmitter_SetCone(node44, MAT_Vector3(2758.367651, 689.592808, 66.407466), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node44, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_14")
  Node_AddSon(node7, node45)
  ParticleEmitter_SetCone(node45, MAT_Vector3(2530.437388, 2324.145915, 4.532488), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node45, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_15")
  Node_AddSon(node7, node46)
  ParticleEmitter_SetCone(node46, MAT_Vector3(1805.800507, 3332.557346, 97.651801), MAT_Vector3(0, 90, 0), 70, 70)
  Node_ParseIniFile(node46, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_16")
  Node_AddSon(node7, node47)
  ParticleEmitter_SetCone(node47, MAT_Vector3(1613.745344, 3053.259141, 95.110542), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node47, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_17")
  Node_AddSon(node7, node48)
  ParticleEmitter_SetCone(node48, MAT_Vector3(1390.740269, 3627.159813, 97.494326), MAT_Vector3(0, 90, 0), 70, 70)
  Node_ParseIniFile(node48, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_18")
  Node_AddSon(node7, node49)
  ParticleEmitter_SetCone(node49, MAT_Vector3(893.855679, 3142.367954, 92.506808), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node49, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_particleemitter", "fx_pe_mag02_19")
  Node_AddSon(node7, node50)
  ParticleEmitter_SetCone(node50, MAT_Vector3(2725.291621, 549.745669, 70.642456), MAT_Vector3(0, 90, 0), 40, 40)
  Node_ParseIniFile(node50, "osd/fx_pe/fx_pe_mag02.osd")
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node51)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node51, node52)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node51, node53)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("NOD_PatrolArea", "PatrolArea")
  Node_AddSon(node53, node54)
  PatrolArea_SetPosition(node54, MAT_Vector3(2686.193081, 2156.353095, 160))
  PatrolArea_SetRadius(node54, 100)
  PatrolArea_SetMinZ(node54, -30)
  PatrolArea_SetMaxZ(node54, 30)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_PatrolArea", "TriggerArea")
  Node_AddSon(node53, node55)
  PatrolArea_SetPosition(node55, MAT_Vector3(2685.753998, 2153.878859, 160))
  PatrolArea_SetRadius(node55, 480)
  PatrolArea_SetMinZ(node55, -128)
  PatrolArea_SetMaxZ(node55, 130)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_PatrolArea", "FollowArea")
  Node_AddSon(node53, node56)
  PatrolArea_SetPosition(node56, MAT_Vector3(2686.225178, 2155.722717, 112.250756))
  PatrolArea_SetRadius(node56, 600)
  PatrolArea_SetMinZ(node56, -128)
  PatrolArea_SetMaxZ(node56, 130)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node51, node57)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node51, node58)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Trigger", "TriggerPresence_1")
  Node_AddSon(node58, node59)
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetPosition(node59, MAT_Vector3(2685.830324, 2155.779221, 108.561103))
  Trigger_SetPresenceSphere(node59, 480)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node51, node60)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "bio_wreck_1_1")
  Node_AddSon(node60, node61)
  Body_SetCS(node61, MAT_Vector3(2701.392938, 2015.115989, 84.590226), MAT_Vector3(146.528052, -8.57215, 18.208059))
  Node_ParseIniFile(node61, "osd/bio/bio_wreck_1.osd")
  Body_SetFriendOrFoeID(node61, 4)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "bio_wreck_2_1")
  Node_AddSon(node60, node62)
  Body_SetCS(node62, MAT_Vector3(2784.712611, 2065.229613, 140.720629), MAT_Vector3(158.968083, -2.530464, 118.228885))
  Node_ParseIniFile(node62, "osd/bio/bio_wreck_2.osd")
  Body_SetFriendOrFoeID(node62, 4)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Directory", "Biont_Trash")
  Node_AddSon(node60, node63)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_trash", "bio_cl2b_A1")
  Node_AddSon(node63, node64)
  Body_SetCS(node64, MAT_Vector3(2570.599506, 2007.917788, 81.206833), MAT_Vector3(-60.02717, -41.863333, -171.121848))
  Node_ParseIniFile(node64, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node64, 4)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_trash", "bio_cl4a_A1")
  Node_AddSon(node63, node65)
  Body_SetCS(node65, MAT_Vector3(2778.662141, 1819.236929, 115.866553), MAT_Vector3(-16.25598, -31.18534, -84.9814))
  Node_ParseIniFile(node65, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node65, 4)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_trash", "bio_cl3a_B1")
  Node_AddSon(node63, node66)
  Body_SetCS(node66, MAT_Vector3(2730.611, 1884.291, 100.300602), MAT_Vector3(-82.98593, -5.069944, -123.8773))
  Node_ParseIniFile(node66, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node66, 4)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_trash", "bio_cl2b_C1")
  Node_AddSon(node63, node67)
  Body_SetCS(node67, MAT_Vector3(2891.586, 1882.389, 134.282697), MAT_Vector3(-132.6386, -78.01754, 27.46029))
  Node_ParseIniFile(node67, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node67, 4)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_trash", "bio_cl3a_C1")
  Node_AddSon(node63, node68)
  Body_SetCS(node68, MAT_Vector3(2793.316, 1763.78, 137.581846), MAT_Vector3(-82.40881, -13.97285, 139.8103))
  Node_ParseIniFile(node68, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node68, 4)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_trash", "bio_cl2b_D1")
  Node_AddSon(node63, node69)
  Body_SetCS(node69, MAT_Vector3(3111.576, 1654.975, 192.482352), MAT_Vector3(100.9438, 66.85781, 177.3056))
  Node_ParseIniFile(node69, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node69, 4)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_trash", "bio_cl2b_D2")
  Node_AddSon(node63, node70)
  Body_SetCS(node70, MAT_Vector3(2778.351, 1660.846, 120.929978), MAT_Vector3(108.8219, 47.39059, -118.3381))
  Node_ParseIniFile(node70, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node70, 4)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_trash", "bio_cl3a_D1")
  Node_AddSon(node63, node71)
  Body_SetCS(node71, MAT_Vector3(3051.766, 1639.09, 195.76948), MAT_Vector3(-81.71599, 11.69669, 150.5805))
  Node_ParseIniFile(node71, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node71, 4)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_trash", "bio_cl4a_D2")
  Node_AddSon(node63, node72)
  Body_SetCS(node72, MAT_Vector3(2779.821, 1585.537, 116.690095), MAT_Vector3(51.71234, -71.25989, -114.7524))
  Node_ParseIniFile(node72, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node72, 4)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_trash", "bio_cl5_D1")
  Node_AddSon(node63, node73)
  Body_SetCS(node73, MAT_Vector3(3072.486, 1602.719, 173.774691), MAT_Vector3(9.699844, -71.30021, 76.4202))
  Node_ParseIniFile(node73, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node73, 4)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_trash", "bio_cl5_D2")
  Node_AddSon(node63, node74)
  Body_SetCS(node74, MAT_Vector3(2845.035, 1608.028, 138.108316), MAT_Vector3(-12.81293, -43.61181, 58.67097))
  Node_ParseIniFile(node74, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node74, 4)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_trash", "bio_cl6_D2")
  Node_AddSon(node63, node75)
  Body_SetCS(node75, MAT_Vector3(2760.392, 1620.597, 113.187595), MAT_Vector3(91.37975, -24.62098, -82.7747))
  Node_ParseIniFile(node75, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node75, 4)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_trash", "bio_cl2a_D1")
  Node_AddSon(node63, node76)
  Body_SetCS(node76, MAT_Vector3(3048.902, 1684.22, 159.307327), MAT_Vector3(-156.8704, -64.84589, -159.8128))
  Node_ParseIniFile(node76, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node76, 4)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_trash", "bio_cl2a_D2")
  Node_AddSon(node63, node77)
  Body_SetCS(node77, MAT_Vector3(2837.295, 1662.958, 133.94205), MAT_Vector3(-62.61573, -22.70948, 17.42384))
  Node_ParseIniFile(node77, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node77, 4)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_trash", "bio_cl3b_D1")
  Node_AddSon(node63, node78)
  Body_SetCS(node78, MAT_Vector3(3164.195, 1635.003, 204.794931), MAT_Vector3(-64.21169, 1.36865, -109.8602))
  Node_ParseIniFile(node78, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node78, 4)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_trash", "bio_cl3b_D2")
  Node_AddSon(node63, node79)
  Body_SetCS(node79, MAT_Vector3(2744.207, 1580.747, 113.190691), MAT_Vector3(-48.46701, -43.24813, -133.7141))
  Node_ParseIniFile(node79, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node79, 4)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_trash", "bio_cl3a_E1")
  Node_AddSon(node63, node80)
  Body_SetCS(node80, MAT_Vector3(2798.082, 890.7998, 170.149661), MAT_Vector3(164.6497, -0.372332, -138.0619))
  Node_ParseIniFile(node80, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node80, 4)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_trash", "bio_cl3a_E2")
  Node_AddSon(node63, node81)
  Body_SetCS(node81, MAT_Vector3(2668.399, 842.7771, 86.651274), MAT_Vector3(98.39939, 12.93799, -86.64178))
  Node_ParseIniFile(node81, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node81, 4)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_trash", "bio_cl5_E1")
  Node_AddSon(node63, node82)
  Body_SetCS(node82, MAT_Vector3(2832.003, 780.5557, 176.90733), MAT_Vector3(-84.78219, -71.30021, 76.4202))
  Node_ParseIniFile(node82, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node82, 4)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_trash", "bio_cl5_E2")
  Node_AddSon(node63, node83)
  Body_SetCS(node83, MAT_Vector3(2712.233, 821.3292, 81.18318), MAT_Vector3(19.39631, -60.55311, 133.8275))
  Node_ParseIniFile(node83, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node83, 4)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_trash", "bio_cl6_E1")
  Node_AddSon(node63, node84)
  Body_SetCS(node84, MAT_Vector3(2860.37, 826.9915, 178.1087), MAT_Vector3(-107.7101, 26.91457, 73.0996))
  Node_ParseIniFile(node84, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node84, 4)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_trash", "bio_cl6_E2")
  Node_AddSon(node63, node85)
  Body_SetCS(node85, MAT_Vector3(2705.97, 864.9366, 91.045013), MAT_Vector3(48.76542, 73.10009, -51.38002))
  Node_ParseIniFile(node85, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node85, 4)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_trash", "bio_cl2a_E1")
  Node_AddSon(node63, node86)
  Body_SetCS(node86, MAT_Vector3(2894.207, 868.5528, 182.294263), MAT_Vector3(-167.4667, -55.32222, 73.05981))
  Node_ParseIniFile(node86, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node86, 4)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_trash", "bio_cl2a_E2")
  Node_AddSon(node63, node87)
  Body_SetCS(node87, MAT_Vector3(2685.522, 879.6017, 84.803174), MAT_Vector3(76.19181, 83.57487, 1.582711))
  Node_ParseIniFile(node87, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node87, 4)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_trash", "bio_cl2a_E3")
  Node_AddSon(node63, node88)
  Body_SetCS(node88, MAT_Vector3(2632.099, 817.156, 89.060784), MAT_Vector3(24.09384, 63.42147, 2.32071))
  Node_ParseIniFile(node88, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node88, 4)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_trash", "bio_cl3b_E1")
  Node_AddSon(node63, node89)
  Body_SetCS(node89, MAT_Vector3(2895.432, 823.8196, 192.687572), MAT_Vector3(9.712671, 1.149819, -98.77023))
  Node_ParseIniFile(node89, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node89, 4)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_trash", "bio_cl2b_E1")
  Node_AddSon(node63, node90)
  Body_SetCS(node90, MAT_Vector3(2750.835, 841.831, 126.015149), MAT_Vector3(92.24583, 56.27161, -173.7227))
  Node_ParseIniFile(node90, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node90, 4)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_trash", "bio_cl2b_D3")
  Node_AddSon(node63, node91)
  Body_SetCS(node91, MAT_Vector3(2660.604, 2165.449, 67.746536), MAT_Vector3(91.06153, 66.85781, 177.3056))
  Node_ParseIniFile(node91, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node91, 4)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_trash", "bio_cl2b_D4")
  Node_AddSon(node63, node92)
  Body_SetCS(node92, MAT_Vector3(2738.707, 2063.653, 90.242788), MAT_Vector3(101.6729, 53.5033, -105.2601))
  Node_ParseIniFile(node92, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node92, 4)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_trash", "bio_cl2b_D5")
  Node_AddSon(node63, node93)
  Body_SetCS(node93, MAT_Vector3(2601.261, 2280.253, 67.500727), MAT_Vector3(-130.1888, 81.35098, 95.08367))
  Node_ParseIniFile(node93, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node93, 4)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_trash", "bio_cl3a_D5")
  Node_AddSon(node63, node94)
  Body_SetCS(node94, MAT_Vector3(2874.729, 2037.316, 147.710633), MAT_Vector3(-99.42441, 36.58617, -148.8717))
  Node_ParseIniFile(node94, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node94, 4)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_trash", "bio_cl3a_D2")
  Node_AddSon(node63, node95)
  Body_SetCS(node95, MAT_Vector3(2736.317, 2346.652, 124.399605), MAT_Vector3(-95.51429, -14.07529, 144.5714))
  Node_ParseIniFile(node95, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node95, 4)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_trash", "bio_cl3a_D3")
  Node_AddSon(node63, node96)
  Body_SetCS(node96, MAT_Vector3(2742.272, 2158.466, 89.451971), MAT_Vector3(-131.9718, -32.96526, 129.4036))
  Node_ParseIniFile(node96, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node96, 4)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_trash", "bio_cl4a_D1")
  Node_AddSon(node63, node97)
  Body_SetCS(node97, MAT_Vector3(2743.657, 2119.16, 66.325881), MAT_Vector3(83.54848, -49.49766, -107.9495))
  Node_ParseIniFile(node97, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node97, 4)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_trash", "bio_cl4a_D5")
  Node_AddSon(node63, node98)
  Body_SetCS(node98, MAT_Vector3(2740.547, 2208.68, 85.866829), MAT_Vector3(29.50669, 24.07316, 1.356809))
  Node_ParseIniFile(node98, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node98, 4)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_trash", "bio_cl5_D5")
  Node_AddSon(node63, node99)
  Body_SetCS(node99, MAT_Vector3(2695.677, 2099.103, 73.625533), MAT_Vector3(9.699844, -71.30021, 76.4202))
  Node_ParseIniFile(node99, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node99, 4)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_trash", "bio_cl5_D56")
  Node_AddSon(node63, node100)
  Body_SetCS(node100, MAT_Vector3(2795.902, 2181.614, 107.959677), MAT_Vector3(-143.4248, 64.99773, 162.8215))
  Node_ParseIniFile(node100, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node100, 4)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_trash", "bio_cl6_D1")
  Node_AddSon(node63, node101)
  Body_SetCS(node101, MAT_Vector3(2709.391, 2226.105, 75.61182), MAT_Vector3(-80.65024, -51.13763, -159.4658))
  Node_ParseIniFile(node101, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node101, 4)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_trash", "bio_cl6_D22")
  Node_AddSon(node63, node102)
  Body_SetCS(node102, MAT_Vector3(2801.669, 2049.789, 110.343292), MAT_Vector3(-155.2772, -26.37142, 67.59832))
  Node_ParseIniFile(node102, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node102, 4)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_trash", "bio_cl2a_D12")
  Node_AddSon(node63, node103)
  Body_SetCS(node103, MAT_Vector3(2753.796, 2249.175, 89.453179), MAT_Vector3(-60.16946, -61.36919, -43.37422))
  Node_ParseIniFile(node103, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node103, 4)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_trash", "bio_cl3b_D22")
  Node_AddSon(node63, node104)
  Body_SetCS(node104, MAT_Vector3(2698.681, 2283.779, 74.832647), MAT_Vector3(-47.3278, -47.5836, -40.12637))
  Node_ParseIniFile(node104, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node104, 4)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_trash", "bio_cl2b_F1")
  Node_AddSon(node63, node105)
  Body_SetCS(node105, MAT_Vector3(2932.056485, 2371.302798, 177.059044), MAT_Vector3(-13.68222, -58.834989, -176.29718))
  Node_ParseIniFile(node105, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node105, 4)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node60, node106)
  Body_SetCS(node106, MAT_Vector3(2677.548, 674.654306, 139.653999), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node106, "osd/pla/pla_avenger.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_waypoint", "nav_waypoint_01_1")
  Node_AddSon(node60, node107)
  Body_SetPosition(node107, MAT_Vector3(2682.287532, 2133.341537, 119.817573))
  WayPoint_SetRadius(node107, 10)
  Node_ParseIniFile(node107, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "Succubus")
  Node_AddSon(node60, node108)
  Body_SetCS(node108, MAT_Vector3(2725.927164, 2193.954138, 165.030054), MAT_Vector3(153.817748, 0, 0))
  Node_ParseIniFile(node108, "osd/gen/gen_succubus_instantfight.osd")
  Body_SetFriendOrFoeID(node108, 2)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node109)
  Camera_SetBackPlane(node109, 512)
  Node_EnterSimulation(node109)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
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
SetEnemyMatrixElement(2, 1, E)
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
SetEnemyMatrixElement(1, 2, E)
SetEnemyMatrixElement(2, 2, F)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, F)
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
SetEnemyMatrixElement(0, 5, E)
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o30, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o30, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o30, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o35.SetStateValue(L1)
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
o35 = { [nil] = {}, Start = function()
  o35["Value"] = False
  o2084.StartCalculate()
end, SetStateValue = function(L0)
  if not (o35.Value == L0) then
    o35["Value"] = L0
    o2084.ReCalculate()
  end
end }
S_o36 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o36, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o36, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o36, "Code3")
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
S_o71 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o71, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o71, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o71, "Code3")
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
S_o106 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o106, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o106, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o106, "Code3")
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
S_o153 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o153, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o153, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o153, "Code3")
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
S_o200 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o200, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o200, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o200, "Code3")
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
S_o247 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o247, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o247, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o247, "Code3")
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
S_o294 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o294, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o294, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o294, "Code3")
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
S_o341 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o341, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o341, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o341, "Code3")
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
S_o388 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o388, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o388, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o388, "Code3")
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
S_o435 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o435, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o435, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o435, "Code3")
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
S_o482 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o482, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o482, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o482, "Code3")
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
S_o529 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o529, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o529, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o529, "Code3")
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
S_o576 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o576, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o576, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o576, "Code3")
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
S_o623 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o623, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o623, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o623, "Code3")
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
S_o670 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o670, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o670, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o670, "Code3")
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
S_o717 = { [nil] = {}, Start = function(L0)

end }
S_o763 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o763, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o763, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o763, "Code3")
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
S_o810 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o810, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o810, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o810, "Code3")
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
S_o857 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o857, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o857, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o857, "Code3")
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
S_o904 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o904, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o904, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o904, "Code3")
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
S_o951 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o951, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o951, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o951, "Code3")
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
S_o998 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o998, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o998, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o998, "Code3")
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
S_o1045 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1045, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1045, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1045, "Code3")
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
S_o1092 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1092, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1092, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1092, "Code3")
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
S_o1139 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1139, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1139, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1139, "Code3")
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
S_o1186 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1186, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1186, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1186, "Code3")
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
S_o1233 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1233, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1233, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1233, "Code3")
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
S_o1280 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1280, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1280, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1280, "Code3")
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
S_o1327 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1327, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1327, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1327, "Code3")
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
S_o1421 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1421, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1421, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1421, "Code3")
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
S_o1468 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1468, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1468, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1468, "Code3")
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
S_o1515 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1515, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1515, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1515, "Code3")
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
S_o1562 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1562, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1562, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1562, "Code3")
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
S_o1609 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1609, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1609, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1609, "Code3")
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
S_o1656 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1656, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1656, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1656, "Code3")
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
S_o1703 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1703, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1703, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1703, "Code3")
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
S_o1750 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1750, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1750, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1750, "Code3")
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
S_o1797 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1797, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1797, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1797, "Code3")
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
S_o1844 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1844, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1844, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1844, "Code3")
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
S_o1891 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1891, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1891, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1891, "Code3")
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
S_o1938 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1938, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1938, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1938, "Code3")
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
S_o1985 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1985, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1985, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1985, "Code3")
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
S_o2032 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2032, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2032, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2032, "Code3")
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
S_o2079 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_lasergatlin", 1)
  Body_AddItem(L0.Node, "ammo_energy", 1500)
  Body_AddItem(L0.Node, "device_generator2", 1000)
  Body_AddItem(L0.Node, "gun_sizzler", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "torpedo_maneater", 6)
  Body_AddItem(L0.Node, "device_repair2", 1)
  Body_AddItem(L0.Node, "device_booster", 2000)
  Body_AddItem(L0.Node, "buzzer_normal", 6)
  CallFunction(o2079, "Code9")
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
o2084 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2084.SetStateValue(o2084.GetCalculated())
end, StartCalculate = function()
  o2084["Value"] = o2084.GetCalculated()
end, ChangeTo1 = function()
  SED_SetTaskTextKey(9201, -1, -1)
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_PlayMusic(GetGameNode(), "agressive")
end, SetStateValue = function(L0)
  if not (o2084.Value == L0) then
    DelayedFunction(1, o2084, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2084.Value == L0) then
    o2084["Value"] = L0
    if not (L0 ~= 1) then
      o2084.ChangeTo1()
    end
  end
end }
o2085 = { [nil] = {}, GetCalculated = function()
  if not (o2138.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2085.SetStateValue(o2085.GetCalculated())
end, StartCalculate = function()
  o2085["Value"] = o2085.GetCalculated()
end, ChangeTo1 = function()
  Game_MissionEnd(GetGameNode(), 1)
end, SetStateValue = function(L0)
  if not (o2085.Value == L0) then
    DelayedFunction(2.5, o2085, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o2085.Value == L0) then
    o2085["Value"] = L0
    if not (L0 ~= 1) then
      o2085.ChangeTo1()
    end
  end
end }
o2086 = { [nil] = {}, GetCalculated = function()
  if not (o2124.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2086.SetStateValue(o2086.GetCalculated())
end, StartCalculate = function()
  o2086["Value"] = o2086.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2121.Node, o2079.Node, 328)
end, SetStateValue = function(L0)
  if not (o2086.Value == L0) then
    o2086["Value"] = L0
    if not (L0 ~= 1) then
      o2086.ChangeTo1()
    end
  end
end }
o2087 = { [nil] = {}, GetCalculated = function()
  if not (o2132.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2087.SetStateValue(o2087.GetCalculated())
end, StartCalculate = function()
  o2087["Value"] = o2087.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o2121.Node, o2079.Node, 326)
end, SetStateValue = function(L0)
  if not (o2087.Value == L0) then
    o2087["Value"] = L0
    if not (L0 ~= 1) then
      o2087.ChangeTo1()
    end
  end
end }
S_o2116 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 0, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o2116, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o2121 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2121, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2121, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2121, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Game_PlayMusic(GetGameNode(), "atmo")
  SendRadioMessageTake(o2121.Node, o2079.Node, 322)
  Game_SetWayPoint(GetGameNode(), o2116.Node)
  Player_SuppressFF(Node_Find("/Scenario_Dynamic/Object/player1"))
  SED_SetTaskTextKey(9200, -1, -1)
  SendRadioMessageTake(o2121.Node, o2079.Node, 324)
  Gun_SetSniperBullet(L0.Node, "bul_sizzler_p", 4)
  Gun_SetDogBullet(L0.Node, "bul_lasergatlin_s", 0.5)
  CallFunction(o2121, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea", "/Scenario_Dynamic/Navigation/TriggerArea", "/Scenario_Dynamic/Navigation/FollowArea", "E", "", "", "", 0.25, "Code12")
  else
    CallFunction(o2121, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
end, SetStateValue_Attacked = function(L0, L1)
  o2124.SetStateValue(L1)
end, SetStateValue_KineticShield50 = function(L0, L1)
  o2132.SetStateValue(L1)
end, SetStateValue_DestEmpJump = function(L0, L1)
  o2138.SetStateValue(L1)
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
o2124 = { [nil] = {}, Start = function()
  o2124["Value"] = False
  o2086.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2124.Value == L0) then
    o2124["Value"] = L0
    o2086.ReCalculate()
  end
end }
o2132 = { [nil] = {}, Start = function()
  o2132["Value"] = False
  o2087.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2132.Value == L0) then
    o2132["Value"] = L0
    o2087.ReCalculate()
  end
end }
o2138 = { [nil] = {}, Start = function()
  o2138["Value"] = False
  o2085.StartCalculate()
end, SetStateValue = function(L0)
  if not (o2138.Value == L0) then
    o2138["Value"] = L0
    o2085.ReCalculate()
  end
end }
S_o2169 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 109)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "TriggerPresence_1", S_o30)
  o35.Start()
  o36 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_wreck_1_1", S_o36)
  o71 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_wreck_2_1", S_o71)
  o106 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_A1", S_o106)
  o153 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_A1", S_o153)
  o200 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_B1", S_o200)
  o247 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_C1", S_o247)
  o294 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_C1", S_o294)
  o341 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D1", S_o341)
  o388 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D2", S_o388)
  o435 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D1", S_o435)
  o482 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_D2", S_o482)
  o529 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D1", S_o529)
  o576 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D2", S_o576)
  o623 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_D2", S_o623)
  o670 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_D1", S_o670)
  o717 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_D2", S_o717)
  o763 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_D1", S_o763)
  o810 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_D2", S_o810)
  o857 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_E1", S_o857)
  o904 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_E2", S_o904)
  o951 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_E1", S_o951)
  o998 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_E2", S_o998)
  o1045 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_E1", S_o1045)
  o1092 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_E2", S_o1092)
  o1139 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_E1", S_o1139)
  o1186 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_E2", S_o1186)
  o1233 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_E3", S_o1233)
  o1280 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_E1", S_o1280)
  o1327 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_E1", S_o1327)
  o1374 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D3", S_o1374)
  o1421 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D4", S_o1421)
  o1468 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D5", S_o1468)
  o1515 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D5", S_o1515)
  o1562 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D2", S_o1562)
  o1609 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D3", S_o1609)
  o1656 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_D1", S_o1656)
  o1703 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_D5", S_o1703)
  o1750 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D5", S_o1750)
  o1797 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D56", S_o1797)
  o1844 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_D1", S_o1844)
  o1891 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_D22", S_o1891)
  o1938 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_D12", S_o1938)
  o1985 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_D22", S_o1985)
  o2032 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_F1", S_o2032)
  o2079 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o2079)
  o2116 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01_1", S_o2116)
  o2121 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "Succubus", S_o2121)
  o2124.Start()
  o2132.Start()
  o2138.Start()
  o2169 = BindEasy(Node_Find("/"), "Camera", S_o2169)
  Game_LoadProgress_Leave(Node_Find("/"))
end
