Scriptname CheatRoomActiveButton17DupItem extends ObjectReference  

GlobalVariable Property GlobalVe Auto
Message Property Message01  Auto    

Event OnActivate(ObjectReference akActionRef)
	int iButton = Message01.Show()
	if iButton == 0;
		GlobalVe.SetValue(1)
	Elseif iButton ==1
		GlobalVe.SetValue(5)
	Elseif iButton ==2
		GlobalVe.SetValue(15)
	Elseif iButton ==3
		GlobalVe.SetValue(50)
	Elseif iButton ==4
		GlobalVe.SetValue(100)
	Elseif iButton ==5
		GlobalVe.SetValue(1000)
	endif
EndEvent
