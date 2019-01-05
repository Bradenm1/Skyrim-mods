Scriptname CheatRoomGetModItemsQuest extends Quest

ObjectReference Property containerToSpawn Auto
FormList Property moddedItemsList Auto

Event OnInit()
    SpawnMods()
	;Debug.MessageBox("Well good Init m8")
EndEvent

Function SpawnMods()
	containerToSpawn.RemoveAllItems()
	moddedItemsList.Revert()
	PetHoundCreationClub()
	ArmoredMudCrabCreationClub()
	SurvivalModeCreationClub()
	ZombieCreationClub()
	KnightArmorCreationClub()
	ShadowRendCreationClub()
	ExoticArrowsCreationClub()
	StaffOfSheogorathCreationClub()
	ChrysamereCreationClub()
	CampingCreationClub()
	LordSmailCreationClub()
	StendarsHammerCreationClub()
	RuinsEdgeCreationClub()
	HomeSteadCreationClub()
	BackpacksCreationClub()
	SpellPack01CreationClub()
	CivilWarItems()
	containerToSpawn.AddItem(moddedItemsList)
EndFunction

Function PetHoundCreationClub()
	String name = "ccbgssse035-petnhound.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000813, name) as Form)
	If ( formToCheck ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000803, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000802, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000819, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081B, name))
	endIf
EndFunction

Function ArmoredMudCrabCreationClub()
	String name = "ccbgssse010-petdwarvenarmoredmudcrab.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000806, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000807, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000811, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000819, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081B, name))
	endIf
EndFunction

Function SurvivalModeCreationClub()
	String name = "ccqdrsse001-survivalmode.esl"
	Form formToCheck = (Game.GetFormFromFile(0x000009E0, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E1, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E2, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E3, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E4, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E5, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E6, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E7, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E8, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E9, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000009EA, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000A08, name))
	endIf
EndFunction

Function ZombieCreationClub()
	String name = "ccbgssse003-zombies.esl"
	Form formToCheck = (Game.GetFormFromFile(0x0000086E, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000870, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000871, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000883, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000884, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000880, name))
	endIf
EndFunction

Function KnightArmorCreationClub()
	String name = "ccmtysse001-knightsofthenine.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000800, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000870, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000871, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000883, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000884, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000880, name))
	endIf
EndFunction

Function ShadowRendCreationClub()
	String name = "ccbgssse018-shadowrend.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000D62, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D63, name))
	endIf
EndFunction

Function ExoticArrowsCreationClub()
	String name = "ccbgssse002-exoticarrows.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000816, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000837, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000827, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D62, name))
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000800, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000801, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000802, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000803, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000804, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x0000080D, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000822, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00000824, name), 1000)
	endIf
EndFunction

Function StaffOfSheogorathCreationClub()
	String name = "ccbgssse019-staffofsheogorath.esl"
	Form formToCheck = (Game.GetFormFromFile(0x0000080D, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000810, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000811, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000801, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D62, name))
	endIf
EndFunction

Function ChrysamereCreationClub()
	String name = "ccbgssse007-chrysamere.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000D63, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
	endIf
EndFunction

Function CampingCreationClub()
	String name = "ccqdrsse002-firewood.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000801, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
	endIf
EndFunction

Function LordSmailCreationClub()
	String name = "ccbgssse021-lordsmail.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000826, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000839, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000804, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000830, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D63, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000DA0, name))
	endIf
EndFunction

Function StendarsHammerCreationClub()
	String name = "ccbgssse006-stendarshammer.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000D62, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
	endIf
EndFunction

Function RuinsEdgeCreationClub()
	String name = "ccbgssse004-ruinsedge.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000D63, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
	endIf
EndFunction

Function HomeSteadCreationClub()
	String name = "cceejsse001-hstead.esm"
	Form formToCheck = (Game.GetFormFromFile(0x00093DD3, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00047E3B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000818, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008E9, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008EB, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008ED, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000091C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000921, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000092F, name))
	endIf
EndFunction

Function BackpacksCreationClub()
	String name = "ccfsvsse001-backpacks.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00000801, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000802, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000803, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000804, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000805, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000806, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000807, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000808, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000809, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000810, name))
	endIf
EndFunction

Function SpellPack01CreationClub()
	String name = "ccbgssse014-spellpack01.esl"
	Form formToCheck = (Game.GetFormFromFile(0x0000086E, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000826, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000827, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000829, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000835, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000836, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000837, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000838, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000839, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000815, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000816, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000817, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000818, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000861, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000862, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000863, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000864, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000865, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000866, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000867, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000868, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000869, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086D, name))
	endIf
EndFunction

Function CivilWarItems()
	String name = "ccffbsse001-imperialdragon.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00017825, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017848, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017849, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001784A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001784B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001784C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001784D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D68, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D69, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D6A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D6B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D6C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001785E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001785F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017860, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017861, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017862, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017863, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017864, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017954, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017955, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017875, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017876, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017823, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017867, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017868, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001784F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017850, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D61, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00017D62, name))
	endIf
EndFunction