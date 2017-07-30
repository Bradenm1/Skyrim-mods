Scriptname BradCheatMenuMain extends Quest  
{Holds main scripts}

;/////Properties/////;
ObjectReference Property BradDuplicationInputContainer  Auto  

Event OnInit()
	Spell cheatSpell = Game.GetForm(0x05005909) as Spell
	If (!Game.GetPlayer().HasSpell(cheatSpell))
		Game.GetPlayer().AddSpell(cheatSpell)
	Endif
EndEvent

;/////Cheats/////;

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
		GlobalVariable vampPerks = Game.GetForm(0x02006938) as GlobalVariable
		vampPerks.SetValueInt(nPerks)
	Else
		;If wants to add perks to werewolf
		GlobalVariable wolfPerks = Game.GetForm(0x02006939) as GlobalVariable
		wolfPerks.SetValueInt(nPerks)
	EndIf
EndFunction

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
		Game.ShowRaceMenu()
	Elseif akMenu ==1
		;Cannot change race, fixes issues
		Game.ShowLimitedRaceMenu()
	endif
endFunction

;Remove All Player Items
Function RemoveAllItems(Actor akTarget)
	akTarget.RemoveAllItems()
EndFunction

;Duplicate item to player
Function Duplication(Form akBaseItem)
	Game.GetPlayer().Additem(akBaseItem,1)
EndFunction
