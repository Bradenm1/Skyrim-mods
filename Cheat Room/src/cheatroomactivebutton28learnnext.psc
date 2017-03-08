Scriptname CheatRoomActiveButton28LearnNext extends ObjectReference  

;=======Properties=======
FormList Property IngList  Auto  

;=======CODE START=======
Event OnActivate(ObjectReference akActionRef)
	NextIng()
EndEvent

;Teach player the 4 slots in ingredients
Function NextIng()
	int Index = 0
	int Count = 0
	while (Index <  IngList .GetSize())
		Ingredient temp01 = IngList.getAt(Index) as Ingredient
		while (Count < 4)
			if ( temp01.LearnNextEffect() == Count)
				;Debug.Notification("Player learned the "+ Count + " From the " + temp01)
				Count+= 1
			endif
		endwhile	
		Count = 0
		Index+= 1
	endWhile
endFunction