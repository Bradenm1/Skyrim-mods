;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__05267AD6 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ActorBase firstForm = Game.GetFormFromFile(CheatRoomCheatMenuDialogue.FormToUseFirstArg(0), CheatRoomCheatMenuDialogue.GetModAtLoadOrder()) As ActorBase 
Outfit seconform = Game.GetFormFromFile(CheatRoomCheatMenuDialogue.FormToUseFirstArg(1), CheatRoomCheatMenuDialogue.GetModAtLoadOrder()) As Outfit
Bool boolean = CheatRoomCheatMenuDialogue.BoolChose()

firstForm.SetOutfit(seconform, boolean)

debug.messagebox(firstForm + " Outfit  is now " + seconform + ". Sleeping outfit " + boolean)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
