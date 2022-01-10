--[[
Structures:

  PlayerEntry
  {
    playerId = playerId, -- Some unique identifier for the player.  Player.id is fine.
    matchHistory = {}, -- List of matchIDs that this player has participated in
    points = 0, -- Total points accumulated.
    isEliminated = false
  }

  Match
  {
    playerIds = playerIdList,
    playerScores = {}, -- Map of playerId -> score
    round = round, -- What round of the tournament the match was on
    id = tournament:GetNewMatchId(), -- Unique ID for the match
    isComplete = false,
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

--local SIGNUP_WINDOW = 1 * MINUTES
--local MATCH_WINDOW = 1 * DAYS

local SIGNUP_WINDOW = 10 * SECONDS
local MATCH_WINDOW = 10 * SECONDS




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


function API.PlayerSignup(player)
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
      if v.playerId == player.id then
        warn("Player already registered!")
        --return
      end
    end

  if leagueData.state ~= LeagueState.OPEN_FOR_ENTRY then
    warn("Tried to sign up when signup was closed.")
   return
  end

    local playerEntry = {
      playerId = player.id,
      matchHistory = {},
      points = 0,
      isEliminated = false
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

function API.DebugOut()
  local leagueData = GetLeagueData()
  print("Current League Status:", leagueData)
  print("-------------------")
  cu.DisplayTable(leagueData)
  print("-------------------")
end



function API.AdvanceLeagueState(expectedCurrentState, newState)
  cu.WriteCCData(netref, function(data)
    local leagueData = data.leagueData
    if leagueData.state ~= expectedCurrentState then
      print("Skipping advanceLeagueState because states no longer match.", leagueData.state)
      return data
    end

    leagueData.state = newState
    return data
  end)
end


function FormatTime(seconds)

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
    print("Time up! - no longer open")
    -- TODO generate matches.
    leagueData.state = LeagueState.MATCHES
  elseif leagueData.state == LeagueState.MATCHES then
    print("Time up! - no longer matches")
    -- TODO end all unfinsihed matches with double-losers
    leagueData.state = LeagueState.MATCHES_COMPLETE
  elseif leagueData.state == LeagueState.MATCHES_COMPLETE then
    print("Time up! - match time complete")
    if leagueData.isComplete then
      leagueData.state = LEAGUE_COMPLETE
    end
  end
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


