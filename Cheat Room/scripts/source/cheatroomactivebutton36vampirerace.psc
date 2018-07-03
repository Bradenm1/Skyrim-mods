Scriptname CheatRoomActiveButton36VampireRace extends ObjectReference  

;=======Properties=======
Race[] Property NonVampire  Auto  
Race[] Property Vampire  Auto  

Message Property Menu01  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Menu()
EndEvent

Function Menu()
	int iButton01 = Menu01.Show()
	if iButton01 == 0
		CheckAndAdd()
	Elseif iButton01 ==1
		CheckAndRemove()
	endif
endFunction

;Check and add vampire race to player
Function CheckAndAdd()
	Int Index = 0
	While NonVampire.Length > Index
		Race PlayerRace = Game.GetPlayer().GetRace()
		If PlayerRace == NonVampire[Index]
			Game.GetPlayer().SetRace(Vampire[Index])
		Else
			;Nothing
		EndIf
		Index+= 1
	EndWhile
EndFunction

;Check and remove vampire race from player
Function CheckAndRemove()
	Int Index = 0
	While NonVampire.Length > Index
		Race PlayerRace = Game.GetPlayer().GetRace()
		If PlayerRace == Vampire[Index]
			Game.GetPlayer().SetRace(NonVampire[Index])
		Else
			;Nothing
		EndIf
		Index+= 1
	EndWhile
EndFunction
