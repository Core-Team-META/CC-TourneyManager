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
    players = {},  -- Player entries
    matches = {},  -- Matches
    playerScores = {}, -- map of playerIds -> total scores
    defaultMatchSize = defaultMatchSize,
    maxWinners = maxWinners,
    isComplete = false,
    currentRound = 0,
    nextMatchId = 0,
  }
]]

-- Custom 
local _CONC_UTILS = script:GetCustomProperty("_ConcUtils")
local CONCUR_CREATOR_LEAGUE = script:GetCustomProperty("ConcurCreatorLeague") ---@type NetReference
local cu = require(_CONC_UTILS)

API = {}



API.LeagueState = {
  CLOSED = 0,
  OPEN_FOR_ENTRY = 1,
  MATCHES = 2,
  MATCHES_COMPLETE = 3,
  LEAGUE_COMPLETE = 4,
}


local LeagueState = API.LeagueState

-- Register:
local SECONDS = 1
local MINUTES = 60 * SECONDS
local HOURS = 60 * MINUTES
local DAYS = 24 * HOURS
local netref = nil

local SIGNUP_WINDOW = 15 * MINUTES
local MATCH_WINDOW = 1 * DAYS

-- Should be called on startup

function API.Initialize(leagueNetref)
  netref = leagueNetref
  print("initializing league manager")
  -- Check to see if the signup or match window has closed,
  -- and proceed accordingly.
end





function GetLeagueData()

  local allData = Storage.GetConcurrentCreatorData(netref)
  if allData == nil then
    warn("Error retrieving league data.")
    return nil
  end
  cu.DisplayTable(allData)
  return allData.leagueData
end



function API.StartLeague(forceRestart)
  local leagueData = GetLeagueData()

  print("StartingLeague!")
  Storage.SetConcurrentCreatorData(netref, function(data)
    print(forceRestart, data.state)
    if not (forceRestart or data.state == LeagueState.CLOSED) then
      warn("League already in progress...")
      return data
    else
      data = {
        state = LeagueState.OPEN_FOR_ENTRY,
        startTime = os.time(),
        playerEntries = {},
        matches = {},
        defaultMatchSize = defaultMatchSize,
        maxWinners = maxWinners,
        isComplete = false,
        currentRound = 0,
        nextMatchId = 0,      
      }
      return {leagueData = data}
    end
  end)
end


function API.PlayerSignup(player)
  local leagueData = GetLeagueData()
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

  cu.AddPairToTable(player.id, playerEntry, "leagueData.playerEntries", netref, true)
end


function API.ResetSorageKey()
  cu.ResetSorageKey(netref)
end

function API.DebugOut()
  local leagueData = GetLeagueData()
  print("Current League Status:")
  print("-------------------")
  cu.DisplayTable(leagueData)
  print("-------------------")
end






function API.AdvanceLeague()
  local leagueData = GetLeagueData()
  if leagueData.state == LeagueState.OPEN_FOR_ENTRY then
    -- TODO generate matches.
    leagueData.state = LeagueState.MATCHES
  elseif leagueData.state == LeagueState.MATCHES then
    -- TODO end all unfinsihed matches with double-losers
    leagueData.state = LeagueState.MATCHES_COMPLETE
  elseif leagueData.state == LeagueState.MATCHES_COMPLETE then
    if leagueData.isComplete then
      leagueData.state = LEAGUE_COMPLETE
    end
  end


end




return API

