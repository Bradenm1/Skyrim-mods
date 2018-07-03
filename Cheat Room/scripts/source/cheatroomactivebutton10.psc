Scriptname CheatRoomActiveButton10 extends ObjectReference  

MiscObject Property Coin  Auto  
Int Property HowMuch  Auto  

Event OnActivate(ObjectReference akActionRef)
	Game.GetPlayer().Additem(Coin,HowMuch)
EndEvent
