Scriptname CheatRoomCheatMenuMain extends Quest  
{ This is the main script which will include the main functions for Cheat Menu }

;===ModName===;
String modName = "Cheat Room.esp"

;===FormIDs====;
int CHEATMENUSPELLFORMID = 0x002442AC ; The cheat menu Spell FormID
int CHEATMENUHEXMENU01 = 0x002442AE ; The first hex menu
int CHEATMENUHEXMENU02 = 0x002442AF ; The second  hex menu

;===Arrays====
int[] formIDArray ; Custom entered formID
int[] powerLocation ; Powers using power of 16

;===Local====
string selectionHex ; Shows currently fake selection
int currentIndex ; Shows current index in the array
int form1ID
int form2ID

;===Spells===;
Spell cheatMenuSpell

;===MessageBoxes===;
Message hexMenu01
Message hexMenu02

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
	formIDArray = new Int[8] ; initialize array containt the id the user will enter
	powerLocation = new Int[8] ; initialize array containt the id the user will enter
	CreatePowerList() ; Create power list
	form1ID = 0x00000014
	form2ID = 0x00000007
	selectionHex = ""
	currentIndex= 0
	;Set Menus
	hexMenu01 = Game.GetFormFromFile(CHEATMENUHEXMENU01, modName) as Message
	hexMenu02 = Game.GetFormFromFile(CHEATMENUHEXMENU02, modName) as Message
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

;Hex Menu 01
int Function HexMenu01(int var)
	int iButton01 = 0
	while (true)
		if iButton01 != -1
			Debug.Notification(selectionHex)
			iButton01 = hexMenu01.Show()
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
				if (currentIndex == 8)
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
			iButton01 = hexMenu02.Show()
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

int Function ConvertFromArrayToValue()
	int _index = 0
	int value = 0
	while (_index < powerLocation.Length)
		value += formIDArray[_index]
		_index += 1
	endWhile
	return value
EndFunction

Function ResetFormArray()
	int _index = 0
	int value = 0
	while (_index < powerLocation.Length)
		formIDArray[_index] = 0
		_index += 1
	endWhile
EndFunction

;=======Sets/Gets=======;

int Function Getform1ID()
	return form1ID
EndFunction

Function Setform1ID(int value)
	form1ID = value
EndFunction

int Function Getform2ID()
	return form2ID
EndFunction

Function Setform2ID(int value)
	form2ID= value
EndFunction
