Scriptname CheatRoomPlayerCheatMenus extends activemagiceffect  

GlobalVariable Property GlobalVe  Auto
Message Property MainMenu  Auto    
Message Property Menu01  Auto
Message Property Menu02  Auto
Message Property Menu03  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	CheatMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

;Main Menu
Function CheatMenu(bool Menu = True, int iButton01 = 0)
	While Menu
		if iButton01 != -1
			iButton01 = MainMenu.Show()
			Menu = False
			if iButton01 == 0;
				Menu01()
			Elseif iButton01 ==1
				 Menu02()
			Elseif iButton01 ==2
				Menu03()
;			Elseif iButton01 ==3
;			Elseif iButton01 ==4
			endif
		endif
	endwhile
EndFunction


;First Menu
Function Menu01()
	int iButton02 = Menu01.Show()
	if iButton02 == 0;
		;Follower 1
		GlobalVe.SetValue(1)
	Elseif iButton02 ==1
		;Silent Kill
		GlobalVe.SetValue(2)
	Elseif iButton02 ==2
		;Resurrect
		GlobalVe.SetValue(3)
	Elseif iButton02 ==3
		;PushActorAway
		GlobalVe.SetValue(4)
	Elseif iButton02 ==4
		;TeleportToWhiterun
		GlobalVe.SetValue(5)
	Elseif iButton02 ==5
		;NPCInventory
		GlobalVe.SetValue(6)
	endif
EndFunction

;Second Menu
Function Menu02()
	int iButton02 = Menu02.Show()
	if iButton02 == 0;
		;PushActorAway
		GlobalVe.SetValue(10)
	Elseif iButton02 ==1
		;PushActorAway
		GlobalVe.SetValue(11)
	Elseif iButton02 ==2
		;PushActorAway
		GlobalVe.SetValue(12)
	Elseif iButton02 ==3
		;PushActorAway
		GlobalVe.SetValue(13)
	Elseif iButton02 ==4
		;PushActorAway
		GlobalVe.SetValue(14)
	Elseif iButton02 ==5
		;PushActorAway
		GlobalVe.SetValue(15)
	endif
EndFunction

;Third Menu
Function Menu03()
	int iButton03 = Menu03.Show()
	if iButton03 == 0;
		GlobalVe.SetValue(16)
	Elseif iButton03 ==1
		GlobalVe.SetValue(17)
	Elseif iButton03 ==2
		GlobalVe.SetValue(18)
	Elseif iButton03 ==3
		GlobalVe.SetValue(19)
	Elseif iButton03 ==4
		GlobalVe.SetValue(20)
	Elseif iButton03 ==5
		GlobalVe.SetValue(21)
	Elseif iButton03 ==6
		GlobalVe.SetValue(22)
	Elseif iButton03 ==7
		GlobalVe.SetValue(23)
	endif
EndFunction
