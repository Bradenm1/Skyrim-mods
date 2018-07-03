;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_BradGiveImageSpaceSpell_01005E6A Extends Quest Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
Game.GetPlayer().AddSpell(Spell01)
Game.GetPlayer().AddSpell(Spell02)
Debug.Messagebox("Please save and reload in-order for Display Enhancments to work")
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property Spell01  Auto  

SPELL Property Spell02  Auto  
