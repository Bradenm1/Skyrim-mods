Scriptname CheatRoomRingShoutTimer extends ObjectReference  

String[] Property ShoutStuff  Auto
Float[] Property NumbersStuff  Auto  
Float[] Property OldNumbersStuff  Auto  

Event OnEquipped(Actor akActor)
	int i = 0
 	while i < ShoutStuff.Length
		Game.SetGameSettingFloat(ShoutStuff[i], NumbersStuff[i])
		i += 1
	endWhile
    	Return
EndEvent
 
Event OnUnequipped(Actor akActor)
	int i = 0
 	while i < ShoutStuff.Length
		Game.SetGameSettingFloat(ShoutStuff[i], OldNumbersStuff[i])
		i += 1
	endWhile
    	Return
EndEvent
