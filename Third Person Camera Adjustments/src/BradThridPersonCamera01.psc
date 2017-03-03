Scriptname BradThridPersonCamera01 extends activemagiceffect  

GlobalVariable Property BradCameraType  Auto  
GlobalVariable Property BradAdjustFloat  Auto  
GlobalVariable Property BradAxis  Auto  
GlobalVariable Property BradNegPos  Auto  
GlobalVariable Property BradAxisNOTSET Auto  
GlobalVariable Property BradCameraNOTSET Auto  

GlobalVariable[] Property BradAxisSaveNonCombat  Auto  
GlobalVariable[] Property BradAxisSaveCombat  Auto  
GlobalVariable[] Property BradAxisSaveHorse  Auto  

Message[] Property BradMessage  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Menu01()
EndEvent

Function Menu01()
	Int iButton = BradMessage[0].Show()
	If iButton == 0
		Menu02()
	ElseIf iButton == 1
		Menu03()
	ElseIf iButton == 2
		If BradNegPos.GetValueInt() == 0
			Menu04Pos()
		Else
			Menu04Neg()
		EndIf
	ElseIf iButton == 3
		Utility.SetINIFloat("fOverShoulderPosZ:Camera", BradAxisSaveNonCombat[2].GetValue())
		Utility.SetINIFloat("fOverShoulderPosX:Camera", BradAxisSaveNonCombat[0].GetValue())
		Utility.SetINIFloat("fOverShoulderCombatAddY:Camera", BradAxisSaveCombat[1].GetValue())
		Utility.SetINIFloat("fOverShoulderCombatPosZ:Camera", BradAxisSaveCombat[2].GetValue())
		Utility.SetINIFloat("fOverShoulderCombatPosX:Camera", BradAxisSaveCombat[0].GetValue())
		Utility.SetINIFloat("fOverShoulderHorseAddY:Camera", BradAxisSaveHorse[1].GetValue())
		Utility.SetINIFloat("fOverShoulderHorsePosZ:Camera", BradAxisSaveHorse[2].GetValue())
		Utility.SetINIFloat("fOverShoulderHorsePosX:Camera", BradAxisSaveHorse[0].GetValue())
		Debug.Notification("Camera Setting Loaded")
	ElseIf iButton == 4
		RestoreToDefault()
	ElseIf iButton == 5
		Other()
	Endif
EndFunction


Function Menu02()
	Int iButton = BradMessage[1].Show()
	If iButton == 0
		BradAxis.SetValueInt(iButton)
		BradAxisNOTSET.SetValueInt(1)
	ElseIf iButton == 1
		BradAxis.SetValueInt(iButton)
		BradAxisNOTSET.SetValueInt(1)
	ElseIf iButton == 2
		BradAxis.SetValueInt(iButton)
		BradAxisNOTSET.SetValueInt(1)
	Endif
EndFunction


Function Menu03()
	Int iButton = BradMessage[2].Show()
	If iButton == 0
		BradCameraType.SetValueInt(iButton)
		BradCameraNOTSET.SetValueInt(1)
	ElseIf iButton == 1
		BradCameraType.SetValueInt(iButton)
		BradCameraNOTSET.SetValueInt(1)
	ElseIf iButton == 2
		BradCameraType.SetValueInt(iButton)
		BradCameraNOTSET.SetValueInt(1)
	Endif
EndFunction


Function Menu04Pos()
	Int iButton = BradMessage[3].Show()
	If iButton == 0
		BradNegPos.SetValueInt(1)
	ElseIf iButton == 1
		BradAdjustFloat.SetValue(0.1)
	ElseIf iButton == 2
		BradAdjustFloat.SetValue(0.5)
	ElseIf iButton == 3
		BradAdjustFloat.SetValueInt(1)
	ElseIf iButton == 4
		BradAdjustFloat.SetValue(1.5)
	ElseIf iButton == 5
		BradAdjustFloat.SetValue(2.5)
	ElseIf iButton == 6
		BradAdjustFloat.SetValue(5)
	ElseIf iButton == 7
		BradAdjustFloat.SetValue(10)
	Endif
EndFunction

Function Menu04Neg()
	Int iButton = BradMessage[4].Show()
	If iButton == 0
		BradNegPos.SetValueInt(0)
	ElseIf iButton == 1
		BradAdjustFloat.SetValue(-0.1)
	ElseIf iButton == 2
		BradAdjustFloat.SetValue(-0.5)
	ElseIf iButton == 3
		BradAdjustFloat.SetValueInt(-1)
	ElseIf iButton == 4
		BradAdjustFloat.SetValue(-1.5)
	ElseIf iButton == 5
		BradAdjustFloat.SetValue(-2.5)
	ElseIf iButton == 6
		BradAdjustFloat.SetValue(-5)
	ElseIf iButton == 7
		BradAdjustFloat.SetValue(-10)
	Endif
EndFunction


Function RestoreToDefault()
	Utility.SetINIFloat("fOverShoulderPosZ:Camera", -10.0)
	Utility.SetINIFloat("fOverShoulderPosX:Camera", 30.0)
	Utility.SetINIFloat("fOverShoulderCombatAddY:Camera", -100.0)
	Utility.SetINIFloat("fOverShoulderCombatPosZ:Camera", 20.0)
	Utility.SetINIFloat("fOverShoulderCombatPosX:Camera", 0.0)
	Utility.SetINIFloat("fOverShoulderHorseAddY:Camera", -300.0)
	Utility.SetINIFloat("fOverShoulderHorsePosZ:Camera", 0.0)
	Utility.SetINIFloat("fOverShoulderHorsePosX:Camera", 0.0)
	BradAxisSaveNonCombat[0].SetValueInt(30)
	BradAxisSaveNonCombat[2].SetValueInt(-10)
	BradAxisSaveCombat[0].SetValueInt(0)
	BradAxisSaveCombat[1].SetValueInt(-100)
	BradAxisSaveCombat[2].SetValueInt(20)
	BradAxisSaveHorse[0].SetValueInt(0)
	BradAxisSaveHorse[1].SetValueInt(-300)
	BradAxisSaveHorse[2].SetValueInt(0)
	Debug.Notification("Camera Restored to Default Settings")
EndFunction


Function Other()
	Int iButton = BradMessage[5].Show()
	If iButton == 0
		OtherSub03()
	Endif
EndFunction

Function OtherSub01()
	Int iButton = BradMessage[6].Show()
	If iButton == 0
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 50)
	ElseIf iButton == 1
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 100)
	ElseIf iButton == 2
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 200)
	ElseIf iButton == 3
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 300)
	ElseIf iButton == 4
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 400)
	ElseIf iButton == 5
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 500)
	ElseIf iButton == 6
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 600)
	ElseIf iButton == 7
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 700)
	ElseIf iButton == 8
		Utility.SetINIFloat("fDefaultAutoVanityZoom:Camera", 800)
	Endif
EndFunction
	

Function OtherSub02()
	Int iButton = BradMessage[7].Show()
	If iButton == 0
		Utility.SetINIFloat("bDisableAutoVanityMode:Camera", 0)
	ElseIf iButton == 1
		Utility.SetINIFloat("bDisableAutoVanityMode:Camera", 1)
	Endif
EndFunction


Function OtherSub03()
	Int iButton = BradMessage[8].Show()
	If iButton == 0
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 50)
	ElseIf iButton == 1
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 60)
	ElseIf iButton == 2
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 70)
	ElseIf iButton == 3
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 80)
	ElseIf iButton == 4
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 90)
	ElseIf iButton == 5
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 100)
	ElseIf iButton == 6
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 110)
	ElseIf iButton == 7
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 120)
	ElseIf iButton == 8
		Utility.SetINIFloat("fDefaultWorldFOV:Display", 130)
	Endif
EndFunction

Function OtherSub04()
	Int iButton = BradMessage[9].Show()
	If iButton == 0
		Utility.SetINIFloat("bShowMarkers:Display", 1)
	ElseIf iButton == 1
		Utility.SetINIFloat("bShowMarkers:Display", 0)
	Endif
EndFunction

Function OtherSub05()
	Int iButton = BradMessage[10].Show()
	If iButton == 0
		Utility.SetINIFloat("iMaxAnisotropy:Display", 0)
		Utility.SetINIFloat("iMaxDecalsPerFrame:Display", 10)
		Utility.SetINIFloat("iMaxSkinDecalsPerFrame:Display", 10)
		Utility.SetINIFloat("iMultiSample:Display", 0)
		Utility.SetINIFloat("uiMaxSkinnedTreesToRender:Trees", 1)
		Utility.SetINIFloat("bEnableTrees:Trees", 0)
		Utility.SetINIFloat("fUpdateBudget:Trees", 0)
		Utility.SetINIFloat("bDecals:Decals", 0)
		Utility.SetINIFloat("bDrawShaderGrass:Grass", 0)
		Utility.SetINIFloat("fDecalLODFadeStart:LightingShader", 0.05)
		Utility.SetINIFloat("fDecalLODFadeStart:LightingShader", 0.056)
		Utility.SetINIFloat("bFXAAEnable:Display", 0)
		Utility.SetINIFloat("bDrawLandShadows:Display", 0)
		Utility.SetINIFloat("bShadowsOnGrass:Display", 0)
		Utility.SetINIFloat("iTexMipMapSkip:Display", 3)
	Endif
EndFunction