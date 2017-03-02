Scriptname CheatRoomActiveButton09 extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	Game.GetPlayer().RemoveAllItems()
	Debug.Notification("Removed All Items")
EndEvent