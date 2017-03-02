Scriptname CheatRoomButton31RestSkillsTo0 extends ObjectReference  

String[] Property SkillsArray  Auto  
Float Property FloatNumber  Auto 

Event OnActivate(ObjectReference akActionRef)
	Int Index = 0
	while (Index <  SkillsArray.Length)
		Game.GetPlayer().SetActorValue(SkillsArray[Index],  FloatNumber)
		Index+= 1
	endWhile
;	Game.GetPlayer().SetActorValue("OneHanded",  0)
;	Game.GetPlayer().SetActorValue("TwoHanded",  0)
;	Game.GetPlayer().SetActorValue("Marksman",  0)
;	Game.GetPlayer().SetActorValue("Block",  0)
;	Game.GetPlayer().SetActorValue("Smithing",  0)
;	Game.GetPlayer().SetActorValue("HeavyArmor",  0)
;	Game.GetPlayer().SetActorValue("LightArmor", 0)
;	Game.GetPlayer().SetActorValue("Pickpocket",  0)
;	Game.GetPlayer().SetActorValue("Lockpicking",  0)
;	Game.GetPlayer().SetActorValue("Sneak",  0)
;	Game.GetPlayer().SetActorValue("Alchemy", 0)
;	Game.GetPlayer().SetActorValue("Speechcraft", 0)
;	Game.GetPlayer().SetActorValue("Alteration", 0)
;	Game.GetPlayer().SetActorValue("Conjuration", 0)
;	Game.GetPlayer().SetActorValue("Destruction", 0)
;	Game.GetPlayer().SetActorValue("Illusion", 0)
;	Game.GetPlayer().SetActorValue("Restoration", 0)
;	Game.GetPlayer().SetActorValue("Enchanting", 0)
EndEvent