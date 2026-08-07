-- dekompiliert aus glue.sco
-- Quelle laut Bytecode: =(none)

G_Debug = 0
Script_Debug = function(L0, L1)
  if not (L1) then
    L1 = 1
  end
  if not (G_Debug == 0) then
    Script_LogRaw("[DEBUG] (", Script_GetFunctionName(L1), ":", Script_GetLineNumber(L1), "): " .. L0)
  end
end
LoadTerrain = function(L0)
  if not (type(L0) == "string") then
    Script_Error("TerrainName must be a string")
    return
  end
  Terrain_LoadTerrain(L1, L0)
end
LoadTextures = function()
  Game_LoadTextures(L0)
end
SetPlayerToPosition = function(L0, L1, L2)
  if not (tag(L0) == __Tag_NOD_NodeRef) then
    Script_Error("Scenario is invalid")
    return
  end
  if not (type(L1) == "string") then
    Script_Error("PositionName is invalid")
    return
  end
  if not (tag(L2) == __Tag_MAT_Vector3) then
    Script_Error("OffsetVector is invalid")
    return
  end
  if L2 then
    L4 = L4 + L2
  end
  Body_SetPosition(L5, L4)
end
SetPlayerPosition = function(L0)
  Body_SetPosition(L2, L1)
end
SetPlayerPositionVector = function(L0)
  Body_SetPosition(L1, L0)
end
SetPlayerCS = function(L0, L1, L2, L3)
  Body_SetCS(L4, L0, MAT_Vector3(L1, L2, L3))
end
GetGameNode = function()
  node = Node_Find("/")
  return node
end
SetEnemyMatrixElement = function(L0, L1, L2)
  Game_SetEnemyMatrixElement(GetGameNode(), L0, L1, L2)
end
GetEnemyMatrixElement = function(L0, L1)
  return Game_GetEnemyMatrixElement(GetGameNode(), L0, L1)
end
SendRadioMessageTake = function(L0, L1, L2)
  return Game_SendRadioMessageTake(GetGameNode(), L0, L1, L2)
end
GetCameraNode = function()
  node = Node_Find("/camera")
  return node
end
GetPlayerNode = function()
  node = Node_Find("/player1")
  return node
end
__ThreadTable = { [nil] = {}, UniqueID = 0 }
BindThread = function(L0, L1, L2)
  if not (tag(L0) == __Tag_NOD_NodeRef) then
    Script_Error("BindThread() - Scenario is invalid", 2)
    return
  end
  if not (type(L1) == "string") then
    Script_Error("BindThread() - NodeName '", L1 .. "' is invalid", 2)
    return
  end
  if not (type(L2) == "table") then
    Script_Error("BindThread() - Thread is invalid, the nodename is '", L1 .. "'", 2)
    return
  end
  L2["State"] = nil
  L2["TypeId"] = 666
  L2["__UniqueID"] = Script_BindThread(L3)
  L2["Node"] = L3
  __ThreadTable[L2.__UniqueID] = L2
end
UnBindThread = function(L0)
  Script_Error("unbind thread called")
end
BindEasy = function(L0, L1, L2)
  if not (tag(L0) == __Tag_NOD_NodeRef) then
    Script_Error("BindThread() - Scenario is invalid", 2)
    return
  end
  if not (type(L2) == "table") then
    Script_Error("BindEasy() - State is invalid, the nodename is '", L1 .. "'", 2)
    return
  end
  BindThread(L0, L1, L3)
  L3["CommandTable"] = L2
  return L3
end
BindPlayer = function(L0)
  BindEasy(Node_Find("/"), "player1", L0)
end
BindBlock = function(L0, L1, L2, L3)
  if not (tag(L0) == __Tag_NOD_NodeRef) then
    Script_Error("BindBlock() - Scenario is invalid", 2)
    return
  end
  if not (type(L1) == "string") then
    Script_Error("BindBlock() - NodeName '", NodeName .. "' is invalid", 2)
    return
  end
  if not (type(L3) == "table") then
    Script_Error("BindBlock() - State is invalid, the nodename is '", NodeName .. "'", 2)
    return
  end
  L6["NumOfThreads"] = 0
  for L0 = 1, 99, 1 do
    L5 = (L8 .. L2)()
    if Script_IsNodeRefValid(L5) then
      L7 = {}
      L7["State"] = nil
      L7["TypeId"] = 666
      L7["__UniqueID"] = Script_BindThread(L5)
      __ThreadTable[L7.__UniqueID] = L7
      L7["Node"] = L5
      L7["CommandTable"] = L3
      L6["NumOfThreads"] = L6.NumOfThreads + 1
      L7["ThreadBlock"] = L6
      L7["ThreadBlockIndex"] = L6.NumOfThreads
      L6[L6.NumOfThreads] = L7
    end
  end
  return Node_Find, L0, L1, L6
end
MacroFuse = function(L0)
  L1["NumOfThreads"] = 0
  for k, v in L0 do
    if not (L7.NumOfThreads) then
      L1["NumOfThreads"] = L1.NumOfThreads + 1
      L1[L1.NumOfThreads] = L7
    else
      for L0 = 1, L7.NumOfThreads, 1 do
        L1["NumOfThreads"] = L1.NumOfThreads + 1
        L1[L1.NumOfThreads] = L7[L8]
      end
      return L1
    end
  end
end
CloneTable = function(L0)
  if not (type(L0) == "table") then
    Script_Error("CloneTable() No Table is invalid", 2)
    return L1
  end
  for k, v in L0 do
    L1[L5] = L6
  end
  return L1
end
CopyTableInto = function(L0, L1)
  for k, v in L0 do
    L1[L5] = L6
  end
end
Clone = function(L0, L1)
  CopyTableInto(L1, L2)
  return L2
end
C_ScriptTimer = { [nil] = {}, Start = function(L0)
  L0.Thread["__TimerList"] = {}
end, Timer = function(L0, L1)
  if not (L0.Thread.__TimerList) then
    Script_Error("[SCRIPTERROR] [ScriptTimer] ", Script_GetLineNumber(2) .. " the threads timer list is nil")
    return
  end
  L2 = L0.Thread.__TimerList[L1]
  L0.Thread.__TimerList[L1] = nil
  if L2 then
    Script_Debug("[TIME] Function ", L2.CallBack, " for timer ", L1 .. " will be executed")
    CallFunction(L2.ThreadOrBlock, L2.CallBack, L2.Param)
    return
  end
  Script_Debug("[TIME] Timer struct for timer ", L1 .. " is nil")
end }
SetTimer = function(L0, L1)
  if not (L0.TypeId == 666) then
    L0 = L0.Thread
  end
  if not (type(L0) == "table") then
    Script_Error("SetTimer() - Thread is invalid", 2)
    return
  end
  if not (type(L1) == "number") then
    Script_Error("SetTimer() - Delay is not a number", 2)
    return
  end
  L2 = Script_SetTimer(L0.__UniqueID, L1)
  return L2
end
StopTimer = function(L0, L1)
  if not (L0.TypeId == 666) then
    L0 = L0.Thread
  end
  if not (type(L0) == "table") then
    Script_Error("StopTimer() - Thread is invalid", 2)
    return
  end
  if not (type(L1) == "number") then
    Script_Error("StopTimer() - TimerHandle is not a number", 2)
    return
  end
  Script_StopTimer(L0.__UniqueID, L1)
end
CallFunction = function(L0, L1, L2)
  if not (type(L0) == "table") then
    Script_Error("CallFunction () - Thread or Block is invalid", 2)
    return
  end
  if not (type(L0.NumOfThreads) == "number") then
    L4 = L0.State
    if not (type(L4) == "table") then
      if not (type(L0) == "table") then
        Script_Error(" CallFunction() - No valid block", 2)
      end
      L3 = L0[L1]
      if not (type(L3) == "function") then
        Script_Error(" CallFunction() - ", L1 .. "is not a valid function", 2)
      end
      L3(L2)
    else
      L3 = L4.CommandTable[L1]
      if not (type(L3) ~= "function") then
        L3(L4, L2)
        -- Sprung nach 101
        for L0 = 1, L0.NumOfThreads, 1 do
          L6 = L0[L7]
          L4 = L6.State
          if not (?() == "table") then
            "CallFunction() -  Thread has no state"()
            return
          end
          L3 = L4.CommandTable[L1]
          if not (type(L3) ~= "function") then
            L3(L4, L2)
          end
        end
      end
    end
  end
end
DelayedFunction = function(L0, L1, L2, L3)
  if not (type(L1) == "table") then
    Script_Error("CallFunctionWithDelay () - Thread or Block is invalid", 2)
    return
  end
  if not (type(L0) == "number") then
    Script_Error("CallFunctionWithDelay () - Seconds must be a number", 2)
    return
  end
  L4["ThreadOrBlock"] = L1
  L4["CallBack"] = L2
  L4["Param"] = L3
  L5 = Script_SetTimer(G_ScriptTimerThread.__UniqueID, L0)
  G_ScriptTimerThread.__TimerList[L5] = L4
  return L5
end
DelayedFunctionStop = function(L0)
  if L0 then
    G_ScriptTimerThread.__TimerList[L0] = nil
    Script_StopTimer(G_ScriptTimerThread.__UniqueID, L0)
  end
end
StartShieldGuard = function(L0)
  if not (L0.Thread.ShieldGuardActive ~= 0) then
    Body_ActivateShieldGuard(L0.Node)
  end
  L0.Thread["ShieldGuardActive"] = L0.Thread.ShieldGuardActive + 1
end
StopShieldGuard = function(L0)
  L0.Thread["ShieldGuardActive"] = L0.Thread.ShieldGuardActive + -1
  if not (L0.Thread.ShieldGuardActive ~= 0) then
    Body_DeactivateShieldGuard(L0.Node)
  end
end
StartShotHit = function(L0)
  if not (L0.Thread.ShotHitActive ~= 0) then
    Body_RequestShotHits(L0.Node)
  end
  L0.Thread["ShotHitActive"] = L0.Thread.ShotHitActive + 1
end
StopShotHit = function(L0)
  L0.Thread["ShotHitActive"] = L0.Thread.ShotHitActive + -1
  if not (L0.Thread.ShotHitActive ~= 0) then
    Body_RejectShotHits(L0.Node)
  end
end
StartEnemy = function(L0, L1, L2, L3, L4, L5)
  Body_InformEnemies(L0.Node, L1, L2, L3, L4, L5)
end
StopEnemy = function(L0)
  Body_RejectEnemies(L0.Node)
end
StartEnemyPatrol = function(L0, L1, L2, L3, L4, L5, L6, L7)
  Body_InformEnemyPatrol(L0.Node, L1, L2, L3, L4, L5, L6, L7)
end
StopEnemyPatrol = function(L0)
  Body_RejectEnemyPatrol(L0.Node)
end
InsertSensorBehaviour = function(L0, L1, L2)
  L0.Sensors[L1] = L2
end
RemoveSensorBehaviour = function(L0, L1)
  L0.Sensors[L1] = nil
end
CheckSensorBehaviour = function(L0, L1)
  if L1 then
    -- Sprung nach 10
  end
  return nil, 1
end
InvokeFunction = function(L0, L1, L2)
  for k, v in L1.Sensors do
    if L7[L0] then
      ?()
    end
  end
  if L1.CommandTable[L0] then
    L7[L0](L1, L2, L1.CommandTable[L0], L1, L2)
  end
end
G_SensorCallbackTable = { [nil] = {}, Body_InformShotHit = function(L0, L1, L2)
  InvokeFunction("Body_InformShotHit", L0, L1)
end, Body_ObjectDestroyed = function(L0)
  InvokeFunction("Body_ObjectDestroyed", L0, nil)
end, Body_KinShieldBarrierReached = function(L0, L1)
  InvokeFunction("Body_KinShieldBarrierReached", L0, L1)
end, Body_EmpShieldBarrierReached = function(L0, L1)
  InvokeFunction("Body_EmpShieldBarrierReached", L0, L1)
end, Body_EscapePodEjected = function(L0)
  InvokeFunction("Body_EscapePodEjected", L0)
end, Body_EnemyArrival = function(L0)
  InvokeFunction("Body_EnemyArrival", L0, nil)
end, Body_EnemyArrivalPatrol = function(L0)
  InvokeFunction("Body_EnemyArrivalPatrol", L0, nil)
end, Trigger_EnterPresence = function(L0, L1)
  InvokeFunction("Trigger_EnterPresence", L0, L1)
end, Trigger_LeavePresence = function(L0, L1)
  InvokeFunction("Trigger_LeavePresence", L0, L1)
end, Trigger_EnterAcoustic = function(L0, L1)
  InvokeFunction("Trigger_EnterAcoustic", L0, L1)
end, Trigger_LeaveAcoustic = function(L0, L1)
  InvokeFunction("Trigger_LeaveAcoustic", L0, L1)
end, Trigger_EnterVisible = function(L0, L1)
  InvokeFunction("Trigger_EnterVisible", L0, L1)
end, Trigger_LeaveVisible = function(L0, L1)
  InvokeFunction("Trigger_LeaveVisible", L0, L1)
end, PhysicalCharacter_SonarDestroyed = function(L0)
  SetEngineValue(L0, "Sonar", 1)
end, PhysicalCharacter_Stripped = function(L0)
  SetEngineValue(L0, "Stripped", 1)
end, Body_EMPParalyzed = function(L0)
  SetEngineValue(L0, "Emp", 1)
  SetEngineValue(L0, "DestEmp", 1)
  SetEngineValue(L0, "EmpJump", 1)
  SetEngineValue(L0, "DestEmpJump", 1)
end, WayPoint_InformActivated = function(L0)
  SetEngineValue(L0, "Activated", 1)
end, WayPoint_InformDeactivated = function(L0)
  SetEngineValue(L0, "Deactivated", 1)
end, WayPoint_InformEntered = function(L0)
  SetEngineValue(L0, "Entered", 1)
end, WayPoint_InformLeft = function(L0)
  SetEngineValue(L0, "Left", 1)
end, Player_UnderAttack = function(L0)
  SetEngineValue(L0, "UnderAttack", 1)
end, Player_LeftAttack = function(L0)
  SetEngineValue(L0, "UnderAttack", 0)
end, Player_InformShipID = function(L0, L1)
  if not (L1 ~= 1) then
    SetEngineValue(L0, "Ship1", 1)
  else
    if not (L1 ~= 2) then
      SetEngineValue(L0, "Ship2", 1)
    else
      if not (L1 ~= 3) then
        SetEngineValue(L0, "Ship3", 1)
      else
        if not (L1 ~= 4) then
          SetEngineValue(L0, "Ship4", 1)
        end
      end
    end
  end
end, Player_InformKeyUsed = function(L0)
  SetEngineValue(L0, "KeyUsed", 1)
end, Player_KinShieldBelow = function(L0, L1)
  if not (L1 ~= 75) then
    SetEngineValue(L0, "KineticShield75", 1)
  else
    if not (L1 ~= 50) then
      SetEngineValue(L0, "KineticShield50", 1)
    else
      if not (L1 ~= 25) then
        SetEngineValue(L0, "KineticShield25", 1)
      else
        if not (L1 ~= 10) then
          SetEngineValue(L0, "KineticShield10", 1)
        end
      end
    end
  end
end, Body_ObjectDestroyedBy = function(L0, L1)
  if not (L1 ~= 1) then
    SetEngineValue(L0, "DestroyedBy1", 1)
  else
    if not (L1 ~= 2) then
      SetEngineValue(L0, "DestroyedBy2", 1)
    else
      if not (L1 ~= 3) then
        SetEngineValue(L0, "DestroyedBy3", 1)
      else
        if not (L1 ~= 4) then
          SetEngineValue(L0, "DestroyedBy4", 1)
        else
          if not (L1 ~= 5) then
            SetEngineValue(L0, "DestroyedBy5", 1)
          else
            if not (L1 ~= 6) then
              SetEngineValue(L0, "DestroyedBy6", 1)
            end
          end
        end
      end
    end
  end
end, ShieldedBody_InformEmpShieldBelow = function(L0, L1)
  if not (L1 ~= 75) then
    SetEngineValue(L0, "EmpShield75", 1)
  else
    if not (L1 ~= 50) then
      SetEngineValue(L0, "EmpShield50", 1)
    else
      if not (L1 ~= 25) then
        SetEngineValue(L0, "EmpShield25", 1)
      else
        if not (L1 ~= 10) then
          SetEngineValue(L0, "EmpShield10", 1)
        else
          if not (L1 ~= 0) then
            SetEngineValue(L0, "Emp", 1)
          end
        end
      end
    end
  end
end }
LibList = {}
LoadLib = function(L0)
  if LibList[L0 .. "_Basis"] then
    return LibList[L0 .. "_Basis"]
  end
  Script_DoFile("dat\\script\\Lib\\", L0 .. ".sco")
  return LibList[L0 .. "_Basis"]
end
StopAllActiveBehaviours = function(L0)
  L1 = L0.HLB
  if not (L1.NumOfEntries <= 0) then
    if not (L1.CommandTableIndication[L1.NumOfEntries] == "LD_Docking") then
      if not (L1.CommandTableIndication[L1.NumOfEntries] == "LV_Docking") then
        L0.CommandTable.StopBehavior(L0)
        -- Schleifenende, zurueck nach 4
      end
    end
  end
end
StopAllActiveBehaviours_AndCall = function(L0, L1)
  L2 = L0.HLB
  if not (L2.NumOfEntries <= 0) then
    if not (L2.CommandTableIndication[L2.NumOfEntries] == "LD_Docking") then
      if not (L2.CommandTableIndication[L2.NumOfEntries] == "LV_Docking") then
        L0.CommandTable.StopBehavior(L0)
        -- Schleifenende, zurueck nach 4
      end
    end
  end
  CallFunction(L0.Thread, L1)
end
SetEngineValue = function(L0, L1, L2)
  CallFunction(L0.Thread, "SetStateValue_" .. L1, L2)
end
GotoState = function(L0, L1)
  if not (L0.TypeId == 666) then
    L0 = L0.Thread
  end
  L0["State"] = {}
  if not (type(L0) == "table") then
    Script_Error("GotoState() - Thread is invalid", 2)
    return
  end
  if not (type(L1) == "table") then
    Script_Error("GotoState() - State is invalid", 2)
    return
  end
  L0.State["Node"] = L0.Node
  L0.State["Thread"] = L0
  L0.State["CommandTable"] = L1
  L0[L1] = { HLB = {}, NumOfEntries = 0, OldCommandTable = {}, CommandTableIndication = {} }
  L0.State["Sensors"] = {}
  if not (?() ~= "function") then
    L0.State.CommandTable.Start(L0.State)
  end
end
IsNotLastModification = function(L0, L1)
  if not (L0.HLB.CommandTableIndication[L0.HLB.NumOfEntries] ~= L1) then
  end
  return nil, 1
end
ApplyModification = function(L0, L1, L2)
  Script_Debug("[MOD] ", L0.Node, ": Applying modification ", L2, " Level: " .. L0.HLB.NumOfEntries)
  L0.HLB["NumOfEntries"] = L0.HLB.NumOfEntries + 1
  L0.HLB.OldCommandTable[L0.HLB.NumOfEntries] = L0.CommandTable
  L0.HLB.CommandTableIndication[L0.HLB.NumOfEntries] = L2
  L0["CommandTable"] = Clone(L0.CommandTable, L1)
end
ForceModification = function(L0, L1, L2)
  Script_Debug("[MOD] ", L0.Node, ": Force modification ", L2, " Level: " .. L0.HLB.NumOfEntries)
  L0.HLB["NumOfEntries"] = L0.HLB.NumOfEntries + 1
  L0.HLB.OldCommandTable[L0.HLB.NumOfEntries] = L0.CommandTable
  L0.HLB.CommandTableIndication[L0.HLB.NumOfEntries] = L2
  L0["CommandTable"] = CloneTable(L1)
end
RestoreModification = function(L0, L1)
  if not (L0.HLB.CommandTableIndication[L0.HLB.NumOfEntries] == L1) then
    Script_LogRaw("[SCRIPTERROR] [", Script_GetLineNumber(2), " ", Script_GetLineNumber(3), " ", L0.Node, "] RestoreModification()  ", L1 .. " - Modification is invalid")
    return
  end
  L0["CommandTable"] = L0.HLB.OldCommandTable[L0.HLB.NumOfEntries]
  L0.HLB.OldCommandTable[L0.HLB.NumOfEntries] = nil
  L0.HLB.CommandTableIndication[L0.HLB.NumOfEntries] = nil
  L0.HLB["NumOfEntries"] = L0.HLB.NumOfEntries + -1
  Script_Debug("[MOD] ", L0.Node, ": Restored modification ", L1, " Level: " .. L0.HLB.NumOfEntries)
end
StoreInnerValue = function(L0, L1, L2)
  L0.CommandTable[L1] = L2
end
GetInnerValue = function(L0, L1)
  return L0.CommandTable[L1]
end
TriggerThread = function(L0, L1, L2, L3, L4)
  if not (type(L0) == "table") then
    Script_Error("TriggerThread() - Thread is invalid", 2)
    return
  end
  state = L0.State
  if not (type(state) == "table") then
    Script_Error("TriggerThread() - Thread has no state", 2)
    return
  end
  func = state.CommandTable.Trigger
  if not (type(func) == "function") then
    Script_Error("Thread did not implement 'Trigger' function")
    return
  end
  func(state, L1, L2, L3, L4)
end
__Tag_Nil = tag(nil)
__Tag_Num = tag(0)
settagmethod_hook = {}
settagmethod = settagmethod
tostring_hook = {}
tostring = tostring
settagmethod_hook["tostring"] = function(L0, L1, L2)
  tostring_hook[L0] = L2
  settagmethod(L0, "concat", function(L0, L1)
    return tostring(L0) .. tostring(L1)
  end)
end
settagmethod(__Tag_Nil, "tostring", function(L0)
  return "<nil>"
end)
__Tag_MAT_Vector3 = tag(MAT_Vector3())
settagmethod(__Tag_MAT_Vector3, "tostring", function(L0)
  return format("MAT_Vector3(%g, %g, %g)", L0.X, L0.Y, L0.Z)
end)
__Tag_NOD_NodeRef = tag(NOD_NodeRef())
settagmethod(__Tag_NOD_NodeRef, "tostring", function(L0)
  return Node_GetName(L0)
end)
__BeginPlay = function(L0)
  L1["ShieldGuardActive"] = 0
  L1["ShotHitActive"] = 0
  if not (type(L1.CommandTable) ~= "table") then
    GotoState(L1, L1.CommandTable)
  else
    if not (type(L1.BeginPlay) ~= "function") then
      L1.BeginPlay(L1)
    end
  end
end
__Timer = function(L0, L1)
  if not (type(L2.State.CommandTable.Timer) ~= "function") then
    L2.State.CommandTable.Timer(L2.State, L1)
  end
end
__GetStateFunction = function(L0, L1)
  if G_SensorCallbackTable[L1] then
    func = G_SensorCallbackTable[L1]
  else
    func = L2.State.CommandTable[L1]
  end
  state = L2.State
  return func, state
end
Boot = function(L0, L1, L2)
  if not (type(L0) == "string") then
    Script_Error("Boot() - TerrainName must be a string", 2)
    return
  end
  if not (type(L1) == "string") then
    Script_Error("Boot() - FogName must be a string", 2)
    return
  end
  if not (type(L2) == "string") then
    Script_Error("Boot() - PlayerOsdName must be a string")
    return
  end
  Node_AddSon(L3, L4)
  Node_EnterSimulation(L4)
  Terrain_LoadTerrain(L4, "map\\", L0 .. "\\terrain")
  Body_SetPosition(L5, MAT_Vector3(2048, 2048, 256))
  Body_SetOrientation(L5, MAT_Vector3(0, 0, 0))
  Node_ParseIniFile(L5, "osd\\", L2 .. ".osd")
  Node_AddSon(L3, L5)
  Node_EnterSimulation(L5)
  Camera_SetBackPlane(L6, 1024)
  Camera_LookFrom(L6, "/player1")
  Node_AddSon(L3, L6)
  Node_EnterSimulation(L6)
  Game_SetPlayer(L3, "/player1")
  Game_SetCamera(L3, "/camera")
  Game_SetConsole(L3, "/console")
  Game_LoadFog(L3, "map\\", L0 .. "\\fog\\fog")
  G_ScriptTimerThread = BindEasy(L3, "/script", C_ScriptTimer)
  Game_ResetEnemyMatrix(GetGameNode())
end
