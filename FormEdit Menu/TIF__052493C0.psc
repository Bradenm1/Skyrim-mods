;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__052493C0 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
;===ModName===;
String modName = "Cheat Room.esp"

;===FormIDs====;
int CHEATMENUFIRSTFORM = 0x002442B6
int CHEATMENUSECONDFORM = 0x002442BB	

Actor firstForm = Game.GetForm(((Game.GetFormFromFile(CHEATMENUFIRSTFORM , modName) As GlobalVariable).GetValue() as int)) as Actor
Shout secondForm = Game.GetForm(((Game.GetFormFromFile(CHEATMENUSECONDFORM , modName) As GlobalVariable).GetValue() as int)) As Shout

firstForm.AddShout(secondForm)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
