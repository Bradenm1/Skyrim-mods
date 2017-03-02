Scriptname CheatRoomButton31RestSkillsTo0 extends ObjectReference  

String[] Property SkillsArray  Auto  

Float Property FloatNumber  Auto 

GlobalVariable Property SetorMod  Auto  


Event OnActivate(ObjectReference akActionRef)
	Int Index = 0
	while (Index <  SkillsArray.Length)
		if (SetorMod.GetValue() == 0)
			Game.GetPlayer().SetActorValue(SkillsArray[Index],  FloatNumber)
		Elseif (SetorMod.GetValue() == 1)
			Game.GetPlayer().ModActorValue(SkillsArray[Index], FloatNumber)
		endIf
		Debug.Notification(SkillsArray[Index] + " Set to " + FloatNumber )
		Index+= 1
	endWhile
EndEvent
