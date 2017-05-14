Scriptname CheatRoomActiveButton23Skills extends ObjectReference  

;=======Properties=======
GlobalVariable Property SkillPlus  Auto  
String Property SkillName  Auto 
GlobalVariable Property SetorMod  Auto   

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	float temp = 0
	;Check if adding by mod or set
	if (SetorMod.GetValue() == 0)
		temp = Game.GetPlayer().GetActorValue(SkillName) + SkillPlus.GetValueInt()
		Game.GetPlayer().SetActorValue(SkillName, temp)
	Elseif (SetorMod.GetValue() == 1)
		Game.GetPlayer().ModActorValue(SkillName, SkillPlus.GetValueInt())
	Elseif (SetorMod.GetValue() == 2)
		If (SkillPlus.GetValueInt() < 0)
			Debug.MessageBox("Advance Skill Cannot be negative")
		Else
			Game.AdvanceSkill(SkillName, SkillPlus.GetValueInt())
		endIf
	endIf
	Debug.Notification(SkillName + " + " + SkillPlus.GetValueInt())
EndEvent
