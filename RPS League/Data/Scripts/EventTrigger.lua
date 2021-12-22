
-- Custom 
local EVENT_TO_FIRE = script:GetCustomProperty("EventToFire")
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject() ---@type Trigger
local ARGUMENTS = script:GetCustomProperty("Arguments")

if TRIGGER == nil then TRIGGER = script.parent end

function OnInteract(trigger, player)
  print("Firing event", EVENT_TO_FIRE)
  Events.Broadcast(EVENT_TO_FIRE, player, CoreString.Split(ARGUMENTS, ","))
end





TRIGGER.interactedEvent:Connect(OnInteract)
