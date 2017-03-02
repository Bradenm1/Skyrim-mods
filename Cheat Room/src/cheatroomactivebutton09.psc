Scriptname CheatRoomActiveButton09 extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	Game.GetPlayer().DispelAllSpells()
	Debug.Notification("All Spells Removed")
EndEvent