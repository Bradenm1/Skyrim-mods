Scriptname CheatRoomPlayerSilentKill extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.Kill()
	akTarget.KillEssential()
endEVENT