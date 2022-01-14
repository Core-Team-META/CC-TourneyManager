--[[
Structures:

  PlayerEntry
  {
    playerId = playerId, -- Some unique identifier for the player.  Player.id is fine.
    name = name, -- display name for player
    scores = {}, -- all scores from all completed matches
  }

  Match
  {
        playerIds = playersInMatch,
        playerScores = {}, -- Map of playerId -> score
        round = leagueData.currentRound
        isComplete = false,
        matchId = k, -- index in the list.  an ID for the match.
  }

  League
  {
        state = LeagueState.OPEN_FOR_ENTRY,
        startTime = os.time(),
        stateEndTime = -1,
        playerEntries = {},
        matches = {},
        defaultMatchSize = defaultMatchSize,
        maxWinners = maxWinners,
        currentRound = 0,
        nextMatchId = 0,
  }
]]

-- Custom 
local _CONC_UTILS = script:GetCustomProperty("_ConcUtils")
local cu = require(_CONC_UTILS)

API = {}



local LeagueState = {
  CLOSED = 0,
  OPEN_FOR_ENTRY = 1,
  MATCHES = 2,
  MATCHES_COMPLETE = 3,
  LEAGUE_COMPLETE = 4,
}
API.LeagueState = LeagueState


local currentLeagueState = -1
local currentEndTime = -1


-- Register:
local SECONDS = 1
local MINUTES = 60 * SECONDS
local HOURS = 60 * MINUTES
local DAYS = 24 * HOURS

local netref = nil

local SIGNUP_WINDOW = 1 * DAYS
local MATCH_WINDOW = 1 * DAYS

--local SIGNUP_WINDOW = 10 * SECONDS
--local MATCH_WINDOW = 10 * SECONDS




-- Should be called on startup


function GetLeagueData()
  local allData = Storage.GetConcurrentCreatorData(netref)
  if allData == nil then
    warn("Error retrieving league data.")
    return nil
  end
  --print("alldata:")
  --cu.DisplayTable(allData)
  return allData.leagueData
end



function API.Initialize(leagueNetref)
  netref = leagueNetref
  print("initializing league manager")
  -- Check to see if the signup or match window has closed,
  -- and proceed accordingly.

  local leagueData = GetLeagueData()
  if leagueData ~= nil then
    currentLeagueState = leagueData.state or -1
    currentEndTime = leagueData.stateEndTime or -1
  end

  Storage.ConnectToConcurrentCreatorDataChanged(leagueNetref, OnConcurrentDataChanged)

  local tickTask = Task.Spawn(Tick)
  tickTask.repeatInterval = 1
  tickTask.repeatCount = -1

  UpdateAllClientData()
  Game.playerJoinedEvent:Connect(function(player) UpdateClientData(player); end)
end


function OnConcurrentDataChanged(netref, data)
  local leagueData = data.leagueData
  print("storage changed!", leagueData, currentLeagueState)
  if leagueData ~= nil then print("currentState =", leagueData.state) end
  if leagueData == nil or leagueData.state == currentLeagueState then return end

  -- new state!
  if leagueData.state == LeagueState.OPEN_FOR_ENTRY then
    print("STATE: open for entry!")
  elseif leagueData.state == LeagueState.MATCHES then
    print("STATE: Matches are happening!")
    -- TODO end all unfinsihed matches with double-losers
  elseif leagueData.state == LeagueState.MATCHES_COMPLETE then
    print("STATE: matches are complete!")
  elseif leagueData.state == LEAGUE_COMPLETE then
    print("STATE: league is complete!")
  end
  currentLeagueState = leagueData.state or -1
  currentEndTime = leagueData.stateEndTime or -1
end


function IsValueInArray(val, array)
  for k,v in pairs(array) do
    if v == val then return true end
  end
  return false
end

function API.IsPlayerInLeague(pid)
  local leagueData = GetLeagueData()
  for k,entry in pairs(leagueData.playerEntries) do
    if pid == entry.playerId then return true end
  end
  return false
end


function API.GetAllMatches()
  local leagueData = GetLeagueData()
  return leagueData.matches
end


function API.GetMatchesForPlayer(leagueData, pid)
  print("Finding matches for player ", pid, #leagueData.matches)
  results = {}
  for k, match in pairs(leagueData.matches) do
    cu.DisplayTable(match)
    for kk, id in pairs(match.playerIds) do
      print(id, pid)
      if id == pid then
        table.insert(results, match)
        break
      end
    end
  end
  print("Results:" , #results)
  return results
end

function API.StartLeague(forceRestart)
  local leagueData = GetLeagueData()

  print("StartingLeague!")

  cu.WriteCCDataYield(netref, function(data)
    cu.DisplayTable(data)
    local leagueData = data.leagueData

    if leagueData ~= nil and leagueData.state ~= LeagueState.LEAGUE_COMPLETE then
      warn("League already in progress...")
      return data
    else
      print("Writing starting league data")
      data = {
        state = LeagueState.OPEN_FOR_ENTRY,
        startTime = os.time(),
        stateEndTime = os.time() + SIGNUP_WINDOW,
        playerEntries = {},
        matches = {},
        defaultMatchSize = defaultMatchSize,
        maxWinners = maxWinners,
        currentRound = 0,
        nextMatchId = 0,      
      }
      return {leagueData = data}
    end
  end)

  print("wrote data")
  cu.DisplayTable(d)
end


function GenerateNewMatches(leagueData)
  local newMatches = {}
  print("---------GENERATING NEW MATCHES")
  cu.DisplayTable(leagueData.playerEntries)

  for i = 1, #(leagueData.playerEntries) do
    for j = i, #(leagueData.playerEntries) do

      local playersInMatch = {leagueData.playerEntries[i].playerId, leagueData.playerEntries[j].playerId}
      local newMatch =   {
        playerIds = playersInMatch,
        playerScores = {}, -- Map of playerId -> score
        matchId = #newMatches + 1,
        round = leagueData.currentRound,
        isComplete = false,
      }

      table.insert(newMatches, newMatch)
    end
  end
  
  return newMatches
end



function UpdateAllClientData()
  local leagueData = GetLeagueData()
  for _, p in pairs(Game.GetPlayers()) do
    UpdateClientData(p, leagueData)
  end
end

function UpdateClientData(p, leagueData)
  print("Updating client data for", p.name)
    local isInLeague = API.IsPlayerInLeague(p.id)
    local matches = {}
    if isInLeague then matches = API.GetMatchesForPlayer(leagueData, p.id) end
    print("Found matches:")
    cu.DisplayTable(matches)
    p:SetPrivateNetworkedData("LG_PlayerData", {
      isInLeague = isInLeague,
      matches = matches,
      state = leagueData.state
    })
end

function API.PlayerSignup(playerId, playerName)
  print("-----Signing up!")
  local leagueData = GetLeagueData()
  --[[
  if leagueData.state ~= LeagueState.OPEN_FOR_ENTRY then
    warn("Tried to sign up when signup was closed.")
    return
  end
  ]]

  cu.WriteCCData(netref, function(data)
    local leagueData = data.leagueData

    for k,v in pairs(leagueData.playerEntries) do
      if v.playerId == playerId then
        warn("Player already registered!", playerId)
        return
      end
    end

  if leagueData.state ~= LeagueState.OPEN_FOR_ENTRY then
    warn("Tried to sign up when signup was closed.")
   return
  end

    local playerEntry = {
      playerId = playerId,
      name = playerName,
      scores = {},
    }

    table.insert(leagueData.playerEntries, playerEntry)
    return data
  end)
end


function API.ResetSorageKey()
  cu.ResetSorageKey(netref)
  currentLeagueState = -1
  currentEndTime = -1

end



function API.ReportMatchResult(matchId, scoreTable)
  local leagueData = GetLeagueData()
  if leagueData.state ~= LeagueState.MATCHES then
    warn("Tried to submit match score after matches are done! " .. tostring(matchId))
    return
  end

  local match = leagueData.matches[matchId]
  if match == nil then
    warn("Could not find match for matchid " .. tostring(matchId))
    return
  end
end

function API.DebugOut()
  local leagueData = GetLeagueData()
  print("Current League Status:", leagueData)
  print("-------------------")
  cu.DisplayTable(leagueData)
  print("-------------------")
end


function API.DebugAdvance()
  local leagueData = GetLeagueData()
  print("Debug advance!", leagueData.stat)
  if leagueData.state == LeagueState.OPEN_FOR_ENTRY then
    print("Debug - advancing to matches")
    API.AdvanceLeagueState(LeagueState.OPEN_FOR_ENTRY, LeagueState.MATCHES, true)
  elseif leagueData.state == LeagueState.MATCHES then
    API.AdvanceLeagueState(LeagueState.MATCHES, LeagueState.LEAGUE_COMPLETE, true)
    print("Debug - advancing to matches")
  end
end



function API.AdvanceLeagueState(expectedCurrentState, newState, debugResetTime)
  debugResetTime = debugResetTime or false
  cu.WriteCCDataYield(netref, function(data)
    local leagueData = data.leagueData
    if leagueData.state ~= expectedCurrentState then
      print("Skipping advanceLeagueState because states no longer match.", leagueData.state)
      return data
    end
    if newState == LeagueState.MATCHES then
      AdvanceState_Matches(leagueData, debugResetTime)
    elseif newState == LeagueState.LEAGUE_COMPLETE then
      AdvanceState_Complete(leagueData, debugResetTime)
    end
    leagueData.state = newState
    return data
  end)
  print("0------------")
  UpdateAllClientData()
end

function AdvanceState_Matches(leagueData, debugResetTime)
  -- generate matches
  leagueData.matches = GenerateNewMatches(leagueData)
  leagueData.stateEndTime = leagueData.stateEndTime + MATCH_WINDOW
  if debugResetTime then leagueData.stateEndTime = os.time() + MATCH_WINDOW end
end


function AdvanceState_Complete(leagueData, debugResetTime)
  -- End all outstanding matches
  -- Calculate scores
  leagueData.stateEndTime = -1
  local playerMatchScores = {}
  for k,match in pairs(leagueData.matches) do
--[[
        playerIds = playersInMatch,
        playerScores = {}, -- Map of playerId -> score
        round = leagueData.currentRound
        isComplete = false,
]]
    local ranking = {table.unpack(match.playerIds)}
    table.sort(ranking, function(a, b) 
      -- note that we use > instead of <, to reverse the sort order.
      -- we're going to use the index as the points awarded for the round.
      return match.playerScores[a] > match.playerScores[b]
    end)

    for k, pid in pairs(ranking) do
      table.insert(playerMatchScores[pid] or {}, k)
    end
  end

  for pid, scores in pairs(playerMatchScores) do
    table.sort(playerMatchScores[pid])
  end


  --[[  
        playerIds = playersInMatch,
        playerScores = {}, -- Map of playerId -> score
        round = leagueData.currentRound
        isComplete = false,
]]

  return leagueData
end





function PrettyTime(t)
  local days = t // DAYS
  t = t % DAYS
  local hours = t // HOURS
  t = t % HOURS
  local minutes = t // MINUTES
  t = t % MINUTES
  local seconds = t // SECONDS
  local result = ""
  local forceDisplay = false

  if days > 0 then
    forceDisplay = true
    result = result .. string.format("%02d:", days)
  end
  if hours > 0 or forceDisplay then
    forceDisplay = true
    result = result .. string.format("%02d:", hours)
  end
  if minutes > 0 or forceDisplay then
    forceDisplay = true
    result = result .. string.format("%02d:", minutes)
  end

  result = result .. string.format("%02d", seconds)

  return result
end


function Tick()
  local timeRemaining = currentEndTime - os.time()
  print(currentEndTime, PrettyTime(timeRemaining))
  if timeRemaining < 0 and currentEndTime ~= -1 then
    StateTimeUp()
  end
end



function StateTimeUp()
  currentEndTime = -1

  local leagueData = GetLeagueData()
  if leagueData.state == LeagueState.OPEN_FOR_ENTRY then
    print("Time up! - starting matches!")
    API.AdvanceLeagueState(LeagueState.OPEN_FOR_ENTRY, LeagueState.MATCHES)
    --leagueData.state = LeagueState.MATCHES
  elseif leagueData.state == LeagueState.MATCHES then
    print("Time up! - league complete!")
    API.AdvanceLeagueState(LeagueState.MATCHES, LeagueState.LEAGUE_COMPLETE)
    --leagueData.state = LeagueState.MATCHES_COMPLETE
  end
  --[[
  elseif leagueData.state == LeagueState.MATCHES_COMPLETE then
    print("Time up! - match time complete")
    if leagueData.isComplete then
      leagueData.state = LEAGUE_COMPLETE
    end
  end
  ]]
end

--[[
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

]]




return API


