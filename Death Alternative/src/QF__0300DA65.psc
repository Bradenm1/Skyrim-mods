;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 7
Scriptname QF__0300DA65 Extends Quest Hidden

;BEGIN ALIAS PROPERTY KillerAndMaster
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KillerAndMaster Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;dsa
Game.GetPlayer().AddSpell(NewProperty)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property NewProperty  Auto  

Scene Property BradQuestAddWonder  Auto  

FormList Property BradActor  Auto  
