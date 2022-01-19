-- Custom 
local CONCUR_CREATOR_LEAGUE = script:GetCustomProperty("ConcurCreatorLeague") ---@type NetReference
local _LEAGUE_MGR = script:GetCustomProperty("_LeagueMgr")

local lm = require(_LEAGUE_MGR)

function Initialize()
  lm.Initialize(CONCUR_CREATOR_LEAGUE)
end


function OnLeagueStart()
  lm.StartLeague()
end

function OnDebugReset()
  lm.ResetSorageKey()
end


function OnDebugOut()
  lm.DebugOut()
end



function OnPlayerSignup(player)
  print("Signup:", player.name)

  local signupResult = lm.PlayerSignup(player.id, player.name)

  if signupResult == 0 then
    Events.BroadcastToPlayer(player, "RPS_PMP", "SIGN")
  elseif signupResult == 1 then
    Events.BroadcastToPlayer(player, "RPS_PMP", "ASIGN")
  elseif signupResult == 2 then
    Events.BroadcastToPlayer(player, "RPS_PMP", "INPROG")
  end
  
  lm.PlayerSignup("TP1", "Test_Player_1")
  lm.PlayerSignup("TP2", "Test_Player_2")
  lm.PlayerSignup("TP3", "Test_Player_3")
  lm.PlayerSignup("TP4", "Test_Player_4")
  lm.PlayerSignup("TP5", "Test_Player_5")
  lm.PlayerSignup("TP6", "Test_Player_6")
  
end


function OnPlayerJoin()
  -- Is the current league active?
  -- Do they have an active match waiting?
  -- Do they have an active match concluded, waiting for them to see results?
end


function OnDebugAdvance()
  lm.DebugAdvance()
end



function OnDebugReportMatches()
  lm.DebugReportRandomScores(10)
end

function OnMatchResult(winner, loser)
  -- print("!!!!!!!!!!!!!!!!!!!!")
  -- print("Match complete!")
  -- print("winner:", winner)
  -- print("loser:", loser)
  lm.ReportMatchResult({[winner] = 2, [loser] = 1})
end


Initialize()

Events.Connect("RPS_StartLeague", OnLeagueStart)
Events.Connect("RPS_DebugReset", OnDebugReset)
Events.Connect("RPS_Signup", OnPlayerSignup)
Events.Connect("RPS_DebugOut", OnDebugOut)
Events.Connect("RPS_DebugAdvance", OnDebugAdvance)
Events.Connect("RPS_DebugReportMatches", OnDebugReportMatches)
Events.Connect("RPS_Result", OnMatchResult)


