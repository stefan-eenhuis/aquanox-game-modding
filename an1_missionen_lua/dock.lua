-- dekompiliert aus dat\script\lib\dock.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

LibSync = LoadLib("Synchronization")
LD_DockMaster = { [nil] = {}, ContainsVessel = function(L0)
  if not (ListOfVessels[L0]) then
  end
  return nil, 1
end, VesselImpact = 0, ApproachSpeed = 0, ApproachPath = "", DockPath = "", DockSpeed = 0, WaitingPatrol = "", AverageHeight = 0, HeightDeviation = 0, MeanTravelDistance = 0, TravelDistanceDeviation = 0, TravelAngleDeviation = 0, SectionTimeOut = 0, PatrolVelocity = 0, Semaphore = {}, ListOfVessels = {} }
LD_Docking = { [nil] = {}, LD_Activate = function(L0)
  L1 = GetInnerValue(L0, "LD_DockMaster")
  L1.ListOfVessels[L0.Thread] = L0.Thread
  L0.Thread["Dock_ShieldGuardActive"] = 1
  StartShieldGuard(L0)
  StoreInnerValue(L0, "LD_InnerState", "ApproachingDock")
  Vessel_Goto(L0.Node, L1.ApproachPath, L1.ApproachSpeed, 1)
end, LD_ReleaseShip = function(L0, L1, L2)
  if not (L0.Thread.Dock_ShieldGuardActive ~= 1) then
    L0.Thread["Dock_ShieldGuardActive"] = 0
    StopShieldGuard(L0)
  end
  Vessel_AvoidanceObjects(L0.Node, 1)
  Vessel_CollisionObjects(L0.Node, 1)
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LD_DockMaster").Semaphore)
  L3 = GetInnerValue(L0, "LD_TimerHandle")
  if not (L3 == -1) then
    StopTimer(L0.Thread, L3)
  end
  GetInnerValue(L0, "LD_DockMaster").ListOfVessels[L0.Thread] = nil
  RestoreModification(L0, "LD_Docking")
  CallFunction(L0.Thread, L1, L2)
end, Vessel_GotoArrived = function(L0, L1)
  L2 = GetInnerValue(L0, "LD_DockMaster")
  if not (GetInnerValue(L0, "LD_InnerState") ~= "ApproachingDock") then
    StoreInnerValue(L0, "LD_InnerState", "WaitForDocking")
    Vessel_Patrol(L0.Node, L2.WaitingPatrol, -1, L2.PatrolVelocity)
    LibSync.LockSemaphore(L0, L2.Semaphore)
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "PrepareForDocking") then
    StoreInnerValue(L0, "LD_InnerState", "Docking")
    Vessel_AvoidanceObjects(L0.Node, 0)
    Vessel_CollisionObjects(L0.Node, 0)
    Vessel_GotoFromTo(L0.Node, L2.DockPath, "pos_2", "pos_2", L2.DockSpeed, 0)
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "Docking") then
    StoreInnerValue(L0, "LD_InnerState", "Docked")
    Node_LeaveSimulation(L0.Node)
    LibSync.FreeSemaphore(L0, L2.Semaphore)
    if GetInnerValue(L0, "LD_TimeCallBack") then
      L3 = SetTimer(L0.Thread, GetInnerValue(L0, "LD_Time"))
      StoreInnerValue(L0, "LD_TimerHandle", L3)
    end
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "Leaving") then
    Vessel_AvoidanceObjects(L0.Node, 0)
    Vessel_CollisionObjects(L0.Node, 0)
    if not (GetInnerValue(L0, "LD_TimerUndock") ~= 1) then
      GetInnerValue(L0, "LD_ReleaseShip")(L0, GetInnerValue(L0, "LD_TimeCallBack"), nil)
    else
      GetInnerValue(L0, "LD_ReleaseShip")(L0, GetInnerValue(L0, "LD_UndockCommand"), GetInnerValue(L0, "LD_UndockParam"))
    end
  end
end, Timer = function(L0, L1)
  if not (L1 ~= GetInnerValue(L0, "LD_TimerHandle")) then
    StoreInnerValue(L0, "LD_TimerHandle", -1)
    L2 = GetInnerValue(L0, "LD_DockMaster")
    if not (GetInnerValue(L0, "LD_InnerState") ~= "Docked") then
      StoreInnerValue(L0, "LD_TimerUndock", 1)
      StoreInnerValue(L0, "LD_InnerState", "WaitForLeaving")
      LibSync.LockSemaphore(L0, L2.Semaphore)
      return
    end
    if not (GetInnerValue(L0, "LD_InnerState") ~= "Leaving") then
      Vessel_GotoFromTo(L0.Node, L2.DockPath, "pos_1", "pos_1", L2.PatrolVelocity, 0)
    end
  end
end, LD_ClearForDocking = function(L0)
  L1 = GetInnerValue(L0, "LD_DockMaster")
  if not (GetInnerValue(L0, "LD_InnerState") ~= "WaitForDocking") then
    StoreInnerValue(L0, "LD_InnerState", "PrepareForDocking")
    Vessel_GotoFromTo(L0.Node, L1.DockPath, "pos_1", "pos_1", L1.PatrolVelocity, 0)
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "WaitForLeaving") then
    StoreInnerValue(L0, "LD_InnerState", "Leaving")
    Node_EnterSimulation(L0.Node)
    Vessel_StopWithHeading(L0.Node, L1.DockPath, "pos_1")
    L2 = SetTimer(L0.Thread, 3)
    StoreInnerValue(L0, "LD_TimerHandle", L2)
  end
end, Body_ObjectDestroyed = function(L0)
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LD_DockMaster").Semaphore)
end, LD_Undock = function(L0, L1)
  L0.Thread["Dock_ShieldGuardActive"] = 0
  L0.Thread["Dock_ShotHitActive"] = 0
  L2 = GetInnerValue(L0, "LD_DockMaster")
  if not (GetInnerValue(L0, "LD_InnerState") == "ApproachingDock") then
    if not (GetInnerValue(L0, "LD_InnerState") == "WaitForDocking") then
      if not (GetInnerValue(L0, "LD_InnerState") ~= "PrepareForDocking") then
        GetInnerValue(L0, "LD_ReleaseShip")(L0, L1[1], L1[2])
        return
      end
      StoreInnerValue(L0, "LD_TimerUndock", 0)
      StoreInnerValue(L0, "LD_UndockCommand", L1[1])
      StoreInnerValue(L0, "LD_UndockParam", L1[2])
      if not (GetInnerValue(L0, "LD_InnerState") ~= "Docking") then
        StoreInnerValue(L0, "LD_InnerState", "Leaving")
        Vessel_StopWithHeading(L0.Node, L2.DockPath, "pos_1")
        L3 = SetTimer(L0.Thread, 3)
        StoreInnerValue(L0, "LD_TimerHandle", L3)
        return
      end
      if not (GetInnerValue(L0, "LD_InnerState") ~= "Docked") then
        StoreInnerValue(L0, "LD_InnerState", "WaitForLeaving")
        LibSync.LockSemaphore(L0, L2.Semaphore)
      end
    end
  end
end, LD_PlaceInDock = function(L0)
  L1 = GetInnerValue(L0, "LD_DockMaster")
  L2 = GetInnerValue(L0, "LD_Time")
  L1.ListOfVessels[L0.Thread] = L0.Thread
  L0.Thread["Dock_ShieldGuardActive"] = 1
  StartShieldGuard(L0)
  Vessel_AvoidanceObjects(L0.Node, 0)
  Vessel_CollisionObjects(L0.Node, 0)
  Node_LeaveSimulation(L0.Node)
  StoreInnerValue(L0, "LD_InnerState", "Docked")
  if GetInnerValue(L0, "LD_TimeCallBack") then
    L3 = SetTimer(L0.Thread, L2)
    StoreInnerValue(L0, "LD_TimerHandle", L3)
  end
end, StopBehavior = function(L0)
  Script_LogRaw("[WARNING] Can not stop the dock behaviour")
end }
LV_Docking = { [nil] = {}, LD_Activate = function(L0)
  L1 = GetInnerValue(L0, "LD_DockMaster")
  L1.ListOfVessels[L0.Thread] = L0.Thread
  L0.Thread["Dock_ShieldGuardActive"] = 1
  StartShieldGuard(L0)
  StoreInnerValue(L0, "LD_InnerState", "ApproachingDock")
  Vehicle_Goto(L0.Node, L1.ApproachPath, L1.ApproachSpeed, 1)
end, LD_ReleaseShip = function(L0, L1, L2)
  if not (L0.Thread.Dock_ShieldGuardActive ~= 1) then
    L0.Thread["Dock_ShieldGuardActive"] = 0
    StopShieldGuard(L0)
  end
  Vehicle_AvoidanceObjects(L0.Node, 1)
  Vehicle_CollisionObjects(L0.Node, 1)
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LD_DockMaster").Semaphore)
  L3 = GetInnerValue(L0, "LD_TimerHandle")
  if not (L3 == -1) then
    StopTimer(L0.Thread, L3)
  end
  GetInnerValue(L0, "LD_DockMaster").ListOfVessels[L0.Thread] = nil
  RestoreModification(L0, "LV_Docking")
  CallFunction(L0.Thread, L1, L2)
end, Vehicle_GotoArrived = function(L0, L1)
  L2 = GetInnerValue(L0, "LD_DockMaster")
  if not (GetInnerValue(L0, "LD_InnerState") ~= "ApproachingDock") then
    StoreInnerValue(L0, "LD_InnerState", "WaitForDocking")
    Vehicle_ParkPatrol(L0.Node, L2.WaitingPatrol)
    LibSync.LockSemaphore(L0, L2.Semaphore)
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "PrepareForDocking") then
    StoreInnerValue(L0, "LD_InnerState", "Docking")
    Vehicle_AvoidanceObjects(L0.Node, 0)
    Vehicle_CollisionObjects(L0.Node, 0)
    Vehicle_GotoFromTo(L0.Node, L2.DockPath, "pos_2", "pos_2", L2.DockSpeed, 0)
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "Docking") then
    StoreInnerValue(L0, "LD_InnerState", "Docked")
    Node_LeaveSimulation(L0.Node)
    LibSync.FreeSemaphore(L0, L2.Semaphore)
    if GetInnerValue(L0, "LD_TimeCallBack") then
      L3 = SetTimer(L0.Thread, GetInnerValue(L0, "LD_Time"))
      StoreInnerValue(L0, "LD_TimerHandle", L3)
    end
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "Leaving") then
    Vehicle_AvoidanceObjects(L0.Node, 0)
    Vehicle_CollisionObjects(L0.Node, 0)
    if not (GetInnerValue(L0, "LD_TimerUndock") ~= 1) then
      GetInnerValue(L0, "LD_ReleaseShip")(L0, GetInnerValue(L0, "LD_TimeCallBack"), nil)
    else
      GetInnerValue(L0, "LD_ReleaseShip")(L0, GetInnerValue(L0, "LD_UndockCommand"), GetInnerValue(L0, "LD_UndockParam"))
    end
  end
end, Timer = function(L0, L1)
  if not (L1 ~= GetInnerValue(L0, "LD_TimerHandle")) then
    StoreInnerValue(L0, "LD_TimerHandle", -1)
    L2 = GetInnerValue(L0, "LD_DockMaster")
    if not (GetInnerValue(L0, "LD_InnerState") ~= "Docked") then
      StoreInnerValue(L0, "LD_TimerUndock", 1)
      StoreInnerValue(L0, "LD_InnerState", "WaitForLeaving")
      LibSync.LockSemaphore(L0, L2.Semaphore)
      return
    end
    if not (GetInnerValue(L0, "LD_InnerState") ~= "Leaving") then
      Vehicle_GotoFromTo(L0.Node, L2.DockPath, "pos_1", "pos_1", L2.PatrolVelocity, 0)
    end
  end
end, LD_ClearForDocking = function(L0)
  L1 = GetInnerValue(L0, "LD_DockMaster")
  if not (GetInnerValue(L0, "LD_InnerState") ~= "WaitForDocking") then
    StoreInnerValue(L0, "LD_InnerState", "PrepareForDocking")
    Vehicle_GotoFromTo(L0.Node, L1.DockPath, "pos_1", "pos_1", L1.PatrolVelocity, 0)
    return
  end
  if not (GetInnerValue(L0, "LD_InnerState") ~= "WaitForLeaving") then
    StoreInnerValue(L0, "LD_InnerState", "Leaving")
    Node_EnterSimulation(L0.Node)
    Vehicle_StopWithHeading(L0.Node, L1.DockPath, "pos_1")
    L2 = SetTimer(L0.Thread, 3)
    StoreInnerValue(L0, "LD_TimerHandle", L2)
  end
end, Body_ObjectDestroyed = function(L0)
  LibSync.FreeSemaphore(L0, GetInnerValue(L0, "LD_DockMaster").Semaphore)
end, LD_Undock = function(L0, L1)
  L0.Thread["Dock_ShieldGuardActive"] = 0
  L0.Thread["Dock_ShotHitActive"] = 0
  L2 = GetInnerValue(L0, "LD_DockMaster")
  if not (GetInnerValue(L0, "LD_InnerState") == "ApproachingDock") then
    if not (GetInnerValue(L0, "LD_InnerState") == "WaitForDocking") then
      if not (GetInnerValue(L0, "LD_InnerState") ~= "PrepareForDocking") then
        GetInnerValue(L0, "LD_ReleaseShip")(L0, L1[1], L1[2])
        return
      end
      StoreInnerValue(L0, "LD_TimerUndock", 0)
      StoreInnerValue(L0, "LD_UndockCommand", L1[1])
      StoreInnerValue(L0, "LD_UndockParam", L1[2])
      if not (GetInnerValue(L0, "LD_InnerState") ~= "Docking") then
        StoreInnerValue(L0, "LD_InnerState", "Leaving")
        Vehicle_StopWithHeading(L0.Node, L2.DockPath, "pos_1")
        L3 = SetTimer(L0.Thread, 3)
        StoreInnerValue(L0, "LD_TimerHandle", L3)
        return
      end
      if not (GetInnerValue(L0, "LD_InnerState") ~= "Docked") then
        StoreInnerValue(L0, "LD_InnerState", "WaitForLeaving")
        LibSync.LockSemaphore(L0, L2.Semaphore)
      end
    end
  end
end, LD_PlaceInDock = function(L0)
  L1 = GetInnerValue(L0, "LD_DockMaster")
  L2 = GetInnerValue(L0, "LD_Time")
  L1.ListOfVessels[L0.Thread] = L0.Thread
  L0.Thread["Dock_ShieldGuardActive"] = 1
  StartShieldGuard(L0)
  Vehicle_AvoidanceObjects(L0.Node, 0)
  Vehicle_CollisionObjects(L0.Node, 0)
  Node_LeaveSimulation(L0.Node)
  StoreInnerValue(L0, "LD_InnerState", "Docked")
  if GetInnerValue(L0, "LD_TimeCallBack") then
    L3 = SetTimer(L0.Thread, L2)
    StoreInnerValue(L0, "LD_TimerHandle", L3)
  end
end, StopBehavior = function(L0)
  Script_LogRaw("[WARNING] Can not stop the dock behaviour")
end }
nil[nil] = { Dock_Basis = {}, CreateDockMaster = function(L0, L1, L2)
  L3 = CloneTable(LD_DockMaster)
  L3["ApproachPath"] = L0
  L3["ApproachSpeed"] = 0.7
  L3["DockPath"] = L1
  L3["DockSpeed"] = 0.3
  L3["WaitingPatrol"] = L2
  L3["PatrolVelocity"] = 0.7
  L3["Semaphore"] = LibSync.CreateSemaphore(1, "LD_ClearForDocking")
  L3["ListOfVessels"] = {}
  return L3
end, PlaceInDock = function(L0, L1, L2, L3)
  if not (L2 ~= 0) then
    L3 = nil
  end
  Body_SetPosition(L0.Node, Position_GetPosition(Node_Find(Node_Find(L1.DockPath), "pos_2")))
  L0.Thread["Dock_ShieldGuardActive"] = 0
  ApplyModification(L0, LD_Docking, "LD_Docking")
  StoreInnerValue(L0, "LD_DockMaster", L1)
  StoreInnerValue(L0, "LD_Time", L2)
  StoreInnerValue(L0, "LD_TimeCallBack", L3)
  StoreInnerValue(L0, "LD_TimerHandle", -1)
  CallFunction(L0.Thread, "LD_PlaceInDock", nil)
end, Dock = function(L0, L1, L2, L3, L4)
  L0.Thread["Dock_ShieldGuardActive"] = 0
  ApplyModification(L0, LD_Docking, "LD_Docking")
  StoreInnerValue(L0, "LD_DockMaster", L1)
  StoreInnerValue(L0, "LD_ShotCallBack", L2)
  if not (L3 <= 0) then
    StoreInnerValue(L0, "LD_TimeCallBack", L4)
  else
    StoreInnerValue(L0, "LD_TimeCallBack", nil)
  end
  StoreInnerValue(L0, "LD_Time", L3)
  StoreInnerValue(L0, "LD_TimerHandle", -1)
  CallFunction(L0.Thread, "LD_Activate", nil)
end, PlaceInDockVehicle = function(L0, L1, L2, L3)
  if not (L2 ~= 0) then
    L3 = nil
  end
  Body_SetPosition(L0.Node, Position_GetPosition(Node_Find(Node_Find(L1.DockPath), "pos_2")))
  L0.Thread["Dock_ShieldGuardActive"] = 0
  ApplyModification(L0, LV_Docking, "LV_Docking")
  StoreInnerValue(L0, "LD_DockMaster", L1)
  StoreInnerValue(L0, "LD_Time", L2)
  StoreInnerValue(L0, "LD_TimeCallBack", L3)
  StoreInnerValue(L0, "LD_TimerHandle", -1)
  CallFunction(L0.Thread, "LD_PlaceInDock", nil)
end, DockVehicle = function(L0, L1, L2, L3)
  L0.Thread["Dock_ShieldGuardActive"] = 0
  ApplyModification(L0, LV_Docking, "LV_Docking")
  StoreInnerValue(L0, "LD_DockMaster", L1)
  if not (L2 <= 0) then
    StoreInnerValue(L0, "LD_TimeCallBack", L3)
  else
    StoreInnerValue(L0, "LD_TimeCallBack", nil)
  end
  StoreInnerValue(L0, "LD_Time", L2)
  StoreInnerValue(L0, "LD_TimerHandle", -1)
  CallFunction(L0.Thread, "LD_Activate", nil)
end, LaunchVessel = function(L0, L1, L2, L3)
  if not (L0.NumOfThreads) then
    if L1.ListOfVessels[L0] then
      CallFunction(L0, { {}, L2, L3 })
    end
    return
  else
    for L0 = 1, L0.NumOfThreads, 1 do
      L5 = L0[L6]
      if L1.ListOfVessels[L5] then
        ?()
      end
      return CallFunction, L5, { {}, L2, L3 }
    end
  end
end, UndockOwn = function(L0, L1, L2, L3)
  CallFunction(L0.Thread, { {}, L2, L3 })
end }