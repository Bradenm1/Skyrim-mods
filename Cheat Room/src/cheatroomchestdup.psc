Scriptname CheatRoomChestDup extends ObjectReference  

ObjectReference Property Output01  Auto
;lol spelling mistake...  
GlobalVariable Property GloableVe  Auto  

Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	Output01.Additem(akBaseItem,GloableVe.GetValueInt())
	Debug.MessageBox("Duplication of  " + akBaseItem + " at " + GloableVe.GetValueInt() + " items is complete!")
endEvent	

