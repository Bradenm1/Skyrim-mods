Scriptname CheatRoomPlayerTeleportNPCDefault extends activemagiceffect  

ObjectReference Property XMarker  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.MoveTo(XMarker)
endEVENT