Scriptname CheatRoomMerchantStopCombat extends Actor

ObjectReference Property TheMerchantMarkerRef Auto

Event OnCombatStateChanged(Actor akTarget, int aeCombatState)
	StopCombat()
	MoveTo(TheMerchantMarkerRef, abMatchRotation = true)
endEvent