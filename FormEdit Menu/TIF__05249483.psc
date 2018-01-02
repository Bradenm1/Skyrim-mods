;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__05249483 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Cell firstForm = Game.GetForm(CheatRoomCheatMenuDialogue.FormToUseFirstArg(0)) As Cell
Float afNear = CheatRoomCheatMenuDialogue.FloatToUse()
Float afFar = CheatRoomCheatMenuDialogue.FloatToUse()

firstForm.SetFogPlanes(afNear, afFar)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
