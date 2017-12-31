;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__052442BA Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;===ModName===;
String modName = "Cheat Room.esp"

;===FormIDs====;
;int CHEATMENUSECONDFORM = 0x002442BB	

CheatRoomCheatMenuDialogue.Setform2ID(CheatRoomCheatMenuDialogue.HexMenu01(CheatRoomCheatMenuDialogue.Getform2ID()))

;GlobalVariable secondForm = Game.GetFormFromFile(CHEATMENUSECONDFORM, modName) As GlobalVariable

;CheatRoomCheatMenuDialogue.HexMenu01(secondForm)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
