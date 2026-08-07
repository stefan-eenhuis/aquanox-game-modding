-- dekompiliert aus camera.sco
-- Quelle laut Bytecode: =(none)

LC_Move = { [nil] = {}, Camera_MovePosReached = function(L0, L1, L2)
  L3 = GetInnerValue(L0, "LC_CallBack")
  if not (L2 ~= "") then
    RestoreModification(L0, "LC_Move")
    CallFunction(L0.Thread, L3)
  end
end, StopBehavior = function(L0)
  LibList.Camera_Basis.CameraMoveStop(L0)
end }
LC_General = { [nil] = {}, Timer = function(L0)
  L1 = GetInnerValue(L0, "LC_CallBack")
  RestoreModification(L0, "LC_General")
  CallFunction(L0.Thread, L1)
end, StopBehavior = function(L0)
  LibList.Camera_Basis.WaitStop(L0)
end }
nil[nil] = { Camera_Basis = {}, CameraMove = function(L0, L1, L2, L3, L4, L5, L6)
  ApplyModification(L0, LC_Move, "LC_Move")
  Camera_Move(L0.Node, Node_Find(L1), L2, L3, L4, L5, 0)
  StoreInnerValue(L0, "LC_CallBack", L6)
end, CamereMoveWithLook = function(L0, L1, L2, L3, L4, L5, L6, L7)
  ApplyModification(L0, LC_Move, "LC_Move")
  Camera_Move(L0.Node, Node_Find(L2), L3, L4, L5, L6, 0)
  Camera_MoveLookAt(L0.Node, Node_Find(L1))
  StoreInnerValue(L0, "LC_CallBack", L7)
end, CameraMoveStop = function(L0)
  if IsNotLastModification(L0, "LC_Move") then
    return
  end
  RestoreModification(L0, "LC_Move")
end, Wait = function(L0, L1, L2)
  ApplyModification(L0, LC_General, "LC_General")
  StoreInnerValue(L0, "LC_CallBack", L2)
  SetTimer(L0.Thread, L1)
end, WaitStop = function(L0)
  if IsNotLastModification(L0, "LC_General") then
    return
  end
  RestoreModification(L0, "LC_General")
end }
