Scriptname CheatRoomAddMods extends ObjectReference  

int BOOKFORMID = 0x001C0813

;=======Properties=======
ObjectReference Property containerToSpawn  Auto  
FormList Property moddedItemsList  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	SpawnMods()
EndEvent

Function SpawnMods()
	containerToSpawn.RemoveAllItems()
	moddedItemsList.AddForm(Game.GetFormFromFile(BOOKFORMID, "Cheat Room.esp"))
	PetHoundCreationClub()
	ArmoredMudCrabCreationClub()
	SruvivalModeCreationClub()
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
	SpawnItems()
EndFunction

Function PetHoundCreationClub()
	String name = "ccbgssse035-petnhound.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000813, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000803, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000802, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000819, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081B, name))
EndFunction

Function ArmoredMudCrabCreationClub()
	String name = "ccbgssse010-petdwarvenarmoredmudcrab.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000806, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000807, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000811, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000819, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081B, name))
EndFunction

Function SruvivalModeCreationClub()
	String name = "ccqdrsse001-survivalmode.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x000009E0, name))
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
EndFunction

Function ZombieCreationClub()
	String name = "ccbgssse003-zombies.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086E, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000086F, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000870, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000871, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000883, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000884, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080C, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000880, name))
EndFunction

Function KnightArmorCreationClub()
	String name = "ccmtysse001-knightsofthenine.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000800, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000801, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000802, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000803, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000804, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000805, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000806, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000807, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000808, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000809, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080C, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080D, name))
EndFunction

Function ShadowRendCreationClub()
	String name = "ccbgssse018-shadowrend.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D62, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D63, name))
EndFunction

Function ExoticArrowsCreationClub()
	String name = "ccbgssse002-exoticarrows.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000816, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081D, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000081F, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082B, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000837, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000800, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000801, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000802, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000803, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000804, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080D, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000822, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000824, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000827, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D62, name))
EndFunction

Function StaffOfSheogorathCreationClub()
	String name = "ccbgssse019-staffofsheogorath.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080D, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080E, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080F, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000810, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000811, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000801, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D62, name))
EndFunction

Function ChrysamereCreationClub()
	String name = "ccbgssse007-chrysamere.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D63, name))
EndFunction

Function CampingCreationClub()
	String name = "ccqdrsse002-firewood.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000801, name))
EndFunction

Function LordSmailCreationClub()
	String name = "ccbgssse021-lordsmail.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000826, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000080D, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000839, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000804, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082D, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082E, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000082F, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000830, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D63, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000DA0, name))
EndFunction

Function StendarsHammerCreationClub()
	String name = "ccbgssse006-stendarshammer.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D62, name))
EndFunction

Function RuinsEdgeCreationClub()
	String name = "ccbgssse004-ruinsedge.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000D63, name))
EndFunction

Function HomeSteadCreationClub()
	String name = "cceejsse001-hstead.esm"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00093DD3, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00047E3B, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000818, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x000008E9, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x000008EB, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x000008ED, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000091C, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000921, name))
	moddedItemsList.AddForm(Game.GetFormFromFile(0x0000092F, name))
EndFunction

Function BackpacksCreationClub()
	String name = "ccfsvsse001-backpacks.esl"
	moddedItemsList.AddForm(Game.GetFormFromFile(0x00000801, name))
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
EndFunction

Function SpellPack01CreationClub()
	String name = "ccbgssse014-spellpack01.esl"
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
EndFunction

Function SpawnItems()
	Int index = 0
	While index < moddedItemsList .GetSize()
		Form object = moddedItemsList .GetAt(index) As Form
		containerToSpawn.AddItem(object)
	index += 1
	EndWhile
EndFunction