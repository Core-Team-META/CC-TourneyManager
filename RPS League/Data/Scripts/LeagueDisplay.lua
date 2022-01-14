-- Custom 
local TEXT_PANEL = script:GetCustomProperty("TextPanel"):WaitForObject() ---@type UIPanel
local _RICH_TEXT_MGR = script:GetCustomProperty("_RichTextMgr")
local UICONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject() ---@type UIContainer
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject() ---@type Trigger

local rtm = require(_RICH_TEXT_MGR)

UICONTAINER.visibility = Visibility.FORCE_OFF

local player = Game.GetLocalPlayer()

local LeagueState = {
  CLOSED = 0,
  OPEN_FOR_ENTRY = 1,
  MATCHES = 2,
  MATCHES_COMPLETE = 3,
  LEAGUE_COMPLETE = 4,
}

local MatchResult = {
  INCOMPLETE = 1,
  PLAYER_WON = 2,
  PLAYER_LOST = 3,
  DRAW = 4,
}

local MatchColors = {
  "WHITE",
  "GREEN",
  "RED",
  "WHITE",
}

--[[
local text = [[
<size 40>Hello world,</size>
<size 18>small text,</size>
<size 10>Barely read at all text</size>
]]


--UI.SetCursorVisible(true)
--UI.SetCanCursorInteractWithUI(true)


--rtm.SetImageSource(propImageDir)
--rtm.DisplayText(TEXT_PANEL, text, {leftMargin = 20, topMargin = 20, rightMargin = 20, size=30})


--local player = Game.GetLocalPlayer()
--player.lookSensitivity = 0



function DisplayLeagueStatus()
  local data = player:GetPrivateNetworkedData("LG_PlayerData")
  if data == nil or data.state == nil or data.state == LeagueState.CLOSED then
    text = [[
      <color yellow>No league active!</color>
    ]]
  elseif data.isInLeague then
    local playersToPlay = {}
    local seenPlayers = {}

    print("eh?")
    for k,match in pairs(data.matches) do
      print("matches")
      for kk, pid in pairs(match.playerIds) do
        if player.id ~= pid then -- make sure it's someone else!
          --print(kk, ":", pid)
          if seenPlayers[pid] == nil then -- we haven't seen them yet
            if not match.isComplete then
              seenPlayers[pid] = MatchResult.INCOMPLETE
            elseif match.playerScores[pid] < match.playerScores[player.id] then
              seenPlayers[pid] = MatchResult.PLAYER_WON
            elseif match.playerScores[pid] > match.playerScores[player.id] then
              seenPlayers[pid] = MatchResult.PLAYER_LOST
            else
              seenPlayers[pid] = MatchResult.DRAW
            end
            table.insert(playersToPlay, pid)
          end
        end
      end
    end

    text = "<color green>Players left to play this league:</color>\n"
    for k,v in pairs(playersToPlay) do
      print(v, ":", seenPlayers[v])
      text = text .. string.format("\n<color %s>%s</color>",
          MatchColors[seenPlayers[v]], v)
    end
    print("text:")
    print(text)

    for k,v in pairs(TEXT_PANEL:GetChildren()) do
      v:Destroy()
    end
  end

  rtm.DisplayText(TEXT_PANEL, text, {leftMargin = 20, topMargin = 20, rightMargin = 20, size=30})
end

function OnOverlap(trigger, other)
  if other == player then
    UICONTAINER.visibility = Visibility.INHERIT
    DisplayLeagueStatus()
  end
end

function OnEndOverlap(trigger, other)
  if other == player then
    UICONTAINER.visibility = Visibility.FORCE_OFF
  end
end


TRIGGER.beginOverlapEvent:Connect(OnOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
