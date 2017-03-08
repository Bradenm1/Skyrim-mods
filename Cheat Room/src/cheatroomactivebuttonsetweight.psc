Scriptname CheatRoomActiveButtonSetWeight extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	Game.GetPlayer().SetWeight(110.0)
 	Debug.Trace("Sheep spell added to the player")
EndEvent