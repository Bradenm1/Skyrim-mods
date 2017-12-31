;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__052442B3 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;===ModName===;
;String modName = "Cheat Room.esp"

;===FormIDs====;
;int CHEATMENUFIRSTFORM = 0x002442B6
;int CHEATMENUSECONDFORM = 0x002442BB	

;Actor firstForm = Game.GetForm(((Game.GetFormFromFile(CHEATMENUFIRSTFORM , modName) As GlobalVariable).GetValue() as int)) as Actor
;Form secondForm = Game.GetForm(((Game.GetFormFromFile(CHEATMENUSECONDFORM , modName) As GlobalVariable).GetValue() as int))

Actor firstForm = Game.GetForm(CheatRoomCheatMenuDialogue.Getform1ID()) As Actor
Form secondForm = Game.GetForm(CheatRoomCheatMenuDialogue.Getform2ID())

debug.messagebox(firstForm)
debug.messagebox(secondForm)

firstForm.PlaceAtMe(secondForm)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
