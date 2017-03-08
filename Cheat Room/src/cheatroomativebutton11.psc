Scriptname CheatRoomAtiveButton11 extends ObjectReference  

Message Property MessageSize  Auto  
GlobalVariable Property ScaleOld  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	SizeMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function SizeMenu(bool Menu = True, int iButton01 = 0)
	While Menu
		if iButton01 != -1
			iButton01 = MessageSize.Show()
			Menu = False
			if iButton01 == 0;
				float i = Game.GetPlayer().GetScale()
				i = i + -0.14
				Game.GetPlayer().SetScale(i)
			Elseif iButton01 ==1
				float i = Game.GetPlayer().GetScale()
				i = i + -0.04
				Game.GetPlayer().SetScale(i)
			Elseif iButton01 ==2
				float i = ScaleOld.GetValue()
				Game.GetPlayer().SetScale(i)
			Elseif iButton01 ==3
				float i = Game.GetPlayer().GetScale()
				i = i + -0.02
				Game.GetPlayer().SetScale(i)
			Elseif iButton01 ==4
				float i = Game.GetPlayer().GetScale()
				i = i +  0.10 + -0.02
				Game.GetPlayer().SetScale(i)
			endif
		endif
	endwhile
EndFunction

;Everything below here is unused

;Function SizeMenuSmall01()
;	int iButton02 = MessageSizeSmaller01.Show()
;	if iButton02 == 0;
;		Game.GetPlayer().SetScale(0.90)
;	Elseif iButton02 ==1
;		Game.GetPlayer().SetScale(0.91)
;	Elseif iButton02 ==2
;		Game.GetPlayer().SetScale(0.92)
;	Elseif iButton02 ==3
;		Game.GetPlayer().SetScale(0.93)
;	Elseif iButton02 ==4
;		Game.GetPlayer().SetScale(0.94)
;	Elseif iButton02 ==5
;		Game.GetPlayer().SetScale(0.95)
;	Elseif iButton02 ==6
;		Game.GetPlayer().SetScale(0.96)
;	Elseif iButton02 ==7
;		Game.GetPlayer().SetScale(0.97)
;	Elseif iButton02 ==8
;		Game.GetPlayer().SetScale(0.98)
;	Elseif iButton02 ==9
;		Game.GetPlayer().SetScale(0.99)
;	endif
;EndFunction

;Function SizeMenuLarge01()
;	int iButton03 = MessageSizeLarger01.Show()
;	if iButton03 == 0;
;		Game.GetPlayer().SetScale(1.01)
;	Elseif iButton03 ==1
;		Game.GetPlayer().SetScale(1.02)
;	Elseif iButton03 ==2
;		Game.GetPlayer().SetScale(1.03)
;	Elseif iButton03 ==3
;		Game.GetPlayer().SetScale(1.04)
;	Elseif iButton03 ==4
;		Game.GetPlayer().SetScale(1.05)
;	Elseif iButton03 ==5
;		Game.GetPlayer().SetScale(1.06)
;	Elseif iButton03 ==6
;		Game.GetPlayer().SetScale(1.07)
;	Elseif iButton03 ==7
;		Game.GetPlayer().SetScale(1.08)
;	Elseif iButton03 ==8
;		Game.GetPlayer().SetScale(1.09)
;	Elseif iButton03 ==9
;		Game.GetPlayer().SetScale(1.10)
;	endif		
;EndFunction
