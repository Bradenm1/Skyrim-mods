Scriptname CheatRoomSpeedMult extends ObjectReference  

Int Property ActorValuePlus  Auto  

String Property ActorValueStr  Auto  

float temp

Event OnEquipped(Actor akActor)
	temp = Game.GetPlayer().GetActorValue(ActorValueStr) + ActorValuePlus
	Game.GetPlayer().SetActorValue(ActorValueStr, temp)
    	Return
EndEvent
 
Event OnUnequipped(Actor akActor)
	temp = Game.GetPlayer().GetActorValue(ActorValueStr) - ActorValuePlus
	Game.GetPlayer().SetActorValue(ActorValueStr, temp)
    	Return
EndEvent