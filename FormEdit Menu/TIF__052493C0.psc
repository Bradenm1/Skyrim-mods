;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__052493C0 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
Actor firstForm = Game.GetForm(CheatRoomCheatMenuDialogue.Getform1ID()) as Actor
Shout secondForm = Game.GetForm(CheatRoomCheatMenuDialogue.Getform2ID()) As Shout

firstForm.AddShout(secondForm)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
