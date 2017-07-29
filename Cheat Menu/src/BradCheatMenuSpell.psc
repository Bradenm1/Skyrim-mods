Scriptname BradCheatMenuSpell extends ActiveMagicEffect  
;This script contains basic code to enable the userint for the cheat menu, core code is in the BradTalkingQuest...

ObjectReference Property BradTKAch  Auto  

;Events
Event OnEffectStart(Actor akTarget, Actor akCaster)
	BradTKAch.Activate(Game.GetPlayer())
EndEvent
