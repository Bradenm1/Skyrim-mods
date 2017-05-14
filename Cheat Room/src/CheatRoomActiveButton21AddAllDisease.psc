Scriptname CheatRoomActiveButton21AddAllDisease extends ObjectReference  

FormList Property AllDiseases  Auto
Message Property Menu01  Auto    

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		Disease()
	Elseif iButton01 ==1
		DiseaseRemove()
	endif
endFunction

Function Disease()
	Int Index = 0
	while (Index < AllDiseases.GetSize())
		game.getplayer().addspell((AllDiseases.getAt(Index) as Spell))
		Index += 1
	endWhile
EndFunction

Function DiseaseRemove()
	Int Index = 0
	while (Index < AllDiseases.GetSize())
		game.getplayer().removespell((AllDiseases.getAt(Index) as Spell))
		Index += 1
	endWhile
EndFunction
