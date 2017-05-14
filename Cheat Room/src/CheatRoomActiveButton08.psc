Scriptname CheatRoomActiveButton08 extends ObjectReference  

Message Property ActorReset  Auto
FormList Property ActorList  Auto

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	RestoreActors()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function RestoreActors()
	int iButton02 =  ActorReset.Show()
	if iButton02 == 0
		int Index = 0
		while (Index <  ActorList.GetSize())
			Actor temp01 = ActorList.getAt(Index) as Actor
			;temp01.MoveToPackageLocation()
			temp01.MoveTo(XMarker)
			Index+= 1
		endWhile
		Debug.Notification("Done")
	endif
endFunction
ObjectReference Property XMarker  Auto  
