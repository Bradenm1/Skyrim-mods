Scriptname CheatRoomActiveButton38AddRemovePerks extends ObjectReference  

;=======Properties=======
FormList Property AllPerks  Auto
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
		Perks()
	Elseif iButton01 ==1
		PerksRemove()
	endif
endFunction

;Add spells to player
Function Perks()
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int Index = 0
	while (Index < AllPerks.GetSize())
		;MenuOpen()
		game.getplayer().AddPerk((AllPerks.getAt(Index) as Perk))
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction

;Remove spells from player
Function PerksRemove()
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int Index = 0
	while (Index < AllPerks.GetSize())
		;MenuOpen()
		game.getplayer().RemovePerk((AllPerks.getAt(Index) as Perk))
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