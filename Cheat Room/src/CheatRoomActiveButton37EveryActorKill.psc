Scriptname CheatRoomActiveButton37EveryActorKill extends ObjectReference  

;=======Properties=======
FormList Property AllActors  Auto
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
		Game.EnablePlayerControls(False, False, False, False, False, True)
		Actors()
	endif
endFunction

;Add spells to player
Function Actors()
	Debug.MessageBox("You'll get a prompt when the button is done")
	Int Index = 0
	while (Index < AllActors.GetSize())
		ActorBase tempActor = AllActors.getAt(Index) as ActorBase
		tempActor.SetEssential(false)
		tempActor.SetInvulnerable(false)
		if ((Index % 255) == 0)
			Debug.Notification("Completed " + Index + " Of " + AllActors.GetSize())
		endif
		Index += 1
	endWhile
	Debug.MessageBox("Button is Done Adding!")
EndFunction
