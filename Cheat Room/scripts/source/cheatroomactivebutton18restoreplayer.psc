Scriptname CheatRoomActiveButton18RestorePlayer extends ObjectReference  

Message Property MessageRestore  Auto  

String[] Property SkillsArray  Auto  
GlobalVariable[] Property GlobalVer  Auto  

;ArrayActual = 17 - is size of array without other

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	RestoreMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function RestoreMenu()
	int iButton02 = MessageRestore.Show()
	if iButton02 == 0
		int Index = 0
		while (Index <  SkillsArray.Length)
			Game.GetPlayer().SetActorValue(SkillsArray[Index],  GlobalVer[Index].GetValue())
			Debug.Notification(SkillsArray[Index] + " Set to Default ")
			Index+= 1
		endWhile
		Game.GetPlayer().SetActorValue("Block",  GlobalVer[3].GetValue())
		Game.GetPlayer().SetActorValue("Speechcraft",  GlobalVer[11].GetValue())
	Elseif iButton02 == 1
		int Index = 0
		while (Index <  SkillsArray.Length)
			GlobalVer[Index].SetValue(Game.GetPlayer().GetActorValue(SkillsArray[Index]))
			Debug.Notification(SkillsArray[Index] + " Overwrite and saved")
			Index+= 1
		endWhile
	endif
endFunction