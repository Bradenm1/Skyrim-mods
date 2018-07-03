;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname QF_BradGiveCameraSpells_010012DD Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;Add Spells
Game.GetPlayer().AddSpell(Spell01)
Game.GetPlayer().AddSpell(Spell02)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property Spell01  Auto  

SPELL Property Spell02  Auto  
