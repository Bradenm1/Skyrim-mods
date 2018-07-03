;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__05249485 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Cell firstForm = Game.GetFormFromFile(CheatRoomCheatMenuDialogue.FormToUseFirstArg(0), CheatRoomCheatMenuDialogue.GetModAtLoadOrder()) As Cell
Int aiNearRed = CheatRoomCheatMenuDialogue.IntToUse()
Int aiNearGreen = CheatRoomCheatMenuDialogue.IntToUse()
Int aiNearBlue = CheatRoomCheatMenuDialogue.IntToUse()
Int aiFarRed = CheatRoomCheatMenuDialogue.IntToUse()
Int aiFarGreen = CheatRoomCheatMenuDialogue.IntToUse()
Int  aiFarBlue = CheatRoomCheatMenuDialogue.IntToUse()

firstForm.SetFogColor(aiNearRed, aiNearGreen, aiNearBlue, aiFarRed, aiFarGreen, aiFarBlue)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
