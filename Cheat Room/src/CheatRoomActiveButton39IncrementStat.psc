Scriptname CheatRoomActiveButton39IncrementStat extends ObjectReference  

;Properties

String[] Property Stats  Auto  

GlobalVariable Property CheatRoomGlobalSkillNumb  Auto  

Message[] Property Menus  Auto  

int index

;Functions

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	if (CheatRoomGlobalSkillNumb.GetValueInt() < 1)
		Debug.MessageBox("You cannot remove or have 0 from these stats")
	else
		index = 0
		Menu01()
	endif
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

Function Menu01()
	int iButton01 = Menus[0].Show()
	if iButton01 == 0
		 Game.IncrementStat(Stats[0], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 == 1
		 Game.IncrementStat(Stats[1], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==2
		Game.IncrementStat(Stats[2], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==3
		Game.IncrementStat(Stats[3], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==4
		Game.IncrementStat(Stats[4], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==5
		Game.IncrementStat(Stats[5], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==6
		Menu02()
	endif
endFunction

Function Menu02()
	int iButton01 = Menus[1].Show()
	if iButton01 == 0
		 Game.IncrementStat(Stats[6], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 == 1
		 Game.IncrementStat(Stats[7], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==2
		Game.IncrementStat(Stats[8], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==3
		Game.IncrementStat(Stats[9], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==4
		Game.IncrementStat(Stats[10], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==5
		Game.IncrementStat(Stats[11], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==6
		Menu03()
	endif
endFunction

Function Menu03()
	int iButton01 = Menus[2].Show()
	if iButton01 == 0
		 Game.IncrementStat(Stats[12], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 == 1
		Game.IncrementStat(Stats[13], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==2
		Game.IncrementStat(Stats[14], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==3
		Game.IncrementStat(Stats[15], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==4
		Game.IncrementStat(Stats[16], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==5
		Game.IncrementStat(Stats[17], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==6
		Menu04()
	endif
endFunction

Function Menu04()
	int iButton01 = Menus[3].Show()
	if iButton01 == 0
		 Game.IncrementStat(Stats[18], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 == 1
		Game.IncrementStat(Stats[19], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==2
		Game.IncrementStat(Stats[20], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==3
		Game.IncrementStat(Stats[21], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==4
		Game.IncrementStat(Stats[22], CheatRoomGlobalSkillNumb.GetValueInt())
	Elseif iButton01 ==5
		Game.IncrementStat(Stats[23], CheatRoomGlobalSkillNumb.GetValueInt())
	endif
endFunction