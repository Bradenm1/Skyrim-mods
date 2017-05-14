Scriptname CheatRoomActiveButton20LearnAllSpells extends ObjectReference  

FormList Property AllSpells  Auto  

Event OnActivate(ObjectReference akActionRef)
	Debug.MessageBox("You will now learn over 900 spells, give the game time to add them all. I hope you understand what you just did.")
	Spells()
EndEvent

Function Spells()
	Int Index = 0
	while (Index < AllSpells.GetSize())
		game.getplayer().addspell((AllSpells.getAt(Index) as Spell))
		game.getplayer().DispelAllSpells()
		Index += 1
	endWhile
EndFunction