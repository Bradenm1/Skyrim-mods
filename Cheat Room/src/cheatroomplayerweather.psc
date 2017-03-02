Scriptname CheatRoomPlayerWeather extends activemagiceffect  

Weather Property Clear  Auto  

Weather Property Rain  Auto  

Weather Property Storm  Auto  

Weather Property Cloudy  Auto  

Weather Property Sovengard  Auto  

Weather Property Fog  Auto  

Message Property MessageWeather  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	int iButton = MessageWeather.Show()
	if iButton == 0;
		Clear.ForceActive()
	Elseif iButton ==1
		Fog.ForceActive()
	Elseif iButton ==2
		Cloudy.ForceActive()
	Elseif iButton ==3
		Rain.ForceActive()
	Elseif iButton ==4
		Storm.ForceActive()
	Elseif iButton ==5
		Sovengard.ForceActive()
	endif
endEVENT
