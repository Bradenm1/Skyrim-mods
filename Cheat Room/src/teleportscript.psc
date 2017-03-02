Scriptname TeleportScript extends activemagiceffect  

Message Property MainMenu  Auto
Message Property Menu01  Auto
Message Property Menu02  Auto
ObjectReference[] Property Xmarker00  Auto


Event OnEffectStart(Actor akTarget, Actor akCaster)
	int iButton01 = 0
	bool Menu = True
	While Menu
		if iButton01 != -1
			iButton01 = MainMenu.Show()
			Menu = False
			if iButton01 == 0
				Xmarker00[1].moveto(aKTarget)
				aKTarget.moveto(Xmarker00[0])
			Elseif iButton01 ==1
				aKTarget.moveto(Xmarker00[1])
			Elseif iButton01 ==2
				Menu01(akTarget)
			Elseif iButton01 ==3
				Menu02(akTarget)
			;Elseif iButton01 ==4
			;	int random = Utility.RandomInt(0, RandLocation.GetSize())
			;	string LocationRand = RandLocation.getAt(random) as string
			;	Debug.CenterOnCell(LocationRand)
			endif
		endif
	endwhile
EndEvent

;Everything below here is unused

Function Menu01(Actor akTarget)
	int iButton02 = Menu01.Show()
	if iButton02 == 0;
		aKTarget.moveto(Xmarker00[2])
	Elseif iButton02 ==1
		aKTarget.moveto(Xmarker00[3])
	Elseif iButton02 ==2
		aKTarget.moveto(Xmarker00[4])
	Elseif iButton02 ==3
		aKTarget.moveto(Xmarker00[5])
	Elseif iButton02 ==4
		aKTarget.moveto(Xmarker00[6])
	Elseif iButton02 ==5
		aKTarget.moveto(Xmarker00[7])
	Elseif iButton02 ==6
		aKTarget.moveto(Xmarker00[8])
	Elseif iButton02 ==7
		aKTarget.moveto(Xmarker00[9])
	Elseif iButton02 ==8
		aKTarget.moveto(Xmarker00[10])
	endif
EndFunction

Function Menu02(Actor akTarget)
	int iButton03 = Menu02.Show()
	if iButton03 == 0;
		Xmarker00[2].moveto(aKTarget)
	Elseif iButton03 ==1
		Xmarker00[3].moveto(aKTarget)
	Elseif iButton03 ==2
		Xmarker00[4].moveto(aKTarget)
	Elseif iButton03 ==3
		Xmarker00[5].moveto(aKTarget)
	Elseif iButton03 ==4
		Xmarker00[6].moveto(aKTarget)
	Elseif iButton03 ==5
		Xmarker00[7].moveto(aKTarget)
	Elseif iButton03 ==6
		Xmarker00[8].moveto(aKTarget)
	Elseif iButton03 ==7
		Xmarker00[9].moveto(aKTarget)
	Elseif iButton03 ==8
		Xmarker00[10].moveto(aKTarget)
	endif		
EndFunction

FormList Property RandLocation  Auto  
