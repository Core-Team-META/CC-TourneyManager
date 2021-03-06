-- Custom 
local TEXT_PANEL = script:GetCustomProperty("TextPanel"):WaitForObject() ---@type UIPanel
local _RICH_TEXT_MGR = script:GetCustomProperty("_RichTextMgr")
local UICONTAINER = script:GetCustomProperty("UIContainer"):WaitForObject() ---@type UIContainer
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject() ---@type Trigger
local STATE_TEXT = script:GetCustomProperty("StateText"):WaitForObject() ---@type UIText

local rtm = require(_RICH_TEXT_MGR)

UICONTAINER.visibility = Visibility.FORCE_OFF

local player = Game.GetLocalPlayer()

local LeagueState = {
  CLOSED = 0,
  OPEN_FOR_ENTRY = 1,
  MATCHES = 2,
  LEAGUE_DOESNT_EXIST = 3,
  LEAGUE_COMPLETE = 4,

}

local LeagueStateText = {
  [LeagueState.CLOSED] = "No leagues are active.",
  [LeagueState.OPEN_FOR_ENTRY] = "League is open for signups!\n%s",
  [LeagueState.MATCHES] = "Matches are in progress!\n%s",
  [LeagueState.LEAGUE_DOESNT_EXIST] = "There is no league to join.",
  [LeagueState.LEAGUE_COMPLETE] = "League is complete!",
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

  local text = ""
  if data == nil then
    -- we dont' have data yet
    return
  end


  if data.state == LeagueState.OPEN_FOR_ENTRY then
    if data.isInLeague then
      text = "<color green>You are registered for the league!</color>"
    else
      text = "<color yellow>A league is open for signups, but you are not entered yet!</color>"
    end
  elseif data.state == LeagueState.MATCHES then
    if data.isInLeague then
      -- if they are in the league, print out the matches.
      local playersToPlay = {}
      local seenPlayers = {}

      for k, entry in pairs(data.playerEntries) do
        local otherPid = entry.playerId
        local score = data.matchData[otherPid]
        --print("--", otherPid)
        --for k,v in pairs(data.matchData) do print(k,v) end
      --for otherPid, score in pairs(data.matchData) do
        table.insert(playersToPlay, {pid = otherPid, name = entry.name})
        if score == -1 then
          seenPlayers[otherPid] = MatchResult.INCOMPLETE
        elseif score == 1 then
          seenPlayers[otherPid] = MatchResult.PLAYER_LOST
        elseif score == 2 then
          seenPlayers[otherPid] = MatchResult.PLAYER_WON
        else
          print("Weird score:", score)
        end
      end

      text = "<color green>Players in this league:\n</color><panel 600>"
      for k,pdata in pairs(playersToPlay) do
        print(pdata.pid, ":", seenPlayers[pdata.pid], MatchColors[seenPlayers[pdata.pid]])
        text = text .. string.format("\n<color %s>%s</color>",
            MatchColors[seenPlayers[pdata.pid]] or Color.WHITE, pdata.name)
        if seenPlayers[pdata.pid] == MatchResult.PLAYER_WON then
          text = text .. " (win)"
        elseif seenPlayers[pdata.pid] == MatchResult.PLAYER_LOST then
          text = text .. " (loss)"
        end

      end
      text = text .. "</panel>"
      text = text .. string.format("<panel -1><size 30>\nRank: %d\nScore: %d</panel>", data.rank, data.score)

    else
      text = "<color yellow>A league is in progress, but you did not sign up!</color>"
    end
  elseif data.state == LeagueState.LEAGUE_COMPLETE then
    text = "<color yellow>The league has ended!</color>\n"
    text = text .. "Rankings:"

    local rankedPlayers = {}
    for k,v in pairs(data.playerEntries) do
      rankedPlayers[k] = v
    end
    table.sort(rankedPlayers, function(a, b) return a.score > b.score end)
    for k, v in ipairs(rankedPlayers) do
      text = text .. string.format("\n%d: %s (%d)", k, v.name, v.score)
    end
    -- todo: print rankings here!
  end




  if not data.isInLeague then
    print("Not in a league!")
    text = "<color yellow>You are not in any leagues!</color>"
  else
    print("text:")
    print(text)

  end

  for k,v in pairs(TEXT_PANEL:GetChildren()) do
    v:Destroy()
  end
  rtm.DisplayText(TEXT_PANEL, text, {leftMargin = 20, topMargin = 20, rightMargin = 20, size=25})
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

local SECONDS = 1
local MINUTES = 60 * SECONDS
local HOURS = 60 * MINUTES
local DAYS = 24 * HOURS

function PrettyTime(t)
  local days = t // DAYS
  t = t % DAYS
  local hours = t // HOURS
  t = t % HOURS
  local minutes = t // MINUTES
  t = t % MINUTES
  local seconds = t // SECONDS
  local result = ""
  local forceDisplay = false

  if days > 0 then
    forceDisplay = true
    result = result .. string.format("%02d:", days)
  end
  if hours > 0 or forceDisplay then
    forceDisplay = true
    result = result .. string.format("%02d:", hours)
  end
  if minutes > 0 or forceDisplay then
    forceDisplay = true
    result = result .. string.format("%02d:", minutes)
  end

  result = result .. string.format("%02d", seconds)

  return result
end


function Tick()
  local data = player:GetPrivateNetworkedData("LG_PlayerData") or {}
  local timeRemaining = (data.stateEndTime or -1) - os.time()
  local timeRemainingText = PrettyTime(timeRemaining)
  --print("data.state = ", data.state)
  STATE_TEXT.text = string.format(LeagueStateText[data.state or LeagueState.CLOSED], timeRemainingText)
  Task.Wait(1)
end


TRIGGER.beginOverlapEvent:Connect(OnOverlap)
TRIGGER.endOverlapEvent:Connect(OnEndOverlap)
