local prop_LuaEvents = script:GetCustomProperty("_LuaEvents")
local LuaEvent = require(prop_LuaEvents)


local Tournament = {}
local PlayerEntry = {}

-- Entry for a player in a tournament.  
function PlayerEntry.New(playerId)
  local newPE = {
    playerId = playerId,
    matchHistory = {},
    points = 0,
    isEliminated = false
  }
  setmetatable(newPE, {__index = PlayerEntry})
  return newPE
end

function PlayerEntry.NewFromTable(t)
  local result = {}
  for k,v in pairs(t) do
    result[k] = v
  end
  setmetatable(result, {__index = PlayerEntry})
  return result
end


function PlayerEntry:IsInAMatch()
  return #self.matchHistory > 0 and not self.matchHistory[#self.matchHistory].isComplete
end


----------------------------------

local Match = {}

-- Entry for a match in the tournament.  Contains all the
-- players that need to be in the match, and what time window
-- the match is open.
function Match.New(tournament, playerIdList, round, progressingPlayers)
  if not progressingPlayers then progressingPlayers = 1 end
  local newMatch = {
    progressingPlayers = progressingPlayers,
    playerIds = playerIdList,
    playerScores = {},
    startTime = -1,
    endTime = -1,
    round = round,
    id = tournament:GetNewMatchId(),
    tournament = tournament,
    isComplete = false,
  }

  setmetatable(newMatch, {__index = Match})
  return newMatch
end

function Match.NewFromTable(t)
  local result = {}
  for k,v in pairs(t) do
    result[k] = v
  end
  setmetatable(result, {__index = Match})
  return result
end

function Match:StartMatch()
  self.startTime = time()
  self.isComplete = false
end

function Match:EndMatch()
  print("Match complete!", self.id)
  self.endTime = time()
  self.isComplete = true

  -- remove eliminated players from the tournament:
  local results = {}
  for k,v in pairs(self.playerScores) do
    table.insert(results, {id = k, score = v})
  end
  table.sort(results, function(a, b) return a.score > b.score end)
  for i = self.progressingPlayers + 1, #results do
    print("Eliminating player", self.tournament.players[results[i].id].playerId)
    self.tournament.players[results[i].id].isEliminated = true
  end
end

function Match:ContainsPlayer(playerId)
  for k,v in pairs(self.playerIds) do
    if v == playerId then return true end
  end
  return false
end

function Match:SubmitMatchScore(playerId, score)
  if not self:ContainsPlayer(playerId) then
    print(playerId, self.id)
    warn("Tried to submit a score for a player not in the match!")
    return
  end
  print("submitting score", score)
  self.playerScores[playerId] = score

  if self:HaveAllScoresBeenSubmitted() then
    self:EndMatch()
  end
end

function Match:HaveAllScoresBeenSubmitted()
  for k,v in pairs(self.playerIds) do
    if self.playerScores[v] == nil then return false end
  end
  return true
end

----------------------------------

function Tournament.New(defaultMatchSize, maxWinners)
  defaultMatchSize = defaultMatchSize or 2
  maxWinners = maxWinners or 1
  local newTournament = {
    players = {},  -- Player entries
    matches = {},  -- Matches
    defaultMatchSize = defaultMatchSize,
    maxWinners = maxWinners,
    isComplete = false,
    playerCount = 0,
    playerScores = {},
    currentRound = 0,
    nextMatchId = 0,
    roundCompleteEvent = LuaEvent.New(),
    tournamentCompleteEvent = LuaEvent.New(),
  }
  setmetatable(newTournament, {__index = Tournament})
  return newTournament
end

function Tournament.NewFromTable(t)
  local result = {}
  for k,v in pairs(t) do
    result[k] = v
  end
  setmetatable(result, {__index = Tournament})
  return result
end

function Tournament:GetActivePlayers()
  local result = {}
  for k,v in pairs(self.players) do
    if not v.isEliminated then table.insert(result, v.playerId) end
  end
  return result
end

function Tournament:IsPlayerEliminated(playerId)
  print("checking", playerId)
   print(CoreDebug.GetStackTrace())
  if self.players[playerId] == nil then
    warn("Checked if a player was eliminated, but they player is not in the tournament")
    return nil
  end
  print(self.players[playerId])
  return self.players[playerId].isEliminated
end


function Tournament:GetNewMatchId()
  self.nextMatchId = self.nextMatchId + 1
  return self.nextMatchId - 1
end

function Tournament:AddAllPlayers()
  for k,v in pairs(Game.GetPlayers()) do
    self:AddPlayer(v.id)
  end
end


function Tournament:AddDummyPlayers(count)
  for i = 1, count do
    self:AddPlayer(string.format("testPlayer_%d", self.playerCount))
  end
end


function Tournament:AddPlayer(playerId)
  if self.players[playerId] == nil then
    self.players[playerId] = PlayerEntry.New(playerId)
    self.playerScores[playerId] = 0
    self.playerCount = self.playerCount + 1
  else
    warn("Tried to add a player who was already in the tournament:", playerId)
  end
end

function Tournament:GetScore(playerId)
  return self.playerScores[playerId]
end


function Tournament:AreAllMatchesComplete()
  for k,v in pairs(self.matches) do
    if not v.isComplete then return false end
  end
  return true
end


function Tournament:GenerateMatches(playersPerMatch)
  playersPerMatch = playersPerMatch or 2

  self.currentRound = self.currentRound + 1

  if not self:AreAllMatchesComplete() then
    warn("Tried to generate new matches while there are still active matches.")
    return -1
  end
  local playerList = {}
  for k,v in pairs(self.players) do
    if not v.isEliminated then
      --print("inserting", k)
      table.insert(playerList, {id = k, points = self:GetScore(k)})
    end
  end
  if #playerList == 0 then
    warn("Tried to generate new matches while there are no active players.")
  end

  print("Generating matches for ", #playerList, "players.  Round", self.currentRound)
  table.sort(playerList, function(a, b) return a.points < b.points end)

  local playersInMatch = {}
  local matchCounter = 0
  local matchSize = math.min(#playerList, playersPerMatch)
  while true do
    local playersInMatch = {}
    matchSize = math.min(#playerList, playersPerMatch)
    --print("matchSize:", matchSize, #playerList, playersPerMatch)
    for i = 1, matchSize do
      table.insert(playersInMatch, table.remove(playerList).id)
    end

    print("Creating match of size", matchSize)
    matchCounter = matchCounter + 1
    local newMatch = Match.New(self, playersInMatch, self.currentRound)
    for k,v in pairs(playersInMatch) do
      table.insert(self.players[v].matchHistory, newMatch.id)
    end
    table.insert(self.matches, newMatch)

    if #playerList == 0 then break end
  end
  print(string.format("Generated %d matches.", matchCounter))
end


function Tournament:GetAllMatches()
  local result = {}
  for k,v in pairs(self.matches) do
    result[k] = v
  end
  return result
end

function Tournament:GetActiveMatches()
  local result = {}
  for k,v in ipairs(self.matches) do
    if not v.isComplete then table.insert(result, v) end
  end
  return result
end


function Tournament:FindMatchForPlayer(playerId)
  local matches = self:GetActiveMatches()
  for k,v in pairs(matches) do
    if v:ContainsPlayer(playerId) then
      return v
    end
  end
  return nil
end


function Tournament:SubmitScore(playerId, score)
  print("---------SCORE SUBMITTED----------", playerId, score)
  local match = self:FindMatchForPlayer(playerId)
  if match == nil then
    warn("Could not find an active match for player " .. playerId)
    return
  end
  match:SubmitMatchScore(playerId, score)

  local remainingPlayers = self:GetActivePlayers()
  
  if self:AreAllMatchesComplete() then
    self.roundCompleteEvent:Trigger(self.round)

    if #remainingPlayers <= self.maxWinners then
      self.isComplete = true
      self.tournamentCompleteEvent:Trigger(remainingPlayers)
    end    
  end
end



function Tournament:DebugPrint()

  for _, match in ipairs(self.matches) do
    print("----- match", match.id, "round", match.round)
    local sortedScores = {}
    for k,v in pairs(match.playerScores) do
      table.insert(sortedScores, {id = k, score = v})
    end
    table.sort(sortedScores, function(a, b) return a.score > b.score end)
    for k,v in ipairs(sortedScores) do
      local elim = ""
      if k > match.progressingPlayers then elim = "(eliminated)" end
      print(string.format("  %d: %s %s", v.score, v.id, elim))
    end
  end
  print("---------------")
  print("currently active players:")
  for k,v in pairs(self:GetActivePlayers()) do
    print(k, v)
  end
  print("is complete?", self.isComplete)

end


tourneyMetatable = {
  __index = Tournament,
}


return Tournament

