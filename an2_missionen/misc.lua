-- dekompiliert aus misc.sco
-- Quelle laut Bytecode: @Y:\AquaNox\dat\script\lib\misc.scr

VesselGotoLib = LoadLib("VesselGoto")
VesselAttackLib = LoadLib("VesselAttack")
FormationLib = LoadLib("Formation")
LM_MilkRunGoto = { [nil] = {}, LM_Activate = function(State)
  formation = GetInnerValue(State, "MRG_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    FormationLib.DeclareAsLeader(State, formation)
    if not (GetInnerValue(State, "MRG_CallBack")) then
      VesselGotoLib.ComplexGoto(State, GetInnerValue(State, "MRG_CommandTable"))
    else
      VesselGotoLib.ComplexGoto(State, GetInnerValue(State, "MRG_CommandTable"), "LM_LeaderArrived", nil)
    end
  end
  StartEnemyPatrol(State, GetInnerValue(State, "MRG_Mode"), GetInnerValue(State, "MRG_WatchDistance"), GetInnerValue(State, "MRG_FirstPri"), GetInnerValue(State, "MRG_SecondPri"), GetInnerValue(State, "MRG_ThirdPri"), GetInnerValue(State, "MRG_FourthPri"), GetInnerValue(State, "MRG_FightingArea"))
  State["LM_HelpCalled"] = 0
end, Vessel_EscortObjectLost = function(State)
  FormationLib.FollowInFormationStop(State)
  formation = GetInnerValue(State, "MRG_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    FormationLib.DeclareAsLeader(State, formation)
    VesselGotoLib.ComplexGoto(State, GetInnerValue(State, "MRG_CommandTable"), "LM_LeaderArrived", nil)
  end
end, LM_LeaderArrived = function(State)
  FormationLib.DeclareAsLeaderStop(State)
  CallFunction(GetInnerValue(State, "MRG_OurGroup"), "LM_Arrived", nil)
end, LM_Arrived = function(State)
  callback = GetInnerValue(State, "MRG_CallBack")
  param = GetInnerValue(State, "MRG_Param")
  FormationLib.FollowInFormationStop(State)
  VesselAttackLib.ClearAreaStop(State)
  StopEnemyPatrol(State)
  RestoreModification(State, "LM_MilkRunGoto")
  CallFunction(State.Thread, callback, param)
end, LM_GroupAttack = function(State)
  if not (State.LM_HelpCalled ~= 0) then
    State["LM_HelpCalled"] = 1
    formation = GetInnerValue(State, "MRG_Formation")
    StopEnemyPatrol(State)
    formation["LM_OldStatus"] = VesselGotoLib.ComplexGotoStop(State, formation.LM_OldStatus)
    FormationLib.DeclareAsLeaderStop(State)
    FormationLib.FollowInFormationStop(State)
    VesselAttackLib.ClearArea(State, 0, GetInnerValue(State, "MRG_FightingArea"), GetInnerValue(State, "MRG_FirstPri"), GetInnerValue(State, "MRG_SecondPri"), GetInnerValue(State, "MRG_ThirdPri"), GetInnerValue(State, "MRG_FourthPri"), GetInnerValue(State, "MRG_WaitingTime"), GetInnerValue(State, "MRG_Velocity"), "LM_AttackOver", nil)
  end
end, Body_EnemyArrivalPatrol = function(State)
  CallFunction(GetInnerValue(State, "MRG_OurGroup"), "LM_GroupAttack", nil)
end, LM_AttackOver = function(State)
  formation = GetInnerValue(State, "MRG_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    FormationLib.DeclareAsLeader(State, formation)
    VesselGotoLib.ComplexGotoResume(State, formation.LM_OldStatus)
  end
  State["LM_HelpCalled"] = 0
  StartEnemyPatrol(State, GetInnerValue(State, "MRG_Mode"), GetInnerValue(State, "MRG_WatchDistance"), GetInnerValue(State, "MRG_FirstPri"), GetInnerValue(State, "MRG_SecondPri"), GetInnerValue(State, "MRG_ThirdPri"), GetInnerValue(State, "MRG_FourthPri"), GetInnerValue(State, "MRG_FightingArea"))
end, StopBehavior = function(State)
  LibList.Misc_Basis.MilkRunGotoStop(State)
end }
LM_ComplexGotoAttack = { [nil] = {}, LM_Activate = function(State)
  if not (GetInnerValue(State, "CGA_CallBack")) then
    VesselGotoLib.ComplexGoto(State, GetInnerValue(State, "CGA_CommandTable"))
  else
    VesselGotoLib.ComplexGoto(State, GetInnerValue(State, "CGA_CommandTable"), "LM_Arrived", nil)
  end
  StartEnemyPatrol(State, GetInnerValue(State, "CGA_Mode"), GetInnerValue(State, "CGA_WatchDistance"), GetInnerValue(State, "CGA_FirstPri"), GetInnerValue(State, "CGA_SecondPri"), GetInnerValue(State, "CGA_ThirdPri"), GetInnerValue(State, "CGA_FourthPri"), GetInnerValue(State, "CGA_FightingArea"))
end, LM_Arrived = function(State)
  callback = GetInnerValue(State, "CGA_CallBack")
  param = GetInnerValue(State, "CGA_Param")
  VesselAttackLib.ClearAreaStop(State)
  StopEnemyPatrol(State)
  RestoreModification(State, "LM_ComplexGotoAttack")
  CallFunction(State.Thread, callback, param)
end, Body_EnemyArrivalPatrol = function(State)
  StopEnemyPatrol(State)
  State["LM_OldStatus"] = VesselGotoLib.ComplexGotoStop(State, State.LM_OldStatus)
  VesselAttackLib.ClearArea(State, 0, GetInnerValue(State, "CGA_FightingArea"), GetInnerValue(State, "CGA_FirstPri"), GetInnerValue(State, "CGA_SecondPri"), GetInnerValue(State, "CGA_ThirdPri"), GetInnerValue(State, "CGA_FourthPri"), GetInnerValue(State, "CGA_WaitingTime"), GetInnerValue(State, "CGA_Velocity"), "LM_AttackOver", nil)
end, LM_AttackOver = function(State)
  VesselGotoLib.ComplexGotoResume(State, State.LM_OldStatus)
  StartEnemyPatrol(State, GetInnerValue(State, "CGA_Mode"), GetInnerValue(State, "CGA_WatchDistance"), GetInnerValue(State, "CGA_FirstPri"), GetInnerValue(State, "CGA_SecondPri"), GetInnerValue(State, "CGA_ThirdPri"), GetInnerValue(State, "CGA_FourthPri"), GetInnerValue(State, "CGA_FightingArea"))
end, StopBehavior = function(State)
  LibList.Misc_Basis.ComplexGotoAttackStop(State)
end }
LM_MilkRunPatrol = { [nil] = {}, LM_Activate = function(State)
  formation = GetInnerValue(State, "MRP_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    VesselGotoLib.MultiPatrol(State, GetInnerValue(State, "MRP_ListOfPatrolAreas"), GetInnerValue(State, "MRP_TimeOutForPatrol"), GetInnerValue(State, "MRP_Velocity"))
    FormationLib.DeclareAsLeader(State, formation)
  end
  StartEnemyPatrol(State, GetInnerValue(State, "MRP_Mode"), GetInnerValue(State, "MRP_WatchDistance"), GetInnerValue(State, "MRP_FirstPri"), GetInnerValue(State, "MRP_SecondPri"), GetInnerValue(State, "MRP_ThirdPri"), GetInnerValue(State, "MRP_FourthPri"), GetInnerValue(State, "MRP_FightingArea"))
  State["LM_HelpCalled"] = 0
end, Vessel_EscortObjectLost = function(State)
  FormationLib.FollowInFormationStop(State)
  formation = GetInnerValue(State, "MRP_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    VesselGotoLib.MultiPatrol(State, GetInnerValue(State, "MRP_ListOfPatrolAreas"), GetInnerValue(State, "MRP_TimeOutForPatrol"), GetInnerValue(State, "MRP_Velocity"))
    FormationLib.DeclareAsLeader(State, formation)
  end
end, LM_GroupAttack = function(State)
  if not (State.LM_HelpCalled ~= 0) then
    State["LM_HelpCalled"] = 1
    StopEnemyPatrol(State)
    FormationLib.DeclareAsLeaderStop(State)
    FormationLib.FollowInFormationStop(State)
    VesselGotoLib.MultiPatrolStop(State)
    VesselAttackLib.ClearArea(State, 0, GetInnerValue(State, "MRP_FightingArea"), GetInnerValue(State, "MRP_FirstPri"), GetInnerValue(State, "MRP_SecondPri"), GetInnerValue(State, "MRP_ThirdPri"), GetInnerValue(State, "MRP_FourthPri"), GetInnerValue(State, "MRP_WaitingTime"), GetInnerValue(State, "MRP_Velocity"), "LM_AttackOver", nil)
  end
end, Body_EnemyArrivalPatrol = function(State)
  CallFunction(GetInnerValue(State, "MRP_OurGroup"), "LM_GroupAttack", nil)
end, LM_AttackOver = function(State)
  formation = GetInnerValue(State, "MRP_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    VesselGotoLib.MultiPatrol(State, GetInnerValue(State, "MRP_ListOfPatrolAreas"), GetInnerValue(State, "MRP_TimeOutForPatrol"), GetInnerValue(State, "MRP_Velocity"))
    FormationLib.DeclareAsLeader(State, formation)
  end
  State["LM_HelpCalled"] = 0
  StartEnemyPatrol(State, GetInnerValue(State, "MRP_Mode"), GetInnerValue(State, "MRP_WatchDistance"), GetInnerValue(State, "MRP_FirstPri"), GetInnerValue(State, "MRP_SecondPri"), GetInnerValue(State, "MRP_ThirdPri"), GetInnerValue(State, "MRP_FourthPri"), GetInnerValue(State, "MRP_FightingArea"))
end, StopBehavior = function(State)
  LibList.Misc_Basis.MilkRunPatrolStop(State)
end }
LM_ProtectedGoto = { [nil] = {}, PG_Finished = function(State)
  callback = GetInnerValue(State, "PG_CallBack")
  CallFunction(GetInnerValue(State, "PG_Group"), "PV_Arrived")
  FormationLib.DeclareAsLeaderStop(State)
  RestoreModification(State, "LM_ProtectedGoto")
  CallFunction(State.Thread, callback)
end, StopBehavior = function(State)
  LibList.Misc_Basis.ProtectedGotoStop(State)
end }
LM_ProtectedPatrol = { [nil] = {}, StopBehavior = function(State)
  LibList.Misc_Basis.ProtectedMultiPatrolStop(State)
end }
LM_FollowProtect = { [nil] = {}, LM_Activate = function(State)
  if not (FormationLib.HasLeader(GetInnerValue(State, "FP_Formation"))) then
    callback = GetInnerValue(State, "FP_CallBack")
    RestoreModification(State, "LM_FollowProtect")
    CallFunction(State.Thread, callback)
    return
  end
  FormationLib.FollowInFormation(State, GetInnerValue(State, "FP_Formation"))
  StartEnemyPatrol(State, GetInnerValue(State, "FP_Mode"), GetInnerValue(State, "FP_WatchDistance"), GetInnerValue(State, "FP_FirstPri"), GetInnerValue(State, "FP_SecondPri"), GetInnerValue(State, "FP_ThirdPri"), GetInnerValue(State, "FP_FourthPri"), GetInnerValue(State, "FP_TriggerArea"))
end, Body_EnemyArrivalPatrol = function(State)
  FormationLib.FollowInFormationStop(State)
  VesselAttackLib.ClearArea(State, 0, GetInnerValue(State, "FP_FollowArea"), GetInnerValue(State, "FP_FirstPri"), GetInnerValue(State, "FP_SecondPri"), GetInnerValue(State, "FP_ThirdPri"), GetInnerValue(State, "FP_FourthPri"), GetInnerValue(State, "FP_WaitingTime"), GetInnerValue(State, "FP_Velocity"), "LM_Activate", nil)
end, PV_Arrived = function(State)
  StopEnemyPatrol(State)
  VesselAttackLib.ClearAreaStop(State)
  FormationLib.FollowInFormationStop(State)
  callback = GetInnerValue(State, "FP_CallBack")
  RestoreModification(State, "LM_FollowProtect")
  CallFunction(State.Thread, callback)
end, Vessel_EscortObjectLost = function(State)
  StopEnemyPatrol(State)
  VesselAttackLib.ClearAreaStop(State)
  FormationLib.FollowInFormationStop(State)
  callback = GetInnerValue(State, "FP_CallBack")
  RestoreModification(State, "LM_FollowProtect")
  CallFunction(State.Thread, callback)
end, StopBehavior = function(State)
  LibList.Misc_Basis.FollowProtectStop(State)
end }
LM_Infiltrate = { [nil] = {}, Vessel_InfiltrateFinished = function(State)
  callback = GetInnerValue(State, "IF_CallBack")
  RestoreModification(State, "LM_Infiltrate")
  CallFunction(State.Thread, callback)
end, Vessel_InfiltrateSuccess = function(State)
  SetEngineValue(State, "InfiltrateSuccess", 1)
end, Body_ObjectDestroyed = function(State)
  SetEngineValue(State, "InfiltrateAbort", 1)
end, StopBehavior = function(State)
  LibList.Misc_Basis.InfiltrateStop(State)
end, Vessel_InfiltrateBegin = function(State)
  SetEngineValue(State, "InfiltrateBegin", 1)
end }
nil[nil] = { Misc_Basis = {}, ComplexGotoAttack = function(State, Mode, CommandTable, FightingArea, WatchDistance, FirstPri, SecondPri, ThirdPri, FourthPri, WaitingTime, Velocity, Cycle, CallBack, Param)
  ApplyModification(State, LM_ComplexGotoAttack, "LM_ComplexGotoAttack")
  StoreInnerValue(State, "CGA_Mode", Mode)
  StoreInnerValue(State, "CGA_CommandTable", CommandTable)
  StoreInnerValue(State, "CGA_FightingArea", FightingArea)
  StoreInnerValue(State, "CGA_WatchDistance", WatchDistance)
  StoreInnerValue(State, "CGA_FirstPri", FirstPri)
  StoreInnerValue(State, "CGA_SecondPri", SecondPri)
  StoreInnerValue(State, "CGA_ThirdPri", ThirdPri)
  StoreInnerValue(State, "CGA_FourthPri", FourthPri)
  StoreInnerValue(State, "CGA_WaitingTime", WaitingTime)
  StoreInnerValue(State, "CGA_Velocity", Velocity)
  StoreInnerValue(State, "CGA_CallBack", CallBack)
  StoreInnerValue(State, "CGA_Param", Param)
  if not (Cycle ~= 1) then
    StoreInnerValue(State, "CGA_CallBack", nil)
  end
  CallFunction(State.Thread, "LM_Activate", nil)
end, ComplexGotoAttackStop = function(State)
  VesselGotoLib.ComplexGotoStop(State)
  VesselAttackLib.ClearAreaStop(State)
  StopEnemyPatrol(State)
  if not (IsNotLastModification(State, "LM_ComplexGotoAttack")) then
    RestoreModification(State, "LM_ComplexGotoAttack")
  end
end, MilkRunGoto = function(State, Mode, OurGroup, CommandTable, Formation, FightingArea, WatchDistance, FirstPri, SecondPri, ThirdPri, FourthPri, WaitingTime, Velocity, Cycle, CallBack, Param)
  ApplyModification(State, LM_MilkRunGoto, "LM_MilkRunGoto")
  StoreInnerValue(State, "MRG_Mode", Mode)
  StoreInnerValue(State, "MRG_OurGroup", OurGroup)
  StoreInnerValue(State, "MRG_CommandTable", CommandTable)
  StoreInnerValue(State, "MRG_Formation", Formation)
  StoreInnerValue(State, "MRG_FightingArea", FightingArea)
  StoreInnerValue(State, "MRG_WatchDistance", WatchDistance)
  StoreInnerValue(State, "MRG_FirstPri", FirstPri)
  StoreInnerValue(State, "MRG_SecondPri", SecondPri)
  StoreInnerValue(State, "MRG_ThirdPri", ThirdPri)
  StoreInnerValue(State, "MRG_FourthPri", FourthPri)
  StoreInnerValue(State, "MRG_WaitingTime", WaitingTime)
  StoreInnerValue(State, "MRG_Velocity", Velocity)
  StoreInnerValue(State, "MRG_CallBack", CallBack)
  StoreInnerValue(State, "MRG_Param", Param)
  if not (Cycle ~= 1) then
    StoreInnerValue(State, "MRG_CallBack", nil)
  end
  CallFunction(State.Thread, "LM_Activate", nil)
end, MilkRunGotoStop = function(State)
  FormationLib.DeclareAsLeaderStop(State)
  FormationLib.FollowInFormationStop(State)
  VesselGotoLib.ComplexGotoStop(State)
  VesselAttackLib.ClearAreaStop(State)
  StopEnemyPatrol(State)
  if not (IsNotLastModification(State, "LM_MilkRunGoto")) then
    RestoreModification(State, "LM_MilkRunGoto")
  end
end, MilkRunPatrol = function(State, Mode, OurGroup, ListOfPatrolAreas, TimeOutForPatrol, Formation, FightingArea, WatchDistance, FirstPri, SecondPri, ThirdPri, FourthPri, WaitingTime, Velocity)
  ApplyModification(State, LM_MilkRunPatrol, "LM_MilkRunPatrol")
  StoreInnerValue(State, "MRP_Mode", Mode)
  StoreInnerValue(State, "MRP_OurGroup", OurGroup)
  StoreInnerValue(State, "MRP_ListOfPatrolAreas", ListOfPatrolAreas)
  StoreInnerValue(State, "MRP_TimeOutForPatrol", TimeOutForPatrol)
  StoreInnerValue(State, "MRP_Formation", Formation)
  StoreInnerValue(State, "MRP_FightingArea", FightingArea)
  StoreInnerValue(State, "MRP_WatchDistance", WatchDistance)
  StoreInnerValue(State, "MRP_FirstPri", FirstPri)
  StoreInnerValue(State, "MRP_SecondPri", SecondPri)
  StoreInnerValue(State, "MRP_ThirdPri", ThirdPri)
  StoreInnerValue(State, "MRP_FourthPri", FourthPri)
  StoreInnerValue(State, "MRP_WaitingTime", WaitingTime)
  StoreInnerValue(State, "MRP_Velocity", Velocity)
  CallFunction(State.Thread, "LM_Activate", nil)
end, MilkRunPatrolStop = function(State)
  FormationLib.DeclareAsLeaderStop(State)
  FormationLib.FollowInFormationStop(State)
  VesselGotoLib.MultiPatrolStop(State)
  VesselAttackLib.ClearAreaStop(State)
  StopEnemyPatrol(State)
  if not (IsNotLastModification(State, "LM_MilkRunPatrol")) then
    RestoreModification(State, "LM_MilkRunPatrol")
  end
end, ProtectedGoto = function(State, CommandTable, Group, Formation, TriggerArea, FollowArea, Cycle, CallBack)
  ApplyModification(State, LM_ProtectedGoto, "LM_ProtectedGoto")
  StoreInnerValue(State, "PG_CallBack", CallBack)
  StoreInnerValue(State, "PG_Group", Group)
  FormationLib.DeclareAsLeader(State, Formation)
  if not (Cycle ~= 1) then
    VesselGotoLib.ComplexGoto(State, CommandTable)
  else
    VesselGotoLib.ComplexGoto(State, CommandTable, "PG_Finished")
  end
  PatrolArea_BindNode(Node_Find(State.Node, TriggerArea), State.Node)
  PatrolArea_BindNode(Node_Find(State.Node, FollowArea), State.Node)
end, ProtectedGotoStop = function(State)
  VesselGotoLib.ComplexGotoStop(State)
  FormationLib.DeclareAsLeaderStop(State)
  CallFunction(GetInnerValue(State, "PG_Group"), "PV_Arrived")
  if not (IsNotLastModification(State, "LM_ProtectedGoto")) then
    RestoreModification(State, "LM_ProtectedGoto")
  end
end, ProtectedMultiPatrol = function(State, PatrolAreas, Group, Formation, TriggerArea, FollowArea, TimeOutForPatrol, PatrolVelocity)
  ApplyModification(State, LM_ProtectedPatrol, "LM_ProtectedPatrol")
  StoreInnerValue(State, "PMP_Group", Group)
  FormationLib.DeclareAsLeader(State, Formation)
  VesselGotoLib.MultiPatrol(State, PatrolAreas, TimeOutForPatrol, PatrolVelocity)
  PatrolArea_BindNode(Node_Find(State.Node, TriggerArea), State.Node)
  PatrolArea_BindNode(Node_Find(State.Node, FollowArea), State.Node)
end, ProtectedMultiPatrolStop = function(State)
  VesselGotoLib.MultiPatrolStop(State)
  FormationLib.DeclareAsLeaderStop(State)
  CallFunction(GetInnerValue(State, "PMP_Group"), "PV_Arrived")
  if not (IsNotLastModification(State, "LM_ProtectedPatrol")) then
    RestoreModification(State, "LM_ProtectedPatrol")
  end
end, FollowProtect = function(State, Formation, SensorMode, WatchDistance, FirstPri, SecondPri, ThirdPri, FourthPri, TriggerArea, FollowArea, PatrolVelocity, TimeOutForPatrol, CallBack)
  ApplyModification(State, LM_FollowProtect, "LM_FollowProtect")
  StoreInnerValue(State, "FP_Formation", Formation)
  StoreInnerValue(State, "FP_FirstPri", FirstPri)
  StoreInnerValue(State, "FP_SecondPri", SecondPri)
  StoreInnerValue(State, "FP_ThirdPri", ThirdPri)
  StoreInnerValue(State, "FP_FourthPri", FourthPri)
  StoreInnerValue(State, "FP_Mode", SensorMode)
  StoreInnerValue(State, "FP_WatchDistance", WatchDistance)
  StoreInnerValue(State, "FP_TriggerArea", TriggerArea)
  StoreInnerValue(State, "FP_FollowArea", FollowArea)
  StoreInnerValue(State, "FP_WaitingTime", TimeOutForPatrol)
  StoreInnerValue(State, "FP_Velocity", PatrolVelocity)
  StoreInnerValue(State, "FP_CallBack", CallBack)
  CallFunction(State.Thread, "LM_Activate")
end, FollowProtectStop = function(State)
  FormationLib.FollowInFormationStop(State)
  VesselAttackLib.ClearAreaStop(State)
  StopEnemyPatrol(State)
  if not (IsNotLastModification(State, "LM_FollowProtect")) then
    RestoreModification(State, "LM_FollowProtect")
  end
end, Infiltrate = function(State, Object, CounterDock, Dock, InfiltrationStiffnessTranslation, InfiltrationStiffnessOrientation, TimeToInfiltrate, CallBack)
  StartShieldGuard(State)
  Vessel_Infiltrate(State.Node, Object, CounterDock, Dock, InfiltrationStiffnessTranslation, InfiltrationStiffnessOrientation, TimeToInfiltrate)
  ApplyModification(State, LM_Infiltrate, "LM_Infiltrate")
  StoreInnerValue(State, "IF_CallBack", CallBack)
end, InfiltrateStop = function(State)
  if not (IsNotLastModification(State, "LM_Infiltrate")) then
    RestoreModification(State, "LM_Infiltrate")
  end
end, UnInfiltrate = function(State, CallBack)
  Vessel_FinalizeInfiltrate(State.Node)
  ApplyModification(State, LM_Infiltrate, "LM_Infiltrate")
  StoreInnerValue(State, "IF_CallBack", CallBack)
end }
