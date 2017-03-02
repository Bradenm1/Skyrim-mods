Scriptname CheatRoomPlayerChangeTime extends activemagiceffect  

GlobalVariable Property GlobalTime  Auto  

Message Property ShowTimeMessage  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	int iButton = ShowTimeMessage.Show()
	if iButton == 0;
		GlobalTime.SetValue(0)
	Elseif iButton ==1
		GlobalTime.SetValue(6)
	Elseif iButton ==2
		GlobalTime.SetValue(12)
	Elseif iButton ==3
		GlobalTime.SetValue(17)
	Elseif iButton ==4
		GlobalTime.SetValue(24)
	endif
endEVENT
