Scriptname CheatRoomActiveButton22Effects extends ObjectReference  

;=======Properties=======
FormList Property AllEffects  Auto
Message Property Menu01  Auto    

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	Menu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		Effects()
	Elseif iButton01 ==1
		EffectsRemove()
	endif
endFunction

;Add spells to player
Function Effects()
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int Index = 0
	while (Index < AllEffects.GetSize())
		;MenuOpen()
		game.getplayer().addspell((AllEffects.getAt(Index) as Spell))
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

;Remove spells from player
Function EffectsRemove()
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int Index = 0
	while (Index < AllEffects.GetSize())
		;MenuOpen()
		game.getplayer().removespell((AllEffects.getAt(Index) as Spell))
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Removing!")
EndFunction

;Check if player is in menu
Function MenuOpen()
	while (Utility.IsInMenuMode())
		Utility.Wait(3)
		Debug.MessageBox("Script are running from the button your pressed. CLOSE THE MENUS YOU ARE IN...")
	endWhile
EndFunction