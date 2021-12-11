local prop_TournamentMgr = script:GetCustomProperty("_TournamentMgr")
local propRPS_MatchStage = script:GetCustomProperty("RPS_MatchStage")
local propRPS_WorldIcon_Winner = script:GetCustomProperty("RPS_WorldIcon_Winner")

local Tournament = require(prop_TournamentMgr)

local tourney = nil -- Tournament.New()

local spawnedStages = {}
local listeners = {}

function StartTournament()
  local players = Game.GetPlayers()
  if tourney ~= nil then
    print("Tournament already in progress.")
    return
  elseif #players < 2 then
    print("Need at least two players!")
    return
  else
    tourney = Tournament.New()
    table.insert(listeners, tourney.roundCompleteEvent:Connect(OnRoundEnd))
    table.insert(listeners, tourney.tournamentCompleteEvent:Connect(OnTournamentEnd))
    for _, p in pairs(players) do
      tourney:AddPlayer(p.id)
    end
    StartRound()
  end
end


function StartRound()
  if tourney.isComplete then
    print("no matches left to make")
    return
  end
  tourney:GenerateMatches()
  local matches = tourney:GetActiveMatches()
  local STAGE_ORIGIN = Vector3.New(0, 0, 200)
  for k,match in pairs(matches) do
    local stage = World.SpawnAsset(propRPS_MatchStage)
    local stagePos = STAGE_ORIGIN + Rotation.New(0, 0, k * 360 / #matches) * Vector3.FORWARD * 1000
    stage:SetWorldPosition(stagePos)
    stage:LookAt(STAGE_ORIGIN)
    table.insert(spawnedStages, stage)
    if #(match.playerIds) == 2 then
      -- Start the match!
      Events.Broadcast("RPS_start_" .. stage:GetReference().id,
          match.playerIds[1],
          match.playerIds[2])
    else
      -- Someone got a bye!
      print("No match for", match.playerIds[1])
      tourney:SubmitScore(match.playerIds[1], 1)
    end
  end

end


function OnRoundEnd()
  local stagesToDespawn = {table.unpack(spawnedStages)}
  spawnedStages = {}

  Task.Spawn(function()
    Task.Wait(3)
    for k,v in pairs(stagesToDespawn) do
      v:Destroy()
    end
    Task.Wait(2)

    StartRound()
  end)
end


function OnTournamentEnd(winnerList)
  print("The winner is", winnerList[1], winnerList)
  World.SpawnAsset(propRPS_WorldIcon_Winner, {position = Game.FindPlayer(winnerList):GetWorldPosition()})
  for k,v in pairs(listeners) do
    v:Disconnect()
  end
end

function OnReceiveResults(playerId, score)
  if tourney ~= nil then
    tourney:SubmitScore(playerId, score)
  end
end

-- Set up some events:

Events.Connect("RPS_StartTourney", StartTournament)
Events.Connect("RPS_Result", OnReceiveResults)