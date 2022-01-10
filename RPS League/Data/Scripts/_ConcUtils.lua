local API = {}


function API.ResetSorageKey(netref)
  EnqueueWrite(netref, function(data) return {} end)
end


function DoesArrayContainValue(array, val)
  for k,v in pairs(array) do
    if v == val then return true end
  end
  return false
end


-- Quick utility function for recursively
-- printing out a table with subtables.
function API.DisplayTable(t, indent)
  if t == nil then 
    print("[NIL]")
    return
  end
  if indent == nil then indent = 0 end
  if indent == 0 then print("-------------") end
  for k,v in pairs(t) do
    if type(v) == "table" then
      print(string.rep(" ", indent) .. k .. " : (table)")
      API.DisplayTable(v, indent + 2)
    else
      print(string.rep(" ", indent) .. k .. " : " .. tostring(v))
    end
  end
end



local writeTaskData = {}
--[[
  fqueue = {}
  task = {}
  taskStart = -1
]]


function API.WriteCCData(netref, func)
  EnqueueWrite(netref, func, false)
end

function API.WriteCCDataYield(netref, func)
  EnqueueWrite(netref, func, true)
end


function EnqueueWrite(netref, func, shouldYield)
  --print("Enqueue:  Netref = ", netref)
  --print(CoreDebug.GetStackTrace())
  if writeTaskData[netref] == nil then
    writeTaskData[netref] = {
      fqueue = {},
      task = nil,
    }
  end

  local taskData = writeTaskData[netref]
  table.insert(taskData.fqueue, func)
  if taskData.task == nil then 
    taskData.task = Task.Spawn(function() WriteTask(netref) end)
  end

  while shouldYield and writeTaskData[netref] ~= nil do
    Task.Wait()
  end
end

function WriteTask(netref)
  while true do
    while Storage.HasPendingSetConcurrentCreatorData(netref) do
      Task.Wait()
    end

    local d, code, err = Storage.SetConcurrentCreatorData(netref, function(data)
      for k,f in ipairs(writeTaskData[netref].fqueue) do
        data = f(data)
      end
      print(":write complete:")
      return data
    end)

    if code == StorageResultCode.SUCCESS then 
      print("successfully completed queue!")
      writeTaskData[netref] = nil
      Events.Broadcast("CU_Write", netref)
      return
    else
      warn("Could not write data queue: " .. tostring(code) .. " " .. err)
    end
  end
end

--[[
testTable = { 
  field1 = 10,
  field2 = "yo",
  field3 = {
    a = 1,
    b = 234,
    c = 11903
  }
}

API.DisplayTable(testTable)
print("-0---------------")
]]


return API
