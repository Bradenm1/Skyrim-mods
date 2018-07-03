;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__05267ACC Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
float min = CheatRoomCheatMenuDialogue.FloatToUse()
float max = CheatRoomCheatMenuDialogue.FloatToUse()

float rGen = Utility.RandomFloat(min, max)

debug.messagebox("Number Generated: " + rGen)

CheatRoomCheatMenuDialogue.StoreFloat(rGen)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
