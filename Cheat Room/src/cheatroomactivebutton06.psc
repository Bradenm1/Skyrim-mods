Scriptname CheatRoomActiveButton06 extends ObjectReference  

Int Property PerksAddAmmount  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.AddPerkPoints(PerksAddAmmount)
	Debug.Notification(PerksAddAmmount + "  PerkPoint added!")
EndEvent

