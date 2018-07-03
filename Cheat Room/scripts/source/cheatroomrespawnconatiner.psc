Scriptname CheatRoomRespawnConatiner extends ObjectReference  
{ Enables items respawning in containers as they are taken }

;/
//==================================================================================
// Re-adds the removed item from the container
//==================================================================================
/;
Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	; If is player taking the item
	if (akDestContainer == Game.GetPlayer())
		Self.Additem(akBaseItem, aiItemCount)
	endIf
endEvent	

;/
//==================================================================================
// Adds the item back to the player inventory if the player inputs a item into the container
//==================================================================================
/;
Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	; If is player adding an item
  	If (akSourceContainer == Game.GetPlayer())
		; Remove that item
    		Self.RemoveItem(akBaseItem, aiItemCount)
		Debug.MessageBox("You cannot add items to this container, the item has been re-added to your inventory")
		; Add the item back to the player
		Game.GetPlayer().AddItem(akBaseItem, aiItemCount)
 	 endIf
endEvent