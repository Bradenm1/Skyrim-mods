Scriptname CheatRoomPlayerEdit extends activemagiceffect  

SPELL Property HideThingy  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Game.ShowRaceMenu()
	akCaster.UnequipSpell(HideThingy, 0)
	akCaster.UnequipSpell(HideThingy, 1)
endEVENT
