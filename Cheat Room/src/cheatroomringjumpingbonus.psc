Scriptname CheatRoomRingJumpingBonus extends ObjectReference 

Int Property JumpIM  Auto
Int Property Default01  Auto  
String Property Setting01  Auto    

Event OnEquipped(Actor akActor)
	Game.SetGameSettingFloat(Setting01, JumpIM)
    	Return
EndEvent
 
Event OnUnequipped(Actor akActor)
	Game.SetGameSettingFloat(Setting01, Default01)
    	Return
EndEvent
