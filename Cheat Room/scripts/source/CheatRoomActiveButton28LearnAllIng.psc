Scriptname CheatRoomActiveButton28LearnAllIng extends ObjectReference

FormList Property CheatRoomQAInredients Auto  

Event OnActivate(ObjectReference akActionRef)
	int index = 0
	while (index < CheatRoomQAInredients.GetSize())
		Ingredient currentIngredient = CheatRoomQAInredients.GetAt(index) as Ingredient
		currentIngredient.LearnAllEffects()
		index += 1
	endWhile
EndEvent