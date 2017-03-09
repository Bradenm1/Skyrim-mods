Scriptname BradsImageSpaceScript extends activemagiceffect  

;=======This code is clunky and need to be re-edited in the future in the next update=======
;This code is mostly uncommented currently

;=======Properties=======
ImageSpaceModifier[] Property ImageSpace  Auto  
ImageSpaceModifier[] Property CinematicOptions  Auto
ImageSpaceModifier[] Property TintAndFade  Auto  

Message Property Menu01  Auto  
Message Property Menu02  Auto  
Message Property Menu03  Auto
Message Property Menu04  Auto    
Message Property PresetsMenu  Auto  

Message[] Property CinematicMenu  Auto  
Message[] Property TintAndFadeOptions  Auto  
Message[] Property HDROptions  Auto 

GlobalVariable Property StackYesNo  Auto 
GlobalVariable Property FadeYesNo Auto
GlobalVariable Property TintYesNo Auto
GlobalVariable Property CinematicPosNeg  Auto  
GlobalVariable Property HDRPostNeg  Auto  
GlobalVariable Property Revert  Auto  

GlobalVariable[] Property SaveFeature Auto 
GlobalVariable[] Property SaveFeatureImage12  Auto  
GlobalVariable[] Property SaveFeatureImage13  Auto  
GlobalVariable[] Property SaveFeatureImage14  Auto   

FormList Property LoadSet  Auto  
FormList Property RedTint  Auto  
FormList Property GreenTint  Auto 
FormList Property BlueTint  Auto   
FormList Property HDR  Auto  
FormList Property Save01Image11  Auto  
FormList Property Save01Image12  Auto  
FormList Property Save01Image13  Auto  
FormList Property Save01Image14  Auto  
FormList Property BlueFade  Auto  
FormList Property GreenFade  Auto  
FormList Property RedFade  Auto  

;=======Fields=======
Int Index = 0
bool Menu = True

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	ImageMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

;Main Menu
Function ImageMenu( int iButton01 = 0)
	While Menu
		if iButton01 != -1
			if StackYesNo.GetValueInt() == 1
				iButton01 =  Menu04.Show()
			else
				iButton01 =  Menu01.Show()
			Endif
			Menu = False
			if iButton01 == 0;
				MenuPresets()
			Elseif iButton01 ==1
				Menu03()
			Elseif iButton01 ==2
				Menu04()
			Elseif iButton01 ==3
				Menu05()
			Elseif iButton01 ==4
				RemoveImage()
			Elseif iButton01 ==5
				if StackYesNo.GetValueInt() == 1
					StackYesNo.SetValueInt(0)
				else
					StackYesNo.SetValueInt(1)
				Endif
			Elseif iButton01 ==6
				Debug.MessageBox("This is the info of the current effects.\nIf you see 1 or more by a name such as 'Red = 3', it means it has been pressed 3 times. If you see 0 it means it has not been pressed.\nThis is mainly for reference.")
				Debug.MessageBox("Presets:\nLife = " + SaveFeature[7].GetValueInt() + " , " +  SaveFeature[11].GetValueInt() + "\nDarker = " + SaveFeature[7].GetValueInt() + "\nUnknown = " + SaveFeature[8].GetValueInt() + " , " + SaveFeature[5].GetValueInt() + "\nDepth (Lighter) = " + SaveFeature[3].GetValueInt() + "\nDepth = " + SaveFeature[2].GetValueInt() + "\nBlueish = " + SaveFeature[8].GetValueInt() + "\nOld = " + SaveFeature[9].GetValueInt() + "\nBlack&White = " + SaveFeature[1].GetValueInt() + "\nCold = " + SaveFeature[4].GetValueInt() + "\n Warm = " + SaveFeature[5].GetValueInt() + "\n Invert = " + SaveFeature[6].GetValueInt() + "\nEyeCandy = " + SaveFeature[11].GetValueInt() + "\nNo Bloom = " + SaveFeature[10].GetValueInt())
				Debug.MessageBox("Presets:\n\nPositive:\nBrightness = " + SaveFeatureImage12[1].GetValueInt() + "\nSaturation = " + SaveFeatureImage12[3].GetValueInt() + "\nContrast = " + SaveFeatureImage12[5].GetValueInt() + "\n\nNegative:\nBrightness = " + SaveFeatureImage12[0].GetValueInt() + "\nSaturation = " + SaveFeatureImage12[2].GetValueInt() + "\nContrast = " + SaveFeatureImage12[4].GetValueInt())
				Debug.MessageBox("Presets:\nRed = " + SaveFeatureImage13[2].GetValueInt() + "\nGreen = " + SaveFeatureImage13[1].GetValueInt() + "\nBlue = " + SaveFeatureImage13[0].GetValueInt())
				Debug.MessageBox("Presets:\n\nPostive:\nEye Adapt Speed = " + SaveFeatureImage14[6].GetValueInt() + "\nBloom Blur Radius = " + SaveFeatureImage14[0].GetValueInt() + "\nBloom Theshold = " + SaveFeatureImage14[4].GetValueInt() + "\nBloom Scale = " + SaveFeatureImage14[2].GetValueInt() + "\nTarget Lum Min = " + SaveFeatureImage14[12].GetValueInt()  + "\nTarget Lum Max = " + SaveFeatureImage14[10].GetValueInt() + "\nSunlight Scale = " + SaveFeatureImage14[14].GetValueInt() + "\nSky Scale = " + SaveFeatureImage14[8].GetValueInt())
				Debug.MessageBox("Presets:\n\nNegative:\nEye Adapt Speed = " + SaveFeatureImage14[7].GetValueInt() + "\nBloom Blur Radius = " + SaveFeatureImage14[1].GetValueInt() + "\nBloom Theshold = " + SaveFeatureImage14[5].GetValueInt() + "\nBloom Scale = " + SaveFeatureImage14[3].GetValueInt() + "\nTarget Lum Min = " + SaveFeatureImage14[13].GetValueInt() + "\nTarget Lum Max = " + SaveFeatureImage14[11].GetValueInt() + "\nSunlight Scale = " + SaveFeatureImage14[15].GetValueInt() + "\nSky Scale = " + SaveFeatureImage14[9].GetValueInt())
			Endif
		Endif
	Endwhile
EndFunction

Function MenuPresets()
	int iButton02 = PresetsMenu.Show()
	if iButton02 == 0;
		Menu01()
	Elseif iButton02 ==1
		Menu02()
	Elseif iButton02 == 2
		Save01()
	Elseif iButton02 == 3
		RemoveImage()
		Load()
	Endif
EndFunction

Function Menu01()
	int iButton02 = Menu02.Show()
	if iButton02 > -1 && iButton02 < 7 && StackYesNo.GetValueInt() == 0
		RemoveImage()
	endif
	if iButton02 == 0;
		SaveFeature[7].SetValueInt(SaveFeature[7].GetValueInt() + 1)
		SaveFeature[11].SetValueInt(SaveFeature[11].GetValueInt() + 1)
		ImageSpace[7].Apply()
		ImageSpace[11].Apply()
	Elseif iButton02 == 1
		SaveFeature[7].SetValueInt(SaveFeature[7].GetValueInt() + 1)
		ImageSpace[7].Apply()
	Elseif iButton02 == 2
		SaveFeature[8].SetValueInt(SaveFeature[8].GetValueInt() + 1)
		SaveFeature[5].SetValueInt(SaveFeature[5].GetValueInt() + 1)
		ImageSpace[8].Apply()
		ImageSpace[5].Apply()
	Elseif iButton02 == 3
		SaveFeature[3].SetValueInt(SaveFeature[3].GetValueInt() + 1)
		ImageSpace[3].Apply()
	Elseif iButton02 == 4
		SaveFeature[2].SetValueInt(SaveFeature[2].GetValueInt() + 1)
		ImageSpace[2].Apply()
	Elseif iButton02 ==5
		SaveFeature[8].SetValueInt(SaveFeature[8].GetValueInt() + 1)
		ImageSpace[8].Apply()
	Elseif iButton02 == 6
		SaveFeature[9].SetValueInt(SaveFeature[9].GetValueInt() + 1)
		ImageSpace[9].Apply()
	Endif
EndFunction

Function Menu02()
	int iButton02 = Menu03.Show()
	if iButton02 > -1 && iButton02 < 6 && StackYesNo.GetValueInt() == 0
		RemoveImage()
	endif
	if iButton02 == 0;
		SaveFeature[1].SetValueInt(SaveFeature[1].GetValueInt() + 1)
		ImageSpace[1].Apply()
	Elseif iButton02 ==1
		SaveFeature[4].SetValueInt(SaveFeature[4].GetValueInt() + 1)
		ImageSpace[4].Apply()
	Elseif iButton02 ==2
		SaveFeature[5].SetValueInt(SaveFeature[5].GetValueInt() + 1)
		ImageSpace[5].Apply()
	Elseif iButton02 ==3
		SaveFeature[6].SetValueInt(SaveFeature[6].GetValueInt() + 1)
		ImageSpace[6].Apply()
	Elseif iButton02 ==4
		SaveFeature[11].SetValueInt(SaveFeature[11].GetValueInt() + 1)
		ImageSpace[11].Apply()
	Elseif iButton02 ==5
		SaveFeature[10].SetValueInt(SaveFeature[10].GetValueInt() + 1)
		ImageSpace[10].Apply()
	Endif
EndFunction

Function Menu03()
	;float Temp01 = 1
	if CinematicPosNeg.GetValueInt() == 0
		int iButton02 = CinematicMenu[0].Show()
		if iButton02 > -1 && iButton02 < 6 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage12[1].SetValueInt(SaveFeatureImage12[1].GetValueInt() + 1)
			;Temp01 = Temp01 + 0.100*SaveFeatureImage13[1].GetValueInt()
			;Debug.Notification("Brightness = 1.00/" + Temp01)
			CinematicOptions[1].Apply()
		Elseif iButton02 ==1
			SaveFeatureImage12[3].SetValueInt(SaveFeatureImage12[3].GetValueInt() + 1)
			;Temp01 = Temp01 + 0.100*SaveFeatureImage13[3].GetValueInt()
			;Debug.Notification("Contrast = 1.00/" + Temp01)
			CinematicOptions[3].Apply()
		Elseif iButton02 ==2
			SaveFeatureImage12[5].SetValueInt(SaveFeatureImage12[5].GetValueInt() + 1)
			;Temp01 = Temp01 + 0.100*SaveFeatureImage13[5].GetValueInt()
			;Debug.Notification("Saturation = 1.00/" + Temp01)
			CinematicOptions[5].Apply()
		Elseif iButton02 ==3
			CinematicPosNeg.SetValueInt(1) 
		Endif
	Elseif CinematicPosNeg.GetValueInt() == 1
		int iButton02 = CinematicMenu[1].Show()
		if iButton02 > -1 && iButton02 < 6 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage12[0].SetValueInt(SaveFeatureImage12[0].GetValueInt() - 1)
			;Temp01 = 1.00 - 0.100*SaveFeatureImage13[0].GetValueInt()
			;Debug.Notification("Saturation = -" + Temp01 + "/1.00")
			CinematicOptions[0].Apply()
		Elseif iButton02 ==1
			SaveFeatureImage12[2].SetValueInt(SaveFeatureImage12[2].GetValueInt() - 1)
			;Temp01 = 1.00 - 0.100*SaveFeatureImage13[2].GetValueInt()
			;Debug.Notification("Saturation = -" + Temp01 + "/1.00")
			CinematicOptions[2].Apply()
		Elseif iButton02 ==2
			SaveFeatureImage12[4].SetValueInt(SaveFeatureImage12[4].GetValueInt() - 1)
			;Temp01 = 1.00 - 0.100*SaveFeatureImage13[4].GetValueInt()
			;Debug.Notification("Saturation = -" + Temp01 + "/1.00")
			CinematicOptions[4].Apply()
		Elseif iButton02 ==3
			CinematicPosNeg.SetValueInt(0) 
		Endif
	Endif
EndFunction

Function Menu04()
	if TintYesNo.GetValueInt() == 1 && FadeYesNo.GetValueInt() == 0
		int iButton02 = TintAndFadeOptions[3].Show()
		if iButton02 > -1 && iButton02 < 3 && StackYesNo.GetValueInt() == 0
			;RemoveSave()
			RemoveImage()
		Endif
		if iButton02 == 0;
			SaveFeatureImage13[2].SetValueInt(SaveFeatureImage13[2].GetValueInt() + 1)
			Debug.Notification("Red Alpha = " + 5*SaveFeatureImage13[2].GetValueInt() + "/255")
			ImageSpaceModifier Temp = RedTint.GetAt(SaveFeatureImage13[2].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage13[1].SetValueInt(SaveFeatureImage13[1].GetValueInt() + 1)
			Debug.Notification("Green Alpha = " + 5*SaveFeatureImage13[1].GetValueInt() + "/255")
			ImageSpaceModifier Temp = GreenTint.GetAt(SaveFeatureImage13[1].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==2
			SaveFeatureImage13[0].SetValueInt(SaveFeatureImage13[0].GetValueInt() + 1)
			Debug.Notification("Blue Alpha = " + 5*SaveFeatureImage13[0].GetValueInt() + "/255")
			ImageSpaceModifier Temp = BlueTint.GetAt(SaveFeatureImage13[0].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==3
			TintYesNo.SetValueInt(0)
		Elseif iButton02 ==4
			FadeYesNo.SetValueInt(1)
		endif
	Elseif TintYesNo.GetValueInt() == 0 && FadeYesNo.GetValueInt() == 1
		int iButton02 = TintAndFadeOptions[2].Show()
		if iButton02 > -1 && iButton02 < 3 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage13[5].SetValueInt(SaveFeatureImage13[5].GetValueInt() + 1)
			ImageSpaceModifier Temp = RedFade.GetAt(SaveFeatureImage13[5].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage13[4].SetValueInt(SaveFeatureImage13[4].GetValueInt() + 1)
			ImageSpaceModifier Temp = GreenFade.GetAt(SaveFeatureImage13[4].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==2
			SaveFeatureImage13[3].SetValueInt(SaveFeatureImage13[3].GetValueInt() + 1)
			ImageSpaceModifier Temp = BlueFade.GetAt(SaveFeatureImage13[3].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==3
			TintYesNo.SetValueInt(1)
		Elseif iButton02 ==4
			 FadeYesNo.SetValueInt(0)
		Endif
	Elseif TintYesNo.GetValueInt() == 1 && FadeYesNo.GetValueInt() == 1
		int iButton02 = TintAndFadeOptions[0].Show()
		if iButton02 > -1 && iButton02 < 3 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		Endif
		if iButton02 == 0;
			SaveFeatureImage13[2].SetValueInt(SaveFeatureImage13[2].GetValueInt() + 1)
			ImageSpaceModifier Temp = RedTint.GetAt(SaveFeatureImage13[2].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
			SaveFeatureImage13[5].SetValueInt(SaveFeatureImage13[5].GetValueInt() + 1)
			Temp = RedFade.GetAt(SaveFeatureImage13[5].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage13[1].SetValueInt(SaveFeatureImage13[1].GetValueInt() + 1)
			ImageSpaceModifier Temp = GreenTint.GetAt(SaveFeatureImage13[1].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
			SaveFeatureImage13[4].SetValueInt(SaveFeatureImage13[4].GetValueInt() + 1)
			Temp = GreenFade.GetAt(SaveFeatureImage13[4].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==2
			SaveFeatureImage13[0].SetValueInt(SaveFeatureImage13[0].GetValueInt() + 1)
			ImageSpaceModifier Temp = BlueTint.GetAt(SaveFeatureImage13[0].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
			SaveFeatureImage13[3].SetValueInt(SaveFeatureImage13[3].GetValueInt() + 1)
			Temp = BlueFade.GetAt(SaveFeatureImage13[3].GetValueInt()) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==3
			TintYesNo.SetValueInt(0)
		Elseif iButton02 ==4
			FadeYesNo.SetValueInt(0)
		Endif
	Elseif TintYesNo.GetValueInt() == 0 && FadeYesNo.GetValueInt() == 0
		int iButton02 = TintAndFadeOptions[1].Show()
		if iButton02 == 0;
			Debug.MessageBox("You have both options tuned off")
		Elseif iButton02 ==1
			Debug.MessageBox("You have both options tuned off")
		Elseif iButton02 ==2
			Debug.MessageBox("You have both options tuned off")
		Elseif iButton02 ==3
			TintYesNo.SetValueInt(1)
		Elseif iButton02 ==4
			 FadeYesNo.SetValueInt(1)
		Endif
	Endif
EndFunction

Function Menu05()
	if HDRPostNeg.GetValueInt() == 0
		int iButton02 = HDROptions[0].Show()
		if iButton02 == 0;
			HDROptions01()
		Elseif iButton02 ==1
			HDROptions02()
		Elseif iButton02 == 2
			HDRPostNeg.SetValueInt(1) 
		Endif
	ElseIf HDRPostNeg.GetValueInt() == 1
		int iButton02 = HDROptions[1].Show()
		if iButton02 == 0;
			HDROptions01()
		Elseif iButton02 ==1
			HDROptions02()
		Elseif iButton02 == 2
			HDRPostNeg.SetValueInt(0) 
		Endif
	Endif
EndFunction

Function HDROptions01()
	if HDRPostNeg.GetValueInt() == 0
		int iButton02 = HDROptions[2].Show()
		if iButton02 > -1 && iButton02 < 6 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage14[6].SetValueInt(SaveFeatureImage14[6].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(6) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage14[0].SetValueInt(SaveFeatureImage14[0].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(0) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==2
			SaveFeatureImage14[4].SetValueInt(SaveFeatureImage14[4].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(4) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==3
			SaveFeatureImage14[2].SetValueInt(SaveFeatureImage14[2].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(2) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==4
			SaveFeatureImage14[12].SetValueInt(SaveFeatureImage14[12].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(12) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==5
			SaveFeatureImage14[10].SetValueInt(SaveFeatureImage14[10].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(10) as ImageSpaceModifier
			Temp.Apply()
		Endif
	ElseIf HDRPostNeg.GetValueInt() == 1
		int iButton02 = HDROptions[2].Show()
		if iButton02 > -1 && iButton02 < 6 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage14[7].SetValueInt(SaveFeatureImage14[7].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(7) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage14[1].SetValueInt(SaveFeatureImage14[1].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(1) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==2
			SaveFeatureImage14[5].SetValueInt(SaveFeatureImage14[5].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(5) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==3
			SaveFeatureImage14[3].SetValueInt(SaveFeatureImage14[3].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(3) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==4
			SaveFeatureImage14[13].SetValueInt(SaveFeatureImage14[13].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(13) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==5
			SaveFeatureImage14[11].SetValueInt(SaveFeatureImage14[11].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(11) as ImageSpaceModifier
			Temp.Apply()
		Endif
	Endif
EndFunction

Function HDROptions02()
	if HDRPostNeg.GetValueInt() == 0
		int iButton02 = HDROptions[3].Show()
		if iButton02 > -1 && iButton02 < 2 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage14[14].SetValueInt(SaveFeatureImage14[14].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(14) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage14[8].SetValueInt(SaveFeatureImage14[8].GetValueInt() + 1)
			ImageSpaceModifier Temp = HDR.GetAt(8) as ImageSpaceModifier
			Temp.Apply()
		Endif
	ElseIf HDRPostNeg.GetValueInt() == 1
		int iButton02 = HDROptions[3].Show()
		if iButton02 > -1 && iButton02 < 2 && StackYesNo.GetValueInt() == 0
			RemoveImage()
		endif
		if iButton02 == 0;
			SaveFeatureImage14[15].SetValueInt(SaveFeatureImage14[15].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(15) as ImageSpaceModifier
			Temp.Apply()
		Elseif iButton02 ==1
			SaveFeatureImage14[9].SetValueInt(SaveFeatureImage14[9].GetValueInt() - 1)
			ImageSpaceModifier Temp = HDR.GetAt(9) as ImageSpaceModifier
			Temp.Apply()
		Endif
	Endif
EndFunction

Function Save01()
	Index = 0
	While Index < Save01Image11.GetSize()
		GlobalVariable Temp = Save01Image11.GetAt(Index) as GlobalVariable
		Temp.SetValueInt(SaveFeature[Index].GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	While Index < Save01Image12.GetSize()
		GlobalVariable Temp = Save01Image12.GetAt(Index) as GlobalVariable
		Temp.SetValueInt(SaveFeatureImage12[Index].GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	While Index < Save01Image13.GetSize()
		GlobalVariable Temp = Save01Image13.GetAt(Index) as GlobalVariable
		Temp.SetValueInt(SaveFeatureImage13[Index].GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	While Index < Save01Image14.GetSize()
		GlobalVariable Temp = Save01Image14.GetAt(Index) as GlobalVariable
		Temp.SetValueInt(SaveFeatureImage14[Index].GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	Debug.Notification("Your Custom Preset Has Been Saved")
EndFunction

Function Load()
	Debug.Notification("Loading Preset, Please Wait A Couple Seconds.")
	Index = 0
	While Index < Save01Image11.GetSize()
		GlobalVariable Temp = Save01Image11.GetAt(Index) as GlobalVariable
		SaveFeature[Index].SetValueInt(Temp.GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	While Index < Save01Image12.GetSize()
		GlobalVariable Temp = Save01Image12.GetAt(Index) as GlobalVariable
		SaveFeatureImage12[Index].SetValueInt(Temp.GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	While Index < Save01Image13.GetSize()
		GlobalVariable Temp = Save01Image13.GetAt(Index) as GlobalVariable
		SaveFeatureImage13[Index].SetValueInt(Temp.GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	While Index < Save01Image14.GetSize()
		GlobalVariable Temp = Save01Image14.GetAt(Index) as GlobalVariable
		SaveFeatureImage14[Index].SetValueInt(Temp.GetValueInt())
		Index+= 1
	EndWhile
	Index = 0
	Int IndexTemp = 0
	;Because it stops at 12 for presets and moves to others
	While IndexTemp < 12
		While Index < SaveFeature[IndexTemp].GetValueInt()
			ImageSpace[IndexTemp].Apply()
			Index+= 1
		EndWhile
		Index = 0
		IndexTemp+= 1
	EndWhile
	Index = 0
	IndexTemp = 0
	While IndexTemp < 6
		While Index < SaveFeatureImage12[IndexTemp].GetValueInt()
			CinematicOptions[IndexTemp].Apply()
			Index+= 1
		EndWhile
		Index = 0
		IndexTemp += 1
	EndWhile
	Index = 0
	IndexTemp = 0
	While IndexTemp < 16
		While Index < SaveFeatureImage14[IndexTemp].GetValueInt()
			ImageSpaceModifier Temp = HDR.GetAt(IndexTemp) as ImageSpaceModifier
			Temp.Apply()
			Index+= 1
		EndWhile
		Index = 0
		IndexTemp+= 1
	EndWhile
	Index = 0
	IndexTemp = 0
	While Index < SaveFeatureImage13[0].GetValueInt()
		ImageSpaceModifier Temp = BlueTint.GetAt(Index) as ImageSpaceModifier
		Temp.Apply()
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage13[1].GetValueInt()
		ImageSpaceModifier Temp = GreenTint.GetAt(Index) as ImageSpaceModifier
		Temp.Apply()
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage13[2].GetValueInt()
		ImageSpaceModifier Temp = RedTint.GetAt(Index) as ImageSpaceModifier
		Temp.Apply()
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage13[3].GetValueInt()
		ImageSpaceModifier Temp = BlueFade.GetAt(Index) as ImageSpaceModifier
		Temp.Apply()
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage13[4].GetValueInt()
		ImageSpaceModifier Temp = GreenFade.GetAt(Index) as ImageSpaceModifier
		Temp.Apply()
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage13[5].GetValueInt()
		ImageSpaceModifier Temp = RedFade.GetAt(Index) as ImageSpaceModifier
		Temp.Apply()
		Index+= 1
	EndWhile
	Index = 0
	Debug.Notification("Done Loading!")
EndFunction

;///REMOVE FEATURES///;

Function RemoveImage()
	Debug.Notification("Removing Preset, Please Wait A Couple Seconds.")
	Index = 0
	RemoveSave()
	While Index < ImageSpace.Length
		ImageSpace[Index].Remove()
		Index+= 1
	EndWhile
	Index = 0
	While Index < CinematicOptions.Length
		CinematicOptions[Index].Remove()
		Index+= 1
	EndWhile
	Index = 0
	While Index < RedTint.GetSize()
		ImageSpaceModifier Temp01 = RedTint.GetAt(Index) as ImageSpaceModifier
		ImageSpaceModifier Temp02 = GreenTint.GetAt(Index) as ImageSpaceModifier
		ImageSpaceModifier Temp03 = BlueTint.GetAt(Index) as ImageSpaceModifier
		ImageSpaceModifier Temp04 = RedFade.GetAt(Index) as ImageSpaceModifier
		ImageSpaceModifier Temp05 = GreenFade.GetAt(Index) as ImageSpaceModifier
		ImageSpaceModifier Temp06 = BlueFade.GetAt(Index) as ImageSpaceModifier
		Temp01.Remove()
		Temp02.Remove()
		Temp03.Remove()
		Temp04.Remove()
		Temp05.Remove()
		Temp06.Remove()
		Index+= 1
	EndWhile
	Index = 0
	While Index < HDR.GetSize()
		ImageSpaceModifier Temp = HDR.GetAt(Index) as ImageSpaceModifier
		Temp.Remove()
		Index+= 1
	EndWhile
	Index = 0
	Debug.Notification("Done Removing")
EndFunction   

Function RemoveSave()
	While Index < SaveFeature.Length
		SaveFeature[Index].SetValueInt(0)
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage12.Length
		SaveFeatureImage12[Index].SetValueInt(0)
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage13.Length
		SaveFeatureImage13[Index].SetValueInt(0)
		Index+= 1
	EndWhile
	Index = 0
	While Index < SaveFeatureImage14.Length
		SaveFeatureImage14[Index].SetValueInt(0)
		Index+= 1
	EndWhile
	Index = 0
EndFunction 

Function RevertChange()
	If Revert.GetValueInt() == 1
		ImageSpace[7].Remove()
		ImageSpace[11].Remove()
	ElseIf Revert.GetValueInt() == 2
		ImageSpace[7].Remove()
	ElseIf Revert.GetValueInt() == 3
		ImageSpace[8].Remove()
		ImageSpace[5].Remove()
	ElseIf Revert.GetValueInt() == 4
		ImageSpace[3].Remove()
	ElseIf Revert.GetValueInt() == 5
		ImageSpace[2].Remove()
	ElseIf Revert.GetValueInt() == 6
		ImageSpace[8].Remove()
	ElseIf Revert.GetValueInt() == 7
		ImageSpace[9].Remove()
	;=====;END OF PRESET MENU 1=====
	ElseIf Revert.GetValueInt() == 8
		ImageSpace[1].Remove()
	ElseIf Revert.GetValueInt() == 9
		ImageSpace[4].Remove()
	ElseIf Revert.GetValueInt() == 10
		ImageSpace[5].Remove()
	ElseIf Revert.GetValueInt() == 11
		ImageSpace[6].Remove()
	ElseIf Revert.GetValueInt() == 12
		ImageSpace[11].Remove()
	ElseIf Revert.GetValueInt() == 13
		ImageSpace[10].Remove()
	;=====;END OF PRESET MENU 2=====
	EndIf
EndFunction
