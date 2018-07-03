;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname TIF__05267ACE Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_9
Function Fragment_9(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
ActorBase firstForm = Game.GetFormFromFile(CheatRoomCheatMenuDialogue.FormToUseFirstArg(0), CheatRoomCheatMenuDialogue.GetModAtLoadOrder()) As ActorBase 

Form actorBaseClass = firstForm.GetClass() as Form

debug.messagebox(actorBaseClass)

CheatRoomCheatMenuDialogue.StoreForm(actorBaseClass.GetFormID())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

CheatRoomCheatMenuMain Property CheatRoomCheatMenuDialogue Auto
