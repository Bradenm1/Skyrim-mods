;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__0525D8CA Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
String outputString = CheatRoomCheatMenuDialogue.StringToUse()
Float output = Game.GetGameSettingFloat(outputString)

Debug.MessageBox("Value of " + outputString + ": " + output)

CheatRoomCheatMenuDialogue.StoreFloat(output)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
