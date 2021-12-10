local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

function OnTrigger(trigger, player)
  Events.Broadcast("RPS_StartTourney")
end



propTrigger.interactedEvent:Connect(OnTrigger)
