Scriptname BradQuestDebug extends activemagiceffect  

FormList Property BradQuestDebugAll  Auto  

Message[] Property DebugMenus  Auto  

GlobalVariable Property BradQuestDebugPosNeg  Auto  
GlobalVariable Property BradQuestDebugStage  Auto  
GlobalVariable Property BradQuestDebugQuest  Auto  

Quest tempQuest
Bool StageOrQuest


Event OnEffectStart(Actor akTarget, Actor akCaster)
	tempQuest = BradQuestDebugAll.getAt(BradQuestDebugQuest.GetValueInt()) as Quest
	;Debug.OpenUserLog("myUserLog")
	;Int i = 0
	;While i < BradQuestDebugAll.GetSize()
	;	Debug.TraceUser("myUserLog", "")
	;	Debug.TraceUser("myUserLog",  "QUEST INDEX = " + i)
	;	Debug.TraceUser("myUserLog", BradQuestDebugAll.GetAt(i))
	;	i += 1
	;endwhile
	DebugMainMenu()
EndEvent

Function DebugMainMenu()
	Int iButton01 =  DebugMenus[0].Show()
	if iButton01 == 0;
		DebugQuestSelect()
	Elseif iButton01 ==1
		DebugStageSelect()
	Elseif iButton01 ==2
		DebugOptions()
	Elseif iButton01 ==3
	Debug.MessageBox("Quest Index = " + BradQuestDebugQuest.GetValueInt() + "\n" + "Stage Index = " + BradQuestDebugStage.GetValueInt())
	endif
EndFunction

Function DebugQuestSelect()
	Int iButton01 =  DebugMenus[1].Show()
	if iButton01 == 0;
		StageOrQuest = True
		DebugIndex(StageOrQuest)
	Elseif iButton01 ==1
		Int o = 0 
		Bool hasFound = False
		While o < BradQuestDebugAll.GetSize() && hasFound == False
			Quest tempTempQuest = BradQuestDebugAll.getAt(o) as Quest
			If (tempTempQuest.IsActive()) && (tempTempQuest.IsRunning())
				BradQuestDebugQuest.SetValueInt(o)
				Debug.MessageBox("Quest Found: " + tempTempQuest)
				Debug.MessageBox("The quest has been set in your index")
				hasFound = True
			Else
				If (o % 250) == 0
					Debug.Notification("Please Wait... Entry " + o + "/" + " " + BradQuestDebugAll.GetSize())
				EndIf
				o += 1
			EndIf
		EndWhile
		If hasFound == False
			Debug.MessageBox("Could not find the quest. You either are trying to find a modded quest or don't have a quest marked as active")
		endIf
	Elseif iButton01 ==2
		Debug.MessageBox("Index = " + BradQuestDebugQuest.GetValueInt())
		if (tempQuest.IsActive())
  			Debug.MessageBox("Select Quest Is Active")
		else
			Debug.MessageBox("Select Quest Is Not Active")
		endIf
	Elseif iButton01 ==3
		Debug.MessageBox("Index = " + BradQuestDebugQuest.GetValueInt())
		if (tempQuest.IsRunning())
  			Debug.MessageBox("Select Quest Is Running")
		else
			Debug.MessageBox("Select Quest Is Not Running")
		endIf
	Elseif iButton01 ==4
		Debug.MessageBox("Index = " + BradQuestDebugQuest.GetValueInt())
		if (tempQuest.IsCompleted())
  			Debug.MessageBox("Index " + BradQuestDebugQuest.GetValueInt() + " Quest Is Completed")
		else
			Debug.MessageBox("Index " + BradQuestDebugQuest.GetValueInt() + " Quest Is Not Completed")
		endIf
	endif
EndFunction

Function DebugStageSelect()
	Int iButton01 =  DebugMenus[2].Show()
	if iButton01 == 0;
		StageOrQuest = False
		DebugIndex(StageOrQuest)
	Elseif iButton01 ==1
		Int tempGetStage = tempQuest.GetCurrentStageID()
		Debug.MessageBox("Current Stage In Selected Quest = " + tempGetStage)
	Elseif iButton01 ==2
		Bool tempIsDone = tempQuest.IsStageDone(BradQuestDebugStage.GetValueInt())
		if (tempIsDone == True)
  			Debug.MessageBox(BradQuestDebugStage.GetValueInt() +" Stage Is Completed")
		else
			Debug.MessageBox(BradQuestDebugStage.GetValueInt() +" Stage Is Not Completed")
		endIf
	endif
EndFunction

Function DebugOptions()
	Int iButton01 =  DebugMenus[3].Show()
	if iButton01 == 0;
		tempQuest.CompleteAllObjectives()
	Elseif iButton01 ==1
		tempQuest.CompleteQuest()
	Elseif iButton01 ==2
		tempQuest.FailAllObjectives()
	Elseif iButton01 ==3
		;tempQuest.Start()
	Elseif iButton01 ==4
		tempQuest.Stop()
	Elseif iButton01 ==5
		tempQuest.Reset()
	Elseif iButton01 ==6
		tempQuest.SetCurrentStageID(BradQuestDebugStage.GetValueInt())
	Elseif iButton01 ==7
		Int i = 0
		Int o = tempQuest.GetStage()
		Bool tempCompleted = True
		While tempCompleted == True
			If (tempQuest.SetStage(o))
				tempCompleted = False
			Else
				o += 1
				i += 1
				If i > 2000
					tempCompleted = False
					Debug.MessageBox("An error occured with the stages.")
				EndIf
			Endif
		EndWhile
		if i < 2000
			Debug.MessageBox(o + " Stage Completed")
		endif
	endif
EndFunction

Function DebugIndex(Bool StageOrQuestSub)
	If StageOrQuestSub == True
		If BradQuestDebugPosNeg.GetValueInt() == 0
			;Pos
			Int iButton01 =  DebugMenus[4].Show()
			if iButton01 == 0;
				BradQuestDebugPosNeg.SetValueInt(1)
			Elseif iButton01 ==1
				BradQuestDebugQuest.SetValueInt(0)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==2
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + 1)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==3
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + 10)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==4
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + 100)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==5
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + 1000)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==6
				Debug.MessageBox("Quest Index = " + BradQuestDebugQuest.GetValueInt())
			Endif
		Else
			;Neg
			Int iButton01 =  DebugMenus[5].Show()
			if iButton01 == 0;
				BradQuestDebugPosNeg.SetValueInt(0)
			Elseif iButton01 ==1
				BradQuestDebugQuest.SetValueInt(0)
			Elseif iButton01 ==2
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + -1)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==3
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + -10)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==4
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + -100)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==5
				BradQuestDebugQuest.SetValueInt(BradQuestDebugQuest.GetValueInt() + -1000)
				Debug.Notification(BradQuestDebugQuest.GetValueInt())
			Elseif iButton01 ==6
				Debug.MessageBox("Quest Index = " + BradQuestDebugQuest.GetValueInt())
			Endif
		EndIf
	Else
		If BradQuestDebugPosNeg.GetValueInt() == 0
			;Pos
			Int iButton01 =  DebugMenus[4].Show()
			if iButton01 == 0;
				BradQuestDebugPosNeg.SetValueInt(1)
			Elseif iButton01 ==1
				BradQuestDebugStage.SetValueInt(0)
			Elseif iButton01 ==2
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + 1)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==3
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + 10)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==4
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + 100)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==5
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + 1000)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==6
				Debug.MessageBox("Stage Index = " + BradQuestDebugStage.GetValueInt())
			Endif
		Else
			;Neg
			Int iButton01 =  DebugMenus[5].Show()
			if iButton01 == 0;
				BradQuestDebugPosNeg.SetValueInt(0)
			Elseif iButton01 ==1
				BradQuestDebugStage.SetValueInt(0)
			Elseif iButton01 ==2
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + -1)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==3
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + -10)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==4
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + -100)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==5
				BradQuestDebugStage.SetValueInt(BradQuestDebugStage.GetValueInt() + -1000)
				Debug.Notification(BradQuestDebugStage.GetValueInt())
			Elseif iButton01 ==6
				Debug.MessageBox("Stage Index = " + BradQuestDebugQuest.GetValueInt())
			Endif
		EndIf
	EndIf
EndFunction


