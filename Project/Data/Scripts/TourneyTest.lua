
-- Custom 
local prop_TournamentMgr = script:GetCustomProperty("_TournamentMgr")

local Tournament = require(prop_TournamentMgr)

local tourney = Tournament.New()




function TestTournament()
  tourney:AddAllPlayers()
  --tourney:AddPlayer(Game.GetPlayers()[1])
  tourney:GenerateMatches()
end


function SubmitScores()
  print("submitting scores")
  for k,v in pairs(tourney.players) do
    print(v)
    local p = Game.FindPlayer(v.playerId)
    local score = math.random(1, 100)
    print(p.name, score)
    tourney:SubmitScore(p, score)
  end

end




Game.playerJoinedEvent:Connect(function(player)
  player.bindingPressedEvent:Connect(function (player, binding)
      if binding == "ability_extra_1" then
        TestTournament()
      elseif binding == "ability_extra_2" then
        SubmitScores()
      end
    end)
  end)



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