Scriptname CheatRoomCheatMenuMAG extends activemagiceffect  
{This script enables the menu}

ObjectReference Property talkingReference  Auto  
{The talking reference}

; Event triggered when spell is used
Event OnEffectStart(Actor akTarget, Actor akCaster)
	; Activate the talking reference on the player
	talkingReference.Activate(Game.GetPlayer())
EndEvent