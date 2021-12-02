local Tournament = {}


Tournament.STATE_NOT_YET_STARTED = "NOT YET STARTED"
Tournament.STATE_IN_PROGRESS = "IN PROGRESS"
Tournament.STATE_COMPLETE = "COMPLETE"


function Tournament.New()

  local newTouranment = {
    players = {},
    matches = {},
    playerScores = {},
    state = {},
    currentRound = 0,
  }

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
    self.players[v.id] = {active = true, matchHistory = {}, score = 0}
  end
end

function Tournament.AddPlayer(self, player)
  if self.players[player.id] ~= nil then
    self.players[v.id] = {active = true, matchHistory = {}, score = 0}
  else
    warn("Tried to add a player who was already in the tournament:", player.name)
  end
end



function API.GenerateMatches()
  for k,v in pairs(players) do
  end
end


function Tournament.GetMatches(self)
  return self.matches
end


function Tournament.ReportMatchResults(matchId, results)

end


function Tournament.ReportWinner(player)

end


tourneyMetatable = {
  __index = Tournament,
}


return Tournament

