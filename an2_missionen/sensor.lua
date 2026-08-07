-- dekompiliert aus sensor.sco
-- Quelle laut Bytecode: =(none)

SS_AvpStack = { [nil] = {}, Trigger_EnterPresence = function(L0, L1)
  SetEngineValue(L0, "Triggered", 1)
  Node_LeaveSimulation(L0.Node)
end, Trigger_EnterAcoustic = function(L0, L1)
  SetEngineValue(L0, "Triggered", 1)
  Node_LeaveSimulation(L0.Node)
end, Trigger_EnterVisible = function(L0, L1)
  SetEngineValue(L0, "Triggered", 1)
  Node_LeaveSimulation(L0.Node)
end }
SS_AvpStackLeave = { [nil] = {}, Trigger_LeavePresence = function(L0, L1)
  SetEngineValue(L0, "Triggered", 1)
  Node_LeaveSimulation(L0.Node)
end, Trigger_LeaveAcoustic = function(L0, L1)
  SetEngineValue(L0, "Triggered", 1)
  Node_LeaveSimulation(L0.Node)
end, Trigger_LeaveVisible = function(L0, L1)
  SetEngineValue(L0, "Triggered", 1)
  Node_LeaveSimulation(L0.Node)
end }
SS_ShotHit = { [nil] = {}, Body_InformShotHit = function(L0, L1, L2)
  SetEngineValue(L0, "Attacked", 1)
  StopShotHit(L0)
end }
SS_ShieldGuard = { [nil] = {}, Body_ObjectDestroyed = function(L0)
  if not (L0.Thread.ShieldBehaviour.EscEjected ~= 0) then
    SetEngineValue(L0, "Destroyed", 1)
    SetEngineValue(L0, "DestJump", 1)
    SetEngineValue(L0, "DestEmp", 1)
    SetEngineValue(L0, "DestEmpJump", 1)
    SetEngineValue(L0, "DestEsc", 1)
  end
  SetEngineValue(L0, "KineticShield75", 1)
  SetEngineValue(L0, "KineticShield50", 1)
  SetEngineValue(L0, "KineticShield25", 1)
  SetEngineValue(L0, "KineticShield10", 1)
end, Body_KinShieldBarrierReached = function(L0, L1)
  if not (L0.Thread.ShieldBehaviour.KinLevel ~= 1) then
    L0.Thread.ShieldBehaviour["KinLevel"] = 2
    SetEngineValue(L0, "KineticShield75", 1)
    Body_RequestKinInfo(L0.Node, 0.5)
  else
    if not (L0.Thread.ShieldBehaviour.KinLevel ~= 2) then
      L0.Thread.ShieldBehaviour["KinLevel"] = 3
      SetEngineValue(L0, "KineticShield50", 1)
      Body_RequestKinInfo(L0.Node, 0.25)
    else
      if not (L0.Thread.ShieldBehaviour.KinLevel ~= 3) then
        L0.Thread.ShieldBehaviour["KinLevel"] = 4
        SetEngineValue(L0, "KineticShield25", 1)
        Body_RequestKinInfo(L0.Node, 0.1)
      else
        if not (L0.Thread.ShieldBehaviour.KinLevel ~= 4) then
          SetEngineValue(L0, "KineticShield10", 1)
        end
      end
    end
  end
end, Body_EmpShieldBarrierReached = function(L0, L1)
  if not (L0.Thread.ShieldBehaviour.EmpLevel ~= 1) then
    L0.Thread.ShieldBehaviour["EmpLevel"] = 2
    SetEngineValue(L0, "EmpShield75", 1)
    Body_RequestKinInfo(L0.Node, 0.5)
  else
    if not (L0.Thread.ShieldBehaviour.EmpLevel ~= 2) then
      L0.Thread.ShieldBehaviour["EmpLevel"] = 3
      SetEngineValue(L0, "EmpShield50", 1)
      Body_RequestKinInfo(L0.Node, 0.25)
    else
      if not (L0.Thread.ShieldBehaviour.EmpLevel ~= 3) then
        L0.Thread.ShieldBehaviour["EmpLevel"] = 4
        SetEngineValue(L0, "EmpShield25", 1)
        Body_RequestKinInfo(L0.Node, 0.1)
      else
        if not (L0.Thread.ShieldBehaviour.EmpLevel ~= 4) then
          SetEngineValue(L0, "EmpShield10", 1)
        end
      end
    end
  end
end, Body_EscapePodEjected = function(L0)
  L0.Thread.ShieldBehaviour["EscEjected"] = 1
  SetEngineValue(L0, "EscapePod", 1)
  SetEngineValue(L0, "DestEsc", 1)
end }
SS_EnemyGuard = { [nil] = {}, Body_EnemyArrivalPatrol = function(L0)
  CallFunction(L0.Thread, L0.Thread.EnemyGuard.Callback)
end }
SS_Threatening = { [nil] = {}, Body_InformShotHit = function(L0, L1, L2)
  L7 = L0.Thread.Threatening
  L7["LT_LastAgressor"] = L1
  L3 = L7.LT_ShotList
  L4 = L7.LT_LastShot
  L5 = L7.LT_FirstShot
  L4 = L4 + 1
  L3[L4] = Node_GetTime(L0.Node)
  L7["LT_LastShot"] = L4
  if not (L4 - L5 >= L7.LT_NumOfHits + -1) then
    return
  end
  if not (L3[L4] - L3[L5] >= L7.LT_Time) then
    L7.LM_Finalize(L0)
  end
  L3[L5] = nil
  L7["LT_FirstShot"] = L5 + 1
end, Body_KinShieldBarrierReached = function(L0, L1)
  L0.Thread.Threatening.LM_Finalize(L0)
end, LM_Finalize = function(L0)
  L3 = L0.Thread.Threatening
  L1 = L3.LT_CallBack
  L2 = L3.LT_LastAgressor
  StopShieldGuard(L0)
  StopShotHit(L0)
  RemoveSensorBehaviour(L0, L0.Thread.Threatening)
  L0.Thread["Threatening"] = nil
  CallFunction(L0.Thread, L1, L2)
end }
nil[nil] = { Sensor_Basis = {}, ActivateAvpSensor = function(L0, L1, L2, L3, L4, L5, L6, L7, L8)
  Trigger_ActivateSensor(L0.Node, L7, L5, L6)
  Trigger_SetInterestList(L0.Node, L1, L2, L3, L4)
  L9 = CloneTable(SS_AvpStack)
  L9["CallBack"] = L8
  InsertSensorBehaviour(L0, "AVPSensor")
  L0.Thread["AvpBehaviour"] = L9
end, ActivateAvpSensorComplex = function(L0, L1, L2, L3, L4, L5, L6, L7, L8)
  Trigger_ActivateSensor(L0.Node, L8, L6, L7)
  Trigger_SetInterestList(L0.Node, L2, L3, L4, L5)
  Trigger_SetAcousticSensibility(L0.Node, L1)
  L9 = CloneTable(SS_AvpStack)
  InsertSensorBehaviour(L0, "AVPSensor", L9)
  L0.Thread["AvpBehaviour"] = L9
end, DeactivateAvpSensor = function(L0)
  if CheckSensorBehaviour(L0, "AVPSensor") then
    return
  end
  Trigger_StopSensor(L0.Node)
  RemoveSensorBehaviour(L0, "AVPSensor")
  L0.Thread["AvpBehaviour"] = nil
end, ActivateAvpSensorComplexLeave = function(L0, L1, L2, L3, L4, L5, L6, L7, L8)
  Trigger_ActivateSensor(L0.Node, L8, L6, L7)
  Trigger_SetInterestList(L0.Node, L2, L3, L4, L5)
  Trigger_SetAcousticSensibility(L0.Node, L1)
  L9 = CloneTable(SS_AvpStackLeave)
  InsertSensorBehaviour(L0, "AVPSensorLeave", L9)
  L0.Thread["AvpBehaviourLeave"] = L9
end, DeactivateAvpSensorLeave = function(L0)
  if CheckSensorBehaviour(L0, "AVPSensorLeave") then
    return
  end
  Trigger_StopSensor(L0.Node)
  RemoveSensorBehaviour(L0, "AVPSensorLeave")
  L0.Thread["AvpBehaviourLeave"] = nil
end, ActivateShotHitSensor = function(L0)
  StartShotHit(L0)
  L1 = CloneTable(SS_ShotHit)
  InsertSensorBehaviour(L0, "ShotHit", L1)
  L0.Thread["ShotHitBehaviour"] = L1
end, DeactivateShotHitSensor = function(L0)
  if CheckSensorBehaviour(L0, "ShotHit") then
    return
  end
  StopShotHit(L0)
  RemoveSensorBehaviour(L0, "ShotHit")
  L0.Thread["ShotHitBehaviour"] = nil
end, ActivateShieldGuard = function(L0)
  StartShieldGuard(L0)
  Body_RequestKinInfo(L0.Node, 0.75)
  Body_RequestEmpInfo(L0.Node, 0.75)
  Body_StartEscapeBehaviour(L0.Node)
  L1 = CloneTable(SS_ShieldGuard)
  L1["EmpLevel"] = 1
  L1["KinLevel"] = 1
  L1["EscEjected"] = 0
  InsertSensorBehaviour(L0, "ShieldGuard", L1)
  L0.Thread["ShieldBehaviour"] = L1
end, DeactivateShieldGuard = function(L0)
  if CheckSensorBehaviour(L0, "ShieldGuard") then
    return
  end
  StopShieldGuard(L0)
  Body_StopEscapeBehaviour(L0.Node)
  RemoveSensorBehaviour(L0, "ShieldGuard")
  L0.Thread["ShieldBehaviour"] = nil
end, ActivateEnemyGuard = function(L0, L1, L2, L3, L4, L5, L6, L7)
  StartEnemyPatrol(L0, L2, L3, L4, L5, L6, L7)
  L8 = CloneTable(SS_EnemyGuard)
  L8["Callback"] = L1
  InsertSensorBehaviour(L0, "EnemyGuard", L8)
  L0.Thread["EnemyGuard"] = L8
end, DeactivateEnemyGuard = function(L0)
  if CheckSensorBehaviour(L0, "EnemyGuard") then
    return
  end
  StopEnemyPatrol(L0)
  RemoveSensorBehaviour(L0, "EnemyGuard")
  L0.Thread["EnemyGuard"] = nil
end, ActivateThreatening = function(L0, L1, L2, L3, L4)
  L5 = CloneTable(SS_Threatening)
  L5["LT_NumOfHits"] = L2
  L5["LT_Time"] = L3
  L5["LT_CallBack"] = L1
  L5["LT_ShotList"] = {}
  L5["LT_FirstShot"] = 1
  L5["LT_LastShot"] = 0
  InsertSensorBehaviour(L0, "Threatening", L5)
  L0.Thread["Threatening"] = L5
  StartShotHit(L0)
  StartShieldGuard(L0)
  Body_RequestKinInfo(L0.Node, L4)
end, DeactivateThreatening = function(L0)
  if CheckSensorBehaviour(L0, "Threatening") then
    return
  end
  StopShieldGuard(L0)
  StopShotHit(L0)
  RemoveSensorBehaviour(L0, "Threatening")
  L0.Thread["Threatening"] = nil
end }
