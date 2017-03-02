;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 3
Scriptname QF_BradQuestDebugAdd_05005904 Extends Quest Hidden

;BEGIN FRAGMENT Fragment_2
Function Fragment_2()
;BEGIN CODE
;Add Spell
Game.GetPlayer().AddSpell(BradQuestDebugSpell)
Game.GetPlayer().AddItem(BradQuestDebugHelpBook)
;Complete Quest
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property BradQuestDebugSpell  Auto  

Book Property BradQuestDebugHelpBook  Auto  
