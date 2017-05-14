Scriptname CheatRoomActiveButton01 extends ObjectReference  

Event OnActivate(ObjectReference akActionRef)
	Game.GetPlayer().ModAV("DragonSouls",1)
	Debug.Notification("1 DragonSoul added!")
EndEvent