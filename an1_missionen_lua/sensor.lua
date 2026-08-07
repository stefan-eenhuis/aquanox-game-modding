-- dekompiliert aus dat\script\lib\sensor.sco
-- Quelle laut Bytecode: @Y:\AquaNox\dat\script\lib\sensor.scr
-- lua4dec.py, 2026-07-28

SS_AvpStack = { [nil] = {}, Trigger_EnterPresence = function(State, Object)
  SetEngineValue(State, "Triggered", 1)
  Node_LeaveSimulation(State.Node)
end, Trigger_EnterAcoustic = function(State, Object)
  SetEngineValue(State, "Triggered", 1)
  Node_LeaveSimulation(State.Node)
end, Trigger_EnterVisible = function(State, Object)
  SetEngineValue(State, "Triggered", 1)
  Node_LeaveSimulation(State.Node)
end }
SS_AvpStackLeave = { [nil] = {}, Trigger_LeavePresence = function(State, Object)
  SetEngineValue(State, "Triggered", 1)
  Node_LeaveSimulation(State.Node)
end, Trigger_LeaveAcoustic = function(State, Object)
  SetEngineValue(State, "Triggered", 1)
  Node_LeaveSimulation(State.Node)
end, Trigger_LeaveVisible = function(State, Object)
  SetEngineValue(State, "Triggered", 1)
  Node_LeaveSimulation(State.Node)
end }
SS_ShotHit = { [nil] = {}, Body_InformShotHit = function(State, Agressor, Bullet)
  SetEngineValue(State, "Attacked", 1)
  StopShotHit(State)
end }
SS_ShieldGuard = { [nil] = {}, Body_ObjectDestroyed = function(State)
  if not (State.Thread.ShieldBehaviour.EscEjected ~= 0) then
    SetEngineValue(State, "Destroyed", 1)
    SetEngineValue(State, "DestJump", 1)
    SetEngineValue(State, "DestEmp", 1)
    SetEngineValue(State, "DestEmpJump", 1)
    SetEngineValue(State, "DestEsc", 1)
  end
  SetEngineValue(State, "KineticShield75", 1)
  SetEngineValue(State, "KineticShield50", 1)
  SetEngineValue(State, "KineticShield25", 1)
end, Body_KinShieldBarrierReached = function(State, Barrier)
  if not (State.Thread.ShieldBehaviour.KinLevel ~= 1) then
    State.Thread.ShieldBehaviour["KinLevel"] = 2
    SetEngineValue(State, "KineticShield75", 1)
    Body_RequestKinInfo(State.Node, 0.5)
  else
    if not (State.Thread.ShieldBehaviour.KinLevel ~= 2) then
      State.Thread.ShieldBehaviour["KinLevel"] = 3
      SetEngineValue(State, "KineticShield50", 1)
      Body_RequestKinInfo(State.Node, 0.25)
    else
      if not (State.Thread.ShieldBehaviour.KinLevel ~= 3) then
        SetEngineValue(State, "KineticShield25", 1)
      end
    end
  end
end, Body_EmpShieldBarrierReached = function(State, Barrier)
  if not (State.Thread.ShieldBehaviour.EmpLevel ~= 1) then
    State.Thread.ShieldBehaviour["EmpLevel"] = 2
    SetEngineValue(State, "EmpShield75", 1)
    Body_RequestKinInfo(State.Node, 0.5)
  else
    if not (State.Thread.ShieldBehaviour.EmpLevel ~= 2) then
      State.Thread.ShieldBehaviour["EmpLevel"] = 3
      SetEngineValue(State, "EmpShield50", 1)
      Body_RequestKinInfo(State.Node, 0.25)
    else
      if not (State.Thread.ShieldBehaviour.EmpLevel ~= 3) then
        SetEngineValue(State, "EmpShield25", 1)
      end
    end
  end
end, Body_EscapePodEjected = function(State)
  State.Thread.ShieldBehaviour["EscEjected"] = 1
  SetEngineValue(State, "EscapePod", 1)
  SetEngineValue(State, "DestEsc", 1)
end }
SS_EnemyGuard = { [nil] = {}, Body_EnemyArrivalPatrol = function(State)
  CallFunction(State.Thread, State.Thread.EnemyGuard.Callback)
end }
SS_Threatening = { [nil] = {}, Body_InformShotHit = function(State, Agressor, Shot)
  table = State.Thread.Threatening
  table["LT_LastAgressor"] = Agressor
  shotList = table.LT_ShotList
  lastEntry = table.LT_LastShot
  firstEntry = table.LT_FirstShot
  lastEntry = lastEntry + 1
  shotList[lastEntry] = Node_GetTime(State.Node)
  table["LT_LastShot"] = lastEntry
  if not (lastEntry - firstEntry >= table.LT_NumOfHits + -1) then
    return
  end
  if not (shotList[lastEntry] - shotList[firstEntry] >= table.LT_Time) then
    table.LM_Finalize(State)
  end
  shotList[firstEntry] = nil
  table["LT_FirstShot"] = firstEntry + 1
end, Body_KinShieldBarrierReached = function(State, Value)
  State.Thread.Threatening.LM_Finalize(State)
end, LM_Finalize = function(State)
  table = State.Thread.Threatening
  callback = table.LT_CallBack
  param = table.LT_LastAgressor
  StopShieldGuard(State)
  StopShotHit(State)
  RemoveSensorBehaviour(State, State.Thread.Threatening)
  State.Thread["Threatening"] = nil
  CallFunction(State.Thread, callback, param)
end }
nil[nil] = { Sensor_Basis = {}, ActivateAvpSensor = function(State, FirstInterest, SecondInterest, ThirdInterest, FourthInterest, Hearing, Seeing, Feeling, CallBack)
  Trigger_ActivateSensor(State.Node, Feeling, Hearing, Seeing)
  Trigger_SetInterestList(State.Node, FirstInterest, SecondInterest, ThirdInterest, FourthInterest)
  table = CloneTable(SS_AvpStack)
  table["CallBack"] = CallBack
  InsertSensorBehaviour(State, "AVPSensor")
  State.Thread["AvpBehaviour"] = table
end, ActivateAvpSensorComplex = function(State, AudioSensitivity, FirstInterest, SecondInterest, ThirdInterest, FourthInterest, Hearing, Seeing, Feeling)
  Trigger_ActivateSensor(State.Node, Feeling, Hearing, Seeing)
  Trigger_SetInterestList(State.Node, FirstInterest, SecondInterest, ThirdInterest, FourthInterest)
  Trigger_SetAcousticSensibility(State.Node, AudioSensitivity)
  table = CloneTable(SS_AvpStack)
  InsertSensorBehaviour(State, "AVPSensor", table)
  State.Thread["AvpBehaviour"] = table
end, DeactivateAvpSensor = function(State)
  if CheckSensorBehaviour(State, "AVPSensor") then
    return
  end
  Trigger_StopSensor(State.Node)
  RemoveSensorBehaviour(State, "AVPSensor")
  State.Thread["AvpBehaviour"] = nil
end, ActivateAvpSensorComplexLeave = function(State, AudioSensitivity, FirstInterest, SecondInterest, ThirdInterest, FourthInterest, Hearing, Seeing, Feeling)
  Trigger_ActivateSensor(State.Node, Feeling, Hearing, Seeing)
  Trigger_SetInterestList(State.Node, FirstInterest, SecondInterest, ThirdInterest, FourthInterest)
  Trigger_SetAcousticSensibility(State.Node, AudioSensitivity)
  table = CloneTable(SS_AvpStackLeave)
  InsertSensorBehaviour(State, "AVPSensorLeave", table)
  State.Thread["AvpBehaviourLeave"] = table
end, DeactivateAvpSensorLeave = function(State)
  if CheckSensorBehaviour(State, "AVPSensorLeave") then
    return
  end
  Trigger_StopSensor(State.Node)
  RemoveSensorBehaviour(State, "AVPSensorLeave")
  State.Thread["AvpBehaviourLeave"] = nil
end, ActivateShotHitSensor = function(State)
  StartShotHit(State)
  table = CloneTable(SS_ShotHit)
  InsertSensorBehaviour(State, "ShotHit", table)
  State.Thread["ShotHitBehaviour"] = table
end, DeactivateShotHitSensor = function(State)
  if CheckSensorBehaviour(State, "ShotHit") then
    return
  end
  StopShotHit(State)
  RemoveSensorBehaviour(State, "ShotHit")
  State.Thread["ShotHitBehaviour"] = nil
end, ActivateShieldGuard = function(State)
  StartShieldGuard(State)
  Body_RequestKinInfo(State.Node, 0.75)
  Body_RequestEmpInfo(State.Node, 0.75)
  Body_StartEscapeBehaviour(State.Node)
  table = CloneTable(SS_ShieldGuard)
  table["EmpLevel"] = 1
  table["KinLevel"] = 1
  table["EscEjected"] = 0
  InsertSensorBehaviour(State, "ShieldGuard", table)
  State.Thread["ShieldBehaviour"] = table
end, DeactivateShieldGuard = function(State)
  if CheckSensorBehaviour(State, "ShieldGuard") then
    return
  end
  StopShieldGuard(State)
  Body_StopEscapeBehaviour(State.Node)
  RemoveSensorBehaviour(State, "ShieldGuard")
  State.Thread["ShieldBehaviour"] = nil
end, ActivateEnemyGuard = function(State, Callback, WatchDistance, FirstPri, SecondPri, ThirdPri, FourthPri, PatrolArea)
  StartEnemyPatrol(State, WatchDistance, FirstPri, SecondPri, ThirdPri, FourthPri, PatrolArea)
  table = CloneTable(SS_EnemyGuard)
  table["Callback"] = Callback
  InsertSensorBehaviour(State, "EnemyGuard", table)
  State.Thread["EnemyGuard"] = table
end, DeactivateEnemyGuard = function(State)
  if CheckSensorBehaviour(State, "EnemyGuard") then
    return
  end
  StopEnemyPatrol(State)
  RemoveSensorBehaviour(State, "EnemyGuard")
  State.Thread["EnemyGuard"] = nil
end, ActivateThreatening = function(State, CallBack, NumOfHits, TimeToReceive, KinShieldBarrier)
  table = CloneTable(SS_Threatening)
  table["LT_NumOfHits"] = NumOfHits
  table["LT_Time"] = TimeToReceive
  table["LT_CallBack"] = CallBack
  table["LT_ShotList"] = {}
  table["LT_FirstShot"] = 1
  table["LT_LastShot"] = 0
  InsertSensorBehaviour(State, "Threatening", table)
  State.Thread["Threatening"] = table
  StartShotHit(State)
  StartShieldGuard(State)
  Body_RequestKinInfo(State.Node, KinShieldBarrier)
end, DeactivateThreatening = function(State)
  if CheckSensorBehaviour(State, "Threatening") then
    return
  end
  StopShieldGuard(State)
  StopShotHit(State)
  RemoveSensorBehaviour(State, "Threatening")
  State.Thread["Threatening"] = nil
end }