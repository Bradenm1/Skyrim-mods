;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0524947B Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Debug.MessageBox("Float1: " + CheatRoomCheatMenuDialogue.GetSavedFloat(0) + " |  Float2: " + CheatRoomCheatMenuDialogue.GetSavedFloat(1) + " |  Float3: " + CheatRoomCheatMenuDialogue.GetSavedFloat(2) + " |  Float4: " + CheatRoomCheatMenuDialogue.GetSavedFloat(3))
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
