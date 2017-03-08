Scriptname CheatRoomActiveButton31AllFac extends ObjectReference  

Message Property Menu01  Auto  

FormList Property AllFacs  Auto  

Faction Property PlayerFaction  Auto

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		Friendly()
	Elseif iButton01 == 1
		Enemy()
	Elseif iButton01 == 2
		Netural()
	endif
endFunction

Function Friendly()
	Int Index = 0
	while (Index < AllFacs.GetSize())
		game.getplayer().AddToFaction((AllFacs.getAt(Index) as Faction))
		PlayerFaction.SetReaction(AllFacs.getAt(Index) as Faction, 3)
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

Function Enemy()
	Int Index = 0
	while (Index < AllFacs.GetSize())
		game.getplayer().AddToFaction((AllFacs.getAt(Index) as Faction))
		PlayerFaction.SetReaction(AllFacs.getAt(Index) as Faction, 1)
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

Function Netural()
	Int Index = 0
	while (Index < AllFacs.GetSize())
		game.getplayer().AddToFaction((AllFacs.getAt(Index) as Faction))
		PlayerFaction.SetReaction(AllFacs.getAt(Index) as Faction, 0)
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction  
