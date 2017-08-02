Scriptname BradCheatMenuMain extends Quest  
{Holds main scripts}

;=======Constants=======
int DIVORCEQUEST = 10
int LOVERRANK = 4
int ALLYRANK = 3
int CONFIDANTRANK = 2
int FRIENDRANK = 1
int ACCQUAINTANCERANK = 0
int RIVAL = -1
int FOE = -2
int ENEMY = -3
int ARCHNEMESIS =-4
int DEFAULTHEIGHT = 1
float SETSCALEADDON = 0.100000
float SETSCALEREMOVE = -0.1
float FOLLOWERCONFIDENCERANK = 4.0
int DISPLAYDEBUGINFOEVERY= 250
int GIVEERRORAT = 2000
;====FormList Spells====
int SPELLSABLILITES = 0
int SPELLSDISEASES = 1
int SPELLSLESSERPOWER= 2
int SPELLSPOISON = 3
int SPELLSPOWER = 4
int SPELLSSHOUTS = 5
int SPELLSSPELLS = 6
;====Memory Addresses====;
int STARTINGSPELLADDRESS = 0x00005909
int STARTINGSPELLPOWERADDRESS = 0x00014C13
int SPELLSLISTADDRESS = 0x05014C31
int ALLWORDFPOWERADDRESS = 0x05014C26
int ALLQUESTSADDRESS = 0x05014C23
int ALLPERKSADDRESS = 0x05014C27
int ALLEFFECTSADDRESS = 0x005014C29
int ALLIMAGESPACEMODIFIERSADDRESS = 0x05014C2A
int ALLWEATHERADDRESS = 0x05014C2B
int ALLVAMPIREPERKSADDRESS = 0x02006938
int ALLWEREWOLFPERKSADDRESS = 0x02006939
int ALLINGREDIENTSADDRESS = 0x05014C0C
int COINSADDRESS = 0x000000F

;=======Properties=======

;Points to a container which contains the duplication script
ObjectReference Property BradDuplicationInputContainer  Auto

;=======Veriables=======

;Used for actor on actor scripts
;====Cheat Spells====
String[] actorValues
	;SpellsList contains more Formlists of type Ablilites, Diseases, LesserPower, Posion, Power and Spells.
FormList spellsList
FormList perksList
FormList effectShadersList
FormList imageSpaceModifiersList
FormList weathersList
Actor savedActor
Actor controlledActor
int nCheat
int setOrMod
;====Quest Debugger====
FormList  BradQuestDebugAll
Quest debugQuest
int debugStage
int stageIndex
int questIndex
int posNeg

;=======Events=======

Event OnInit()
	;Declaring location
	CreateActorValues()
	posNeg = 0
	questIndex = 0
	stageIndex = 0
	setOrMod = 0
	posNeg = 0
	nCheat = 0
	spellsList = Game.GetFormFromFile(SPELLSLISTADDRESS, "CheatMenu.esp") as FormList
	BradQuestDebugAll = Game.GetFormFromFile(ALLQUESTSADDRESS, "CheatMenu.esp") as FormList
	perksList = Game.GetFormFromFile(ALLPERKSADDRESS, "CheatMenu.esp") as FormList
	effectShadersList = Game.GetFormFromFile(ALLEFFECTSADDRESS, "CheatMenu.esp") as FormList
	imageSpaceModifiersList = Game.GetFormFromFile(ALLIMAGESPACEMODIFIERSADDRESS, "CheatMenu.esp") as FormList
	weathersList = Game.GetFormFromFile(ALLWEATHERADDRESS, "CheatMenu.esp") as FormList

	Spell cheatSpell = Game.GetFormFromFile(STARTINGSPELLADDRESS, "CheatMenu.esp") as Spell
	Spell cheatSpellPower = Game.GetFormFromFile(STARTINGSPELLPOWERADDRESS, "CheatMenu.esp") as Spell
	
	;Checks if player has the spell, if not give the spell
	If (!Game.GetPlayer().HasSpell(cheatSpell))
		Debug.MessageBox("Please save and reload that save to enable use of this mod")
		Game.GetPlayer().AddSpell(cheatSpell)
		Game.GetPlayer().AddSpell(cheatSpellPower)
	Endif
EndEvent

;=======Functions=======

;====Cheats====
;Add/Remove Souls to player
Function AddSouls(int nSouls)
	If (nSouls > 0)
		Game.GetPlayer().ModAV("DragonSouls", nSouls)
		Debug.Notification(nSouls + " DragonSoul added!")
	Else
		Game.GetPlayer().ModAV("DragonSouls", nSouls)
		Debug.Notification(nSouls + " DragonSoul Removed!")
	Endif
EndFunction

;Unlock and teach words
Function TeachAndUnlockShouts()
	FormList wordOfPowerList = Game.GetForm(ALLWORDFPOWERADDRESS) as FormList
	Int index = 0
	while (index < wordOfPowerList.GetSize())
		game.unlockword(wordOfPowerList.getAt(index) as WordOfPower)
		game.teachword(wordOfPowerList.getAt(index) as WordOfPower)
		index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

;Add shouts to the player
Function AddShouts(Actor actorToApply)
	FormList shoutsFormList = spellsList.GetAt(SPELLSSHOUTS) as FormList
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int index = 0
	while (index < shoutsFormList .GetSize())
		actorToApply.addshout(shoutsFormList.GetAt(index) as Shout)
		index += 1
	endWhile
	If (actorToApply == Game.GetPlayer())
		TeachAndUnlockShouts()
	EndIf
EndFunction

;Remove shouts from the player
Function RemoveShouts(Actor actorToApply)
	FormList shoutsFormList = spellsList.GetAt(SPELLSSHOUTS) as FormList
	Int index = 0
	while (index < shoutsFormList .GetSize())
		actorToApply.removeshout(shoutsFormList.GetAt(index) as Shout)
		index += 1
	endWhile
	Debug.MessageBox("Button is Done Removing!")
EndFunction

;Add/Remove perks to player
Function AddPerkPoints(int nPerks)
	If (nPerks > 0)
		Game.AddPerkPoints(nPerks)
		Debug.Notification(nPerks + " PerkPoint added!")
	Else
		Game.AddPerkPoints(nPerks)
		Debug.Notification(nPerks + " PerkPoint Removed!")
	Endif
EndFunction

;Add Werewolf/Vampire perk points
Function AddAllWVPerks(int nPerks, bool isVamp)
	;For all to be filled the nPerk should be 100
	if (isVamp)
		;If wants to add perks to vampire
		GlobalVariable vampPerks = Game.GetFormFromFile(ALLVAMPIREPERKSADDRESS, "CheatMenu.esp") as GlobalVariable ;Points to the global which contains count of perks for vamp
		vampPerks.SetValueInt(nPerks)
	Else
		;If wants to add perks to werewolf
		GlobalVariable wolfPerks = Game.GetFormFromFile(ALLWEREWOLFPERKSADDRESS, "CheatMenu.esp") as GlobalVariable ;Points to global which contains count of perks for wolf
		wolfPerks.SetValueInt(nPerks)
	EndIf
EndFunction

Function EditStats(String skillName, int nSkillPoints, Actor actorToApply)
	;Check if adding by mod or set or advance
	;1 = Set
	;2 = Mod
	;3 = Advance
	;4 = Increment
	if (setOrMod == 0)
		float temp = actorToApply.GetActorValue(skillName) + nSkillPoints
		actorToApply.SetActorValue(skillName, temp)
	Elseif (SetorMod == 1)
		actorToApply.ModActorValue(skillName, nSkillPoints)
	Elseif (SetorMod== 2)
		If (nSkillPoints < 0)
			Debug.MessageBox("Advance Skill Cannot be negative")
		Else
			Game.AdvanceSkill(skillName, nSkillPoints)
		endIf
	Elseif (SetorMod== 3)
		If (nSkillPoints < 0)
			Debug.MessageBox("Increment Skill Cannot be negative")
		Else
			Game.IncrementSkillBy(skillName, nSkillPoints)
		endIf
	endIf
	Debug.Notification(skillName + " + " + nSkillPoints)
EndFunction

;Apply effect shader to actor
Function ApplyEffectShader(int effectShaderToApply, Actor actorToApply)
	;-1 equals the effect will last forever untill removed by a script
	EffectShader effect = effectShadersList.GetAt(effectShaderToApply) as EffectShader
	 effect.Play(actorToApply, -1)
EndFunction

;Remove effect shader from actor
Function RemoveEffectShader(int effectShaderToApply, Actor actorToApply)
	EffectShader effect = effectShadersList.GetAt(effectShaderToApply) as EffectShader
	 effect.Stop(actorToApply)
EndFunction

;Changes current active weather
Function ChangeWeather(int weatherToApply)
	;Has to be release override to remove the selected weather
	Weather weatherEffect = weathersList.GetAt(weatherToApply) as Weather
	weatherEffect.ForceActive(True)
EndFunction

;Apply an imagespace modifier
Function ApplyImageSpaceModifier(int imageSpaceModifierToApply)
	ImageSpaceModifier imagespaceEffect = imageSpaceModifiersList.GetAt(imageSpaceModifierToApply) as ImageSpaceModifier
	imagespaceEffect.Apply()
EndFunction

;Remove an imagespace modifier
Function RemoveImageSpaceModifier(int imageSpaceModifierToApply)
	ImageSpaceModifier imagespaceEffect = imageSpaceModifiersList.GetAt(imageSpaceModifierToApply) as ImageSpaceModifier
	imagespaceEffect.Remove()
EndFunction

;Teach player the 4 slots in all ingredients
Function LearnAllIngredients()
	;Contains all ingredients
	FormList bradIngredientList =  Game.GetFormFromFile(ALLINGREDIENTSADDRESS, "CheatMenu.esp") as FormList
	int index = 0
	while (index <  bradIngredientList .GetSize())
		Ingredient temp01 = bradIngredientList.getAt(index) as Ingredient
		;Reset count for next ingredient in the list
		int count = 0
		while (count < 4)
			if (temp01.LearnNextEffect() == count)
				;Debug.Notification("Player learned the "+ count + " From the " + temp01)
				count+= 1
			endif
		endwhile	
		index+= 1
	endWhile
endFunction

;Add coins to the player
Function AddCoins(int nCoins, Actor actorToApply)
	MiscObject coin = Game.GetFormFromFile(COINSADDRESS, "CheatMenu.esp") as MiscObject
	actorToApply.Additem(coin, nCoins)
EndFunction

;Add all of type spell to the player
Function AddAllTypeSpell(FormList spellList, Actor actorToApply)
	Int index = 0
	while (Index < spellList.GetSize())
		actorToApply.addspell((spellList.getAt(index) as Spell))
		index += 1
	endWhile
EndFunction

;Remove all of type spell to the player
Function RemoveAllTypeSpell(FormList spellList, Actor actorToApply)
	Int index = 0
	while (index < spellList.GetSize())
		actorToApply.removespell((spellList.getAt(index) as Spell))
		index += 1
	endWhile
EndFunction

;Add all perks to player
Function Perks()
	Int index = 0
	while (Index < perksList.GetSize())
		game.getplayer().AddPerk(perksList.getAt(index) as Perk)
		index += 1
	endWhile
EndFunction

;Remove all perks from player
Function PerksRemove()
	Int index = 0
	while (Index < perksList.GetSize())
		game.getplayer().RemovePerk(perksList.getAt(index) as Perk)
		index += 1
	endWhile
EndFunction

;Toggle the AI
Function ToggleAI()
	Debug.ToggleAI()
EndFunction

;ShowRaceMenu for player
Function ShowRaceMenus(int akMenu)
	if akMenu == 0
		;Allows all options but can have effects on your save
		Game.ShowRaceMenu()
	Elseif akMenu ==1
		;Cannot change race, fixes issues
		Game.ShowLimitedRaceMenu()
	endif
endFunction

;Remove all actor items
Function RemoveAllItems(Actor akTarget)
	akTarget.RemoveAllItems()
EndFunction

;Duplicate item from container to player
;Needs to be called from duplication container
Function Duplication(Form akBaseItem)
	Game.GetPlayer().Additem(akBaseItem,1)
EndFunction

;Cheats for NPC Cheat Options
;Need clearning up, kinda messy
; -> CheatRoomPlayerSpellCheat
Function CheatOptionsSpell(Actor akTarget, Actor akCaster)
	;Menu 1
	if nCheat == 1
		;Make an actor a follower
		Faction actorAddFollower = Game.GetForm(0x0005C84D) as Faction
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		akTarget.AddToFaction(actorAddFollower)
		akTarget.SetAV("confidence", FOLLOWERCONFIDENCERANK)
	;Elseif nCheat== 47
		;;Set ActorBase as follower
		;Faction actorAddFollower = Game.GetForm(0x0005C84D) as Faction
		;ActorBase akTargetBase = akTarget.GetActorBase()
		;akTargetBase.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		;akTargetBase.AddToFaction(actorAddFollower)
		;akTargetBase.SetAV("confidence", FOLLOWERCONFIDENCERANK)
	Elseif nCheat== 2
		;Slient kill actor
		akTarget.Kill()
	Elseif  nCheat == 3
		;Resurrect an actor
		akTarget.Resurrect()
	Elseif nCheat == 4
		;Push actor
		akTarget.PushActorAway(akTarget, 50.0)
	Elseif nCheat == 5
		;Teleport actor to Whiterun
		;akTarget.MoveTo(TeleportToWhiterunXmarker)
	Elseif nCheat == 6
		;Open actor inventory
		akTarget.OpenInventory(true)
	;Set Relationship ranks on actor
	Elseif nCheat == 16
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
	Elseif nCheat== 17
		akTarget.SetRelationshipRank(Game.GetPlayer(), ALLYRANK)
	Elseif nCheat == 18
		akTarget.SetRelationshipRank(Game.GetPlayer(), CONFIDANTRANK)
	Elseif nCheat == 19
		akTarget.SetRelationshipRank(Game.GetPlayer(), FRIENDRANK)
	Elseif nCheat == 20
		akTarget.SetRelationshipRank(Game.GetPlayer(), ACCQUAINTANCERANK)
	Elseif nCheat == 21
		akTarget.SetRelationshipRank(Game.GetPlayer(), RIVAL)
	Elseif nCheat == 22
		akTarget.SetRelationshipRank(Game.GetPlayer(), FOE)
	Elseif nCheat == 23
		akTarget.SetRelationshipRank(Game.GetPlayer(), ENEMY)
	Elseif nCheat == 24
		akTarget.SetRelationshipRank(Game.GetPlayer(), ARCHNEMESIS)
	Elseif nCheat == 25
		;Able to marry actor
		Faction actorAddMarriage = Game.GetForm(0x00019809) as Faction
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		akTarget.SetAV("confidence", FOLLOWERCONFIDENCERANK)
		akTarget.AddToFaction(actorAddMarriage)
	Elseif nCheat== 26
		;Set actor killable
		akTarget.GetActorBase().SetEssential(false)
		akTarget.GetActorBase().SetInvulnerable(false)
	Elseif nCheat == 27
		;Set actor un-killable
		akTarget.GetActorBase().SetEssential()
		akTarget.GetActorBase().SetInvulnerable()
	Elseif nCheat == 28
		;Teleport actor to darkroom
		;akTarget.MoveTo(DarkRoom)
	Elseif nCheat == 29
		;Set actor as teammate
		akTarget.SetPlayerTeammate()
	Elseif nCheat == 30
		;Set actor as not teammate
		akTarget.SetPlayerTeammate(false)
	Elseif nCheat == 31
		;Set actor outfit as random
		FormList  BradRandOutfit = Game.GetForm(0x05014C24) as FormList
		akTarget.SetOutfit(BradRandOutfit.getAt(Utility.RandomInt(0,  BradRandOutfit.GetSize())) as Outfit)
	Elseif nCheat == 32
		;Unequiped all actors items
		akTarget.UnequipAll()
	Elseif nCheat == 33
		;Remove actor from all facs
		akTarget.RemoveFromAllFactions()
	Elseif nCheat == 34
		;Move actor to default package location
		akTarget.MoveToPackageLocation()
	Elseif nCheat == 35
		;Reset actor
		akTarget.Reset()
	Elseif nCheat == 36
		;Disable actor AI
		akTarget.EnableAI(false)
	Elseif nCheat == 37
		;Enable actor AI
		akTarget.EnableAI()
	Elseif nCheat == 38
		ActorBase temp = akTarget.GetActorBase()
		akTarget.PlaceAtMe(akTarget.GetActorBase())

	;Change Size
	Elseif nCheat == 39
		;Make actor smaller
		akTarget.SetScale(SETSCALEREMOVE + akTarget.GetScale())
		Debug.Notification("Height = " +  akTarget.GetScale())
	Elseif nCheat == 40
		;Make actor 1 in size
		akTarget.SetScale(DEFAULTHEIGHT)
		Debug.Notification(akTarget.GetScale())
	Elseif nCheat == 41
		;Make actor bigger
		akTarget.SetScale(SETSCALEADDON + akTarget.GetScale())
		Debug.Notification("Height = " + akTarget.GetScale())

	;Control and set camera on Actor
	Elseif nCheat == 42
		;Control another actor
		Game.ForceThirdPerson()
		Game.SetCameraTarget(controlledActor)
		controlledActor.SetPlayerControls(true)
		controlledActor.EnableAI(true)
		Game.SetPlayerAIDriven() 
	Elseif nCheat == 43
		;Disable actor control
		Game.SetCameraTarget(Game.GetPlayer())
		controlledActor.SetPlayerControls(false)
		controlledActor.EnableAI(true)
		Game.SetPlayerAIDriven(false) 
	Elseif nCheat == 44
		;Set Camera on actor
		Game.ForceThirdPerson()
		Game.SetCameraTarget(akTarget)
	
	;Divorce actor
	Elseif nCheat == 45
		Faction actorRemove = Game.GetForm(0x00051596) as Faction
		Faction divorcePlayer = Game.GetForm(0x000C6472) as Faction
		Quest DivorceQuest01 = Game.GetForm(0x00074793) as Quest
		Quest DivorceQuest02 = Game.GetForm(0x00021382) as Quest
		akTarget.RemoveFromFaction(actorRemove)
		Game.GetPlayer().RemoveFromFaction(divorcePlayer)
		DivorceQuest01.Reset()
		DivorceQuest02.Reset()
		DivorceQuest01.SetStage(DIVORCEQUEST)
	Elseif nCheat == 46
		;Disable Actor
		akTarget.Disable()
	endif
EndFunction

;Adds an selected amount to all skills on the player
Function AddToAllSkills(int addAmount, Actor actorToApply)
	float temp
	int index = 0
	while (index < actorValues.Length)
		if (setOrMod == 0)
			temp = actorToApply.GetActorValue(actorValues[index]) + addAmount
			actorToApply.SetActorValue(actorValues[index],  temp)
		Elseif (setOrMod == 1)
			actorToApply.ModActorValue(actorValues[index],  addAmount)
		Elseif (setOrMod == 2)
			If (addAmount < 0)
				Debug.MessageBox("Advance Skill Cannot be negative")
			Else
				Game.AdvanceSkill(actorValues[index],  addAmount)
			endIf
		endIf
		Debug.Notification(actorValues[index] + " + " + addAmount)
		index+= 1
	endWhile
	Debug.MessageBox("Button is Done")
EndFunction

;====Free Camera====

;Add later

;====Quest Debugger====

;Auto select the quest using the seletion from the journal
Function AutoSelectQuest()
;Auto Select Quest
	Int index = 0
	Bool hasFound = False
	While ((index < BradQuestDebugAll.GetSize()) && (hasFound == False))
		Quest tempTempQuest = BradQuestDebugAll.getAt(index) as Quest
		If (tempTempQuest.IsActive()) && (tempTempQuest.IsRunning())
			questIndex = index
			Debug.MessageBox("Quest Found: " + tempTempQuest)
			Debug.MessageBox("The quest has been set in your index")
			hasFound = True
		Else
			If ((index % DISPLAYDEBUGINFOEVERY) == 0)
				Debug.Notification("Please Wait... Entry " + index + "/ " + BradQuestDebugAll.GetSize())
			EndIf
			index += 1
		EndIf
	EndWhile
	If hasFound == False
		Debug.MessageBox("Could not find the quest. You either are trying to find a modded quest or don't have a quest marked as active")
	endIf
EndFunction

;Auto complete next stage of the curret selected quest
Function AutoCompleteNextStage()
	;Auto Complete Next Stage
	Int index = 0
	Int o = debugQuest.GetStage()
	Bool tempCompleted = True
	While (tempCompleted == True)
		If (debugQuest.SetStage(o))
			tempCompleted = False
		Else
			o += 1
			index += 1
			If (index > GIVEERRORAT)
				tempCompleted = False
				Debug.MessageBox("An error occured with the stages.")
			EndIf
		Endif
	EndWhile
	if (index < GIVEERRORAT)
		Debug.MessageBox(o + " Stage Completed")
	endif
EndFunction

;Changes the index of given int
Function ChangingIndex(int indexToChange, int selection)
	int valueToAdd = 0
	;Pos
	if (selection == 0)
		If (posNeg == 1)
			;Neg
			posNeg = 0
			Debug.Notification("Set to negative")
		Else
			;Pos
			posNeg = 1
			Debug.Notification("Set to positive")
		EndIf
	Elseif (selection ==1)
		indexToChange = 0
	Elseif (selection == 2)
		if (posNeg == 0)
			valueToAdd = -1
		Else
			valueToAdd = 1
		EndIf
	Elseif (selection == 3)
		if (posNeg == 0)
			valueToAdd =  -10
		Else
			valueToAdd =  10
		EndIf
	Elseif (selection == 4)
		if (posNeg == 0)
			valueToAdd =  -100
		Else
			valueToAdd =  100
		EndIf
	Elseif (selection == 5)
		if (posNeg == 0)
			valueToAdd = -1000
		Else
			valueToAdd = 1000
		EndIf
	Elseif (selection == 6)
		if (posNeg == 0)
			valueToAdd = -10000
		Else
			valueToAdd = 10000
		EndIf
	Elseif (selection == 6)
		Debug.MessageBox("Stage Index = " + indexToChange)
	Endif
	If (valueToAdd != 0)
		indexToChange += valueToAdd
		Debug.Notification(indexToChange)
	EndIf
EndFunction

;Creates the array because of issues with properties
Function CreateActorValues()
	actorValues = new String[105]
	actorValues[0] = "Health"
	actorValues[1] = "Magicka"
	actorValues[2] = "Stamina"
	actorValues[3] = "OneHanded"
	actorValues[4] = "TwoHanded"
	actorValues[5] = "Marksman"
	actorValues[6] = "Block"
	actorValues[7] = "Smithing"
	actorValues[8] = "HeavyArmor"
	actorValues[9] = "LightArmor"
	actorValues[10] = "Pickpocket"
	actorValues[11] = "Lockpicking"
	actorValues[12] = "Sneak"
	actorValues[13] = "Alchemy"
	actorValues[14] = "Speechcraft"
	actorValues[15] = "Alteration"
	actorValues[16] = "Conjuration"
	actorValues[17] = "Destruction"
	actorValues[18] = "Illusion"
	actorValues[19] = "Restoration"
	actorValues[20] = "Enchanting"
	actorValues[21] = "Aggression"
	actorValues[22] = "Confidence"
	actorValues[23] = "Energy"
	actorValues[24] = "Morality"
	actorValues[25] = "Mood"
	actorValues[26] = "Assistance"
	actorValues[27] = "WaitingForPlayer"
	actorValues[28] = "HealRate"
	actorValues[29] = "MagickaRate"
	actorValues[30] = "StaminaRate"
	actorValues[31] = "attackDamageMult"
	actorValues[32] = "SpeedMult"
	actorValues[33] = "ShoutRecoveryMult"
	actorValues[34] = "WeaponSpeedMult"
	actorValues[35] = "DestructionMod"
	actorValues[36] = "DestructionPowerMod"
	actorValues[37] = "AlterationMod"
	actorValues[38] = "AlterationPowerMod"
	actorValues[39] = "IllusionMod"
	actorValues[40] = "IllusionPowerMod"
	actorValues[41] = "RestorationMod"
	actorValues[42] = "RestorationPowerMod"
	actorValues[43] = "ConjurationMod"
	actorValues[44] = "ConjurationPowerMod"
	actorValues[45] = "InventoryWeight"
	actorValues[46] = "CarryWeight"
	actorValues[47] = "CritChance"
	actorValues[48] = "MeleeDamage"
	actorValues[49] = "UnarmedDamage"
	actorValues[50] = "Mass"
	actorValues[51] = "VoicePoints"
	actorValues[52] = "VoiceRate"
	actorValues[53] = "DamageResist"
	actorValues[54] = "DiseaseResist"
	actorValues[55] = "PoisonResist"
	actorValues[56] = "FireResist"
	actorValues[57] = "ElectricResist"
	actorValues[58] = "FrostResist"
	actorValues[59] = "MagicResist"
	actorValues[60] = "Paralysis"
	actorValues[61] = "Invisibility"
	actorValues[62] = "NightEye"
	actorValues[63] = "DetectLifeRange"
	actorValues[64] = "WaterBreathing"
	actorValues[65] = "WaterWalking"
	actorValues[66] = "JumpingBonus"
	actorValues[67] = "WardPower"
	actorValues[68] = "WardDeflection"
	actorValues[69] = "EquippedItemCharge"
	actorValues[70] = "EquippedStaffCharge"
	actorValues[71] = "ArmorPerks"
	actorValues[72] = "ShieldPerks"
	actorValues[73] = "BowSpeedBonus"
	actorValues[74] = "DragonSouls"
	actorValues[75] = "Variable01"
	actorValues[76] = "Variable02"
	actorValues[77] = "Variable03"
	actorValues[78] = "Variable04"
	actorValues[104] = "Variable04" 	;Missed it
	actorValues[79] = "Variable06"
	actorValues[80] = "Variable07"
	actorValues[81] = "Variable08"
	actorValues[82] = "Variable09"
	actorValues[83] = "Variable10"
	actorValues[84] = "CombatHealthRegenMultMod"
	actorValues[85] = "CombatHealthRegenMultPowerMod"
	actorValues[86] = "PerceptionCondition"
	actorValues[87] = "EnduranceCondition"
	actorValues[88] = "LeftAttackCondition"
	actorValues[89] = "RightAttackCondition"
	actorValues[90] = "LeftMobilityCondition"
	actorValues[91] = "RightMobilityCondition"
	actorValues[92] = "BrainCondition"
	actorValues[93] = "IgnoreCrippledLimbs"
	actorValues[94] = "Fame"
	actorValues[95] = "Infamy"
	actorValues[96] = "FavorActive"
	actorValues[97] = "FavorPointsBonus"
	actorValues[98] = "FavorsPerDay"
	actorValues[99] = "FavorsPerDayTimer"
	actorValues[100] = "BypassVendorStolenCheck"
	actorValues[101] = "BypassVendorKeywordCheck"
	actorValues[102] = "LastBribedIntimidated"
	actorValues[103] = "LastFlattered"
EndFunction

;=======Gets/Sets=======

int property SetNCheat
	function set(int newNCheat)
		If (newNCheat < 0)
			Debug.MessageBox("An error occured, 'nCheat' is less then zero")
		Else
			nCheat = newNCheat
		EndIf
	EndFunction
EndProperty

Actor property GetSavedActor
	Actor function get()
		return savedActor
  	EndFunction
EndProperty

Actor property SetSavedActor
	function set(Actor newActor)
		If (newActor == Game.GetPlayer())
			Debug.MessageBox("An error occured, Player cannot be set as 'savedActor'")
		Else
			savedActor = newActor
		EndIf
	EndFunction
EndProperty

Quest property GetDebugQuest
	Quest Function get()
		Return debugQuest
	EndFunction
EndProperty

int property GetStageIndex
	int function get()
		Return stageIndex
	EndFunction
EndProperty

int property SetStageIndex
	function set(int newStageIndex)
		If (newStageIndex < 0)
			Debug.MessageBox("An error occured, stage index cannot be set less then 0")
		Else
			stageIndex = newStageIndex
		EndIf
	EndFunction
EndProperty

int property GetQuestIndex
	int function get()
		Return questIndex
	EndFunction
EndProperty

int property SetQuestIndex
	function set(int newQuesIndex)
		If (newQuesIndex < 0)
			Debug.MessageBox("An error occured, quest index cannot be set less then 0")
		Else
			questIndex = newQuesIndex
		EndIf
	EndFunction
EndProperty