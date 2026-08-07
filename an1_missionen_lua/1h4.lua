-- dekompiliert aus map\1h4\script\1h4.sco
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
  Terrain_LoadTerrain(node1, "map/1H4/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/1H4/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrain(node0, 0.025, 0.2)
  Game_SetCausticObject(node0, 0.1, 0.2)
  Game_SetCausticBuilding(node0, 0.025, 0.2)
  Game_SetLightCache(node0, "map/1H4/Lmsh/", "map/1H4/Ltex/")
  Game_SetTerrainDepth(node0, 6247)
  Game_SetDecompressionHeight(node0, 700)
  Game_SetAmbientLight(node0, 0.015686, 0.070588, 0.117647)
  Game_SetParallelLightT(node0, 0.015686, 0.070588, 0.117647)
  Game_SetParallelLightB(node0, 1, 0.168627, 0)
  Game_LoadTextTable(node0, "dat/sty/pilot_d.des")
  Game_LoadTextTable(node0, "dat/sty/cargo_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_1H4_d.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen_d.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_track01_frag_tension.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_track06.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_badend.sam", 2)
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
  node54 = Node_CreateNode("NOD_PatrolArea", "BattleArea1")
  Node_AddSon(node53, node54)
  PatrolArea_SetPosition(node54, MAT_Vector3(2775.515664, 848.855184, 151.82247))
  PatrolArea_SetRadius(node54, 750)
  PatrolArea_SetMinZ(node54, -100)
  PatrolArea_SetMaxZ(node54, 1000)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("NOD_PatrolArea", "PatrolArea1")
  Node_AddSon(node53, node55)
  PatrolArea_SetPosition(node55, MAT_Vector3(2771.555892, 849.398183, 151.8225))
  PatrolArea_SetRadius(node55, 200)
  PatrolArea_SetMinZ(node55, 0)
  PatrolArea_SetMaxZ(node55, 250)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("NOD_PatrolArea", "BattleArea2")
  Node_AddSon(node53, node56)
  PatrolArea_SetPosition(node56, MAT_Vector3(2733.258092, 2109.948735, 115.867257))
  PatrolArea_SetRadius(node56, 900)
  PatrolArea_SetMinZ(node56, -100)
  PatrolArea_SetMaxZ(node56, 1000)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("NOD_PatrolArea", "PatrolArea2")
  Node_AddSon(node53, node57)
  PatrolArea_SetPosition(node57, MAT_Vector3(2747.546504, 2117.092941, 185.518064))
  PatrolArea_SetRadius(node57, 300)
  PatrolArea_SetMinZ(node57, 0)
  PatrolArea_SetMaxZ(node57, 250)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("NOD_Path", "BioNav2_1_Path")
  Node_AddSon(node53, node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node58, node59)
  Position_SetPosition(node59, MAT_Vector3(2650.658169, 919.230889, 150.248432))
  Position_SetRadius(node59, 5)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node58, node60)
  Position_SetPosition(node60, MAT_Vector3(2584.644405, 1029.284309, 140.946752))
  Position_SetRadius(node60, 5)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node58, node61)
  Position_SetPosition(node61, MAT_Vector3(2696.360006, 1259.486153, 175.627185))
  Position_SetRadius(node61, 5)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node58, node62)
  Position_SetPosition(node62, MAT_Vector3(2566.025139, 1718.19718, 160.498056))
  Position_SetRadius(node62, 5)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node58, node63)
  Position_SetPosition(node63, MAT_Vector3(2789.45634, 2112.587103, 161.35312))
  Position_SetRadius(node63, 5)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("NOD_Path", "BioNav2_2_Path")
  Node_AddSon(node53, node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node64, node65)
  Position_SetPosition(node65, MAT_Vector3(2894.489278, 865.49177, 248.753019))
  Position_SetRadius(node65, 5)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node64, node66)
  Position_SetPosition(node66, MAT_Vector3(2779.792328, 1007.860361, 181.11309))
  Position_SetRadius(node66, 5)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node64, node67)
  Position_SetPosition(node67, MAT_Vector3(2812.03591, 1132.342089, 184.753399))
  Position_SetRadius(node67, 5)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node64, node68)
  Position_SetPosition(node68, MAT_Vector3(2876.086751, 1645.629455, 213.862358))
  Position_SetRadius(node68, 5)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node64, node69)
  Position_SetPosition(node69, MAT_Vector3(2856.677629, 2055.647157, 175.556926))
  Position_SetRadius(node69, 5)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("NOD_Path", "BioNav2_3_Path")
  Node_AddSon(node53, node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node70, node71)
  Position_SetPosition(node71, MAT_Vector3(2698.669823, 847.129489, 152.063561))
  Position_SetRadius(node71, 5)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node70, node72)
  Position_SetPosition(node72, MAT_Vector3(2775.720291, 1053.885335, 158.478634))
  Position_SetRadius(node72, 5)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node70, node73)
  Position_SetPosition(node73, MAT_Vector3(2726.055136, 1261.728881, 202.076353))
  Position_SetRadius(node73, 5)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node70, node74)
  Position_SetPosition(node74, MAT_Vector3(2821.710404, 1826.213058, 195.576704))
  Position_SetRadius(node74, 5)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node70, node75)
  Position_SetPosition(node75, MAT_Vector3(2791.006244, 2024.60917, 170.059494))
  Position_SetRadius(node75, 5)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("NOD_Path", "BioNav2_4_Path")
  Node_AddSon(node53, node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node76, node77)
  Position_SetPosition(node77, MAT_Vector3(2686.518947, 921.029687, 152.446838))
  Position_SetRadius(node77, 5)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node76, node78)
  Position_SetPosition(node78, MAT_Vector3(2662.857687, 1038.132874, 161.11387))
  Position_SetRadius(node78, 5)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node76, node79)
  Position_SetPosition(node79, MAT_Vector3(2712.987476, 1262.714329, 189.144838))
  Position_SetRadius(node79, 5)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node76, node80)
  Position_SetPosition(node80, MAT_Vector3(2700.702497, 1832.08018, 210.773964))
  Position_SetRadius(node80, 5)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node76, node81)
  Position_SetPosition(node81, MAT_Vector3(2685.182357, 2125.813205, 137.590389))
  Position_SetRadius(node81, 5)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("NOD_Path", "BioNav2_5_Path")
  Node_AddSon(node53, node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node82, node83)
  Position_SetPosition(node83, MAT_Vector3(2790.556406, 1061.188774, 183.755398))
  Position_SetRadius(node83, 5)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node82, node84)
  Position_SetPosition(node84, MAT_Vector3(2783.658565, 1225.012489, 183.138668))
  Position_SetRadius(node84, 5)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node82, node85)
  Position_SetPosition(node85, MAT_Vector3(2803.202447, 1409.529727, 190.122748))
  Position_SetRadius(node85, 5)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node82, node86)
  Position_SetPosition(node86, MAT_Vector3(2815.273668, 1576.227542, 202.788524))
  Position_SetRadius(node86, 5)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node82, node87)
  Position_SetPosition(node87, MAT_Vector3(2830.21899, 2028.610925, 175.220371))
  Position_SetRadius(node87, 5)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("NOD_Path", "BioNav2_6_Path")
  Node_AddSon(node53, node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node88, node89)
  Position_SetPosition(node89, MAT_Vector3(2734.798455, 892.766724, 183.7554))
  Position_SetRadius(node89, 5)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node88, node90)
  Position_SetPosition(node90, MAT_Vector3(2701.459732, 1042.219223, 183.1387))
  Position_SetRadius(node90, 5)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node88, node91)
  Position_SetPosition(node91, MAT_Vector3(2746.294815, 1239.958084, 190.1227))
  Position_SetRadius(node91, 5)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node88, node92)
  Position_SetPosition(node92, MAT_Vector3(2746.870414, 1554.384838, 202.7885))
  Position_SetRadius(node92, 5)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node88, node93)
  Position_SetPosition(node93, MAT_Vector3(2775.611095, 2178.064214, 175.2204))
  Position_SetRadius(node93, 5)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("NOD_Path", "BonhamPath_1")
  Node_AddSon(node53, node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node94, node95)
  Position_SetPosition(node95, MAT_Vector3(2801.217254, 836.538703, 208.15584))
  Position_SetRadius(node95, 5)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node94, node96)
  Position_SetPosition(node96, MAT_Vector3(2743.351519, 1031.392004, 172.725772))
  Position_SetRadius(node96, 5)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node94, node97)
  Position_SetPosition(node97, MAT_Vector3(2771.693824, 1428.184269, 186.535197))
  Position_SetRadius(node97, 5)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node94, node98)
  Position_SetPosition(node98, MAT_Vector3(2777.59847, 1692.712446, 174.774749))
  Position_SetRadius(node98, 5)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node51, node99)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node51, node100)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("NOD_Trigger", "NAV1_Trg")
  Node_AddSon(node100, node101)
  Body_SetFriendOrFoeID(node101, 2)
  Body_SetPosition(node101, MAT_Vector3(2673.303447, 542.157541, 124.888734))
  Trigger_SetPresenceSphere(node101, 50)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("NOD_Trigger", "BiontWakeUpTrg")
  Node_AddSon(node100, node102)
  Body_SetFriendOrFoeID(node102, 2)
  Body_SetPosition(node102, MAT_Vector3(2774.024515, 849.389425, 157.865719))
  Trigger_SetPresenceSphere(node102, 250)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("NOD_Trigger", "BattleField_Trg")
  Node_AddSon(node100, node103)
  Body_SetFriendOrFoeID(node103, 2)
  Body_SetPosition(node103, MAT_Vector3(2741.079572, 2104.93392, 117.904437))
  Trigger_SetPresenceSphere(node103, 550)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node51, node104)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "bio_wreck_1_1")
  Node_AddSon(node104, node105)
  Body_SetCS(node105, MAT_Vector3(2701.392938, 2015.115989, 84.590226), MAT_Vector3(146.528052, -8.57215, 18.208059))
  Node_ParseIniFile(node105, "osd/bio/bio_wreck_1.osd")
  Body_SetFriendOrFoeID(node105, 2)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "bio_wreck_2_1")
  Node_AddSon(node104, node106)
  Body_SetCS(node106, MAT_Vector3(2784.712611, 2065.229613, 140.720629), MAT_Vector3(158.968083, -2.530464, 118.228885))
  Node_ParseIniFile(node106, "osd/bio/bio_wreck_2.osd")
  Body_SetFriendOrFoeID(node106, 2)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_vessel", "bio_scout_NAV2_1")
  Node_AddSon(node104, node107)
  Body_SetCS(node107, MAT_Vector3(2650.399929, 837.046704, 79.100443), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node107, "osd/bio/bio_scout_d2.osd")
  Body_SetFriendOrFoeID(node107, 2)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_vessel", "bio_scout_NAV2_2")
  Node_AddSon(node104, node108)
  Body_SetCS(node108, MAT_Vector3(2896.157206, 836.079322, 178.008505), MAT_Vector3(93.332525, 0, 0))
  Node_ParseIniFile(node108, "osd/bio/bio_scout_d2.osd")
  Body_SetFriendOrFoeID(node108, 2)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_vessel", "bio_scout_NAV2_3")
  Node_AddSon(node104, node109)
  Body_SetCS(node109, MAT_Vector3(2698.588072, 817.32406, 77.593947), MAT_Vector3(-146.417654, 0, 0))
  Node_ParseIniFile(node109, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node109, 2)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_vessel", "bio_scout_NAV2_4")
  Node_AddSon(node104, node110)
  Body_SetCS(node110, MAT_Vector3(2687.445162, 895.869327, 81.242292), MAT_Vector3(-89.092549, 0, 0))
  Node_ParseIniFile(node110, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node110, 2)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_vessel", "bio_scout_NAV2_5")
  Node_AddSon(node104, node111)
  Body_SetCS(node111, MAT_Vector3(2793.557841, 1005.502442, 121.248111), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node111, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node111, 2)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_vessel", "bio_scout_NAV2_6")
  Node_AddSon(node104, node112)
  Body_SetCS(node112, MAT_Vector3(2719.406213, 876.167488, 89.784388), MAT_Vector3(-77.475488, 0, 0))
  Node_ParseIniFile(node112, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node112, 2)
  Body_SetNameKey(node112, -1)
  Body_SetCargoKey(node112, -1, 0)
  Body_SetCargoKey(node112, -1, 1)
  Body_SetCargoKey(node112, -1, 2)
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_1")
  Node_AddSon(node104, node113)
  Body_SetCS(node113, MAT_Vector3(2662.548259, 2236.072632, 61.136608), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node113, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node113, 5)
  Body_SetNameKey(node113, -1)
  Body_SetCargoKey(node113, -1, 0)
  Body_SetCargoKey(node113, -1, 1)
  Body_SetCargoKey(node113, -1, 2)
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_2")
  Node_AddSon(node104, node114)
  Body_SetCS(node114, MAT_Vector3(2733.467856, 2174.826367, 72.671428), MAT_Vector3(-67.080085, -2.172934, -2.063568))
  Node_ParseIniFile(node114, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node114, 2)
  Body_SetNameKey(node114, -1)
  Body_SetCargoKey(node114, -1, 0)
  Body_SetCargoKey(node114, -1, 1)
  Body_SetCargoKey(node114, -1, 2)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_3")
  Node_AddSon(node104, node115)
  Body_SetCS(node115, MAT_Vector3(2861.424872, 2307.489953, 146.77466), MAT_Vector3(-90.205151, 0, 0))
  Node_ParseIniFile(node115, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node115, 2)
  Body_SetNameKey(node115, -1)
  Body_SetCargoKey(node115, -1, 0)
  Body_SetCargoKey(node115, -1, 1)
  Body_SetCargoKey(node115, -1, 2)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_4")
  Node_AddSon(node104, node116)
  Body_SetCS(node116, MAT_Vector3(2741.484651, 2118.891974, 68.230281), MAT_Vector3(-90.20515, 0, 0))
  Node_ParseIniFile(node116, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node116, 5)
  Body_SetNameKey(node116, -1)
  Body_SetCargoKey(node116, -1, 0)
  Body_SetCargoKey(node116, -1, 1)
  Body_SetCargoKey(node116, -1, 2)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_5")
  Node_AddSon(node104, node117)
  Body_SetCS(node117, MAT_Vector3(2603.077531, 2075.899069, 32.420357), MAT_Vector3(-90.20515, 0, 0))
  Node_ParseIniFile(node117, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node117, 2)
  Body_SetNameKey(node117, -1)
  Body_SetCargoKey(node117, -1, 0)
  Body_SetCargoKey(node117, -1, 1)
  Body_SetCargoKey(node117, -1, 2)
  Node_EnterSimulation(node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_6")
  Node_AddSon(node104, node118)
  Body_SetCS(node118, MAT_Vector3(2724.380559, 1938.238102, 59.76997), MAT_Vector3(-161.973698, 0, 0))
  Node_ParseIniFile(node118, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node118, 2)
  Body_SetNameKey(node118, -1)
  Body_SetCargoKey(node118, -1, 0)
  Body_SetCargoKey(node118, -1, 1)
  Body_SetCargoKey(node118, -1, 2)
  Node_EnterSimulation(node118)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("nod_vessel", "bio_scout_NAV3_7")
  Node_AddSon(node104, node119)
  Body_SetCS(node119, MAT_Vector3(2879.373505, 2136.385406, 110.581439), MAT_Vector3(99.870385, 0, 0))
  Node_ParseIniFile(node119, "osd/bio/bio_scout_d1.osd")
  Body_SetFriendOrFoeID(node119, 2)
  Body_SetNameKey(node119, -1)
  Body_SetCargoKey(node119, -1, 0)
  Body_SetCargoKey(node119, -1, 1)
  Body_SetCargoKey(node119, -1, 2)
  Node_EnterSimulation(node119)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("nod_vessel", "bio_bomber_d_1")
  Node_AddSon(node104, node120)
  Body_SetCS(node120, MAT_Vector3(2228.70503, 2236.951027, 195.581607), MAT_Vector3(-113.436213, 0, 0))
  Node_ParseIniFile(node120, "osd/bio/bio_bomber_d.osd")
  Body_SetFriendOrFoeID(node120, 2)
  Body_SetNameKey(node120, -1)
  Body_SetCargoKey(node120, -1, 0)
  Body_SetCargoKey(node120, -1, 1)
  Body_SetCargoKey(node120, -1, 2)
  Node_EnterSimulation(node120)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("nod_vessel", "bio_scout_d3_1")
  Node_AddSon(node104, node121)
  Body_SetCS(node121, MAT_Vector3(2217.326381, 2191.564909, 204.803871), MAT_Vector3(-117.482774, 0, 0))
  Node_ParseIniFile(node121, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node121, 5)
  Body_SetNameKey(node121, -1)
  Body_SetCargoKey(node121, -1, 0)
  Body_SetCargoKey(node121, -1, 1)
  Body_SetCargoKey(node121, -1, 2)
  Node_EnterSimulation(node121)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("nod_vessel", "bio_scout_d3_2")
  Node_AddSon(node104, node122)
  Body_SetCS(node122, MAT_Vector3(2269.635339, 2287.559518, 204.8039), MAT_Vector3(-108.563609, 0, 0))
  Node_ParseIniFile(node122, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node122, 2)
  Body_SetNameKey(node122, -1)
  Body_SetCargoKey(node122, -1, 0)
  Body_SetCargoKey(node122, -1, 1)
  Body_SetCargoKey(node122, -1, 2)
  Node_EnterSimulation(node122)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("nod_vessel", "bio_scout_d3_3")
  Node_AddSon(node104, node123)
  Body_SetCS(node123, MAT_Vector3(2170.76629, 2247.322114, 204.8039), MAT_Vector3(-103.047006, 0, 0))
  Node_ParseIniFile(node123, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node123, 2)
  Body_SetNameKey(node123, -1)
  Body_SetCargoKey(node123, -1, 0)
  Body_SetCargoKey(node123, -1, 1)
  Body_SetCargoKey(node123, -1, 2)
  Node_EnterSimulation(node123)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node104, node124)
  Body_SetCS(node124, MAT_Vector3(1114.185951, 287.262011, 200.00213), MAT_Vector3(-89.878474, 0, 0))
  Node_ParseIniFile(node124, "osd/pla/pla_toiler.osd")
  Body_SetFriendOrFoeID(node124, 0)
  Node_EnterSimulation(node124)
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("nod_waypoint", "nav_waypoint_01")
  Node_AddSon(node104, node125)
  Body_SetPosition(node125, MAT_Vector3(2673.035751, 542.022333, 124.417991))
  WayPoint_SetRadius(node125, 50)
  Node_ParseIniFile(node125, "osd/nav/nav_waypoint_01.osd")
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("nod_waypoint", "nav_waypoint_02")
  Node_AddSon(node104, node126)
  Body_SetPosition(node126, MAT_Vector3(2412.108124, 2391.740353, 124.144614))
  WayPoint_SetRadius(node126, 50)
  Node_ParseIniFile(node126, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("nod_waypoint", "nav_waypoint_03")
  Node_AddSon(node104, node127)
  Body_SetPosition(node127, MAT_Vector3(2728.597056, 2118.945329, 161.13241))
  WayPoint_SetRadius(node127, 150)
  Node_ParseIniFile(node127, "osd/nav/nav_waypoint_02.osd")
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Directory", "Biont_Trash")
  Node_AddSon(node104, node128)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("nod_trash", "bio_cl2b_A1")
  Node_AddSon(node128, node129)
  Body_SetCS(node129, MAT_Vector3(2570.599506, 2007.917788, 81.206833), MAT_Vector3(-60.02717, -41.863333, -171.121848))
  Node_ParseIniFile(node129, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node129, 4)
  Body_SetNameKey(node129, -1)
  Body_SetCargoKey(node129, -1, 0)
  Body_SetCargoKey(node129, -1, 1)
  Body_SetCargoKey(node129, -1, 2)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("nod_trash", "bio_cl4a_A1")
  Node_AddSon(node128, node130)
  Body_SetCS(node130, MAT_Vector3(2778.662141, 1819.236929, 115.866553), MAT_Vector3(-16.25598, -31.18534, -84.9814))
  Node_ParseIniFile(node130, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node130, 4)
  Body_SetNameKey(node130, -1)
  Body_SetCargoKey(node130, -1, 0)
  Body_SetCargoKey(node130, -1, 1)
  Body_SetCargoKey(node130, -1, 2)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("nod_trash", "bio_cl3a_B1")
  Node_AddSon(node128, node131)
  Body_SetCS(node131, MAT_Vector3(2730.611, 1884.291, 100.300602), MAT_Vector3(-82.98593, -5.069944, -123.8773))
  Node_ParseIniFile(node131, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node131, 4)
  Body_SetNameKey(node131, -1)
  Body_SetCargoKey(node131, -1, 0)
  Body_SetCargoKey(node131, -1, 1)
  Body_SetCargoKey(node131, -1, 2)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("nod_trash", "bio_cl2b_C1")
  Node_AddSon(node128, node132)
  Body_SetCS(node132, MAT_Vector3(2891.586, 1882.389, 134.282697), MAT_Vector3(-132.6386, -78.01754, 27.46029))
  Node_ParseIniFile(node132, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node132, 4)
  Body_SetNameKey(node132, -1)
  Body_SetCargoKey(node132, -1, 0)
  Body_SetCargoKey(node132, -1, 1)
  Body_SetCargoKey(node132, -1, 2)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_trash", "bio_cl3a_C1")
  Node_AddSon(node128, node133)
  Body_SetCS(node133, MAT_Vector3(2793.316, 1763.78, 137.581846), MAT_Vector3(-82.40881, -13.97285, 139.8103))
  Node_ParseIniFile(node133, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node133, 4)
  Body_SetNameKey(node133, -1)
  Body_SetCargoKey(node133, -1, 0)
  Body_SetCargoKey(node133, -1, 1)
  Body_SetCargoKey(node133, -1, 2)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_trash", "bio_cl2b_D1")
  Node_AddSon(node128, node134)
  Body_SetCS(node134, MAT_Vector3(3111.576, 1654.975, 192.482352), MAT_Vector3(100.9438, 66.85781, 177.3056))
  Node_ParseIniFile(node134, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node134, 4)
  Body_SetNameKey(node134, -1)
  Body_SetCargoKey(node134, -1, 0)
  Body_SetCargoKey(node134, -1, 1)
  Body_SetCargoKey(node134, -1, 2)
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_trash", "bio_cl2b_D2")
  Node_AddSon(node128, node135)
  Body_SetCS(node135, MAT_Vector3(2778.351, 1660.846, 120.929978), MAT_Vector3(108.8219, 47.39059, -118.3381))
  Node_ParseIniFile(node135, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node135, 4)
  Body_SetNameKey(node135, -1)
  Body_SetCargoKey(node135, -1, 0)
  Body_SetCargoKey(node135, -1, 1)
  Body_SetCargoKey(node135, -1, 2)
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_trash", "bio_cl3a_D1")
  Node_AddSon(node128, node136)
  Body_SetCS(node136, MAT_Vector3(3051.766, 1639.09, 195.76948), MAT_Vector3(-81.71599, 11.69669, 150.5805))
  Node_ParseIniFile(node136, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node136, 4)
  Body_SetNameKey(node136, -1)
  Body_SetCargoKey(node136, -1, 0)
  Body_SetCargoKey(node136, -1, 1)
  Body_SetCargoKey(node136, -1, 2)
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_trash", "bio_cl4a_D2")
  Node_AddSon(node128, node137)
  Body_SetCS(node137, MAT_Vector3(2779.821, 1585.537, 116.690095), MAT_Vector3(51.71234, -71.25989, -114.7524))
  Node_ParseIniFile(node137, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node137, 4)
  Body_SetNameKey(node137, -1)
  Body_SetCargoKey(node137, -1, 0)
  Body_SetCargoKey(node137, -1, 1)
  Body_SetCargoKey(node137, -1, 2)
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_trash", "bio_cl5_D1")
  Node_AddSon(node128, node138)
  Body_SetCS(node138, MAT_Vector3(3072.486, 1602.719, 173.774691), MAT_Vector3(9.699844, -71.30021, 76.4202))
  Node_ParseIniFile(node138, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node138, 4)
  Body_SetNameKey(node138, -1)
  Body_SetCargoKey(node138, -1, 0)
  Body_SetCargoKey(node138, -1, 1)
  Body_SetCargoKey(node138, -1, 2)
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_trash", "bio_cl5_D2")
  Node_AddSon(node128, node139)
  Body_SetCS(node139, MAT_Vector3(2845.035, 1608.028, 138.108316), MAT_Vector3(-12.81293, -43.61181, 58.67097))
  Node_ParseIniFile(node139, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node139, 4)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_trash", "bio_cl6_D2")
  Node_AddSon(node128, node140)
  Body_SetCS(node140, MAT_Vector3(2760.392, 1620.597, 113.187595), MAT_Vector3(91.37975, -24.62098, -82.7747))
  Node_ParseIniFile(node140, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node140, 4)
  Body_SetNameKey(node140, -1)
  Body_SetCargoKey(node140, -1, 0)
  Body_SetCargoKey(node140, -1, 1)
  Body_SetCargoKey(node140, -1, 2)
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("nod_trash", "bio_cl2a_D1")
  Node_AddSon(node128, node141)
  Body_SetCS(node141, MAT_Vector3(3048.902, 1684.22, 159.307327), MAT_Vector3(-156.8704, -64.84589, -159.8128))
  Node_ParseIniFile(node141, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node141, 4)
  Body_SetNameKey(node141, -1)
  Body_SetCargoKey(node141, -1, 0)
  Body_SetCargoKey(node141, -1, 1)
  Body_SetCargoKey(node141, -1, 2)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("nod_trash", "bio_cl2a_D2")
  Node_AddSon(node128, node142)
  Body_SetCS(node142, MAT_Vector3(2837.295, 1662.958, 133.94205), MAT_Vector3(-62.61573, -22.70948, 17.42384))
  Node_ParseIniFile(node142, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node142, 4)
  Body_SetNameKey(node142, -1)
  Body_SetCargoKey(node142, -1, 0)
  Body_SetCargoKey(node142, -1, 1)
  Body_SetCargoKey(node142, -1, 2)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("nod_trash", "bio_cl3b_D1")
  Node_AddSon(node128, node143)
  Body_SetCS(node143, MAT_Vector3(3164.195, 1635.003, 204.794931), MAT_Vector3(-64.21169, 1.36865, -109.8602))
  Node_ParseIniFile(node143, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node143, 4)
  Body_SetNameKey(node143, -1)
  Body_SetCargoKey(node143, -1, 0)
  Body_SetCargoKey(node143, -1, 1)
  Body_SetCargoKey(node143, -1, 2)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("nod_trash", "bio_cl3b_D2")
  Node_AddSon(node128, node144)
  Body_SetCS(node144, MAT_Vector3(2744.207, 1580.747, 113.190691), MAT_Vector3(-48.46701, -43.24813, -133.7141))
  Node_ParseIniFile(node144, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node144, 4)
  Body_SetNameKey(node144, -1)
  Body_SetCargoKey(node144, -1, 0)
  Body_SetCargoKey(node144, -1, 1)
  Body_SetCargoKey(node144, -1, 2)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("nod_trash", "bio_cl3a_E1")
  Node_AddSon(node128, node145)
  Body_SetCS(node145, MAT_Vector3(2798.082, 890.7998, 170.149661), MAT_Vector3(164.6497, -0.372332, -138.0619))
  Node_ParseIniFile(node145, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node145, 4)
  Body_SetNameKey(node145, -1)
  Body_SetCargoKey(node145, -1, 0)
  Body_SetCargoKey(node145, -1, 1)
  Body_SetCargoKey(node145, -1, 2)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("nod_trash", "bio_cl3a_E2")
  Node_AddSon(node128, node146)
  Body_SetCS(node146, MAT_Vector3(2668.399, 842.7771, 86.651274), MAT_Vector3(98.39939, 12.93799, -86.64178))
  Node_ParseIniFile(node146, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node146, 4)
  Body_SetNameKey(node146, -1)
  Body_SetCargoKey(node146, -1, 0)
  Body_SetCargoKey(node146, -1, 1)
  Body_SetCargoKey(node146, -1, 2)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("nod_trash", "bio_cl5_E1")
  Node_AddSon(node128, node147)
  Body_SetCS(node147, MAT_Vector3(2832.003, 780.5557, 176.90733), MAT_Vector3(-84.78219, -71.30021, 76.4202))
  Node_ParseIniFile(node147, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node147, 4)
  Body_SetNameKey(node147, -1)
  Body_SetCargoKey(node147, -1, 0)
  Body_SetCargoKey(node147, -1, 1)
  Body_SetCargoKey(node147, -1, 2)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("nod_trash", "bio_cl5_E2")
  Node_AddSon(node128, node148)
  Body_SetCS(node148, MAT_Vector3(2712.233, 821.3292, 81.18318), MAT_Vector3(19.39631, -60.55311, 133.8275))
  Node_ParseIniFile(node148, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node148, 4)
  Body_SetNameKey(node148, -1)
  Body_SetCargoKey(node148, -1, 0)
  Body_SetCargoKey(node148, -1, 1)
  Body_SetCargoKey(node148, -1, 2)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("nod_trash", "bio_cl6_E1")
  Node_AddSon(node128, node149)
  Body_SetCS(node149, MAT_Vector3(2860.37, 826.9915, 178.1087), MAT_Vector3(-107.7101, 26.91457, 73.0996))
  Node_ParseIniFile(node149, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node149, 4)
  Body_SetNameKey(node149, -1)
  Body_SetCargoKey(node149, -1, 0)
  Body_SetCargoKey(node149, -1, 1)
  Body_SetCargoKey(node149, -1, 2)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("nod_trash", "bio_cl6_E2")
  Node_AddSon(node128, node150)
  Body_SetCS(node150, MAT_Vector3(2705.97, 864.9366, 91.045013), MAT_Vector3(48.76542, 73.10009, -51.38002))
  Node_ParseIniFile(node150, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node150, 4)
  Body_SetNameKey(node150, -1)
  Body_SetCargoKey(node150, -1, 0)
  Body_SetCargoKey(node150, -1, 1)
  Body_SetCargoKey(node150, -1, 2)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("nod_trash", "bio_cl2a_E1")
  Node_AddSon(node128, node151)
  Body_SetCS(node151, MAT_Vector3(2894.207, 868.5528, 182.294263), MAT_Vector3(-167.4667, -55.32222, 73.05981))
  Node_ParseIniFile(node151, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node151, 4)
  Body_SetNameKey(node151, -1)
  Body_SetCargoKey(node151, -1, 0)
  Body_SetCargoKey(node151, -1, 1)
  Body_SetCargoKey(node151, -1, 2)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("nod_trash", "bio_cl2a_E2")
  Node_AddSon(node128, node152)
  Body_SetCS(node152, MAT_Vector3(2685.522, 879.6017, 84.803174), MAT_Vector3(76.19181, 83.57487, 1.582711))
  Node_ParseIniFile(node152, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node152, 4)
  Body_SetNameKey(node152, -1)
  Body_SetCargoKey(node152, -1, 0)
  Body_SetCargoKey(node152, -1, 1)
  Body_SetCargoKey(node152, -1, 2)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("nod_trash", "bio_cl2a_E3")
  Node_AddSon(node128, node153)
  Body_SetCS(node153, MAT_Vector3(2632.099, 817.156, 89.060784), MAT_Vector3(24.09384, 63.42147, 2.32071))
  Node_ParseIniFile(node153, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node153, 4)
  Body_SetNameKey(node153, -1)
  Body_SetCargoKey(node153, -1, 0)
  Body_SetCargoKey(node153, -1, 1)
  Body_SetCargoKey(node153, -1, 2)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("nod_trash", "bio_cl3b_E1")
  Node_AddSon(node128, node154)
  Body_SetCS(node154, MAT_Vector3(2895.432, 823.8196, 192.687572), MAT_Vector3(9.712671, 1.149819, -98.77023))
  Node_ParseIniFile(node154, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node154, 4)
  Body_SetNameKey(node154, -1)
  Body_SetCargoKey(node154, -1, 0)
  Body_SetCargoKey(node154, -1, 1)
  Body_SetCargoKey(node154, -1, 2)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("nod_trash", "bio_cl2b_E1")
  Node_AddSon(node128, node155)
  Body_SetCS(node155, MAT_Vector3(2750.835, 841.831, 126.015149), MAT_Vector3(92.24583, 56.27161, -173.7227))
  Node_ParseIniFile(node155, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node155, 4)
  Body_SetNameKey(node155, -1)
  Body_SetCargoKey(node155, -1, 0)
  Body_SetCargoKey(node155, -1, 1)
  Body_SetCargoKey(node155, -1, 2)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("nod_trash", "bio_cl2b_D3")
  Node_AddSon(node128, node156)
  Body_SetCS(node156, MAT_Vector3(2660.604, 2165.449, 67.746536), MAT_Vector3(91.06153, 66.85781, 177.3056))
  Node_ParseIniFile(node156, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node156, 4)
  Body_SetNameKey(node156, -1)
  Body_SetCargoKey(node156, -1, 0)
  Body_SetCargoKey(node156, -1, 1)
  Body_SetCargoKey(node156, -1, 2)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("nod_trash", "bio_cl2b_D4")
  Node_AddSon(node128, node157)
  Body_SetCS(node157, MAT_Vector3(2738.707, 2063.653, 90.242788), MAT_Vector3(101.6729, 53.5033, -105.2601))
  Node_ParseIniFile(node157, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node157, 4)
  Body_SetNameKey(node157, -1)
  Body_SetCargoKey(node157, -1, 0)
  Body_SetCargoKey(node157, -1, 1)
  Body_SetCargoKey(node157, -1, 2)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("nod_trash", "bio_cl2b_D5")
  Node_AddSon(node128, node158)
  Body_SetCS(node158, MAT_Vector3(2601.261, 2280.253, 67.500727), MAT_Vector3(-130.1888, 81.35098, 95.08367))
  Node_ParseIniFile(node158, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node158, 4)
  Body_SetNameKey(node158, -1)
  Body_SetCargoKey(node158, -1, 0)
  Body_SetCargoKey(node158, -1, 1)
  Body_SetCargoKey(node158, -1, 2)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("nod_trash", "bio_cl3a_D5")
  Node_AddSon(node128, node159)
  Body_SetCS(node159, MAT_Vector3(2874.729, 2037.316, 147.710633), MAT_Vector3(-99.42441, 36.58617, -148.8717))
  Node_ParseIniFile(node159, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node159, 4)
  Body_SetNameKey(node159, -1)
  Body_SetCargoKey(node159, -1, 0)
  Body_SetCargoKey(node159, -1, 1)
  Body_SetCargoKey(node159, -1, 2)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("nod_trash", "bio_cl3a_D2")
  Node_AddSon(node128, node160)
  Body_SetCS(node160, MAT_Vector3(2736.317, 2346.652, 124.399605), MAT_Vector3(-95.51429, -14.07529, 144.5714))
  Node_ParseIniFile(node160, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node160, 4)
  Body_SetNameKey(node160, -1)
  Body_SetCargoKey(node160, -1, 0)
  Body_SetCargoKey(node160, -1, 1)
  Body_SetCargoKey(node160, -1, 2)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("nod_trash", "bio_cl3a_D3")
  Node_AddSon(node128, node161)
  Body_SetCS(node161, MAT_Vector3(2742.272, 2158.466, 89.451971), MAT_Vector3(-131.9718, -32.96526, 129.4036))
  Node_ParseIniFile(node161, "osd/bio/bio_clunker03a_low.osd")
  Body_SetFriendOrFoeID(node161, 4)
  Body_SetNameKey(node161, -1)
  Body_SetCargoKey(node161, -1, 0)
  Body_SetCargoKey(node161, -1, 1)
  Body_SetCargoKey(node161, -1, 2)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("nod_trash", "bio_cl4a_D1")
  Node_AddSon(node128, node162)
  Body_SetCS(node162, MAT_Vector3(2743.657, 2119.16, 66.325881), MAT_Vector3(83.54848, -49.49766, -107.9495))
  Node_ParseIniFile(node162, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node162, 4)
  Body_SetNameKey(node162, -1)
  Body_SetCargoKey(node162, -1, 0)
  Body_SetCargoKey(node162, -1, 1)
  Body_SetCargoKey(node162, -1, 2)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("nod_trash", "bio_cl4a_D5")
  Node_AddSon(node128, node163)
  Body_SetCS(node163, MAT_Vector3(2740.547, 2208.68, 85.866829), MAT_Vector3(29.50669, 24.07316, 1.356809))
  Node_ParseIniFile(node163, "osd/bio/bio_clunker04a_low.osd")
  Body_SetFriendOrFoeID(node163, 4)
  Body_SetNameKey(node163, -1)
  Body_SetCargoKey(node163, -1, 0)
  Body_SetCargoKey(node163, -1, 1)
  Body_SetCargoKey(node163, -1, 2)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("nod_trash", "bio_cl5_D5")
  Node_AddSon(node128, node164)
  Body_SetCS(node164, MAT_Vector3(2695.677, 2099.103, 73.625533), MAT_Vector3(9.699844, -71.30021, 76.4202))
  Node_ParseIniFile(node164, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node164, 4)
  Body_SetNameKey(node164, -1)
  Body_SetCargoKey(node164, -1, 0)
  Body_SetCargoKey(node164, -1, 1)
  Body_SetCargoKey(node164, -1, 2)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("nod_trash", "bio_cl5_D56")
  Node_AddSon(node128, node165)
  Body_SetCS(node165, MAT_Vector3(2795.902, 2181.614, 107.959677), MAT_Vector3(-143.4248, 64.99773, 162.8215))
  Node_ParseIniFile(node165, "osd/bio/bio_clunker05_low.osd")
  Body_SetFriendOrFoeID(node165, 4)
  Body_SetNameKey(node165, -1)
  Body_SetCargoKey(node165, -1, 0)
  Body_SetCargoKey(node165, -1, 1)
  Body_SetCargoKey(node165, -1, 2)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("nod_trash", "bio_cl6_D1")
  Node_AddSon(node128, node166)
  Body_SetCS(node166, MAT_Vector3(2709.391, 2226.105, 75.61182), MAT_Vector3(-80.65024, -51.13763, -159.4658))
  Node_ParseIniFile(node166, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node166, 4)
  Body_SetNameKey(node166, -1)
  Body_SetCargoKey(node166, -1, 0)
  Body_SetCargoKey(node166, -1, 1)
  Body_SetCargoKey(node166, -1, 2)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_trash", "bio_cl6_D22")
  Node_AddSon(node128, node167)
  Body_SetCS(node167, MAT_Vector3(2801.669, 2049.789, 110.343292), MAT_Vector3(-155.2772, -26.37142, 67.59832))
  Node_ParseIniFile(node167, "osd/bio/bio_clunker06_low.osd")
  Body_SetFriendOrFoeID(node167, 4)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_trash", "bio_cl2a_D12")
  Node_AddSon(node128, node168)
  Body_SetCS(node168, MAT_Vector3(2753.796, 2249.175, 89.453179), MAT_Vector3(-60.16946, -61.36919, -43.37422))
  Node_ParseIniFile(node168, "osd/bio/bio_clunker02a_low.osd")
  Body_SetFriendOrFoeID(node168, 4)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_trash", "bio_cl3b_D22")
  Node_AddSon(node128, node169)
  Body_SetCS(node169, MAT_Vector3(2698.681, 2283.779, 74.832647), MAT_Vector3(-47.3278, -47.5836, -40.12637))
  Node_ParseIniFile(node169, "osd/bio/bio_clunker03b_low.osd")
  Body_SetFriendOrFoeID(node169, 4)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_trash", "bio_cl2b_F1")
  Node_AddSon(node128, node170)
  Body_SetCS(node170, MAT_Vector3(2932.056485, 2371.302798, 177.059044), MAT_Vector3(-13.68222, -58.834989, -176.29718))
  Node_ParseIniFile(node170, "osd/bio/bio_clunker02b_low.osd")
  Body_SetFriendOrFoeID(node170, 4)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vessel", "bio_bomber_d_11")
  Node_AddSon(node104, node171)
  Body_SetCS(node171, MAT_Vector3(2644.39212, 2469.594076, 195.5816), MAT_Vector3(-173.083005, 0, 0))
  Node_ParseIniFile(node171, "osd/bio/bio_bomber_d.osd")
  Body_SetFriendOrFoeID(node171, 2)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vessel", "bio_scout_d3_11")
  Node_AddSon(node104, node172)
  Body_SetCS(node172, MAT_Vector3(2557.433643, 2449.007591, 204.8039), MAT_Vector3(-157.147677, 0, 0))
  Node_ParseIniFile(node172, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node172, 2)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vessel", "bio_scout_d3_21")
  Node_AddSon(node104, node173)
  Body_SetCS(node173, MAT_Vector3(2595.571492, 2508.393782, 204.8039), MAT_Vector3(-164.91044, 0, 0))
  Node_ParseIniFile(node173, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node173, 2)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vessel", "bio_scout_d3_31")
  Node_AddSon(node104, node174)
  Body_SetCS(node174, MAT_Vector3(2666.756313, 2523.65946, 204.8039), MAT_Vector3(179.991249, 0, 0))
  Node_ParseIniFile(node174, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node174, 2)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vessel", "bio_scout_d3_41")
  Node_AddSon(node104, node175)
  Body_SetCS(node175, MAT_Vector3(2632.266799, 2559.872661, 204.8039), MAT_Vector3(179.9912, 0, 0))
  Node_ParseIniFile(node175, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node175, 2)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vessel", "bio_scout_d3_51")
  Node_AddSon(node104, node176)
  Body_SetCS(node176, MAT_Vector3(2709.292681, 2648.394942, 204.8039), MAT_Vector3(179.9912, 0, 0))
  Node_ParseIniFile(node176, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node176, 2)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "bio_bomber_d_12")
  Node_AddSon(node104, node177)
  Body_SetCS(node177, MAT_Vector3(2714.06695, 2501.479167, 195.5816), MAT_Vector3(-172.402802, 0, 0))
  Node_ParseIniFile(node177, "osd/bio/bio_bomber_d.osd")
  Body_SetFriendOrFoeID(node177, 2)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "bio_scout_d3_12")
  Node_AddSon(node104, node178)
  Body_SetCS(node178, MAT_Vector3(2739.296758, 2564.738664, 204.8039), MAT_Vector3(176.0366, 0, 0))
  Node_ParseIniFile(node178, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node178, 2)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "bio_scout_d3_22")
  Node_AddSon(node104, node179)
  Body_SetCS(node179, MAT_Vector3(2789.2439, 2537.917015, 204.8039), MAT_Vector3(-173.234571, 0, 0))
  Node_ParseIniFile(node179, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node179, 2)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "bio_scout_d3_32")
  Node_AddSon(node104, node180)
  Body_SetCS(node180, MAT_Vector3(2684.470253, 2586.248714, 204.8039), MAT_Vector3(174.131373, 0, 0))
  Node_ParseIniFile(node180, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node180, 2)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "bio_scout_d3_42")
  Node_AddSon(node104, node181)
  Body_SetCS(node181, MAT_Vector3(2787.109931, 2596.442955, 204.8039), MAT_Vector3(164.508871, 0, 0))
  Node_ParseIniFile(node181, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node181, 2)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "bio_scout_d3_52")
  Node_AddSon(node104, node182)
  Body_SetCS(node182, MAT_Vector3(2822.170044, 2566.521026, 204.8039), MAT_Vector3(-176.197258, 0, 0))
  Node_ParseIniFile(node182, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node182, 2)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "bio_bomber_d_13")
  Node_AddSon(node104, node183)
  Body_SetCS(node183, MAT_Vector3(2796.732002, 2488.488945, 195.5816), MAT_Vector3(179.939214, 0, 0))
  Node_ParseIniFile(node183, "osd/bio/bio_bomber_d.osd")
  Body_SetFriendOrFoeID(node183, 2)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "bio_scout_d3_13")
  Node_AddSon(node104, node184)
  Body_SetCS(node184, MAT_Vector3(2588.137806, 2571.82424, 204.8039), MAT_Vector3(-179.271579, 0, 0))
  Node_ParseIniFile(node184, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node184, 2)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "bio_scout_d3_23")
  Node_AddSon(node104, node185)
  Body_SetCS(node185, MAT_Vector3(2862.461517, 2567.440248, 204.8039), MAT_Vector3(179.721022, 0, 0))
  Node_ParseIniFile(node185, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node185, 2)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "bio_scout_d3_33")
  Node_AddSon(node104, node186)
  Body_SetCS(node186, MAT_Vector3(2630.147505, 2631.124028, 204.8039), MAT_Vector3(178.778528, 0, 0))
  Node_ParseIniFile(node186, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node186, 2)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "bio_scout_d3_43")
  Node_AddSon(node104, node187)
  Body_SetCS(node187, MAT_Vector3(2835.528033, 2625.966188, 204.8039), MAT_Vector3(159.697076, 0, 0))
  Node_ParseIniFile(node187, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node187, 2)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "bio_scout_d3_53")
  Node_AddSon(node104, node188)
  Body_SetCS(node188, MAT_Vector3(2544.651654, 2616.120057, 204.8039), MAT_Vector3(161.688309, 0, 0))
  Node_ParseIniFile(node188, "osd/bio/bio_scout_d3.osd")
  Body_SetFriendOrFoeID(node188, 2)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "wng_bonham_1h4")
  Node_AddSon(node104, node189)
  Body_SetCS(node189, MAT_Vector3(2580.499137, 63.68097, 332.188197), MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(node189, "osd/wng/wng_bonham_1h4.osd")
  Body_SetFriendOrFoeID(node189, 1)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node190)
  Camera_SetBackPlane(node190, 512)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("NOD_Scenario", "IngameSequences")
  Node_AddSon(node0, node191)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node191, node192)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node191, node193)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("NOD_Path", "C1_Intro_Path1")
  Node_AddSon(node193, node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node194, node195)
  Position_SetPosition(node195, MAT_Vector3(2610.419465, 66.958586, 148.011888))
  Position_SetRadius(node195, 5)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node194, node196)
  Position_SetPosition(node196, MAT_Vector3(2685.643157, 324.369924, 155.91739))
  Position_SetRadius(node196, 5)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node194, node197)
  Position_SetPosition(node197, MAT_Vector3(2674.109552, 495.811645, 121.975198))
  Position_SetRadius(node197, 5)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("NOD_Position", "C1_Intro_Pos1")
  Node_AddSon(node193, node198)
  Position_SetPosition(node198, MAT_Vector3(2608.14341, 14.997688, 153.932754))
  Position_SetRadius(node198, 5)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("NOD_Position", "C1_Intro_Pos2")
  Node_AddSon(node193, node199)
  Position_SetPosition(node199, MAT_Vector3(2700.154198, 336.66552, 147.863946))
  Position_SetRadius(node199, 5)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("NOD_Position", "C1_Intro_Pos3")
  Node_AddSon(node193, node200)
  Position_SetPosition(node200, MAT_Vector3(2862.465959, 623.814003, 86.527402))
  Position_SetRadius(node200, 5)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("NOD_Position", "LookFrom_1")
  Node_AddSon(node193, node201)
  Position_SetPosition(node201, MAT_Vector3(2694.198791, 2196.500234, 138.535808))
  Position_SetRadius(node201, 5)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("NOD_Path", "Bonham_pos")
  Node_AddSon(node193, node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node202, node203)
  Position_SetPosition(node203, MAT_Vector3(2776.398052, 2205.122534, 163.587989))
  Position_SetRadius(node203, 5)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node202, node204)
  Position_SetPosition(node204, MAT_Vector3(2768.925392, 2237.887275, 164.568532))
  Position_SetRadius(node204, 5)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node191, node205)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Director", "Chapter1_Intro_V")
  Node_AddSon(node205, node206)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Director", "Chapter1_Intro_A")
  Node_AddSon(node205, node207)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Director", "EndMission_Scene_V")
  Node_AddSon(node205, node208)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Director", "EndMission_Scene_A")
  Node_AddSon(node205, node209)
  Node_EnterSimulation(node209)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node191, node210)
  Node_EnterSimulation(node210)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node191, node211)
  Node_EnterSimulation(node211)
end
SetEnemyMatrixElement(0, 0, F)
SetEnemyMatrixElement(1, 0, F)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, E)
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
                                        if not (o977.Value ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
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
end, ReCalculate = function()
  o2.SetStateValue(o2.GetCalculated())
end, StartCalculate = function()
  o2["Value"] = o2.GetCalculated()
end, ChangeTo1 = function()
  Script_Log("RC1OK_092501_1220")
  Game_MissionEnd(GetGameNode(), 2)
end, SetStateValue = function(L0)
  if not (o2.Value == L0) then
    o2["Value"] = L0
    if not (L0 ~= 1) then
      o2.ChangeTo1()
    end
  end
end }
o3 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (o143.Value ~= True) then
        if not (o195.Value ~= True) then
          if not (o247.Value ~= True) then
            if not (o299.Value ~= True) then
              if not (o351.Value ~= True) then
                if not (o403.Value ~= True) then
                  if not (o452.Value ~= True) then
                    if not (o501.Value ~= True) then
                      if not (o550.Value ~= True) then
                        if not (o599.Value ~= True) then
                          if not (o648.Value ~= True) then
                            if not (o697.Value ~= True) then
                              if not (o747.Value ~= True) then
                                if not (True ~= True) then
                                  if not (True ~= True) then
                                    if not (True ~= True) then
                                      if not (True ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
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
end, ReCalculate = function()
  o3.SetStateValue(o3.GetCalculated())
end, StartCalculate = function()
  o3["Value"] = o3.GetCalculated()
  o776.StartCalculate()
  o824.StartCalculate()
  o872.StartCalculate()
  o920.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3.Value == L0) then
    o3["Value"] = L0
    o776.ReCalculate()
    o824.ReCalculate()
    o872.ReCalculate()
    o920.ReCalculate()
  end
end }
o4 = { [nil] = {}, GetCalculated = function()
  if not (True ~= True) then
    if not (True ~= True) then
      if not (True ~= True) then
        if not (True ~= True) then
          if not (True ~= True) then
            if not (True ~= True) then
              if not (True ~= True) then
                if not (True ~= True) then
                  if not (True ~= True) then
                    if not (True ~= True) then
                      if not (True ~= True) then
                        if not (True ~= True) then
                          if not (True ~= True) then
                            if not (True ~= True) then
                              if not (True ~= True) then
                                if not (o796.Value ~= True) then
                                  if not (o844.Value ~= True) then
                                    if not (o892.Value ~= True) then
                                      if not (o940.Value ~= True) then
                                        if not (True ~= True) then
                                          if not (True ~= True) then
                                            if not (True ~= True) then
                                              if not (True ~= True) then
                                                if not (True ~= True) then
                                                  if not (True ~= True) then
                                                    if not (True ~= True) then
                                                      if not (True ~= True) then
                                                        if not (True ~= True) then
                                                          if not (True ~= True) then
                                                            if not (True ~= True) then
                                                              if not (True ~= True) then
                                                                if not (True ~= True) then
                                                                  if not (True ~= True) then
                                                                    if not (True ~= True) then
                                                                      if not (True ~= True) then
                                                                        if not (True ~= True) then
                                                                          if not (True ~= True) then
                                                                            if not (True ~= True) then
                                                                              if not (True ~= True) then
                                                                                if not (True ~= True) then
                                                                                  if not (True ~= True) then
                                                                                    if not (True ~= True) then
                                                                                      if not (True ~= True) then
                                                                                        if not (True ~= True) then
                                                                                          if not (True ~= True) then
                                                                                            if not (True ~= True) then
                                                                                              if not (True ~= True) then
                                                                                                if not (True ~= True) then
                                                                                                  if not (True ~= True) then
                                                                                                    if not (True ~= True) then
                                                                                                      if not (True ~= True) then
                                                                                                        if not (True ~= True) then
                                                                                                          if not (True ~= True) then
                                                                                                            if not (True ~= True) then
                                                                                                              if not (True ~= True) then
                                                                                                                if not (True ~= True) then
                                                                                                                  if not (True ~= True) then
                                                                                                                    if not (True ~= True) then
                                                                                                                      if not (True ~= True) then
                                                                                                                        if not (True ~= True) then
                                                                                                                          if not (True ~= True) then
                                                                                                                            if not (True ~= True) then
                                                                                                                              if not (True ~= True) then
                                                                                                                                if not (True ~= True) then
                                                                                                                                  if not (True ~= True) then
                                                                                                                                    if not (True ~= True) then
                                                                                                                                      if not (True ~= True) then
                                                                                                                                        if not (True ~= True) then
                                                                                                                                          if not (True ~= True) then
                                                                                                                                            if not (True ~= True) then
                                                                                                                                              if not (True ~= True) then
                                                                                                                                                if not (True ~= True) then
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
end, ReCalculate = function()
  o4.SetStateValue(o4.GetCalculated())
end, StartCalculate = function()
  o4["Value"] = o4.GetCalculated()
  o2996.StartCalculate()
  o3045.StartCalculate()
  o3094.StartCalculate()
  o3143.StartCalculate()
  o3192.StartCalculate()
  o3241.StartCalculate()
  o3290.StartCalculate()
  o3339.StartCalculate()
  o3388.StartCalculate()
  o3437.StartCalculate()
  o3486.StartCalculate()
  o3535.StartCalculate()
  o3584.StartCalculate()
  o3633.StartCalculate()
  o3682.StartCalculate()
  o3731.StartCalculate()
  o3780.StartCalculate()
  o3829.StartCalculate()
  o3879.StartCalculate()
  o3944.StartCalculate()
  o3951.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4.Value == L0) then
    o4["Value"] = L0
    o2996.ReCalculate()
    o3045.ReCalculate()
    o3094.ReCalculate()
    o3143.ReCalculate()
    o3192.ReCalculate()
    o3241.ReCalculate()
    o3290.ReCalculate()
    o3339.ReCalculate()
    o3388.ReCalculate()
    o3437.ReCalculate()
    o3486.ReCalculate()
    o3535.ReCalculate()
    o3584.ReCalculate()
    o3633.ReCalculate()
    o3682.ReCalculate()
    o3731.ReCalculate()
    o3780.ReCalculate()
    o3829.ReCalculate()
    o3879.ReCalculate()
    o3944.ReCalculate()
    o3951.ReCalculate()
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
                                                                                                                                                                  if not (o3921.Value ~= True) then
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
end, ReCalculate = function()
  o26.SetStateValue(o26.GetCalculated())
end, StartCalculate = function()
  o26["Value"] = o26.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "track3")
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
  o43.StartCalculate()
  o122.StartCalculate()
  o174.StartCalculate()
  o226.StartCalculate()
  o278.StartCalculate()
  o330.StartCalculate()
  o382.StartCalculate()
  o971.StartCalculate()
end, SetStateValue = function(L0)
  if not (o35.Value == L0) then
    o35["Value"] = L0
    o43.ReCalculate()
    o122.ReCalculate()
    o174.ReCalculate()
    o226.ReCalculate()
    o278.ReCalculate()
    o330.ReCalculate()
    o382.ReCalculate()
    o971.ReCalculate()
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
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "", "", "", False, False, True)
  CallFunction(o36, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o36, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o36, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o41.SetStateValue(L1)
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
o41 = { [nil] = {}, Start = function()
  o41["Value"] = False
  o123.StartCalculate()
  o175.StartCalculate()
  o227.StartCalculate()
  o279.StartCalculate()
  o331.StartCalculate()
  o383.StartCalculate()
  o432.StartCalculate()
  o481.StartCalculate()
  o530.StartCalculate()
  o579.StartCalculate()
  o628.StartCalculate()
  o677.StartCalculate()
  o727.StartCalculate()
  o972.StartCalculate()
end, SetStateValue = function(L0)
  if not (o41.Value == L0) then
    o41["Value"] = L0
    o123.ReCalculate()
    o175.ReCalculate()
    o227.ReCalculate()
    o279.ReCalculate()
    o331.ReCalculate()
    o383.ReCalculate()
    o432.ReCalculate()
    o481.ReCalculate()
    o530.ReCalculate()
    o579.ReCalculate()
    o628.ReCalculate()
    o677.ReCalculate()
    o727.ReCalculate()
    o972.ReCalculate()
  end
end }
S_o42 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o42, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o42, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o42, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "pla", "wng", "", "", False, False, True)
  CallFunction(o42, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o42, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o42, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o47.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o43.Value ~= True) then
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
o43 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o43.SetStateValue(o43.GetCalculated())
end, StartCalculate = function()
  o43["Value"] = o43.GetCalculated()
end, SetStateValue = function(L0)
  if not (o43.Value == L0) then
    o43["Value"] = L0
    CallFunction(o42, "ProcesseStateChange")
  end
end }
o47 = { [nil] = {}, Start = function()
  o47["Value"] = False
  o124.StartCalculate()
  o176.StartCalculate()
  o228.StartCalculate()
  o280.StartCalculate()
  o332.StartCalculate()
  o384.StartCalculate()
  o433.StartCalculate()
  o482.StartCalculate()
  o531.StartCalculate()
  o580.StartCalculate()
  o629.StartCalculate()
  o678.StartCalculate()
  o728.StartCalculate()
  o974.StartCalculate()
  o3937.StartCalculate()
  o3948.StartCalculate()
end, SetStateValue = function(L0)
  if not (o47.Value == L0) then
    o47["Value"] = L0
    o124.ReCalculate()
    o176.ReCalculate()
    o228.ReCalculate()
    o280.ReCalculate()
    o332.ReCalculate()
    o384.ReCalculate()
    o433.ReCalculate()
    o482.ReCalculate()
    o531.ReCalculate()
    o580.ReCalculate()
    o629.ReCalculate()
    o678.ReCalculate()
    o728.ReCalculate()
    o974.ReCalculate()
    o3937.ReCalculate()
    o3948.ReCalculate()
  end
end }
S_o48 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o48, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o48, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o48, "Code3")
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
S_o83 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o83, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o83, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o83, "Code3")
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
S_o118 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o118, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o118, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o118, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o118, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o118, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o118, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BioNav2_1_Path", 1, 1 } }("Code7")
  else
    CallFunction(o118, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code8")
  else
    CallFunction(o118, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o118, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o118, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code11")
  else
    CallFunction(o118, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o125.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o127.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o122.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o123.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o124.Value ~= True) then
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
o122 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o122.SetStateValue(o122.GetCalculated())
end, StartCalculate = function()
  o122["Value"] = o122.GetCalculated()
end, SetStateValue = function(L0)
  if not (o122.Value == L0) then
    o122["Value"] = L0
    CallFunction(o118, "ProcesseStateChange")
  end
end }
o123 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o123.SetStateValue(o123.GetCalculated())
end, StartCalculate = function()
  o123["Value"] = o123.GetCalculated()
end, SetStateValue = function(L0)
  if not (o123.Value == L0) then
    o123["Value"] = L0
    CallFunction(o118, "ProcesseStateChange")
  end
end }
o124 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o124.SetStateValue(o124.GetCalculated())
end, StartCalculate = function()
  o124["Value"] = o124.GetCalculated()
end, SetStateValue = function(L0)
  if not (o124.Value == L0) then
    o124["Value"] = L0
    CallFunction(o118, "ProcesseStateChange")
  end
end }
o125 = { [nil] = {}, Start = function()
  o125["Value"] = False
  o973.StartCalculate()
end, SetStateValue = function(L0)
  if not (o125.Value == L0) then
    o125["Value"] = L0
    o973.ReCalculate()
  end
end }
o127 = { [nil] = {}, Start = function()
  o127["Value"] = False
  o143.StartCalculate()
end, SetStateValue = function(L0)
  if not (o127.Value == L0) then
    o127["Value"] = L0
    o143.ReCalculate()
  end
end }
o143 = { [nil] = {}, GetCalculated = function()
  if not (o127.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o143.SetStateValue(o143.GetCalculated())
end, StartCalculate = function()
  o143["Value"] = o143.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o143.Value == L0) then
    o143["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o170 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o170, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o170, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o170, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o170, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o170, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o170, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BioNav2_2_Path", 1, 1 } }("Code7")
  else
    CallFunction(o170, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code8")
  else
    CallFunction(o170, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o170, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o170, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code11")
  else
    CallFunction(o170, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o177.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o179.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o174.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o175.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o176.Value ~= True) then
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
o174 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o174.SetStateValue(o174.GetCalculated())
end, StartCalculate = function()
  o174["Value"] = o174.GetCalculated()
end, SetStateValue = function(L0)
  if not (o174.Value == L0) then
    o174["Value"] = L0
    CallFunction(o170, "ProcesseStateChange")
  end
end }
o175 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o175.SetStateValue(o175.GetCalculated())
end, StartCalculate = function()
  o175["Value"] = o175.GetCalculated()
end, SetStateValue = function(L0)
  if not (o175.Value == L0) then
    o175["Value"] = L0
    CallFunction(o170, "ProcesseStateChange")
  end
end }
o176 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o176.SetStateValue(o176.GetCalculated())
end, StartCalculate = function()
  o176["Value"] = o176.GetCalculated()
end, SetStateValue = function(L0)
  if not (o176.Value == L0) then
    o176["Value"] = L0
    CallFunction(o170, "ProcesseStateChange")
  end
end }
o177 = { [nil] = {}, Start = function()
  o177["Value"] = False
  o973.StartCalculate()
end, SetStateValue = function(L0)
  if not (o177.Value == L0) then
    o177["Value"] = L0
    o973.ReCalculate()
  end
end }
o179 = { [nil] = {}, Start = function()
  o179["Value"] = False
  o195.StartCalculate()
end, SetStateValue = function(L0)
  if not (o179.Value == L0) then
    o179["Value"] = L0
    o195.ReCalculate()
  end
end }
o195 = { [nil] = {}, GetCalculated = function()
  if not (o179.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o195.SetStateValue(o195.GetCalculated())
end, StartCalculate = function()
  o195["Value"] = o195.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o195.Value == L0) then
    o195["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o222 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o222, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o222, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o222, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o222, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o222, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o222, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BioNav2_3_Path", 1, 1 } }("Code7")
  else
    CallFunction(o222, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code8")
  else
    CallFunction(o222, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o222, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o222, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code11")
  else
    CallFunction(o222, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o229.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o231.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o226.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o227.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o228.Value ~= True) then
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
o226 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o226.SetStateValue(o226.GetCalculated())
end, StartCalculate = function()
  o226["Value"] = o226.GetCalculated()
end, SetStateValue = function(L0)
  if not (o226.Value == L0) then
    o226["Value"] = L0
    CallFunction(o222, "ProcesseStateChange")
  end
end }
o227 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o227.SetStateValue(o227.GetCalculated())
end, StartCalculate = function()
  o227["Value"] = o227.GetCalculated()
end, SetStateValue = function(L0)
  if not (o227.Value == L0) then
    o227["Value"] = L0
    CallFunction(o222, "ProcesseStateChange")
  end
end }
o228 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o228.SetStateValue(o228.GetCalculated())
end, StartCalculate = function()
  o228["Value"] = o228.GetCalculated()
end, SetStateValue = function(L0)
  if not (o228.Value == L0) then
    o228["Value"] = L0
    CallFunction(o222, "ProcesseStateChange")
  end
end }
o229 = { [nil] = {}, Start = function()
  o229["Value"] = False
  o973.StartCalculate()
end, SetStateValue = function(L0)
  if not (o229.Value == L0) then
    o229["Value"] = L0
    o973.ReCalculate()
  end
end }
o231 = { [nil] = {}, Start = function()
  o231["Value"] = False
  o247.StartCalculate()
end, SetStateValue = function(L0)
  if not (o231.Value == L0) then
    o231["Value"] = L0
    o247.ReCalculate()
  end
end }
o247 = { [nil] = {}, GetCalculated = function()
  if not (o231.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o247.SetStateValue(o247.GetCalculated())
end, StartCalculate = function()
  o247["Value"] = o247.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o247.Value == L0) then
    o247["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o274 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o274, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o274, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o274, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o274, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o274, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o274, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BioNav2_4_Path", 1, 1 } }("Code7")
  else
    CallFunction(o274, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code8")
  else
    CallFunction(o274, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o274, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o274, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code11")
  else
    CallFunction(o274, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o281.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o283.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o278.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o279.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o280.Value ~= True) then
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
o278 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o278.SetStateValue(o278.GetCalculated())
end, StartCalculate = function()
  o278["Value"] = o278.GetCalculated()
end, SetStateValue = function(L0)
  if not (o278.Value == L0) then
    o278["Value"] = L0
    CallFunction(o274, "ProcesseStateChange")
  end
end }
o279 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o279.SetStateValue(o279.GetCalculated())
end, StartCalculate = function()
  o279["Value"] = o279.GetCalculated()
end, SetStateValue = function(L0)
  if not (o279.Value == L0) then
    o279["Value"] = L0
    CallFunction(o274, "ProcesseStateChange")
  end
end }
o280 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o280.SetStateValue(o280.GetCalculated())
end, StartCalculate = function()
  o280["Value"] = o280.GetCalculated()
end, SetStateValue = function(L0)
  if not (o280.Value == L0) then
    o280["Value"] = L0
    CallFunction(o274, "ProcesseStateChange")
  end
end }
o281 = { [nil] = {}, Start = function()
  o281["Value"] = False
  o973.StartCalculate()
end, SetStateValue = function(L0)
  if not (o281.Value == L0) then
    o281["Value"] = L0
    o973.ReCalculate()
  end
end }
o283 = { [nil] = {}, Start = function()
  o283["Value"] = False
  o299.StartCalculate()
end, SetStateValue = function(L0)
  if not (o283.Value == L0) then
    o283["Value"] = L0
    o299.ReCalculate()
  end
end }
o299 = { [nil] = {}, GetCalculated = function()
  if not (o283.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o299.SetStateValue(o299.GetCalculated())
end, StartCalculate = function()
  o299["Value"] = o299.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o299.Value == L0) then
    o299["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o326 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o326, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o326, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o326, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o326, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o326, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o326, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BioNav2_5_Path", 1, 1 } }("Code7")
  else
    CallFunction(o326, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code8")
  else
    CallFunction(o326, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o326, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o326, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code11")
  else
    CallFunction(o326, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o333.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o335.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o330.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o331.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o332.Value ~= True) then
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
o330 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o330.SetStateValue(o330.GetCalculated())
end, StartCalculate = function()
  o330["Value"] = o330.GetCalculated()
end, SetStateValue = function(L0)
  if not (o330.Value == L0) then
    o330["Value"] = L0
    CallFunction(o326, "ProcesseStateChange")
  end
end }
o331 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o331.SetStateValue(o331.GetCalculated())
end, StartCalculate = function()
  o331["Value"] = o331.GetCalculated()
end, SetStateValue = function(L0)
  if not (o331.Value == L0) then
    o331["Value"] = L0
    CallFunction(o326, "ProcesseStateChange")
  end
end }
o332 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o332.SetStateValue(o332.GetCalculated())
end, StartCalculate = function()
  o332["Value"] = o332.GetCalculated()
end, SetStateValue = function(L0)
  if not (o332.Value == L0) then
    o332["Value"] = L0
    CallFunction(o326, "ProcesseStateChange")
  end
end }
o333 = { [nil] = {}, Start = function()
  o333["Value"] = False
  o973.StartCalculate()
end, SetStateValue = function(L0)
  if not (o333.Value == L0) then
    o333["Value"] = L0
    o973.ReCalculate()
  end
end }
o335 = { [nil] = {}, Start = function()
  o335["Value"] = False
  o351.StartCalculate()
end, SetStateValue = function(L0)
  if not (o335.Value == L0) then
    o335["Value"] = L0
    o351.ReCalculate()
  end
end }
o351 = { [nil] = {}, GetCalculated = function()
  if not (o335.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o351.SetStateValue(o351.GetCalculated())
end, StartCalculate = function()
  o351["Value"] = o351.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o351.Value == L0) then
    o351["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o378 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o378, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o378, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o378, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o378, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o378, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o378, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BioNav2_6_Path", 1, 1 } }("Code7")
  else
    CallFunction(o378, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 1 } }("Code8")
  else
    CallFunction(o378, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code9")
  else
    CallFunction(o378, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o378, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code11")
  else
    CallFunction(o378, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
end, SetStateValue_Attacked = function(L0, L1)
  o385.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o387.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o382.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o383.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 9) then
    if not (L0.CodeIndex >= 10) then
      if not (o384.Value ~= True) then
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
o382 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o382.SetStateValue(o382.GetCalculated())
end, StartCalculate = function()
  o382["Value"] = o382.GetCalculated()
end, SetStateValue = function(L0)
  if not (o382.Value == L0) then
    o382["Value"] = L0
    CallFunction(o378, "ProcesseStateChange")
  end
end }
o383 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o383.SetStateValue(o383.GetCalculated())
end, StartCalculate = function()
  o383["Value"] = o383.GetCalculated()
end, SetStateValue = function(L0)
  if not (o383.Value == L0) then
    o383["Value"] = L0
    CallFunction(o378, "ProcesseStateChange")
  end
end }
o384 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o384.SetStateValue(o384.GetCalculated())
end, StartCalculate = function()
  o384["Value"] = o384.GetCalculated()
end, SetStateValue = function(L0)
  if not (o384.Value == L0) then
    o384["Value"] = L0
    CallFunction(o378, "ProcesseStateChange")
  end
end }
o385 = { [nil] = {}, Start = function()
  o385["Value"] = False
  o973.StartCalculate()
end, SetStateValue = function(L0)
  if not (o385.Value == L0) then
    o385["Value"] = L0
    o973.ReCalculate()
  end
end }
o387 = { [nil] = {}, Start = function()
  o387["Value"] = False
  o403.StartCalculate()
end, SetStateValue = function(L0)
  if not (o387.Value == L0) then
    o387["Value"] = L0
    o403.ReCalculate()
  end
end }
o403 = { [nil] = {}, GetCalculated = function()
  if not (o387.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o403.SetStateValue(o403.GetCalculated())
end, StartCalculate = function()
  o403["Value"] = o403.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o403.Value == L0) then
    o403["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o430 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o430, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o430, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o430, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o430, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o430, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o430, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o430, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o436.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o432.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o433.Value ~= True) then
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
o432 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o432.SetStateValue(o432.GetCalculated())
end, StartCalculate = function()
  o432["Value"] = o432.GetCalculated()
end, SetStateValue = function(L0)
  if not (o432.Value == L0) then
    o432["Value"] = L0
    CallFunction(o430, "ProcesseStateChange")
  end
end }
o433 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o433.SetStateValue(o433.GetCalculated())
end, StartCalculate = function()
  o433["Value"] = o433.GetCalculated()
end, SetStateValue = function(L0)
  if not (o433.Value == L0) then
    o433["Value"] = L0
    CallFunction(o430, "ProcesseStateChange")
  end
end }
o436 = { [nil] = {}, Start = function()
  o436["Value"] = False
  o452.StartCalculate()
end, SetStateValue = function(L0)
  if not (o436.Value == L0) then
    o436["Value"] = L0
    o452.ReCalculate()
  end
end }
o452 = { [nil] = {}, GetCalculated = function()
  if not (o436.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o452.SetStateValue(o452.GetCalculated())
end, StartCalculate = function()
  o452["Value"] = o452.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o452.Value == L0) then
    o452["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o479 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o479, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o479, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o479, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o479, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o479, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o479, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o479, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o485.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o481.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o482.Value ~= True) then
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
o481 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o481.SetStateValue(o481.GetCalculated())
end, StartCalculate = function()
  o481["Value"] = o481.GetCalculated()
end, SetStateValue = function(L0)
  if not (o481.Value == L0) then
    o481["Value"] = L0
    CallFunction(o479, "ProcesseStateChange")
  end
end }
o482 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o482.SetStateValue(o482.GetCalculated())
end, StartCalculate = function()
  o482["Value"] = o482.GetCalculated()
end, SetStateValue = function(L0)
  if not (o482.Value == L0) then
    o482["Value"] = L0
    CallFunction(o479, "ProcesseStateChange")
  end
end }
o485 = { [nil] = {}, Start = function()
  o485["Value"] = False
  o501.StartCalculate()
end, SetStateValue = function(L0)
  if not (o485.Value == L0) then
    o485["Value"] = L0
    o501.ReCalculate()
  end
end }
o501 = { [nil] = {}, GetCalculated = function()
  if not (o485.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o501.SetStateValue(o501.GetCalculated())
end, StartCalculate = function()
  o501["Value"] = o501.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o501.Value == L0) then
    o501["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o528, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o528, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o528, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o528, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o528, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o528, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o528, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o534.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o530.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o531.Value ~= True) then
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
o530 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o530.SetStateValue(o530.GetCalculated())
end, StartCalculate = function()
  o530["Value"] = o530.GetCalculated()
end, SetStateValue = function(L0)
  if not (o530.Value == L0) then
    o530["Value"] = L0
    CallFunction(o528, "ProcesseStateChange")
  end
end }
o531 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o531.SetStateValue(o531.GetCalculated())
end, StartCalculate = function()
  o531["Value"] = o531.GetCalculated()
end, SetStateValue = function(L0)
  if not (o531.Value == L0) then
    o531["Value"] = L0
    CallFunction(o528, "ProcesseStateChange")
  end
end }
o534 = { [nil] = {}, Start = function()
  o534["Value"] = False
  o550.StartCalculate()
end, SetStateValue = function(L0)
  if not (o534.Value == L0) then
    o534["Value"] = L0
    o550.ReCalculate()
  end
end }
o550 = { [nil] = {}, GetCalculated = function()
  if not (o534.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o550.SetStateValue(o550.GetCalculated())
end, StartCalculate = function()
  o550["Value"] = o550.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o550.Value == L0) then
    o550["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o577 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o577, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o577, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o577, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o577, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o577, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o577, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o577, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o583.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o579.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o580.Value ~= True) then
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
o579 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o579.SetStateValue(o579.GetCalculated())
end, StartCalculate = function()
  o579["Value"] = o579.GetCalculated()
end, SetStateValue = function(L0)
  if not (o579.Value == L0) then
    o579["Value"] = L0
    CallFunction(o577, "ProcesseStateChange")
  end
end }
o580 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o580.SetStateValue(o580.GetCalculated())
end, StartCalculate = function()
  o580["Value"] = o580.GetCalculated()
end, SetStateValue = function(L0)
  if not (o580.Value == L0) then
    o580["Value"] = L0
    CallFunction(o577, "ProcesseStateChange")
  end
end }
o583 = { [nil] = {}, Start = function()
  o583["Value"] = False
  o599.StartCalculate()
end, SetStateValue = function(L0)
  if not (o583.Value == L0) then
    o583["Value"] = L0
    o599.ReCalculate()
  end
end }
o599 = { [nil] = {}, GetCalculated = function()
  if not (o583.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o599.SetStateValue(o599.GetCalculated())
end, StartCalculate = function()
  o599["Value"] = o599.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o599.Value == L0) then
    o599["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o626 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o626, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o626, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o626, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o626, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o626, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o626, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o626, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o632.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o628.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o629.Value ~= True) then
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
o628 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o628.SetStateValue(o628.GetCalculated())
end, StartCalculate = function()
  o628["Value"] = o628.GetCalculated()
end, SetStateValue = function(L0)
  if not (o628.Value == L0) then
    o628["Value"] = L0
    CallFunction(o626, "ProcesseStateChange")
  end
end }
o629 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o629.SetStateValue(o629.GetCalculated())
end, StartCalculate = function()
  o629["Value"] = o629.GetCalculated()
end, SetStateValue = function(L0)
  if not (o629.Value == L0) then
    o629["Value"] = L0
    CallFunction(o626, "ProcesseStateChange")
  end
end }
o632 = { [nil] = {}, Start = function()
  o632["Value"] = False
  o648.StartCalculate()
end, SetStateValue = function(L0)
  if not (o632.Value == L0) then
    o632["Value"] = L0
    o648.ReCalculate()
  end
end }
o648 = { [nil] = {}, GetCalculated = function()
  if not (o632.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o648.SetStateValue(o648.GetCalculated())
end, StartCalculate = function()
  o648["Value"] = o648.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o648.Value == L0) then
    o648["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o675 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o675, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o675, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o675, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o675, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o675, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o675, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code7")
  else
    CallFunction(o675, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
end, SetStateValue_Destroyed = function(L0, L1)
  o681.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o677.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o678.Value ~= True) then
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
o677 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o677.SetStateValue(o677.GetCalculated())
end, StartCalculate = function()
  o677["Value"] = o677.GetCalculated()
end, SetStateValue = function(L0)
  if not (o677.Value == L0) then
    o677["Value"] = L0
    CallFunction(o675, "ProcesseStateChange")
  end
end }
o678 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o678.SetStateValue(o678.GetCalculated())
end, StartCalculate = function()
  o678["Value"] = o678.GetCalculated()
end, SetStateValue = function(L0)
  if not (o678.Value == L0) then
    o678["Value"] = L0
    CallFunction(o675, "ProcesseStateChange")
  end
end }
o681 = { [nil] = {}, Start = function()
  o681["Value"] = False
  o697.StartCalculate()
end, SetStateValue = function(L0)
  if not (o681.Value == L0) then
    o681["Value"] = L0
    o697.ReCalculate()
  end
end }
o697 = { [nil] = {}, GetCalculated = function()
  if not (o681.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o697.SetStateValue(o697.GetCalculated())
end, StartCalculate = function()
  o697["Value"] = o697.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o697.Value == L0) then
    o697["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o724, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o724, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o724, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o724, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 4 } }("Code7")
  else
    CallFunction(o724, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code8")
  else
    CallFunction(o724, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
end, SetStateValue_Destroyed = function(L0, L1)
  o731.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o727.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 5) then
    if not (L0.CodeIndex >= 6) then
      if not (o728.Value ~= True) then
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
o727 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o727.SetStateValue(o727.GetCalculated())
end, StartCalculate = function()
  o727["Value"] = o727.GetCalculated()
end, SetStateValue = function(L0)
  if not (o727.Value == L0) then
    o727["Value"] = L0
    CallFunction(o724, "ProcesseStateChange")
  end
end }
o728 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o728.SetStateValue(o728.GetCalculated())
end, StartCalculate = function()
  o728["Value"] = o728.GetCalculated()
end, SetStateValue = function(L0)
  if not (o728.Value == L0) then
    o728["Value"] = L0
    CallFunction(o724, "ProcesseStateChange")
  end
end }
o731 = { [nil] = {}, Start = function()
  o731["Value"] = False
  o747.StartCalculate()
end, SetStateValue = function(L0)
  if not (o731.Value == L0) then
    o731["Value"] = L0
    o747.ReCalculate()
  end
end }
o747 = { [nil] = {}, GetCalculated = function()
  if not (o731.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o747.SetStateValue(o747.GetCalculated())
end, StartCalculate = function()
  o747["Value"] = o747.GetCalculated()
  o3.StartCalculate()
end, SetStateValue = function(L0)
  if not (o747.Value == L0) then
    o747["Value"] = L0
    o3.ReCalculate()
  end
end }
S_o774 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o774, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o774, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o774, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o774, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o774, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Born = function(L0, L1)
  o778.SetStateValue(L1)
end, SetStateValue_Destroyed = function(L0, L1)
  o779.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o776.Value ~= True) then
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
o776 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o776.SetStateValue(o776.GetCalculated())
end, StartCalculate = function()
  o776["Value"] = o776.GetCalculated()
end, SetStateValue = function(L0)
  if not (o776.Value == L0) then
    o776["Value"] = L0
    CallFunction(o774, "ProcesseStateChange")
  end
end }
o778 = { [nil] = {}, Start = function()
  o778["Value"] = False
  o975.StartCalculate()
end, SetStateValue = function(L0)
  if not (o778.Value == L0) then
    o778["Value"] = L0
    o975.ReCalculate()
  end
end }
o779 = { [nil] = {}, Start = function()
  o779["Value"] = False
  o796.StartCalculate()
end, SetStateValue = function(L0)
  if not (o779.Value == L0) then
    o779["Value"] = L0
    o796.ReCalculate()
  end
end }
o796 = { [nil] = {}, GetCalculated = function()
  if not (o779.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o796.SetStateValue(o796.GetCalculated())
end, StartCalculate = function()
  o796["Value"] = o796.GetCalculated()
  o4.StartCalculate()
end, SetStateValue = function(L0)
  if not (o796.Value == L0) then
    o796["Value"] = L0
    o4.ReCalculate()
  end
end }
S_o822 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o822, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o822, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o822, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o822, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o822, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o827.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o824.Value ~= True) then
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
o824 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o824.SetStateValue(o824.GetCalculated())
end, StartCalculate = function()
  o824["Value"] = o824.GetCalculated()
end, SetStateValue = function(L0)
  if not (o824.Value == L0) then
    o824["Value"] = L0
    CallFunction(o822, "ProcesseStateChange")
  end
end }
o827 = { [nil] = {}, Start = function()
  o827["Value"] = False
  o844.StartCalculate()
end, SetStateValue = function(L0)
  if not (o827.Value == L0) then
    o827["Value"] = L0
    o844.ReCalculate()
  end
end }
o844 = { [nil] = {}, GetCalculated = function()
  if not (o827.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o844.SetStateValue(o844.GetCalculated())
end, StartCalculate = function()
  o844["Value"] = o844.GetCalculated()
  o4.StartCalculate()
end, SetStateValue = function(L0)
  if not (o844.Value == L0) then
    o844["Value"] = L0
    o4.ReCalculate()
  end
end }
S_o870 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o870, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o870, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o870, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o870, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o870, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o875.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o872.Value ~= True) then
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
o872 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o872.SetStateValue(o872.GetCalculated())
end, StartCalculate = function()
  o872["Value"] = o872.GetCalculated()
end, SetStateValue = function(L0)
  if not (o872.Value == L0) then
    o872["Value"] = L0
    CallFunction(o870, "ProcesseStateChange")
  end
end }
o875 = { [nil] = {}, Start = function()
  o875["Value"] = False
  o892.StartCalculate()
end, SetStateValue = function(L0)
  if not (o875.Value == L0) then
    o875["Value"] = L0
    o892.ReCalculate()
  end
end }
o892 = { [nil] = {}, GetCalculated = function()
  if not (o875.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o892.SetStateValue(o892.GetCalculated())
end, StartCalculate = function()
  o892["Value"] = o892.GetCalculated()
  o4.StartCalculate()
end, SetStateValue = function(L0)
  if not (o892.Value == L0) then
    o892["Value"] = L0
    o4.ReCalculate()
  end
end }
S_o918 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o918, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o918, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o918, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o918, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code5")
  else
    CallFunction(o918, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
end, SetStateValue_Destroyed = function(L0, L1)
  o923.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o920.Value ~= True) then
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
o920 = { [nil] = {}, GetCalculated = function()
  if not (o3.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o920.SetStateValue(o920.GetCalculated())
end, StartCalculate = function()
  o920["Value"] = o920.GetCalculated()
end, SetStateValue = function(L0)
  if not (o920.Value == L0) then
    o920["Value"] = L0
    CallFunction(o918, "ProcesseStateChange")
  end
end }
o923 = { [nil] = {}, Start = function()
  o923["Value"] = False
  o940.StartCalculate()
end, SetStateValue = function(L0)
  if not (o923.Value == L0) then
    o923["Value"] = L0
    o940.ReCalculate()
  end
end }
o940 = { [nil] = {}, GetCalculated = function()
  if not (o923.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o940.SetStateValue(o940.GetCalculated())
end, StartCalculate = function()
  o940["Value"] = o940.GetCalculated()
  o4.StartCalculate()
end, SetStateValue = function(L0)
  if not (o940.Value == L0) then
    o940["Value"] = L0
    o4.ReCalculate()
  end
end }
S_o966 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "GUN_PLASMA1", 1)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "AMMO_ENERGY", 2000)
  Body_AddItem(L0.Node, "AMMO_SHELL", 2000)
  Body_AddItem(L0.Node, "torpedo_bullshark", 6)
  CallFunction(o966, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
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
o971 = { [nil] = {}, GetCalculated = function()
  if not (o35.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o971.SetStateValue(o971.GetCalculated())
end, StartCalculate = function()
  o971["Value"] = o971.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o966.Node, o966.Node, 1199)
end, SetStateValue = function(L0)
  if not (o971.Value == L0) then
    o971["Value"] = L0
    if not (L0 ~= 1) then
      o971.ChangeTo1()
    end
  end
end }
o972 = { [nil] = {}, GetCalculated = function()
  if not (o41.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o972.SetStateValue(o972.GetCalculated())
end, StartCalculate = function()
  o972["Value"] = o972.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3875.Node, o966.Node, 1200)
end, SetStateValue = function(L0)
  if not (o972.Value == L0) then
    o972["Value"] = L0
    if not (L0 ~= 1) then
      o972.ChangeTo1()
    end
  end
end }
o973 = { [nil] = {}, GetCalculated = function()
  if not (o125.Value == True) then
    if not (o177.Value == True) then
      if not (o229.Value == True) then
        if not (o281.Value == True) then
          if not (o333.Value == True) then
            if not (o385.Value ~= True) then
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
  o973.SetStateValue(o973.GetCalculated())
end, StartCalculate = function()
  o973["Value"] = o973.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3875.Node, o966.Node, 1201)
end, SetStateValue = function(L0)
  if not (o973.Value == L0) then
    o973["Value"] = L0
    if not (L0 ~= 1) then
      o973.ChangeTo1()
    end
  end
end }
o974 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o974.SetStateValue(o974.GetCalculated())
end, StartCalculate = function()
  o974["Value"] = o974.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o3875.Node, o966.Node, 1202)
  Game_SetWayPoint(GetGameNode(), o1015.Node)
end, SetStateValue = function(L0)
  if not (o974.Value == L0) then
    o974["Value"] = L0
    if not (L0 ~= 1) then
      o974.ChangeTo1()
    end
  end
end }
o975 = { [nil] = {}, GetCalculated = function()
  if not (o778.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o975.SetStateValue(o975.GetCalculated())
end, StartCalculate = function()
  o975["Value"] = o975.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o966.Node, o966.Node, 1204)
end, SetStateValue = function(L0)
  if not (o975.Value == L0) then
    o975["Value"] = L0
    if not (L0 ~= 1) then
      o975.ChangeTo1()
    end
  end
end }
o976 = { [nil] = {}, GetCalculated = function()
  if not (o1008.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o976.SetStateValue(o976.GetCalculated())
end, StartCalculate = function()
  o976["Value"] = o976.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o1010.Node)
end, SetStateValue = function(L0)
  if not (o976.Value == L0) then
    o976["Value"] = L0
    if not (L0 ~= 1) then
      o976.ChangeTo1()
    end
  end
end }
o977 = { [nil] = {}, GetCalculated = function()
  if not (o3949.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o977.SetStateValue(o977.GetCalculated())
end, StartCalculate = function()
  o977["Value"] = o977.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o977.Value == L0) then
    o977["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o1005 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o1005, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o1008.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o1008 = { [nil] = {}, Start = function()
  o1008["Value"] = False
  o976.StartCalculate()
end, SetStateValue = function(L0)
  if not (o1008.Value == L0) then
    o1008["Value"] = L0
    o976.ReCalculate()
  end
end }
S_o1010 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o1010, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1015 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, NOD_NodeRef(), 0, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), 0)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), 0)
  WayPoint_Attach(L0.Node, NOD_NodeRef())
  CallFunction(o1015, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o1020 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1020, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1020, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1020, "Code3")
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
S_o1067 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1067, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1067, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1067, "Code3")
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
S_o1114 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1114, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1114, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1114, "Code3")
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
S_o1161 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1161, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1161, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1161, "Code3")
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
S_o1208 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1208, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1208, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1208, "Code3")
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
S_o1255 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1255, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1255, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1255, "Code3")
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
S_o1302 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1302, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1302, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1302, "Code3")
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
S_o1396 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1396, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1396, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1396, "Code3")
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
S_o1443 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1443, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1443, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1443, "Code3")
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
S_o1490 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1490, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1490, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1490, "Code3")
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
S_o1537 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1537, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1537, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1537, "Code3")
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
S_o1584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1584, "Code3")
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
S_o1631 = { [nil] = {}, Start = function(L0)

end }
S_o1677 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1677, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1677, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1677, "Code3")
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
S_o1724 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1724, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1724, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1724, "Code3")
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
S_o1771 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1771, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1771, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1771, "Code3")
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
S_o1818 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1818, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1818, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1818, "Code3")
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
S_o1865 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1865, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1865, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1865, "Code3")
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
S_o1912 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1912, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1912, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1912, "Code3")
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
S_o1959 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o1959, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o1959, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o1959, "Code3")
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
S_o2006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2006, "Code3")
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
S_o2053 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2053, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2053, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2053, "Code3")
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
S_o2100 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2100, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2100, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2100, "Code3")
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
S_o2147 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2147, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2147, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2147, "Code3")
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
S_o2194 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2194, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2194, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2194, "Code3")
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
S_o2241 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2241, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2241, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2241, "Code3")
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
S_o2288 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2288, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2288, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2288, "Code3")
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
S_o2335 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2335, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2335, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2335, "Code3")
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
S_o2382 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2382, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2382, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2382, "Code3")
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
S_o2429 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2429, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2429, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2429, "Code3")
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
S_o2476 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2476, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2476, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2476, "Code3")
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
S_o2523 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2523, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2523, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2523, "Code3")
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
S_o2570 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2570, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2570, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2570, "Code3")
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
S_o2617 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2617, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2617, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2617, "Code3")
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
S_o2664 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2664, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2664, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2664, "Code3")
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
S_o2711 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2711, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2711, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2711, "Code3")
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
S_o2758 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2758, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2758, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2758, "Code3")
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
S_o2805 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2805, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2805, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2805, "Code3")
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
S_o2852 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2852, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2852, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2852, "Code3")
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
S_o2899 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2899, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2899, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2899, "Code3")
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
S_o2946 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2946, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2946, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o2946, "Code3")
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
S_o2993 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o2993, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o2993, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o2993, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o2993, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o2993, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o2993, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o2996.Value ~= True) then
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
o2996 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o2996.SetStateValue(o2996.GetCalculated())
end, StartCalculate = function()
  o2996["Value"] = o2996.GetCalculated()
end, SetStateValue = function(L0)
  if not (o2996.Value == L0) then
    o2996["Value"] = L0
    CallFunction(o2993, "ProcesseStateChange")
  end
end }
S_o3042 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3042, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3042, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3042, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3042, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3042, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3042, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3045.Value ~= True) then
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
o3045 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3045.SetStateValue(o3045.GetCalculated())
end, StartCalculate = function()
  o3045["Value"] = o3045.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3045.Value == L0) then
    o3045["Value"] = L0
    CallFunction(o3042, "ProcesseStateChange")
  end
end }
S_o3091 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3091, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3091, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3091, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3091, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3091, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3091, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3094.Value ~= True) then
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
o3094 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3094.SetStateValue(o3094.GetCalculated())
end, StartCalculate = function()
  o3094["Value"] = o3094.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3094.Value == L0) then
    o3094["Value"] = L0
    CallFunction(o3091, "ProcesseStateChange")
  end
end }
S_o3140 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3140, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3140, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3140, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3140, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3140, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3140, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3143.Value ~= True) then
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
o3143 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3143.SetStateValue(o3143.GetCalculated())
end, StartCalculate = function()
  o3143["Value"] = o3143.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3143.Value == L0) then
    o3143["Value"] = L0
    CallFunction(o3140, "ProcesseStateChange")
  end
end }
S_o3189 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3189, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3189, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3189, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3189, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3189, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3189, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3192.Value ~= True) then
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
o3192 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3192.SetStateValue(o3192.GetCalculated())
end, StartCalculate = function()
  o3192["Value"] = o3192.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3192.Value == L0) then
    o3192["Value"] = L0
    CallFunction(o3189, "ProcesseStateChange")
  end
end }
S_o3238 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3238, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3238, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3238, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3238, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3238, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3238, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3241.Value ~= True) then
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
o3241 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3241.SetStateValue(o3241.GetCalculated())
end, StartCalculate = function()
  o3241["Value"] = o3241.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3241.Value == L0) then
    o3241["Value"] = L0
    CallFunction(o3238, "ProcesseStateChange")
  end
end }
S_o3287 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3287, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3287, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3287, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3287, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3287, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3287, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3290.Value ~= True) then
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
o3290 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3290.SetStateValue(o3290.GetCalculated())
end, StartCalculate = function()
  o3290["Value"] = o3290.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3290.Value == L0) then
    o3290["Value"] = L0
    CallFunction(o3287, "ProcesseStateChange")
  end
end }
S_o3336 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3336, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3336, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3336, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3336, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3336, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3336, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3339.Value ~= True) then
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
o3339 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3339.SetStateValue(o3339.GetCalculated())
end, StartCalculate = function()
  o3339["Value"] = o3339.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3339.Value == L0) then
    o3339["Value"] = L0
    CallFunction(o3336, "ProcesseStateChange")
  end
end }
S_o3385 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3385, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3385, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3385, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3385, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3385, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3385, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3388.Value ~= True) then
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
o3388 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3388.SetStateValue(o3388.GetCalculated())
end, StartCalculate = function()
  o3388["Value"] = o3388.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3388.Value == L0) then
    o3388["Value"] = L0
    CallFunction(o3385, "ProcesseStateChange")
  end
end }
S_o3434 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3434, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3434, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3434, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3434, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3434, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3434, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3437.Value ~= True) then
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
o3437 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3437.SetStateValue(o3437.GetCalculated())
end, StartCalculate = function()
  o3437["Value"] = o3437.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3437.Value == L0) then
    o3437["Value"] = L0
    CallFunction(o3434, "ProcesseStateChange")
  end
end }
S_o3483 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3483, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3483, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3483, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3483, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3483, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3483, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3486.Value ~= True) then
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
o3486 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3486.SetStateValue(o3486.GetCalculated())
end, StartCalculate = function()
  o3486["Value"] = o3486.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3486.Value == L0) then
    o3486["Value"] = L0
    CallFunction(o3483, "ProcesseStateChange")
  end
end }
S_o3532 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3532, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3532, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3532, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3532, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3532, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3532, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3535.Value ~= True) then
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
o3535 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3535.SetStateValue(o3535.GetCalculated())
end, StartCalculate = function()
  o3535["Value"] = o3535.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3535.Value == L0) then
    o3535["Value"] = L0
    CallFunction(o3532, "ProcesseStateChange")
  end
end }
S_o3581 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3581, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3581, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3581, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3581, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3581, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3581, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3584.Value ~= True) then
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
o3584 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3584.SetStateValue(o3584.GetCalculated())
end, StartCalculate = function()
  o3584["Value"] = o3584.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3584.Value == L0) then
    o3584["Value"] = L0
    CallFunction(o3581, "ProcesseStateChange")
  end
end }
S_o3630 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3630, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3630, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3630, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3630, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3630, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3630, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3633.Value ~= True) then
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
o3633 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3633.SetStateValue(o3633.GetCalculated())
end, StartCalculate = function()
  o3633["Value"] = o3633.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3633.Value == L0) then
    o3633["Value"] = L0
    CallFunction(o3630, "ProcesseStateChange")
  end
end }
S_o3679 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3679, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3679, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3679, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3679, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3679, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3679, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3682.Value ~= True) then
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
o3682 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3682.SetStateValue(o3682.GetCalculated())
end, StartCalculate = function()
  o3682["Value"] = o3682.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3682.Value == L0) then
    o3682["Value"] = L0
    CallFunction(o3679, "ProcesseStateChange")
  end
end }
S_o3728 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3728, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3728, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3728, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3728, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3728, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3728, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3731.Value ~= True) then
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
o3731 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3731.SetStateValue(o3731.GetCalculated())
end, StartCalculate = function()
  o3731["Value"] = o3731.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3731.Value == L0) then
    o3731["Value"] = L0
    CallFunction(o3728, "ProcesseStateChange")
  end
end }
S_o3777 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3777, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3777, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3777, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3777, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3777, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3777, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3780.Value ~= True) then
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
o3780 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3780.SetStateValue(o3780.GetCalculated())
end, StartCalculate = function()
  o3780["Value"] = o3780.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3780.Value == L0) then
    o3780["Value"] = L0
    CallFunction(o3777, "ProcesseStateChange")
  end
end }
S_o3826 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3826, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3826, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_DipolIn(L0, "Code3")
  else
    CallFunction(o3826, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_CollisionTerrain(L0.Node, 1)
  CallFunction(o3826, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 6 } }("Code5")
  else
    CallFunction(o3826, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 0.25, "Code6")
  else
    CallFunction(o3826, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o3829.Value ~= True) then
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
o3829 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3829.SetStateValue(o3829.GetCalculated())
end, StartCalculate = function()
  o3829["Value"] = o3829.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3829.Value == L0) then
    o3829["Value"] = L0
    CallFunction(o3826, "ProcesseStateChange")
  end
end }
S_o3875 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o3875, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3875, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o3875, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  ShieldedBody_SetLogarithmicMode(L0.Node)
  CallFunction(o3875, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code5")
  else
    CallFunction(o3875, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3875, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Goto", "/Scenario_Dynamic/Navigation/BonhamPath_1", 1, 1 } }("Code7")
  else
    CallFunction(o3875, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    VesselAttackLib.GuardArea(L0, 0, "/Scenario_Dynamic/Navigation/PatrolArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "/Scenario_Dynamic/Navigation/BattleArea2", "E", "", "", "", 1, "Code8")
  else
    CallFunction(o3875, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.DipolJumpOut(L0, "Code9")
  else
    CallFunction(o3875, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
end, SetStateValue_Destroyed = function(L0, L1)
  o3882.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      L1 = 0
    end
  end
  if not (L0.CodeIndex < 7) then
    if not (L0.CodeIndex >= 8) then
      if not (o3879.Value ~= True) then
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
o3879 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3879.SetStateValue(o3879.GetCalculated())
end, StartCalculate = function()
  o3879["Value"] = o3879.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3879.Value == L0) then
    DelayedFunction(15, o3879, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3879.Value == L0) then
    o3879["Value"] = L0
    CallFunction(o3875, "ProcesseStateChange")
  end
end }
o3882 = { [nil] = {}, Start = function()
  o3882["Value"] = False
  o3921.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3882.Value == L0) then
    o3882["Value"] = L0
    o3921.ReCalculate()
  end
end }
o3921 = { [nil] = {}, GetCalculated = function()
  if not (o3882.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3921.SetStateValue(o3921.GetCalculated())
end, StartCalculate = function()
  o3921["Value"] = o3921.GetCalculated()
  o26.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3921.Value == L0) then
    o3921["Value"] = L0
    o26.ReCalculate()
  end
end }
S_o3925 = { [nil] = {}, Start = function(L0)

end }
o3927 = FormationLib.CreateFormation("Row", "", "", "", 25, 25)
S_o3928 = { [nil] = {}, Start = function(L0)

end }
S_o3929 = { [nil] = {}, Start = function(L0)

end }
S_o3930 = { [nil] = {}, Start = function(L0)

end }
S_o3931 = { [nil] = {}, Start = function(L0)

end }
o3933 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o3934 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "atmo")
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o3926, o3927, "/IngameSequences/Navigation/C1_Intro_Path1")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C1_Intro_Pos1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/IngameSequences/Navigation/C1_Intro_Pos3", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3934, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code9")
  else
    CallFunction(o3934, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/C1_Intro_Pos2", 14.5, "MMMN", 0)
  CallFunction(o3934, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3926, o3927, "/IngameSequences/Navigation/C1_Intro_Path1", "pos_1", "pos_2", 0.4, 1, "Code11")
  else
    CallFunction(o3934, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 2, "MMMN", 0)
  CallFunction(o3934, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o3926, o3927, "/IngameSequences/Navigation/C1_Intro_Path1", "pos_2", "pos_3", 0.4, 1, "Code13")
  else
    CallFunction(o3934, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Director_EndCutscene(L0.Node)
  Game_SetWayPoint(GetGameNode(), o1005.Node)
  CallFunction(o3875, "Code6")
  SED_SetTaskTextKey(1274, -1, -1)
  CallFunction(o3934, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o3937 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3937.SetStateValue(o3937.GetCalculated())
end, StartCalculate = function()
  o3937["Value"] = o3937.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "agressive")
end, SetStateValue = function(L0)
  if not (o3937.Value == L0) then
    o3937["Value"] = L0
    if not (L0 ~= 1) then
      o3937.ChangeTo1()
    end
  end
end }
S_o3938 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code1")
  else
    CallFunction(o3938, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  SendRadioMessageTake(o966.Node, o966.Node, 1227)
  CallFunction(o3938, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code3")
  else
    CallFunction(o3938, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SendRadioMessageTake(o3875.Node, o966.Node, 24)
  CallFunction(o3938, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 15, "Code5")
  else
    CallFunction(o3938, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  SendRadioMessageTake(o3875.Node, o966.Node, 1198)
  CallFunction(o3938, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o3943 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3943, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Director_BeginCutscene(L0.Node)
  FormationLib.PlaceFormationPath(o3932, o3933, "/IngameSequences/Navigation/Bonham_pos")
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/IngameSequences/Navigation/LookFrom_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/bio_bomber_d_12", 0, "MFMN", 0)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o3943, "Code8")
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code9")
  else
    CallFunction(o3943, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/wng_bonham_1h4", 2, "MMMN", 0)
  CallFunction(o3943, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 5, "Code11")
  else
    CallFunction(o3943, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Director_EndCutscene(L0.Node)
  SendRadioMessageTake(o966.Node, o966.Node, 1206)
  SED_SetTaskTextKey(1348, -1, -1)
  o3949.SetStateValue(True)
  CallFunction(o3943, "Code15")
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
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
  if not (o4.Value ~= True) then
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
    DelayedFunction(1, o3944, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3944.Value == L0) then
    o3944["Value"] = L0
    CallFunction(o3943, "ProcesseStateChange")
  end
end }
o3948 = { [nil] = {}, GetCalculated = function()
  if not (o47.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3948.SetStateValue(o3948.GetCalculated())
end, StartCalculate = function()
  o3948["Value"] = o3948.GetCalculated()
end, ChangeTo1 = function()
  Game_PlayMusic(GetGameNode(), "agressive")
end, SetStateValue = function(L0)
  if not (o3948.Value == L0) then
    o3948["Value"] = L0
    if not (L0 ~= 1) then
      o3948.ChangeTo1()
    end
  end
end }
o3949 = { [nil] = {}, Start = function()
  o3949["Value"] = False
  o977.StartCalculate()
end, SetStateValue = function(L0)
  if not (o3949.Value == L0) then
    o3949["Value"] = L0
    o977.ReCalculate()
  end
end }
S_o3950 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o3950, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code2")
  else
    CallFunction(o3950, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  SendRadioMessageTake(o3875.Node, o966.Node, 1205)
  CallFunction(o3950, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o3951.Value ~= True) then
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
o3951 = { [nil] = {}, GetCalculated = function()
  if not (o4.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o3951.SetStateValue(o3951.GetCalculated())
end, StartCalculate = function()
  o3951["Value"] = o3951.GetCalculated()
end, SetStateValue = function(L0)
  if not (o3951.Value == L0) then
    DelayedFunction(1, o3951, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o3951.Value == L0) then
    o3951["Value"] = L0
    CallFunction(o3950, "ProcesseStateChange")
  end
end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 211)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "NAV1_Trg", S_o30)
  o35.Start()
  o36 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BiontWakeUpTrg", S_o36)
  o41.Start()
  o42 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "BattleField_Trg", S_o42)
  o47.Start()
  o48 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_wreck_1_1", S_o48)
  o83 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_wreck_2_1", S_o83)
  o118 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV2_1", S_o118)
  o125.Start()
  o127.Start()
  o170 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV2_2", S_o170)
  o177.Start()
  o179.Start()
  o222 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV2_3", S_o222)
  o229.Start()
  o231.Start()
  o274 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV2_4", S_o274)
  o281.Start()
  o283.Start()
  o326 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV2_5", S_o326)
  o333.Start()
  o335.Start()
  o378 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV2_6", S_o378)
  o385.Start()
  o387.Start()
  o430 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_1", S_o430)
  o436.Start()
  o479 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_2", S_o479)
  o485.Start()
  o528 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_3", S_o528)
  o534.Start()
  o577 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_4", S_o577)
  o583.Start()
  o626 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_5", S_o626)
  o632.Start()
  o675 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_6", S_o675)
  o681.Start()
  o724 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_NAV3_7", S_o724)
  o731.Start()
  o774 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_bomber_d_1", S_o774)
  o778.Start()
  o779.Start()
  o822 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_1", S_o822)
  o827.Start()
  o870 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_2", S_o870)
  o875.Start()
  o918 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_3", S_o918)
  o923.Start()
  o966 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o966)
  o1005 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_01", S_o1005)
  o1008.Start()
  o1010 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_02", S_o1010)
  o1015 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_03", S_o1015)
  o1020 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_A1", S_o1020)
  o1067 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_A1", S_o1067)
  o1114 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_B1", S_o1114)
  o1161 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_C1", S_o1161)
  o1208 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_C1", S_o1208)
  o1255 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D1", S_o1255)
  o1302 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D2", S_o1302)
  o1349 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D1", S_o1349)
  o1396 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_D2", S_o1396)
  o1443 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D1", S_o1443)
  o1490 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D2", S_o1490)
  o1537 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_D2", S_o1537)
  o1584 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_D1", S_o1584)
  o1631 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_D2", S_o1631)
  o1677 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_D1", S_o1677)
  o1724 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_D2", S_o1724)
  o1771 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_E1", S_o1771)
  o1818 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_E2", S_o1818)
  o1865 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_E1", S_o1865)
  o1912 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_E2", S_o1912)
  o1959 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_E1", S_o1959)
  o2006 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_E2", S_o2006)
  o2053 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_E1", S_o2053)
  o2100 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_E2", S_o2100)
  o2147 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_E3", S_o2147)
  o2194 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_E1", S_o2194)
  o2241 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_E1", S_o2241)
  o2288 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D3", S_o2288)
  o2335 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D4", S_o2335)
  o2382 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_D5", S_o2382)
  o2429 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D5", S_o2429)
  o2476 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D2", S_o2476)
  o2523 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3a_D3", S_o2523)
  o2570 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_D1", S_o2570)
  o2617 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl4a_D5", S_o2617)
  o2664 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D5", S_o2664)
  o2711 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl5_D56", S_o2711)
  o2758 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_D1", S_o2758)
  o2805 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl6_D22", S_o2805)
  o2852 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2a_D12", S_o2852)
  o2899 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl3b_D22", S_o2899)
  o2946 = BindEasy(Node_Find("/Scenario_Dynamic/Object/Biont_Trash"), "bio_cl2b_F1", S_o2946)
  o2993 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_bomber_d_11", S_o2993)
  o3042 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_11", S_o3042)
  o3091 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_21", S_o3091)
  o3140 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_31", S_o3140)
  o3189 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_41", S_o3189)
  o3238 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_51", S_o3238)
  o3287 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_bomber_d_12", S_o3287)
  o3336 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_12", S_o3336)
  o3385 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_22", S_o3385)
  o3434 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_32", S_o3434)
  o3483 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_42", S_o3483)
  o3532 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_52", S_o3532)
  o3581 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_bomber_d_13", S_o3581)
  o3630 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_13", S_o3630)
  o3679 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_23", S_o3679)
  o3728 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_33", S_o3728)
  o3777 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_43", S_o3777)
  o3826 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_scout_d3_53", S_o3826)
  o3875 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "wng_bonham_1h4", S_o3875)
  o3882.Start()
  o3925 = BindEasy(Node_Find("/"), "Camera", S_o3925)
  o3928 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos1", S_o3928)
  o3929 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos2", S_o3929)
  o3930 = BindEasy(Node_Find("/IngameSequences/Navigation"), "C1_Intro_Pos3", S_o3930)
  o3931 = BindEasy(Node_Find("/IngameSequences/Navigation"), "LookFrom_1", S_o3931)
  o3949.Start()
  o3934 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_V", S_o3934)
  o3938 = BindEasy(Node_Find("/IngameSequences/Director"), "Chapter1_Intro_A", S_o3938)
  o3943 = BindEasy(Node_Find("/IngameSequences/Director"), "EndMission_Scene_V", S_o3943)
  o3950 = BindEasy(Node_Find("/IngameSequences/Director"), "EndMission_Scene_A", S_o3950)
  o3926 = { {}, o966, o3875 }()
  o3932 = { {}, o3875 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end