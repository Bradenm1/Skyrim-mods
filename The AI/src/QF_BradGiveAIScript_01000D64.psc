;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname QF_BradGiveAIScript_01000D64 Extends Quest Hidden

;BEGIN ALIAS PROPERTY AIActivate
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_AIActivate Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;gf
Game.GetPlayer().AddSpell(Spell01)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property Spell01  Auto  
