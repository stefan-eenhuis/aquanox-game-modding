-- dekompiliert aus dat\script\lib\synchronization.sco
-- Quelle laut Bytecode: =(none)
-- lua4dec.py, 2026-07-28

LSYNC_Semaphore = { [nil] = {}, MaxNumOfEntries = 0, ActualNumOfEntries = 0, InsertPosition = 0, RemovePosition = 0, CallBack = "", ListOfHolders = {}, ListOfWaiters = {} }
LSYNC_Barrier = { [nil] = {}, MaxNumOfEntries = 0, NumOfEntries = 0, ListOfThreads = {}, CallBack = "" }
LSYNC_Switch = { [nil] = {}, MaxNumOfEntries = 0, NumOfEntries = 0, ThreadInform = {}, CallBack = "" }
nil[nil] = { Synchronization_Basis = {}, CreateSemaphore = function(L0, L1)
  L2 = CloneTable(LSYNC_Semaphore)
  L2["MaxNumOfEntries"] = L0
  L2["CallBack"] = L1
  L2["ListOfHolders"] = {}
  L2["ListOfWaiters"] = {}
  return L2
end, LockSemaphore = function(L0, L1)
  if not (L1.ListOfHolders[L2]) then
    if L1.ListOfWaiters[L2] then
      Script_LogRaw("[SCRIPTERROR] [", Script_GetLineNumber(2) .. "] RequestSemaphore - Semaphore already requested")
      return
    end
    if not (L1.ActualNumOfEntries >= L1.MaxNumOfEntries) then
      L1["ActualNumOfEntries"] = L1.ActualNumOfEntries + 1
      L1.ListOfHolders[L2] = L2
      CallFunction(L2, L1.CallBack, nil)
    else
      L1.ListOfWaiters[L1.InsertPosition] = L2
      L1["InsertPosition"] = L1.InsertPosition + 1
    end
  end
end, FreeSemaphore = function(L0, L1)
  if not (L1.ListOfHolders[L2] == L2) then
    L4 = L1.RemovePosition
    if not (L4 > L1.InsertPosition) then
      if not (L1.ListOfWaiters[L4] == L2) then
        L4 = L4 + 1
        -- Schleifenende, zurueck nach 11
      end
    end
    if not (L4 <= L1.InsertPosition) then
      return
    end
    if not (L4 >= L1.InsertPosition) then
      L1.ListOfWaiters[L4] = L1.ListOfWaiters[L4 + 1]
      L4 = L4 + 1
      -- Schleifenende, zurueck nach 29
    end
    L1.ListOfWaiters[L1.InsertPosition] = nil
    L1["InsertPosition"] = L1.InsertPosition + -1
    return
  end
  L1.ListOfHolders[L2] = nil
  L1["ActualNumOfEntries"] = L1.ActualNumOfEntries + -1
  if not (L1.InsertPosition ~= L1.RemovePosition) then
    return
  end
  L3 = L1.ListOfWaiters[L1.RemovePosition]
  L1.ListOfWaiters[L1.RemovePosition] = nil
  L1["RemovePosition"] = L1.RemovePosition + 1
  L1.ListOfHolders[L3] = L3
  L1["ActualNumOfEntries"] = L1.ActualNumOfEntries + 1
  CallFunction(L3, L1.CallBack, nil)
end, CreateBarrier = function(L0, L1)
  L2 = CloneTable(LSYNC_Barrier)
  L2["MaxNumOfEntries"] = L0
  L2["CallBack"] = L1
  L2["ListOfThreads"] = {}
  return L2
end, LockBarrier = function(L0, L1)
  L2 = L0.Thread
  L1["NumOfEntries"] = L1.NumOfEntries + 1
  L1.ListOfThreads[L1.NumOfEntries] = L2
  if not (L1.NumOfEntries ~= L1.MaxNumOfEntries) then
    for L0 = 1, L1.NumOfEntries, 1 do
      nil()
    end
    L1["NumOfEntries"] = 0
  end
end, RemoveFromBarrier = function(L0, L1)
  L2 = L0.Thread
  L3 = 1
  if not (L3 > L1.NumOfEntries) then
    if not (L1.ListOfThreads[L3] == L2) then
      L3 = L3 + 1
      -- Schleifenende, zurueck nach 6
    end
  end
  if not (L3 <= L1.NumOfEntries) then
    return
  end
  if not (L3 >= L1.NumOfEntries) then
    L1.ListOfThreads[L3] = L1.ListOfThreads[L3 + 1]
    L3 = L3 + 1
    -- Schleifenende, zurueck nach 24
  end
  L1.ListOfThreads[L1.NumOfEntries] = nil
  L1["NumOfEntries"] = L1.NumOfEntries + -1
end, DecrementBarrier = function(L0, L1)
  L1["NumOfEntries"] = L1.NumOfEntries + -1
  if not (L1.NumOfEntries ~= L1.MaxNumOfEntries) then
    for L0 = 1, L1.NumOfEntries, 1 do
      nil()
    end
    L1["NumOfEntries"] = 0
  end
end, IncrementBarrier = function(L0, L1)
  L1["NumOfEntries"] = L1.NumOfEntries + 1
end, CreateSwitch = function(L0, L1, L2)
  L3 = CloneTable(LSYNC_Switch)
  L3["MaxNumOfEntries"] = L0
  L3["ThreadInform"] = L1
  L3["CallBack"] = L2
  return L3
end, TriggerSwitch = function(L0, L1)
  L1["NumOfEntries"] = L1.NumOfEntries + 1
  if not (L1.NumOfEntries ~= L1.MaxNumOfEntries) then
    CallFunction(L1.ThreadInform, L1.CallBack, nil)
  end
end, RestartSwitch = function(L0, L1)
  L1["NumOfEntries"] = 0
end }