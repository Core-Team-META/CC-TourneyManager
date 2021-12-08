
-- Custom 
local prop_TournamentMgr = script:GetCustomProperty("_TournamentMgr")

local Tournament = require(prop_TournamentMgr)

local tourney = Tournament.New()



function SubmitScores()
  print("submitting scores")
  for k,p in pairs(tourney:GetActivePlayers()) do
    local score = math.random(1, 100)
    print("for", p, score)
    tourney:SubmitScore(p, score)
  end
end


Game.playerJoinedEvent:Connect(function(player)
  player.bindingPressedEvent:Connect(function (player, binding)
      if binding == "ability_extra_1" then
        tourney:AddAllPlayers()
      elseif binding == "ability_extra_2" then
        tourney:GenerateMatches()
      elseif binding == "ability_extra_3" then
        SubmitScores()
      elseif binding == "ability_extra_4" then
        print(tourney:DebugPrint())
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