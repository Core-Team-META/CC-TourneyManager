
local presetMessages = {
  ["SIGN"] = "You have joined the league!",
  ["ASIGN"] = "You have already joined the league!",
  ["INPROG"] = "The league is already in progress.",
}

local player = Game.GetLocalPlayer()

function OnReceivedMessage(message, color)
  if presetMessages[message] ~= nil then message = presetMessages[message] end
  UI.ShowFlyUpText(message, player:GetWorldPosition() + Vector3.UP * 100, {
      isBig = true,
      color = color or Color.WHITE,
      duration = 3,
  })
end






Events.Connect("RPS_PMP", OnReceivedMessage)