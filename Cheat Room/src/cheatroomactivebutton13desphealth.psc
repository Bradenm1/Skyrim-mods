Scriptname CheatRoomActiveButton13DespHealth extends ObjectReference  

Potion Property PotionDesp  Auto  

ObjectReference Property XMarker  Auto  

Event OnActivate(ObjectReference akActionRef)
	 XMarker.PlaceAtMe(PotionDesp)
EndEvent
