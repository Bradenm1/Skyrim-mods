Scriptname CheatRoomCheatMenuMain extends Quest  
{ This is the main script which will include the main functions for Cheat Menu }

;===ModName===;
String modName = "Cheat Room.esp" ; Allow formID accessing from within the script

;===FormIDs====;
int CHEATMENUSPELLFORMID = 0x002442AC ; The cheat menu Spell FormID
int CHEATMENUGETACTOR = 0x0024940A ; The cheat menu get actor spell
int CHEATMENUHEXMENU01 = 0x002442AE ; The first hex menu
int CHEATMENUHEXMENU02 = 0x002442AF ; The second  hex menu
int CHEATMENUSTORINGVAR = 0x002493E0 ; If the user wants to store var
int CHEATMENUFORMTOUSEARG01 = 0x002493E1 ; The Form the user would like to use
int CHEATMENUFORMTOUSEARG02 = 0x002493E2 ; The Form the user would like to use
int CHEATMENUMODSELECTION = 0x002493E2 ; The Form the user would like to use
int CHEATMENUINTTOUSEARG = 0x002493E7 ; The int the user would like to use
int CHEATMENUSELECTINTAMOUNT = 0x002493E8 ; The int the amount
int CHEATMENUSELECTINTAMOUNTNEG = 0x00249410 ; The int the amount neg
int CHEATMENUFLOATTOUSEARG = 0x00249466 ; The float the user would like to use
int CHEATMENUSELECTFLOATAMOUNT = 0x00249464 ; The float the amount
int CHEATMENUSELECTFLOATAMOUNTNEG = 0x00249465 ; The float the amount neg
int CHEATMENUSELECTBOOLEAN = 0x002493FD ; The boolean
int CHEATMENUSELECTSTRINGARG = 0x002587AF ; String Selection
int CHEATMENUSELECTCHAR01 = 0x002587A8 ; First Selection
int CHEATMENUSELECTCHAR02 = 0x002587A9 ; Second Selection
int CHEATMENUSELECTCHAR03 = 0x002587AA ; Third Selection
int CHEATMENUSELECTCHAR04 = 0x002587AB ; Third Selection
int CHEATMENUSELECTCHAR05 = 0x002587AC ; Fouth Selection
int CHEATMENUSELECTCHAR06 = 0x002587AD ; Fifth Selection
int CHEATMENUSELECTCHAR07 = 0x002587AE ; Sixth Selection
int CHEATMENUMODSELECT = 0x0024E5A0 ; Mod Selection Menu

;===Arrays & Locals====
String[] digitsAndCharacters ; Contains alphabet characters
String[] savedStrings ; Saved strings
float[] savedFloats ; Saved floats
int[] powerLocation ; Powers using power of 16
String[] hexDigits ; Contains hex
String[] loadOrder ; Load Order of custom mods
int[] formIDArray ; Custom entered formID, array of digits and characters
int[] formIDs ; Array of hex values in decimal
int[] savedInts ; Saved ints
;===Non Arrays====
int currentCharSelection ; Menu selected
int currentSelectedMod ; Current select mod given the array
string selectionHex ; Shows currently fake selection
int currentIndex ; Shows current index in the array

;===Spells===;
Spell cheatMenuGetActorSpell
Spell cheatMenuSpell

;===MessageBoxes===;
Message hexMenu01 ; Hex menu for what the function is called on
Message hexMenu02 ; Hex menu for what is used in params
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
Message stringToUseArg ; String selection
Message charSelection01 ; Char selection menu
Message charSelection02 ; Char selection menu
Message charSelection03 ; Char selection menu
Message charSelection04 ; Char selection menu
Message charSelection05 ; Char selection menu
Message charSelection06 ; Char selection menu
Message charSelection07 ; Char selection menu 
Message modSelect ; Select mod menu

;=======Events=======;

; This event will run when the script is initialized
Event OnInit()
	cheatMenuSpell = Game.GetFormFromFile(CHEATMENUSPELLFORMID, modName) as spell
	if (!Game.GetPlayer().HasSpell(cheatMenuSpell)) ; Does the player not  have the cheat menu spell?
		FirstTimeSetUp() ; Do first time setup
  	endIf
EndEvent

;=======Functions=======;

; First Time Setup, settings up varaibles, etc
Function FirstTimeSetUp()
	; Give spells
	Game.GetPlayer().AddSpell(cheatMenuSpell, false) ; Adds the cheat menu spell
	cheatMenuGetActorSpell = Game.GetFormFromFile(CHEATMENUGETACTOR, modName) as spell ; Get menu spell
	Game.GetPlayer().AddSpell(cheatMenuGetActorSpell, false) ; Adds get actor spell
	InitalizeArrays() ; Initalizes all the arrays
	CreatePowerList() ; Create power list
	CreateBaseLoadOrder() ; Create base loadorder
	CreateMessages() ; Creates the messages the menu will use
	digitsAndCharacters = CreateWordArray() ; Returns the array needed for string selection
	; initialize id defaults
	formIDs[0] = 0x00000014 ; Set as player
	formIDs[1] = 0x00000007 ; Set as baseID of player
	formIDs[2] = 0x000139B9 ; Set as baseID of a sword
	formIDs[3] = 0x00013BAC ; Set as refID of Heimskr
	; Set local vars
	selectionHex = ""
	currentIndex = 0
	currentSelectedMod = 0 ; Default mod selected
	currentCharSelection = 0 ; Default menu to start on for character selection
EndFunction

; Initalizes all the arrays
Function InitalizeArrays()
	formIDArray = new Int[8] ; initialize array containing the id the user will enter
	powerLocation = new Int[8] ; initialize array containing the powers for converting to hex
	formIDs = new Int[4] ; initialize array containing custom ids
	savedInts = new Int[4] ; initialize array containting customs ints
	savedFloats = new Float[4] ; initialize array containting customs floats
	loadOrder = new String[128] ; Mod support limit
	hexDigits = new String[17] ; Number of hex
	savedStrings = new String[4] ; initialize array containing strings
EndFunction

; Creates the messages the menu will use
Function CreateMessages()
	hexMenu01 = CreateMessageDefaults(CHEATMENUHEXMENU01)
	hexMenu02 = CreateMessageDefaults(CHEATMENUHEXMENU02)
	wantToStore = CreateMessageDefaults(CHEATMENUSTORINGVAR)
	formToUseArg01 = CreateMessageDefaults(CHEATMENUFORMTOUSEARG01)
	formToUseArg02 = CreateMessageDefaults(CHEATMENUFORMTOUSEARG02)
	intToUseArg = CreateMessageDefaults(CHEATMENUINTTOUSEARG)
	intAmount = CreateMessageDefaults(CHEATMENUSELECTINTAMOUNT)
	intAmountNeg = CreateMessageDefaults(CHEATMENUSELECTINTAMOUNTNEG)
	floatToUseArg = CreateMessageDefaults(CHEATMENUFLOATTOUSEARG)
	floatAmount = CreateMessageDefaults(CHEATMENUSELECTFLOATAMOUNT)
	floatAmountNeg = CreateMessageDefaults(CHEATMENUSELECTFLOATAMOUNTNEG)
	boolChose = CreateMessageDefaults(CHEATMENUSELECTBOOLEAN)
	stringToUseArg = CreateMessageDefaults(CHEATMENUSELECTSTRINGARG)
	charSelection01 = CreateMessageDefaults(CHEATMENUSELECTCHAR01)
	charSelection02 = CreateMessageDefaults(CHEATMENUSELECTCHAR02)
	charSelection03 = CreateMessageDefaults(CHEATMENUSELECTCHAR03)
	charSelection04 = CreateMessageDefaults(CHEATMENUSELECTCHAR04)
	charSelection05 = CreateMessageDefaults(CHEATMENUSELECTCHAR05)
	charSelection06 = CreateMessageDefaults(CHEATMENUSELECTCHAR06)
	charSelection07 = CreateMessageDefaults(CHEATMENUSELECTCHAR07)
	modSelect = CreateMessageDefaults(CHEATMENUMODSELECT)
EndFunction

; Creates a message given the formID and the modname
Message Function CreateMessageDefaults(int formID)
	return Game.GetFormFromFile(formID, modName) as Message
EndFunction

; Creates the power list, used to convert decimal to hex
Function CreatePowerList()
	; To get these numbers do 16 to the power of "number"
	; Example 16 ^ 2 = 256
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
	loadOrder[5] = "Cheat Room.esp"
	loadOrder[6] = ""
	loadOrder[7] = ""
EndFunction

; Hex Menu 01
int Function HexMenu01()
	while (true)
		int iValue = hexMenu01.Show(ConvertFromArrayToValue())
		if ((iValue >= 0) && (iValue  < 8))
			formIDArray[currentIndex] = iValue * powerLocation[currentIndex]
			currentIndex+= 1
		Elseif iValue == 8 ; Next Selection
			HexMenu02()
		Elseif iValue == 9 ; Exit
			;if ((currentIndex == 8) && (Game.GetFormFromFile(ConvertFromArrayToValue(), GetModAtLoadOrder()))) ; Checks if given ID exists in the mod
			if (currentIndex == 8)
				int valueToReturn = ConvertFromArrayToValue()
				currentIndex= 0
				ResetFormArray()
				return valueToReturn ; Return the decimal value
			else ; The given ID does not exist within the mod
				currentIndex= 0
				debug.messagebox("Incorrect ID. The ID is not a length of 8 digits/characters")
				ResetFormArray()
				return 0 ; Stops endless loop, temp fix for now
			endIf
		endif
	endWhile
EndFunction

; Hex Menu 02
Function HexMenu02()
	int offset = 8
	while (true)
		int iValue = hexMenu02.Show(ConvertFromArrayToValue())
		if ((iValue >= 0) && (iValue  < 8))
			formIDArray[currentIndex] = (iValue + offset) * powerLocation[currentIndex]
			currentIndex+= 1
		Elseif (iValue == 8) ; Reset
			ResetFormArray()
			currentIndex = 0
		Elseif (iValue == 9) ; Exit
			return
		endif
	endWhile
EndFunction

; Set int menu
int Function SetIntValue()
	int value = 0
	int positive = 1
	int iValue = 0
	while (true)
		if (positive == 1)
			iValue = intAmount.Show(value)
		else
			iValue = intAmountNeg.Show(value)
		endif
		if iValue == 0 
			value = 0
		; Replace with key value pair
		Elseif iValue == 1
			value += 1 * positive
		Elseif iValue == 2
			value += 5 * positive
		Elseif iValue == 3
			value += 15 * positive
		Elseif iValue == 4
			value += 50 * positive
		Elseif iValue == 5
			value += 100 * positive
		Elseif iValue == 6
			value += 1000 * positive
		Elseif iValue == 7
			value += 10000 * positive
		Elseif iValue == 8 ; Next Selection
			positive = positive * -1
		Elseif iValue ==9 ; Exit
			return value  ; Return the int value
		endif
	endWhile
EndFunction

; Set float  menu
float Function SetFloatValue()
	float value = 0.00
	int positive = 1
	int iValue = 0
	while (true)
		if (positive == 1)
			iValue = floatAmount.Show(value)
		else
			iValue = floatAmountNeg.Show(value)
		endif
		; Replace with key value pair
		if iValue == 0
			value = 0.00
		Elseif iValue == 1
			value += 0.01 * positive
		Elseif iValue == 2
			value += 0.05 * positive
		Elseif iValue == 3
			value += 0.1 * positive
		Elseif iValue == 4
			value += 0.5 * positive
		Elseif iValue == 5
			value += SetIntValue()
		Elseif iValue == 6 ; Next Selection
			positive = positive * -1
		Elseif iValue ==7 ; Exit
			return value  ; Return the float value
		endif
	endWhile
EndFunction

; Set String Menu 01
String Function SelectChar(String value = "")
	int iValue = 0
	while (true)
		; Message to show
		if (currentCharSelection == 0)
			iValue = charSelection01.Show()
		Elseif (currentCharSelection == 7)
			iValue = charSelection02.Show()
		Elseif (currentCharSelection == 14)
			iValue = charSelection03.Show()
		Elseif (currentCharSelection == 21)
			iValue = charSelection04.Show()
		Elseif (currentCharSelection == 28)
			iValue = charSelection05.Show()
		Elseif (currentCharSelection == 35)
			iValue = charSelection06.Show()
		Else ; 42
			iValue = charSelection07.Show()
		Endif
		; Selections
		If ((iValue == 7 && currentCharSelection == 0) || (iValue == 8 && currentCharSelection != 0)); Next Selection for first
			currentCharSelection += 7
		Elseif ((iValue == 7 && currentCharSelection != 0) || (iValue == 2 && currentCharSelection == 42)) ; Previous Selection for menus other then first
			currentCharSelection -= 7
		Elseif ((iValue == 9 && currentCharSelection != 0) || (iValue == 8 && currentCharSelection == 0) || (iValue == 3 && currentCharSelection == 42)); Exit for menus other then first
			return value  ; Return the String value
		else
			value += digitsAndCharacters[iValue + currentCharSelection] ; Append selected string
		endif
		debug.Notification("Current String: " + value)
	EndWhile
EndFunction

; Form To Use Menu
int Function FormToUseFirstArg(int _index)
	int iValue = 0
	while (true)
		if (_index == 0) ; What argument the user is on
			iValue = formToUseArg01.Show()
		Elseif (_index == 1)
			iValue = formToUseArg02.Show()
		EndIf
		if (iValue == formIDs.length) ; Custom Form
			return HexMenu01()
		elseif (iValue == (formIDs.length + 1)) ; Exit
			return 0
		endif
		return formIDs[iValue]
	endWhile
EndFunction

; Int To Use Menu
int Function IntToUse()
	int iValue = intToUseArg.Show(savedInts[0], savedInts[1], savedInts[2], savedInts[3]) ; Shows int values in message
	If iValue == savedInts.length ; Custom Int
		int value = SetIntValue()
		;if (value <= 0)
		;	value = 1
		;endif
		return value
	elseif (iValue == (savedInts.length + 1)) ; Exit
		return 0 ; Default returns 0
	endif
	return savedInts[iValue]
EndFunction

; Float To Use Menu
float Function FloatToUse()
	int iValue = floatToUseArg.Show(savedFloats[0], savedFloats[1], savedFloats[2], savedFloats[3]) ; Shows float values in message
	If iValue == savedFloats.length ; Custom Float
		return SetFloatValue()
	elseif (iValue == (savedFloats.length + 1)) ; Exit
		return 0 ; Default returns 0
	endif
	return savedFloats[iValue]
EndFunction

; String To Use Menu
String Function StringToUse()
	ShowAllStrings()
	int iValue = stringToUseArg.Show()
	if (iValue == (savedInts.length)) ; Custom String
		return SelectChar()
	elseif (iValue == (savedFloats.length + 1)) ; Exit
		return "" ; Default returns empty string
	endif
	return savedStrings[iValue]
EndFunction

; Stores a int
Function StoreInt(int var)
	if WantToStore()
		IntToStoreIn(var)
	endif
EndFunction

; Stores a form
Function StoreForm(int var)
	if WantToStore()
		FormToStoreIn(var)
	endif
EndFunction

; Store a string
Function StoreString(String var)
	if WantToStore()
		StringToStoreIn(var)
	endif
EndFunction

; Store a float
Function StoreFloat(float var)
	if WantToStore()
		FloatToStoreIn(var)
	endif
EndFunction

; Form To Use Menu First Arg
int Function FormToStoreIn(Int var)
	int iValue = formToUseArg01.Show()
	if iValue == formIDs.length ; Exit
		return 0
	endif
	formIDs[iValue] = var
EndFunction

; Int To Use Menu
int Function IntToStoreIn(Int var)
	int iValue = intToUseArg.Show(savedInts[0], savedInts[1], savedInts[2], savedInts[3])
	if iValue == savedInts.length ; Exit
		return 0
	endif
	savedInts[iValue] = var
EndFunction

; Form To Use Menu First Arg
bool Function BoolChose()
	int value = boolChose.Show()
	if value == 0
		return True
	endif
	return False
EndFunction

; Checks if user wants to store a object
bool Function WantToStore()
	int value = wantToStore.Show()
	if value == 0
		return True
	endif
	return False
EndFunction

; String To Use Menu
String Function StringToStoreIn(String var)
	ShowAllStrings()
	int iValue = stringToUseArg.Show()
	if iValue == savedFloats.length ; Exit
		return "" ; Default returns empty string
	endif
	savedStrings[iValue] = var
EndFunction

; Float To Use Menu
Float Function FloatToStoreIn(Float var)
	int iValue = floatToUseArg.Show(savedFloats[0], savedFloats[1], savedFloats[2], savedFloats[3])
	if iValue == savedFloats.length ; Exit
		return 0.00
	endif
	savedFloats[iValue] = var
EndFunction

; Convert from decimal to hex
int Function ConvertFromArrayToValue()
	int _index = 0
	int _value = 0
	while (_index < powerLocation.Length)
		_value+= formIDArray[_index]
		_index += 1
	endWhile
	return _value
EndFunction

; Resets the array
Function ResetFormArray()
	int _index = 0
	while (_index < powerLocation.Length)
		formIDArray[_index] = 0
		_index += 1
	endWhile
EndFunction

; Shows all stored strings
Function ShowAllStrings()
	Debug.MessageBox("String01 = " + savedStrings[0] + "\nString02 = " + savedStrings[1] + "\nString03 = " + savedStrings[2] + "\nString04 = "+ savedStrings[3])
EndFunction

; Creates the character creation array
String[] Function CreateWordArray()
	String[] _ = new String[44]
    _[0] = "A" 
    _[1] = "B" 
    _[2] = "C" 
    _[3] = "D" 
    _[4] = "E" 
    _[5] = "F"
    _[6] = "G" 
    _[7] = "H" 
    _[8] = "I" 
    _[9] = "J" 
   	_[10] = "K" 
    _[11] = "L" 
    _[12] = "M" 
    _[13] = "N" 
    _[14] = "O" 
    _[15] = "P" 
   	_[16] = "Q" 
    _[17] = "R" 
    _[18] = "S" 
    _[19] = "T" 
    _[20] = "U"  
    _[21] = "V" 
   	_[22] = "W" 
   	_[23] = "X" 
    _[24] = "Y" 
    _[25] = "Z" 
    _[26] = "_" 
    _[27] = "0"
    _[28] = "1"
    _[29] = "2"
    _[30] = "3"
    _[31] = "4"
    _[32] = "5"
    _[33] = "6"
	_[34] = "7"
	_[35] = "8"
	_[36] = "9"
	_[37] = "-"
	_[38] = "."
	_[39] = " "
	_[40] = "'"
	_[41] = "~"
	_[42] = ".ESP"
	_[43] = ".ESM"
	return _
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

String Function GetSavedString(int _index)
	return savedStrings[_index]
EndFunction

Function SetSavedString(int _index, String value)
	savedStrings[_index] = value
EndFunction

Function SetSelectedMod(int value)
	currentSelectedMod = value
EndFunction

Function SetCustomMod(int _index, String value)
	loadOrder[_index] = value
	currentSelectedMod = _index
EndFunction

String Function GetModAtLoadOrder()
	int iValue = modSelect.Show()
	return loadOrder[iValue]
EndFunction

; Displays the custom mod
String Function getCustomMods()
	return "Custom Mod 1: " + loadOrder[6] + "\nCustom Mod 2: " + loadOrder[7]
EndFunction

Function SetCurrentCharMenu(int value)
	currentCharSelection = value
EndFunction