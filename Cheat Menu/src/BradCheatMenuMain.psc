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

;=======Properties=======
;Contains all ingredients
FormList Property BradIngredientList  Auto  

;Points to a container which contains the duplication script
ObjectReference Property BradDuplicationInputContainer  Auto  

;Checks if player has the spell, if not give the spell
Event OnInit()
	Spell cheatSpell = Game.GetForm(0x05005909) as Spell
	Spell cheatSpellPower = Game.GetForm(0x05014C13) as Spell
	If (!Game.GetPlayer().HasSpell(cheatSpell))
		Game.GetPlayer().AddSpell(cheatSpell, false)
		Game.GetPlayer().AddSpell(cheatSpellPower, false)
	Endif
EndEvent

;=======Cheats=======

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

;Tech and unlock words
Function TechAndUnlockShouts()
	FormList shouts
	Int index = 0
	while (index < shouts.GetSize())
		game.teachword(shouts.getAt(index) as WordOfPower)
		game.unlockword(shouts.getAt(index) as WordOfPower)
		index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

;Add shouts to the player
Function AddShouts()
	Shout[] shouts
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int index = 0
	while (index < shouts.Length)
		game.getplayer().addshout(shouts[index])
		index += 1
	endWhile
	TechAndUnlockShouts()
EndFunction

;Remove shouts from the player
Function RemoveShouts()
	Shout[] shouts
	Int index = 0
	while (index < shouts.Length)
		game.getplayer().removeshout(shouts[Index])
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
		GlobalVariable vampPerks = Game.GetForm(0x02006938) as GlobalVariable ;Points to the global which contains count of perks for vamp
		vampPerks.SetValueInt(nPerks)
	Else
		;If wants to add perks to werewolf
		GlobalVariable wolfPerks = Game.GetForm(0x02006939) as GlobalVariable ;Points to global which contains count of perks for wolf
		wolfPerks.SetValueInt(nPerks)
	EndIf
EndFunction

Function EditPerks(String skillName, int nSkillPoints, int setOrMod)
	;Check if adding by mod or set or advance
	;1 = Set
	;2 = Mod
	;3 = Advance
	if (setOrMod == 0)
		float temp = Game.GetPlayer().GetActorValue(skillName) + nSkillPoints
		Game.GetPlayer().SetActorValue(skillName, temp)
	Elseif (SetorMod == 1)
		Game.GetPlayer().ModActorValue(skillName, nSkillPoints)
	Elseif (SetorMod== 2)
		If (nSkillPoints < 0)
			Debug.MessageBox("Advance Skill Cannot be negative")
		Else
			Game.AdvanceSkill(skillName, nSkillPoints)
		endIf
	endIf
	Debug.Notification(skillName + " + " + nSkillPoints)
EndFunction

;Teach player the 4 slots in all ingredients
Function LearnAllIngredients()
	int index = 0
	int count = 0
	while (index <  BradIngredientList .GetSize())
		Ingredient temp01 = BradIngredientList.getAt(index) as Ingredient
		while (count < 4)
			if (temp01.LearnNextEffect() == count)
				;Debug.Notification("Player learned the "+ count + " From the " + temp01)
				count+= 1
			endif
		endwhile	
		count = 0
		index+= 1
	endWhile
endFunction

;Add coins to the player
Function AddCoins(int nCoins)
	MiscObject coin = Game.GetForm(0x000000F) as MiscObject
	Game.GetPlayer().Additem(coin, nCoins)
EndFunction

;Add all of type spell to the player
Function AddAllTypeSpell(FormList spellList)
	Int Index = 0
	while (Index < spellList.GetSize())
		game.getplayer().addspell((spellList.getAt(Index) as Spell))
		Index += 1
	endWhile
EndFunction

;Remove all of type spell to the player
Function RemoveAllTypeSpell(FormList spellList)
	Int Index = 0
	while (Index < spellList.GetSize())
		game.getplayer().removespell((spellList.getAt(Index) as Spell))
		Index += 1
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
Function Duplication(Form akBaseItem)
	Game.GetPlayer().Additem(akBaseItem,1)
EndFunction

;Cheats for NPC Cheat Options
;Need clearning up, kinda messy
; -> CheatRoomPlayerSpellCheat
Function CheatOptionsSpell(Actor akTarget, Actor akCaster, int nCheat)
	;Menu 1
	if nCheat == 1
		;Make an actor a follower
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		;akTarget.AddToFaction(FirstFac)
		;akTarget.AddToFaction(SecFac)
		akTarget.SetAV("confidence", FOLLOWERCONFIDENCERANK)
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

	;Menu 2 - PushActorAway
	Elseif nCheat == 10
		akTarget.PushActorAway(akTarget, 10.0)
	Elseif nCheat== 11
		akTarget.PushActorAway(akTarget, 20.0)
	Elseif nCheat == 12
		akTarget.PushActorAway(akTarget, 40.0)
	Elseif nCheat == 13
		akTarget.PushActorAway(akTarget, 80.0)
	Elseif nCheat == 14
		akTarget.PushActorAway(akTarget, 140.0)
	Elseif nCheat == 15
		akTarget.PushActorAway(akTarget, 280.0)
	
	;Menu 3 - Set Relationship ranks on actor
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

	;Menu 4
	Elseif nCheat == 25
		;Able to marry actor
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		akTarget.SetAV("confidence", FOLLOWERCONFIDENCERANK)
		;akTarget.AddToFaction(ThirdFac)
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
		;akTarget.SetOutfit(OutfitRand.getAt(Utility.RandomInt(0, OutfitRand.GetSize())) as Outfit)

	;Menu 5
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

	;Menu 6
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
	Elseif nCheat == 42
		;Control another actor
		Game.ForceThirdPerson()
		;EndMindControl.Revert()
		;EndMindControl.AddForm(akTarget)
		Game.SetCameraTarget(akTarget)
		akTarget.SetPlayerControls(true)
		akTarget.EnableAI(True)
		Game.SetPlayerAIDriven() 
	;Elseif nCheat == 43
	;	Actor temp = EndMindControl.GetAt(0) as Actor
	;	Game.SetCameraTarget(Game.GetPlayer())
	;	temp.SetPlayerControls(false)
	;	temp.EnableAI(True)
	;	Game.SetPlayerAIDriven(false) 
	;	EndMindControl.Revert()
	Elseif nCheat == 44
		;Set Camera on actor
		Game.ForceThirdPerson()
		Game.SetCameraTarget(akTarget)
	Elseif nCheat == 45
		;Divorce actor
		;akTarget.RemoveFromFaction(DivorceRemoveFac)
		;Game.GetPlayer().RemoveFromFaction(DivorcePlayerFac)
		;DivorceQuest01.Reset()
		;DivorceQuest02.Reset()
		;DivorceQuest01.SetStage(DIVORCEQUEST)
	Elseif nCheat == 46
		akTarget.Disable()
	endif
EndFunction
