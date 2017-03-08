Scriptname CheatRoomActiveButton30XPRoom extends ObjectReference  

;=======Properties=======
WEAPON Property XPSword  Auto  

Message Property Menu01  Auto  

ObjectReference Property xMarker01  Auto  

String Property SkillName  Auto  

GlobalVariable Property LevelingStopStart  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	int iButton01 = Menu01.Show()
	Game.EnablePlayerControls(False, False, False, False, False, True)
	if iButton01 == 0
		LevelingStopStart.SetValue(Game.GetPlayer().GetActorValue(SkillName))
		Start()
	Elseif iButton01 == 1
		End()
	endif
EndEvent

;Add XP Sword
Function Start()
	Game.GetPlayer().AddItem(XPSword)
	Game.GetPlayer().EquipItem(XPSword)
EndFunction

;Remove Sword, default skill set and end XP
Function End()
	Game.GetPlayer().SetActorValue(SkillName, LevelingStopStart.GetValueInt())
	Game.GetPlayer().RemoveItem(XPSword)
	Game.GetPlayer().MoveTo(xMarker01)
EndFunction
