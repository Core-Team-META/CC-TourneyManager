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

  lm.PlayerSignup(player)
  -- make sure player is not already in entrants
  -- Remove stuff.
end


function OnPlayerJoin()
  -- Is the current league active?
  -- Do they have an active match waiting?
  -- Do they have an active match concluded, waiting for them to see results?
end






Initialize()

Events.Connect("RPS_StartLeague", OnLeagueStart)
Events.Connect("RPS_DebugReset", OnDebugReset)
Events.Connect("RPS_Signup", OnPlayerSignup)
Events.Connect("RPS_DebugOut", OnDebugOut)
