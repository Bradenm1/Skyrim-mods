Scriptname CheatRoomActiveButton12 extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	if Game.GetPlayer().GetScale() == 0.85
		Game.GetPlayer().SetScale(0.80)
		Debug.Notification("Scale Set 0.80")
	endif
	if Game.GetPlayer().GetScale() == 0.90
		Game.GetPlayer().SetScale(0.85)
		Debug.Notification("Scale Set 0.85")
	endif
	if Game.GetPlayer().GetScale() == 0.95
		Game.GetPlayer().SetScale(0.90)
		Debug.Notification("Scale Set 0.90")
	endif
	if Game.GetPlayer().GetScale() == 1
		Game.GetPlayer().SetScale(0.95)
		Debug.Notification("Scale Set 0.95")
	endif
	if Game.GetPlayer().GetScale() == 1.05
		Game.GetPlayer().SetScale(1)
		Debug.Notification("Scale Set 1")
	endif
	if Game.GetPlayer().GetScale() == 1.10
		Game.GetPlayer().SetScale(1.05)
		Debug.Notification("Scale Set 1.05")
	endif
	if Game.GetPlayer().GetScale() == 1.15
		Game.GetPlayer().SetScale(1.10)
		Debug.Notification("Scale Set 1.10")
	endif
	if Game.GetPlayer().GetScale() == 1.20
		Game.GetPlayer().SetScale(1.15)
		Debug.Notification("Scale Set 1.15")
	endif
EndEvent
