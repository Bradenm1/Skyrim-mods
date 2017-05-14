Scriptname CheatRoomActiveButton35ModorSet extends ObjectReference  

;=======Properties=======
GlobalVariable Property SetorMod  Auto  

Message Property Menu01  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

;If player wants to mod or set
Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		SetorMod.SetValue(0)
	Elseif iButton01 ==1
		SetorMod.SetValue(1)
	Elseif iButton01 ==2
		SetorMod.SetValue(2)
	endif
endFunction