Scriptname BradThirdPersonCamera02 extends activemagiceffect  

GlobalVariable Property BradCameraType  Auto  
GlobalVariable Property BradAdjustFloat  Auto  
GlobalVariable Property BradAxis  Auto  
GlobalVariable Property BradAxisNOTSET Auto  
GlobalVariable Property BradCameraNOTSET Auto  

GlobalVariable[] Property BradAxisSaveNonCombat  Auto  
GlobalVariable[] Property BradAxisSaveCombat  Auto  
GlobalVariable[] Property BradAxisSaveHorse  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	If ((BradAxisNOTSET.GetValueInt() == 1) && (BradCameraNOTSET.GetValueInt() == 1))
		Float Temp = 0
		If BradCameraType.GetValueInt() == 0
			If BradAxis.GetValueInt() == 0
				Temp = BradAxisSaveNonCombat[0].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderPosX:Camera", Temp)
				BradAxisSaveNonCombat[0].SetValue(Temp)
				Debug.Notification(Temp)
			ElseIf BradAxis.GetValueInt() == 1
				Debug.MessageBox("There's no 'Y' for non-combat")
			Else
				Temp = BradAxisSaveNonCombat[2].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderPosZ:Camera", Temp)
				BradAxisSaveNonCombat[2].SetValue(Temp)
				Debug.Notification(Temp)
			EndIf
		ElseIf BradCameraType.GetValueInt() == 1
			If BradAxis.GetValueInt() == 0
				Temp = BradAxisSaveCombat[0].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderCombatPosX:Camera", Temp)
				BradAxisSaveCombat[0].SetValue(Temp)
				Debug.Notification(Temp)
			ElseIf BradAxis.GetValueInt() == 1
				Temp = BradAxisSaveCombat[1].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderCombatAddY", Temp)
				BradAxisSaveCombat[1].SetValue(Temp)
				Debug.Notification(Temp)
			Else
				Temp = BradAxisSaveCombat[2].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderCombatPosZ:Camera", Temp)
				BradAxisSaveCombat[2].SetValue(Temp)
				Debug.Notification(Temp)
			EndIf
		Else
			If BradAxis.GetValueInt() == 0
				Temp = BradAxisSaveHorse[0].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderHorsePosX:Camera", Temp)
				BradAxisSaveHorse[0].SetValue(Temp)
				Debug.Notification(Temp)
			ElseIf BradAxis.GetValueInt() == 1
				Temp = BradAxisSaveHorse[1].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderHorseAddY", Temp)
				BradAxisSaveHorse[1].SetValue(Temp)
				Debug.Notification(Temp)
			Else
				Temp = BradAxisSaveHorse[2].GetValue() + BradAdjustFloat.GetValue()
				Utility.SetINIFloat("fOverShoulderHorsePosZ:Camera", Temp)
				BradAxisSaveHorse[2].SetValue(Temp)
				Debug.Notification(Temp)
			EndIf
		EndIf
	Else
		If BradAxisNOTSET.GetValueInt() == 0
			Debug.MessageBox("You have not set an axis, please do so.")
		ElseIf BradCameraNOTSET.GetValueInt() == 0
			Debug.MessageBox("You have not set a Camera, please do so.")
		EndIf
	EndIf
EndEvent
