Scriptname CheatRoomActiveButton23Skills extends ObjectReference  

Int Property SkillPlus  Auto  
String Property SkillName  Auto  

Event OnActivate(ObjectReference akActionRef)
	float temp
	temp = Game.GetPlayer().GetActorValue(SkillName) + SkillPlus
	Game.GetPlayer().SetActorValue(SkillName, temp)
EndEvent
