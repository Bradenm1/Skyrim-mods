Scriptname CheatRoomCheatMenuGetActorMAG extends activemagiceffect  
{Gets the actor the spell is shot at}

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto

; Event triggered when spell is used
Event OnEffectStart(Actor akTarget, Actor akCaster)
	; Check if users want to store the target and stores it so
	Debug.MessageBox(akTarget)
	CheatRoomCheatMenuDialogue.StoreVar(0, akTarget.GetFormID())
EndEvent