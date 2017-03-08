Scriptname CheatRoomActiveButton27Bug extends ObjectReference  

ObjectReference Property Coc01  Auto
ObjectReference Property Coc02  Auto    

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, False)
	Game.GetPlayer().MoveTo(Coc01)
	Utility.Wait(0.1)
	Game.ShowRaceMenu()
	Game.GetPlayer().MoveTo(Coc02)
	Game.EnablePlayerControls()
	Debug.Notification("Don't zoom out and look down, some random bug...")
EndEvent