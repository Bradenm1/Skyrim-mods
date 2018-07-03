Scriptname CheatRoomButton31RestSkillsTo0 extends ObjectReference  

;=======Properties=======
String[] Property SkillsArray  Auto  

Float Property FloatNumber  Auto 

GlobalVariable Property SetorMod  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Int Index = 0
	;Set skill to certain float
	while (Index <  SkillsArray.Length)
		;Check if mod or set
		if (SetorMod.GetValue() == 0)
			Game.GetPlayer().SetActorValue(SkillsArray[Index],  FloatNumber)
		Elseif (SetorMod.GetValue() == 1)
			Game.GetPlayer().ModActorValue(SkillsArray[Index], FloatNumber)
		endIf
		Debug.Notification(SkillsArray[Index] + " Set to " + FloatNumber )
		Index+= 1
	endWhile
EndEvent
