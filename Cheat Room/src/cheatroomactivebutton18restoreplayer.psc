Scriptname CheatRoomActiveButton18RestorePlayer extends ObjectReference  

Message Property MessageRestore  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	RestoreMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function RestoreMenu()
	int iButton02 = MessageRestore.Show()
	if iButton02 == 0;
	endif
endFunction