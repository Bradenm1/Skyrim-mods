Scriptname CheatRoomActiveButton30XP extends ObjectReference  

Message Property Menu01  Auto  

ObjectReference Property XMarker  Auto  

Event OnActivate(ObjectReference akActionRef)
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		Teleport()
	endIf
EndEvent

Function Teleport()
	Game.GetPlayer().MoveTo(XMarker)
EndFunction