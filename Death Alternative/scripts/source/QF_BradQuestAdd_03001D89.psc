;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname QF_BradQuestAdd_03001D89 Extends Quest Hidden

;BEGIN ALIAS PROPERTY KillerAndMaster
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KillerAndMaster Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY GetAttacker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_GetAttacker Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;dsa
Game.GetPlayer().AddSpell(NewProperty)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
ObjectReference Temp = BradActor.GetAt(0) as ObjectReference
;ObjectReference Temp2
Alias_KillerAndMaster.ForceRefTo(Temp)
utility.wait(1)
Debug.Messagebox("Yep")
BradQuestAddWonder.Start()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property NewProperty  Auto  

Scene Property BradQuestAddWonder  Auto  

FormList Property BradActor  Auto  
