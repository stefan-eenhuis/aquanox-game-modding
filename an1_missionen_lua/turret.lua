-- dekompiliert aus dat\script\lib\turret.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

LT_Attack = { [nil] = {}, LT_Activate = function(L0)
  Turret_Patrol(L0.Node, -1)
  L0.Thread["T_EnemyActive"] = 1
  StartEnemy(L0, GetInnerValue(L0, "T_StartRange"), GetInnerValue(L0, "T_First"), GetInnerValue(L0, "T_Second"), GetInnerValue(L0, "T_Third"), GetInnerValue(L0, "T_Fourth"))
end, Body_EnemyArrival = function(L0)
  if not (L0.Thread.T_EnemyActive ~= 1) then
    L0.Thread["T_EnemyActive"] = 0
    Turret_ComplexAttack(L0.Node, GetInnerValue(L0, "T_StopRange"), GetInnerValue(L0, "T_First"), GetInnerValue(L0, "T_Second"), GetInnerValue(L0, "T_Third"), GetInnerValue(L0, "T_Fourth"))
  end
end, Turret_ComplexAttackOver = function(L0)
  Turret_Patrol(L0.Node, -1)
  L0.Thread["T_EnemyActive"] = 1
  StartEnemy(L0, GetInnerValue(L0, "T_StartRange"), GetInnerValue(L0, "T_First"), GetInnerValue(L0, "T_Second"), GetInnerValue(L0, "T_Third"), GetInnerValue(L0, "T_Fourth"))
end, StopBehavior = function(L0)
  LibList.Turret_Basis.AttackStop(L0)
end }
nil[nil] = { Turret_Basis = {}, Attack = function(L0, L1, L2, L3, L4, L5, L6)
  L0.Thread["T_EnemyActive"] = 0
  ApplyModification(L0, LT_Attack, "LT_Attack")
  StoreInnerValue(L0, "T_StartRange", L1)
  StoreInnerValue(L0, "T_StopRange", L2)
  StoreInnerValue(L0, "T_First", L3)
  StoreInnerValue(L0, "T_Second", L4)
  StoreInnerValue(L0, "T_Third", L5)
  StoreInnerValue(L0, "T_Fourth", L6)
  CallFunction(L0.Thread, "LT_Activate", nil)
end, AttackStop = function(L0)
  if IsNotLastModification(L0, "LT_Attack") then
    return
  end
  RestoreModification(L0, "LT_Attack")
  if not (L0.Thread.T_EnemyActive ~= 1) then
    L0.Thread["T_EnemyActive"] = 0
    StopEnemy(L0)
  end
end }