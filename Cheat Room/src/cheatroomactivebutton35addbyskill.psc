Scriptname CheatRoomActiveButton35AddBySkill extends ObjectReference  

;=======Properties=======
GlobalVariable Property SkillPlus  Auto  
GlobalVariable Property RemoveAddBy  Auto  

Message Property Menu01  Auto  
Message Property Menu02  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu()
	;Check if player wants to add or remove
	if RemoveAddBy.GetValue() == 0
		;Add by..
		int iButton01 = Menu01.Show()
		if iButton01 == 0
			RemoveAddBy.SetValueInt(1) 
		Elseif iButton01 == 1
			SkillPlus.SetValueInt(1)
		Elseif iButton01 ==2
			SkillPlus.SetValueInt(10)
		Elseif iButton01 ==3
			SkillPlus.SetValueInt(100)
		Elseif iButton01 ==4
			SkillPlus.SetValueInt(1000)
		Elseif iButton01 ==5
			SkillPlus.SetValueInt(10000)
		endif
	Else
		;Remove by..
		int iButton01 = Menu02.Show()
		if iButton01 == 0
			RemoveAddBy.SetValueInt(0) 
		Elseif iButton01 == 1
			SkillPlus.SetValueInt(-1)
		Elseif iButton01 ==2
			SkillPlus.SetValueInt(-10)
		Elseif iButton01 ==3
			SkillPlus.SetValueInt(-100)
		Elseif iButton01 ==4
			SkillPlus.SetValueInt(-1000)
		Elseif iButton01 ==5
			SkillPlus.SetValueInt(-10000)
		endif
	endif
endFunction