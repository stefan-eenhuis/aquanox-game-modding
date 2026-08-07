-- dekompiliert aus dat\script\lib\vesselgoto.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

LibSync = LoadLib("Synchronization")
LVG_Semaphores = {}
LVG_SimpleGoose = { [nil] = {}, LVG_Activate = function(L0)
  Vessel_Stop(L0.Node, 1)
  LibSync.LockSemaphore(L0, GetInnerValue(L0, "VSG_Semaphore"))
end, LVG_StartGoing = function(L0)
  Vessel_Goto(L0.Node, GetInnerValue(L0, "VSG_Path"), GetInnerValue(L0, "VSG_Speed"), GetInnerValue(L0, "VSG_Radius"))
end, Vessel_GotoPosReached = function(L0, L1, L2)
  if not (L2 ~= GetInnerValue(L0, "VSG_SyncNode")) then
    LibSync.FreeSemaphore(L0, GetInnerValue(L0, "VSG_Semaphore"))
  end
end, Vessel_GotoArrived = function(L0, L1)
  RestoreModification(L0, "LVG_SimpleGoose")
  StopShieldGuard(L0)
  CallFunction(L0.Thread, L2, L3)
end, Body_ObjectDestroyed = function(L0)
  LibList.VesselGoto_Basis.GooseMarchStatStop(L0)
end, StopBehavior = function(L0)
  LibList.VesselGoto_Basis.GooseMarchStatStop(L0)
end }
LVG_ComplexGoose = { [nil] = {}, LVG_Activate = function(L0)
  Vessel_Patrol(L0.Node, GetInnerValue(L0, "VCG_PatrolArea"), -1, GetInnerValue(L0, "VCG_PatrolVelocity"))
  LibSync.LockSemaphore(L0, GetInnerValue(L0, "VCG_Semaphore"))
end, LVG_StartGoing = function(L0)
  Vessel_Goto(L0.Node, GetInnerValue(L0, "VCG_Path"), GetInnerValue(L0, "VCG_Speed"), GetInnerValue(L0, "VCG_Radius"))
end, Vessel_GotoPosReached = function(L0, L1, L2)
  if not (L2 ~= GetInnerValue(L0, "VCG_SyncNode")) then
    LibSync.FreeSemaphore(L0, GetInnerValue(L0, "VCG_Semaphore"))
  end
end, Vessel_GotoArrived = function(L0, L1)
  RestoreModification(L0, "LVG_ComplexGoose")
  StopShieldGuard(L0)
  CallFunction(L0.Thread, L2, L3)
end, Body_ObjectDestroyed = function(L0)
  LibList.VesselGoto_Basis.GooseMarchPatStop(L0)
end, StopBehavior = function(L0)
  LibList.VesselGoto_Basis.GooseMarchPatStop(L0)
end }
LVG_MultiPatrol = { [nil] = {}, LVG_Activate = function(L0)
  Vessel_Patrol(L0.Node, GetInnerValue(L0, "LMM_ListOfPatrolAreas")[1], GetInnerValue(L0, "LMM_CompleteTimeOut"), GetInnerValue(L0, "LMM_PatrolVelocity"))
end, Vessel_PatrolFinished = function(L0)
  if not (GetInnerValue(L0, "LMM_Position") ~= 1) then
    if not (GetInnerValue(L0, "LMM_Direction") ~= -1) then
      StoreInnerValue(L0, "LMM_Direction", 1)
    end
  end
  if not (GetInnerValue(L0, "LMM_Position") ~= GetInnerValue(L0, "LMM_Entries")) then
    if not (GetInnerValue(L0, "LMM_Direction") ~= 1) then
      StoreInnerValue(L0, "LMM_Direction", -1)
    end
  end
  L1 = GetInnerValue(L0, "LMM_Position") + GetInnerValue(L0, "LMM_Direction")
  StoreInnerValue(L0, "LMM_Position", L1)
  Vessel_Patrol(L0.Node, GetInnerValue(L0, "LMM_ListOfPatrolAreas")[L1], GetInnerValue(L0, "LMM_CompleteTimeOut"), GetInnerValue(L0, "LMM_PatrolVelocity"))
end, StopBehavior = function(L0)
  LibList.VesselGoto_Basis.MultiPatrolStop(L0)
end }
LVG_ComplexGoto = { [nil] = {}, LVG_Activate = function(L0)
  GetInnerValue(L0, "LVG_Process")(L0)
end, LVG_Process = function(L0)
  if not (GetInnerValue(L0, "LGU_Entries") ~= GetInnerValue(L0, "LGU_Position")) then
    if not (GetInnerValue(L0, "LGU_CallBack")) then
      StoreInnerValue(L0, "LGU_Position", 0)
    else
      L6 = GetInnerValue(L0, "LGU_Timer")
      if not (L6 == -1) then
        StopTimer(L0.Thread, L6)
      end
      L1 = GetInnerValue(L0, "LGU_CallBack")
      L2 = GetInnerValue(L0, "LGU_Param")
      RestoreModification(L0, "LVG_ComplexGoto")
      CallFunction(L0.Thread, L1, L2)
      return
    end
  end
  L4 = GetInnerValue(L0, "LGU_Position") + 1
  StoreInnerValue(L0, "LGU_Position", L4)
  L3 = GetInnerValue(L0, "LGU_ToDoList")[L4]
  L5 = GetInnerValue(L0, "LGU_OldPosition")
  if not (L3[1] ~= "Goto") then
    if L5 then
      Vessel_GotoFromPosition(L0.Node, L3[2], L5, L3[3], L3[4])
    else
      Vessel_Goto(L0.Node, L3[2], L3[3], L3[4])
      -- Sprung nach 321
      if not (L3[1] ~= "GotoFrom") then
        if L5 then
          Vessel_GotoFromPosition(L0.Node, L3[2], L5, L3[4], L3[5])
        else
          Vessel_GotoFromPosition(L0.Node, L3[2], L3[3], L3[4], L3[5])
          -- Sprung nach 321
          if not (L3[1] ~= "GotoFromTo") then
            if L5 then
              Vessel_GotoFromTo(L0.Node, L3[2], L5, L3[4], L3[5], L3[6])
            else
              Vessel_GotoFromTo(L0.Node, L3[2], L3[3], L3[4], L3[5], L3[6])
              -- Sprung nach 321
              if not (L3[1] ~= "Sink") then
                Vessel_Sink(L0.Node, L3[2], L3[3])
              else
                if not (L3[1] ~= "Wait") then
                  Vessel_Stop(L0.Node, 1)
                  L6 = SetTimer(L0.Thread, L3[2])
                  StoreInnerValue(L0, "LGU_Timer", L6)
                else
                  if not (L3[1] ~= "WaitWithHeading") then
                    Vessel_StopWithHeading(L0.Node, L3[2], L3[3])
                    L6 = SetTimer(L0.Thread, L3[4])
                    StoreInnerValue(L0, "LGU_Timer", L6)
                  else
                    if not (L3[1] ~= "ActivateAvoidance") then
                      Vessel_AvoidanceObjects(L0.Node, 1)
                      StoreInnerValue(L0, "LGU_Avoidance", 1)
                      GetInnerValue(L0, "LVG_Process")(L0)
                    else
                      if not (L3[1] ~= "DeactivateAvoidance") then
                        Vessel_AvoidanceObjects(L0.Node, 0)
                        StoreInnerValue(L0, "LGU_Avoidance", 0)
                        GetInnerValue(L0, "LVG_Process")(L0)
                      else
                        Script_LogRaw("[SCRIPTERROR] [", Script_GetLineNumber(2), "] ComplexGoto - Unknown commad " .. L3[1])
                      end
                    end
                  end
                end
              end
            end
            StoreInnerValue(L0, "LGU_OldPosition", nil)
          end
        end
      end
    end
  end
end, Vessel_GotoArrived = function(L0, L1, L2)
  GetInnerValue(L0, "LVG_Process")(L0)
end, Vessel_SinkFinished = function(L0, L1)
  GetInnerValue(L0, "LVG_Process")(L0)
end, Timer = function(L0, L1)
  if not (L1 ~= GetInnerValue(L0, "LGU_Timer")) then
    StoreInnerValue(L0, "LGU_Timer", -1)
    GetInnerValue(L0, "LVG_Process")(L0)
  end
end, Vessel_GotoPosReached = function(L0, L1, L2)
  StoreInnerValue(L0, "LGU_MemoryPosition", L2)
end, StopBehavior = function(L0)
  LibList.VesselGoto_Basis.ComplexGotoStop(L0)
end }
nil[nil] = { VesselGoto_Basis = {}, GooseMarchStat = function(L0, L1, L2, L3, L4, L5, L6)
  L7 = Node_GetPath(Node_Find(L0.Node, L1))
  if not (LVG_Semaphores[L7]) then
    LVG_Semaphores[L7] = LibSync.CreateSemaphore(1, "LVG_StartGoing")
  end
  ApplyModification(L0, LVG_SimpleGoose, "LVG_SimpleGoose")
  StoreInnerValue(L0, "VSG_Semaphore", LVG_Semaphores[L7])
  StoreInnerValue(L0, "VSG_Path", L1)
  StoreInnerValue(L0, "VSG_SyncNode", L2)
  StoreInnerValue(L0, "VSG_CallBack", L5)
  StoreInnerValue(L0, "VSG_Speed", L3)
  StoreInnerValue(L0, "VSG_Radius", L4)
  StoreInnerValue(L0, "VSG_Param", L6)
  StartShieldGuard(L0)
  CallFunction(L0.Thread, "LVG_Activate", nil)
end, GooseMarchStatStop = function(L0)
  if IsNotLastModification(L0, "LVG_SimpleGoose") then
    return
  end
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "VSG_Semaphore"))
  StopShieldGuard(L0)
  RestoreModification(L0, "LVG_SimpleGoose")
end, GooseMarchPat = function(L0, L1, L2, L3, L4, L5, L6, L7, L8)
  L9 = Node_GetPath(Node_Find(L0.Node, L1))
  if not (LVG_Semaphores[L9]) then
    LVG_Semaphores[L9] = LibSync.CreateSemaphore(1, "LVG_StartGoing")
  end
  ApplyModification(L0, LVG_ComplexGoose, "LVG_ComplexGoose")
  StoreInnerValue(L0, "VCG_Semaphore", LVG_Semaphores[L9])
  StoreInnerValue(L0, "VCG_Path", L1)
  StoreInnerValue(L0, "VCG_SyncNode", L2)
  StoreInnerValue(L0, "VCG_CallBack", L7)
  StoreInnerValue(L0, "VCG_Speed", L3)
  StoreInnerValue(L0, "VCG_Radius", L4)
  StoreInnerValue(L0, "VCG_Param", L8)
  StoreInnerValue(L0, "VCG_PatrolArea", L5)
  StoreInnerValue(L0, "VCG_PatrolVelocity", L6)
  StartShieldGuard(L0)
  CallFunction(L0.Thread, "LVG_Activate", nil)
end, GooseMarchPatStop = function(L0)
  if IsNotLastModification(L0, "LVG_ComplexGoose") then
    return
  end
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "VCG_Semaphore"))
  StopShieldGuard(L0)
  RestoreModification(L0, "LVG_ComplexGoose")
end, MultiPatrol = function(L0, L1, L2, L3)
  L6 = 0
  for k, v in L1 do
    L6 = L6 + 1
  end
  if not (L6 >= 2) then
    Script_LogRaw("[SCRIPTERROR] [", Script_GetLineNumber(2) .. "] MultiPatrol - At least 2 patrol areas required.")
    return
  end
  ApplyModification(L0, LVG_MultiPatrol, "LVG_MultiPatrol")
  StoreInnerValue(L0, "LMM_ListOfPatrolAreas", L1)
  StoreInnerValue(L0, "LMM_CompleteTimeOut", L2)
  StoreInnerValue(L0, "LMM_PatrolVelocity", L3)
  StoreInnerValue(L0, "LMM_Position", 1)
  StoreInnerValue(L0, "LMM_Direction", 1)
  StoreInnerValue(L0, "LMM_Entries", L6)
  CallFunction(L0.Thread, "LVG_Activate", nil)
end, MultiPatrolStop = function(L0)
  if IsNotLastModification(L0, "LVG_MultiPatrol") then
    return
  end
  RestoreModification(L0, "LVG_MultiPatrol")
end, ComplexGoto = function(L0, L1, L2, L3)
  L6 = 0
  for k, v in L1 do
    L6 = L6 + 1
  end
  ApplyModification(L0, LVG_ComplexGoto, "LVG_ComplexGoto")
  StoreInnerValue(L0, "LGU_ToDoList", L1)
  StoreInnerValue(L0, "LGU_CallBack", L2)
  StoreInnerValue(L0, "LGU_Param", L3)
  StoreInnerValue(L0, "LGU_Position", 0)
  StoreInnerValue(L0, "LGU_Entries", L6)
  StoreInnerValue(L0, "LGU_Avoidance", 1)
  StoreInnerValue(L0, "LGU_Timer", -1)
  CallFunction(L0.Thread, "LVG_Activate", nil)
end, ComplexGotoResume = function(L0, L1)
  ApplyModification(L0, LVG_ComplexGoto, "LVG_ComplexGoto")
  StoreInnerValue(L0, "LGU_ToDoList", L1.ToDoList)
  StoreInnerValue(L0, "LGU_CallBack", L1.CallBack)
  StoreInnerValue(L0, "LGU_Param", L1.Param)
  StoreInnerValue(L0, "LGU_Position", L1.Position)
  StoreInnerValue(L0, "LGU_Entries", L1.Entries)
  StoreInnerValue(L0, "LGU_OldPosition", L1.OldPosition)
  StoreInnerValue(L0, "LGU_Avoidance", L1.Avoidance)
  StoreInnerValue(L0, "LGU_Timer", -1)
  Vessel_AvoidanceObjects(L0.Node, L1.Avoidance)
  CallFunction(L0.Thread, "LVG_Activate", nil)
end, ComplexGotoStop = function(L0, L1)
  if IsNotLastModification(L0, "LVG_ComplexGoto") then
    return L1
  end
  L2 = {}
  L2["ToDoList"] = GetInnerValue(L0, "LGU_ToDoList")
  L2["CallBack"] = GetInnerValue(L0, "LGU_CallBack")
  L2["Param"] = GetInnerValue(L0, "LGU_Param")
  L2["Position"] = GetInnerValue(L0, "LGU_Position") + -1
  L2["Entries"] = GetInnerValue(L0, "LGU_Entries")
  L2["OldPosition"] = GetInnerValue(L0, "LGU_MemoryPosition")
  L2["Avoidance"] = GetInnerValue(L0, "LGU_Avoidance")
  L3 = GetInnerValue(L0, "LGU_Timer")
  if not (L3 == -1) then
    SetTimer(L0.Thread, L3)
  end
  RestoreModification(L0, "LVG_ComplexGoto")
  return L2
end, ComplexGotoStatus = function(L0)
  L1 = {}
  L1["ToDoList"] = GetInnerValue(L0, "LGU_ToDoList")
  L1["CallBack"] = GetInnerValue(L0, "LGU_CallBack")
  L1["Param"] = GetInnerValue(L0, "LGU_Param")
  L1["Position"] = GetInnerValue(L0, "LGU_Position") + -1
  L1["Entries"] = GetInnerValue(L0, "LGU_Entries")
  L1["OldPosition"] = GetInnerValue(L0, "LGU_MemoryPosition")
  L1["Avoidance"] = GetInnerValue(L0, "LGU_Avoidance")
  return L1
end }