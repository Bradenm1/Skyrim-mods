;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 10
Scriptname QF__010012C9 Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FillWithItem
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FillWithItem Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY FillWithAttcker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_FillWithAttcker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Debug.MessageBox("Quest")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
Actor Temp01 = BradAIGetAttacker.GetAt(0) as Actor
Alias_FillWithAttcker.ForceRefTo(Temp01)
;Utility.Wait(0.4)
BradTheifAI.MoveTo(Alias_FillWithAttcker.GetActorReference())
Alias_FillWithAttcker.GetActorReference().Kill()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
BradAIPackagePointerSec.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property Spell01  Auto  

FormList Property BradAIDetetDoorsAll  Auto  

Scene Property BradAIPackagePointerSec  Auto  

FormList Property BradAIGetAttacker  Auto  

Scene Property BradAIPackagePointerAttackActor  Auto  

Actor Property BradTheifAI  Auto  
