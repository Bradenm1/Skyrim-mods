Scriptname CheatRoomActiveButton24AllInOneSkills extends ObjectReference

Int Property SkillPlus  Auto  

Event OnActivate(ObjectReference akActionRef)
	float temp
	temp = Game.GetPlayer().GetActorValue("OneHanded") + SkillPlus
	Game.GetPlayer().SetActorValue("OneHanded",  temp)

	temp = Game.GetPlayer().GetActorValue("TwoHanded") + SkillPlus
	Game.GetPlayer().SetActorValue("TwoHanded",  temp)
	
	temp = Game.GetPlayer().GetActorValue("Marksman") + SkillPlus
	Game.GetPlayer().SetActorValue("Marksman",  temp)

	temp = Game.GetPlayer().GetActorValue("Block") + SkillPlus
	Game.GetPlayer().SetActorValue("Block",  temp)

	temp = Game.GetPlayer().GetActorValue("Smithing") + SkillPlus
	Game.GetPlayer().SetActorValue("Smithing",  temp)

	temp = Game.GetPlayer().GetActorValue("HeavyArmor") + SkillPlus
	Game.GetPlayer().SetActorValue("HeavyArmor",  temp)

	temp = Game.GetPlayer().GetActorValue("LightArmor") + SkillPlus
	Game.GetPlayer().SetActorValue("LightArmor", temp)

	temp = Game.GetPlayer().GetActorValue("Pickpocket") + SkillPlus
	Game.GetPlayer().SetActorValue("Pickpocket",  temp)

	temp = Game.GetPlayer().GetActorValue("Lockpicking") + SkillPlus
	Game.GetPlayer().SetActorValue("Lockpicking",  temp)

	temp = Game.GetPlayer().GetActorValue("Sneak") + SkillPlus
	Game.GetPlayer().SetActorValue("Sneak",  temp)

	temp = Game.GetPlayer().GetActorValue("Alchemy") + SkillPlus
	Game.GetPlayer().SetActorValue("Alchemy", temp)

	temp = Game.GetPlayer().GetActorValue("Speechcraft") + SkillPlus
	Game.GetPlayer().SetActorValue("Speechcraft", temp)

	temp = Game.GetPlayer().GetActorValue("Alteration") + SkillPlus
	Game.GetPlayer().SetActorValue("Alteration", temp)

	temp = Game.GetPlayer().GetActorValue("Conjuration") + SkillPlus
	Game.GetPlayer().SetActorValue("Conjuration", temp)
	
	temp = Game.GetPlayer().GetActorValue("Destruction") + SkillPlus
	Game.GetPlayer().SetActorValue("Destruction", temp)
	
	temp = Game.GetPlayer().GetActorValue("Illusion") + SkillPlus
	Game.GetPlayer().SetActorValue("Illusion", temp)
	
	temp = Game.GetPlayer().GetActorValue("Restoration") + SkillPlus
	Game.GetPlayer().SetActorValue("Restoration", temp)
	
	temp = Game.GetPlayer().GetActorValue("Enchanting") + SkillPlus
	Game.GetPlayer().SetActorValue("Enchanting", temp)
EndEvent
