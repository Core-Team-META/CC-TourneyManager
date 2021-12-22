

local API = {}


function EvaluatePath(root, path)
  pathList = {CoreString.Split(path, ".")}
  local result = root
  for k,v in ipairs(pathList) do
    if k < (#pathList - 1) then
      if result[v] == nil then result[v] = {} end
    end
    result = result[v]
  end
  return result
end



--[[
local test = {
  val1 = 5,
  val2 = "hello", 
  val3 = {
    a = "AAAA",
    b = 23334,
    c = {
      deepVal = "hi"
    }

  }
}
print(test.val3.c.deepVal)
local val = EvaluatePath(test, "val3.c")
val.deepVal = "goodbye"
print(test.val3.c.deepVal)
]]



function API.ResetSorageKey(netref)
  Task.Spawn(function()
    local d, code, err
    while true do
      while Storage.HasPendingSetConcurrentCreatorData(netref) do
        Task.Wait()
      end
      d, code, err = Storage.SetConcurrentCreatorData(netref, function(data)
        return {}
      end)
      if code ~= StorageResultCode.SUCCESS then 
        warn("Could not reset storage key:", code, err)
      end
    end
  end)
end



function DoesArrayContainValue(array, val)
  for k,v in pairs(array) do
    if v == val then return true end
  end
  return false
end



function API.SetValue(val, path, netref)
  -- PathToParent is the same as path, but with the last value chopped off.
  local temp = {CoreString.Split(path, ".")}
  local pathToParent = ""
  local fieldName = temp[#temp]
  for i = 1, #temp - 1 do
    if i > 1 then
      pathToParent = pathToParent .. "."
    end  
    pathToParent = pathToParent .. temp[i]
  end
  print("path to parent:", pathToParent, fieldName)

  Task.Spawn(function()
    local d, code, err
    while true do
      while Storage.HasPendingSetConcurrentCreatorData(netref) do
        Task.Wait()
      end

      d, code, err = Storage.SetConcurrentCreatorData(netref, function(data)
        local parentTable = EvaluatePath(data, pathToParent)
        parentTable[fieldName] = value

        return data
      end)
      if code == StorageResultCode.SUCCESS then 
        print("successful write!")
        AddPairToTable_data = {}
        return
      else
        warn("Could not write data: (pairs) " .. tostring(code) .. " " .. err)
      end
    end
  end)

end



local AddPairToTable_data = {}
function API.AddPairToTable(key, val, path, netref, ensureUnique)
  local dataKey = key
  local shouldStartRequest = false

  if AddPairToTable_data[dataKey] == nil then
    AddPairToTable_data[dataKey] = {}
    shouldStartRequest = true
  end

  table.insert(AddPairToTable_data[dataKey], {k = key, v = val})
  print("***********")
  API.DisplayTable(AddPairToTable_data[dataKey])

  if shouldStartRequest then
    Task.Spawn(function()
      local d, code, err
      while true do
        while Storage.HasPendingSetConcurrentCreatorData(netref) do
          Task.Wait()
        end

        d, code, err = Storage.SetConcurrentCreatorData(netref, function(data)
          local tableToModify = EvaluatePath(data, path)
          for k,v in pairs(AddPairToTable_data[dataKey]) do
            if not (ensureUnique and tableToModify[v.k] ~= nil) then
              tableToModify[v.k] = v.v
            else
              print("Blocked becuse not unique")
            end
          end

          return data
        end)
        if code == StorageResultCode.SUCCESS then 
          print("successful write!")
          AddPairToTable_data = {}
          return
        else
          warn("Could not write data: (pairs) " .. tostring(code) .. " " .. err)
        end
      end
    end)
  end

end


-- Quick utility function for recursively
-- printing out a table with subtables.
function API.DisplayTable(t, indent)
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
