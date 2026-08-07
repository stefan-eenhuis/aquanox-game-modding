-- dekompiliert aus 3h4.sco
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
  Terrain_LoadTerrain(node1, "map/3H4/Terrain/")
  Node_EnterSimulation(node1)
  Game_LoadFog(node0, "map/3H4/Fog/fog.fog")
  Game_SetFog(node0, 0.99, 1)
  Game_SetCausticTerrainNormal(node0, 0.0009, 0.2, 4, 2)
  Game_SetCausticObjectNormal(node0, 0.0009, 0.2, 5, 2.5)
  Game_SetCausticBuildingNormal(node0, 0.0009, 0.2, 5, 2.5)
  Game_SetCausticTerrainMicro(node0, 0.08, 0.4, 2, 1, 60)
  Game_SetCausticBuildingMicro(node0, 0.08, 0.4, 2, 1, 60)
  Game_SetLightCache(node0, "map/3H4/Lmsh/", "map/3H4/Ltex/")
  Game_SetTerrainDepth(node0, 7326)
  Game_SetDecompressionHeight(node0, 90)
  Game_SetDecompressionRange(node0, 0, 0, 0)
  Game_SetAmbientLight(node0, 0.039216, 0.039216, 0.039216)
  Game_SetParallelLightT(node0, 0.156863, 0.156863, 0.156863)
  Game_SetParallelLightB(node0, 0.678431, 0.235294, 0.078431)
  Game_LoadTextTable(node0, "dat/sty/de/pilot.loc")
  Game_LoadTextTable(node0, "dat/sty/de/cargo.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_gen.loc")
  Game_LoadTextTable(node0, "dat/sty/de/minfo_3h4.loc")
  Game_LoadMTake(node0, "dat/sty/mtake_3H4.des")
  Game_LoadMTake(node0, "dat/sty/mtake_gen.des")
  Game_LoadMusic(node0, "sfx/sample/music/music_biontenduell.sam", 0)
  Game_LoadMusic(node0, "sfx/sample/music/music_ambient1.sam", 1)
  Game_LoadMusic(node0, "sfx/sample/music/music_tension2.sam", 2)
  Game_LoadMusic(node0, "sfx/sample/music/music_mute.sam", 3)
  Game_SetNPCHitFactor(node0, 1)
  Game_SetEnvironmentCubeMap(node0, "map/3H4/CubeMap/envcubemap.dds")
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
  node8 = Node_CreateNode("nod_generic", "pla_harvester_1")
  Node_AddSon(node7, node8)
  Body_SetCS(node8, MAT_Vector3(3603.1268, 3372.532122, 508.131704), MAT_Vector3(89.589222, 0, 0))
  Node_ParseIniFile(node8, "osd/pla/pla_harvester.osd")
  Body_SetFriendOrFoeID(node8, 0)
  Body_SetNameKey(node8, -1)
  Body_SetCargoKey(node8, -1, 0)
  Body_SetCargoKey(node8, -1, 1)
  Body_SetCargoKey(node8, -1, 2)
  Node_EnterSimulation(node8)
  Game_LoadProgress_Advance(node0)
  node9 = Node_CreateNode("nod_fx_plankton", "fx_plankton_lava_d_1")
  Node_AddSon(node7, node9)
  Node_ParseIniFile(node9, "osd/fx_plankton/fx_plankton_lava_d.osd")
  Node_EnterSimulation(node9)
  Game_LoadProgress_Advance(node0)
  node10 = Node_CreateNode("nod_generic", "ter_rockface_01_1")
  Node_AddSon(node7, node10)
  Body_SetCS(node10, MAT_Vector3(3531.283381, 2595.00717, 9.797808), MAT_Vector3(21.20973, 0, 0))
  Node_ParseIniFile(node10, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node10, 0)
  Body_SetNameKey(node10, -1)
  Body_SetCargoKey(node10, -1, 0)
  Body_SetCargoKey(node10, -1, 1)
  Body_SetCargoKey(node10, -1, 2)
  Node_EnterSimulation(node10)
  Game_LoadProgress_Advance(node0)
  node11 = Node_CreateNode("nod_generic", "ter_rockface_02_1")
  Node_AddSon(node7, node11)
  Body_SetCS(node11, MAT_Vector3(3289.429613, 2483.284777, 11.679266), MAT_Vector3(19.286008, 0, 0))
  Node_ParseIniFile(node11, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node11, 0)
  Body_SetNameKey(node11, -1)
  Body_SetCargoKey(node11, -1, 0)
  Body_SetCargoKey(node11, -1, 1)
  Body_SetCargoKey(node11, -1, 2)
  Node_EnterSimulation(node11)
  Game_LoadProgress_Advance(node0)
  node12 = Node_CreateNode("nod_generic", "ter_rockface_03_1")
  Node_AddSon(node7, node12)
  Body_SetCS(node12, MAT_Vector3(3232.65815, 2456.505747, 8.5078), MAT_Vector3(23.989085, 0, 0))
  Node_ParseIniFile(node12, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node12, 0)
  Body_SetNameKey(node12, -1)
  Body_SetCargoKey(node12, -1, 0)
  Body_SetCargoKey(node12, -1, 1)
  Body_SetCargoKey(node12, -1, 2)
  Node_EnterSimulation(node12)
  Game_LoadProgress_Advance(node0)
  node13 = Node_CreateNode("nod_generic", "ter_rockface_01_2")
  Node_AddSon(node7, node13)
  Body_SetCS(node13, MAT_Vector3(3427.802553, 2414.214471, -4.067007), MAT_Vector3(-160.450187, -0.016431, -0.322423))
  Node_ParseIniFile(node13, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node13, 0)
  Body_SetNameKey(node13, -1)
  Body_SetCargoKey(node13, -1, 0)
  Body_SetCargoKey(node13, -1, 1)
  Body_SetCargoKey(node13, -1, 2)
  Node_EnterSimulation(node13)
  Game_LoadProgress_Advance(node0)
  node14 = Node_CreateNode("nod_generic", "ter_rockface_02_2")
  Node_AddSon(node7, node14)
  Body_SetCS(node14, MAT_Vector3(3421.510784, 2412.121962, 11.67927), MAT_Vector3(-161.797509, 0, 0))
  Node_ParseIniFile(node14, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node14, 0)
  Body_SetNameKey(node14, -1)
  Body_SetCargoKey(node14, -1, 0)
  Body_SetCargoKey(node14, -1, 1)
  Body_SetCargoKey(node14, -1, 2)
  Node_EnterSimulation(node14)
  Game_LoadProgress_Advance(node0)
  node15 = Node_CreateNode("nod_generic", "ter_rockface_03_2")
  Node_AddSon(node7, node15)
  Body_SetCS(node15, MAT_Vector3(3232.507951, 2335.054763, 8.5078), MAT_Vector3(-137.259837, 0, 0))
  Node_ParseIniFile(node15, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node15, 0)
  Body_SetNameKey(node15, -1)
  Body_SetCargoKey(node15, -1, 0)
  Body_SetCargoKey(node15, -1, 1)
  Body_SetCargoKey(node15, -1, 2)
  Node_EnterSimulation(node15)
  Game_LoadProgress_Advance(node0)
  node16 = Node_CreateNode("nod_generic", "ter_rockface_01_3")
  Node_AddSon(node7, node16)
  Body_SetCS(node16, MAT_Vector3(3082.27111, 2193.349086, 6.971489), MAT_Vector3(-135.584666, -0.016431, -0.322423))
  Node_ParseIniFile(node16, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node16, 0)
  Body_SetNameKey(node16, -1)
  Body_SetCargoKey(node16, -1, 0)
  Body_SetCargoKey(node16, -1, 1)
  Body_SetCargoKey(node16, -1, 2)
  Node_EnterSimulation(node16)
  Game_LoadProgress_Advance(node0)
  node17 = Node_CreateNode("nod_generic", "ter_rockface_02_3")
  Node_AddSon(node7, node17)
  Body_SetCS(node17, MAT_Vector3(3078.868446, 2188.772664, 11.67927), MAT_Vector3(-157.391624, 0, 0))
  Node_ParseIniFile(node17, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node17, 0)
  Body_SetNameKey(node17, -1)
  Body_SetCargoKey(node17, -1, 0)
  Body_SetCargoKey(node17, -1, 1)
  Body_SetCargoKey(node17, -1, 2)
  Node_EnterSimulation(node17)
  Game_LoadProgress_Advance(node0)
  node18 = Node_CreateNode("nod_generic", "ter_rockface_03_3")
  Node_AddSon(node7, node18)
  Body_SetCS(node18, MAT_Vector3(2878.344747, 2163.042811, 8.5078), MAT_Vector3(173.091774, 0, 0))
  Node_ParseIniFile(node18, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node18, 0)
  Body_SetNameKey(node18, -1)
  Body_SetCargoKey(node18, -1, 0)
  Body_SetCargoKey(node18, -1, 1)
  Body_SetCargoKey(node18, -1, 2)
  Node_EnterSimulation(node18)
  Game_LoadProgress_Advance(node0)
  node19 = Node_CreateNode("nod_generic", "ter_rockface_01_4")
  Node_AddSon(node7, node19)
  Body_SetCS(node19, MAT_Vector3(3158.832405, 2432.878835, 3.611003), MAT_Vector3(5.228467, 0, 0))
  Node_ParseIniFile(node19, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node19, 0)
  Body_SetNameKey(node19, -1)
  Body_SetCargoKey(node19, -1, 0)
  Body_SetCargoKey(node19, -1, 1)
  Body_SetCargoKey(node19, -1, 2)
  Node_EnterSimulation(node19)
  Game_LoadProgress_Advance(node0)
  node20 = Node_CreateNode("nod_generic", "ter_rockface_02_4")
  Node_AddSon(node7, node20)
  Body_SetCS(node20, MAT_Vector3(2873.168091, 2384.494841, 11.67927), MAT_Vector3(19.28601, 0, 0))
  Node_ParseIniFile(node20, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node20, 0)
  Body_SetNameKey(node20, -1)
  Body_SetCargoKey(node20, -1, 0)
  Body_SetCargoKey(node20, -1, 1)
  Body_SetCargoKey(node20, -1, 2)
  Node_EnterSimulation(node20)
  Game_LoadProgress_Advance(node0)
  node21 = Node_CreateNode("nod_generic", "ter_rockface_03_4")
  Node_AddSon(node7, node21)
  Body_SetCS(node21, MAT_Vector3(2818.601815, 2366.025369, 8.5078), MAT_Vector3(23.98908, 0, 0))
  Node_ParseIniFile(node21, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node21, 0)
  Body_SetNameKey(node21, -1)
  Body_SetCargoKey(node21, -1, 0)
  Body_SetCargoKey(node21, -1, 1)
  Body_SetCargoKey(node21, -1, 2)
  Node_EnterSimulation(node21)
  Game_LoadProgress_Advance(node0)
  node22 = Node_CreateNode("nod_generic", "ter_rockface_01_5")
  Node_AddSon(node7, node22)
  Body_SetCS(node22, MAT_Vector3(2759.81055, 2326.874581, -1.483317), MAT_Vector3(5.228467, 0, 0))
  Node_ParseIniFile(node22, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node22, 0)
  Body_SetNameKey(node22, -1)
  Body_SetCargoKey(node22, -1, 0)
  Body_SetCargoKey(node22, -1, 1)
  Body_SetCargoKey(node22, -1, 2)
  Node_EnterSimulation(node22)
  Game_LoadProgress_Advance(node0)
  node23 = Node_CreateNode("nod_generic", "ter_rockface_02_5")
  Node_AddSon(node7, node23)
  Body_SetCS(node23, MAT_Vector3(2474.666947, 2284.463897, 10.784032), MAT_Vector3(17.699592, 0, 0))
  Node_ParseIniFile(node23, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node23, 0)
  Body_SetNameKey(node23, -1)
  Body_SetCargoKey(node23, -1, 0)
  Body_SetCargoKey(node23, -1, 1)
  Body_SetCargoKey(node23, -1, 2)
  Node_EnterSimulation(node23)
  Game_LoadProgress_Advance(node0)
  node24 = Node_CreateNode("nod_generic", "ter_rockface_03_5")
  Node_AddSon(node7, node24)
  Body_SetCS(node24, MAT_Vector3(2407.059381, 2286.871388, 8.5078), MAT_Vector3(0.8086, 0, 0))
  Node_ParseIniFile(node24, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node24, 0)
  Body_SetNameKey(node24, -1)
  Body_SetCargoKey(node24, -1, 0)
  Body_SetCargoKey(node24, -1, 1)
  Body_SetCargoKey(node24, -1, 2)
  Node_EnterSimulation(node24)
  Game_LoadProgress_Advance(node0)
  node25 = Node_CreateNode("nod_generic", "ter_rockface_01_6")
  Node_AddSon(node7, node25)
  Body_SetCS(node25, MAT_Vector3(2671.992179, 2144.388608, -0.687433), MAT_Vector3(-167.891942, -0.016431, -0.322423))
  Node_ParseIniFile(node25, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node25, 0)
  Body_SetNameKey(node25, -1)
  Body_SetCargoKey(node25, -1, 0)
  Body_SetCargoKey(node25, -1, 1)
  Body_SetCargoKey(node25, -1, 2)
  Node_EnterSimulation(node25)
  Game_LoadProgress_Advance(node0)
  node26 = Node_CreateNode("nod_generic", "ter_rockface_02_6")
  Node_AddSon(node7, node26)
  Body_SetCS(node26, MAT_Vector3(2654.241014, 2177.771757, 10.695929), MAT_Vector3(-176.569184, 0, 0))
  Node_ParseIniFile(node26, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node26, 0)
  Body_SetNameKey(node26, -1)
  Body_SetCargoKey(node26, -1, 0)
  Body_SetCargoKey(node26, -1, 1)
  Body_SetCargoKey(node26, -1, 2)
  Node_EnterSimulation(node26)
  Game_LoadProgress_Advance(node0)
  node27 = Node_CreateNode("nod_generic", "ter_rockface_03_6")
  Node_AddSon(node7, node27)
  Body_SetCS(node27, MAT_Vector3(2445.681126, 2178.861052, 8.5078), MAT_Vector3(-179.472505, 0, 0))
  Node_ParseIniFile(node27, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node27, 0)
  Body_SetNameKey(node27, -1)
  Body_SetCargoKey(node27, -1, 0)
  Body_SetCargoKey(node27, -1, 1)
  Body_SetCargoKey(node27, -1, 2)
  Node_EnterSimulation(node27)
  Game_LoadProgress_Advance(node0)
  node28 = Node_CreateNode("nod_generic", "ter_rockface_01_7")
  Node_AddSon(node7, node28)
  Body_SetCS(node28, MAT_Vector3(2327.949855, 2305.138918, 1.065721), MAT_Vector3(3.811945, 0, 0))
  Node_ParseIniFile(node28, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node28, 0)
  Body_SetNameKey(node28, -1)
  Body_SetCargoKey(node28, -1, 0)
  Body_SetCargoKey(node28, -1, 1)
  Body_SetCargoKey(node28, -1, 2)
  Node_EnterSimulation(node28)
  Game_LoadProgress_Advance(node0)
  node29 = Node_CreateNode("nod_generic", "ter_rockface_02_7")
  Node_AddSon(node7, node29)
  Body_SetCS(node29, MAT_Vector3(2044.22115, 2251.588779, -0.852546), MAT_Vector3(17.83482, 0, 0))
  Node_ParseIniFile(node29, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node29, 0)
  Body_SetNameKey(node29, -1)
  Body_SetCargoKey(node29, -1, 0)
  Body_SetCargoKey(node29, -1, 1)
  Body_SetCargoKey(node29, -1, 2)
  Node_EnterSimulation(node29)
  Game_LoadProgress_Advance(node0)
  node30 = Node_CreateNode("nod_generic", "ter_rockface_03_7")
  Node_AddSon(node7, node30)
  Body_SetCS(node30, MAT_Vector3(1988.636419, 2215.741392, 8.5078), MAT_Vector3(35.025501, 0, 0))
  Node_ParseIniFile(node30, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node30, 0)
  Body_SetNameKey(node30, -1)
  Body_SetCargoKey(node30, -1, 0)
  Body_SetCargoKey(node30, -1, 1)
  Body_SetCargoKey(node30, -1, 2)
  Node_EnterSimulation(node30)
  Game_LoadProgress_Advance(node0)
  node31 = Node_CreateNode("nod_generic", "ter_rockface_01_8")
  Node_AddSon(node7, node31)
  Body_SetCS(node31, MAT_Vector3(2105.721047, 2153.809323, -6.01198), MAT_Vector3(-179.3924, -0.016431, -0.322423))
  Node_ParseIniFile(node31, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node31, 0)
  Body_SetNameKey(node31, -1)
  Body_SetCargoKey(node31, -1, 0)
  Body_SetCargoKey(node31, -1, 1)
  Body_SetCargoKey(node31, -1, 2)
  Node_EnterSimulation(node31)
  Game_LoadProgress_Advance(node0)
  node32 = Node_CreateNode("nod_generic", "ter_rockface_02_8")
  Node_AddSon(node7, node32)
  Body_SetCS(node32, MAT_Vector3(2383.869038, 2203.212536, 9.150907), MAT_Vector3(-163.129674, 0, 0))
  Node_ParseIniFile(node32, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node32, 0)
  Body_SetNameKey(node32, -1)
  Body_SetCargoKey(node32, -1, 0)
  Body_SetCargoKey(node32, -1, 1)
  Body_SetCargoKey(node32, -1, 2)
  Node_EnterSimulation(node32)
  Game_LoadProgress_Advance(node0)
  node33 = Node_CreateNode("nod_generic", "ter_rockface_03_8")
  Node_AddSon(node7, node33)
  Body_SetCS(node33, MAT_Vector3(2047.329031, 2129.231867, 8.5078), MAT_Vector3(-150.418895, 0, 0))
  Node_ParseIniFile(node33, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node33, 0)
  Body_SetNameKey(node33, -1)
  Body_SetCargoKey(node33, -1, 0)
  Body_SetCargoKey(node33, -1, 1)
  Body_SetCargoKey(node33, -1, 2)
  Node_EnterSimulation(node33)
  Game_LoadProgress_Advance(node0)
  node34 = Node_CreateNode("nod_generic", "ter_rockface_01_9")
  Node_AddSon(node7, node34)
  Body_SetCS(node34, MAT_Vector3(1913.641786, 2176.629692, 2.47472), MAT_Vector3(46.001581, 0, 0))
  Node_ParseIniFile(node34, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node34, 0)
  Body_SetNameKey(node34, -1)
  Body_SetCargoKey(node34, -1, 0)
  Body_SetCargoKey(node34, -1, 1)
  Body_SetCargoKey(node34, -1, 2)
  Node_EnterSimulation(node34)
  Game_LoadProgress_Advance(node0)
  node35 = Node_CreateNode("nod_generic", "ter_rockface_02_9")
  Node_AddSon(node7, node35)
  Body_SetCS(node35, MAT_Vector3(1770.979363, 1931.483287, 11.67927), MAT_Vector3(72.053658, 0, 0))
  Node_ParseIniFile(node35, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node35, 0)
  Body_SetNameKey(node35, -1)
  Body_SetCargoKey(node35, -1, 0)
  Body_SetCargoKey(node35, -1, 1)
  Body_SetCargoKey(node35, -1, 2)
  Node_EnterSimulation(node35)
  Game_LoadProgress_Advance(node0)
  node36 = Node_CreateNode("nod_generic", "ter_rockface_03_9")
  Node_AddSon(node7, node36)
  Body_SetCS(node36, MAT_Vector3(1755.932637, 1872.796688, -2.221605), MAT_Vector3(90.960028, 0, 0))
  Node_ParseIniFile(node36, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node36, 0)
  Body_SetNameKey(node36, -1)
  Body_SetCargoKey(node36, -1, 0)
  Body_SetCargoKey(node36, -1, 1)
  Body_SetCargoKey(node36, -1, 2)
  Node_EnterSimulation(node36)
  Game_LoadProgress_Advance(node0)
  node37 = Node_CreateNode("nod_generic", "ter_rockface_01_10")
  Node_AddSon(node7, node37)
  Body_SetCS(node37, MAT_Vector3(1942.015119, 1958.865776, 1.481332), MAT_Vector3(-106.291775, -0.016431, -0.322423))
  Node_ParseIniFile(node37, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node37, 0)
  Body_SetNameKey(node37, -1)
  Body_SetCargoKey(node37, -1, 0)
  Body_SetCargoKey(node37, -1, 1)
  Body_SetCargoKey(node37, -1, 2)
  Node_EnterSimulation(node37)
  Game_LoadProgress_Advance(node0)
  node38 = Node_CreateNode("nod_generic", "ter_rockface_02_10")
  Node_AddSon(node7, node38)
  Body_SetCS(node38, MAT_Vector3(1947.599512, 1955.910441, -4.14053), MAT_Vector3(-87.582146, 0, 0))
  Node_ParseIniFile(node38, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node38, 0)
  Body_SetNameKey(node38, -1)
  Body_SetCargoKey(node38, -1, 0)
  Body_SetCargoKey(node38, -1, 1)
  Body_SetCargoKey(node38, -1, 2)
  Node_EnterSimulation(node38)
  Game_LoadProgress_Advance(node0)
  node39 = Node_CreateNode("nod_generic", "ter_rockface_03_10")
  Node_AddSon(node7, node39)
  Body_SetCS(node39, MAT_Vector3(1941.789282, 1746.97126, 3.053933), MAT_Vector3(-101.360188, 0, 0))
  Node_ParseIniFile(node39, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node39, 0)
  Body_SetNameKey(node39, -1)
  Body_SetCargoKey(node39, -1, 0)
  Body_SetCargoKey(node39, -1, 1)
  Body_SetCargoKey(node39, -1, 2)
  Node_EnterSimulation(node39)
  Game_LoadProgress_Advance(node0)
  node40 = Node_CreateNode("nod_generic", "ter_rockface_01_11")
  Node_AddSon(node7, node40)
  Body_SetCS(node40, MAT_Vector3(1770.873543, 1809.534674, -7.504048), MAT_Vector3(102.415752, 0, 0))
  Node_ParseIniFile(node40, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node40, 0)
  Body_SetNameKey(node40, -1)
  Body_SetCargoKey(node40, -1, 0)
  Body_SetCargoKey(node40, -1, 1)
  Body_SetCargoKey(node40, -1, 2)
  Node_EnterSimulation(node40)
  Game_LoadProgress_Advance(node0)
  node41 = Node_CreateNode("nod_generic", "ter_rockface_02_11")
  Node_AddSon(node7, node41)
  Body_SetCS(node41, MAT_Vector3(1791.762869, 1564.268587, 11.67927), MAT_Vector3(76.60413, 0, 0))
  Node_ParseIniFile(node41, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node41, 0)
  Body_SetNameKey(node41, -1)
  Body_SetCargoKey(node41, -1, 0)
  Body_SetCargoKey(node41, -1, 1)
  Body_SetCargoKey(node41, -1, 2)
  Node_EnterSimulation(node41)
  Game_LoadProgress_Advance(node0)
  node42 = Node_CreateNode("nod_generic", "ter_rockface_03_11")
  Node_AddSon(node7, node42)
  Body_SetCS(node42, MAT_Vector3(1767.291923, 1506.234049, 8.5078), MAT_Vector3(64.393278, 0, 0))
  Node_ParseIniFile(node42, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node42, 0)
  Body_SetNameKey(node42, -1)
  Body_SetCargoKey(node42, -1, 0)
  Body_SetCargoKey(node42, -1, 1)
  Body_SetCargoKey(node42, -1, 2)
  Node_EnterSimulation(node42)
  Game_LoadProgress_Advance(node0)
  node43 = Node_CreateNode("nod_generic", "ter_rockface_01_12")
  Node_AddSon(node7, node43)
  Body_SetCS(node43, MAT_Vector3(1900.22848, 1542.707908, 4.35303), MAT_Vector3(-95.992217, -0.016431, -0.322423))
  Node_ParseIniFile(node43, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node43, 0)
  Body_SetNameKey(node43, -1)
  Body_SetCargoKey(node43, -1, 0)
  Body_SetCargoKey(node43, -1, 1)
  Body_SetCargoKey(node43, -1, 2)
  Node_EnterSimulation(node43)
  Game_LoadProgress_Advance(node0)
  node44 = Node_CreateNode("nod_generic", "ter_rockface_02_12")
  Node_AddSon(node7, node44)
  Body_SetCS(node44, MAT_Vector3(1883.103503, 1536.586658, 10.69593), MAT_Vector3(-106.270795, 0, 0))
  Node_ParseIniFile(node44, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node44, 0)
  Body_SetNameKey(node44, -1)
  Body_SetCargoKey(node44, -1, 0)
  Body_SetCargoKey(node44, -1, 1)
  Body_SetCargoKey(node44, -1, 2)
  Node_EnterSimulation(node44)
  Game_LoadProgress_Advance(node0)
  node45 = Node_CreateNode("nod_generic", "ter_rockface_03_12")
  Node_AddSon(node7, node45)
  Body_SetCS(node45, MAT_Vector3(1772.689594, 1372.757828, 3.053933), MAT_Vector3(-152.181501, 0, 0))
  Node_ParseIniFile(node45, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node45, 0)
  Body_SetNameKey(node45, -1)
  Body_SetCargoKey(node45, -1, 0)
  Body_SetCargoKey(node45, -1, 1)
  Body_SetCargoKey(node45, -1, 2)
  Node_EnterSimulation(node45)
  Game_LoadProgress_Advance(node0)
  node46 = Node_CreateNode("nod_generic", "ter_rockface_01_13")
  Node_AddSon(node7, node46)
  Body_SetCS(node46, MAT_Vector3(1613.609123, 1458.981924, 2.653124), MAT_Vector3(1.150074, 0, 0))
  Node_ParseIniFile(node46, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node46, 0)
  Body_SetNameKey(node46, -1)
  Body_SetCargoKey(node46, -1, 0)
  Body_SetCargoKey(node46, -1, 1)
  Body_SetCargoKey(node46, -1, 2)
  Node_EnterSimulation(node46)
  Game_LoadProgress_Advance(node0)
  node47 = Node_CreateNode("nod_generic", "ter_rockface_02_13")
  Node_AddSon(node7, node47)
  Body_SetCS(node47, MAT_Vector3(1452.888911, 1439.723979, 2.084566), MAT_Vector3(99.897812, 0, 0))
  Node_ParseIniFile(node47, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node47, 0)
  Body_SetNameKey(node47, -1)
  Body_SetCargoKey(node47, -1, 0)
  Body_SetCargoKey(node47, -1, 1)
  Body_SetCargoKey(node47, -1, 2)
  Node_EnterSimulation(node47)
  Game_LoadProgress_Advance(node0)
  node48 = Node_CreateNode("nod_generic", "ter_rockface_03_13")
  Node_AddSon(node7, node48)
  Body_SetCS(node48, MAT_Vector3(1674.53576, 1448.723077, 8.5078), MAT_Vector3(11.129702, 0, 0))
  Node_ParseIniFile(node48, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node48, 0)
  Body_SetNameKey(node48, -1)
  Body_SetCargoKey(node48, -1, 0)
  Body_SetCargoKey(node48, -1, 1)
  Body_SetCargoKey(node48, -1, 2)
  Node_EnterSimulation(node48)
  Game_LoadProgress_Advance(node0)
  node49 = Node_CreateNode("nod_generic", "ter_rockface_01_14")
  Node_AddSon(node7, node49)
  Body_SetCS(node49, MAT_Vector3(1417.896079, 1322.316326, 4.35303), MAT_Vector3(-163.548006, -0.016431, -0.322423))
  Node_ParseIniFile(node49, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node49, 0)
  Body_SetNameKey(node49, -1)
  Body_SetCargoKey(node49, -1, 0)
  Body_SetCargoKey(node49, -1, 1)
  Body_SetCargoKey(node49, -1, 2)
  Node_EnterSimulation(node49)
  Game_LoadProgress_Advance(node0)
  node50 = Node_CreateNode("nod_generic", "ter_rockface_02_14")
  Node_AddSon(node7, node50)
  Body_SetCS(node50, MAT_Vector3(1707.361756, 1343.322705, 10.69593), MAT_Vector3(-173.632297, 0, 0))
  Node_ParseIniFile(node50, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node50, 0)
  Body_SetNameKey(node50, -1)
  Body_SetCargoKey(node50, -1, 0)
  Body_SetCargoKey(node50, -1, 1)
  Body_SetCargoKey(node50, -1, 2)
  Node_EnterSimulation(node50)
  Game_LoadProgress_Advance(node0)
  node51 = Node_CreateNode("nod_generic", "ter_rockface_03_14")
  Node_AddSon(node7, node51)
  Body_SetCS(node51, MAT_Vector3(1365.797879, 1370.932694, 3.053933), MAT_Vector3(121.763672, 0, 0))
  Node_ParseIniFile(node51, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node51, 0)
  Body_SetNameKey(node51, -1)
  Body_SetCargoKey(node51, -1, 0)
  Body_SetCargoKey(node51, -1, 1)
  Body_SetCargoKey(node51, -1, 2)
  Node_EnterSimulation(node51)
  Game_LoadProgress_Advance(node0)
  node52 = Node_CreateNode("nod_generic", "ter_rockface_01_15")
  Node_AddSon(node7, node52)
  Body_SetCS(node52, MAT_Vector3(1434.67455, 1563.822495, -1.971372), MAT_Vector3(-25.339524, 0, 0))
  Node_ParseIniFile(node52, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node52, 0)
  Body_SetNameKey(node52, -1)
  Body_SetCargoKey(node52, -1, 0)
  Body_SetCargoKey(node52, -1, 1)
  Body_SetCargoKey(node52, -1, 2)
  Node_EnterSimulation(node52)
  Game_LoadProgress_Advance(node0)
  node53 = Node_CreateNode("nod_generic", "ter_rockface_02_15")
  Node_AddSon(node7, node53)
  Body_SetCS(node53, MAT_Vector3(1283.408877, 1640.606241, 11.67927), MAT_Vector3(63.163827, 0, 0))
  Node_ParseIniFile(node53, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node53, 0)
  Body_SetNameKey(node53, -1)
  Body_SetCargoKey(node53, -1, 0)
  Body_SetCargoKey(node53, -1, 1)
  Body_SetCargoKey(node53, -1, 2)
  Node_EnterSimulation(node53)
  Game_LoadProgress_Advance(node0)
  node54 = Node_CreateNode("nod_generic", "ter_rockface_03_15")
  Node_AddSon(node7, node54)
  Body_SetCS(node54, MAT_Vector3(1317.881599, 1801.504647, 8.5078), MAT_Vector3(82.916684, 0, 0))
  Node_ParseIniFile(node54, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node54, 0)
  Body_SetNameKey(node54, -1)
  Body_SetCargoKey(node54, -1, 0)
  Body_SetCargoKey(node54, -1, 1)
  Body_SetCargoKey(node54, -1, 2)
  Node_EnterSimulation(node54)
  Game_LoadProgress_Advance(node0)
  node55 = Node_CreateNode("nod_generic", "ter_rockface_01_16")
  Node_AddSon(node7, node55)
  Body_SetCS(node55, MAT_Vector3(1242.677021, 1528.310177, 3.974265), MAT_Vector3(140.275275, -0.016431, -0.322423))
  Node_ParseIniFile(node55, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node55, 0)
  Body_SetNameKey(node55, -1)
  Body_SetCargoKey(node55, -1, 0)
  Body_SetCargoKey(node55, -1, 1)
  Body_SetCargoKey(node55, -1, 2)
  Node_EnterSimulation(node55)
  Game_LoadProgress_Advance(node0)
  node56 = Node_CreateNode("nod_generic", "ter_rockface_02_16")
  Node_AddSon(node7, node56)
  Body_SetCS(node56, MAT_Vector3(1241.616253, 1525.262789, 10.69593), MAT_Vector3(123.968499, 0, 0))
  Node_ParseIniFile(node56, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node56, 0)
  Body_SetNameKey(node56, -1)
  Body_SetCargoKey(node56, -1, 0)
  Body_SetCargoKey(node56, -1, 1)
  Body_SetCargoKey(node56, -1, 2)
  Node_EnterSimulation(node56)
  Game_LoadProgress_Advance(node0)
  node57 = Node_CreateNode("nod_generic", "ter_rockface_03_16")
  Node_AddSon(node7, node57)
  Body_SetCS(node57, MAT_Vector3(1189.655585, 1705.422853, 3.053933), MAT_Vector3(100.088045, 0, 0))
  Node_ParseIniFile(node57, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node57, 0)
  Body_SetNameKey(node57, -1)
  Body_SetCargoKey(node57, -1, 0)
  Body_SetCargoKey(node57, -1, 1)
  Body_SetCargoKey(node57, -1, 2)
  Node_EnterSimulation(node57)
  Game_LoadProgress_Advance(node0)
  node58 = Node_CreateNode("nod_generic", "ter_rockface_01_17")
  Node_AddSon(node7, node58)
  Body_SetCS(node58, MAT_Vector3(1324.252894, 1850.943089, 5.529864), MAT_Vector3(-83.859118, 0, 0))
  Node_ParseIniFile(node58, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node58, 0)
  Body_SetNameKey(node58, -1)
  Body_SetCargoKey(node58, -1, 0)
  Body_SetCargoKey(node58, -1, 1)
  Body_SetCargoKey(node58, -1, 2)
  Node_EnterSimulation(node58)
  Game_LoadProgress_Advance(node0)
  node59 = Node_CreateNode("nod_generic", "ter_rockface_02_17")
  Node_AddSon(node7, node59)
  Body_SetCS(node59, MAT_Vector3(1313.648826, 2011.743506, 11.67927), MAT_Vector3(96.844632, 0, 0))
  Node_ParseIniFile(node59, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node59, 0)
  Body_SetNameKey(node59, -1)
  Body_SetCargoKey(node59, -1, 0)
  Body_SetCargoKey(node59, -1, 1)
  Body_SetCargoKey(node59, -1, 2)
  Node_EnterSimulation(node59)
  Game_LoadProgress_Advance(node0)
  node60 = Node_CreateNode("nod_generic", "ter_rockface_03_17")
  Node_AddSon(node7, node60)
  Body_SetCS(node60, MAT_Vector3(1277.013064, 2183.730997, 8.5078), MAT_Vector3(84.932245, 0, 0))
  Node_ParseIniFile(node60, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node60, 0)
  Body_SetNameKey(node60, -1)
  Body_SetCargoKey(node60, -1, 0)
  Body_SetCargoKey(node60, -1, 1)
  Body_SetCargoKey(node60, -1, 2)
  Node_EnterSimulation(node60)
  Game_LoadProgress_Advance(node0)
  node61 = Node_CreateNode("nod_generic", "ter_rockface_01_18")
  Node_AddSon(node7, node61)
  Body_SetCS(node61, MAT_Vector3(1142.79093, 1881.705483, 4.35303), MAT_Vector3(95.925408, -0.016431, -0.322423))
  Node_ParseIniFile(node61, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node61, 0)
  Body_SetNameKey(node61, -1)
  Body_SetCargoKey(node61, -1, 0)
  Body_SetCargoKey(node61, -1, 1)
  Body_SetCargoKey(node61, -1, 2)
  Node_EnterSimulation(node61)
  Game_LoadProgress_Advance(node0)
  node62 = Node_CreateNode("nod_generic", "ter_rockface_02_18")
  Node_AddSon(node7, node62)
  Body_SetCS(node62, MAT_Vector3(1203.648564, 1873.263325, 10.69593), MAT_Vector3(90.055744, 0, 0))
  Node_ParseIniFile(node62, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node62, 0)
  Body_SetNameKey(node62, -1)
  Body_SetCargoKey(node62, -1, 0)
  Body_SetCargoKey(node62, -1, 1)
  Body_SetCargoKey(node62, -1, 2)
  Node_EnterSimulation(node62)
  Game_LoadProgress_Advance(node0)
  node63 = Node_CreateNode("nod_generic", "ter_rockface_03_18")
  Node_AddSon(node7, node63)
  Body_SetCS(node63, MAT_Vector3(1187.467097, 2076.049631, 3.053933), MAT_Vector3(100.088, 0, 0))
  Node_ParseIniFile(node63, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node63, 0)
  Body_SetNameKey(node63, -1)
  Body_SetCargoKey(node63, -1, 0)
  Body_SetCargoKey(node63, -1, 1)
  Body_SetCargoKey(node63, -1, 2)
  Node_EnterSimulation(node63)
  Game_LoadProgress_Advance(node0)
  node64 = Node_CreateNode("nod_generic", "ter_rockface_01_19")
  Node_AddSon(node7, node64)
  Body_SetCS(node64, MAT_Vector3(1281.904373, 2232.929399, 5.961974), MAT_Vector3(-69.374764, 0, 0))
  Node_ParseIniFile(node64, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node64, 0)
  Body_SetNameKey(node64, -1)
  Body_SetCargoKey(node64, -1, 0)
  Body_SetCargoKey(node64, -1, 1)
  Body_SetCargoKey(node64, -1, 2)
  Node_EnterSimulation(node64)
  Game_LoadProgress_Advance(node0)
  node65 = Node_CreateNode("nod_generic", "ter_rockface_02_19")
  Node_AddSon(node7, node65)
  Body_SetCS(node65, MAT_Vector3(1235.174882, 2387.80135, 8.464341), MAT_Vector3(134.071272, 0, 0))
  Node_ParseIniFile(node65, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node65, 0)
  Body_SetNameKey(node65, -1)
  Body_SetCargoKey(node65, -1, 0)
  Body_SetCargoKey(node65, -1, 1)
  Body_SetCargoKey(node65, -1, 2)
  Node_EnterSimulation(node65)
  Game_LoadProgress_Advance(node0)
  node66 = Node_CreateNode("nod_generic", "ter_rockface_03_19")
  Node_AddSon(node7, node66)
  Body_SetCS(node66, MAT_Vector3(1084.870892, 2537.673385, 8.5078), MAT_Vector3(134.784793, 0, 0))
  Node_ParseIniFile(node66, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node66, 0)
  Body_SetNameKey(node66, -1)
  Body_SetCargoKey(node66, -1, 0)
  Body_SetCargoKey(node66, -1, 1)
  Body_SetCargoKey(node66, -1, 2)
  Node_EnterSimulation(node66)
  Game_LoadProgress_Advance(node0)
  node67 = Node_CreateNode("nod_generic", "ter_rockface_01_20")
  Node_AddSon(node7, node67)
  Body_SetCS(node67, MAT_Vector3(1152.404476, 2281.115255, 4.35303), MAT_Vector3(95.92541, -0.016431, -0.322423))
  Node_ParseIniFile(node67, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node67, 0)
  Body_SetNameKey(node67, -1)
  Body_SetCargoKey(node67, -1, 0)
  Body_SetCargoKey(node67, -1, 1)
  Body_SetCargoKey(node67, -1, 2)
  Node_EnterSimulation(node67)
  Game_LoadProgress_Advance(node0)
  node68 = Node_CreateNode("nod_generic", "ter_rockface_02_20")
  Node_AddSon(node7, node68)
  Body_SetCS(node68, MAT_Vector3(1155.318222, 2283.012311, 10.69593), MAT_Vector3(114.890422, 0, 0))
  Node_ParseIniFile(node68, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node68, 0)
  Body_SetNameKey(node68, -1)
  Body_SetCargoKey(node68, -1, 0)
  Body_SetCargoKey(node68, -1, 1)
  Body_SetCargoKey(node68, -1, 2)
  Node_EnterSimulation(node68)
  Game_LoadProgress_Advance(node0)
  node69 = Node_CreateNode("nod_generic", "ter_rockface_03_20")
  Node_AddSon(node7, node69)
  Body_SetCS(node69, MAT_Vector3(1052.354892, 2363.501108, 3.053933), MAT_Vector3(38.755043, 0, 0))
  Node_ParseIniFile(node69, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node69, 0)
  Body_SetNameKey(node69, -1)
  Body_SetCargoKey(node69, -1, 0)
  Body_SetCargoKey(node69, -1, 1)
  Body_SetCargoKey(node69, -1, 2)
  Node_EnterSimulation(node69)
  Game_LoadProgress_Advance(node0)
  node70 = Node_CreateNode("nod_generic", "ter_rockface_01_21")
  Node_AddSon(node7, node70)
  Body_SetCS(node70, MAT_Vector3(858.524021, 2260.202862, 4.35303), MAT_Vector3(-156.701436, -0.016431, -0.322423))
  Node_ParseIniFile(node70, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node70, 0)
  Body_SetNameKey(node70, -1)
  Body_SetCargoKey(node70, -1, 0)
  Body_SetCargoKey(node70, -1, 1)
  Body_SetCargoKey(node70, -1, 2)
  Node_EnterSimulation(node70)
  Game_LoadProgress_Advance(node0)
  node71 = Node_CreateNode("nod_generic", "ter_rockface_02_21")
  Node_AddSon(node7, node71)
  Body_SetCS(node71, MAT_Vector3(857.019099, 2259.689347, 10.69593), MAT_Vector3(-155.901652, 0, 0))
  Node_ParseIniFile(node71, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node71, 0)
  Body_SetNameKey(node71, -1)
  Body_SetCargoKey(node71, -1, 0)
  Body_SetCargoKey(node71, -1, 1)
  Body_SetCargoKey(node71, -1, 2)
  Node_EnterSimulation(node71)
  Game_LoadProgress_Advance(node0)
  node72 = Node_CreateNode("nod_generic", "ter_rockface_03_21")
  Node_AddSon(node7, node72)
  Body_SetCS(node72, MAT_Vector3(655.432928, 2207.778925, 3.053933), MAT_Vector3(-175.246636, 0, 0))
  Node_ParseIniFile(node72, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node72, 0)
  Body_SetNameKey(node72, -1)
  Body_SetCargoKey(node72, -1, 0)
  Body_SetCargoKey(node72, -1, 1)
  Body_SetCargoKey(node72, -1, 2)
  Node_EnterSimulation(node72)
  Game_LoadProgress_Advance(node0)
  node73 = Node_CreateNode("nod_generic", "ter_rockface_01_22")
  Node_AddSon(node7, node73)
  Body_SetCS(node73, MAT_Vector3(456.528593, 2252.059501, -1.518486), MAT_Vector3(168.311463, 0, 0))
  Node_ParseIniFile(node73, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node73, 0)
  Body_SetNameKey(node73, -1)
  Body_SetCargoKey(node73, -1, 0)
  Body_SetCargoKey(node73, -1, 1)
  Body_SetCargoKey(node73, -1, 2)
  Node_EnterSimulation(node73)
  Game_LoadProgress_Advance(node0)
  node74 = Node_CreateNode("nod_generic", "ter_rockface_02_22")
  Node_AddSon(node7, node74)
  Body_SetCS(node74, MAT_Vector3(350.771735, 2315.15671, 5.369928), MAT_Vector3(149.552783, 0, 0))
  Node_ParseIniFile(node74, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node74, 0)
  Body_SetNameKey(node74, -1)
  Body_SetCargoKey(node74, -1, 0)
  Body_SetCargoKey(node74, -1, 1)
  Body_SetCargoKey(node74, -1, 2)
  Node_EnterSimulation(node74)
  Game_LoadProgress_Advance(node0)
  node75 = Node_CreateNode("nod_generic", "ter_rockface_03_22")
  Node_AddSon(node7, node75)
  Body_SetCS(node75, MAT_Vector3(393.631829, 2267.314453, 8.5078), MAT_Vector3(151.133168, 0, 0))
  Node_ParseIniFile(node75, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node75, 0)
  Body_SetNameKey(node75, -1)
  Body_SetCargoKey(node75, -1, 0)
  Body_SetCargoKey(node75, -1, 1)
  Body_SetCargoKey(node75, -1, 2)
  Node_EnterSimulation(node75)
  Game_LoadProgress_Advance(node0)
  node76 = Node_CreateNode("nod_generic", "ter_rockface_01_23")
  Node_AddSon(node7, node76)
  Body_SetCS(node76, MAT_Vector3(143.751582, 2508.167396, 4.35303), MAT_Vector3(125.111299, -0.016431, -0.322423))
  Node_ParseIniFile(node76, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node76, 0)
  Body_SetNameKey(node76, -1)
  Body_SetCargoKey(node76, -1, 0)
  Body_SetCargoKey(node76, -1, 1)
  Body_SetCargoKey(node76, -1, 2)
  Node_EnterSimulation(node76)
  Game_LoadProgress_Advance(node0)
  node77 = Node_CreateNode("nod_generic", "ter_rockface_02_23")
  Node_AddSon(node7, node77)
  Body_SetCS(node77, MAT_Vector3(144.040848, 2511.758096, 10.69593), MAT_Vector3(141.14873, 0, 0))
  Node_ParseIniFile(node77, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node77, 0)
  Body_SetNameKey(node77, -1)
  Body_SetCargoKey(node77, -1, 0)
  Body_SetCargoKey(node77, -1, 1)
  Body_SetCargoKey(node77, -1, 2)
  Node_EnterSimulation(node77)
  Game_LoadProgress_Advance(node0)
  node78 = Node_CreateNode("nod_generic", "ter_rockface_03_23")
  Node_AddSon(node7, node78)
  Body_SetCS(node78, MAT_Vector3(23.774071, 2648.161594, 3.053933), MAT_Vector3(146.029797, 0, 0))
  Node_ParseIniFile(node78, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node78, 0)
  Body_SetNameKey(node78, -1)
  Body_SetCargoKey(node78, -1, 0)
  Body_SetCargoKey(node78, -1, 1)
  Body_SetCargoKey(node78, -1, 2)
  Node_EnterSimulation(node78)
  Game_LoadProgress_Advance(node0)
  node79 = Node_CreateNode("nod_generic", "ter_rockface_01_24")
  Node_AddSon(node7, node79)
  Body_SetCS(node79, MAT_Vector3(111.282491, 2883.671167, -1.518486), MAT_Vector3(42.606302, 0, 0))
  Node_ParseIniFile(node79, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node79, 0)
  Body_SetNameKey(node79, -1)
  Body_SetCargoKey(node79, -1, 0)
  Body_SetCargoKey(node79, -1, 1)
  Body_SetCargoKey(node79, -1, 2)
  Node_EnterSimulation(node79)
  Game_LoadProgress_Advance(node0)
  node80 = Node_CreateNode("nod_generic", "ter_rockface_02_24")
  Node_AddSon(node7, node80)
  Body_SetCS(node80, MAT_Vector3(142.25639, 2865.046657, 5.369928), MAT_Vector3(6.100681, 0, 0))
  Node_ParseIniFile(node80, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node80, 0)
  Body_SetNameKey(node80, -1)
  Body_SetCargoKey(node80, -1, 0)
  Body_SetCargoKey(node80, -1, 1)
  Body_SetCargoKey(node80, -1, 2)
  Node_EnterSimulation(node80)
  Game_LoadProgress_Advance(node0)
  node81 = Node_CreateNode("nod_generic", "ter_rockface_03_24")
  Node_AddSon(node7, node81)
  Body_SetCS(node81, MAT_Vector3(305.370066, 2920.58699, 8.5078), MAT_Vector3(-142.731176, 0, 0))
  Node_ParseIniFile(node81, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node81, 0)
  Body_SetNameKey(node81, -1)
  Body_SetCargoKey(node81, -1, 0)
  Body_SetCargoKey(node81, -1, 1)
  Body_SetCargoKey(node81, -1, 2)
  Node_EnterSimulation(node81)
  Game_LoadProgress_Advance(node0)
  node82 = Node_CreateNode("nod_generic", "ter_rockface_01_25")
  Node_AddSon(node7, node82)
  Body_SetCS(node82, MAT_Vector3(501.058687, 2991.511499, 4.35303), MAT_Vector3(6.366279, 0, 0))
  Node_ParseIniFile(node82, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node82, 0)
  Body_SetNameKey(node82, -1)
  Body_SetCargoKey(node82, -1, 0)
  Body_SetCargoKey(node82, -1, 1)
  Body_SetCargoKey(node82, -1, 2)
  Node_EnterSimulation(node82)
  Game_LoadProgress_Advance(node0)
  node83 = Node_CreateNode("nod_generic", "ter_rockface_02_25")
  Node_AddSon(node7, node83)
  Body_SetCS(node83, MAT_Vector3(629.020998, 2975.018436, 9.858219), MAT_Vector3(175.541313, 0, 0))
  Node_ParseIniFile(node83, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node83, 0)
  Body_SetNameKey(node83, -1)
  Body_SetCargoKey(node83, -1, 0)
  Body_SetCargoKey(node83, -1, 1)
  Body_SetCargoKey(node83, -1, 2)
  Node_EnterSimulation(node83)
  Game_LoadProgress_Advance(node0)
  node84 = Node_CreateNode("nod_generic", "ter_rockface_03_25")
  Node_AddSon(node7, node84)
  Body_SetCS(node84, MAT_Vector3(690.829004, 3012.81471, 3.053933), MAT_Vector3(-4.894019, 0, 0))
  Node_ParseIniFile(node84, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node84, 0)
  Body_SetNameKey(node84, -1)
  Body_SetCargoKey(node84, -1, 0)
  Body_SetCargoKey(node84, -1, 1)
  Body_SetCargoKey(node84, -1, 2)
  Node_EnterSimulation(node84)
  Game_LoadProgress_Advance(node0)
  node85 = Node_CreateNode("nod_generic", "ter_rockface_01_26")
  Node_AddSon(node7, node85)
  Body_SetCS(node85, MAT_Vector3(882.272283, 2934.830992, -6.924376), MAT_Vector3(-21.765232, 0, 0))
  Node_ParseIniFile(node85, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node85, 0)
  Body_SetNameKey(node85, -1)
  Body_SetCargoKey(node85, -1, 0)
  Body_SetCargoKey(node85, -1, 1)
  Body_SetCargoKey(node85, -1, 2)
  Node_EnterSimulation(node85)
  Game_LoadProgress_Advance(node0)
  node86 = Node_CreateNode("nod_generic", "ter_rockface_02_26")
  Node_AddSon(node7, node86)
  Body_SetCS(node86, MAT_Vector3(885.739807, 2936.782867, 5.369928), MAT_Vector3(-32.744033, 0, 0))
  Node_ParseIniFile(node86, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node86, 0)
  Body_SetNameKey(node86, -1)
  Body_SetCargoKey(node86, -1, 0)
  Body_SetCargoKey(node86, -1, 1)
  Body_SetCargoKey(node86, -1, 2)
  Node_EnterSimulation(node86)
  Game_LoadProgress_Advance(node0)
  node87 = Node_CreateNode("nod_generic", "ter_rockface_03_26")
  Node_AddSon(node7, node87)
  Body_SetCS(node87, MAT_Vector3(983.862368, 2796.79646, 8.5078), MAT_Vector3(107.383222, 0, 0))
  Node_ParseIniFile(node87, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node87, 0)
  Body_SetNameKey(node87, -1)
  Body_SetCargoKey(node87, -1, 0)
  Body_SetCargoKey(node87, -1, 1)
  Body_SetCargoKey(node87, -1, 2)
  Node_EnterSimulation(node87)
  Game_LoadProgress_Advance(node0)
  node88 = Node_CreateNode("nod_generic", "ter_rockface_01_27")
  Node_AddSon(node7, node88)
  Body_SetCS(node88, MAT_Vector3(1057.555828, 2589.925762, -4.199016), MAT_Vector3(-67.477361, 0, 0))
  Node_ParseIniFile(node88, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node88, 0)
  Body_SetNameKey(node88, -1)
  Body_SetCargoKey(node88, -1, 0)
  Body_SetCargoKey(node88, -1, 1)
  Body_SetCargoKey(node88, -1, 2)
  Node_EnterSimulation(node88)
  Game_LoadProgress_Advance(node0)
  node89 = Node_CreateNode("nod_generic", "ter_rockface_03_27")
  Node_AddSon(node7, node89)
  Body_SetCS(node89, MAT_Vector3(983.8624, 2796.796, 8.5078), MAT_Vector3(107.3832, 0, 0))
  Node_ParseIniFile(node89, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node89, 0)
  Body_SetNameKey(node89, -1)
  Body_SetCargoKey(node89, -1, 0)
  Body_SetCargoKey(node89, -1, 1)
  Body_SetCargoKey(node89, -1, 2)
  Node_EnterSimulation(node89)
  Game_LoadProgress_Advance(node0)
  node90 = Node_CreateNode("nod_generic", "ter_rockface_01_23_1")
  Node_AddSon(node7, node90)
  Body_SetCS(node90, MAT_Vector3(3907.103, 2765.457, 13.8064), MAT_Vector3(22.80837, 0, 0))
  Node_ParseIniFile(node90, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node90, 0)
  Body_SetNameKey(node90, -1)
  Body_SetCargoKey(node90, -1, 0)
  Body_SetCargoKey(node90, -1, 1)
  Body_SetCargoKey(node90, -1, 2)
  Node_EnterSimulation(node90)
  Game_LoadProgress_Advance(node0)
  node91 = Node_CreateNode("nod_generic", "ter_rockface_02_23_1")
  Node_AddSon(node7, node91)
  Body_SetCS(node91, MAT_Vector3(3669.156, 2634.183, 11.67927), MAT_Vector3(51.28648, 0, 0))
  Node_ParseIniFile(node91, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node91, 0)
  Body_SetNameKey(node91, -1)
  Body_SetCargoKey(node91, -1, 0)
  Body_SetCargoKey(node91, -1, 1)
  Body_SetCargoKey(node91, -1, 2)
  Node_EnterSimulation(node91)
  Game_LoadProgress_Advance(node0)
  node92 = Node_CreateNode("nod_generic", "ter_rockface_03_23_1")
  Node_AddSon(node7, node92)
  Body_SetCS(node92, MAT_Vector3(3603.876, 2617.247, 8.5078), MAT_Vector3(22.10578, 0, 0))
  Node_ParseIniFile(node92, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node92, 0)
  Body_SetNameKey(node92, -1)
  Body_SetCargoKey(node92, -1, 0)
  Body_SetCargoKey(node92, -1, 1)
  Body_SetCargoKey(node92, -1, 2)
  Node_EnterSimulation(node92)
  Game_LoadProgress_Advance(node0)
  node93 = Node_CreateNode("nod_generic", "ter_rockface_01_24_1")
  Node_AddSon(node7, node93)
  Body_SetCS(node93, MAT_Vector3(3797.709, 2584.068, 13.675463), MAT_Vector3(-160.4502, -0.016431, -0.322423))
  Node_ParseIniFile(node93, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node93, 0)
  Body_SetNameKey(node93, -1)
  Body_SetCargoKey(node93, -1, 0)
  Body_SetCargoKey(node93, -1, 1)
  Body_SetCargoKey(node93, -1, 2)
  Node_EnterSimulation(node93)
  Game_LoadProgress_Advance(node0)
  node94 = Node_CreateNode("nod_generic", "ter_rockface_02_24_1")
  Node_AddSon(node7, node94)
  Body_SetCS(node94, MAT_Vector3(3799.472, 2577.845, 11.67927), MAT_Vector3(-161.7975, 0, 0))
  Node_ParseIniFile(node94, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node94, 0)
  Body_SetNameKey(node94, -1)
  Body_SetCargoKey(node94, -1, 0)
  Body_SetCargoKey(node94, -1, 1)
  Body_SetCargoKey(node94, -1, 2)
  Node_EnterSimulation(node94)
  Game_LoadProgress_Advance(node0)
  node95 = Node_CreateNode("nod_generic", "ter_rockface_03_24_1")
  Node_AddSon(node7, node95)
  Body_SetCS(node95, MAT_Vector3(3619.056, 2489.946, 8.5078), MAT_Vector3(-137.2598, 0, 0))
  Node_ParseIniFile(node95, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node95, 0)
  Body_SetNameKey(node95, -1)
  Body_SetCargoKey(node95, -1, 0)
  Body_SetCargoKey(node95, -1, 1)
  Body_SetCargoKey(node95, -1, 2)
  Node_EnterSimulation(node95)
  Game_LoadProgress_Advance(node0)
  node96 = Node_CreateNode("nod_generic", "ter_rockface_01_25_1")
  Node_AddSon(node7, node96)
  Body_SetCS(node96, MAT_Vector3(4314.314, 2773.262, -16.93011), MAT_Vector3(-2.23223, 0, 0))
  Node_ParseIniFile(node96, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node96, 0)
  Body_SetNameKey(node96, -1)
  Body_SetCargoKey(node96, -1, 0)
  Body_SetCargoKey(node96, -1, 1)
  Body_SetCargoKey(node96, -1, 2)
  Node_EnterSimulation(node96)
  Game_LoadProgress_Advance(node0)
  node97 = Node_CreateNode("nod_generic", "ter_rockface_02_25_1")
  Node_AddSon(node7, node97)
  Body_SetCS(node97, MAT_Vector3(3905.091, 2769.826, 11.67927), MAT_Vector3(15.17803, 0, 0))
  Node_ParseIniFile(node97, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node97, 0)
  Body_SetNameKey(node97, -1)
  Body_SetCargoKey(node97, -1, 0)
  Body_SetCargoKey(node97, -1, 1)
  Body_SetCargoKey(node97, -1, 2)
  Node_EnterSimulation(node97)
  Game_LoadProgress_Advance(node0)
  node98 = Node_CreateNode("nod_generic", "ter_rockface_03_25_1")
  Node_AddSon(node7, node98)
  Body_SetCS(node98, MAT_Vector3(4111.376, 2801.657, 8.5078), MAT_Vector3(-0.666758, 0, 0))
  Node_ParseIniFile(node98, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node98, 0)
  Body_SetNameKey(node98, -1)
  Body_SetCargoKey(node98, -1, 0)
  Body_SetCargoKey(node98, -1, 1)
  Body_SetCargoKey(node98, -1, 2)
  Node_EnterSimulation(node98)
  Game_LoadProgress_Advance(node0)
  node99 = Node_CreateNode("nod_generic", "ter_rockface_01_26_1")
  Node_AddSon(node7, node99)
  Body_SetCS(node99, MAT_Vector3(4231.741, 2629.379, -4.874088), MAT_Vector3(-160.4502, -0.016431, -0.322423))
  Node_ParseIniFile(node99, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node99, 0)
  Body_SetNameKey(node99, -1)
  Body_SetCargoKey(node99, -1, 0)
  Body_SetCargoKey(node99, -1, 1)
  Body_SetCargoKey(node99, -1, 2)
  Node_EnterSimulation(node99)
  Game_LoadProgress_Advance(node0)
  node100 = Node_CreateNode("nod_generic", "ter_rockface_02_26_1")
  Node_AddSon(node7, node100)
  Body_SetCS(node100, MAT_Vector3(4081.477, 2660.268, 11.67927), MAT_Vector3(-161.7975, 0, 0))
  Node_ParseIniFile(node100, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node100, 0)
  Body_SetNameKey(node100, -1)
  Body_SetCargoKey(node100, -1, 0)
  Body_SetCargoKey(node100, -1, 1)
  Body_SetCargoKey(node100, -1, 2)
  Node_EnterSimulation(node100)
  Game_LoadProgress_Advance(node0)
  node101 = Node_CreateNode("nod_generic", "ter_rockface_03_26_1")
  Node_AddSon(node7, node101)
  Body_SetCS(node101, MAT_Vector3(4148.56, 2655.316, 8.5078), MAT_Vector3(173.2168, 0, 0))
  Node_ParseIniFile(node101, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node101, 0)
  Body_SetNameKey(node101, -1)
  Body_SetCargoKey(node101, -1, 0)
  Body_SetCargoKey(node101, -1, 1)
  Body_SetCargoKey(node101, -1, 2)
  Node_EnterSimulation(node101)
  Game_LoadProgress_Advance(node0)
  node102 = Node_CreateNode("nod_generic", "ter_rockface_04_1_1")
  Node_AddSon(node7, node102)
  Body_SetCS(node102, MAT_Vector3(2992.919, 2283.21, 6.3558), MAT_Vector3(17.99724, 0, 0))
  Node_ParseIniFile(node102, "osd/ter/ter_rockface_04.osd")
  Body_SetFriendOrFoeID(node102, 0)
  Body_SetNameKey(node102, -1)
  Body_SetCargoKey(node102, -1, 0)
  Body_SetCargoKey(node102, -1, 1)
  Body_SetCargoKey(node102, -1, 2)
  Node_EnterSimulation(node102)
  Game_LoadProgress_Advance(node0)
  node103 = Node_CreateNode("nod_generic", "ter_rockface_04_2_1")
  Node_AddSon(node7, node103)
  Body_SetCS(node103, MAT_Vector3(4365.496, 2721.923, 46.9608), MAT_Vector3(4.208322, 0, 0))
  Node_ParseIniFile(node103, "osd/ter/ter_rockface_04.osd")
  Body_SetFriendOrFoeID(node103, 0)
  Body_SetNameKey(node103, -1)
  Body_SetCargoKey(node103, -1, 0)
  Body_SetCargoKey(node103, -1, 1)
  Body_SetCargoKey(node103, -1, 2)
  Node_EnterSimulation(node103)
  Game_LoadProgress_Advance(node0)
  node104 = Node_CreateNode("nod_generic", "ter_rockface_01_28")
  Node_AddSon(node7, node104)
  Body_SetCS(node104, MAT_Vector3(0.00246, 2791.910359, -6.924376), MAT_Vector3(0.46122, 0.114168, 0.049501))
  Node_ParseIniFile(node104, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node104, 0)
  Body_SetNameKey(node104, -1)
  Body_SetCargoKey(node104, -1, 0)
  Body_SetCargoKey(node104, -1, 1)
  Body_SetCargoKey(node104, -1, 2)
  Node_EnterSimulation(node104)
  Game_LoadProgress_Advance(node0)
  node105 = Node_CreateNode("nod_generic", "ter_rockface_02_28")
  Node_AddSon(node7, node105)
  Body_SetCS(node105, MAT_Vector3(-20.489187, 2651.890915, 5.369928), MAT_Vector3(-160.874814, 0.19474, -0.546942))
  Node_ParseIniFile(node105, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node105, 0)
  Body_SetNameKey(node105, -1)
  Body_SetCargoKey(node105, -1, 0)
  Body_SetCargoKey(node105, -1, 1)
  Body_SetCargoKey(node105, -1, 2)
  Node_EnterSimulation(node105)
  Game_LoadProgress_Advance(node0)
  node106 = Node_CreateNode("nod_generic", "ter_rockface_03_28")
  Node_AddSon(node7, node106)
  Body_SetCS(node106, MAT_Vector3(-194.345591, 2635.449203, 8.5078), MAT_Vector3(41.729017, 0, 0))
  Node_ParseIniFile(node106, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node106, 0)
  Body_SetNameKey(node106, -1)
  Body_SetCargoKey(node106, -1, 0)
  Body_SetCargoKey(node106, -1, 1)
  Body_SetCargoKey(node106, -1, 2)
  Node_EnterSimulation(node106)
  Game_LoadProgress_Advance(node0)
  node107 = Node_CreateNode("nod_generic", "ter_rockface_01_29")
  Node_AddSon(node7, node107)
  Body_SetCS(node107, MAT_Vector3(-257.656569, 2682.669838, -0.689573), MAT_Vector3(-131.113373, 0, 0))
  Node_ParseIniFile(node107, "osd/ter/ter_rockface_01.osd")
  Body_SetFriendOrFoeID(node107, 0)
  Body_SetNameKey(node107, -1)
  Body_SetCargoKey(node107, -1, 0)
  Body_SetCargoKey(node107, -1, 1)
  Body_SetCargoKey(node107, -1, 2)
  Node_EnterSimulation(node107)
  Game_LoadProgress_Advance(node0)
  node108 = Node_CreateNode("nod_generic", "ter_rockface_02_29")
  Node_AddSon(node7, node108)
  Body_SetCS(node108, MAT_Vector3(-265.749529, 2685.981737, 5.369928), MAT_Vector3(-114.176579, 0, 0))
  Node_ParseIniFile(node108, "osd/ter/ter_rockface_02.osd")
  Body_SetFriendOrFoeID(node108, 0)
  Body_SetNameKey(node108, -1)
  Body_SetCargoKey(node108, -1, 0)
  Body_SetCargoKey(node108, -1, 1)
  Body_SetCargoKey(node108, -1, 2)
  Node_EnterSimulation(node108)
  Game_LoadProgress_Advance(node0)
  node109 = Node_CreateNode("nod_generic", "ter_rockface_03_29")
  Node_AddSon(node7, node109)
  Body_SetCS(node109, MAT_Vector3(-301.666272, 2541.653367, 8.5078), MAT_Vector3(-154.802372, 0, 0))
  Node_ParseIniFile(node109, "osd/ter/ter_rockface_03.osd")
  Body_SetFriendOrFoeID(node109, 0)
  Body_SetNameKey(node109, -1)
  Body_SetCargoKey(node109, -1, 0)
  Body_SetCargoKey(node109, -1, 1)
  Body_SetCargoKey(node109, -1, 2)
  Node_EnterSimulation(node109)
  Game_LoadProgress_Advance(node0)
  node110 = Node_CreateNode("nod_generic", "ter_reef_l_1")
  Node_AddSon(node7, node110)
  Body_SetCS(node110, MAT_Vector3(3661.750114, 2789.774227, 340.652979), MAT_Vector3(-159.808863, 0, 0))
  Node_ParseIniFile(node110, "osd/ter/ter_reef_l.osd")
  Body_SetFriendOrFoeID(node110, 0)
  Body_SetNameKey(node110, -1)
  Body_SetCargoKey(node110, -1, 0)
  Body_SetCargoKey(node110, -1, 1)
  Body_SetCargoKey(node110, -1, 2)
  Node_EnterSimulation(node110)
  Game_LoadProgress_Advance(node0)
  node111 = Node_CreateNode("nod_generic", "ter_reef_xl_1")
  Node_AddSon(node7, node111)
  Body_SetCS(node111, MAT_Vector3(3708.258203, 2412.961602, 341.904143), MAT_Vector3(30.152893, 0, 0))
  Node_ParseIniFile(node111, "osd/ter/ter_reef_xl.osd")
  Body_SetFriendOrFoeID(node111, 0)
  Body_SetNameKey(node111, -1)
  Body_SetCargoKey(node111, -1, 0)
  Body_SetCargoKey(node111, -1, 1)
  Body_SetCargoKey(node111, -1, 2)
  Node_EnterSimulation(node111)
  Game_LoadProgress_Advance(node0)
  node112 = Node_CreateNode("nod_fx_sky", "fx_sky_3H4_1")
  Node_AddSon(node7, node112)
  Node_ParseIniFile(node112, "osd/fx_sky/fx_sky_3H4.osd")
  Node_EnterSimulation(node112)
  Game_LoadProgress_Advance(node0)
  node113 = Node_CreateNode("nod_fx_rays", "fx_rays_3H4_1")
  Node_AddSon(node7, node113)
  Node_ParseIniFile(node113, "osd/fx_rays/fx_rays_3H4.osd")
  Node_EnterSimulation(node113)
  Game_LoadProgress_Advance(node0)
  node114 = Node_CreateNode("NOD_Scenario", "Scenario_Dynamic")
  Node_AddSon(node0, node114)
  Node_EnterSimulation(node114)
  Game_LoadProgress_Advance(node0)
  node115 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node114, node115)
  Node_EnterSimulation(node115)
  Game_LoadProgress_Advance(node0)
  node116 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node114, node116)
  Node_EnterSimulation(node116)
  Game_LoadProgress_Advance(node0)
  node117 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node116, node117)
  Game_LoadProgress_Advance(node0)
  node118 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node117, node118)
  Position_SetPosition(node118, MAT_Vector3(382.085625, 2537.791164, 116.765625))
  Position_SetRadius(node118, 5)
  Game_LoadProgress_Advance(node0)
  node119 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node117, node119)
  Position_SetPosition(node119, MAT_Vector3(927.09964, 2469.88303, 116.765625))
  Position_SetRadius(node119, 5)
  Game_LoadProgress_Advance(node0)
  node120 = Node_CreateNode("NOD_Position", "pos_3")
  Node_AddSon(node117, node120)
  Position_SetPosition(node120, MAT_Vector3(537.88518, 2820.840801, 116.765625))
  Position_SetRadius(node120, 5)
  Game_LoadProgress_Advance(node0)
  node121 = Node_CreateNode("NOD_Position", "pos_4")
  Node_AddSon(node117, node121)
  Position_SetPosition(node121, MAT_Vector3(630.051215, 2335.978909, 116.360374))
  Position_SetRadius(node121, 5)
  Game_LoadProgress_Advance(node0)
  node122 = Node_CreateNode("NOD_Position", "pos_5")
  Node_AddSon(node117, node122)
  Position_SetPosition(node122, MAT_Vector3(860.759607, 2762.424049, 116.765625))
  Position_SetRadius(node122, 5)
  Game_LoadProgress_Advance(node0)
  node123 = Node_CreateNode("NOD_Position", "pos_6")
  Node_AddSon(node117, node123)
  Position_SetPosition(node123, MAT_Vector3(382.336078, 2537.785133, 116.654223))
  Position_SetRadius(node123, 5)
  Game_LoadProgress_Advance(node0)
  node124 = Node_CreateNode("NOD_FX_Stream", "Stream_1")
  Node_AddSon(node116, node124)
  Body_SetCS(node124, MAT_Vector3(2104.206154, 1977.76796, -8.80237), MAT_Vector3())
  Stream_SetBoxExtension(node124, 2220, 2220, 50)
  Stream_SetCurrentDirection(node124, MAT_Vector3(0, 0, 0))
  Game_LoadProgress_Advance(node0)
  node125 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node114, node125)
  Node_EnterSimulation(node125)
  Game_LoadProgress_Advance(node0)
  node126 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node114, node126)
  Node_EnterSimulation(node126)
  Game_LoadProgress_Advance(node0)
  node127 = Node_CreateNode("NOD_Trigger", "EndOfCanyon")
  Node_AddSon(node126, node127)
  Body_SetFriendOrFoeID(node127, 0)
  Body_SetCS(node127, MAT_Vector3(1105.911904, 2453.787616, 105.9115), MAT_Vector3(-95.200171, 0, 0))
  Trigger_SetBoxMode(node127, 100, 20, 100)
  Node_EnterSimulation(node127)
  Game_LoadProgress_Advance(node0)
  node128 = Node_CreateNode("NOD_Trigger", "Send_261_Trigger")
  Node_AddSon(node126, node128)
  Body_SetFriendOrFoeID(node128, 0)
  Body_SetCS(node128, MAT_Vector3(2485.613011, 2228.660125, 70.431976), MAT_Vector3(-90.397687, 0, 0))
  Trigger_SetBoxMode(node128, 100, 20, 100)
  Node_EnterSimulation(node128)
  Game_LoadProgress_Advance(node0)
  node129 = Node_CreateNode("NOD_Trigger", "Send_262_Trigger")
  Node_AddSon(node126, node129)
  Body_SetFriendOrFoeID(node129, 0)
  Body_SetCS(node129, MAT_Vector3(1969.274886, 2146.791731, 70.43198), MAT_Vector3(-45.267173, 0, 0))
  Trigger_SetBoxMode(node129, 100, 20, 100)
  Node_EnterSimulation(node129)
  Game_LoadProgress_Advance(node0)
  node130 = Node_CreateNode("NOD_Trigger", "Send_263_Trigger")
  Node_AddSon(node126, node130)
  Body_SetFriendOrFoeID(node130, 0)
  Body_SetCS(node130, MAT_Vector3(1635.024475, 1407.174062, 70.43198), MAT_Vector3(-86.145861, 0, 0))
  Trigger_SetBoxMode(node130, 100, 20, 100)
  Node_EnterSimulation(node130)
  Game_LoadProgress_Advance(node0)
  node131 = Node_CreateNode("NOD_Trigger", "Send_264_Trigger")
  Node_AddSon(node126, node131)
  Body_SetFriendOrFoeID(node131, 0)
  Body_SetCS(node131, MAT_Vector3(1247.478872, 2157.839947, 70.43198), MAT_Vector3(-162.276333, 0, 0))
  Trigger_SetBoxMode(node131, 100, 20, 100)
  Node_EnterSimulation(node131)
  Game_LoadProgress_Advance(node0)
  node132 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node114, node132)
  Node_EnterSimulation(node132)
  Game_LoadProgress_Advance(node0)
  node133 = Node_CreateNode("nod_player", "player1")
  Node_AddSon(node132, node133)
  Body_SetCS(node133, MAT_Vector3(1142.117774, 2413.882491, 39.747011), MAT_Vector3(66.382705, 0, 0))
  Node_ParseIniFile(node133, "osd/pla/pla_ship3.osd")
  Body_SetFriendOrFoeID(node133, 0)
  Node_EnterSimulation(node133)
  Game_LoadProgress_Advance(node0)
  node134 = Node_CreateNode("nod_waypoint", "nav_waypoint_1")
  Node_AddSon(node132, node134)
  Body_SetPosition(node134, MAT_Vector3(2895.376445, 2262.055608, 71.74924))
  WayPoint_SetRadius(node134, 150)
  Node_ParseIniFile(node134, "osd/nav/nav_waypoint.osd")
  Node_EnterSimulation(node134)
  Game_LoadProgress_Advance(node0)
  node135 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_1")
  Node_AddSon(node132, node135)
  Body_SetPosition(node135, MAT_Vector3(1924.148747, 2115.202371, 66.683963))
  WayPoint_SetRadius(node135, 150)
  Node_ParseIniFile(node135, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node135)
  Game_LoadProgress_Advance(node0)
  node136 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_2")
  Node_AddSon(node132, node136)
  Body_SetPosition(node136, MAT_Vector3(1773.57467, 1458.698384, 66.68396))
  WayPoint_SetRadius(node136, 150)
  Node_ParseIniFile(node136, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node136)
  Game_LoadProgress_Advance(node0)
  node137 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_3")
  Node_AddSon(node132, node137)
  Body_SetPosition(node137, MAT_Vector3(1378.196935, 1467.145722, 66.68396))
  WayPoint_SetRadius(node137, 150)
  Node_ParseIniFile(node137, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node137)
  Game_LoadProgress_Advance(node0)
  node138 = Node_CreateNode("nod_waypoint", "nav_nextwaypoint_4")
  Node_AddSon(node132, node138)
  Body_SetPosition(node138, MAT_Vector3(1134.722564, 2445.151229, 66.68396))
  WayPoint_SetRadius(node138, 150)
  Node_ParseIniFile(node138, "osd/nav/nav_nextwaypoint.osd")
  Node_EnterSimulation(node138)
  Game_LoadProgress_Advance(node0)
  node139 = Node_CreateNode("nod_vessel", "bio_sphere_1")
  Node_AddSon(node132, node139)
  Body_SetCS(node139, MAT_Vector3(322.020732, 2542.316423, 115.860579), MAT_Vector3(126.782825, 0.537904, 0.071456))
  Node_ParseIniFile(node139, "osd/bio/bio_sphere.osd")
  Body_SetFriendOrFoeID(node139, 2)
  Body_SetNameKey(node139, -1)
  Body_SetCargoKey(node139, -1, 0)
  Body_SetCargoKey(node139, -1, 1)
  Body_SetCargoKey(node139, -1, 2)
  Node_EnterSimulation(node139)
  Game_LoadProgress_Advance(node0)
  node140 = Node_CreateNode("nod_waypoint", "nav_attack_1")
  Node_AddSon(node132, node140)
  Body_SetPosition(node140, MAT_Vector3(0, 0, 0))
  WayPoint_SetRadius(node140, 5)
  Node_ParseIniFile(node140, "osd/nav/nav_attack.osd")
  Node_EnterSimulation(node140)
  Game_LoadProgress_Advance(node0)
  node141 = Node_CreateNode("NOD_Camera", "Camera")
  Node_AddSon(node0, node141)
  Camera_SetBackPlane(node141, 512)
  Node_EnterSimulation(node141)
  Game_LoadProgress_Advance(node0)
  node142 = Node_CreateNode("NOD_Scenario", "vfx")
  Node_AddSon(node0, node142)
  Node_EnterSimulation(node142)
  Game_LoadProgress_Advance(node0)
  node143 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node142, node143)
  Node_EnterSimulation(node143)
  Game_LoadProgress_Advance(node0)
  node144 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node142, node144)
  Node_EnterSimulation(node144)
  Game_LoadProgress_Advance(node0)
  node145 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node142, node145)
  Node_EnterSimulation(node145)
  Game_LoadProgress_Advance(node0)
  node146 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node142, node146)
  Node_EnterSimulation(node146)
  Game_LoadProgress_Advance(node0)
  node147 = Node_CreateNode("NOD_Trigger", "fx1")
  Node_AddSon(node146, node147)
  Body_SetFriendOrFoeID(node147, 0)
  Body_SetCS(node147, MAT_Vector3(3665.586, 2578.692, 105.9115), MAT_Vector3(-59.7224, 0, 0))
  Trigger_SetBoxMode(node147, 80, 20, 100)
  Node_EnterSimulation(node147)
  Game_LoadProgress_Advance(node0)
  node148 = Node_CreateNode("NOD_Trigger", "fx2")
  Node_AddSon(node146, node148)
  Body_SetFriendOrFoeID(node148, 0)
  Body_SetCS(node148, MAT_Vector3(3601.481, 2551.131, 105.9115), MAT_Vector3(-59.7224, 0, 0))
  Trigger_SetBoxMode(node148, 100, 20, 100)
  Node_EnterSimulation(node148)
  Game_LoadProgress_Advance(node0)
  node149 = Node_CreateNode("NOD_Trigger", "fx3")
  Node_AddSon(node146, node149)
  Body_SetFriendOrFoeID(node149, 0)
  Body_SetCS(node149, MAT_Vector3(3563.849726, 2515.864758, 105.9115), MAT_Vector3(-59.7224, 0, 0))
  Trigger_SetBoxMode(node149, 100, 20, 100)
  Node_EnterSimulation(node149)
  Game_LoadProgress_Advance(node0)
  node150 = Node_CreateNode("NOD_Trigger", "fx4")
  Node_AddSon(node146, node150)
  Body_SetFriendOrFoeID(node150, 0)
  Body_SetCS(node150, MAT_Vector3(3501.194437, 2490.106153, 105.9115), MAT_Vector3(-80.708444, 0, 0))
  Trigger_SetBoxMode(node150, 100, 20, 100)
  Node_EnterSimulation(node150)
  Game_LoadProgress_Advance(node0)
  node151 = Node_CreateNode("NOD_Trigger", "fx5")
  Node_AddSon(node146, node151)
  Body_SetFriendOrFoeID(node151, 0)
  Body_SetCS(node151, MAT_Vector3(3418.382176, 2474.003346, 105.9115), MAT_Vector3(-59.729861, 0, 0))
  Trigger_SetBoxMode(node151, 100, 20, 100)
  Node_EnterSimulation(node151)
  Game_LoadProgress_Advance(node0)
  node152 = Node_CreateNode("NOD_Trigger", "fx6")
  Node_AddSon(node146, node152)
  Body_SetFriendOrFoeID(node152, 0)
  Body_SetCS(node152, MAT_Vector3(3274.21942, 2426.251906, 105.9115), MAT_Vector3(-68.446886, 0, 0))
  Trigger_SetBoxMode(node152, 100, 20, 100)
  Node_EnterSimulation(node152)
  Game_LoadProgress_Advance(node0)
  node153 = Node_CreateNode("NOD_Trigger", "fx7")
  Node_AddSon(node146, node153)
  Body_SetFriendOrFoeID(node153, 0)
  Body_SetCS(node153, MAT_Vector3(2895.089234, 2268.772572, 105.9115), MAT_Vector3(-92.074889, -0.094579, -0.316953))
  Trigger_SetBoxMode(node153, 200, 40, 100)
  Node_EnterSimulation(node153)
  Game_LoadProgress_Advance(node0)
  node154 = Node_CreateNode("NOD_Trigger", "fx8")
  Node_AddSon(node146, node154)
  Body_SetFriendOrFoeID(node154, 0)
  Body_SetCS(node154, MAT_Vector3(2598.598384, 2240.549732, 105.9115), MAT_Vector3(-90.651983, 0, 0))
  Trigger_SetBoxMode(node154, 100, 20, 100)
  Node_EnterSimulation(node154)
  Game_LoadProgress_Advance(node0)
  node155 = Node_CreateNode("NOD_Trigger", "fx9")
  Node_AddSon(node146, node155)
  Body_SetFriendOrFoeID(node155, 0)
  Body_SetCS(node155, MAT_Vector3(2379.749001, 2246.214843, 105.9115), MAT_Vector3(-90.65198, 0, 0))
  Trigger_SetBoxMode(node155, 100, 20, 100)
  Node_EnterSimulation(node155)
  Game_LoadProgress_Advance(node0)
  node156 = Node_CreateNode("NOD_Trigger", "fx10")
  Node_AddSon(node146, node156)
  Body_SetFriendOrFoeID(node156, 0)
  Body_SetCS(node156, MAT_Vector3(2014.462202, 2169.165891, 105.9115), MAT_Vector3(-57.235399, 0, 0))
  Trigger_SetBoxMode(node156, 100, 20, 100)
  Node_EnterSimulation(node156)
  Game_LoadProgress_Advance(node0)
  node157 = Node_CreateNode("NOD_Trigger", "fx11")
  Node_AddSon(node146, node157)
  Body_SetFriendOrFoeID(node157, 0)
  Body_SetCS(node157, MAT_Vector3(1844.960571, 1895.85907, 105.9115), MAT_Vector3(8.192508, 0, 0))
  Trigger_SetBoxMode(node157, 100, 20, 100)
  Node_EnterSimulation(node157)
  Game_LoadProgress_Advance(node0)
  node158 = Node_CreateNode("NOD_Trigger", "fx12")
  Node_AddSon(node146, node158)
  Body_SetFriendOrFoeID(node158, 0)
  Body_SetCS(node158, MAT_Vector3(1812.284417, 1477.793546, 105.9115), MAT_Vector3(-36.397781, -0.009827, -0.025184))
  Trigger_SetBoxMode(node158, 100, 20, 100)
  Node_EnterSimulation(node158)
  Game_LoadProgress_Advance(node0)
  node159 = Node_CreateNode("NOD_Trigger", "fx13")
  Node_AddSon(node146, node159)
  Body_SetFriendOrFoeID(node159, 0)
  Body_SetCS(node159, MAT_Vector3(1550.396692, 1389.176246, 105.9115), MAT_Vector3(-83.431679, 0, 0))
  Trigger_SetBoxMode(node159, 100, 20, 100)
  Node_EnterSimulation(node159)
  Game_LoadProgress_Advance(node0)
  node160 = Node_CreateNode("NOD_Trigger", "fx14")
  Node_AddSon(node146, node160)
  Body_SetFriendOrFoeID(node160, 0)
  Body_SetCS(node160, MAT_Vector3(1291.036164, 1565.656841, 105.9115), MAT_Vector3(-126.647304, 0, 0))
  Trigger_SetBoxMode(node160, 100, 20, 100)
  Node_EnterSimulation(node160)
  Game_LoadProgress_Advance(node0)
  node161 = Node_CreateNode("NOD_Trigger", "fx15")
  Node_AddSon(node146, node161)
  Body_SetFriendOrFoeID(node161, 0)
  Body_SetCS(node161, MAT_Vector3(1237.272798, 1746.822567, 105.9115), MAT_Vector3(-163.472593, 0, 0))
  Trigger_SetBoxMode(node161, 100, 20, 100)
  Node_EnterSimulation(node161)
  Game_LoadProgress_Advance(node0)
  node162 = Node_CreateNode("NOD_Trigger", "fx16")
  Node_AddSon(node146, node162)
  Body_SetFriendOrFoeID(node162, 0)
  Body_SetCS(node162, MAT_Vector3(1253.923725, 1985.644493, 105.9115), MAT_Vector3(-168.968932, 0, 0))
  Trigger_SetBoxMode(node162, 100, 20, 100)
  Node_EnterSimulation(node162)
  Game_LoadProgress_Advance(node0)
  node163 = Node_CreateNode("NOD_Trigger", "fx17")
  Node_AddSon(node146, node163)
  Body_SetFriendOrFoeID(node163, 0)
  Body_SetCS(node163, MAT_Vector3(1245.199578, 2101.339619, 105.9115), MAT_Vector3(-168.9689, 0, 0))
  Trigger_SetBoxMode(node163, 100, 20, 100)
  Node_EnterSimulation(node163)
  Game_LoadProgress_Advance(node0)
  node164 = Node_CreateNode("NOD_Trigger", "fx18")
  Node_AddSon(node146, node164)
  Body_SetFriendOrFoeID(node164, 0)
  Body_SetCS(node164, MAT_Vector3(1214.162359, 2271.521443, 105.9115), MAT_Vector3(-163.646861, 0, 0))
  Trigger_SetBoxMode(node164, 100, 20, 100)
  Node_EnterSimulation(node164)
  Game_LoadProgress_Advance(node0)
  node165 = Node_CreateNode("NOD_Trigger", "fx19")
  Node_AddSon(node146, node165)
  Body_SetFriendOrFoeID(node165, 0)
  Body_SetCS(node165, MAT_Vector3(1155.042479, 2396.567721, 105.9115), MAT_Vector3(-136.426652, 0, 0))
  Trigger_SetBoxMode(node165, 100, 20, 100)
  Node_EnterSimulation(node165)
  Game_LoadProgress_Advance(node0)
  node166 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node142, node166)
  Node_EnterSimulation(node166)
  Game_LoadProgress_Advance(node0)
  node167 = Node_CreateNode("nod_vessel", "fx1_dir_explosion_magma_01_1")
  Node_AddSon(node166, node167)
  Body_SetCS(node167, MAT_Vector3(3579.310257, 2534.62919, 39.012057), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node167, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node167, 0)
  Body_SetNameKey(node167, -1)
  Body_SetCargoKey(node167, -1, 0)
  Body_SetCargoKey(node167, -1, 1)
  Body_SetCargoKey(node167, -1, 2)
  Node_EnterSimulation(node167)
  Game_LoadProgress_Advance(node0)
  node168 = Node_CreateNode("nod_vessel", "fx2_dir_explosion_magma_01_2")
  Node_AddSon(node166, node168)
  Body_SetCS(node168, MAT_Vector3(3501.356418, 2498.928397, 24.087381), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node168, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node168, 0)
  Body_SetNameKey(node168, -1)
  Body_SetCargoKey(node168, -1, 0)
  Body_SetCargoKey(node168, -1, 1)
  Body_SetCargoKey(node168, -1, 2)
  Node_EnterSimulation(node168)
  Game_LoadProgress_Advance(node0)
  node169 = Node_CreateNode("nod_vessel", "fx2_dir_explosion_magma_01_3")
  Node_AddSon(node166, node169)
  Body_SetCS(node169, MAT_Vector3(3500.235493, 2486.086758, 32.67335), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node169, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node169, 0)
  Body_SetNameKey(node169, -1)
  Body_SetCargoKey(node169, -1, 0)
  Body_SetCargoKey(node169, -1, 1)
  Body_SetCargoKey(node169, -1, 2)
  Node_EnterSimulation(node169)
  Game_LoadProgress_Advance(node0)
  node170 = Node_CreateNode("nod_vessel", "fx3_dir_explosion_magma_02_1")
  Node_AddSon(node166, node170)
  Body_SetCS(node170, MAT_Vector3(3430.051229, 2501.925568, 27.379963), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node170, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node170, 0)
  Body_SetNameKey(node170, -1)
  Body_SetCargoKey(node170, -1, 0)
  Body_SetCargoKey(node170, -1, 1)
  Body_SetCargoKey(node170, -1, 2)
  Node_EnterSimulation(node170)
  Game_LoadProgress_Advance(node0)
  node171 = Node_CreateNode("nod_vessel", "fx4_dir_explosion_magma_02_2")
  Node_AddSon(node166, node171)
  Body_SetCS(node171, MAT_Vector3(3346.991916, 2439.186284, 19.843493), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node171, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node171, 0)
  Body_SetNameKey(node171, -1)
  Body_SetCargoKey(node171, -1, 0)
  Body_SetCargoKey(node171, -1, 1)
  Body_SetCargoKey(node171, -1, 2)
  Node_EnterSimulation(node171)
  Game_LoadProgress_Advance(node0)
  node172 = Node_CreateNode("nod_vessel", "fx4_dir_explosion_magma_01_4")
  Node_AddSon(node166, node172)
  Body_SetCS(node172, MAT_Vector3(3340.068369, 2461.678635, 18.458721), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node172, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node172, 0)
  Body_SetNameKey(node172, -1)
  Body_SetCargoKey(node172, -1, 0)
  Body_SetCargoKey(node172, -1, 1)
  Body_SetCargoKey(node172, -1, 2)
  Node_EnterSimulation(node172)
  Game_LoadProgress_Advance(node0)
  node173 = Node_CreateNode("nod_vessel", "fx5_dir_explosion_magma_01_5")
  Node_AddSon(node166, node173)
  Body_SetCS(node173, MAT_Vector3(3311.756278, 2419.654392, 18.45872), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node173, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node173, 0)
  Body_SetNameKey(node173, -1)
  Body_SetCargoKey(node173, -1, 0)
  Body_SetCargoKey(node173, -1, 1)
  Body_SetCargoKey(node173, -1, 2)
  Node_EnterSimulation(node173)
  Game_LoadProgress_Advance(node0)
  node174 = Node_CreateNode("nod_vessel", "fx5_dir_explosion_magma_01_6")
  Node_AddSon(node166, node174)
  Body_SetCS(node174, MAT_Vector3(3294.604146, 2440.842745, 18.033709), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node174, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node174, 0)
  Body_SetNameKey(node174, -1)
  Body_SetCargoKey(node174, -1, 0)
  Body_SetCargoKey(node174, -1, 1)
  Body_SetCargoKey(node174, -1, 2)
  Node_EnterSimulation(node174)
  Game_LoadProgress_Advance(node0)
  node175 = Node_CreateNode("nod_vessel", "fx6_dir_explosion_magma_02_3")
  Node_AddSon(node166, node175)
  Body_SetCS(node175, MAT_Vector3(3155.285233, 2361.129708, 10.9243), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node175, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node175, 0)
  Body_SetNameKey(node175, -1)
  Body_SetCargoKey(node175, -1, 0)
  Body_SetCargoKey(node175, -1, 1)
  Body_SetCargoKey(node175, -1, 2)
  Node_EnterSimulation(node175)
  Game_LoadProgress_Advance(node0)
  node176 = Node_CreateNode("nod_vessel", "fx7_dir_explosion_magma_02_4")
  Node_AddSon(node166, node176)
  Body_SetCS(node176, MAT_Vector3(2814.569046, 2270.751832, 16.655832), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node176, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node176, 0)
  Body_SetNameKey(node176, -1)
  Body_SetCargoKey(node176, -1, 0)
  Body_SetCargoKey(node176, -1, 1)
  Body_SetCargoKey(node176, -1, 2)
  Node_EnterSimulation(node176)
  Game_LoadProgress_Advance(node0)
  node177 = Node_CreateNode("nod_vessel", "fx7_dir_explosion_magma_02_5")
  Node_AddSon(node166, node177)
  Body_SetCS(node177, MAT_Vector3(2764.957657, 2235.829628, 20.096945), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node177, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node177, 0)
  Body_SetNameKey(node177, -1)
  Body_SetCargoKey(node177, -1, 0)
  Body_SetCargoKey(node177, -1, 1)
  Body_SetCargoKey(node177, -1, 2)
  Node_EnterSimulation(node177)
  Game_LoadProgress_Advance(node0)
  node178 = Node_CreateNode("nod_vessel", "fx7_dir_explosion_magma_01_7")
  Node_AddSon(node166, node178)
  Body_SetCS(node178, MAT_Vector3(2834.146994, 2321.843261, 15.700441), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node178, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node178, 0)
  Body_SetNameKey(node178, -1)
  Body_SetCargoKey(node178, -1, 0)
  Body_SetCargoKey(node178, -1, 1)
  Body_SetCargoKey(node178, -1, 2)
  Node_EnterSimulation(node178)
  Game_LoadProgress_Advance(node0)
  node179 = Node_CreateNode("nod_vessel", "fx8_dir_explosion_magma_01_8")
  Node_AddSon(node166, node179)
  Body_SetCS(node179, MAT_Vector3(2477.508697, 2214.628593, 15.70044), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node179, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node179, 0)
  Body_SetNameKey(node179, -1)
  Body_SetCargoKey(node179, -1, 0)
  Body_SetCargoKey(node179, -1, 1)
  Body_SetCargoKey(node179, -1, 2)
  Node_EnterSimulation(node179)
  Game_LoadProgress_Advance(node0)
  node180 = Node_CreateNode("nod_vessel", "fx9_dir_explosion_magma_01_9")
  Node_AddSon(node166, node180)
  Body_SetCS(node180, MAT_Vector3(2225.811297, 2224.154834, 15.552523), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node180, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node180, 0)
  Body_SetNameKey(node180, -1)
  Body_SetCargoKey(node180, -1, 0)
  Body_SetCargoKey(node180, -1, 1)
  Body_SetCargoKey(node180, -1, 2)
  Node_EnterSimulation(node180)
  Game_LoadProgress_Advance(node0)
  node181 = Node_CreateNode("nod_vessel", "fx9_dir_explosion_magma_02_6")
  Node_AddSon(node166, node181)
  Body_SetCS(node181, MAT_Vector3(2226.527367, 2227.9845, 18.421321), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node181, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node181, 0)
  Body_SetNameKey(node181, -1)
  Body_SetCargoKey(node181, -1, 0)
  Body_SetCargoKey(node181, -1, 1)
  Body_SetCargoKey(node181, -1, 2)
  Node_EnterSimulation(node181)
  Game_LoadProgress_Advance(node0)
  node182 = Node_CreateNode("nod_vessel", "fx10_dir_explosion_magma_02_7")
  Node_AddSon(node166, node182)
  Body_SetCS(node182, MAT_Vector3(1885.213228, 2091.470068, 18.42132), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node182, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node182, 0)
  Body_SetNameKey(node182, -1)
  Body_SetCargoKey(node182, -1, 0)
  Body_SetCargoKey(node182, -1, 1)
  Body_SetCargoKey(node182, -1, 2)
  Node_EnterSimulation(node182)
  Game_LoadProgress_Advance(node0)
  node183 = Node_CreateNode("nod_vessel", "fx10_dir_explosion_magma_02_8")
  Node_AddSon(node166, node183)
  Body_SetCS(node183, MAT_Vector3(1904.302229, 2011.716494, 18.42132), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node183, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node183, 0)
  Body_SetNameKey(node183, -1)
  Body_SetCargoKey(node183, -1, 0)
  Body_SetCargoKey(node183, -1, 1)
  Body_SetCargoKey(node183, -1, 2)
  Node_EnterSimulation(node183)
  Game_LoadProgress_Advance(node0)
  node184 = Node_CreateNode("nod_vessel", "fx11_dir_explosion_magma_01_10")
  Node_AddSon(node166, node184)
  Body_SetCS(node184, MAT_Vector3(1835.948932, 1794.027913, 12.905611), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node184, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node184, 0)
  Body_SetNameKey(node184, -1)
  Body_SetCargoKey(node184, -1, 0)
  Body_SetCargoKey(node184, -1, 1)
  Body_SetCargoKey(node184, -1, 2)
  Node_EnterSimulation(node184)
  Game_LoadProgress_Advance(node0)
  node185 = Node_CreateNode("nod_vessel", "fx11_dir_explosion_magma_01_11")
  Node_AddSon(node166, node185)
  Body_SetCS(node185, MAT_Vector3(1885.052828, 1812.549462, 15.261092), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node185, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node185, 0)
  Body_SetNameKey(node185, -1)
  Body_SetCargoKey(node185, -1, 0)
  Body_SetCargoKey(node185, -1, 1)
  Body_SetCargoKey(node185, -1, 2)
  Node_EnterSimulation(node185)
  Game_LoadProgress_Advance(node0)
  node186 = Node_CreateNode("nod_vessel", "fx12_dir_explosion_magma_02_9")
  Node_AddSon(node166, node186)
  Body_SetCS(node186, MAT_Vector3(1772.156641, 1452.17921, 18.42132), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node186, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node186, 0)
  Body_SetNameKey(node186, -1)
  Body_SetCargoKey(node186, -1, 0)
  Body_SetCargoKey(node186, -1, 1)
  Body_SetCargoKey(node186, -1, 2)
  Node_EnterSimulation(node186)
  Game_LoadProgress_Advance(node0)
  node187 = Node_CreateNode("nod_vessel", "fx12_dir_explosion_magma_01_12")
  Node_AddSon(node166, node187)
  Body_SetCS(node187, MAT_Vector3(1746.241153, 1414.561021, 12.90561), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node187, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node187, 0)
  Body_SetNameKey(node187, -1)
  Body_SetCargoKey(node187, -1, 0)
  Body_SetCargoKey(node187, -1, 1)
  Body_SetCargoKey(node187, -1, 2)
  Node_EnterSimulation(node187)
  Game_LoadProgress_Advance(node0)
  node188 = Node_CreateNode("nod_vessel", "fx12_dir_explosion_magma_01_13")
  Node_AddSon(node166, node188)
  Body_SetCS(node188, MAT_Vector3(1790.183794, 1406.311105, 15.26109), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node188, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node188, 0)
  Body_SetNameKey(node188, -1)
  Body_SetCargoKey(node188, -1, 0)
  Body_SetCargoKey(node188, -1, 1)
  Body_SetCargoKey(node188, -1, 2)
  Node_EnterSimulation(node188)
  Game_LoadProgress_Advance(node0)
  node189 = Node_CreateNode("nod_vessel", "fx13_dir_explosion_magma_02_10")
  Node_AddSon(node166, node189)
  Body_SetCS(node189, MAT_Vector3(1449.915646, 1384.918736, 9.748842), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node189, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node189, 0)
  Body_SetNameKey(node189, -1)
  Body_SetCargoKey(node189, -1, 0)
  Body_SetCargoKey(node189, -1, 1)
  Body_SetCargoKey(node189, -1, 2)
  Node_EnterSimulation(node189)
  Game_LoadProgress_Advance(node0)
  node190 = Node_CreateNode("nod_vessel", "fx13_dir_explosion_magma_01_14")
  Node_AddSon(node166, node190)
  Body_SetCS(node190, MAT_Vector3(1418.659998, 1430.998537, 9.760244), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node190, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node190, 0)
  Body_SetNameKey(node190, -1)
  Body_SetCargoKey(node190, -1, 0)
  Body_SetCargoKey(node190, -1, 1)
  Body_SetCargoKey(node190, -1, 2)
  Node_EnterSimulation(node190)
  Game_LoadProgress_Advance(node0)
  node191 = Node_CreateNode("nod_vessel", "fx14_dir_explosion_magma_02_11")
  Node_AddSon(node166, node191)
  Body_SetCS(node191, MAT_Vector3(1238.45757, 1637.239942, 21.815662), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node191, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node191, 0)
  Body_SetNameKey(node191, -1)
  Body_SetCargoKey(node191, -1, 0)
  Body_SetCargoKey(node191, -1, 1)
  Body_SetCargoKey(node191, -1, 2)
  Node_EnterSimulation(node191)
  Game_LoadProgress_Advance(node0)
  node192 = Node_CreateNode("nod_vessel", "fx14_dir_explosion_magma_01_15")
  Node_AddSon(node166, node192)
  Body_SetCS(node192, MAT_Vector3(1263.877456, 1683.605949, 12.712845), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node192, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node192, 0)
  Body_SetNameKey(node192, -1)
  Body_SetCargoKey(node192, -1, 0)
  Body_SetCargoKey(node192, -1, 1)
  Body_SetCargoKey(node192, -1, 2)
  Node_EnterSimulation(node192)
  Game_LoadProgress_Advance(node0)
  node193 = Node_CreateNode("nod_vessel", "fx15_dir_explosion_magma_02_12")
  Node_AddSon(node166, node193)
  Body_SetCS(node193, MAT_Vector3(1217.885467, 1850.829134, 21.81566), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node193, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node193, 0)
  Body_SetNameKey(node193, -1)
  Body_SetCargoKey(node193, -1, 0)
  Body_SetCargoKey(node193, -1, 1)
  Body_SetCargoKey(node193, -1, 2)
  Node_EnterSimulation(node193)
  Game_LoadProgress_Advance(node0)
  node194 = Node_CreateNode("nod_vessel", "fx15_dir_explosion_magma_01_16")
  Node_AddSon(node166, node194)
  Body_SetCS(node194, MAT_Vector3(1273.915229, 1895.567374, 12.71285), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node194, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node194, 0)
  Body_SetNameKey(node194, -1)
  Body_SetCargoKey(node194, -1, 0)
  Body_SetCargoKey(node194, -1, 1)
  Body_SetCargoKey(node194, -1, 2)
  Node_EnterSimulation(node194)
  Game_LoadProgress_Advance(node0)
  node195 = Node_CreateNode("nod_vessel", "fx16_dir_explosion_magma_02_13")
  Node_AddSon(node166, node195)
  Body_SetCS(node195, MAT_Vector3(1223.969508, 2111.335766, 16.747802), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node195, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node195, 0)
  Body_SetNameKey(node195, -1)
  Body_SetCargoKey(node195, -1, 0)
  Body_SetCargoKey(node195, -1, 1)
  Body_SetCargoKey(node195, -1, 2)
  Node_EnterSimulation(node195)
  Game_LoadProgress_Advance(node0)
  node196 = Node_CreateNode("nod_vessel", "fx16_dir_explosion_magma_01_17")
  Node_AddSon(node166, node196)
  Body_SetCS(node196, MAT_Vector3(1269.057667, 2080.383135, 22.251584), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node196, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node196, 0)
  Body_SetNameKey(node196, -1)
  Body_SetCargoKey(node196, -1, 0)
  Body_SetCargoKey(node196, -1, 1)
  Body_SetCargoKey(node196, -1, 2)
  Node_EnterSimulation(node196)
  Game_LoadProgress_Advance(node0)
  node197 = Node_CreateNode("nod_vessel", "fx17_dir_explosion_magma_02_14")
  Node_AddSon(node166, node197)
  Body_SetCS(node197, MAT_Vector3(1237.677566, 2230.102067, 16.7478), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node197, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node197, 0)
  Body_SetNameKey(node197, -1)
  Body_SetCargoKey(node197, -1, 0)
  Body_SetCargoKey(node197, -1, 1)
  Body_SetCargoKey(node197, -1, 2)
  Node_EnterSimulation(node197)
  Game_LoadProgress_Advance(node0)
  node198 = Node_CreateNode("nod_vessel", "fx17_dir_explosion_magma_01_18")
  Node_AddSon(node166, node198)
  Body_SetCS(node198, MAT_Vector3(1212.502937, 2268.361235, 22.25158), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node198, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node198, 0)
  Body_SetNameKey(node198, -1)
  Body_SetCargoKey(node198, -1, 0)
  Body_SetCargoKey(node198, -1, 1)
  Body_SetCargoKey(node198, -1, 2)
  Node_EnterSimulation(node198)
  Game_LoadProgress_Advance(node0)
  node199 = Node_CreateNode("nod_vessel", "fx18_dir_explosion_magma_01_19")
  Node_AddSon(node166, node199)
  Body_SetCS(node199, MAT_Vector3(1213.443872, 2365.720157, 22.25158), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node199, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node199, 0)
  Body_SetNameKey(node199, -1)
  Body_SetCargoKey(node199, -1, 0)
  Body_SetCargoKey(node199, -1, 1)
  Body_SetCargoKey(node199, -1, 2)
  Node_EnterSimulation(node199)
  Game_LoadProgress_Advance(node0)
  node200 = Node_CreateNode("nod_vessel", "fx18_dir_explosion_magma_02_15")
  Node_AddSon(node166, node200)
  Body_SetCS(node200, MAT_Vector3(1194.417126, 2356.985476, 16.7478), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node200, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node200, 0)
  Body_SetNameKey(node200, -1)
  Body_SetCargoKey(node200, -1, 0)
  Body_SetCargoKey(node200, -1, 1)
  Body_SetCargoKey(node200, -1, 2)
  Node_EnterSimulation(node200)
  Game_LoadProgress_Advance(node0)
  node201 = Node_CreateNode("nod_vessel", "fx18_dir_explosion_magma_01_20")
  Node_AddSon(node166, node201)
  Body_SetCS(node201, MAT_Vector3(1160.903856, 2359.101978, 22.25158), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node201, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node201, 0)
  Body_SetNameKey(node201, -1)
  Body_SetCargoKey(node201, -1, 0)
  Body_SetCargoKey(node201, -1, 1)
  Body_SetCargoKey(node201, -1, 2)
  Node_EnterSimulation(node201)
  Game_LoadProgress_Advance(node0)
  node202 = Node_CreateNode("nod_vessel", "fx19_dir_explosion_magma_01_21")
  Node_AddSon(node166, node202)
  Body_SetCS(node202, MAT_Vector3(1135.604003, 2458.059968, 22.25158), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node202, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node202, 0)
  Body_SetNameKey(node202, -1)
  Body_SetCargoKey(node202, -1, 0)
  Body_SetCargoKey(node202, -1, 1)
  Body_SetCargoKey(node202, -1, 2)
  Node_EnterSimulation(node202)
  Game_LoadProgress_Advance(node0)
  node203 = Node_CreateNode("nod_vessel", "fx19_dir_explosion_magma_01_22")
  Node_AddSon(node166, node203)
  Body_SetCS(node203, MAT_Vector3(1073.50015, 2456.987521, 22.25158), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node203, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node203, 0)
  Body_SetNameKey(node203, -1)
  Body_SetCargoKey(node203, -1, 0)
  Body_SetCargoKey(node203, -1, 1)
  Body_SetCargoKey(node203, -1, 2)
  Node_EnterSimulation(node203)
  Game_LoadProgress_Advance(node0)
  node204 = Node_CreateNode("nod_vessel", "fx19_dir_explosion_magma_02_16")
  Node_AddSon(node166, node204)
  Body_SetCS(node204, MAT_Vector3(1025.069652, 2500.661824, 16.7478), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node204, "osd/dir/dir_explosion_magma_02.osd")
  Body_SetFriendOrFoeID(node204, 0)
  Body_SetNameKey(node204, -1)
  Body_SetCargoKey(node204, -1, 0)
  Body_SetCargoKey(node204, -1, 1)
  Body_SetCargoKey(node204, -1, 2)
  Node_EnterSimulation(node204)
  Game_LoadProgress_Advance(node0)
  node205 = Node_CreateNode("nod_vessel", "fx19_dir_explosion_magma_01_23")
  Node_AddSon(node166, node205)
  Body_SetCS(node205, MAT_Vector3(960.734461, 2498.697242, 22.25158), MAT_Vector3(0, 90, 0))
  Node_ParseIniFile(node205, "osd/dir/dir_explosion_magma_01.osd")
  Body_SetFriendOrFoeID(node205, 0)
  Body_SetNameKey(node205, -1)
  Body_SetCargoKey(node205, -1, 0)
  Body_SetCargoKey(node205, -1, 1)
  Body_SetCargoKey(node205, -1, 2)
  Node_EnterSimulation(node205)
  Game_LoadProgress_Advance(node0)
  node206 = Node_CreateNode("NOD_Scenario", "InGameSequences")
  Node_AddSon(node0, node206)
  Node_EnterSimulation(node206)
  Game_LoadProgress_Advance(node0)
  node207 = Node_CreateNode("NOD_Directory", "Light")
  Node_AddSon(node206, node207)
  Node_EnterSimulation(node207)
  Game_LoadProgress_Advance(node0)
  node208 = Node_CreateNode("NOD_Directory", "Navigation")
  Node_AddSon(node206, node208)
  Node_EnterSimulation(node208)
  Game_LoadProgress_Advance(node0)
  node209 = Node_CreateNode("NOD_Position", "LookFromPosition_1")
  Node_AddSon(node208, node209)
  Position_SetPosition(node209, MAT_Vector3(4004.57142, 2721.780281, 399.811194))
  Position_SetRadius(node209, 5)
  Game_LoadProgress_Advance(node0)
  node210 = Node_CreateNode("NOD_Position", "LookFromPosition_2")
  Node_AddSon(node208, node210)
  Position_SetPosition(node210, MAT_Vector3(3852.917829, 2654.566453, 205.336126))
  Position_SetRadius(node210, 5)
  Game_LoadProgress_Advance(node0)
  node211 = Node_CreateNode("NOD_Position", "LookFromPosition_3")
  Node_AddSon(node208, node211)
  Position_SetPosition(node211, MAT_Vector3(3903.430356, 2678.321511, 262.1922))
  Position_SetRadius(node211, 5)
  Game_LoadProgress_Advance(node0)
  node212 = Node_CreateNode("NOD_Position", "LookFromPosition_4")
  Node_AddSon(node208, node212)
  Position_SetPosition(node212, MAT_Vector3(3724.007087, 2600.843038, 92.4623))
  Position_SetRadius(node212, 5)
  Game_LoadProgress_Advance(node0)
  node213 = Node_CreateNode("NOD_Position", "LookFromPosition_5")
  Node_AddSon(node208, node213)
  Position_SetPosition(node213, MAT_Vector3(3728.845277, 2627.745785, 104.964441))
  Position_SetRadius(node213, 5)
  Game_LoadProgress_Advance(node0)
  node214 = Node_CreateNode("NOD_Path", "Path_1")
  Node_AddSon(node208, node214)
  Game_LoadProgress_Advance(node0)
  node215 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node214, node215)
  Position_SetPosition(node215, MAT_Vector3(3984.737888, 2716.396024, 380.6544))
  Position_SetRadius(node215, 5)
  Game_LoadProgress_Advance(node0)
  node216 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node214, node216)
  Position_SetPosition(node216, MAT_Vector3(3888.848731, 2680.41129, 243.8684))
  Position_SetRadius(node216, 5)
  Game_LoadProgress_Advance(node0)
  node217 = Node_CreateNode("NOD_Path", "Path_2")
  Node_AddSon(node208, node217)
  Game_LoadProgress_Advance(node0)
  node218 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node217, node218)
  Position_SetPosition(node218, MAT_Vector3(3929.993, 2695.924, 307.6014))
  Position_SetRadius(node218, 5)
  Game_LoadProgress_Advance(node0)
  node219 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node217, node219)
  Position_SetPosition(node219, MAT_Vector3(3840.488, 2662.204, 204.6925))
  Position_SetRadius(node219, 5)
  Game_LoadProgress_Advance(node0)
  node220 = Node_CreateNode("NOD_Path", "Path_3")
  Node_AddSon(node208, node220)
  Game_LoadProgress_Advance(node0)
  node221 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node220, node221)
  Position_SetPosition(node221, MAT_Vector3(3887.742896, 2680.777302, 243.8684))
  Position_SetRadius(node221, 5)
  Game_LoadProgress_Advance(node0)
  node222 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node220, node222)
  Position_SetPosition(node222, MAT_Vector3(3788.628, 2643.074, 165.4089))
  Position_SetRadius(node222, 5)
  Game_LoadProgress_Advance(node0)
  node223 = Node_CreateNode("NOD_Path", "Path_4")
  Node_AddSon(node208, node223)
  Game_LoadProgress_Advance(node0)
  node224 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node223, node224)
  Position_SetPosition(node224, MAT_Vector3(3808.921551, 2651.548784, 184.715603))
  Position_SetRadius(node224, 5)
  Game_LoadProgress_Advance(node0)
  node225 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node223, node225)
  Position_SetPosition(node225, MAT_Vector3(3723.772593, 2614.620707, 92.996313))
  Position_SetRadius(node225, 5)
  Game_LoadProgress_Advance(node0)
  node226 = Node_CreateNode("NOD_Path", "Path_5")
  Node_AddSon(node208, node226)
  Game_LoadProgress_Advance(node0)
  node227 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node226, node227)
  Position_SetPosition(node227, MAT_Vector3(3741.346265, 2622.211382, 111.025204))
  Position_SetRadius(node227, 5)
  Game_LoadProgress_Advance(node0)
  node228 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node226, node228)
  Position_SetPosition(node228, MAT_Vector3(3614.005307, 2564.598187, 87.719034))
  Position_SetRadius(node228, 5)
  Game_LoadProgress_Advance(node0)
  node229 = Node_CreateNode("NOD_Position", "LookAtPosition_1")
  Node_AddSon(node208, node229)
  Position_SetPosition(node229, MAT_Vector3(3614.136, 2564.204, 89.1734))
  Position_SetRadius(node229, 5)
  Game_LoadProgress_Advance(node0)
  node230 = Node_CreateNode("NOD_Position", "LookAtPosition_2")
  Node_AddSon(node208, node230)
  Position_SetPosition(node230, MAT_Vector3(4004.571, 2721.78, 399.8112))
  Position_SetRadius(node230, 5)
  Game_LoadProgress_Advance(node0)
  node231 = Node_CreateNode("NOD_Position", "LookAtPosition_3")
  Node_AddSon(node208, node231)
  Position_SetPosition(node231, MAT_Vector3(3614.136, 2564.204, 89.1734))
  Position_SetRadius(node231, 5)
  Game_LoadProgress_Advance(node0)
  node232 = Node_CreateNode("NOD_Position", "LookAtPosition_4")
  Node_AddSon(node208, node232)
  Position_SetPosition(node232, MAT_Vector3(4004.571, 2721.78, 399.8112))
  Position_SetRadius(node232, 5)
  Game_LoadProgress_Advance(node0)
  node233 = Node_CreateNode("NOD_Position", "LookAtPosition_5")
  Node_AddSon(node208, node233)
  Position_SetPosition(node233, MAT_Vector3(3614.136, 2564.204, 89.1734))
  Position_SetRadius(node233, 5)
  Game_LoadProgress_Advance(node0)
  node234 = Node_CreateNode("NOD_Position", "Position_1")
  Node_AddSon(node208, node234)
  Position_SetPosition(node234, MAT_Vector3(979.952017, 2464.440313, 116.170195))
  Position_SetRadius(node234, 5)
  Game_LoadProgress_Advance(node0)
  node235 = Node_CreateNode("NOD_Position", "Position_2")
  Node_AddSon(node208, node235)
  Position_SetPosition(node235, MAT_Vector3(1023.618956, 2451.939165, 116.764674))
  Position_SetRadius(node235, 5)
  Game_LoadProgress_Advance(node0)
  node236 = Node_CreateNode("NOD_Position", "Position_5")
  Node_AddSon(node208, node236)
  Position_SetPosition(node236, MAT_Vector3(1131.801916, 2429.499779, 107.135917))
  Position_SetRadius(node236, 5)
  Game_LoadProgress_Advance(node0)
  node237 = Node_CreateNode("NOD_Path", "BiontPlaPath_1")
  Node_AddSon(node208, node237)
  Game_LoadProgress_Advance(node0)
  node238 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node237, node238)
  Position_SetPosition(node238, MAT_Vector3(1125.563078, 2443.119484, 116))
  Position_SetRadius(node238, 5)
  Game_LoadProgress_Advance(node0)
  node239 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node237, node239)
  Position_SetPosition(node239, MAT_Vector3(1022.930456, 2456.005472, 116))
  Position_SetRadius(node239, 5)
  Game_LoadProgress_Advance(node0)
  node240 = Node_CreateNode("NOD_Position", "Position_3")
  Node_AddSon(node208, node240)
  Position_SetPosition(node240, MAT_Vector3(305.46599, 2608.918936, 107.949882))
  Position_SetRadius(node240, 5)
  Game_LoadProgress_Advance(node0)
  node241 = Node_CreateNode("NOD_Position", "Position_4")
  Node_AddSon(node208, node241)
  Position_SetPosition(node241, MAT_Vector3(250.750674, 2518.313109, 135.01245))
  Position_SetRadius(node241, 5)
  Game_LoadProgress_Advance(node0)
  node242 = Node_CreateNode("NOD_Path", "Path_6")
  Node_AddSon(node208, node242)
  Game_LoadProgress_Advance(node0)
  node243 = Node_CreateNode("NOD_Position", "pos_1")
  Node_AddSon(node242, node243)
  Position_SetPosition(node243, MAT_Vector3(3661.83187, 2891.727427, 389.487728))
  Position_SetRadius(node243, 5)
  Game_LoadProgress_Advance(node0)
  node244 = Node_CreateNode("NOD_Position", "pos_2")
  Node_AddSon(node242, node244)
  Position_SetPosition(node244, MAT_Vector3(3626.362069, 2661.379816, 386.476158))
  Position_SetRadius(node244, 5)
  Game_LoadProgress_Advance(node0)
  node245 = Node_CreateNode("NOD_Position", "Position_6")
  Node_AddSon(node208, node245)
  Position_SetPosition(node245, MAT_Vector3(3626.546766, 2813.685099, 388.02783))
  Position_SetRadius(node245, 5)
  Game_LoadProgress_Advance(node0)
  node246 = Node_CreateNode("NOD_Directory", "Director")
  Node_AddSon(node206, node246)
  Node_EnterSimulation(node246)
  Game_LoadProgress_Advance(node0)
  node247 = Node_CreateNode("NOD_Director", "IntroDirector_1")
  Node_AddSon(node246, node247)
  Node_EnterSimulation(node247)
  Game_LoadProgress_Advance(node0)
  node248 = Node_CreateNode("NOD_Director", "IntroDirector_2")
  Node_AddSon(node246, node248)
  Node_EnterSimulation(node248)
  Game_LoadProgress_Advance(node0)
  node249 = Node_CreateNode("NOD_Director", "BiontDirector_1")
  Node_AddSon(node246, node249)
  Node_EnterSimulation(node249)
  Game_LoadProgress_Advance(node0)
  node250 = Node_CreateNode("NOD_Directory", "Trigger")
  Node_AddSon(node206, node250)
  Node_EnterSimulation(node250)
  Game_LoadProgress_Advance(node0)
  node251 = Node_CreateNode("NOD_Directory", "Object")
  Node_AddSon(node206, node251)
  Node_EnterSimulation(node251)
  Game_LoadProgress_Advance(node0)
  node252 = Node_CreateNode("nod_vessel", "dir_cammesh_1")
  Node_AddSon(node251, node252)
  Body_SetCS(node252, MAT_Vector3(321.645359, 2541.344574, 115), MAT_Vector3(-95, 0, 0))
  Node_ParseIniFile(node252, "osd/dir/dir_cammesh.osd")
  Body_SetFriendOrFoeID(node252, 0)
  Body_SetNameKey(node252, -1)
  Body_SetCargoKey(node252, -1, 0)
  Body_SetCargoKey(node252, -1, 1)
  Body_SetCargoKey(node252, -1, 2)
  Node_EnterSimulation(node252)
end
SetEnemyMatrixElement(0, 0, N)
SetEnemyMatrixElement(1, 0, U)
SetEnemyMatrixElement(2, 0, E)
SetEnemyMatrixElement(3, 0, N)
SetEnemyMatrixElement(4, 0, N)
SetEnemyMatrixElement(5, 0, U)
SetEnemyMatrixElement(6, 0, N)
SetEnemyMatrixElement(7, 0, U)
SetEnemyMatrixElement(8, 0, U)
SetEnemyMatrixElement(9, 0, U)
SetEnemyMatrixElement(10, 0, N)
SetEnemyMatrixElement(11, 0, N)
SetEnemyMatrixElement(12, 0, N)
SetEnemyMatrixElement(13, 0, N)
SetEnemyMatrixElement(14, 0, N)
SetEnemyMatrixElement(15, 0, N)
SetEnemyMatrixElement(0, 1, N)
SetEnemyMatrixElement(1, 1, U)
SetEnemyMatrixElement(2, 1, N)
SetEnemyMatrixElement(3, 1, N)
SetEnemyMatrixElement(4, 1, N)
SetEnemyMatrixElement(5, 1, U)
SetEnemyMatrixElement(6, 1, N)
SetEnemyMatrixElement(7, 1, U)
SetEnemyMatrixElement(8, 1, U)
SetEnemyMatrixElement(9, 1, U)
SetEnemyMatrixElement(10, 1, N)
SetEnemyMatrixElement(11, 1, N)
SetEnemyMatrixElement(12, 1, N)
SetEnemyMatrixElement(13, 1, N)
SetEnemyMatrixElement(14, 1, N)
SetEnemyMatrixElement(15, 1, N)
SetEnemyMatrixElement(0, 2, E)
SetEnemyMatrixElement(1, 2, U)
SetEnemyMatrixElement(2, 2, N)
SetEnemyMatrixElement(3, 2, N)
SetEnemyMatrixElement(4, 2, N)
SetEnemyMatrixElement(5, 2, U)
SetEnemyMatrixElement(6, 2, N)
SetEnemyMatrixElement(7, 2, U)
SetEnemyMatrixElement(8, 2, U)
SetEnemyMatrixElement(9, 2, U)
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
SetEnemyMatrixElement(5, 3, U)
SetEnemyMatrixElement(6, 3, N)
SetEnemyMatrixElement(7, 3, U)
SetEnemyMatrixElement(8, 3, U)
SetEnemyMatrixElement(9, 3, U)
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
SetEnemyMatrixElement(5, 4, U)
SetEnemyMatrixElement(6, 4, N)
SetEnemyMatrixElement(7, 4, U)
SetEnemyMatrixElement(8, 4, U)
SetEnemyMatrixElement(9, 4, U)
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
SetEnemyMatrixElement(5, 5, U)
SetEnemyMatrixElement(6, 5, N)
SetEnemyMatrixElement(7, 5, U)
SetEnemyMatrixElement(8, 5, U)
SetEnemyMatrixElement(9, 5, U)
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
SetEnemyMatrixElement(7, 6, U)
SetEnemyMatrixElement(8, 6, U)
SetEnemyMatrixElement(9, 6, U)
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
SetEnemyMatrixElement(7, 7, U)
SetEnemyMatrixElement(8, 7, U)
SetEnemyMatrixElement(9, 7, U)
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
SetEnemyMatrixElement(7, 8, U)
SetEnemyMatrixElement(8, 8, U)
SetEnemyMatrixElement(9, 8, U)
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
SetEnemyMatrixElement(7, 9, U)
SetEnemyMatrixElement(8, 9, U)
SetEnemyMatrixElement(9, 9, U)
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
                                                                                                                                                                                                                if not (o4832.Value ~= True) then
                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                if not (True ~= True) then
                                                                                                                                                                                                                                                                  if not (True ~= True) then
                                                                                                                                                                                                                                                                    if not (True ~= True) then
                                                                                                                                                                                                                                                                      if not (True ~= True) then
                                                                                                                                                                                                                                                                        if not (True ~= True) then
                                                                                                                                                                                                                                                                          if not (True ~= True) then
                                                                                                                                                                                                                                                                            if not (True ~= True) then
                                                                                                                                                                                                                                                                              if not (True ~= True) then
                                                                                                                                                                                                                                                                                if not (True ~= True) then
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
S_o77 = { [nil] = {}, Start = function(L0)

end }
S_o123 = { [nil] = {}, Start = function(L0)

end }
S_o169 = { [nil] = {}, Start = function(L0)

end }
S_o215 = { [nil] = {}, Start = function(L0)

end }
S_o261 = { [nil] = {}, Start = function(L0)

end }
S_o307 = { [nil] = {}, Start = function(L0)

end }
S_o353 = { [nil] = {}, Start = function(L0)

end }
S_o399 = { [nil] = {}, Start = function(L0)

end }
S_o445 = { [nil] = {}, Start = function(L0)

end }
S_o491 = { [nil] = {}, Start = function(L0)

end }
S_o537 = { [nil] = {}, Start = function(L0)

end }
S_o583 = { [nil] = {}, Start = function(L0)

end }
S_o629 = { [nil] = {}, Start = function(L0)

end }
S_o675 = { [nil] = {}, Start = function(L0)

end }
S_o721 = { [nil] = {}, Start = function(L0)

end }
S_o767 = { [nil] = {}, Start = function(L0)

end }
S_o813 = { [nil] = {}, Start = function(L0)

end }
S_o859 = { [nil] = {}, Start = function(L0)

end }
S_o905 = { [nil] = {}, Start = function(L0)

end }
S_o951 = { [nil] = {}, Start = function(L0)

end }
S_o997 = { [nil] = {}, Start = function(L0)

end }
S_o1043 = { [nil] = {}, Start = function(L0)

end }
S_o1089 = { [nil] = {}, Start = function(L0)

end }
S_o1135 = { [nil] = {}, Start = function(L0)

end }
S_o1181 = { [nil] = {}, Start = function(L0)

end }
S_o1227 = { [nil] = {}, Start = function(L0)

end }
S_o1273 = { [nil] = {}, Start = function(L0)

end }
S_o1319 = { [nil] = {}, Start = function(L0)

end }
S_o1365 = { [nil] = {}, Start = function(L0)

end }
S_o1411 = { [nil] = {}, Start = function(L0)

end }
S_o1457 = { [nil] = {}, Start = function(L0)

end }
S_o1503 = { [nil] = {}, Start = function(L0)

end }
S_o1549 = { [nil] = {}, Start = function(L0)

end }
S_o1595 = { [nil] = {}, Start = function(L0)

end }
S_o1641 = { [nil] = {}, Start = function(L0)

end }
S_o1687 = { [nil] = {}, Start = function(L0)

end }
S_o1733 = { [nil] = {}, Start = function(L0)

end }
S_o1779 = { [nil] = {}, Start = function(L0)

end }
S_o1825 = { [nil] = {}, Start = function(L0)

end }
S_o1871 = { [nil] = {}, Start = function(L0)

end }
S_o1917 = { [nil] = {}, Start = function(L0)

end }
S_o1963 = { [nil] = {}, Start = function(L0)

end }
S_o2009 = { [nil] = {}, Start = function(L0)

end }
S_o2055 = { [nil] = {}, Start = function(L0)

end }
S_o2101 = { [nil] = {}, Start = function(L0)

end }
S_o2147 = { [nil] = {}, Start = function(L0)

end }
S_o2193 = { [nil] = {}, Start = function(L0)

end }
S_o2239 = { [nil] = {}, Start = function(L0)

end }
S_o2285 = { [nil] = {}, Start = function(L0)

end }
S_o2331 = { [nil] = {}, Start = function(L0)

end }
S_o2377 = { [nil] = {}, Start = function(L0)

end }
S_o2423 = { [nil] = {}, Start = function(L0)

end }
S_o2469 = { [nil] = {}, Start = function(L0)

end }
S_o2515 = { [nil] = {}, Start = function(L0)

end }
S_o2561 = { [nil] = {}, Start = function(L0)

end }
S_o2607 = { [nil] = {}, Start = function(L0)

end }
S_o2653 = { [nil] = {}, Start = function(L0)

end }
S_o2699 = { [nil] = {}, Start = function(L0)

end }
S_o2745 = { [nil] = {}, Start = function(L0)

end }
S_o2791 = { [nil] = {}, Start = function(L0)

end }
S_o2837 = { [nil] = {}, Start = function(L0)

end }
S_o2883 = { [nil] = {}, Start = function(L0)

end }
S_o2929 = { [nil] = {}, Start = function(L0)

end }
S_o2975 = { [nil] = {}, Start = function(L0)

end }
S_o3021 = { [nil] = {}, Start = function(L0)

end }
S_o3067 = { [nil] = {}, Start = function(L0)

end }
S_o3113 = { [nil] = {}, Start = function(L0)

end }
S_o3159 = { [nil] = {}, Start = function(L0)

end }
S_o3205 = { [nil] = {}, Start = function(L0)

end }
S_o3251 = { [nil] = {}, Start = function(L0)

end }
S_o3297 = { [nil] = {}, Start = function(L0)

end }
S_o3343 = { [nil] = {}, Start = function(L0)

end }
S_o3389 = { [nil] = {}, Start = function(L0)

end }
S_o3435 = { [nil] = {}, Start = function(L0)

end }
S_o3481 = { [nil] = {}, Start = function(L0)

end }
S_o3527 = { [nil] = {}, Start = function(L0)

end }
S_o3573 = { [nil] = {}, Start = function(L0)

end }
S_o3619 = { [nil] = {}, Start = function(L0)

end }
S_o3665 = { [nil] = {}, Start = function(L0)

end }
S_o3711 = { [nil] = {}, Start = function(L0)

end }
S_o3757 = { [nil] = {}, Start = function(L0)

end }
S_o3803 = { [nil] = {}, Start = function(L0)

end }
S_o3849 = { [nil] = {}, Start = function(L0)

end }
S_o3895 = { [nil] = {}, Start = function(L0)

end }
S_o3941 = { [nil] = {}, Start = function(L0)

end }
S_o3987 = { [nil] = {}, Start = function(L0)

end }
S_o4033 = { [nil] = {}, Start = function(L0)

end }
S_o4079 = { [nil] = {}, Start = function(L0)

end }
S_o4125 = { [nil] = {}, Start = function(L0)

end }
S_o4171 = { [nil] = {}, Start = function(L0)

end }
S_o4217 = { [nil] = {}, Start = function(L0)

end }
S_o4263 = { [nil] = {}, Start = function(L0)

end }
S_o4309 = { [nil] = {}, Start = function(L0)

end }
S_o4355 = { [nil] = {}, Start = function(L0)

end }
S_o4401 = { [nil] = {}, Start = function(L0)

end }
S_o4447 = { [nil] = {}, Start = function(L0)

end }
S_o4493 = { [nil] = {}, Start = function(L0)

end }
S_o4539 = { [nil] = {}, Start = function(L0)

end }
S_o4585 = { [nil] = {}, Start = function(L0)

end }
S_o4631 = { [nil] = {}, Start = function(L0)

end }
S_o4677 = { [nil] = {}, Start = function(L0)

end }
S_o4723 = { [nil] = {}, Start = function(L0)

end }
S_o4769 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_EnterSimulation(L0.Node)
  Stream_SetDamageParameters(L0.Node, 30, 0.9)
  CallFunction(o4769, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4770 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4770, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4770, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4770, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4770, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4770, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4770, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4775.SetStateValue(L1)
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
o4775 = { [nil] = {}, Start = function()
  o4775["Value"] = False
  o4897.StartCalculate()
  o7296.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4775.Value == L0) then
    o4775["Value"] = L0
    o4897.ReCalculate()
    o7296.ReCalculate()
  end
end }
S_o4776 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4776, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4776, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4776, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4776, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4776, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4776, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4781.SetStateValue(L1)
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
o4781 = { [nil] = {}, Start = function()
  o4781["Value"] = False
  o4824.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4781.Value == L0) then
    o4781["Value"] = L0
    o4824.ReCalculate()
  end
end }
S_o4782 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4782, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4782, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4782, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4782, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4782, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4782, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4787.SetStateValue(L1)
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
o4787 = { [nil] = {}, Start = function()
  o4787["Value"] = False
  o4825.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4787.Value == L0) then
    o4787["Value"] = L0
    o4825.ReCalculate()
  end
end }
S_o4788 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4788, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4788, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4788, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4788, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4788, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4788, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4793.SetStateValue(L1)
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
o4793 = { [nil] = {}, Start = function()
  o4793["Value"] = False
  o4826.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4793.Value == L0) then
    o4793["Value"] = L0
    o4826.ReCalculate()
  end
end }
S_o4794 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4794, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4794, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4794, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4794, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4794, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4794, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4799.SetStateValue(L1)
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
o4799 = { [nil] = {}, Start = function()
  o4799["Value"] = False
  o4827.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4799.Value == L0) then
    o4799["Value"] = L0
    o4827.ReCalculate()
  end
end }
S_o4800 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Body_AddItem(L0.Node, "gun_plasma2", 1)
  Body_AddItem(L0.Node, "gun_torpedolauncher", 1)
  Body_AddItem(L0.Node, "ammo_shell", 999999)
  Body_AddItem(L0.Node, "device_repair1", 1)
  Body_AddItem(L0.Node, "device_generator1", 1)
  Body_AddItem(L0.Node, "ammo_energy", 200)
  Body_AddItem(L0.Node, "torpedo_tigershark", 2)
  Body_AddItem(L0.Node, "torpedo_stanley", 2)
  Body_AddItem(L0.Node, "gun_vendettagatlin", 1)
  Body_AddItem(L0.Node, "buzzer_normal", 8)
  Body_AddItem(L0.Node, "gun_flak", 1)
  Body_AddItem(L0.Node, "gun_empactor", 1)
  CallFunction(o4800, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
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
o4814 = { [nil] = {}, Start = function()
  o4814["Value"] = False
  o7276.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4814.Value == L0) then
    o4814["Value"] = L0
    o7276.ReCalculate()
  end
end }
o4815 = { [nil] = {}, Start = function()
  o4815["Value"] = False
  o7287.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4815.Value == L0) then
    o4815["Value"] = L0
    o7287.ReCalculate()
  end
end }
o4816 = { [nil] = {}, Start = function()
  o4816["Value"] = False
  o7288.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4816.Value == L0) then
    o4816["Value"] = L0
    o7288.ReCalculate()
  end
end }
o4817 = { [nil] = {}, Start = function()
  o4817["Value"] = False
  o7289.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4817.Value == L0) then
    o4817["Value"] = L0
    o7289.ReCalculate()
  end
end }
o4818 = { [nil] = {}, Start = function()
  o4818["Value"] = False
  o7290.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4818.Value == L0) then
    o4818["Value"] = L0
    o7290.ReCalculate()
  end
end }
o4819 = { [nil] = {}, Start = function()
  o4819["Value"] = False
  o7291.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4819.Value == L0) then
    o4819["Value"] = L0
    o7291.ReCalculate()
  end
end }
o4820 = { [nil] = {}, GetCalculated = function()
  if not (o4863.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4820.SetStateValue(o4820.GetCalculated())
end, StartCalculate = function()
  o4820["Value"] = o4820.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4865.Node)
end, SetStateValue = function(L0)
  if not (o4820.Value == L0) then
    o4820["Value"] = L0
    if not (L0 ~= 1) then
      o4820.ChangeTo1()
    end
  end
end }
o4821 = { [nil] = {}, GetCalculated = function()
  if not (o4868.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4821.SetStateValue(o4821.GetCalculated())
end, StartCalculate = function()
  o4821["Value"] = o4821.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4870.Node)
end, SetStateValue = function(L0)
  if not (o4821.Value == L0) then
    o4821["Value"] = L0
    if not (L0 ~= 1) then
      o4821.ChangeTo1()
    end
  end
end }
o4822 = { [nil] = {}, GetCalculated = function()
  if not (o4873.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4822.SetStateValue(o4822.GetCalculated())
end, StartCalculate = function()
  o4822["Value"] = o4822.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4875.Node)
end, SetStateValue = function(L0)
  if not (o4822.Value == L0) then
    o4822["Value"] = L0
    if not (L0 ~= 1) then
      o4822.ChangeTo1()
    end
  end
end }
o4823 = { [nil] = {}, GetCalculated = function()
  if not (o4878.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4823.SetStateValue(o4823.GetCalculated())
end, StartCalculate = function()
  o4823["Value"] = o4823.GetCalculated()
end, ChangeTo1 = function()
  Game_SetWayPoint(GetGameNode(), o4880.Node)
end, SetStateValue = function(L0)
  if not (o4823.Value == L0) then
    o4823["Value"] = L0
    if not (L0 ~= 1) then
      o4823.ChangeTo1()
    end
  end
end }
o4824 = { [nil] = {}, GetCalculated = function()
  if not (o4781.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4824.SetStateValue(o4824.GetCalculated())
end, StartCalculate = function()
  o4824["Value"] = o4824.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o4800.Node, 261)
end, SetStateValue = function(L0)
  if not (o4824.Value == L0) then
    o4824["Value"] = L0
    if not (L0 ~= 1) then
      o4824.ChangeTo1()
    end
  end
end }
o4825 = { [nil] = {}, GetCalculated = function()
  if not (o4787.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4825.SetStateValue(o4825.GetCalculated())
end, StartCalculate = function()
  o4825["Value"] = o4825.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o4800.Node, 262)
end, SetStateValue = function(L0)
  if not (o4825.Value == L0) then
    o4825["Value"] = L0
    if not (L0 ~= 1) then
      o4825.ChangeTo1()
    end
  end
end }
o4826 = { [nil] = {}, GetCalculated = function()
  if not (o4793.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4826.SetStateValue(o4826.GetCalculated())
end, StartCalculate = function()
  o4826["Value"] = o4826.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o4800.Node, 263)
end, SetStateValue = function(L0)
  if not (o4826.Value == L0) then
    o4826["Value"] = L0
    if not (L0 ~= 1) then
      o4826.ChangeTo1()
    end
  end
end }
o4827 = { [nil] = {}, GetCalculated = function()
  if not (o4799.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4827.SetStateValue(o4827.GetCalculated())
end, StartCalculate = function()
  o4827["Value"] = o4827.GetCalculated()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o4800.Node, 264)
end, SetStateValue = function(L0)
  if not (o4827.Value == L0) then
    o4827["Value"] = L0
    if not (L0 ~= 1) then
      o4827.ChangeTo1()
    end
  end
end }
o4828 = { [nil] = {}, Start = function()
  o4828["Value"] = False
  o4898.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4828.Value == L0) then
    o4828["Value"] = L0
    o4898.ReCalculate()
  end
end }
o4829 = { [nil] = {}, GetCalculated = function()
  if not (o4901.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4829.SetStateValue(o4829.GetCalculated())
end, StartCalculate = function()
  o4829["Value"] = o4829.GetCalculated()
  o4830.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o4800.Node, 265)
  SendRadioMessageTake(o30.Node, o4800.Node, 266)
  Game_PlayMusic(GetGameNode(), "Agressive")
end, SetStateValue = function(L0)
  if not (o4829.Value == L0) then
    DelayedFunction(10, o4829, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4829.Value == L0) then
    o4829["Value"] = L0
    o4830.ReCalculate()
    if not (L0 ~= 1) then
      o4829.ChangeTo1()
    end
  end
end }
o4830 = { [nil] = {}, GetCalculated = function()
  if not (o4829.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4830.SetStateValue(o4830.GetCalculated())
end, StartCalculate = function()
  o4830["Value"] = o4830.GetCalculated()
  o4832.StartCalculate()
end, ChangeTo1 = function()
  SendRadioMessageTake(o30.Node, o4800.Node, 267)
  Game_PrimaryObjectiveReached(GetGameNode(), 1, 2000, 2101)
end, SetStateValue = function(L0)
  if not (o4830.Value == L0) then
    DelayedFunction(12, o4830, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o4830.Value == L0) then
    o4830["Value"] = L0
    o4832.ReCalculate()
    if not (L0 ~= 1) then
      o4830.ChangeTo1()
    end
  end
end }
o4831 = { [nil] = {}, Start = function()
  o4831["Value"] = False
  o7275.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4831.Value == L0) then
    o4831["Value"] = L0
    o7275.ReCalculate()
  end
end }
o4832 = { [nil] = {}, GetCalculated = function()
  if not (o4830.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4832.SetStateValue(o4832.GetCalculated())
end, StartCalculate = function()
  o4832["Value"] = o4832.GetCalculated()
  o2.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4832.Value == L0) then
    o4832["Value"] = L0
    o2.ReCalculate()
  end
end }
S_o4860 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4860, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4863.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4863 = { [nil] = {}, Start = function()
  o4863["Value"] = False
  o4820.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4863.Value == L0) then
    o4863["Value"] = L0
    o4820.ReCalculate()
  end
end }
S_o4865 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4865, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4868.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4868 = { [nil] = {}, Start = function()
  o4868["Value"] = False
  o4821.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4868.Value == L0) then
    o4868["Value"] = L0
    o4821.ReCalculate()
  end
end }
S_o4870 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4870, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4873.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4873 = { [nil] = {}, Start = function()
  o4873["Value"] = False
  o4822.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4873.Value == L0) then
    o4873["Value"] = L0
    o4822.ReCalculate()
  end
end }
S_o4875 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4875, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Entered = function(L0, L1)
  o4878.SetStateValue(L1)
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o4878 = { [nil] = {}, Start = function()
  o4878["Value"] = False
  o4823.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4878.Value == L0) then
    o4878["Value"] = L0
    o4823.ReCalculate()
  end
end }
S_o4880 = { [nil] = {}, Start = function(L0)
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
  CallFunction(o4880, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4885 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4885, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4885, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4885, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  Vessel_AttackTurrets(L0.Node, "", "player1", "", "", "")
  CallFunction(o4885, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_2", 15 } }("Code5")
  else
    CallFunction(o4885, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code6")
  else
    CallFunction(o4885, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4885, "Code7")
  end
end, Code7 = function(L0)
  L0["CodeIndex"] = 7
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4885, "Code9")
  else
    CallFunction(o4885, "Code8")
  end
end, Code8 = function(L0)
  L0["CodeIndex"] = 8
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_2", 15 } }("Code9")
  else
    CallFunction(o4885, "Code9")
  end
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_1", "pos_1", "pos_2", 1, 1 } }("Code10")
  else
    CallFunction(o4885, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_3", 15 } }("Code11")
  else
    CallFunction(o4885, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_1", "pos_2", "pos_3", 1, 1 } }("Code12")
  else
    CallFunction(o4885, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_4", 15 } }("Code13")
  else
    CallFunction(o4885, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_1", "pos_3", "pos_4", 1, 1 } }("Code14")
  else
    CallFunction(o4885, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_5", 15 } }("Code15")
  else
    CallFunction(o4885, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_1", "pos_4", "pos_5", 1, 1 } }("Code16")
  else
    CallFunction(o4885, "Code16")
  end
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "WaitWithHeading", "/Scenario_Dynamic/Navigation/Path_1", "pos_6", 15 } }("Code17")
  else
    CallFunction(o4885, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "GotoFromTo", "/Scenario_Dynamic/Navigation/Path_1", "pos_5", "pos_6", 1, 1 } }("Code18")
  else
    CallFunction(o4885, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CallFunction(o4885, "Code8")
  else
    CallFunction(o4885, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
end, SetStateValue_Destroyed = function(L0, L1)
  o4901.SetStateValue(L1)
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 1) then
    if not (L0.CodeIndex >= 2) then
      if not (o4897.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 6) then
    if not (L0.CodeIndex >= 7) then
      if not (o4898.Value ~= True) then
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
o4897 = { [nil] = {}, GetCalculated = function()
  if not (o4775.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4897.SetStateValue(o4897.GetCalculated())
end, StartCalculate = function()
  o4897["Value"] = o4897.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4897.Value == L0) then
    o4897["Value"] = L0
    CallFunction(o4885, "ProcesseStateChange")
  end
end }
o4898 = { [nil] = {}, GetCalculated = function()
  if not (o4828.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o4898.SetStateValue(o4898.GetCalculated())
end, StartCalculate = function()
  o4898["Value"] = o4898.GetCalculated()
end, SetStateValue = function(L0)
  if not (o4898.Value == L0) then
    o4898["Value"] = L0
    CallFunction(o4885, "ProcesseStateChange")
  end
end }
o4901 = { [nil] = {}, Start = function()
  o4901["Value"] = False
  o4829.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4901.Value == L0) then
    o4901["Value"] = L0
    o4829.ReCalculate()
  end
end }
S_o4952 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  WayPoint_SetTakeKey_Activate(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Inside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Outside(L0.Node, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, NOD_NodeRef(), -1, 1, 45)
  WayPoint_SetTakeKey_Enter(L0.Node, NOD_NodeRef(), -1)
  WayPoint_SetTakeKey_Leave(L0.Node, NOD_NodeRef(), -1)
  WayPoint_Attach(L0.Node, o4885.Node)
  CallFunction(o4952, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, CheckCondition = function(L0)
  return L1
end, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
S_o4957 = { [nil] = {}, Start = function(L0)

end }
S_o4958 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4958, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4958, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4958, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4958, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4958, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4958, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4963.SetStateValue(L1)
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
o4963 = { [nil] = {}, Start = function()
  o4963["Value"] = False
  o5074.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4963.Value == L0) then
    o4963["Value"] = L0
    o5074.ReCalculate()
  end
end }
S_o4964 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4964, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4964, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4964, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4964, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4964, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4964, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4969.SetStateValue(L1)
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
o4969 = { [nil] = {}, Start = function()
  o4969["Value"] = False
  o5130.StartCalculate()
  o5186.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4969.Value == L0) then
    o4969["Value"] = L0
    o5130.ReCalculate()
    o5186.ReCalculate()
  end
end }
S_o4970 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4970, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4970, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4970, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4970, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4970, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4975.SetStateValue(L1)
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
o4975 = { [nil] = {}, Start = function()
  o4975["Value"] = False
  o5242.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4975.Value == L0) then
    o4975["Value"] = L0
    o5242.ReCalculate()
  end
end }
S_o4976 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4976, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4976, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4976, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4976, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4976, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4976, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4981.SetStateValue(L1)
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
o4981 = { [nil] = {}, Start = function()
  o4981["Value"] = False
  o5298.StartCalculate()
  o5354.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4981.Value == L0) then
    o4981["Value"] = L0
    o5298.ReCalculate()
    o5354.ReCalculate()
  end
end }
S_o4982 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4982, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4982, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4982, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4982, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4982, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4982, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4987.SetStateValue(L1)
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
o4987 = { [nil] = {}, Start = function()
  o4987["Value"] = False
  o5410.StartCalculate()
  o5466.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4987.Value == L0) then
    o4987["Value"] = L0
    o5410.ReCalculate()
    o5466.ReCalculate()
  end
end }
S_o4988 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4988, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4988, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4988, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4988, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4988, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4988, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4993.SetStateValue(L1)
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
o4993 = { [nil] = {}, Start = function()
  o4993["Value"] = False
  o5522.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4993.Value == L0) then
    o4993["Value"] = L0
    o5522.ReCalculate()
  end
end }
S_o4994 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4994, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4994, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o4994, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o4994, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o4994, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o4994, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o4999.SetStateValue(L1)
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
o4999 = { [nil] = {}, Start = function()
  o4999["Value"] = False
  o5578.StartCalculate()
  o5634.StartCalculate()
  o5690.StartCalculate()
end, SetStateValue = function(L0)
  if not (o4999.Value == L0) then
    o4999["Value"] = L0
    o5578.ReCalculate()
    o5634.ReCalculate()
    o5690.ReCalculate()
  end
end }
S_o5000 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5000, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5000, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5000, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5000, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5000, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5000, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5005.SetStateValue(L1)
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
o5005 = { [nil] = {}, Start = function()
  o5005["Value"] = False
  o5746.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5005.Value == L0) then
    o5005["Value"] = L0
    o5746.ReCalculate()
  end
end }
S_o5006 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5006, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5006, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5006, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5006, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5006, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5006, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5011.SetStateValue(L1)
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
o5011 = { [nil] = {}, Start = function()
  o5011["Value"] = False
  o5802.StartCalculate()
  o5858.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5011.Value == L0) then
    o5011["Value"] = L0
    o5802.ReCalculate()
    o5858.ReCalculate()
  end
end }
S_o5012 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5012, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5012, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5012, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5012, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5012, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5012, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5017.SetStateValue(L1)
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
o5017 = { [nil] = {}, Start = function()
  o5017["Value"] = False
  o5914.StartCalculate()
  o5970.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5017.Value == L0) then
    o5017["Value"] = L0
    o5914.ReCalculate()
    o5970.ReCalculate()
  end
end }
S_o5018 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5018, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5018, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5018, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5018, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5018, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5018, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5023.SetStateValue(L1)
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
o5023 = { [nil] = {}, Start = function()
  o5023["Value"] = False
  o6026.StartCalculate()
  o6082.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5023.Value == L0) then
    o5023["Value"] = L0
    o6026.ReCalculate()
    o6082.ReCalculate()
  end
end }
S_o5024 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5024, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5024, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5024, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5024, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5024, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5024, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5029.SetStateValue(L1)
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
o5029 = { [nil] = {}, Start = function()
  o5029["Value"] = False
  o6138.StartCalculate()
  o6194.StartCalculate()
  o6250.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5029.Value == L0) then
    o5029["Value"] = L0
    o6138.ReCalculate()
    o6194.ReCalculate()
    o6250.ReCalculate()
  end
end }
S_o5030 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5030, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5030, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5030, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5030, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5030, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5030, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5035.SetStateValue(L1)
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
o5035 = { [nil] = {}, Start = function()
  o5035["Value"] = False
  o6306.StartCalculate()
  o6362.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5035.Value == L0) then
    o5035["Value"] = L0
    o6306.ReCalculate()
    o6362.ReCalculate()
  end
end }
S_o5036 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5036, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5036, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5036, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5036, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5036, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5036, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5041.SetStateValue(L1)
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
o5041 = { [nil] = {}, Start = function()
  o5041["Value"] = False
  o6418.StartCalculate()
  o6474.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5041.Value == L0) then
    o5041["Value"] = L0
    o6418.ReCalculate()
    o6474.ReCalculate()
  end
end }
S_o5042 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5042, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5042, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5042, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5042, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5042, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5042, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5047.SetStateValue(L1)
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
o5047 = { [nil] = {}, Start = function()
  o5047["Value"] = False
  o6530.StartCalculate()
  o6586.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5047.Value == L0) then
    o5047["Value"] = L0
    o6530.ReCalculate()
    o6586.ReCalculate()
  end
end }
S_o5048 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5048, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5048, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5048, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5048, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5048, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5048, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5053.SetStateValue(L1)
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
o5053 = { [nil] = {}, Start = function()
  o5053["Value"] = False
  o6642.StartCalculate()
  o6698.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5053.Value == L0) then
    o5053["Value"] = L0
    o6642.ReCalculate()
    o6698.ReCalculate()
  end
end }
S_o5054 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5054, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5054, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5054, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5054, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5054, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5054, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5059.SetStateValue(L1)
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
o5059 = { [nil] = {}, Start = function()
  o5059["Value"] = False
  o6754.StartCalculate()
  o6810.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5059.Value == L0) then
    o5059["Value"] = L0
    o6754.ReCalculate()
    o6810.ReCalculate()
  end
end }
S_o5060 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5060, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5060, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5060, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5060, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5060, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5060, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5065.SetStateValue(L1)
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
o5065 = { [nil] = {}, Start = function()
  o5065["Value"] = False
  o6866.StartCalculate()
  o6922.StartCalculate()
  o6978.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5065.Value == L0) then
    o5065["Value"] = L0
    o6866.ReCalculate()
    o6922.ReCalculate()
    o6978.ReCalculate()
  end
end }
S_o5066 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5066, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5066, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5066, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  SensorLib.ActivateAvpSensorComplex(L0, "medium", "player1", "", "", "", False, False, True)
  CallFunction(o5066, "Code4")
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5066, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5066, "Code6")
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
end, SetStateValue_Triggered = function(L0, L1)
  o5071.SetStateValue(L1)
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
o5071 = { [nil] = {}, Start = function()
  o5071["Value"] = False
  o7034.StartCalculate()
  o7090.StartCalculate()
  o7146.StartCalculate()
  o7202.StartCalculate()
end, SetStateValue = function(L0)
  if not (o5071.Value == L0) then
    o5071["Value"] = L0
    o7034.ReCalculate()
    o7090.ReCalculate()
    o7146.ReCalculate()
    o7202.ReCalculate()
  end
end }
S_o5072 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5072, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5072, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5072, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5072, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5072, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5072, "Code6")
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
      if not (o5074.Value ~= True) then
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
o5074 = { [nil] = {}, GetCalculated = function()
  if not (o4963.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5074.SetStateValue(o5074.GetCalculated())
end, StartCalculate = function()
  o5074["Value"] = o5074.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5074.Value == L0) then
    o5074["Value"] = L0
    CallFunction(o5072, "ProcesseStateChange")
  end
end }
S_o5128 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5128, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5128, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5128, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5128, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5128, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5128, "Code6")
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
      if not (o5130.Value ~= True) then
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
o5130 = { [nil] = {}, GetCalculated = function()
  if not (o4969.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5130.SetStateValue(o5130.GetCalculated())
end, StartCalculate = function()
  o5130["Value"] = o5130.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5130.Value == L0) then
    DelayedFunction(0.3, o5130, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5130.Value == L0) then
    o5130["Value"] = L0
    CallFunction(o5128, "ProcesseStateChange")
  end
end }
S_o5184 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5184, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5184, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5184, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5184, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5184, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5184, "Code6")
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
      if not (o5186.Value ~= True) then
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
o5186 = { [nil] = {}, GetCalculated = function()
  if not (o4969.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5186.SetStateValue(o5186.GetCalculated())
end, StartCalculate = function()
  o5186["Value"] = o5186.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5186.Value == L0) then
    DelayedFunction(0.1, o5186, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5186.Value == L0) then
    o5186["Value"] = L0
    CallFunction(o5184, "ProcesseStateChange")
  end
end }
S_o5240 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5240, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5240, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5240, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5240, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5240, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5240, "Code6")
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
      if not (o5242.Value ~= True) then
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
o5242 = { [nil] = {}, GetCalculated = function()
  if not (o4975.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5242.SetStateValue(o5242.GetCalculated())
end, StartCalculate = function()
  o5242["Value"] = o5242.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5242.Value == L0) then
    o5242["Value"] = L0
    CallFunction(o5240, "ProcesseStateChange")
  end
end }
S_o5296 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5296, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5296, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5296, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5296, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5296, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5296, "Code6")
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
      if not (o5298.Value ~= True) then
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
o5298 = { [nil] = {}, GetCalculated = function()
  if not (o4981.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5298.SetStateValue(o5298.GetCalculated())
end, StartCalculate = function()
  o5298["Value"] = o5298.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5298.Value == L0) then
    o5298["Value"] = L0
    CallFunction(o5296, "ProcesseStateChange")
  end
end }
S_o5352 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5352, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5352, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5352, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5352, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5352, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5352, "Code6")
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
      if not (o5354.Value ~= True) then
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
o5354 = { [nil] = {}, GetCalculated = function()
  if not (o4981.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5354.SetStateValue(o5354.GetCalculated())
end, StartCalculate = function()
  o5354["Value"] = o5354.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5354.Value == L0) then
    DelayedFunction(0.5, o5354, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5354.Value == L0) then
    o5354["Value"] = L0
    CallFunction(o5352, "ProcesseStateChange")
  end
end }
S_o5408 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5408, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5408, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5408, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5408, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5408, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5408, "Code6")
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
      if not (o5410.Value ~= True) then
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
o5410 = { [nil] = {}, GetCalculated = function()
  if not (o4987.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5410.SetStateValue(o5410.GetCalculated())
end, StartCalculate = function()
  o5410["Value"] = o5410.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5410.Value == L0) then
    o5410["Value"] = L0
    CallFunction(o5408, "ProcesseStateChange")
  end
end }
S_o5464 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5464, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5464, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5464, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5464, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5464, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5464, "Code6")
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
      if not (o5466.Value ~= True) then
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
o5466 = { [nil] = {}, GetCalculated = function()
  if not (o4987.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5466.SetStateValue(o5466.GetCalculated())
end, StartCalculate = function()
  o5466["Value"] = o5466.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5466.Value == L0) then
    DelayedFunction(0.5, o5466, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5466.Value == L0) then
    o5466["Value"] = L0
    CallFunction(o5464, "ProcesseStateChange")
  end
end }
S_o5520 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5520, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5520, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5520, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5520, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5520, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5520, "Code6")
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
      if not (o5522.Value ~= True) then
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
o5522 = { [nil] = {}, GetCalculated = function()
  if not (o4993.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5522.SetStateValue(o5522.GetCalculated())
end, StartCalculate = function()
  o5522["Value"] = o5522.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5522.Value == L0) then
    o5522["Value"] = L0
    CallFunction(o5520, "ProcesseStateChange")
  end
end }
S_o5576 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5576, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5576, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5576, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5576, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5576, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5576, "Code6")
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
      if not (o5578.Value ~= True) then
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
o5578 = { [nil] = {}, GetCalculated = function()
  if not (o4999.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5578.SetStateValue(o5578.GetCalculated())
end, StartCalculate = function()
  o5578["Value"] = o5578.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5578.Value == L0) then
    o5578["Value"] = L0
    CallFunction(o5576, "ProcesseStateChange")
  end
end }
S_o5632 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5632, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5632, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5632, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5632, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5632, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5632, "Code6")
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
      if not (o5634.Value ~= True) then
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
o5634 = { [nil] = {}, GetCalculated = function()
  if not (o4999.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5634.SetStateValue(o5634.GetCalculated())
end, StartCalculate = function()
  o5634["Value"] = o5634.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5634.Value == L0) then
    DelayedFunction(0.5, o5634, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5634.Value == L0) then
    o5634["Value"] = L0
    CallFunction(o5632, "ProcesseStateChange")
  end
end }
S_o5688 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5688, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5688, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5688, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5688, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5688, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5688, "Code6")
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
      if not (o5690.Value ~= True) then
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
o5690 = { [nil] = {}, GetCalculated = function()
  if not (o4999.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5690.SetStateValue(o5690.GetCalculated())
end, StartCalculate = function()
  o5690["Value"] = o5690.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5690.Value == L0) then
    DelayedFunction(0.8, o5690, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5690.Value == L0) then
    o5690["Value"] = L0
    CallFunction(o5688, "ProcesseStateChange")
  end
end }
S_o5744 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5744, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5744, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5744, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5744, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5744, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5744, "Code6")
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
      if not (o5746.Value ~= True) then
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
o5746 = { [nil] = {}, GetCalculated = function()
  if not (o5005.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5746.SetStateValue(o5746.GetCalculated())
end, StartCalculate = function()
  o5746["Value"] = o5746.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5746.Value == L0) then
    DelayedFunction(0.5, o5746, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5746.Value == L0) then
    o5746["Value"] = L0
    CallFunction(o5744, "ProcesseStateChange")
  end
end }
S_o5800 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5800, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5800, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5800, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5800, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5800, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5800, "Code6")
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
      if not (o5802.Value ~= True) then
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
o5802 = { [nil] = {}, GetCalculated = function()
  if not (o5011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5802.SetStateValue(o5802.GetCalculated())
end, StartCalculate = function()
  o5802["Value"] = o5802.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5802.Value == L0) then
    o5802["Value"] = L0
    CallFunction(o5800, "ProcesseStateChange")
  end
end }
S_o5856 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5856, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5856, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5856, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5856, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5856, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5856, "Code6")
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
      if not (o5858.Value ~= True) then
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
o5858 = { [nil] = {}, GetCalculated = function()
  if not (o5011.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5858.SetStateValue(o5858.GetCalculated())
end, StartCalculate = function()
  o5858["Value"] = o5858.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5858.Value == L0) then
    DelayedFunction(0.2, o5858, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5858.Value == L0) then
    o5858["Value"] = L0
    CallFunction(o5856, "ProcesseStateChange")
  end
end }
S_o5912 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5912, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5912, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5912, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5912, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5912, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5912, "Code6")
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
      if not (o5914.Value ~= True) then
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
o5914 = { [nil] = {}, GetCalculated = function()
  if not (o5017.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5914.SetStateValue(o5914.GetCalculated())
end, StartCalculate = function()
  o5914["Value"] = o5914.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5914.Value == L0) then
    o5914["Value"] = L0
    CallFunction(o5912, "ProcesseStateChange")
  end
end }
S_o5968 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o5968, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5968, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o5968, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o5968, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o5968, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o5968, "Code6")
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
      if not (o5970.Value ~= True) then
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
o5970 = { [nil] = {}, GetCalculated = function()
  if not (o5017.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o5970.SetStateValue(o5970.GetCalculated())
end, StartCalculate = function()
  o5970["Value"] = o5970.GetCalculated()
end, SetStateValue = function(L0)
  if not (o5970.Value == L0) then
    DelayedFunction(0.3, o5970, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o5970.Value == L0) then
    o5970["Value"] = L0
    CallFunction(o5968, "ProcesseStateChange")
  end
end }
S_o6024 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6024, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6024, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6024, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6024, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6024, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6024, "Code6")
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
      if not (o6026.Value ~= True) then
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
o6026 = { [nil] = {}, GetCalculated = function()
  if not (o5023.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6026.SetStateValue(o6026.GetCalculated())
end, StartCalculate = function()
  o6026["Value"] = o6026.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6026.Value == L0) then
    o6026["Value"] = L0
    CallFunction(o6024, "ProcesseStateChange")
  end
end }
S_o6080 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6080, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6080, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6080, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6080, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6080, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6080, "Code6")
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
      if not (o6082.Value ~= True) then
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
o6082 = { [nil] = {}, GetCalculated = function()
  if not (o5023.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6082.SetStateValue(o6082.GetCalculated())
end, StartCalculate = function()
  o6082["Value"] = o6082.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6082.Value == L0) then
    DelayedFunction(0.5, o6082, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6082.Value == L0) then
    o6082["Value"] = L0
    CallFunction(o6080, "ProcesseStateChange")
  end
end }
S_o6136 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6136, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6136, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6136, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6136, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6136, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6136, "Code6")
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
      if not (o6138.Value ~= True) then
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
o6138 = { [nil] = {}, GetCalculated = function()
  if not (o5029.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6138.SetStateValue(o6138.GetCalculated())
end, StartCalculate = function()
  o6138["Value"] = o6138.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6138.Value == L0) then
    o6138["Value"] = L0
    CallFunction(o6136, "ProcesseStateChange")
  end
end }
S_o6192 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6192, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6192, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6192, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6192, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6192, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6192, "Code6")
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
      if not (o6194.Value ~= True) then
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
o6194 = { [nil] = {}, GetCalculated = function()
  if not (o5029.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6194.SetStateValue(o6194.GetCalculated())
end, StartCalculate = function()
  o6194["Value"] = o6194.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6194.Value == L0) then
    DelayedFunction(0.2, o6194, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6194.Value == L0) then
    o6194["Value"] = L0
    CallFunction(o6192, "ProcesseStateChange")
  end
end }
S_o6248 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6248, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6248, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6248, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6248, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6248, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6248, "Code6")
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
      if not (o6250.Value ~= True) then
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
o6250 = { [nil] = {}, GetCalculated = function()
  if not (o5029.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6250.SetStateValue(o6250.GetCalculated())
end, StartCalculate = function()
  o6250["Value"] = o6250.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6250.Value == L0) then
    DelayedFunction(0.5, o6250, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6250.Value == L0) then
    o6250["Value"] = L0
    CallFunction(o6248, "ProcesseStateChange")
  end
end }
S_o6304 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6304, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6304, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6304, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6304, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6304, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6304, "Code6")
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
      if not (o6306.Value ~= True) then
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
o6306 = { [nil] = {}, GetCalculated = function()
  if not (o5035.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6306.SetStateValue(o6306.GetCalculated())
end, StartCalculate = function()
  o6306["Value"] = o6306.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6306.Value == L0) then
    o6306["Value"] = L0
    CallFunction(o6304, "ProcesseStateChange")
  end
end }
S_o6360 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6360, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6360, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6360, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6360, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6360, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6360, "Code6")
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
      if not (o6362.Value ~= True) then
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
o6362 = { [nil] = {}, GetCalculated = function()
  if not (o5035.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6362.SetStateValue(o6362.GetCalculated())
end, StartCalculate = function()
  o6362["Value"] = o6362.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6362.Value == L0) then
    DelayedFunction(0.5, o6362, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6362.Value == L0) then
    o6362["Value"] = L0
    CallFunction(o6360, "ProcesseStateChange")
  end
end }
S_o6416 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6416, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6416, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6416, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6416, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6416, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6416, "Code6")
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
      if not (o6418.Value ~= True) then
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
o6418 = { [nil] = {}, GetCalculated = function()
  if not (o5041.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6418.SetStateValue(o6418.GetCalculated())
end, StartCalculate = function()
  o6418["Value"] = o6418.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6418.Value == L0) then
    DelayedFunction(0.8, o6418, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6418.Value == L0) then
    o6418["Value"] = L0
    CallFunction(o6416, "ProcesseStateChange")
  end
end }
S_o6472 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6472, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6472, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6472, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6472, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6472, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6472, "Code6")
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
      if not (o6474.Value ~= True) then
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
o6474 = { [nil] = {}, GetCalculated = function()
  if not (o5041.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6474.SetStateValue(o6474.GetCalculated())
end, StartCalculate = function()
  o6474["Value"] = o6474.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6474.Value == L0) then
    o6474["Value"] = L0
    CallFunction(o6472, "ProcesseStateChange")
  end
end }
S_o6528 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6528, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6528, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6528, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6528, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6528, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6528, "Code6")
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
      if not (o6530.Value ~= True) then
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
o6530 = { [nil] = {}, GetCalculated = function()
  if not (o5047.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6530.SetStateValue(o6530.GetCalculated())
end, StartCalculate = function()
  o6530["Value"] = o6530.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6530.Value == L0) then
    o6530["Value"] = L0
    CallFunction(o6528, "ProcesseStateChange")
  end
end }
S_o6584 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6584, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6584, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6584, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6584, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6584, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6584, "Code6")
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
      if not (o6586.Value ~= True) then
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
o6586 = { [nil] = {}, GetCalculated = function()
  if not (o5047.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6586.SetStateValue(o6586.GetCalculated())
end, StartCalculate = function()
  o6586["Value"] = o6586.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6586.Value == L0) then
    DelayedFunction(0.3, o6586, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6586.Value == L0) then
    o6586["Value"] = L0
    CallFunction(o6584, "ProcesseStateChange")
  end
end }
S_o6640 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6640, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6640, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6640, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6640, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6640, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6640, "Code6")
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
      if not (o6642.Value ~= True) then
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
o6642 = { [nil] = {}, GetCalculated = function()
  if not (o5053.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6642.SetStateValue(o6642.GetCalculated())
end, StartCalculate = function()
  o6642["Value"] = o6642.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6642.Value == L0) then
    o6642["Value"] = L0
    CallFunction(o6640, "ProcesseStateChange")
  end
end }
S_o6696 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6696, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6696, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6696, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6696, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6696, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6696, "Code6")
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
  if not (o5053.Value ~= True) then
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
    DelayedFunction(0.2, o6698, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6698.Value == L0) then
    o6698["Value"] = L0
    CallFunction(o6696, "ProcesseStateChange")
  end
end }
S_o6752 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6752, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6752, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6752, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6752, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6752, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6752, "Code6")
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
      if not (o6754.Value ~= True) then
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
o6754 = { [nil] = {}, GetCalculated = function()
  if not (o5059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6754.SetStateValue(o6754.GetCalculated())
end, StartCalculate = function()
  o6754["Value"] = o6754.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6754.Value == L0) then
    DelayedFunction(0.5, o6754, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6754.Value == L0) then
    o6754["Value"] = L0
    CallFunction(o6752, "ProcesseStateChange")
  end
end }
S_o6808 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6808, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6808, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6808, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6808, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6808, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6808, "Code6")
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
      if not (o6810.Value ~= True) then
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
o6810 = { [nil] = {}, GetCalculated = function()
  if not (o5059.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6810.SetStateValue(o6810.GetCalculated())
end, StartCalculate = function()
  o6810["Value"] = o6810.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6810.Value == L0) then
    o6810["Value"] = L0
    CallFunction(o6808, "ProcesseStateChange")
  end
end }
S_o6864 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6864, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6864, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6864, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6864, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6864, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6864, "Code6")
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
      if not (o6866.Value ~= True) then
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
o6866 = { [nil] = {}, GetCalculated = function()
  if not (o5065.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6866.SetStateValue(o6866.GetCalculated())
end, StartCalculate = function()
  o6866["Value"] = o6866.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6866.Value == L0) then
    o6866["Value"] = L0
    CallFunction(o6864, "ProcesseStateChange")
  end
end }
S_o6920 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6920, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6920, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6920, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6920, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6920, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6920, "Code6")
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
      if not (o6922.Value ~= True) then
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
o6922 = { [nil] = {}, GetCalculated = function()
  if not (o5065.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6922.SetStateValue(o6922.GetCalculated())
end, StartCalculate = function()
  o6922["Value"] = o6922.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6922.Value == L0) then
    DelayedFunction(0.8, o6922, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6922.Value == L0) then
    o6922["Value"] = L0
    CallFunction(o6920, "ProcesseStateChange")
  end
end }
S_o6976 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o6976, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6976, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o6976, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o6976, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o6976, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o6976, "Code6")
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
      if not (o6978.Value ~= True) then
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
o6978 = { [nil] = {}, GetCalculated = function()
  if not (o5065.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o6978.SetStateValue(o6978.GetCalculated())
end, StartCalculate = function()
  o6978["Value"] = o6978.GetCalculated()
end, SetStateValue = function(L0)
  if not (o6978.Value == L0) then
    DelayedFunction(1, o6978, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o6978.Value == L0) then
    o6978["Value"] = L0
    CallFunction(o6976, "ProcesseStateChange")
  end
end }
S_o7032 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7032, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7032, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7032, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o7032, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7032, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7032, "Code6")
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
      if not (o7034.Value ~= True) then
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
o7034 = { [nil] = {}, GetCalculated = function()
  if not (o5071.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7034.SetStateValue(o7034.GetCalculated())
end, StartCalculate = function()
  o7034["Value"] = o7034.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7034.Value == L0) then
    o7034["Value"] = L0
    CallFunction(o7032, "ProcesseStateChange")
  end
end }
S_o7088 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7088, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7088, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7088, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o7088, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7088, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7088, "Code6")
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
      if not (o7090.Value ~= True) then
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
o7090 = { [nil] = {}, GetCalculated = function()
  if not (o5071.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7090.SetStateValue(o7090.GetCalculated())
end, StartCalculate = function()
  o7090["Value"] = o7090.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7090.Value == L0) then
    DelayedFunction(0.8, o7090, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7090.Value == L0) then
    o7090["Value"] = L0
    CallFunction(o7088, "ProcesseStateChange")
  end
end }
S_o7144 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7144, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7144, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7144, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o7144, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7144, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7144, "Code6")
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
      if not (o7146.Value ~= True) then
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
o7146 = { [nil] = {}, GetCalculated = function()
  if not (o5071.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7146.SetStateValue(o7146.GetCalculated())
end, StartCalculate = function()
  o7146["Value"] = o7146.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7146.Value == L0) then
    DelayedFunction(0.2, o7146, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7146.Value == L0) then
    o7146["Value"] = L0
    CallFunction(o7144, "ProcesseStateChange")
  end
end }
S_o7200 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Node_LeaveSimulation(L0.Node)
  CallFunction(o7200, "Code1")
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7200, "Code2")
  end
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    DipolLib.InUtero_Normal(L0, "Code3")
  else
    CallFunction(o7200, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    { L0, { {}, "Wait", 0 } }("Code4")
  else
    CallFunction(o7200, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7200, "Code5")
  end
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  Body_SetKineticShield(L0.Node, 0, 0)
  CallFunction(o7200, "Code6")
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
      if not (o7202.Value ~= True) then
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
o7202 = { [nil] = {}, GetCalculated = function()
  if not (o5071.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7202.SetStateValue(o7202.GetCalculated())
end, StartCalculate = function()
  o7202["Value"] = o7202.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7202.Value == L0) then
    DelayedFunction(0.5, o7202, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7202.Value == L0) then
    o7202["Value"] = L0
    CallFunction(o7200, "ProcesseStateChange")
  end
end }
S_o7256 = { [nil] = {}, Start = function(L0)

end }
S_o7257 = { [nil] = {}, Start = function(L0)

end }
S_o7258 = { [nil] = {}, Start = function(L0)

end }
S_o7259 = { [nil] = {}, Start = function(L0)

end }
S_o7260 = { [nil] = {}, Start = function(L0)

end }
o7262 = FormationLib.CreateFormation("Triangle", "", "", "", 0, 0)
S_o7263 = { [nil] = {}, Start = function(L0)

end }
S_o7264 = { [nil] = {}, Start = function(L0)

end }
S_o7265 = { [nil] = {}, Start = function(L0)

end }
S_o7266 = { [nil] = {}, Start = function(L0)

end }
S_o7267 = { [nil] = {}, Start = function(L0)

end }
S_o7268 = { [nil] = {}, Start = function(L0)

end }
S_o7269 = { [nil] = {}, Start = function(L0)

end }
S_o7270 = { [nil] = {}, Start = function(L0)

end }
S_o7271 = { [nil] = {}, Start = function(L0)

end }
S_o7272 = { [nil] = {}, Start = function(L0)

end }
S_o7273 = { [nil] = {}, Start = function(L0)

end }
S_o7274 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7274, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/Path_1")
  CallFunction(o7274, "Code2")
end, Code2 = function(L0)
  L0["CodeIndex"] = 2
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7274, "Code3")
  end
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7261, o7262, "/InGameSequences/Navigation/Path_1", "pos_1", "pos_2", 0.5, 1, "Code4")
  else
    CallFunction(o7274, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  Camera_Cut(L0.Node, 1)
  CallFunction(o7274, "Code5")
end, Code5 = function(L0)
  L0["CodeIndex"] = 5
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code6")
  else
    CallFunction(o7274, "Code6")
  end
end, Code6 = function(L0)
  L0["CodeIndex"] = 6
  SendRadioMessageTake(o30.Node, o4800.Node, 255)
  o4815.SetStateValue(True)
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/Path_2")
  SendRadioMessageTake(o30.Node, o4800.Node, 256)
  CallFunction(o7274, "Code10")
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7261, o7262, "/InGameSequences/Navigation/Path_2", "pos_1", "pos_2", 0.5, 1, "Code11")
  else
    CallFunction(o7274, "Code11")
  end
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  Camera_Cut(L0.Node, 1)
  o4816.SetStateValue(True)
  CallFunction(o7274, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code14")
  else
    CallFunction(o7274, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/Path_3")
  SendRadioMessageTake(o30.Node, o4800.Node, 257)
  SendRadioMessageTake(o30.Node, o4800.Node, 258)
  CallFunction(o7274, "Code17")
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7261, o7262, "/InGameSequences/Navigation/Path_3", "pos_1", "pos_2", 0.5, 1, "Code18")
  else
    CallFunction(o7274, "Code18")
  end
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  Camera_Cut(L0.Node, 1)
  o4817.SetStateValue(True)
  CallFunction(o7274, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code21")
  else
    CallFunction(o7274, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/Path_4")
  CallFunction(o7274, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7261, o7262, "/InGameSequences/Navigation/Path_4", "pos_1", "pos_2", 0.5, 1, "Code23")
  else
    CallFunction(o7274, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  Camera_Cut(L0.Node, 1)
  o4818.SetStateValue(True)
  CallFunction(o7274, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code26")
  else
    CallFunction(o7274, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/Path_5")
  SendRadioMessageTake(o30.Node, o4800.Node, 259)
  CallFunction(o7274, "Code28")
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7261, o7262, "/InGameSequences/Navigation/Path_5", "pos_1", "pos_2", 1, 1, "Code29")
  else
    CallFunction(o7274, "Code29")
  end
end, Code29 = function(L0)
  L0["CodeIndex"] = 29
  o4819.SetStateValue(True)
  CallFunction(o7274, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7275.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 2) then
    if not (L0.CodeIndex >= 3) then
      if not (o7276.Value ~= True) then
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
o7275 = { [nil] = {}, GetCalculated = function()
  if not (o4831.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7275.SetStateValue(o7275.GetCalculated())
end, StartCalculate = function()
  o7275["Value"] = o7275.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7275.Value == L0) then
    o7275["Value"] = L0
    CallFunction(o7274, "ProcesseStateChange")
  end
end }
o7276 = { [nil] = {}, GetCalculated = function()
  if not (o4814.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7276.SetStateValue(o7276.GetCalculated())
end, StartCalculate = function()
  o7276["Value"] = o7276.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7276.Value == L0) then
    o7276["Value"] = L0
    CallFunction(o7274, "ProcesseStateChange")
  end
end }
S_o7282 = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  Game_PlayMusic(GetGameNode(), "Atmo")
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  CallFunction(o7282, "Code3")
end, Code3 = function(L0)
  L0["CodeIndex"] = 3
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.2, "Code4")
  else
    CallFunction(o7282, "Code4")
  end
end, Code4 = function(L0)
  L0["CodeIndex"] = 4
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/Path_6")
  SendRadioMessageTake(o30.Node, o4800.Node, 252)
  SendRadioMessageTake(o30.Node, o4800.Node, 253)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_6", 0, "RBMY", 0)
  Camera_LookAt(L0.Node, "/Scenario_Dynamic/Object/player1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o7282, "Code11")
end, Code11 = function(L0)
  L0["CodeIndex"] = 11
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    FormationLib.VesselGotoInFormationFromTo(L0, o7261, o7262, "/InGameSequences/Navigation/Path_6", "pos_1", "pos_2", 1, 1, "Code12")
  else
    CallFunction(o7282, "Code12")
  end
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  Camera_Cut(L0.Node, 1)
  CallFunction(o7282, "Code13")
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code14")
  else
    CallFunction(o7282, "Code14")
  end
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  Camera_Cut(L0.Node, 1)
  o4831.SetStateValue(True)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/LookFromPosition_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/LookAtPosition_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o7282, "Code20")
end, Code20 = function(L0)
  L0["CodeIndex"] = 20
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2, "Code21")
  else
    CallFunction(o7282, "Code21")
  end
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  SendRadioMessageTake(o30.Node, o4800.Node, 254)
  CallFunction(o7282, "Code22")
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 8, "Code23")
  else
    CallFunction(o7282, "Code23")
  end
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  o4814.SetStateValue(True)
  CallFunction(o7282, "Code24")
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7282, "Code25")
  end
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/LookFromPosition_2", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/LookAtPosition_2", 0, "MMMN", 0)
  CallFunction(o7282, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7282, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/LookFromPosition_3", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/LookAtPosition_3", 0, "MMMN", 0)
  CallFunction(o7282, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7282, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/LookFromPosition_4", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/LookAtPosition_4", 0, "MMMN", 0)
  CallFunction(o7282, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7282, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/LookFromPosition_5", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/LookAtPosition_5", 0, "MMMN", 0)
  CallFunction(o7282, "Code36")
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7282, "Code37")
  end
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  Camera_Cut(L0.Node, 1)
  CallFunction(o7282, "Code38")
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code39")
  else
    CallFunction(o7282, "Code39")
  end
end, Code39 = function(L0)
  L0["CodeIndex"] = 39
  Director_EndCutscene(L0.Node)
  CallFunction(o7282, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code41")
  else
    CallFunction(o7282, "Code41")
  end
end, Code41 = function(L0)
  L0["CodeIndex"] = 41
  SendRadioMessageTake(o30.Node, o4800.Node, 260)
  Game_SetWayPoint(GetGameNode(), o4860.Node)
  SED_SetTaskTextKey(2100, -1, -1)
  CallFunction(o7282, "Code44")
end, Code44 = function(L0)
  L0["CodeIndex"] = 44
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 24) then
    if not (L0.CodeIndex >= 25) then
      if not (o7287.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 27) then
    if not (L0.CodeIndex >= 28) then
      if not (o7288.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 30) then
    if not (L0.CodeIndex >= 31) then
      if not (o7289.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 33) then
    if not (L0.CodeIndex >= 34) then
      if not (o7290.Value ~= True) then
        L1 = 0
      end
    end
  end
  if not (L0.CodeIndex < 36) then
    if not (L0.CodeIndex >= 37) then
      if not (o7291.Value ~= True) then
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
o7287 = { [nil] = {}, GetCalculated = function()
  if not (o4815.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7287.SetStateValue(o7287.GetCalculated())
end, StartCalculate = function()
  o7287["Value"] = o7287.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7287.Value == L0) then
    DelayedFunction(0.1, o7287, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7287.Value == L0) then
    o7287["Value"] = L0
    CallFunction(o7282, "ProcesseStateChange")
  end
end }
o7288 = { [nil] = {}, GetCalculated = function()
  if not (o4816.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7288.SetStateValue(o7288.GetCalculated())
end, StartCalculate = function()
  o7288["Value"] = o7288.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7288.Value == L0) then
    DelayedFunction(0.1, o7288, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7288.Value == L0) then
    o7288["Value"] = L0
    CallFunction(o7282, "ProcesseStateChange")
  end
end }
o7289 = { [nil] = {}, GetCalculated = function()
  if not (o4817.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7289.SetStateValue(o7289.GetCalculated())
end, StartCalculate = function()
  o7289["Value"] = o7289.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7289.Value == L0) then
    DelayedFunction(0.1, o7289, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7289.Value == L0) then
    o7289["Value"] = L0
    CallFunction(o7282, "ProcesseStateChange")
  end
end }
o7290 = { [nil] = {}, GetCalculated = function()
  if not (o4818.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7290.SetStateValue(o7290.GetCalculated())
end, StartCalculate = function()
  o7290["Value"] = o7290.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7290.Value == L0) then
    DelayedFunction(0.1, o7290, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7290.Value == L0) then
    o7290["Value"] = L0
    CallFunction(o7282, "ProcesseStateChange")
  end
end }
o7291 = { [nil] = {}, GetCalculated = function()
  if not (o4819.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7291.SetStateValue(o7291.GetCalculated())
end, StartCalculate = function()
  o7291["Value"] = o7291.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7291.Value == L0) then
    DelayedFunction(0.1, o7291, "SetDelayedStateValue", L0)
  end
end, SetDelayedStateValue = function(L0)
  if not (o7291.Value == L0) then
    o7291["Value"] = L0
    CallFunction(o7282, "ProcesseStateChange")
  end
end }
S_o7295 = { [nil] = { [nil] = {}, Start = function(L0)
  L0["CodeIndex"] = 0
  CallFunction(L0.Thread, "Code0")
end, Code0 = function(L0)
  L0["CodeIndex"] = 0
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
  else
    CallFunction(o7295, "Code1")
  end
end, Code1 = function(L0)
  L0["CodeIndex"] = 1
  Game_SetWayPoint(GetGameNode(), NOD_NodeRef())
  Game_SetDecompressionHeight(GetGameNode(), 160)
  Director_BeginCutscene(L0.Node)
  Camera_Cut(L0.Node, 1)
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_1", 0, "MMMN", 0)
  Camera_LookAt(L0.Node, "/InGameSequences/Object/dir_cammesh_1", 0, "MMMN", 0)
  Camera_RollTo(L0.Node, 0, 0, False)
  Camera_ZoomTo(L0.Node, 0, 1, 1)
  CallFunction(o7295, "Code9")
end, Code9 = function(L0)
  L0["CodeIndex"] = 9
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3.5, "Code10")
  else
    CallFunction(o7295, "Code10")
  end
end, Code10 = function(L0)
  L0["CodeIndex"] = 10
  Camera_MoveTo(L0.Node, "/InGameSequences/Object/dir_cammesh_1", 2, "MFMY", 70)
  Game_PlayMusic(GetGameNode(), "track3")
  CallFunction(o7295, "Code12")
end, Code12 = function(L0)
  L0["CodeIndex"] = 12
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4.5, "Code13")
  else
    CallFunction(o7295, "Code13")
  end
end, Code13 = function(L0)
  L0["CodeIndex"] = 13
  Camera_Cut(L0.Node, 1)
  CallFunction(o7295, "Code14")
end, Code14 = function(L0)
  L0["CodeIndex"] = 14
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code15")
  else
    CallFunction(o7295, "Code15")
  end
end, Code15 = function(L0)
  L0["CodeIndex"] = 15
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_3", 0, "MMMY", 0)
  CallFunction(o7295, "Code16")
end, Code16 = function(L0)
  L0["CodeIndex"] = 16
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.8, "Code17")
  else
    CallFunction(o7295, "Code17")
  end
end, Code17 = function(L0)
  L0["CodeIndex"] = 17
  Game_PlayMusic(GetGameNode(), "track4")
  CallFunction(o7295, "Code18")
end, Code18 = function(L0)
  L0["CodeIndex"] = 18
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 2.2, "Code19")
  else
    CallFunction(o7295, "Code19")
  end
end, Code19 = function(L0)
  L0["CodeIndex"] = 19
  FormationLib.PlaceFormationPath(o7261, o7262, "/InGameSequences/Navigation/BiontPlaPath_1")
  Camera_Cut(L0.Node, 1)
  CallFunction(o7295, "Code21")
end, Code21 = function(L0)
  L0["CodeIndex"] = 21
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code22")
  else
    CallFunction(o7295, "Code22")
  end
end, Code22 = function(L0)
  L0["CodeIndex"] = 22
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_4", 0, "MMMY", 0)
  CallFunction(o7295, "Code23")
end, Code23 = function(L0)
  L0["CodeIndex"] = 23
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code24")
  else
    CallFunction(o7295, "Code24")
  end
end, Code24 = function(L0)
  L0["CodeIndex"] = 24
  Camera_Cut(L0.Node, 1)
  CallFunction(o7295, "Code25")
end, Code25 = function(L0)
  L0["CodeIndex"] = 25
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 0.5, "Code26")
  else
    CallFunction(o7295, "Code26")
  end
end, Code26 = function(L0)
  L0["CodeIndex"] = 26
  Camera_MoveTo(L0.Node, "/InGameSequences/Object/dir_cammesh_1", 0, "MFMY", 70)
  CallFunction(o7295, "Code27")
end, Code27 = function(L0)
  L0["CodeIndex"] = 27
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code28")
  else
    CallFunction(o7295, "Code28")
  end
end, Code28 = function(L0)
  L0["CodeIndex"] = 28
  Game_PlayMusic(GetGameNode(), "Atmo")
  Camera_MoveTo(L0.Node, "/InGameSequences/Navigation/Position_5", 2, "MMMY", 0)
  CallFunction(o7295, "Code30")
end, Code30 = function(L0)
  L0["CodeIndex"] = 30
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 3, "Code31")
  else
    CallFunction(o7295, "Code31")
  end
end, Code31 = function(L0)
  L0["CodeIndex"] = 31
  Camera_LookAt(L0.Node, "/InGameSequences/Navigation/Position_2", 2, "MMMN", 0)
  o4828.SetStateValue(True)
  CallFunction(o7295, "Code33")
end, Code33 = function(L0)
  L0["CodeIndex"] = 33
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 4, "Code34")
  else
    CallFunction(o7295, "Code34")
  end
end, Code34 = function(L0)
  L0["CodeIndex"] = 34
  Camera_Cut(L0.Node, 1)
  CallFunction(o7295, "Code35")
end, Code35 = function(L0)
  L0["CodeIndex"] = 35
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code36")
  else
    CallFunction(o7295, "Code36")
  end
end, Code36 = function(L0)
  L0["CodeIndex"] = 36
  Director_EndCutscene(L0.Node)
  CallFunction(o7295, "Code37")
end, Code37 = function(L0)
  L0["CodeIndex"] = 37
  if not (L0.CommandTable.CheckCondition(L0) ~= 1) then
    CameraLib.Wait(L0, 1, "Code38")
  else
    CallFunction(o7295, "Code38")
  end
end, Code38 = function(L0)
  L0["CodeIndex"] = 38
  SED_SetTaskTextKey(2101, -1, -1)
  Game_SetWayPoint(GetGameNode(), o4952.Node)
  CallFunction(o7295, "Code40")
end, Code40 = function(L0)
  L0["CodeIndex"] = 40
end, CheckCondition = function(L0)
  if not (L0.CodeIndex < 0) then
    if not (L0.CodeIndex >= 1) then
      if not (o7296.Value ~= True) then
        L1 = 0
      end
    end
  end
  return L1
end }, ProcesseStateChange = function(L0)
  if not (L0.CommandTable.CheckCondition(L0) == 1) then
    StopAllActiveBehaviours_AndCall(L0, "Code" .. L0.CodeIndex + 1)
  end
end }
o7296 = { [nil] = {}, GetCalculated = function()
  if not (o4775.Value ~= True) then
    return 1
  else
    return 0
  end
end, ReCalculate = function()
  o7296.SetStateValue(o7296.GetCalculated())
end, StartCalculate = function()
  o7296["Value"] = o7296.GetCalculated()
end, SetStateValue = function(L0)
  if not (o7296.Value == L0) then
    o7296["Value"] = L0
    CallFunction(o7295, "ProcesseStateChange")
  end
end }
S_o7311 = { [nil] = {}, Start = function(L0)

end }
__StartUp = function()
  Game_LoadProgress_Enter(Node_Find("/"), 252)
  __InitLayout()
  __InitLayout = nil
  G_ScriptTimerThread = BindEasy(Node_Find("/"), "/script", C_ScriptTimer)
  o30 = BindEasy(Node_Find("/Scenario_Static/Object"), "pla_harvester_1", S_o30)
  o77 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_1", S_o77)
  o123 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_1", S_o123)
  o169 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_1", S_o169)
  o215 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_2", S_o215)
  o261 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_2", S_o261)
  o307 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_2", S_o307)
  o353 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_3", S_o353)
  o399 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_3", S_o399)
  o445 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_3", S_o445)
  o491 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_4", S_o491)
  o537 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_4", S_o537)
  o583 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_4", S_o583)
  o629 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_5", S_o629)
  o675 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_5", S_o675)
  o721 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_5", S_o721)
  o767 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_6", S_o767)
  o813 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_6", S_o813)
  o859 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_6", S_o859)
  o905 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_7", S_o905)
  o951 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_7", S_o951)
  o997 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_7", S_o997)
  o1043 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_8", S_o1043)
  o1089 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_8", S_o1089)
  o1135 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_8", S_o1135)
  o1181 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_9", S_o1181)
  o1227 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_9", S_o1227)
  o1273 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_9", S_o1273)
  o1319 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_10", S_o1319)
  o1365 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_10", S_o1365)
  o1411 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_10", S_o1411)
  o1457 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_11", S_o1457)
  o1503 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_11", S_o1503)
  o1549 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_11", S_o1549)
  o1595 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_12", S_o1595)
  o1641 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_12", S_o1641)
  o1687 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_12", S_o1687)
  o1733 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_13", S_o1733)
  o1779 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_13", S_o1779)
  o1825 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_13", S_o1825)
  o1871 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_14", S_o1871)
  o1917 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_14", S_o1917)
  o1963 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_14", S_o1963)
  o2009 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_15", S_o2009)
  o2055 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_15", S_o2055)
  o2101 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_15", S_o2101)
  o2147 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_16", S_o2147)
  o2193 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_16", S_o2193)
  o2239 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_16", S_o2239)
  o2285 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_17", S_o2285)
  o2331 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_17", S_o2331)
  o2377 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_17", S_o2377)
  o2423 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_18", S_o2423)
  o2469 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_18", S_o2469)
  o2515 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_18", S_o2515)
  o2561 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_19", S_o2561)
  o2607 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_19", S_o2607)
  o2653 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_19", S_o2653)
  o2699 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_20", S_o2699)
  o2745 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_20", S_o2745)
  o2791 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_20", S_o2791)
  o2837 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_21", S_o2837)
  o2883 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_21", S_o2883)
  o2929 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_21", S_o2929)
  o2975 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_22", S_o2975)
  o3021 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_22", S_o3021)
  o3067 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_22", S_o3067)
  o3113 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_23", S_o3113)
  o3159 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_23", S_o3159)
  o3205 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_23", S_o3205)
  o3251 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_24", S_o3251)
  o3297 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_24", S_o3297)
  o3343 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_24", S_o3343)
  o3389 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_25", S_o3389)
  o3435 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_25", S_o3435)
  o3481 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_25", S_o3481)
  o3527 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_26", S_o3527)
  o3573 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_26", S_o3573)
  o3619 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_26", S_o3619)
  o3665 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_27", S_o3665)
  o3711 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_27", S_o3711)
  o3757 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_23_1", S_o3757)
  o3803 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_23_1", S_o3803)
  o3849 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_23_1", S_o3849)
  o3895 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_24_1", S_o3895)
  o3941 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_24_1", S_o3941)
  o3987 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_24_1", S_o3987)
  o4033 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_25_1", S_o4033)
  o4079 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_25_1", S_o4079)
  o4125 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_25_1", S_o4125)
  o4171 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_26_1", S_o4171)
  o4217 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_26_1", S_o4217)
  o4263 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_26_1", S_o4263)
  o4309 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_04_1_1", S_o4309)
  o4355 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_04_2_1", S_o4355)
  o4401 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_28", S_o4401)
  o4447 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_28", S_o4447)
  o4493 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_28", S_o4493)
  o4539 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_01_29", S_o4539)
  o4585 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_02_29", S_o4585)
  o4631 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_rockface_03_29", S_o4631)
  o4677 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_l_1", S_o4677)
  o4723 = BindEasy(Node_Find("/Scenario_Static/Object"), "ter_reef_xl_1", S_o4723)
  o4769 = BindEasy(Node_Find("/Scenario_Dynamic/Navigation"), "Stream_1", S_o4769)
  o4770 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "EndOfCanyon", S_o4770)
  o4775.Start()
  o4776 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Send_261_Trigger", S_o4776)
  o4781.Start()
  o4782 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Send_262_Trigger", S_o4782)
  o4787.Start()
  o4788 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Send_263_Trigger", S_o4788)
  o4793.Start()
  o4794 = BindEasy(Node_Find("/Scenario_Dynamic/Trigger"), "Send_264_Trigger", S_o4794)
  o4799.Start()
  o4800 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "player1", S_o4800)
  o4814.Start()
  o4815.Start()
  o4816.Start()
  o4817.Start()
  o4818.Start()
  o4819.Start()
  o4828.Start()
  o4831.Start()
  o4860 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_waypoint_1", S_o4860)
  o4863.Start()
  o4865 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_1", S_o4865)
  o4868.Start()
  o4870 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_2", S_o4870)
  o4873.Start()
  o4875 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_3", S_o4875)
  o4878.Start()
  o4880 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_nextwaypoint_4", S_o4880)
  o4885 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "bio_sphere_1", S_o4885)
  o4901.Start()
  o4952 = BindEasy(Node_Find("/Scenario_Dynamic/Object"), "nav_attack_1", S_o4952)
  o4957 = BindEasy(Node_Find("/"), "Camera", S_o4957)
  o4958 = BindEasy(Node_Find("/vfx/Trigger"), "fx1", S_o4958)
  o4963.Start()
  o4964 = BindEasy(Node_Find("/vfx/Trigger"), "fx2", S_o4964)
  o4969.Start()
  o4970 = BindEasy(Node_Find("/vfx/Trigger"), "fx3", S_o4970)
  o4975.Start()
  o4976 = BindEasy(Node_Find("/vfx/Trigger"), "fx4", S_o4976)
  o4981.Start()
  o4982 = BindEasy(Node_Find("/vfx/Trigger"), "fx5", S_o4982)
  o4987.Start()
  o4988 = BindEasy(Node_Find("/vfx/Trigger"), "fx6", S_o4988)
  o4993.Start()
  o4994 = BindEasy(Node_Find("/vfx/Trigger"), "fx7", S_o4994)
  o4999.Start()
  o5000 = BindEasy(Node_Find("/vfx/Trigger"), "fx8", S_o5000)
  o5005.Start()
  o5006 = BindEasy(Node_Find("/vfx/Trigger"), "fx9", S_o5006)
  o5011.Start()
  o5012 = BindEasy(Node_Find("/vfx/Trigger"), "fx10", S_o5012)
  o5017.Start()
  o5018 = BindEasy(Node_Find("/vfx/Trigger"), "fx11", S_o5018)
  o5023.Start()
  o5024 = BindEasy(Node_Find("/vfx/Trigger"), "fx12", S_o5024)
  o5029.Start()
  o5030 = BindEasy(Node_Find("/vfx/Trigger"), "fx13", S_o5030)
  o5035.Start()
  o5036 = BindEasy(Node_Find("/vfx/Trigger"), "fx14", S_o5036)
  o5041.Start()
  o5042 = BindEasy(Node_Find("/vfx/Trigger"), "fx15", S_o5042)
  o5047.Start()
  o5048 = BindEasy(Node_Find("/vfx/Trigger"), "fx16", S_o5048)
  o5053.Start()
  o5054 = BindEasy(Node_Find("/vfx/Trigger"), "fx17", S_o5054)
  o5059.Start()
  o5060 = BindEasy(Node_Find("/vfx/Trigger"), "fx18", S_o5060)
  o5065.Start()
  o5066 = BindEasy(Node_Find("/vfx/Trigger"), "fx19", S_o5066)
  o5071.Start()
  o5072 = BindEasy(Node_Find("/vfx/Object"), "fx1_dir_explosion_magma_01_1", S_o5072)
  o5128 = BindEasy(Node_Find("/vfx/Object"), "fx2_dir_explosion_magma_01_2", S_o5128)
  o5184 = BindEasy(Node_Find("/vfx/Object"), "fx2_dir_explosion_magma_01_3", S_o5184)
  o5240 = BindEasy(Node_Find("/vfx/Object"), "fx3_dir_explosion_magma_02_1", S_o5240)
  o5296 = BindEasy(Node_Find("/vfx/Object"), "fx4_dir_explosion_magma_02_2", S_o5296)
  o5352 = BindEasy(Node_Find("/vfx/Object"), "fx4_dir_explosion_magma_01_4", S_o5352)
  o5408 = BindEasy(Node_Find("/vfx/Object"), "fx5_dir_explosion_magma_01_5", S_o5408)
  o5464 = BindEasy(Node_Find("/vfx/Object"), "fx5_dir_explosion_magma_01_6", S_o5464)
  o5520 = BindEasy(Node_Find("/vfx/Object"), "fx6_dir_explosion_magma_02_3", S_o5520)
  o5576 = BindEasy(Node_Find("/vfx/Object"), "fx7_dir_explosion_magma_02_4", S_o5576)
  o5632 = BindEasy(Node_Find("/vfx/Object"), "fx7_dir_explosion_magma_02_5", S_o5632)
  o5688 = BindEasy(Node_Find("/vfx/Object"), "fx7_dir_explosion_magma_01_7", S_o5688)
  o5744 = BindEasy(Node_Find("/vfx/Object"), "fx8_dir_explosion_magma_01_8", S_o5744)
  o5800 = BindEasy(Node_Find("/vfx/Object"), "fx9_dir_explosion_magma_01_9", S_o5800)
  o5856 = BindEasy(Node_Find("/vfx/Object"), "fx9_dir_explosion_magma_02_6", S_o5856)
  o5912 = BindEasy(Node_Find("/vfx/Object"), "fx10_dir_explosion_magma_02_7", S_o5912)
  o5968 = BindEasy(Node_Find("/vfx/Object"), "fx10_dir_explosion_magma_02_8", S_o5968)
  o6024 = BindEasy(Node_Find("/vfx/Object"), "fx11_dir_explosion_magma_01_10", S_o6024)
  o6080 = BindEasy(Node_Find("/vfx/Object"), "fx11_dir_explosion_magma_01_11", S_o6080)
  o6136 = BindEasy(Node_Find("/vfx/Object"), "fx12_dir_explosion_magma_02_9", S_o6136)
  o6192 = BindEasy(Node_Find("/vfx/Object"), "fx12_dir_explosion_magma_01_12", S_o6192)
  o6248 = BindEasy(Node_Find("/vfx/Object"), "fx12_dir_explosion_magma_01_13", S_o6248)
  o6304 = BindEasy(Node_Find("/vfx/Object"), "fx13_dir_explosion_magma_02_10", S_o6304)
  o6360 = BindEasy(Node_Find("/vfx/Object"), "fx13_dir_explosion_magma_01_14", S_o6360)
  o6416 = BindEasy(Node_Find("/vfx/Object"), "fx14_dir_explosion_magma_02_11", S_o6416)
  o6472 = BindEasy(Node_Find("/vfx/Object"), "fx14_dir_explosion_magma_01_15", S_o6472)
  o6528 = BindEasy(Node_Find("/vfx/Object"), "fx15_dir_explosion_magma_02_12", S_o6528)
  o6584 = BindEasy(Node_Find("/vfx/Object"), "fx15_dir_explosion_magma_01_16", S_o6584)
  o6640 = BindEasy(Node_Find("/vfx/Object"), "fx16_dir_explosion_magma_02_13", S_o6640)
  o6696 = BindEasy(Node_Find("/vfx/Object"), "fx16_dir_explosion_magma_01_17", S_o6696)
  o6752 = BindEasy(Node_Find("/vfx/Object"), "fx17_dir_explosion_magma_02_14", S_o6752)
  o6808 = BindEasy(Node_Find("/vfx/Object"), "fx17_dir_explosion_magma_01_18", S_o6808)
  o6864 = BindEasy(Node_Find("/vfx/Object"), "fx18_dir_explosion_magma_01_19", S_o6864)
  o6920 = BindEasy(Node_Find("/vfx/Object"), "fx18_dir_explosion_magma_02_15", S_o6920)
  o6976 = BindEasy(Node_Find("/vfx/Object"), "fx18_dir_explosion_magma_01_20", S_o6976)
  o7032 = BindEasy(Node_Find("/vfx/Object"), "fx19_dir_explosion_magma_01_21", S_o7032)
  o7088 = BindEasy(Node_Find("/vfx/Object"), "fx19_dir_explosion_magma_01_22", S_o7088)
  o7144 = BindEasy(Node_Find("/vfx/Object"), "fx19_dir_explosion_magma_02_16", S_o7144)
  o7200 = BindEasy(Node_Find("/vfx/Object"), "fx19_dir_explosion_magma_01_23", S_o7200)
  o7256 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookFromPosition_1", S_o7256)
  o7257 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookFromPosition_2", S_o7257)
  o7258 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookFromPosition_3", S_o7258)
  o7259 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookFromPosition_4", S_o7259)
  o7260 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookFromPosition_5", S_o7260)
  o7263 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookAtPosition_1", S_o7263)
  o7264 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookAtPosition_2", S_o7264)
  o7265 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookAtPosition_3", S_o7265)
  o7266 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookAtPosition_4", S_o7266)
  o7267 = BindEasy(Node_Find("/InGameSequences/Navigation"), "LookAtPosition_5", S_o7267)
  o7268 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_1", S_o7268)
  o7269 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_2", S_o7269)
  o7270 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_5", S_o7270)
  o7271 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_3", S_o7271)
  o7272 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_4", S_o7272)
  o7273 = BindEasy(Node_Find("/InGameSequences/Navigation"), "Position_6", S_o7273)
  o7311 = BindEasy(Node_Find("/InGameSequences/Object"), "dir_cammesh_1", S_o7311)
  o7274 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroDirector_1", S_o7274)
  o7282 = BindEasy(Node_Find("/InGameSequences/Director"), "IntroDirector_2", S_o7282)
  o7295 = BindEasy(Node_Find("/InGameSequences/Director"), "BiontDirector_1", S_o7295)
  o7261 = { {}, o4800 }()
  Game_LoadProgress_Leave(Node_Find("/"))
end
