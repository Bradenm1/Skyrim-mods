;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__05249479 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Debug.MessageBox("Int1: " + CheatRoomCheatMenuDialogue.GetSavedInt(0) + " |  Int2: " + CheatRoomCheatMenuDialogue.GetSavedInt(1) + " |  Int3: " + CheatRoomCheatMenuDialogue.GetSavedInt(2) + " |  Int4: " + CheatRoomCheatMenuDialogue.GetSavedInt(3))
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
