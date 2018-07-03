Scriptname CheatRoomActiveButton35RandomPotion extends ObjectReference  

FormList Property RandID  Auto  

ObjectReference Property XMarker  Auto  

Event OnActivate(ObjectReference akActionRef)
	Int temp01 = Utility.RandomInt(0, RandID.GetSize())
	Potion temp02 = RandID.GetAt(temp01) as Potion
	XMarker.PlaceAtMe(temp02)
EndEvent
