-- dekompiliert aus dat\script\lib\vehiclegoto.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

LibSync = LoadLib("Synchronization")
LCG_Semaphores = {}
LCG_SimpleGoose = { [nil] = {}, LCG_Activate = function(L0)
  Vehicle_Stop(L0.Node)
  LibSync.LockSemaphore(L0, GetInnerValue(L0, "LSG_Semaphore"))
end, LCG_StartGoing = function(L0)
  Vehicle_Goto(L0.Node, GetInnerValue(L0, "LSG_Path"), GetInnerValue(L0, "LSG_Speed"), GetInnerValue(L0, "LSG_Radius"))
end, Vehicle_GotoPosReached = function(L0, L1, L2)
  if not (L2 ~= GetInnerValue(L0, "LSG_SyncNode")) then
    LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LSG_Semaphore"))
  end
end, Vehicle_GotoArrived = function(L0, L1)
  RestoreModification(L0, "LCG_SimpleGoose")
  StopShieldGuard(L0)
  CallFunction(L0.Thread, L2, L3)
end, Body_ObjectDestroyed = function(L0)
  LibList.VehicleGoto_Basis.GooseMarchStatStop(L0)
end, StopBehavior = function(L0)
  LibList.VehicleGoto_Basis.GooseMarchStatStop(L0)
end }
LCG_ComplexGoose = { [nil] = {}, LCG_Activate = function(L0)
  Vehicle_Patrol(L0.Node, GetInnerValue(L0, "LCG_PatrolArea"), -1)
  LibSync.LockSemaphore(L0, GetInnerValue(L0, "LCG_Semaphore"))
end, LCG_StartGoing = function(L0)
  Vehicle_Goto(L0.Node, GetInnerValue(L0, "LCG_Path"), GetInnerValue(L0, "LCG_Speed"), GetInnerValue(L0, "LCG_Radius"))
end, Vehicle_GotoPosReached = function(L0, L1, L2)
  if not (L2 ~= GetInnerValue(L0, "LCG_SyncNode")) then
    LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LCG_Semaphore"))
  end
end, Vehicle_GotoArrived = function(L0, L1)
  RestoreModification(L0, "LCG_ComplexGoose")
  StopShieldGuard(L0)
  CallFunction(L0.Thread, L2, L3)
end, Body_ObjectDestroyed = function(L0)
  LibList.VehicleGoto_Basis.GooseMarchPatStop(L0)
end, StopBehavior = function(L0)
  LibList.VehicleGoto_Basis.GooseMarchPatStop(L0)
end }
LCG_MultiPatrol = { [nil] = {}, LCG_Activate = function(L0)
  Vehicle_Patrol(L0.Node, GetInnerValue(L0, "LMP_ListOfPatrolAreas")[1], GetInnerValue(L0, "LMP_CompleteTimeOut"))
end, Vehicle_PatrolFinished = function(L0)
  if not (GetInnerValue(L0, "LMP_Position") ~= 1) then
    if not (GetInnerValue(L0, "LMP_Direction") ~= -1) then
      StoreInnerValue(L0, "LMP_Direction", 1)
    end
  end
  if not (GetInnerValue(L0, "LMP_Position") ~= GetInnerValue(L0, "LMP_Entries")) then
    if not (GetInnerValue(L0, "LMP_Direction") ~= 1) then
      StoreInnerValue(L0, "LMP_Direction", -1)
    end
  end
  L1 = GetInnerValue(L0, "LMP_Position") + GetInnerValue(L0, "LMP_Direction")
  StoreInnerValue(L0, "LMP_Position", L1)
  Vehicle_Patrol(L0.Node, GetInnerValue(L0, "LMP_ListOfPatrolAreas")[L1], GetInnerValue(L0, "LMP_CompleteTimeOut"))
end, StopBehavior = function(L0)
  LibList.VehicleGoto_Basis.MultiPatrolStop(L0)
end }
LCG_ComplexGoto = { [nil] = {}, LCG_Activate = function(L0)
  GetInnerValue(L0, "LCG_Process")(L0)
end, LCG_Process = function(L0)
  if not (GetInnerValue(L0, "LG_Entries") ~= GetInnerValue(L0, "LG_Position")) then
    if not (GetInnerValue(L0, "LG_CallBack")) then
      StoreInnerValue(L0, "LG_Position", 0)
    else
      L6 = GetInnerValue(L0, "LG_Timer")
      if not (L6 == -1) then
        StopTimer(L0.Thread, L6)
      end
      Vehicle_AvoidanceObjects(L0.Node, 1)
      L1 = GetInnerValue(L0, "LG_CallBack")
      L2 = GetInnerValue(L0, "LG_Param")
      RestoreModification(L0, "LCG_ComplexGoto")
      CallFunction(L0.Thread, L1, L2)
      return
    end
  end
  L4 = GetInnerValue(L0, "LG_Position") + 1
  StoreInnerValue(L0, "LG_Position", L4)
  L3 = GetInnerValue(L0, "LG_ToDoList")[L4]
  L5 = GetInnerValue(L0, "LG_OldPosition")
  if not (L3[1] ~= "Goto") then
    if L5 then
      Vehicle_GotoFromPosition(L0.Node, L3[2], L5, L3[3], L3[4])
    else
      Vehicle_Goto(L0.Node, L3[2], L3[3], L3[4])
      -- Sprung nach 280
      if not (L3[1] ~= "GotoFrom") then
        if L5 then
          Vehicle_GotoFromPosition(L0.Node, L3[2], L5, L3[4], L3[5])
        else
          Vehicle_GotoFromPosition(L0.Node, L3[2], L3[3], L3[4], L3[5])
          -- Sprung nach 280
          if not (L3[1] ~= "GotoFromTo") then
            if L5 then
              Vehicle_GotoFromTo(L0.Node, L3[2], L5, L3[4], L3[5], L3[6])
            else
              Vehicle_GotoFromTo(L0.Node, L3[2], L3[3], L3[4], L3[5], L3[6])
              -- Sprung nach 280
              if not (L3[1] ~= "Wait") then
                Vehicle_Stop(L0.Node)
                L6 = SetTimer(L0.Thread, L3[2])
                StoreInnerValue(L0, "LG_Timer", L6)
              else
                if not (L3[1] ~= "ActivateAvoidance") then
                  Vehicle_AvoidanceObjects(L0.Node, 1)
                  StoreInnerValue(L0, "LG_Avoidance", 1)
                  GetInnerValue(L0, "LCG_Process")(L0)
                else
                  if not (L3[1] ~= "DeactivateAvoidance") then
                    Vehicle_AvoidanceObjects(L0.Node, 0)
                    StoreInnerValue(L0, "LG_Avoidance", 0)
                    GetInnerValue(L0, "LCG_Process")(L0)
                  else
                    Script_LogRaw("[SCRIPTERROR] [", Script_GetLineNumber(2), "] ComplexGoto - Unknown commad " .. L3[1])
                  end
                end
              end
            end
            StoreInnerValue(L0, "LG_OldPosition", nil)
          end
        end
      end
    end
  end
end, Vehicle_GotoArrived = function(L0, L1, L2)
  GetInnerValue(L0, "LCG_Process")(L0)
end, Timer = function(L0, L1)
  if not (L1 ~= GetInnerValue(L0, "LG_Timer")) then
    StoreInnerValue(L0, "LG_Timer", -1)
    GetInnerValue(L0, "LCG_Process")(L0)
  end
end, Vehicle_GotoPosReached = function(L0, L1, L2)
  StoreInnerValue(L0, "LG_OldPositionRem", L2)
end, StopBehavior = function(L0)
  LibList.VehicleGoto_Basis.ComplexGotoStop(L0)
end }
nil[nil] = { VehicleGoto_Basis = {}, GooseMarchStat = function(L0, L1, L2, L3, L4, L5, L6)
  L7 = Node_GetPath(Node_Find(L0.Node, L1))
  if not (LCG_Semaphores[L7]) then
    LCG_Semaphores[L7] = LibSync.CreateSemaphore(1, "LCG_StartGoing")
  end
  ApplyModification(L0, LCG_SimpleGoose, "LCG_SimpleGoose")
  StoreInnerValue(L0, "LSG_Semaphore", LCG_Semaphores[L7])
  StoreInnerValue(L0, "LSG_Path", L1)
  StoreInnerValue(L0, "LSG_SyncNode", L2)
  StoreInnerValue(L0, "LSG_CallBack", L5)
  StoreInnerValue(L0, "LSG_Speed", L3)
  StoreInnerValue(L0, "LSG_Radius", L4)
  StoreInnerValue(L0, "LSG_Param", L6)
  StartShieldGuard(L0)
  CallFunction(L0.Thread, "LCG_Activate", nil)
end, GooseMarchStatStop = function(L0)
  if IsNotLastModification(L0, "LCG_SimpleGoose") then
    return
  end
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LSG_Semaphore"))
  StopShieldGuard(L0)
  RestoreModification(L0, "LCG_SimpleGoose")
end, GooseMarchPat = function(L0, L1, L2, L3, L4, L5, L6, L7)
  L8 = Node_GetPath(Node_Find(L0.Node, L1))
  if not (LCG_Semaphores[L8]) then
    LCG_Semaphores[L8] = LibSync.CreateSemaphore(1, "LCG_StartGoing")
  end
  ApplyModification(L0, LCG_ComplexGoose, "LCG_ComplexGoose")
  StoreInnerValue(L0, "LCG_Semaphore", LCG_Semaphores[L8])
  StoreInnerValue(L0, "LCG_Path", L1)
  StoreInnerValue(L0, "LCG_SyncNode", L2)
  StoreInnerValue(L0, "LCG_CallBack", L6)
  StoreInnerValue(L0, "LCG_Speed", L3)
  StoreInnerValue(L0, "LCG_Radius", L4)
  StoreInnerValue(L0, "LCG_Param", L7)
  StoreInnerValue(L0, "LCG_PatrolArea", L5)
  StartShieldGuard(L0)
  CallFunction(L0.Thread, "LCG_Activate", nil)
end, GooseMarchPatStop = function(L0)
  if IsNotLastModification(L0, "LCG_ComplexGoose") then
    return
  end
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LCG_Semaphore"))
  StopShieldGuard(L0)
  RestoreModification(L0, "LCG_ComplexGoose")
end, MultiPatrol = function(L0, L1, L2)
  L5 = 0
  for k, v in L1 do
    L5 = L5 + 1
  end
  if not (L5 >= 2) then
    Script_LogRaw("[SCRIPTERROR] [", Script_GetLineNumber(2) .. "] MultiPatrol - At least 2 patrol areas required.")
    return
  end
  ApplyModification(L0, LCG_MultiPatrol, "LCG_MultiPatrol")
  StoreInnerValue(L0, "LMP_ListOfPatrolAreas", L1)
  StoreInnerValue(L0, "LMP_CompleteTimeOut", L2)
  StoreInnerValue(L0, "LMP_Position", 1)
  StoreInnerValue(L0, "LMP_Direction", 1)
  StoreInnerValue(L0, "LMP_Entries", L5)
  CallFunction(L0.Thread, "LCG_Activate", nil)
end, MultiPatrolStop = function(L0)
  if IsNotLastModification(L0, "LCG_MultiPatrol") then
    return
  end
  RestoreModification(L0, "LCG_MultiPatrol")
end, ComplexGoto = function(L0, L1, L2, L3)
  L6 = 0
  for k, v in L1 do
    L6 = L6 + 1
  end
  ApplyModification(L0, LCG_ComplexGoto, "LCG_ComplexGoto")
  StoreInnerValue(L0, "LG_ToDoList", L1)
  StoreInnerValue(L0, "LG_CallBack", L2)
  StoreInnerValue(L0, "LG_Param", L3)
  StoreInnerValue(L0, "LG_Position", 0)
  StoreInnerValue(L0, "LG_Entries", L6)
  StoreInnerValue(L0, "LG_Avoidance", 1)
  StoreInnerValue(L0, "LG_Timer", -1)
  CallFunction(L0.Thread, "LCG_Activate", nil)
end, ComplexGotoResume = function(L0, L1)
  ApplyModification(L0, LCG_ComplexGoto, "LCG_ComplexGoto")
  StoreInnerValue(L0, "LG_ToDoList", L1.ToDoList)
  StoreInnerValue(L0, "LG_CallBack", L1.CallBack)
  StoreInnerValue(L0, "LG_Param", L1.Param)
  StoreInnerValue(L0, "LG_Position", L1.Position)
  StoreInnerValue(L0, "LG_Entries", L1.Entries)
  StoreInnerValue(L0, "LG_OldPosition", L1.OldPosition)
  StoreInnerValue(L0, "LG_Avoidance", L1.Avoidance)
  StoreInnerValue(L0, "LG_Timer", -1)
  Vehicle_AvoidanceObjects(L0.Node, L1.Avoidance)
  CallFunction(L0.Thread, "LCG_Activate", nil)
end, ComplexGotoStop = function(L0, L1)
  if IsNotLastModification(L0, "LCG_ComplexGoto") then
    return L1
  end
  L2 = {}
  L2["ToDoList"] = GetInnerValue(L0, "LG_ToDoList")
  L2["CallBack"] = GetInnerValue(L0, "LG_CallBack")
  L2["Param"] = GetInnerValue(L0, "LG_Param")
  L2["Position"] = GetInnerValue(L0, "LG_Position") + -1
  L2["Entries"] = GetInnerValue(L0, "LG_Entries")
  L2["OldPosition"] = GetInnerValue(L0, "LG_OldPositionRem")
  L2["Avoidance"] = GetInnerValue(L0, "LG_Avoidance")
  L3 = GetInnerValue(L0, "LG_Timer")
  if not (L3 == -1) then
    StopTimer(L0.Thread, L3)
  end
  Vehicle_AvoidanceObjects(L0.Node, 1)
  RestoreModification(L0, "LCG_ComplexGoto")
  return L2
end }