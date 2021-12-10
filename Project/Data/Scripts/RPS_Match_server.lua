
-- Custom 
local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propPlayerSpot1 = script:GetCustomProperty("PlayerSpot1"):WaitForObject()
local propPlayerSpot2 = script:GetCustomProperty("PlayerSpot2"):WaitForObject()
local propRPS_action_rock = script:GetCustomProperty("RPS_action_rock")
local propRPS_action_paper = script:GetCustomProperty("RPS_action_paper")
local propRPS_action_scissors = script:GetCustomProperty("RPS_action_scissors")
local propRPS_WorldIcon_Rock = script:GetCustomProperty("RPS_WorldIcon_Rock")
local propRPS_WorldIcon_Paper = script:GetCustomProperty("RPS_WorldIcon_Paper")
local propRPS_WorldIcon_Scissors = script:GetCustomProperty("RPS_WorldIcon_Scissors")
local propRPS_LoserExplosion = script:GetCustomProperty("RPS_LoserExplosion")


local slotList = { propPlayerSpot1, propPlayerSpot2 }

local actions = {propRPS_action_rock, propRPS_action_paper, propRPS_action_scissors}
local popupIcons = {propRPS_WorldIcon_Rock, propRPS_WorldIcon_Paper, propRPS_WorldIcon_Scissors}

local playerList = {}
local STATE_GAME_NOT_STARTED = "game not started"
local STATE_WAITING_FOR_MOVES = "waiting for moves"
local STATE_DISPLAYING_OUTCOME = "displaying outcome"

local currentMatchState = STATE_GAME_NOT_STARTED
local selectionsReceived = 0

function StartMatch(p1, p2)
  currentMatchState = STATE_WAITING_FOR_MOVES
  print("match started:", p1, p2)
  -- todo: make this not debug logic!
  if p1 ~= nil then ConnectPlayer(Game.FindPlayer(p1), slotList[1]) end
  if p2 ~= nil then ConnectPlayer(Game.FindPlayer(p2), slotList[2]) end
end


function SelectionMade(player, selection)
  if playerList[player.id] == nil then return end
  print("player", player.name, "selected", selection)
  if playerList[player.id] == -1 then selectionsReceived = selectionsReceived + 1 end
  playerList[player.id] = selection
  print("selections received:", selectionsReceived)

  if selectionsReceived >= 2 then
    print("time for outcomes!")
    currentMatchState = STATE_DISPLAYING_OUTCOME
    Task.Spawn(DisplayMatchResults)
  end
end

local STANCE = "unarmed_stance"


function DisplayMatchResults()
  print("Match results!")
  local spawnedActions = {}
  local plist = {}
  for pid, selection in pairs(playerList) do
    local player = Game.FindPlayer(pid)
    local action = World.SpawnAsset(actions[selection])
    spawnedActions[pid] = action
    action.owner = player
    Task.Wait()
    action:Activate()
    local icon = World.SpawnAsset(popupIcons[selection], {position = player:GetWorldPosition()})
    table.insert(plist, {player = player, pid = pid, selection = selection})
  end

  if #plist ~= 2 then
    warn("Somehow resolving a match with wrong # of players:" .. tostring(#plist))
  end

  local s1 = plist[1].selection - 1
  local s2 = plist[2].selection - 1
  local winner = nil
  local loser = nil
  local isDraw = false
  if s1 == (s2 + 1) % 3 then
    winner = plist[1]
    loser = plist[2]
  elseif s2 == (s1 + 1) % 3 then
    winner = plist[2]
    loser = plist[1]
  elseif s1 == s2 then
    isDraw = true
  else
    warn("Somehow no one lost the match, but it also wasn't a draw??")
    print(s1, s2)
  end

  Task.Wait(3)
  if not isDraw then
    print("Winner:", winner.player.name)
    currentMatchState = STATE_GAME_NOT_STARTED
    Task.Wait(1)
    World.SpawnAsset(propRPS_LoserExplosion, {position = loser.player:GetWorldPosition()})
    DisconnectPlayer(plist[1].player)
    DisconnectPlayer(plist[2].player)
    loser.player:Die()
    Task.Wait()
    loser.player:SetVelocity(Vector3.New(math.random(-500, 500), math.random(-500, 500), 1000))
    Task.Wait(3)
    loser.player:Spawn()
  else
    print("It was a draw!")
    Task.Wait(2)
    currentMatchState = STATE_WAITING_FOR_MOVES
    StartMatch(plist[1].player, plist[2].player) 
 end
end

function ConnectPlayer(player, slot)
  print("connecting player", player)
  --bindListener = player.bindingPressedEvent:Connect(OnBindPressed)
  --propTrigger.isEnabled = false
  --player.serverUserData.blockFlying = true

  playerList[player.id] = -1

  player:SetWorldPosition(slot:GetWorldPosition())
  player:SetWorldRotation(slot:GetWorldRotation())
  
  --player:AttachToCoreObject(propPlayerAnchor)
  local jumps = player.maxJumpCount
  local movespeed = player.maxWalkSpeed
  player.maxJumpCount = 0
  player.maxWalkSpeed = 0
  player:ActivateWalking()
  player.canMount = false
  
  --_G.StanceStack.Add(player, STANCE, script.id)
  player.animationStance = STANCE

  Events.BroadcastToPlayer(player, "RPS_SC")
end



function DisconnectPlayer(player)
  --bindListener:Disconnect()
  --propTrigger.isEnabled = true
  --player.serverUserData.blockFlying = nil

  playerList[player.id] = nil

  player:Detach()
  --_G.StanceStack.Remove(player, currentStance, script.id)
  player.animationStance = "unarmed_stance"

  player.canMount = true

  player.maxJumpCount = 2
  player.maxWalkSpeed = 800

end

function OnPlayerLeft(p)
  if p == player then DisconnectPlayer() end
end


Events.Connect("RPS_start_" .. propRoot:GetReference().id, StartMatch)
Events.ConnectForPlayer("RPS_C", SelectionMade)
print("RPS_start_" .. propRoot:GetReference().id)
Game.playerLeftEvent:Connect(OnPlayerLeft)


-----


