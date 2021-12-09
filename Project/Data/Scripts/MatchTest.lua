local trigger = script.parent

function OnTriggerPress(trigger, player)
  local players = Game.GetPlayers()
  --if #players > 1 then
  Events.Broadcast("RPS_start_" .. "DE1BF2E3793A0284", players[1], players[2])
  --end

end



trigger.interactedEvent:Connect(OnTriggerPress)
