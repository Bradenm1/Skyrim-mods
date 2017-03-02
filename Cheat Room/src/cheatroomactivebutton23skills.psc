 Scriptname CheatRoomActiveButton23Skills extends ObjectReference  

GlobalVariable Property SkillPlus  Auto  
String Property SkillName  Auto 
GlobalVariable Property SetorMod  Auto   

Event OnActivate(ObjectReference akActionRef)
	float temp = 0
	if (SetorMod.GetValue() == 0)
		temp = Game.GetPlayer().GetActorValue(SkillName) + SkillPlus.GetValueInt()
		Game.GetPlayer().SetActorValue(SkillName, temp)
	Else
		Game.GetPlayer().ModActorValue(SkillName, SkillPlus.GetValueInt())
	endIf
	Debug.Notification(SkillName + " + " + SkillPlus.GetValueInt())
EndEvent
