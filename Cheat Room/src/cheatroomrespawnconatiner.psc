Scriptname CheatRoomRespawnConatiner extends ObjectReference  


Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	;Deletes dumb item
	if akDestContainer == Game.GetPlayer()
		Self.Additem(akBaseItem, aiItemCount)
	else
		;nothing
	endIf
endEvent	

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
  	If akSourceContainer == Game.GetPlayer()
    		Self.RemoveItem(akBaseItem, aiItemCount)
		Debug.MessageBox("You cannot add items to this container, the item has been re-added to your inventory")
		Game.GetPlayer().AddItem(akBaseItem, aiItemCount)
	else
		;nothing
 	 endIf
endEvent