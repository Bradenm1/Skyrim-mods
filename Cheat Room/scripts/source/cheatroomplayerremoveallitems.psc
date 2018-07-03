Scriptname CheatRoomPlayerRemoveAllItems extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.RemoveAllItems()
endEVENT