Scriptname CheatRoomActiveButton13DespHealth extends ObjectReference  

;=======Properties=======
Potion Property PotionDesp  Auto  

ObjectReference Property XMarker  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	 XMarker.PlaceAtMe(PotionDesp)
EndEvent
