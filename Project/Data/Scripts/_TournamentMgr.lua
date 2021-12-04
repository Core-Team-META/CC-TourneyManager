local Tournament = {}


Tournament.STATE_NOT_YET_STARTED = "NOT YET STARTED"
Tournament.STATE_IN_PROGRESS = "IN PROGRESS"
Tournament.STATE_COMPLETE = "COMPLETE"



local PlayerEntry = {}

-- Entry for a player in a tournament.  
function PlayerEntry.New(playerId)
  local newPE = {
    playerId = playerId,
    matchHistory = {},
    points = 0,
    eliminated = false
  }
  setmetatable(newPE, {__index = PlayerEntry})
  return newPE
end


function PlayerEntry.IsInMatch(self)
  return #self.matchHistory > 0 and not self.matchHistory[#self.matchHistory].isComplete
end


----------------------------------

local Match = {}

-- Entry for a match in the tournament.  Contains all the
-- players that need to be in the match, and what time window
-- the match is open.
function Match.New(startTime, endTime, tournament)
  if player:IsA("Player") then playerId = player.id end
  local newMatch = {
    players = {},  -- also contains results
    dateStart = startTime,
    dateEnd = endTime,
    id = tournament.GetNewMatchId(),
    isComplete = false,
  }
  --setmetatable(newPE, {__index = PlayerEntry})
  return newMatch
end


----------------------------------

function Tournament.New()

  local newTournament = {
    players = {},  -- Player entries
    matches = {},  -- Matches
    playerScores = {},
    state = {},
    currentRound = 0,
  }
  setmetatable(newTournament, {__index = Tournament})
  return newTournament
end



--[[
  Match structure:
  Players[]
  results[]
  isComplete = false
]]



function Tournament.AddAllPlayers(self)
  for k,v in pairs(Game.GetPlayers()) do
    self:AddPlayer(v)
  end
end

function Tournament.AddPlayer(self, player)
  if self.players[player.id] == nil then
    self.players[player.id] = PlayerEntry.New(player.id)
  else
    warn("Tried to add a player who was already in the tournament:", player.name)
  end
end



function Tournament.AreAllMatchesComplete(self)
  for k,v in pairs(matches) do
    if not v.isComplete then return false end
  end
  return true
end


function Tournament.GenerateMatches(self)
  if not AreAllMatchesComplete() then
    warn("Tried to generate new matches while there are still active matches.")
    return -1
  end
  local playerList = {}
  for k,v in pairs(self.players) do
    table.insert(playerList, v)
  end


  table.sort(playerList, function(a, b) return a.points > b.points)
  for k,v in pairs(playerList) do
  end
end


function Tournament.GetAllMatches(self)
  local result = {}
  for k,v in pairs(self.matches) do
    result[k] = v
  end
  return result
end

function Tournament.GetActiveMatches(self)
  local result = {}
  for k,v in ipairs(self.matches) do
    if not v.isComplete then table.insert(result, v) end
  end
  return result
end



function Tournament.ReportMatchResults(matchId, results)

end


function Tournament.ReportWinner(player)

end

function Tournament.GetNewMatchId()

end


tourneyMetatable = {
  __index = Tournament,
}


return Tournament

