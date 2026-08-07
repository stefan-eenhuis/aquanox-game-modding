-- dekompiliert aus oldone.sco
-- Quelle laut Bytecode: @Y:\AquaNox\dat\script\lib\OldOne.scr

OO_Goto = { [nil] = {}, PhysicalCharacter_GotoArrived = function(State, Path)
  callback = GetInnerValue(State, "OO_CallBack")
  RestoreModification(State, "OO_Goto")
  CallFunction(State.Thread, callback)
end, StopBehavior = function(State)
  LibList.OldOne_Basis.GotoStop(State)
end }
OO_Attack = { [nil] = {}, PhysicalCharacter_AttackCompleted = function(State)
  callback = GetInnerValue(State, "OO_CallBack")
  RestoreModification(State, "OO_Attack")
  CallFunction(State.Thread, callback)
end, StopBehavior = function(State)
  LibList.OldOne_Basis.AttackStop(State)
end }
OO_Sink = { [nil] = {}, Vessel_SinkFinished = function(State)
  callback = GetInnerValue(State, "OO_CallBack")
  RestoreModification(State, "OO_Sink")
  CallFunction(State.Thread, callback)
end, StopBehavior = function(State)
  LibList.OldOne_Basis.SinkStop(State)
end }
nil[nil] = { OldOne_Basis = {}, Goto = function(State, Path, Velocity, CallBack)
  ApplyModification(State, OO_Goto, "OO_Goto")
  StoreInnerValue(State, "OO_CallBack", CallBack)
  PhysicalCharacter_GotoStart(State.Node, Path, Velocity)
end, GotoFromTo = function(State, Path, StartPosition, EndPosition, Velocity, CallBack)
  ApplyModification(State, OO_Goto, "OO_Goto")
  StoreInnerValue(State, "OO_CallBack", CallBack)
  PhysicalCharacter_GotoStart(State.Node, Path, StartPosition, EndPosition, Velocity)
end, GotoStop = function(State)
  if not (IsNotLastModification(State, "OO_Goto")) then
    RestoreModification(State, "OO_Goto")
  end
end, Attack = function(State, Target, PatrolArea, CallBack)
  ApplyModification(State, OO_Attack, "OO_Attack")
  StoreInnerValue(State, "OO_CallBack", CallBack)
  PhysicalCharacter_Attack(State.Node, Target, PatrolArea)
end, AttackStop = function(State)
  if not (IsNotLastModification(State, "OO_Attack")) then
    RestoreModification(State, "OO_Attack")
  end
end, Sink = function(State, Position, Speed, CallBack)
  ApplyModification(State, OO_Sink, "OO_Sink")
  StoreInnerValue(State, "OO_CallBack", CallBack)
  Vessel_Sink(State.Node, Position, Speed)
end, SinkStop = function(State)
  if not (IsNotLastModification(State, "OO_Sink")) then
    RestoreModification(State, "OO_Sink")
  end
end }
