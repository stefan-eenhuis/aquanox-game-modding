-- dekompiliert aus formation.sco
-- Quelle laut Bytecode: =(none)

LF_FormationFunctions = { [nil] = {}, TriangleUpper = function(L0, L1, L2)
  L6 = 0.5773
  if not (mod(L0, 2) ~= 1) then
    L3 = (L0 + -1) / 2
    L4 = -L6 * (L1 + L3 * L2)
    L5 = L4
  else
    L3 = L0 / 2 + -1
    L4 = L6 * (L1 + L3 * L2)
    L5 = -L4
  end
  L7 = -L5
  return MAT_Vector3(L4, L5, L7)
end, Triangle = function(L0, L1, L2)
  L6 = 0.70710678
  if not (mod(L0, 2) ~= 1) then
    L3 = (L0 + -1) / 2
    L4 = -L6 * (L1 + L3 * L2)
    L5 = L4
  else
    L3 = L0 / 2 + -1
    L4 = L6 * (L1 + L3 * L2)
    L5 = -L4
  end
  return MAT_Vector3(L4, L5, 0)
end, Line = function(L0, L1, L2)
  L3 = L1 + L0 * L2
  return MAT_Vector3(0, -L3, 0)
end, Row = function(L0, L1, L2)
  if not (mod(L0, 2) ~= 1) then
    L4 = (L0 + -1) / 2
    L3 = -(L1 + L4 * L2)
  else
    L4 = L0 / 2 + -1
    L3 = L1 + L4 * L2
  end
  return MAT_Vector3(L3, 0, 0)
end, InverseTriangle = function(L0, L1, L2)
  L6 = 0.70710678
  if not (mod(L0, 2) ~= 1) then
    L3 = (L0 + -1) / 2
    L4 = -L6 * (L1 + L3 * L2)
    L5 = -L4
  else
    L3 = L0 / 2 + -1
    L4 = L6 * (L1 + L3 * L2)
    L5 = L4
  end
  return MAT_Vector3(L4, L5, 0)
end, XForm = function(L0, L1, L2)
  L6 = 0.70710678
  if not (mod(L0, 4) ~= 0) then
    L3 = L0 / 4 + -1
    L4 = L6 * (L1 + L3 * L2)
    L5 = -L4
  else
    if not (mod(L0, 4) ~= 1) then
      L3 = (L0 + -1) / 4
      L4 = -L6 * (L1 + L3 * L2)
      L5 = -L4
    else
      if not (mod(L0, 4) ~= 2) then
        L3 = (L0 + -2) / 4
        L4 = L6 * (L1 + L3 * L2)
        L5 = L4
      else
        if not (mod(L0, 4) ~= 3) then
          L3 = (L0 + -3) / 4
          L4 = -L6 * (L1 + L3 * L2)
          L5 = L4
        end
      end
    end
  end
  return MAT_Vector3(L4, 0, L5)
end, Claw = function(L0, L1, L2)
  L7 = 0.577
  if not (mod(L0, 4) ~= 0) then
    L3 = L0 / 4 + -1
    L4 = L7 * (L1 + L3 * L2)
    L5 = -L4
    L6 = -L4
  else
    if not (mod(L0, 4) ~= 1) then
      L3 = (L0 + -1) / 4
      L4 = -L7 * (L1 + L3 * L2)
      L5 = -L4
      L6 = L4
    else
      if not (mod(L0, 4) ~= 2) then
        L3 = (L0 + -2) / 4
        L4 = L7 * (L1 + L3 * L2)
        L5 = L4
        L6 = -L4
      else
        if not (mod(L0, 4) ~= 3) then
          L3 = (L0 + -3) / 4
          L4 = -L7 * (L1 + L3 * L2)
          L5 = L4
          L6 = L4
        end
      end
    end
  end
  return MAT_Vector3(L4, L6, L5)
end, Cross = function(L0, L1, L2)
  if not (mod(L0, 6) ~= 0) then
    L3 = L0 / 6 + -1
    L4 = L1 + L3 * L2
    L6 = 0
    L5 = 0
  else
    if not (mod(L0, 6) ~= 1) then
      L3 = (L0 + -1) / 6
      L4 = -(L1 + L3 * L2)
      L6 = 0
      L5 = 0
    else
      if not (mod(L0, 6) ~= 2) then
        L3 = (L0 + -2) / 6
        L4 = 0
        L6 = L1 + L3 * L2
        L5 = 0
      else
        if not (mod(L0, 6) ~= 3) then
          L3 = (L0 + -3) / 6
          L4 = 0
          L6 = -(L1 + L3 * L2)
          L5 = 0
        else
          if not (mod(L0, 6) ~= 4) then
            L3 = (L0 + -4) / 6
            L4 = 0
            L6 = 0
            L5 = L1 + L3 * L2
          else
            if not (mod(L0, 6) ~= 5) then
              L3 = (L0 + -5) / 6
              L4 = 0
              L6 = 0
              L5 = -(L1 + L3 * L2)
            end
          end
        end
      end
    end
  end
  return MAT_Vector3(L4, L6, L5)
end, Tunnel = function(L0, L1, L2)
  if not (mod(L0, 4) ~= 0) then
    L3 = L0 / 4 + -1
    L4 = L1 / 2
    L6 = -(L1 + L3 * L2)
    L5 = 0
  else
    if not (mod(L0, 4) ~= 1) then
      L3 = (L0 + -1) / 4
      L4 = -L1 / 2
      L6 = -(L1 + L3 * L2)
      L5 = 0
    else
      if not (mod(L0, 4) ~= 2) then
        L3 = (L0 + -2) / 4
        L4 = 0
        L6 = -(L1 + (L3 + 1) * L2)
        L5 = L1 / 2
      else
        if not (mod(L0, 4) ~= 3) then
          L3 = (L0 + -3) / 4
          L4 = 0
          L6 = -(L1 + (L3 + 1) * L2)
          L5 = -L1 / 2
        end
      end
    end
  end
  return MAT_Vector3(L4, L6, L5)
end }
LF_Formation = { [nil] = {}, FormationType = "", BreakCommand = "", LeaderLost = "", LeaderLostForLeader = "", Leader = nil, ListOfFormation = {}, DistanceToLeadObject = 0, DistanceBetweenObjects = 0, NumOfVesselsInFormation = 0, NumberOfPositionsAssigned = 0, PlaceAssociation = {} }
LF_Leader = { [nil] = {}, LF_Activate = function(L0)
  GetInnerValue(L0, "LF_Formation")["Leader"] = L0.Thread
  L0.Thread["Formation_ShieldGuardActive"] = 1
  StartShieldGuard(L0)
end, Body_ObjectDestroyed = function(L0)
  L1 = GetInnerValue(L0, "LF_Formation").ListOfFormation
  L4 = GetInnerValue(L0, "LF_Formation")
  L4["Leader"] = nil
  L4["ListOfFormation"] = {}
  L4["NumOfVesselsInFormation"] = 0
  L4["PlaceAssociation"] = {}
  L4["NumberOfPositionsAssigned"] = 0
  CallFunction(L0.Thread, L4.LeaderLostForLeader, nil)
  for k, v in L1 do
    if not (L7.State.Thread.Formation_ShieldGuardActive ~= 1) then
      L7.State.Thread["Formation_ShieldGuardActive"] = 0
      ?()
    end
    L7.State("LF_Follower")
    CallFunction(L7, L4.LeaderLost, nil)
  end
end, LF_BreakFormation = function(L0)
  L1 = GetInnerValue(L0, "LF_Formation").ListOfFormation
  GetInnerValue(L0, "LF_Formation")["Leader"] = nil
  GetInnerValue(L0, "LF_Formation")["ListOfFormation"] = {}
  GetInnerValue(L0, "LF_Formation")["NumOfVesselsInFormation"] = 0
  for k, v in L1 do
    if not (L6.State.Thread.Formation_ShieldGuardActive ~= 1) then
      L6.State.Thread["Formation_ShieldGuardActive"] = 0
      ?()
    end
    L6.State("LF_Follower")
    CallFunction(L6, GetInnerValue(L0, "LF_Formation").BreakCommand, nil)
  end
end, StopBehavior = function(L0)
  LibList.Formation_Basis.DeclareAsLeaderStop(L0)
end }
LF_Follower = { [nil] = {}, LF_Activate = function(L0)
  L1 = GetInnerValue(L0, "FIF_Formation")
  L1["NumOfVesselsInFormation"] = L1.NumOfVesselsInFormation + 1
  L1.ListOfFormation[L1.NumOfVesselsInFormation] = L0.Thread
  if L1.PlaceAssociation[L0.Thread] then
    L3 = L1.PlaceAssociation[L0.Thread]
  else
    L3 = L1.NumberOfPositionsAssigned
    L1["NumberOfPositionsAssigned"] = L1.NumberOfPositionsAssigned + 1
    L1.PlaceAssociation[L0.Thread] = L3
  end
  L0.Thread["Formation_ShieldGuardActive"] = 1
  StartShieldGuard(L0)
  L2 = LF_FormationFunctions[L1.FormationType](L3 + 1, L1.DistanceToLeadObject, L1.DistanceBetweenObjects)
  Vessel_Escort(L0.Node, L1.Leader.Node, L2, 20)
end, LF_LeaveFormation = function(L0)
  L4 = GetInnerValue(L0, "FIF_Formation")
  L1 = -1
  for k, v in L4.ListOfFormation do
    if not (L8 ~= L0.Thread) then
      L1 = L7
    end
  end
  if not (L1 ~= -1) then
    return
  end
  L4["NumOfVesselsInFormation"] = L4.NumOfVesselsInFormation + -1
  for L0 = 1, L4.NumOfVesselsInFormation, L1 do
    L4.ListOfFormation[L6] = L4.ListOfFormation[L6 + 1]
  end
  L4.ListOfFormation[L4.NumOfVesselsInFormation + 1] = nil
end, Body_ObjectDestroyed = function(L0)
  if not (L0.Thread.Formation_ShieldGuardActive ~= 1) then
    CallFunction(L0.Thread, "LF_LeaveFormation", nil)
  end
end, StopBehavior = function(L0)
  LibList.Formation_Basis.FollowInFormationStop(L0)
end }
LF_GotoInFormation = { [nil] = {}, LF_Activate = function(L0)
  L1 = GetInnerValue(L0, "VGIF_Formation")
  if FormationLib.HasLeader(L1) then
    FormationLib.FollowInFormation(L0, L1)
  else
    Vessel_Goto(L0.Node, GetInnerValue(L0, "VGIF_Path"), GetInnerValue(L0, "VGIF_Velocity"), GetInnerValue(L0, "VGIF_Radius"))
    FormationLib.DeclareAsLeader(L0, L1)
  end
end, Vessel_GotoArrived = function(L0)
  FormationLib.DeclareAsLeaderStop(L0)
  CallFunction(GetInnerValue(L0, "VGIF_Group"), "LF_Stop", nil)
end, LF_Stop = function(L0)
  L1 = GetInnerValue(L0, "VGIF_CallBack")
  L2 = GetInnerValue(L0, "VGIF_Param")
  FormationLib.FollowInFormationStop(L0)
  if not (IsNotLastModification(L0, "LF_GotoInFormation")) then
    RestoreModification(L0, "LF_GotoInFormation")
  end
  CallFunction(L0.Thread, L1, L2)
end, StopBehavior = function(L0)
  LibList.Formation_Basis.VesselGotoInFormationStop(L0)
end }
LF_GotoInFormationFromTo = { [nil] = {}, LF_Activate = function(L0)
  L1 = GetInnerValue(L0, "VGIF_Formation")
  if FormationLib.HasLeader(L1) then
    FormationLib.FollowInFormation(L0, L1)
  else
    Vessel_GotoFromTo(L0.Node, GetInnerValue(L0, "VGIF_Path"), GetInnerValue(L0, "VGIF_Start"), GetInnerValue(L0, "VGIF_End"), GetInnerValue(L0, "VGIF_Velocity"), GetInnerValue(L0, "VGIF_Radius"))
    FormationLib.DeclareAsLeader(L0, L1)
  end
end, Vessel_GotoArrived = function(L0)
  L1 = GetInnerValue(L0, "VGIF_CallBack")
  L2 = GetInnerValue(L0, "VGIF_CameraThread")
  FormationLib.DeclareAsLeaderStop(L0)
  CallFunction(GetInnerValue(L0, "VGIF_Group"), "LF_Stop", nil)
  CallFunction(L2, L1)
end, LF_Stop = function(L0)
  FormationLib.FollowInFormationStop(L0)
  if not (IsNotLastModification(L0, "LF_GotoInFormationFromTo")) then
    RestoreModification(L0, "LF_GotoInFormationFromTo")
  end
end, StopBehavior = function(L0)
  LibList.Formation_Basis.VesselGotoInFormationFromToStop(L0)
end }
nil[nil] = { Formation_Basis = {}, CreateFormation = function(L0, L1, L2, L3, L4, L5)
  L6 = CloneTable(LF_Formation)
  L6["FormationType"] = L0
  L6["ListOfFormation"] = {}
  L6["PlaceAssociation"] = {}
  L6["BreakCommand"] = L1
  L6["DistanceToLeadObject"] = L4
  L6["DistanceBetweenObjects"] = L5
  L6["LeaderLost"] = L2
  L6["LeaderLostForLeader"] = L3
  return L6
end, DeclareAsLeader = function(L0, L1)
  L0.Thread["Formation_ShieldGuardActive"] = 0
  ApplyModification(L0, LF_Leader, "LF_Leader")
  StoreInnerValue(L0, "LF_Formation", L1)
  CallFunction(L0.Thread, "LF_Activate", nil)
end, DeclareAsLeaderPlayer = function(L0, L1)
  L1["Leader"] = L0.Thread
end, DeclareAsLeaderStop = function(L0)
  if IsNotLastModification(L0, "LF_Leader") then
    return
  end
  CallFunction(L0.Thread, "LF_BreakFormation", nil)
  if not (L0.Thread.Formation_ShieldGuardActive ~= 1) then
    L0.Thread["Formation_ShieldGuardActive"] = 0
    StopShieldGuard(L0)
  end
  RestoreModification(L0, "LF_Leader")
end, PlaceFormation = function(L0, L1, L2, L3)
  L8 = Position_GetPosition(Node_Find(L2))
  Body_SetPosition(L0[1].Node, L8)
  if not (L3 ~= "left") then
    Body_SetOrientation(L0[1].Node, MAT_Vector3(90, 0, 0))
  else
    if not (L3 ~= "up") then
      Body_SetOrientation(L0[1].Node, MAT_Vector3(0, 0, 0))
    else
      if not (L3 ~= "right") then
        Body_SetOrientation(L0[1].Node, MAT_Vector3(-90, 0, 0))
      else
        if not (L3 ~= "down") then
          Body_SetOrientation(L0[1].Node, MAT_Vector3(180, 0, 0))
        end
      end
    end
  end
  for L0 = 1, L0.NumOfThreads, 2 do
    L5 = L1.DistanceBetweenObjects()
    finalpos = L5
    if not (L3 ~= "left") then
      L6 = -L5.Y
      L7 = L5.X
      Body_SetOrientation(L0[L9].Node, MAT_Vector3(90, 0, 0))
    else
      if not (L3 ~= "up") then
        L6 = L5.X
        L7 = L5.Y
        Body_SetOrientation(L0[L9].Node, MAT_Vector3(0, 0, 0))
      else
        if not (L3 ~= "right") then
          L6 = L5.Y
          L7 = -1 * L5.X
          Body_SetOrientation(L0[L9].Node, MAT_Vector3(-90, 0, 0))
        else
          if not (L3 ~= "down") then
            L6 = L5.X
            L7 = -L5.Y
            Body_SetOrientation(L0[L9].Node, MAT_Vector3(180, 0, 0))
          end
        end
      end
    end
    Body_SetPosition(L0[L9].Node, MAT_Vector3(L6 + L8.X, L7 + L8.Y, L8.Z))
  end
end, PlaceFormationPath = function(L0, L1, L2)
  L3 = Node_Find(L0[1].Node, L2)
  StopAllActiveBehaviours(L0[1].State)
  L5 = nil
  L4 = Path_GetPositionOrientation(L3, MAT_Vector3(0, 0, 0))
  Vessel_Stop(L0[1].Node, 1)
  Body_Freeze(L0[1].Node)
  Body_SetCS(L0[1].Node, L4, L5)
  for L0 = 1, L0.NumOfThreads, 2 do
    ?()
    L0[L8].Node(1)
    Body_Freeze(L0[L8].Node)
    L6 = LF_FormationFunctions[L1.FormationType](L8 + -1, L1.DistanceToLeadObject, L1.DistanceBetweenObjects)
    L5 = nil
    L4 = Path_GetPositionOrientation(L3, L6)
    Body_SetCS(L0[L8].Node, L4, L5)
  end
end, FollowInFormation = function(L0, L1)
  L0.Thread["Formation_ShieldGuardActive"] = 0
  ApplyModification(L0, LF_Follower, "LF_Follower")
  StoreInnerValue(L0, "FIF_Formation", L1)
  CallFunction(L0.Thread, "LF_Activate", nil)
end, FollowInFormationStop = function(L0)
  if IsNotLastModification(L0, "LF_Follower") then
    return
  end
  CallFunction(L0.Thread, "LF_LeaveFormation", nil)
  if not (L0.Thread.Formation_ShieldGuardActive ~= 1) then
    L0.Thread["Formation_ShieldGuardActive"] = 0
    StopShieldGuard(L0)
  end
  RestoreModification(L0, "LF_Follower")
end, HasLeader = function(L0)
  if not (L0.Leader) then
  end
  return nil, 1
end, VesselGotoInFormation = function(L0, L1, L2, L3, L4, L5, L6, L7)
  ApplyModification(L0, LF_GotoInFormation, "LF_GotoInFormation")
  StoreInnerValue(L0, "VGIF_Formation", L2)
  StoreInnerValue(L0, "VGIF_Path", L3)
  StoreInnerValue(L0, "VGIF_Velocity", L4)
  StoreInnerValue(L0, "VGIF_Radius", L5)
  StoreInnerValue(L0, "VGIF_CallBack", L6)
  StoreInnerValue(L0, "VGIF_Param", L7)
  StoreInnerValue(L0, "VGIF_Group", L1)
  CallFunction(L0.Thread, "LF_Activate", nil)
end, VesselGotoInFormationFromTo = function(L0, L1, L2, L3, L4, L5, L6, L7, L8)
  for L0 = 1, L1.NumOfThreads, 1 do
    L9 = L1[L11].State
    ?()
    L9(LF_GotoInFormationFromTo, "LF_GotoInFormationFromTo")
    StoreInnerValue(L9, "VGIF_CameraThread", L0.Thread)
    StoreInnerValue(L9, "VGIF_Formation", L2)
    StoreInnerValue(L9, "VGIF_Path", L3)
    StoreInnerValue(L9, "VGIF_Start", L4)
    StoreInnerValue(L9, "VGIF_End", L5)
    StoreInnerValue(L9, "VGIF_Velocity", L6)
    StoreInnerValue(L9, "VGIF_Radius", L7)
    StoreInnerValue(L9, "VGIF_CallBack", L8)
    StoreInnerValue(L9, "VGIF_Group", L1)
    CallFunction(L9.Thread, "LF_Activate", nil)
  end
end, VesselGotoInFormationFromToStop = function(L0)
  FormationLib.DeclareAsLeaderStop(L0)
  FormationLib.FollowInFormationStop(L0)
  if IsNotLastModification(L0, "LF_GotoInFormationFromTo") then
    return
  end
  RestoreModification(L0, "LF_GotoInFormationFromTo")
end, VesselGotoInFormationStop = function(L0)
  FormationLib.DeclareAsLeaderStop(L0)
  FormationLib.FollowInFormationStop(L0)
  if IsNotLastModification(L0, "LF_GotoInFormation") then
    return
  end
  RestoreModification(L0, "LF_GotoInFormation")
end }
