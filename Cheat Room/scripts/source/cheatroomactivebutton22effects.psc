Scriptname CheatRoomActiveButton22Effects extends ObjectReference  

;=======Properties=======
FormList Property AllEffects  Auto
Message Property Menu01  Auto    

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		AddSpells()
	Elseif iButton01 == 1
		RemoveSpells()
	endif
EndEvent

;Add spells to player
Function AddSpells()
	Int Index = 0
	while (Index < AllEffects.GetSize())
		;MenuOpen()
		game.getplayer().addspell((AllEffects.getAt(Index) as Spell))
		Index += 1
	endWhile
EndFunction

;Remove spells from player
Function RemoveSpells()
	Int Index = 0
	while (Index < AllEffects.GetSize())
		;MenuOpen()
		game.getplayer().removespell((AllEffects.getAt(Index) as Spell))
		Index += 1
	endWhile
EndFunction