;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__052493EC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ObjectReference firstForm = Game.GetForm(CheatRoomCheatMenuDialogue.FormToUseFirstArg(0)) As ObjectReference
ObjectReference secondForm = Game.GetForm(CheatRoomCheatMenuDialogue.FormToUseFirstArg(1)) As ObjectReference

firstForm.Activate(secondForm)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
