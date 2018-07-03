;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname QF_BradsFreeCamSpell_01000D62 Extends Quest Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
;comment
int i = 0
while i < spell02.length
Game.GetPlayer().AddSpell(Spell02[i])
i+= 1
endwhile
Actor01.AllowPCDialogue(false)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property Spell01  Auto  

Actor Property Actor01  Auto  

SPELL[] Property Spell02  Auto  
