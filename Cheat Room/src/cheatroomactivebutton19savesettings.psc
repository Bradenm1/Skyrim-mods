Scriptname CheatRoomActiveButton19SaveSettings extends ObjectReference  

ObjectReference Property Container01  Auto  

Book Property SupportedBook  Auto  

Message Property MainMenu01  Auto  

Weapon temp01
Book temp02
Ammo temp03
Key temp04
Ingredient temp05
SoulGem temp06
MiscObject temp07
Potion temp08
FormList temp09

int index = 0


Event OnActivate(ObjectReference akActionRef)
	Menu()
EndEvent

Function Menu()
	int iButton01 = MainMenu01.Show()
	if iButton01 == 0
		Container01.RemoveAllItems()
		AddModdedItems()
		Container01.Additem(SupportedBook)
	endif
endFunction

Function AddModdedItems()
	;/Mod goes here 
	Example:
		;Weapon temp01 = Game.GetFromFromFile(0x00000D62, "BradsCheatWeaponAndStuff.esp") as Weapon /;

	;Example 01
		;temp01 = Game.GetFormFromFile(0x00000D62, "BradsCheatWeaponAndStuff.esp") as Weapon
		;Container01.Additem(temp01)

		temp01 = Game.GetFormFromFile(0x00002B22, "isilnarsilt.esp") as Weapon
		Container01.Additem(temp01, 5)

		temp01 = Game.GetFormFromFile(0x00000D62, "BradsWeaponCheat.esp") as Weapon
		Container01.Additem(temp01)
		
	
	;============================SUPPORTED MODS============================

		temp09 = Game.GetFormFromFile(0x00007D23, "isilnarsilt.esp") as FormList
		While (index < temp09.GetSize())
			debug.messagebox(index)
			Container01.Additem(temp09.GetAt(index))
			index+= 1
		EndWhile
	
endFunction
