Scriptname CheatRoomPlayerCheatGameOptions extends activemagiceffect  

;=======Constants=======
int DEFAULTTIMESCALE = 20

;=======Properties=======
Message Property WeatherMenu  Auto 
Message Property TimeMenu  Auto  
Message Property MainMenu  Auto  
Message Property TimeScaleMessage  Auto   

Weather Property Clear  Auto  
Weather Property Cloudy  Auto  
Weather Property Fog  Auto  
Weather Property Rain  Auto  
Weather Property Sovngarde  Auto  
Weather Property Storm  Auto  
Weather Property SovengardeDark  Auto

GlobalVariable Property GlobalTime  Auto  
GlobalVariable Property TimeScale  Auto  

FormList Property WeatherList  Auto  

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	SizeMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

;Main Menu
Function SizeMenu(bool Menu = True, int iButton01 = 0)
	While Menu
		if iButton01 != -1
			iButton01 = MainMenu.Show()
			Menu = False
			if iButton01 == 0;
				Weather01()
			Elseif iButton01 ==1
				 Time01()
			Elseif iButton01 ==2
				TimeScale01()
			endif
		endif
	endwhile
EndFunction

;Weather Menu
Function Weather01()
	int iButton02 = WeatherMenu.Show()
	if iButton02 == 0;
		Clear.ForceActive()
	Elseif iButton02 ==1
		Fog.ForceActive()
	Elseif iButton02 ==2
		Cloudy.ForceActive()
	Elseif iButton02 ==3
		Rain.ForceActive()
	Elseif iButton02 ==4
		Storm.ForceActive()
	Elseif iButton02 ==5
		Sovngarde.ForceActive()
	Elseif iButton02 ==6
		SovengardeDark.ForceActive()
	Elseif iButton02 ==7
		int temp01 = Utility.RandomInt(0, WeatherList.GetSize())
		Weather temp02 = WeatherList.getAt(temp01) as Weather
		temp02.ForceActive()
	endif
EndFunction

;GameHour Menu
Function Time01()
	int iButton03 = TimeMenu.Show()
	if iButton03 == 0;
		GlobalTime.SetValue(0)
	Elseif iButton03 ==1
		GlobalTime.SetValue(6)
	Elseif iButton03 ==2
		GlobalTime.SetValue(12)
	Elseif iButton03 ==3
		GlobalTime.SetValue(17)
	Elseif iButton03 ==4
		GlobalTime.SetValue(24)
	endif		
EndFunction

;TimeScale Menu
Function TimeScale01()
	int iButton04 = TimeScaleMessage.Show()
	if iButton04 == 0;
		TimeScale.SetValue(2)
	Elseif iButton04 ==1
		TimeScale.SetValue(4)
	Elseif iButton04 ==2
		TimeScale.SetValue(8)
	Elseif iButton04 ==3
		TimeScale.SetValue(13)
	Elseif iButton04 ==4
		TimeScale.SetValue(DEFAULTTIMESCALE)
	Elseif iButton04 ==5
		TimeScale.SetValue(32)
	Elseif iButton04 ==6
		TimeScale.SetValue(64)
	Elseif iButton04 ==7
		TimeScale.SetValue(128)
	Elseif iButton04 ==8
		TimeScale.SetValue(256)
	Elseif iButton04 ==9
		TimeScale.SetValue(512)
	endif	
EndFunction 
