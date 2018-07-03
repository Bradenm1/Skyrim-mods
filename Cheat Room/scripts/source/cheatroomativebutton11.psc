Scriptname CheatRoomAtiveButton11 extends ObjectReference  

;=======Constants=======
float MAXHEIGHT = 0.10
float MINHEIGHT = 0.01

;=======Properties=======
Message Property MessageSize  Auto  
GlobalVariable Property ScaleOld  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	SizeMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

;Height Menu
Function SizeMenu(bool Menu = True, int iButton01 = 0)
	While Menu
		if iButton01 != -1
			iButton01 = MessageSize.Show()
			Menu = False
			if iButton01 == 0;
				float i = Game.GetPlayer().GetScale()
				i = i - MAXHEIGHT
				Game.GetPlayer().SetScale(i)
				Debug.Notification("Height = " + i)
			Elseif iButton01 ==1
				float i = Game.GetPlayer().GetScale()
				i = i - MINHEIGHT
				Game.GetPlayer().SetScale(i)
				Debug.Notification("Height = " + i)
			Elseif iButton01 ==2
				float i = ScaleOld.GetValue()
				Game.GetPlayer().SetScale(i)
				Debug.Notification("Height = " + i)
			Elseif iButton01 ==3
				Game.GetPlayer().SetScale(1)
				Debug.Notification("Height = " + "1")
			Elseif iButton01 ==4
				float i = Game.GetPlayer().GetScale()
				i = i + MINHEIGHT
				Game.GetPlayer().SetScale(i)
				Debug.Notification("Height = " + i)
			Elseif iButton01 ==5
				float i = Game.GetPlayer().GetScale()
				i = i +  MAXHEIGHT
				Game.GetPlayer().SetScale(i)
				Debug.Notification("Height = " + i)
			endif
		endif
	endwhile
EndFunction
