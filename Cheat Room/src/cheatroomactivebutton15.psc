Scriptname CheatRoomActiveButton15 extends ObjectReference  

FormList Property SHOUTS  Auto    

Shout[] Property SHOUTS2  Auto  

Message Property Menu01  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		Shouts()
	Elseif iButton01 ==1
		Word()
	Elseif iButton01 ==2
		WordRemove()
	endif
endFunction

Function Shouts()
	Int Index = 0
	while (Index < SHOUTS.GetSize())
		game.teachword((SHOUTS.getAt(Index) as WordOfPower))
		game.unlockword((SHOUTS.getAt(Index) as WordOfPower))
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

Function Word()
	Int Index = 0
	while (Index < SHOUTS2.Length)
		game.getplayer().addshout(SHOUTS2[Index])
		Index += 1
	endWhile
	Shouts()
EndFunction

Function WordRemove()
	Int Index = 0
	while (Index < SHOUTS2.Length)
		game.getplayer().removeshout(SHOUTS2[Index])
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Removing!")
EndFunction
