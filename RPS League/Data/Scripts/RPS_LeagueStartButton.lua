local trigger = script.parent


function OnInteract(trigger, player)
  print("beep")
  Events.Broadcast("RPS_StartLeague")
end


trigger.interactedEvent:Connect(OnInteract)