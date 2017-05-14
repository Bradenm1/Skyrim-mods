Scriptname CheatRoomActiveButton15MapMarkers extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	Game.ShowAllMapMarkers()
	Debug.Notification("View Map")
EndEvent