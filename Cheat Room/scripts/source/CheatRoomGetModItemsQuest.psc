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
	SunderAndWraithguard()
	NordicJewelry()
	BoneWolf()
	RareCurious()
	EliteCrossbows()
	StaffOfHasedoki()
	Myrwatch()
	VigilEnforcerArmorSet()
	ForgottenSeasons()
	SaturaliaHolidayPack()
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

Function SunderAndWraithguard()
	String name = "ccbgssse008-wraithguard.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00015D63, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00015816, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00015817, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00015818, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00015819, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001581A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00015801, name))
	endIf
EndFunction

Function NordicJewelry()
	String name = "ccedhsse001-norjewel.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00010800, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010801, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001080D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001080E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001080F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010810, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010811, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010812, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010813, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010814, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010815, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010816, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010817, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010818, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010819, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001081A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001081B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001081C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001081D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001081E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010D62, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001081F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00010820, name))
	endIf
EndFunction

Function BoneWolf()
	String name = "ccbgssse036-petbwolf.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00016808, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00016809, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001680E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001680A, name))
	endIf
EndFunction

Function RareCurious()
	String name = "ccbgssse037-curios.esl"
	Form formToCheck = (Game.GetFormFromFile(0x0001282F, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		containerToSpawn.AddItem(formToCheck, 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00012832, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x0001283A, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x0001283F, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00012840, name), 1000)
		containerToSpawn.AddItem(Game.GetFormFromFile(0x00012841, name), 1000)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012800, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012849, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012D98, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012802, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012804, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012805, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012806, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012807, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012809, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001280A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001280B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001280C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001280D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001280E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001280F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012810, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012811, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012813, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012814, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012815, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012816, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012817, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012818, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012819, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001281A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001281B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001281C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001281D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001281E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001281F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012820, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012821, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012822, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012823, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012824, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012825, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012826, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012827, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012828, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012829, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001282A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001282B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001282C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001282D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001282E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012836, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012837, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012838, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012851, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012D62, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012D66, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012D68, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012D6A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012D6C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00012801, name))
	endIf
EndFunction

Function EliteCrossbows()
	String name = "ccbgssse043-crosselv.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00019804, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00019801, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00019809, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000198A6, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000198AE, name))
	endIf
EndFunction

Function StaffOfHasedoki()
	String name = "ccbgssse045-hasedoki.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00014801, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00014802, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00014803, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00014804, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00014805, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00014839, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00014806, name))
	endIf
EndFunction

Function Myrwatch()
	String name = "cceejsse002-tower.esl"
	Form formToCheck = (Game.GetFormFromFile(0x0000FFDE, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000FFE6, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000FFF8, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000FFF9, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F812, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F813, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F814, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F815, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F847, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F84A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F858, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F861, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F868, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F86D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F86E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F87B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F87D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F899, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F89B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000F8A9, name))
	endIf
EndFunction

Function VigilEnforcerArmorSet()
	String name = "ccmtysse002-ve.esl"
	Form formToCheck = (Game.GetFormFromFile(0x00018800, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018803, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D61, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D62, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D63, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D64, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D65, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D7A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D7B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D7C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D7D, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D7E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D7F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D80, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D81, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D82, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D83, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D84, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D85, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018D86, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018811, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018927, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018928, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018929, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018952, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00018963, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000189E5, name))
	endIf
EndFunction


Function ForgottenSeasons()
	String name = "cctwbsse001-puzzledungeon.esm"
	Form formToCheck = (Game.GetFormFromFile(0x00019D20, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0003326A, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000088F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000890, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000892, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000893, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000894, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00000895, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000089E, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000089F, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A0, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A1, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A2, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A3, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A4, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A5, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A6, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A7, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A8, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008A9, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008AA, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008AB, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0007F1A1, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000DF813, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000090B, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0000090C, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B1, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B2, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B4, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B5, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B6, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B8, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008B9, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008BA, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008BB, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008BC, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008BD, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008BE, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008BF, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C0, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C1, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C2, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C3, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C4, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C5, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008C8, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x00130891, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008DD, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008DE, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008DF, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008E0, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008E1, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x000008E2, name))
	endIf
EndFunction

Function SaturaliaHolidayPack()
	String name = "ccvsvsse001-winter.esl"
	Form formToCheck = (Game.GetFormFromFile(0x0001A803, name) as Form)
	If ( formToCheck != None ) ;Check if the user has the mod.
		moddedItemsList.AddForm(formToCheck)
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001A805, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001A806, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001A807, name))
		moddedItemsList.AddForm(Game.GetFormFromFile(0x0001A808, name))
	endIf
EndFunction