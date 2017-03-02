Scriptname BradsFreeCamScript extends activemagiceffect  

Actor Property FreeCamActor  Auto  
Actor Property FreeCamActorMovement  Auto  

GlobalVariable Property isOn  Auto  
GlobalVariable Property ViewOnOff  Auto  
GlobalVariable Property ControlsOnOff  Auto 
GlobalVariable Property Amount Auto 
GlobalVariable Property rotation  Auto  
GlobalVariable Property RoamOnZ  Auto  

ObjectReference Property DefaultCell  Auto  

Message Property Menu01  Auto  
Message Property Menu02  Auto  
Message Property SubMenu  Auto  
Message[] Property FieldofView  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int iButton = Menu01.Show()
	If iButton == 0 
		If RoamOnZ.GetValueInt() == 0
			FreeCamActor.EnableAI(True)
			FreeCamActor.SetAngle(0.0, 0.0, rotation.GetValueInt())
			FreeCamActor.MoveTo(Game.GetPlayer())
			FreeCamActor.EnableAI(False)
			Utility.Wait(0.1)
			;FreeCamActor.SetScale(0.0)
			If ControlsOnOff.GetValueInt() == 0
				Game.SetPlayerAIDriven()
			Else
				Game.SetPlayerAIDriven(false)
			Endif
			If ViewOnOff.GetValueInt() == 0
				Game.ForceThirdPerson()
				Game.SetCameraTarget(FreeCamActor)
			Else
				Game.SetCameraTarget(Game.GetPlayer())
			Endif
			FreeCamActor.SetPlayerControls(True)
			Utility.Wait(0.1)
			FreeCamActor.SetPlayerControls(True)
			ison.SetValueInt(1)
		Else
			Debug.MessageBox("You cannot do this while in movement mode")
		Endif
	ElseIf iButton == 1
		If RoamOnZ.GetValueInt() == 0
			If ViewOnOff.GetValueInt() == 0
				Game.SetCameraTarget(Game.GetPlayer())
				ViewOnOff.SetValueInt(1)
			Else
				Game.ForceThirdPerson()
				Game.SetCameraTarget(FreeCamActor)
				ViewOnOff.SetValueInt(0)
			EndIf
		Else
			Debug.MessageBox("You cannot do this while in movement mode")
		EndIf
	ElseIf iButton == 2
		If ControlsOnOff.GetValueInt() == 0
			Game.SetPlayerAIDriven(false)
			ControlsOnOff.SetValueInt(1)
		Else
			Game.SetPlayerAIDriven()
			ControlsOnOff.SetValueInt(0)
		EndIf
	ElseIf iButton == 3
		Menu01SubMenu()
	ElseIf iButton == 4
		FreeCamActor.MoveTo(DefaultCell)
		FreeCamActor.SetPlayerControls(False)
		ison.SetValueInt(0)
	ElseIf iButton == 5
		If RoamOnZ.GetValueInt() == 0
			FreeCamActorMovement.AllowPCDialogue(false)
			Game.ForceThirdPerson()
			FreeCamActorMovement.MoveTo(Game.GetPlayer())
			Game.SetPlayerAIDriven()
			Game.SetCameraTarget(FreeCamActorMovement)
			FreeCamActorMovement.SetPlayerControls(True)
			FreeCamActorMovement.EnableAI(True)
			Utility.Wait(0.1)
			FreeCamActorMovement.EnableAI(True)
			RoamOnZ.SetValueInt(1)
		Else
			Game.SetCameraTarget(Game.GetPlayer())
			FreeCamActorMovement.MoveTo(DefaultCell)
			Game.SetPlayerAIDriven(false)
			FreeCamActorMovement.SetPlayerControls(False)
			RoamOnZ.SetValueInt(0)
		EndIf
	EndIf
endEvent

Function Menu01SubMenu()
	Int iButton = SubMenu.Show()
	If iButton == 0 
		Menu03()
	ElseIf iButton == 1
		Menu04()
	ElseIf iButton == 2
		Menu02()
	Endif
EndFunction

Function Menu02()
	Int iButton = Menu02.Show()
	If iButton == 0 
		Amount.SetValueInt(1)
	ElseIf iButton == 1
		Amount.SetValueInt(2)
	ElseIf iButton == 2
		Amount.SetValueInt(4)
	ElseIf iButton == 3
		Amount.SetValueInt(8)
	ElseIf iButton == 4
		Amount.SetValueInt(16)
	ElseIf iButton == 5
		Amount.SetValueInt(32)
	ElseIf iButton == 6
		Amount.SetValueInt(64)
	Endif
EndFunction

Function Menu03()
	Int iButton = FieldofView[0].Show()
	If iButton == 0 
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 10.00)
	ElseIf iButton == 1
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 20.00)
	ElseIf iButton == 2
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 30.00)
	ElseIf iButton == 3
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 40.00)
	ElseIf iButton == 4
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 50.00)
	ElseIf iButton == 5
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 60.00)
	ElseIf iButton == 6
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 70.00)
	ElseIf iButton == 7
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 80.00)
	ElseIf iButton == 8
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 90.00)
	Endif
EndFunction

Function Menu04()
	Int iButton = FieldofView[1].Show()
	If iButton == 0 
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 100.00)
	ElseIf iButton == 1
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 110.00)
	ElseIf iButton == 2
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 120.00)
	ElseIf iButton == 3
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 130.00)
	ElseIf iButton == 4
		Utility.SetINIFloat("FDefaultWorldFOV:Display", 140.00)
	Endif
EndFunction

;Z Movement
;Float PosTemp = FreeCamActor.GetPositionZ()
;RoamOnZ.SetValueInt(1)
;While RoamOnZ.GetValueInt() == 1
	;While FreeCamActor.GetPositionZ() < PosTemp
		;FreeCamActor.MoveTo(FreeCamActor, 0, 0, 1.2)
	;EndWhile
;EndWhile
