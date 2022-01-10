
-- Custom 
local propRPS_UI = script:GetCustomProperty("RPS_UI"):WaitForObject()
local propBtn_Rock = script:GetCustomProperty("btn_Rock"):WaitForObject()
local propBtn_Paper = script:GetCustomProperty("btn_Paper"):WaitForObject()
local propBtn_Scissors = script:GetCustomProperty("btn_Scissors"):WaitForObject()
local propTimerBar = script:GetCustomProperty("TimerBar"):WaitForObject()
local propHighlight = script:GetCustomProperty("Highlight"):WaitForObject()
local propButtonClickPressCore01SFX = script:GetCustomProperty("ButtonClickPressCore01SFX"):WaitForObject()
local propAnnouncementText = script:GetCustomProperty("AnnouncementText"):WaitForObject() ---@type UIText
local propAnnouncementPanel = script:GetCustomProperty("AnnouncementPanel"):WaitForObject() ---@type UIPanel

local iconLabels = propRPS_UI:FindDescendantsByName("IconLabel")
local icons = {propBtn_Rock, propBtn_Paper, propBtn_Scissors}


local TEXT_DISPLAY_TIME = 3


local reverseIcons = {}
-- make a quick reverse lookup
for k,v in pairs(icons) do
  reverseIcons[v] = k
end

local isUIVisible = false
local choiceStartTime = -1


local player = Game.GetLocalPlayer()

local BASE_ICONLABEL_SIZE = 70
local ICONLABEL_VARIANCE = 20

local CHOICE_TIME = 5 -- in seconds

local currentSelection = 1

function StartChoice()
  propRPS_UI.visibility = Visibility.INHERIT
  isUIVisible = true

  UI.SetCursorVisible(true)
  UI.SetCanCursorInteractWithUI(true)

  currentSelection = math.random(3)
  choiceStartTime = time()
end


function EndChoice()
  Events.BroadcastToServer("RPS_C", currentSelection)
  isUIVisible = false
  propRPS_UI.visibility = Visibility.FORCE_OFF

  UI.SetCursorVisible(false)
  UI.SetCanCursorInteractWithUI(false)

end



function Tick()
  if isUIVisible then
    local t = time()

    -- Pulse numbers
    for k,v in pairs(iconLabels) do
      v.fontSize = math.floor(BASE_ICONLABEL_SIZE + math.sin(t * 8) * ICONLABEL_VARIANCE)
    end

    -- Move highlight around
    local currentIcon = icons[currentSelection]

    local targetHLPos = Vector2.New(currentIcon.x, currentIcon.y)
    local currentHLPos = Vector2.New(propHighlight.x, propHighlight.y)

    local ZOOM_FACTOR = 0.2
    local newPos = (targetHLPos * ZOOM_FACTOR) + (currentHLPos * (1 - ZOOM_FACTOR))

    propHighlight.x = newPos.x
    propHighlight.y = newPos.y

    -- Fill timer bar
    local progress = (t - choiceStartTime) / CHOICE_TIME
    propTimerBar.progress = progress
    if progress > 1 then
      EndChoice()
    end
  end

end

function OnBindingPressed(player, binding)
  if binding == "ability_extra_1" then
    propButtonClickPressCore01SFX:Play()
    currentSelection = 1
  elseif binding == "ability_extra_2" then
    propButtonClickPressCore01SFX:Play()
    currentSelection = 2
  elseif binding == "ability_extra_3" then
    propButtonClickPressCore01SFX:Play()
    currentSelection = 3
  end
end

function OnIconClicked(btn)
  if reverseIcons[btn] ~= nil then
    currentSelection = reverseIcons[btn]
    propButtonClickPressCore01SFX:Play()
  end
end


local hideTextTask = nil
local TextCode = {
  GAME_START = 1,
  YOU_WIN = 2,
  YOU_LOSE = 3,
  TIED = 4,
  GOT_BYE = 5,
  ANNOUNCE_WINNER = 6
}

local TextString = {
  "RPS... GO!",
  "You win the match!",
  "You lost the match!",
  "It's a tie!  Do over!",
  "You got a bye!  You'll play next round.",
  "%s is the winner!"
}

function DisplayText(textCode, targetPlayer)
  local name = (targetPlayer or {name = ""}).name
  propAnnouncementText.text = (string.format(TextString[textCode], name))
  propAnnouncementPanel.visibility = Visibility.INHERIT
  print("Displaying text!", propAnnouncementText.text)
  
  if hideTextTask ~= nil then hideTextTask:Cancel() end
  Task.Spawn(function()
    Task.Wait(TEXT_DISPLAY_TIME)
    propAnnouncementPanel.visibility = Visibility.FORCE_OFF
    hideTextTask = nil
  end)
end




for k,v in pairs(icons) do
  v.clickedEvent:Connect(OnIconClicked)
end

player.bindingPressedEvent:Connect(OnBindingPressed)
Events.Connect("RPS_SC", StartChoice)
Events.Connect("RPS_DT", DisplayText)


--StartChoice()