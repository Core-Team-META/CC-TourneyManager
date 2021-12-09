local propRPS_action_rock = script:GetCustomProperty("RPS_action_rock"):WaitForObject()
local propRPS_action_paper = script:GetCustomProperty("RPS_action_paper"):WaitForObject()
local propRPS_action_scissors = script:GetCustomProperty("RPS_action_scissors"):WaitForObject()
local propRoot = script:GetCustomProperty("root"):WaitForObject()
local propPlayerSpot1 = script:GetCustomProperty("PlayerSpot1"):WaitForObject()
local propPlayerSpot2 = script:GetCustomProperty("PlayerSpot2"):WaitForObject()

local slotList = { propPlayerSpot1, propPlayerSpot2 }

local playerList = {}

function StartMatch(p1, p2)
  print("match started:", p1, p2)
  -- todo: make this not debug logic!
  if p1 ~= nil then ConnectPlayer(p1, slotList[1]) end
  if p2 ~= nil then ConnectPlayer(p2, slotList[2]) end
end

function SelectionMade(player, selection)
  if playerList[player.id] == nil then return end
  print("player", player.name, "selected", selection)
end

local STANCE = "unarmed_stance"


function ConnectPlayer(player, slot)
  --bindListener = player.bindingPressedEvent:Connect(OnBindPressed)
  --propTrigger.isEnabled = false
  player.serverUserData.blockFlying = true

  playerList[player.id] = true

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
  player.serverUserData.blockFlying = nil

  playerList[player.id] = false

  player:Detach()
  --_G.StanceStack.Remove(player, currentStance, script.id)
  player.animationStance = "unarmed_stance"

  player.canMount = true

  player.maxJumpCount = 2
  player.maxWalkSpeed = 800

  --Events.BroadcastToPlayer(player, "HideStanceUI")
end

function OnPlayerLeft(p)
  if p == player then DisconnectPlayer() end
end


Events.Connect("RPS_start_" .. propRoot:GetReference().id, StartMatch)
Events.ConnectForPlayer("RPS_C", SelectionMade)
print("RPS_start_" .. propRoot:GetReference().id)
Game.playerLeftEvent:Connect(OnPlayerLeft)


-----


