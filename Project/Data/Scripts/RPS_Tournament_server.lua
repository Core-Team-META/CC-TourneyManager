local prop_TournamentMgr = script:GetCustomProperty("_TournamentMgr")
local propRPS_MatchStage = script:GetCustomProperty("RPS_MatchStage")

local Tournament = require(prop_TournamentMgr)

local tourney = nil -- Tournament.New()

local spawnedStages = {}

function StartTournament()
  local players = Game.GetPlayers()
  if tourney ~= nil then
    print("Tournament already in progress.")
    return
  else
    tourney = Tournament.New()
    for _, p in pairs(players) do
      tourney:AddPlayer(p.id)
    end
    StartRound()
  end
end


function StartRound()
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






-- Set up some events:

Events.Connect("RPS_StartTourney", StartTournament)