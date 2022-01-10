local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

function OnTrigger(trigger, player)
  if true or player.name == "Chris" or Environment.IsPreview() then
    Events.Broadcast("RPS_StartTourney")
  end
end



propTrigger.interactedEvent:Connect(OnTrigger)
