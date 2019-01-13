Scriptname CheatRoomStonesofBarenziahQuest extends ObjectReference  

ObjectReference[] Property Stones Auto

Event OnActivate(ObjectReference akActionRef)
	int Index = 0
	While ( Index < Stones.Length )
		ObjectReference stoneIter = Stones[Index]
		stoneIter.Activate(Game.GetPlayer())
		;Debug.Trace(stoneIter)
		Index = Index + 1
	EndWhile
	;Debug.MessageBox("Finished")
EndEvent