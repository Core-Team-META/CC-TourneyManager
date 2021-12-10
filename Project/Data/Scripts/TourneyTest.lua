
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
        --tourney:AddAllPlayers()
        tourney:AddDummyPlayers(20)
      elseif binding == "ability_extra_2" then
        tourney:GenerateMatches()
      elseif binding == "ability_extra_3" then
        SubmitScores()
      elseif binding == "ability_extra_4" then
        print(tourney:DebugPrint())
      elseif binding == "ability_extra_5" then
        local t = Tournament.New()
        t:AddDummyPlayers(21)
        while not t.isComplete do
          t:GenerateMatches()
          for k,p in pairs(t:GetActivePlayers()) do
            t:SubmitScore(p, math.random(1, 100))
          end
          Task.Wait()
        end
        print(t:DebugPrint())
      end
    end)
  end)
