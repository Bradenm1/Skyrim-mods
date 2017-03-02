Scriptname CheatRoomActiveButton19SaveSettings extends ObjectReference  

Message Property MessageSave  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	SaveMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function SaveMenu()
	int iButton01 = MessageSave.Show()
	if iButton01 == 0;
	endif
endFunction