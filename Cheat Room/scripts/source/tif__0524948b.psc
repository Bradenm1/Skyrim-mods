;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0524948B Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ObjectReference firstForm = Game.GetFormFromFile(CheatRoomCheatMenuDialogue.FormToUseFirstArg(0), CheatRoomCheatMenuDialogue.GetModAtLoadOrder()) As ObjectReference 

Bool ignore = CheatRoomCheatMenuDialogue.BoolChose()

firstForm.IgnoreFriendlyHits(ignore)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto