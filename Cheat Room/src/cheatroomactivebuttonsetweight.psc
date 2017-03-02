Scriptname CheatRoomActiveButtonSetWeight extends ObjectReference  

GlobalVariable Property PlayerFollowerCount  Auto
GlobalVariable Property PlayerCreatureFollower  Auto  

Int Property Count  Auto


Event OnActivate(ObjectReference akActionRef)
	PlayerFollowerCount.SetValueInt(Count)
	PlayerCreatureFollower.SetValueInt(Count)
EndEvent