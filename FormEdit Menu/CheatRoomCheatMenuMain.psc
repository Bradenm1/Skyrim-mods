Scriptname CheatRoomCheatMenuMain extends Quest  
{ This is the main script which will include the main functions for Cheat Menu }

;===ModName===;
String modName = "Cheat Room.esp"
String[] loadOrder ; Load Order of custom mods

;===FormIDs====;
int CHEATMENUSPELLFORMID = 0x002442AC ; The cheat menu Spell FormID
int CHEATMENUGETACTOR = 0x0024940A ; The cheat menu get actor spell
int CHEATMENUHEXMENU01 = 0x002442AE ; The first hex menu
int CHEATMENUHEXMENU02 = 0x002442AF ; The second  hex menu
int CHEATMENUSTORINGVAR = 0x002493E0 ; If the user wants to store var
int CHEATMENUFORMTOUSEARG01 = 0x002493E1 ; The Form the user would like to use
int CHEATMENUFORMTOUSEARG02 = 0x002493E2 ; The Form the user would like to use
int CHEATMENUINTTOUSEARG = 0x002493E7 ; The int the user would like to use
int CHEATMENUSELECTINTAMOUNT = 0x002493E8 ; The int the amount
int CHEATMENUSELECTINTAMOUNTNEG = 0x00249410 ; The int the amount neg
int CHEATMENUFLOATTOUSEARG = 0x00249466 ; The float the user would like to use
int CHEATMENUSELECTFLOATAMOUNT = 0x00249464 ; The float the amount
int CHEATMENUSELECTFLOATAMOUNTNEG = 0x00249465 ; The float the amount neg
int CHEATMENUSELECTBOOLEAN = 0x002493FD ; The boolean

;===Arrays====
int[] formIDArray ; Custom entered formID, array of digits and characters
int[] powerLocation ; Powers using power of 16

;===Local====
string selectionHex ; Shows currently fake selection
int currentIndex ; Shows current index in the array
int[] formIDs ; Array of hex values in decimal
int[] savedInts ; Saved ints
float[] savedFloats ; Saved floats

;===Spells===;
Spell cheatMenuSpell
Spell cheatMenuGetActorSpell

;===MessageBoxes===;
Message hexMenu01
Message hexMenu02
Message wantToStore ; If the user wants to store var
Message formToUseArg01; The Form the user would like to use
Message formToUseArg02; The Form the user would like to use
Message intToUseArg ; The int the user would like to use
Message intAmount ; Entering of custom int value
Message intAmountNeg ; Entering of custom int neg value
Message floatToUseArg ; The int the user would like to use
Message floatAmount ; Entering of custom float value
Message floatAmountNeg ; Entering of custom float neg value
Message boolChose ; If the user wants false or true

;=======Events=======;

; This event will run when the script is initialized
Event OnInit()
	CheatMenuSpell = Game.GetFormFromFile(CHEATMENUSPELLFORMID, modName) as spell 	; Set cheat spell
	if (!Game.GetPlayer().HasSpell(cheatMenuSpell)) 	; Does the player not  have the cheat menu spell?
		FirstTimeSetUp() ; Do first time setup
  	endIf
EndEvent

;=======Functions=======;

; First Time Setup, settings up varaibles, etc
Function FirstTimeSetUp()
	Game.GetPlayer().AddSpell(cheatMenuSpell, false) ; Adds the cheat menu spell
	cheatMenuGetActorSpell = Game.GetFormFromFile(CHEATMENUGETACTOR, modName) as spell
	Game.GetPlayer().AddSpell(cheatMenuGetActorSpell, false) ; Adds get actor spell
	formIDArray = new Int[8] ; initialize array containing the id the user will enter
	powerLocation = new Int[8] ; initialize array containing the powers for converting to hex
	formIDs = new Int[4] ; initialize array containing custom ids
	savedInts = new Int[4] ; initialize array containting customs ints
	savedFloats = new Float[4] ; initialize array containting customs floats
	loadOrder = new String[128] ; Mod support limit
	CreatePowerList() ; Create power list
	; initialize ids
	formIDs[0] = 0x00000014 ; Set as player
	formIDs[1] = 0x00000007 ; Set as baseID of player
	formIDs[2] = 0x00000014 ; Set as player
	formIDs[3] =  0x00000007 ; Set as baseID of player
	selectionHex = ""
	currentIndex= 0
	;Set Menus
	hexMenu01 = Game.GetFormFromFile(CHEATMENUHEXMENU01, modName) as Message
	hexMenu02 = Game.GetFormFromFile(CHEATMENUHEXMENU02, modName) as Message
	wantToStore = Game.GetFormFromFile(CHEATMENUSTORINGVAR, modName) as Message
	formToUseArg01 = Game.GetFormFromFile(CHEATMENUFORMTOUSEARG01, modName) as Message
	formToUseArg02 = Game.GetFormFromFile(CHEATMENUFORMTOUSEARG02, modName) as Message
	intToUseArg = Game.GetFormFromFile(CHEATMENUINTTOUSEARG, modName) as Message
	intAmount = Game.GetFormFromFile(CHEATMENUSELECTINTAMOUNT, modName) as Message
	intAmountNeg = Game.GetFormFromFile(CHEATMENUSELECTINTAMOUNTNEG, modName) as Message
	floatToUseArg = Game.GetFormFromFile(CHEATMENUFLOATTOUSEARG, modName) as Message
	floatAmount = Game.GetFormFromFile(CHEATMENUSELECTFLOATAMOUNT, modName) as Message
	floatAmountNeg = Game.GetFormFromFile(CHEATMENUSELECTFLOATAMOUNTNEG, modName) as Message
	boolChose = Game.GetFormFromFile(CHEATMENUSELECTBOOLEAN, modName) as Message 
EndFunction

; Creates the power list, used to convert decimal to hex
Function CreatePowerList()
	powerLocation[0] = 268435456 ; Slot 1
	powerLocation[1] = 16777216 ; Slot  2
	powerLocation[2] = 1048576 ; Slot  3
	powerLocation[3] = 65536 ; Slot  4
	powerLocation[4] = 4096 ; Slot  5
	powerLocation[5] = 256 ; Slot  6
	powerLocation[6] = 16 ; Slot  7
	powerLocation[7] = 1 ; Slot  8
EndFunction

; Creates the base loadorder
Function CreateBaseLoadOrder()
	loadOrder[0] = "Skyrim.esm"
	loadOrder[1] = "Update.esm"
	loadOrder[2] = "Dawnguard.esm"
	loadOrder[3] = "HearthFires.esm"
	loadOrder[4] = "Dragonborn.esm"
EndFunction

;Hex Menu 01
int Function HexMenu01()
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			Debug.Notification(selectionHex)
			iButton01 = hexMenu01.Show(ConvertFromArrayToValue())
			if iButton01 == 0 ; 0
				formIDArray[currentIndex] = 0 * powerLocation[currentIndex]
				selectionHex += "0"
				currentIndex+= 1
			Elseif iButton01 ==1 ; 1
				formIDArray[currentIndex] = 1 * powerLocation[currentIndex]
				selectionHex += "1"
				currentIndex+= 1
			Elseif iButton01 ==2 ; 2
				formIDArray[currentIndex] = 2 * powerLocation[currentIndex]
				selectionHex += "2"
				currentIndex+= 1
			Elseif iButton01 ==3 ; 3
				formIDArray[currentIndex] = 3 * powerLocation[currentIndex]
				selectionHex += "3"
				currentIndex+= 1
			Elseif iButton01 ==4 ; 4
				formIDArray[currentIndex] = 4 * powerLocation[currentIndex]
				selectionHex += "4"
				currentIndex+= 1
			Elseif iButton01 ==5 ; 5
				formIDArray[currentIndex] = 5 * powerLocation[currentIndex]
				selectionHex += "5"
				currentIndex+= 1
			Elseif iButton01 ==6 ; 6
				formIDArray[currentIndex] = 6 * powerLocation[currentIndex]
				selectionHex += "6"
				currentIndex+= 1
			Elseif iButton01 ==7 ; 7
				formIDArray[currentIndex] = 7 * powerLocation[currentIndex]
				selectionHex += "7"
				currentIndex+= 1
			Elseif iButton01 ==8 ; Next Selection
				HexMenu02()
			Elseif iButton01 ==9 ; Exit
				if ((currentIndex == 8) && (Game.GetForm(ConvertFromArrayToValue())))
					;var.SetValue(ConvertFromArrayToValue())
					debug.messagebox(selectionHex)
					selectionHex = ""
					currentIndex= 0
				else
					debug.messagebox("Incorrect ID, you entered: " + selectionHex)
				endIf
				return ConvertFromArrayToValue() ; Return the decimal value
			endif
		endif
	endWhile
EndFunction

;Hex Menu 02
Function HexMenu02()
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			;Debug.Notification(selectionHex)
			iButton01 = hexMenu02.Show(ConvertFromArrayToValue())
			if iButton01 == 0 ; 8
				formIDArray[currentIndex] = 8 * powerLocation[currentIndex]
				selectionHex += "8"
				currentIndex+= 1
			Elseif iButton01 ==1 ; 9
				formIDArray[currentIndex] = 9 * powerLocation[currentIndex]
				selectionHex += "9"
				currentIndex+= 1
			Elseif iButton01 ==2 ; A
				formIDArray[currentIndex] = 10 * powerLocation[currentIndex]
				selectionHex += "A"
				currentIndex+= 1
			Elseif iButton01 ==3 ; B
				formIDArray[currentIndex] = 11 * powerLocation[currentIndex]
				selectionHex += "B"
				currentIndex+= 1
			Elseif iButton01 ==4 ; C
				formIDArray[currentIndex] = 12 * powerLocation[currentIndex]
				selectionHex += "C"
				currentIndex+= 1
			Elseif iButton01 ==5 ; D
				formIDArray[currentIndex] = 13 * powerLocation[currentIndex]
				selectionHex += "D"
				currentIndex+= 1
			Elseif iButton01 ==6 ; E
				formIDArray[currentIndex] = 14 * powerLocation[currentIndex]
				selectionHex += "E"
				currentIndex+= 1
			Elseif iButton01 ==7 ; F
				formIDArray[currentIndex] = 15 * powerLocation[currentIndex]
				selectionHex += "F"
				currentIndex+= 1
			Elseif iButton01 ==8 ; Reset
				ResetFormArray()
				selectionHex = ""
				currentIndex = 0
			Elseif iButton01 ==9 ; Exit
				return
			endif
		endif
	endWhile
EndFunction

; Set int menu
int Function SetIntValue()
	int value = 0
	int positive = 1
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			if (positive == 1)
				iButton01 = intAmount.Show(value)
			else
				iButton01 = intAmountNeg.Show(value)
			endif
			if iButton01 == 0 
				value = 0
			Elseif iButton01 == 1
				value += 1 * positive
			Elseif iButton01 == 2
				value += 5 * positive
			Elseif iButton01 == 3
				value += 15 * positive
			Elseif iButton01 == 4
				value += 50 * positive
			Elseif iButton01 == 5
				value += 100 * positive
			Elseif iButton01 == 6
				value += 1000 * positive
			Elseif iButton01 == 7
				value += 10000 * positive
			Elseif iButton01 == 8 ; Next Selection
				if (positive == -1)
					positive = 1
				else
					positive = -1
				endif
			Elseif iButton01 ==9 ; Exit
				return value  ; Return the int value
			endif
		endif
	endWhile
EndFunction

; Set float  menu
float Function SetFloatValue()
	float value = 0.00
	int positive = 1
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			if (positive == 1)
				iButton01 = floatAmount.Show(value)
			else
				iButton01 = floatAmountNeg.Show(value)
			endif
			if iButton01 == 0
				value = 0.00
			Elseif iButton01 == 1
				value += 0.01 * positive
			Elseif iButton01 == 2
				value += 0.05 * positive
			Elseif iButton01 == 3
				value += 0.1 * positive
			Elseif iButton01 == 4
				value += 0.5 * positive
			Elseif iButton01 == 5
				value += SetIntValue()
			Elseif iButton01 == 6 ; Next Selection
				if (positive == -1)
					positive = 1
				else
					positive = -1
				endif
			Elseif iButton01 ==7 ; Exit
				return value  ; Return the float value
			endif
		endif
	endWhile
EndFunction

;Form To Use Menu
int Function FormToUseFirstArg(int _index)
	int iButton01 = 0
	while (true)
		if (iButton01 != -1)
			if (_index == 0) ; What argument the user is on
				iButton01 = formToUseArg01.Show()
			Elseif (_index == 1)
				iButton01 = formToUseArg02.Show()
			EndIf
			if (iButton01 ==formIDs.length) ; Exit
				return 0
			endif
			return formIDs[iButton01]
		endif
	endWhile
EndFunction

;Int To Use Menu
int Function IntToUse()
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			iButton01 = intToUseArg.Show(savedInts[0], savedInts[1], savedInts[2], savedInts[3]) ; Shows int values in message
			If iButton01 == savedInts.length ; Custom Int
				int value = SetIntValue()
				;if (value <= 0)
				;	value = 1
				;endif
				return value
			elseif (iButton01 == (savedInts.length + 1)) ; Exit
				return 0 ; Default returns 0
			endif
			return savedInts[iButton01]
		endif
	endWhile
EndFunction

;Float To Use Menu
float Function FloatToUse()
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			iButton01 = intToUseArg.Show(savedFloats[0], savedFloats[1], savedFloats[2], savedFloats[3]) ; Shows float values in message
			If iButton01 == savedFloats.length ; Custom Float
				return SetFloatValue()
			elseif (iButton01 == (savedFloats.length + 1)) ; Exit
				return 0 ; Default returns 0
			endif
			return savedFloats[iButton01]
		endif
	endWhile
EndFunction

;If the user wants to store the var, and what to store in
Function StoreVar(int menu, int var)
	int iButton01 = 1
	iButton01 = wantToStore.Show()
	if iButton01 == 0
		if menu== 0 ; Forms
			FormToStoreIn(var)
		Elseif menu==1 ; Ints
			IntToStoreIn(var)
		Elseif menu==2 ; Floats
		Elseif menu==3 ; IDK
		endif
	endif
EndFunction

;Form To Use Menu First Arg
int Function FormToStoreIn(Int var)
	int iButton01 = 0
	iButton01 = formToUseArg01.Show()
	if iButton01 ==formIDs.length ; Exit
		return 0
	endif
	formIDs[iButton01] = var
EndFunction

;Form To Use Menu First Arg
bool  Function BoolChose()
	int iButton01 = 0
	iButton01 = boolChose.Show()
	if iButton01 == 0
		return true
	endif
	return false ; Default returns false
EndFunction

;Int To Use Menu
int Function IntToStoreIn(Int var)
	int iButton01 = 0
	iButton01 = formToUseArg01.Show()
	if iButton01 ==formIDs.length ; Exit
		return 0
	endif
	savedInts[iButton01] = var
EndFunction

;Convert from decimal to hex
int Function ConvertFromArrayToValue()
	int _index = 0
	int _value = 0
	while (_index < powerLocation.Length)
		_value+= formIDArray[_index]
		_index += 1
	endWhile
	return _value
EndFunction

;Resets the array
Function ResetFormArray()
	int _index = 0
	while (_index < powerLocation.Length)
		formIDArray[_index] = 0
		_index += 1
	endWhile
EndFunction

;=======Sets/Gets=======;

int Function GetFormIDs(int _index)
	return formIDs[_index]
EndFunction

Function SetFormIDs(int _index, int value)
	formIDs[_index] = value
EndFunction

int Function GetSavedInt(int _index)
	return savedInts[_index]
EndFunction

Function SetSavedInt(int _index, int value)
	savedInts[_index] = value
EndFunction

float Function GetSavedFloat(int _index)
	return savedFloats[_index]
EndFunction

Function SetSavedFloat(int _index, float value)
	savedFloats[_index] = value
EndFunction