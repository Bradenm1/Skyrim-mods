Scriptname CheatRoomActiveButton15 extends ObjectReference  

FormList Property SHOUTS  Auto    

Event OnActivate(ObjectReference akActionRef)
	Shouts()
	;Word()
 	Debug.Trace("Sheep spell added to the player")
EndEvent

Function Shouts()
	Int Index = 0
	while (Index < SHOUTS.GetSize())
		game.teachword((SHOUTS.getAt(Index) as WordOfPower))
		game.unlockword((SHOUTS.getAt(Index) as WordOfPower))
		Index += 1
	endWhile
EndFunction

;Function Word()
	
;EndFunction

