Scriptname CheatRoomActiveButton05 extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	Game.AddPerkPoints(1)
	Debug.Notification("1 PerkPoint added!")
EndEvent