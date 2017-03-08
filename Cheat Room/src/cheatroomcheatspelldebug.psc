Scriptname CheatRoomCheatSpellDebug extends activemagiceffect  

Message[] Property Messages  Auto  

FormList Property QuestsList  Auto  

GlobalVariable Property GlobalIndex  Auto  
GlobalVariable Property GlobalPlusMin  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Debug.OpenUserLog("myUserLog")
	Int i = 0
	While i < QuestsList.GetSize()
		Debug.TraceUser("myUserLog", "")
		Debug.TraceUser("myUserLog", i)
		Debug.TraceUser("myUserLog", QuestsList.GetAt(i))
		i += 1
	endwhile
	Game.DisablePlayerControls(False, False, False, False, False, True)
	DebugMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent


;Main Menu
Function DebugMenu(bool Menu = True, int iButton01 = 0)
	While Menu
		if iButton01 != -1
			iButton01 =  Messages[0].Show()
			Menu = False
			if iButton01 == 0;
				Menu01()
			Elseif iButton01 ==1
				Menu02()
			Elseif iButton01 ==2
				Menu03()
			Elseif iButton01 ==3
				Menu04()
			endif
		endif
	endwhile
EndFunction


Function Menu01()
	int iButton02 = Messages[1].Show()
	if iButton02 == 0;
		;QuestForm
	endif
EndFunction


Function Menu02()
	int temp = 0
	int iButton02 = Messages[2].Show()
	if iButton02 == 0;
		if GlobalPlusMin.GetValue() == 0
			GlobalPlusMin.SetValue(1)
		else
			GlobalPlusMin.SetValue(0)
		endif
	Elseif ibutton02 == 1;
		GlobalIndex.SetValue(0)
	Elseif ibutton02 == 2;
		temp = GlobalIndex.GetValueInt() + 1
		GlobalIndex.SetValueInt(temp)
	Elseif ibutton02 == 3;
		temp = GlobalIndex.GetValueInt() + 10
		GlobalIndex.SetValueInt(temp)
	Elseif ibutton02 == 4;
		temp = GlobalIndex.GetValueInt() + 100
		GlobalIndex.SetValueInt(temp)
	Elseif ibutton02 == 5;
		temp = GlobalIndex.GetValueInt() + 1000
		GlobalIndex.SetValueInt(temp)
	endif
EndFunction


Function Menu03()
	Debug.MessageBox("Index = " + GlobalIndex.GetValueInt())
	Quest temp = QuestsList.getAt( GlobalIndex.GetValueInt()) as Quest
	if (temp.IsActive())
  		Debug.MessageBox("Quest Is Active")
	else
		Debug.MessageBox("Quest Is Not Active")
	endIf
EndFunction


Function Menu04()
	Quest temp01 = QuestsList.getAt( GlobalIndex.GetValueInt()) as Quest
	temp01.CompleteQuest()
	;int temp03stage = temp01.GetStage()
 	;temp01.SetObjectiveCompleted(temp03stage)
EndFunction