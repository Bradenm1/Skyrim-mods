Scriptname BradsImageSpaceScript extends activemagiceffect  

;=======Properties=======
ObjectReference Property BradTakingActivator  Auto  

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	BradGiveImageSpaceSpell.Reset()
	BradTakingActivator.Activate(Game.GetPlayer())
EndEvent

Quest Property BradGiveImageSpaceSpell  Auto  
