Scriptname CheatRoomActiveButton24AllInOneSkills extends ObjectReference

GlobalVariable Property SkillPlus  Auto 

String[] Property PlSkills  Auto   

GlobalVariable Property SetorMod  Auto 


Event OnActivate(ObjectReference akActionRef)
	float temp
	int index = 0
	while (index < PlSkills.Length)
		if (SetorMod.GetValue() == 0)
			temp = Game.GetPlayer().GetActorValue(PlSkills[index]) + SkillPlus.GetValueInt()
			Game.GetPlayer().SetActorValue(PlSkills[index],  temp)
		Elseif (SetorMod.GetValue() == 1)
			;temp = Game.GetPlayer().GetActorValue(PlSkills[index])
			Game.GetPlayer().ModActorValue(PlSkills[index],  SkillPlus.GetValueInt())
		Elseif (SetorMod.GetValue() == 2)
			If (SkillPlus.GetValueInt() < 0)
				Debug.MessageBox("Advance Skill Cannot be negative")
			Else
				Game.AdvanceSkill(PlSkills[index],  SkillPlus.GetValueInt())
			endIf
		endIf
		Debug.Notification(PlSkills[index] + " + " + SkillPlus.GetValueInt())
		index+= 1
	endWhile
	Debug.MessageBox("Button is Done")
EndEvent