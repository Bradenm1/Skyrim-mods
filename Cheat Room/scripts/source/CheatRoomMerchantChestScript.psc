Scriptname CheatRoomMerchantChestScript extends ObjectReference  

MiscObject Property Gold001 Auto
ObjectReference Property PlayerRef Auto

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if ( akBaseItem == Gold001 && akDestContainer == PlayerRef)
		Self.AddItem(Gold001, aiItemCount)
	endIf
endEvent

Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
	if ( akBaseItem == Gold001 && akSourceContainer == PlayerRef)
		Self.RemoveItem(Gold001, aiItemCount)
	endIf
endEvent