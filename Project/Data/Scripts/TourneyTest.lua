
-- Custom 
local prop_TournamentMgr = script:GetCustomProperty("_TournamentMgr")

local Tournament = require(prop_TournamentMgr)

local tourney = Tournament.New()


local player = nil
while player == nil do
  player = Game.GetPlayers()[1]
  Task.Wait()
end

tourney:AddAllPlayers()
tourney:AddPlayer(Game.GetPlayers()[1])

--[[
while not tourney:IsDone() do
  t:GenerateMatches()

  for k, match in pairs(t:GetActiveMatches()) do
    if match.isActive then
      tourney:ReportResults(match, match.players[1])
    end
  end
end

print("Winner is", tournament:GetWinner())

print("Rankings are:")
for k,v in pairs(tournament:GetRankings()) do
  print(v.player.name, v.score)
end
]]