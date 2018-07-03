Scriptname CheatRoomActiveButton04ShowRaceMenu extends ObjectReference  

Message Property Menu01  Auto  

ObjectReference Property COCREF  Auto  


Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		Game.ShowRaceMenu()
	Elseif iButton01 ==1
		Game.ShowLimitedRaceMenu()
	Elseif iButton01 ==2
		Game.GetPlayer().MoveTo(COCREF)
		Utility.Wait(1)
		Game.ShowRaceMenu()
	Elseif iButton01 ==3
		Game.GetPlayer().MoveTo(COCREF)
	endif
endFunction
