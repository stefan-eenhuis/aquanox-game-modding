-- dekompiliert aus dat\script\lib\formation.sco
-- Quelle laut Bytecode: @Y:\AquaNox\dat\script\lib\formation.scr
-- lua4dec.py, 2026-07-28

LF_FormationFunctions = { [nil] = {}, Triangle = function(Position, DistToLeadObject, DistBetweenObjects)
  root = 0.70710678
  if not (mod(Position, 2) ~= 1) then
    index = (Position + -1) / 2
    xpos = -root * (DistToLeadObject + index * DistBetweenObjects)
    ypos = xpos
  else
    index = Position / 2 + -1
    xpos = root * (DistToLeadObject + index * DistBetweenObjects)
    ypos = -xpos
  end
  return MAT_Vector3(xpos, ypos, 0)
end, Line = function(Position, DistToLeadObject, DistBetweenObjects)
  ypos = DistToLeadObject + Position * DistBetweenObjects
  return MAT_Vector3(0, -ypos, 0)
end, Row = function(Position, DistToLeadObject, DistBetweenObjects)
  if not (mod(Position, 2) ~= 1) then
    index = (Position + -1) / 2
    xpos = -(DistToLeadObject + index * DistBetweenObjects)
  else
    index = Position / 2 + -1
    xpos = DistToLeadObject + index * DistBetweenObjects
  end
  return MAT_Vector3(xpos, 0, 0)
end, InverseTriangle = function(Position, DistToLeadObject, DistBetweenObjects)
  root = 0.70710678
  if not (mod(Position, 2) ~= 1) then
    index = (Position + -1) / 2
    xpos = -root * (DistToLeadObject + index * DistBetweenObjects)
    ypos = -xpos
  else
    index = Position / 2 + -1
    xpos = root * (DistToLeadObject + index * DistBetweenObjects)
    ypos = xpos
  end
  return MAT_Vector3(xpos, ypos, 0)
end, XForm = function(Position, DistToLeadObject, DistBetweenObjects)
  root = 0.70710678
  if not (mod(Position, 4) ~= 0) then
    index = Position / 4 + -1
    xpos = root * (DistToLeadObject + index * DistBetweenObjects)
    zpos = -xpos
  else
    if not (mod(Position, 4) ~= 1) then
      index = (Position + -1) / 4
      xpos = -root * (DistToLeadObject + index * DistBetweenObjects)
      zpos = -xpos
    else
      if not (mod(Position, 4) ~= 2) then
        index = (Position + -2) / 4
        xpos = root * (DistToLeadObject + index * DistBetweenObjects)
        zpos = xpos
      else
        if not (mod(Position, 4) ~= 3) then
          index = (Position + -3) / 4
          xpos = -root * (DistToLeadObject + index * DistBetweenObjects)
          zpos = xpos
        end
      end
    end
  end
  return MAT_Vector3(xpos, 0, zpos)
end, Claw = function(Position, DistToLeadObject, DistBetweenObjects)
  root = 0.577
  if not (mod(Position, 4) ~= 0) then
    index = Position / 4 + -1
    xpos = root * (DistToLeadObject + index * DistBetweenObjects)
    zpos = -xpos
    ypos = -xpos
  else
    if not (mod(Position, 4) ~= 1) then
      index = (Position + -1) / 4
      xpos = -root * (DistToLeadObject + index * DistBetweenObjects)
      zpos = -xpos
      ypos = xpos
    else
      if not (mod(Position, 4) ~= 2) then
        index = (Position + -2) / 4
        xpos = root * (DistToLeadObject + index * DistBetweenObjects)
        zpos = xpos
        ypos = -xpos
      else
        if not (mod(Position, 4) ~= 3) then
          index = (Position + -3) / 4
          xpos = -root * (DistToLeadObject + index * DistBetweenObjects)
          zpos = xpos
          ypos = xpos
        end
      end
    end
  end
  return MAT_Vector3(xpos, ypos, zpos)
end, Cross = function(Position, DistToLeadObject, DistBetweenObjects)
  if not (mod(Position, 6) ~= 0) then
    index = Position / 6 + -1
    xpos = DistToLeadObject + index * DistBetweenObjects
    ypos = 0
    zpos = 0
  else
    if not (mod(Position, 6) ~= 1) then
      index = (Position + -1) / 6
      xpos = -(DistToLeadObject + index * DistBetweenObjects)
      ypos = 0
      zpos = 0
    else
      if not (mod(Position, 6) ~= 2) then
        index = (Position + -2) / 6
        xpos = 0
        ypos = DistToLeadObject + index * DistBetweenObjects
        zpos = 0
      else
        if not (mod(Position, 6) ~= 3) then
          index = (Position + -3) / 6
          xpos = 0
          ypos = -(DistToLeadObject + index * DistBetweenObjects)
          zpos = 0
        else
          if not (mod(Position, 6) ~= 4) then
            index = (Position + -4) / 6
            xpos = 0
            ypos = 0
            zpos = DistToLeadObject + index * DistBetweenObjects
          else
            if not (mod(Position, 6) ~= 5) then
              index = (Position + -5) / 6
              xpos = 0
              ypos = 0
              zpos = -(DistToLeadObject + index * DistBetweenObjects)
            end
          end
        end
      end
    end
  end
  return MAT_Vector3(xpos, ypos, zpos)
end, Tunnel = function(Position, DistToLeadObject, DistBetweenObjects)
  if not (mod(Position, 4) ~= 0) then
    index = Position / 4 + -1
    xpos = DistToLeadObject / 2
    ypos = -(DistToLeadObject + index * DistBetweenObjects)
    zpos = 0
  else
    if not (mod(Position, 4) ~= 1) then
      index = (Position + -1) / 4
      xpos = -DistToLeadObject / 2
      ypos = -(DistToLeadObject + index * DistBetweenObjects)
      zpos = 0
    else
      if not (mod(Position, 4) ~= 2) then
        index = (Position + -2) / 4
        xpos = 0
        ypos = -(DistToLeadObject + (index + 1) * DistBetweenObjects)
        zpos = DistToLeadObject / 2
      else
        if not (mod(Position, 4) ~= 3) then
          index = (Position + -3) / 4
          xpos = 0
          ypos = -(DistToLeadObject + (index + 1) * DistBetweenObjects)
          zpos = -DistToLeadObject / 2
        end
      end
    end
  end
  return MAT_Vector3(xpos, ypos, zpos)
end }
LF_Formation = { [nil] = {}, FormationType = "", BreakCommand = "", LeaderLost = "", LeaderLostForLeader = "", Leader = nil, ListOfFormation = {}, DistanceToLeadObject = 0, DistanceBetweenObjects = 0, NumOfVesselsInFormation = 0 }
LF_Leader = { [nil] = {}, LF_Activate = function(State)
  GetInnerValue(State, "LF_Formation")["Leader"] = State.Thread
  State.Thread["Formation_ShieldGuardActive"] = 1
  StartShieldGuard(State)
end, Body_ObjectDestroyed = function(State)
  list = GetInnerValue(State, "LF_Formation").ListOfFormation
  formation = GetInnerValue(State, "LF_Formation")
  formation["Leader"] = nil
  formation["ListOfFormation"] = {}
  formation["NumOfVesselsInFormation"] = 0
  CallFunction(State.Thread, formation.LeaderLostForLeader, nil)
  for k, v in list do
    if not (j.State.Thread.Formation_ShieldGuardActive ~= 1) then
      j.State.Thread["Formation_ShieldGuardActive"] = 0
      ?()
    end
    j.State("LF_Follower")
    CallFunction(j, formation.LeaderLost, nil)
  end
end, LF_BreakFormation = function(State)
  list = GetInnerValue(State, "LF_Formation").ListOfFormation
  GetInnerValue(State, "LF_Formation")["Leader"] = nil
  GetInnerValue(State, "LF_Formation")["ListOfFormation"] = {}
  GetInnerValue(State, "LF_Formation")["NumOfVesselsInFormation"] = 0
  for k, v in list do
    if not (j.State.Thread.Formation_ShieldGuardActive ~= 1) then
      j.State.Thread["Formation_ShieldGuardActive"] = 0
      ?()
    end
    j.State("LF_Follower")
    CallFunction(j, GetInnerValue(State, "LF_Formation").BreakCommand, nil)
  end
end, StopBehavior = function(State)
  LibList.Formation_Basis.DeclareAsLeaderStop(State)
end }
LF_Follower = { [nil] = {}, LF_Activate = function(State)
  formation = GetInnerValue(State, "FIF_Formation")
  formation["NumOfVesselsInFormation"] = formation.NumOfVesselsInFormation + 1
  formation.ListOfFormation[formation.NumOfVesselsInFormation] = State.Thread
  State.Thread["Formation_ShieldGuardActive"] = 1
  StartShieldGuard(State)
  position = LF_FormationFunctions[formation.FormationType](formation.NumOfVesselsInFormation, formation.DistanceToLeadObject, formation.DistanceBetweenObjects)
  Vessel_Escort(State.Node, formation.Leader.Node, position, 20)
end, LF_LeaveFormation = function(State)
  formation = GetInnerValue(State, "FIF_Formation")
  ownPosition = -1
  for k, v in formation.ListOfFormation do
    if not (j ~= State.Thread) then
      ownPosition = i
    end
  end
  if not (ownPosition ~= -1) then
    return
  end
  formation["NumOfVesselsInFormation"] = formation.NumOfVesselsInFormation + -1
  for L12 = 1, formation.NumOfVesselsInFormation, ownPosition do
    formation.ListOfFormation[(table)] = formation.ListOfFormation[(table) + 1]
    position = formation.DistanceBetweenObjects()
    Vessel_Escort(formation.ListOfFormation[(table)].Node, formation.Leader.Node, position, 20)
  end
  formation.ListOfFormation[formation.NumOfVesselsInFormation + 1] = nil
end, Body_ObjectDestroyed = function(State)
  if not (State.Thread.Formation_ShieldGuardActive ~= 1) then
    CallFunction(State.Thread, "LF_LeaveFormation", nil)
  end
end, StopBehavior = function(State)
  LibList.Formation_Basis.FollowInFormationStop(State)
end }
LF_GotoInFormation = { [nil] = {}, LF_Activate = function(State)
  formation = GetInnerValue(State, "VGIF_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    Vessel_Goto(State.Node, GetInnerValue(State, "VGIF_Path"), GetInnerValue(State, "VGIF_Velocity"), GetInnerValue(State, "VGIF_Radius"))
    FormationLib.DeclareAsLeader(State, formation)
  end
end, Vessel_GotoArrived = function(State)
  FormationLib.DeclareAsLeaderStop(State)
  CallFunction(GetInnerValue(State, "VGIF_Group"), "LF_Stop", nil)
end, LF_Stop = function(State)
  callback = GetInnerValue(State, "VGIF_CallBack")
  param = GetInnerValue(State, "VGIF_Param")
  FormationLib.FollowInFormationStop(State)
  if not (IsNotLastModification(State, "LF_GotoInFormation")) then
    RestoreModification(State, "LF_GotoInFormation")
  end
  CallFunction(State.Thread, callback, param)
end, StopBehavior = function(State)
  LibList.Formation_Basis.VesselGotoInFormationStop(State)
end }
LF_GotoInFormationFromTo = { [nil] = {}, LF_Activate = function(State)
  formation = GetInnerValue(State, "VGIF_Formation")
  if FormationLib.HasLeader(formation) then
    FormationLib.FollowInFormation(State, formation)
  else
    Vessel_GotoFromTo(State.Node, GetInnerValue(State, "VGIF_Path"), GetInnerValue(State, "VGIF_Start"), GetInnerValue(State, "VGIF_End"), GetInnerValue(State, "VGIF_Velocity"), GetInnerValue(State, "VGIF_Radius"))
    FormationLib.DeclareAsLeader(State, formation)
  end
end, Vessel_GotoArrived = function(State)
  callback = GetInnerValue(State, "VGIF_CallBack")
  thread = GetInnerValue(State, "VGIF_CameraThread")
  FormationLib.DeclareAsLeaderStop(State)
  CallFunction(GetInnerValue(State, "VGIF_Group"), "LF_Stop", nil)
  CallFunction(thread, callback)
end, LF_Stop = function(State)
  FormationLib.FollowInFormationStop(State)
  if not (IsNotLastModification(State, "LF_GotoInFormationFromTo")) then
    RestoreModification(State, "LF_GotoInFormationFromTo")
  end
end, StopBehavior = function(State)
  LibList.Formation_Basis.VesselGotoInFormationFromToStop(State)
end }
nil[nil] = { Formation_Basis = {}, CreateFormation = function(FormationType, BreakCommand, LeaderLost, LeaderLostForLeader, DistanceToLeadObject, DistanceBetweenObjects)
  result = CloneTable(LF_Formation)
  result["FormationType"] = FormationType
  result["ListOfFormation"] = {}
  result["BreakCommand"] = BreakCommand
  result["DistanceToLeadObject"] = DistanceToLeadObject
  result["DistanceBetweenObjects"] = DistanceBetweenObjects
  result["LeaderLost"] = LeaderLost
  result["LeaderLostForLeader"] = LeaderLostForLeader
  return result
end, DeclareAsLeader = function(State, Formation)
  State.Thread["Formation_ShieldGuardActive"] = 0
  ApplyModification(State, LF_Leader, "LF_Leader")
  StoreInnerValue(State, "LF_Formation", Formation)
  CallFunction(State.Thread, "LF_Activate", nil)
end, DeclareAsLeaderPlayer = function(State, Formation)
  Formation["Leader"] = State.Thread
end, DeclareAsLeaderStop = function(State)
  if IsNotLastModification(State, "LF_Leader") then
    return
  end
  CallFunction(State.Thread, "LF_BreakFormation", nil)
  if not (State.Thread.Formation_ShieldGuardActive ~= 1) then
    State.Thread["Formation_ShieldGuardActive"] = 0
    StopShieldGuard(State)
  end
  RestoreModification(State, "LF_Leader")
end, PlaceFormation = function(Group, Formation, NodeRef, Heading)
  transpos = Position_GetPosition(Node_Find(NodeRef))
  Body_SetPosition(Group[1].Node, transpos)
  if not (Heading ~= "left") then
    Body_SetOrientation(Group[1].Node, MAT_Vector3(90, 0, 0))
  else
    if not (Heading ~= "up") then
      Body_SetOrientation(Group[1].Node, MAT_Vector3(0, 0, 0))
    else
      if not (Heading ~= "right") then
        Body_SetOrientation(Group[1].Node, MAT_Vector3(-90, 0, 0))
      else
        if not (Heading ~= "down") then
          Body_SetOrientation(Group[1].Node, MAT_Vector3(180, 0, 0))
        end
      end
    end
  end
  for L12 = 1, Group.NumOfThreads, 2 do
    position = Formation.DistanceBetweenObjects()
    finalpos = position
    if not (Heading ~= "left") then
      xpos = -position.Y
      ypos = position.X
      Body_SetOrientation(Group[i].Node, MAT_Vector3(90, 0, 0))
    else
      if not (Heading ~= "up") then
        xpos = position.X
        ypos = position.Y
        Body_SetOrientation(Group[i].Node, MAT_Vector3(0, 0, 0))
      else
        if not (Heading ~= "right") then
          xpos = position.Y
          ypos = -1 * position.X
          Body_SetOrientation(Group[i].Node, MAT_Vector3(-90, 0, 0))
        else
          if not (Heading ~= "down") then
            xpos = position.X
            ypos = -position.Y
            Body_SetOrientation(Group[i].Node, MAT_Vector3(180, 0, 0))
          end
        end
      end
    end
    Body_SetPosition(Group[i].Node, MAT_Vector3(xpos + transpos.X, ypos + transpos.Y, transpos.Z))
  end
end, PlaceFormationPath = function(Group, Formation, SimPath)
  node = Node_Find(Group[1].Node, SimPath)
  StopAllActiveBehaviours(Group[1].State)
  orientation = nil
  position = Path_GetPositionOrientation(node, MAT_Vector3(0, 0, 0))
  Vessel_Stop(Group[1].Node, 1)
  Body_Freeze(Group[1].Node)
  Body_SetCS(Group[1].Node, position, orientation)
  for L11 = 1, Group.NumOfThreads, 2 do
    ?()
    Group[i].Node(1)
    Body_Freeze(Group[i].Node)
    offset = LF_FormationFunctions[Formation.FormationType](i + -1, Formation.DistanceToLeadObject, Formation.DistanceBetweenObjects)
    orientation = nil
    position = Path_GetPositionOrientation(node, offset)
    Body_SetCS(Group[i].Node, position, orientation)
  end
end, FollowInFormation = function(State, Formation)
  State.Thread["Formation_ShieldGuardActive"] = 0
  ApplyModification(State, LF_Follower, "LF_Follower")
  StoreInnerValue(State, "FIF_Formation", Formation)
  CallFunction(State.Thread, "LF_Activate", nil)
end, FollowInFormationStop = function(State)
  if IsNotLastModification(State, "LF_Follower") then
    return
  end
  CallFunction(State.Thread, "LF_LeaveFormation", nil)
  if not (State.Thread.Formation_ShieldGuardActive ~= 1) then
    State.Thread["Formation_ShieldGuardActive"] = 0
    StopShieldGuard(State)
  end
  RestoreModification(State, "LF_Follower")
end, HasLeader = function(Formation)
  if not (Formation.Leader) then
  end
  return nil, 1
end, VesselGotoInFormation = function(State, Group, Formation, Path, Velocity, Radius, CallBack, Param)
  ApplyModification(State, LF_GotoInFormation, "LF_GotoInFormation")
  StoreInnerValue(State, "VGIF_Formation", Formation)
  StoreInnerValue(State, "VGIF_Path", Path)
  StoreInnerValue(State, "VGIF_Velocity", Velocity)
  StoreInnerValue(State, "VGIF_Radius", Radius)
  StoreInnerValue(State, "VGIF_CallBack", CallBack)
  StoreInnerValue(State, "VGIF_Param", Param)
  StoreInnerValue(State, "VGIF_Group", Group)
  CallFunction(State.Thread, "LF_Activate", nil)
end, VesselGotoInFormationFromTo = function(State, Group, Formation, Path, Start, End, Velocity, Radius, CallBack)
  for L14 = 1, Group.NumOfThreads, 1 do
    state = Group[i].State
    ?()
    state(LF_GotoInFormationFromTo, "LF_GotoInFormationFromTo")
    StoreInnerValue(state, "VGIF_CameraThread", State.Thread)
    StoreInnerValue(state, "VGIF_Formation", Formation)
    StoreInnerValue(state, "VGIF_Path", Path)
    StoreInnerValue(state, "VGIF_Start", Start)
    StoreInnerValue(state, "VGIF_End", End)
    StoreInnerValue(state, "VGIF_Velocity", Velocity)
    StoreInnerValue(state, "VGIF_Radius", Radius)
    StoreInnerValue(state, "VGIF_CallBack", CallBack)
    StoreInnerValue(state, "VGIF_Group", Group)
    CallFunction(state.Thread, "LF_Activate", nil)
  end
end, VesselGotoInFormationFromToStop = function(State)
  FormationLib.DeclareAsLeaderStop(State)
  FormationLib.FollowInFormationStop(State)
  if IsNotLastModification(State, "LF_GotoInFormationFromTo") then
    return
  end
  RestoreModification(State, "LF_GotoInFormationFromTo")
end, VesselGotoInFormationStop = function(State)
  FormationLib.DeclareAsLeaderStop(State)
  FormationLib.FollowInFormationStop(State)
  if IsNotLastModification(State, "LF_GotoInFormation") then
    return
  end
  RestoreModification(State, "LF_GotoInFormation")
end }