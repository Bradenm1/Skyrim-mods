Scriptname CheatRoomActiveButton02 extends ObjectReference  

Int Property DragonSoulsAdd  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.GetPlayer().ModAV("DragonSouls",DragonSoulsAdd)
	Debug.Notification(DragonSoulsAdd + " DragonSouls added!")
EndEvent
