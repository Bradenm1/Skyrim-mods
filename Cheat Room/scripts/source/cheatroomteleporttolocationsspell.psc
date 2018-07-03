Scriptname CheatRoomTeleportToLocationsSpell extends activemagiceffect  

;=======Properties=======
Message Property MainMenu  Auto
Message Property Menu01  Auto  
Message Property Menu02  Auto    
Message Property Menu03  Auto 
Message Property Menu04  Auto  

ObjectReference[] Property DragonBornREF  Auto  
ObjectReference[] Property DawnGuardREF  Auto  
ObjectReference[] Property SkyrimREF  Auto  
ObjectReference[] Property TestingREF  Auto  

;=======CODE START=======
;Code is used to teleport the player to selected places

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
			Elseif iButton01 ==3
				Menu04()
			endif
		endif
	endwhile
EndFunction

;Dragonborn Menu
Function Menu01()
	Int iButton02 = Menu01.Show()
	if iButton02 == 0;
		Game.GetPlayer().MoveTo(DragonBornREF[iButton02])
	Elseif iButton02 ==1
		Game.GetPlayer().MoveTo(DragonBornREF[iButton02])
	Elseif iButton02 ==2
		Game.GetPlayer().MoveTo(DragonBornREF[iButton02])
	Elseif iButton02 ==3
		Game.GetPlayer().MoveTo(DragonBornREF[iButton02])
	endif
EndFunction

;Dawnguard Menu
Function Menu02()
	Int iButton02 = Menu02.Show()
	if iButton02 == 0;
		Game.GetPlayer().MoveTo(DawnGuardREF[iButton02])
	Elseif iButton02 ==1
		Game.GetPlayer().MoveTo(DawnGuardREF[iButton02])
	Elseif iButton02 ==2
		Game.GetPlayer().MoveTo(DawnGuardREF[iButton02])
	Elseif iButton02 ==3
		Game.GetPlayer().MoveTo(DawnGuardREF[iButton02])
	Elseif iButton02 ==4
		Game.GetPlayer().MoveTo(DawnGuardREF[iButton02])
	endif
EndFunction

;Vanilla Skyrim Menu
Function Menu03()
	Int iButton02 = Menu03.Show()
	if iButton02 == 0;
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	Elseif iButton02 ==1
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	Elseif iButton02 ==2
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	Elseif iButton02 ==3
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	Elseif iButton02 ==4
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	Elseif iButton02 ==5
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	Elseif iButton02 ==6
		Game.GetPlayer().MoveTo(SkyrimREF[iButton02])
	endif
EndFunction

;Random Rooms Menu
Function Menu04()
	Int iButton02 = Menu04.Show()
	if iButton02 == 0;
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==1
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==2
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==3
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==4
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==5
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==6
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==7
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	Elseif iButton02 ==8
		Game.GetPlayer().MoveTo(TestingREF[iButton02])
	endif
EndFunction

