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
	Else
		Game.GetPlayer().ModActorValue(SkillName, SkillPlus.GetValueInt())
	endIf
	Debug.Notification(SkillName + " + " + SkillPlus.GetValueInt())
EndEvent
