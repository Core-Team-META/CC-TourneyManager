--[[
Structures:

  PlayerEntry
  {
    playerId = playerId, -- Some unique identifier for the player.  Player.id is fine.
    name = name, -- display name for player
    matchData = {}, -- how well they did against other players
    score = -1,
    rank = -1,
  }

  Match -- does not exist any more.
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

local MAX_SCORE_RATIO = 0.5


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
  Game.playerJoinedEvent:Connect(OnPlayerJoined)
end

function OnPlayerJoined(player)
  local leagueData = GetLeagueData()
  UpdateClientData(player, leagueData)
end


function OnConcurrentDataChanged(netref, data)
  local leagueData = data.leagueData
  print("storage changed!", leagueData, currentLeagueState)
  if leagueData ~= nil then print("currentState =", leagueData.state) end
  if leagueData == nil then
    currentLeagueState = -1
    currentEndTime = -1
    UpdateAllClientData()
    return
  end
  --if leagueData.state == currentLeagueState then return end

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
  UpdateAllClientData()
end


function IsValueInArray(val, array)
  for k,v in pairs(array) do
    if v == val then return true end
  end
  return false
end

function API.IsPlayerInLeague(pid)
  local leagueData = GetLeagueData()
  if leagueData == nil or leagueData.playerEntries == nil then return false end
  for k,entry in pairs(leagueData.playerEntries) do
    if pid == entry.playerId then return true end
  end
  return false
end



-- util function for finding an entry based on pid.
function GetPlayerEntry(leagueData, pid)
  --print(CoreDebug.GetStackTrace())
  if leagueData == nil then return nil end
  if leagueData.playerEntries ~= nil then
    for k,entry in pairs(leagueData.playerEntries) do
      if pid == entry.playerId then return entry end
    end
  end
  return nil
end




function API.StartLeague(forceRestart)
  local leagueData = GetLeagueData()

  print("StartingLeague!")

  cu.WriteCCData(netref, function(data)
    --cu.DisplayTable(data)
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
        countedScores = -1,
      }
      return {leagueData = data}
    end
  end)
end


function GenerateNewMatches(leagueData)
  print("Generating new matches!")

  for k,entry in pairs(leagueData.playerEntries) do
    entry.matchData = {}
    for k, entry2 in pairs(leagueData.playerEntries) do
      if entry2.playerId ~= entry.playerId then
        entry.matchData[entry2.playerId] = -1
      end
    end
  end
end


function UpdateAllClientData()
  local leagueData = GetLeagueData()
  for _, p in pairs(Game.GetPlayers()) do
    UpdateClientData(p, leagueData or {state = LeagueState.CLOSED})
  end
end

function UpdateClientData(p, leagueData)
  --print("Updating client data for", p.name, leagueData.state)
  if leagueData == nil then return end
  local isInLeague = API.IsPlayerInLeague(p.id)
  local matches = {}
  local score = nil
  local rank = nil
  local playerEntry = GetPlayerEntry(leagueData, p.id)

  if playerEntry ~= nil and playerEntry.matchData ~= nil then
    matches = playerEntry.matchData
    score = playerEntry.score
    rank = playerEntry.rank
  end

  local smallPlayerData = {}
  for k,v in pairs(leagueData.playerEntries or {}) do
    table.insert(smallPlayerData, {
      name = v.name,
      playerId = v.playerId,
      rank = v.rank,
      score = v.score})
  end


  p:SetPrivateNetworkedData("LG_PlayerData", {
    isInLeague = isInLeague,
    matchData = matches,
    state = leagueData.state,
    stateEndTime = leagueData.stateEndTime,
    score = score,
    rank = rank,
    playerEntries = smallPlayerData,
    --playerEntries = leagueData.playerEntries,
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
  local result = 0

  cu.WriteCCDataYield(netref, function(data)
    local leagueData = data.leagueData
    if leagueData == nil then 
      warn("League data is nil")
      result = 3
      return data
    end

    for k,v in pairs(leagueData.playerEntries) do
      if v.playerId == playerId then
        warn("Player already registered!", playerId)
        result = 1
        return data
      end
    end

  if leagueData.state ~= LeagueState.OPEN_FOR_ENTRY then
    warn("Tried to sign up when signup was closed.")
    result = 2
    return data
  end

    local playerEntry = {
      playerId = playerId,
      name = playerName,
      matchData = {},
      matchesPlayed = 0,
      score = -1,
      rank = -1,
    }

    table.insert(leagueData.playerEntries, playerEntry)
    return data
  end)
  return result
end


function API.ResetSorageKey()
  currentLeagueState = -1
  currentEndTime = -1
  cu.ResetSorageKey(netref)
end



function API.ReportMatchResult(scoreTable)
  -- Generate a sorted table of players/scores
  local matchRankings = {}
  for pid,score in pairs(scoreTable) do 
    table.insert(matchRankings, {
        pid = pid,
        score = score,
        rank = #matchRankings + 1
      })
  end
  -- note that since we're sorting the table lowest->highest,
  -- the index (and thus score) for the first place player will
  -- be the last index in the array, etc.
  table.sort(matchRankings, function(a,b) return a.score < b.score end)
  print("Ranking results:")
  cu.DisplayTable(matchRankings)

  cu.WriteCCDataYield(netref, function(data)
    local leagueData = data.leagueData
    for rank, result in pairs(matchRankings) do
      local playerEntry = GetPlayerEntry(leagueData, result.pid)
      if playerEntry ~= nil then  -- playerEntry might be nil if they are not in the tourney
        for rank2, result2 in pairs(matchRankings) do
          -- only take first submitted score!
          -- this might also be nil, if their opponent is not in the tourney.
          if playerEntry.matchData[result2.pid] == -1 then
            playerEntry.matchData[result2.pid] = result2.rank
            UpdatePlayerScore(leagueData, result2.pid)
          end
        end
      end
    end
    UpdatePlayerRankings(leagueData)
    return {leagueData = leagueData}
  end)

  -- After the write has gone through, update everyone's CC data.
  local leagueData = GetLeagueData()
  for pid,score in pairs(scoreTable) do
    local player = Game.FindPlayer(pid)
    if player ~= nil then UpdateClientData(player, leagueData) end
  end
end


function UpdatePlayerScore(leagueData, pid)
  local entry = GetPlayerEntry(leagueData, pid)
  print("Updating player score for", entry.name)
  --print(table.unpack(entry.scoreList))
  local totalScore = 0
  local scoreList = {}
  for otherPid, score in pairs(entry.matchData) do
    if score ~= -1 then table.insert(scoreList, score) end
  end
  table.sort(scoreList, function(a, b) return a > b end)
  entry.matchesPlayed = #scoreList
  for i = 1, math.min(leagueData.countedScores, #scoreList) do
    totalScore = totalScore + scoreList[i]
  end
  entry.score = totalScore
  print("new score is", totalScore)
end

function UpdatePlayerRankings(leagueData)
  local allPlayers = {}
  for k,v in pairs(leagueData.playerEntries) do
    allPlayers[k] = {
      pid = v.pid,
      score = v.score,
      index = k,
    }
  end

  table.sort(allPlayers, function(a, b)
      return a.score > b.score
    end)
  for rank, pdata in ipairs(allPlayers) do 
    --print(rank, pdata.score, rank, leagueData.playerEntries[pdata.index].name)
    leagueData.playerEntries[pdata.index].rank = rank
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
  cu.WriteCCData(netref, function(data)
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
end

function AdvanceState_Matches(leagueData, debugResetTime)
  -- generate matches
  --leagueData.matches = 
  GenerateNewMatches(leagueData)
  leagueData.stateEndTime = leagueData.stateEndTime + MATCH_WINDOW
  leagueData.countedScores = math.ceil(#leagueData.playerEntries * MAX_SCORE_RATIO)
  if debugResetTime then leagueData.stateEndTime = os.time() + MATCH_WINDOW end
end


function AdvanceState_Complete(leagueData, debugResetTime)
  leagueData.stateEndTime = -1
  return leagueData
end




function API.PrettyTime(t)
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


-- TODO: Turn this into a timer instead of a tick function!
function Tick()
  local timeRemaining = currentEndTime - os.time()
  --print(currentEndTime, API.PrettyTime(timeRemaining))
  if timeRemaining < 0 and currentEndTime ~= -1 then
    StateTimeUp()
  end
end


function API.DebugReportRandomScores(scoresToReport)
  local leagueData = GetLeagueData()
  if #leagueData.playerEntries < 2 then return end
  for i = 1, scoresToReport do
    local index1 = math.random(#leagueData.playerEntries)
    local index2 = math.random(#leagueData.playerEntries - 1)
    -- make sure the indexes are different!
    if index1 == index2 then index2 = #leagueData.playerEntries end

    local scoreTable = {
        [leagueData.playerEntries[index1].playerId] = math.random(100),
        [leagueData.playerEntries[index2].playerId] = math.random(100),
      }
    print("Submitting score table")
    cu.DisplayTable(scoreTable)

    API.ReportMatchResult(scoreTable)
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


