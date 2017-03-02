;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 22
Scriptname QF_CheatroomGiveItems_010013EA Extends Quest Hidden

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
Game.RequestSave()
Game.GetPlayer().addspell(tele)
Game.GetPlayer().addspell(CheatOption01)
Game.GetPlayer().addspell(CheatOption02)
Game.GetPlayer().addspell(CheatOption03)
Debug.Notification("Cheat Room Teleport Spell added")
Debug.MessageBox("Cheat Room has been installed and is enabled. Backups of certain player veriables (Health, Magicka, etc) have been saved.")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
Game.GetPlayer().addspell(tele)
Debug.MessageBox("In-case installed before users creation. This message box means that the Cheat Room Teleport spell was added to your spells list.")
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_20
Function Fragment_20()
;BEGIN CODE
;Alchemy
Oldstats[0].SetValue(Game.GetPlayer().GetActorValue("Alchemy"))

;Alteration
Oldstats[1].SetValue(Game.GetPlayer().GetActorValue("Alteration"))

;Alteration
Oldstats[2].SetValue(Game.GetPlayer().GetActorValue("Marksman"))

;Block
Oldstats[3].SetValue(Game.GetPlayer().GetActorValue("Block"))

;CarryWeight
Oldstats[4].SetValue(Game.GetPlayer().GetActorValue("CarryWeight"))

;Conjuration
Oldstats[5].SetValue(Game.GetPlayer().GetActorValue("Conjuration"))

;Destruction
Oldstats[6].SetValue(Game.GetPlayer().GetActorValue("Destruction"))

;Enchanting
Oldstats[7].SetValue(Game.GetPlayer().GetActorValue("Enchanting"))

;Health
Oldstats[8].SetValue(Game.GetPlayer().GetActorValue("Health"))

;HeavyArmor
Oldstats[9].SetValue(Game.GetPlayer().GetActorValue("HeavyArmor"))

;Illusion
Oldstats[10].SetValue(Game.GetPlayer().GetActorValue("Illusion"))

;JumpinngBonus
Oldstats[11].SetValue(Game.GetPlayer().GetActorValue("JumpinngBonus"))

;LightArmor
Oldstats[12].SetValue(Game.GetPlayer().GetActorValue("LightArmor"))

;Lockpicking
Oldstats[13].SetValue(Game.GetPlayer().GetActorValue("Lockpicking"))

;Magicka
Oldstats[14].SetValue(Game.GetPlayer().GetActorValue("Magicka"))

;OneHanded
Oldstats[15].SetValue(Game.GetPlayer().GetActorValue("OneHanded"))

;Pickpocket
Oldstats[16].SetValue(Game.GetPlayer().GetActorValue("Pickpocket"))

;Restoration
Oldstats[17].SetValue(Game.GetPlayer().GetActorValue("Restoration"))

;Scale
Oldstats[18].SetValue(Game.GetPlayer().GetScale())

;Shout
Oldstats[19].SetValue(Game.GetPlayer().GetActorValue("ShoutRecoveryMult"))

;Smithing
Oldstats[20].SetValue(Game.GetPlayer().GetActorValue("Smithing"))

;Sneak
Oldstats[21].SetValue(Game.GetPlayer().GetActorValue("Sneak"))

;Speechcraft
Oldstats[22].SetValue(Game.GetPlayer().GetActorValue("Speechcraft"))

;SpeedMult
Oldstats[23].SetValue(Game.GetPlayer().GetActorValue("SpeedMult"))

;Stamina
Oldstats[24].SetValue(Game.GetPlayer().GetActorValue("Stamina"))

;TwoHanded
Oldstats[25].SetValue(Game.GetPlayer().GetActorValue("TwoHanded"))

;WeaponSpeedMult
Oldstats[26].SetValue(Game.GetPlayer().GetActorValue("WeaponSpeedMult"))

;DetectLifeRange
Oldstats[27].SetValue(Game.GetPlayer().GetActorValue("DetectLifeRange"))

;Invisibility
;Oldstats[28].SetValue(Game.GetPlayer().GetActorValue("Invisibility"))
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
;Xmarker02.PlaceAtMe(Player)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ObjectReference Property Xmaker  Auto  

SPELL Property Tele  Auto  

ActorBase Property Player  Auto  

ActorBase Property Chef  Auto  

MagicEffect Property Magice  Auto  

Int Property Xmarker01  Auto  

ObjectReference Property Xmarker02  Auto  

GlobalVariable Property HealthOld  Auto  

GlobalVariable Property MagickaOld  Auto  

GlobalVariable Property StaminaOld  Auto  

GlobalVariable Property SpeedMultOld  Auto  

GlobalVariable Property CarryWeightOld  Auto  

GlobalVariable Property InvisibilityOld  Auto  

GlobalVariable Property WeaponSpeedMultOld  Auto  

GlobalVariable Property ShoutRecoveryMultOld  Auto  

GlobalVariable Property JumpingBonusOld  Auto  

GlobalVariable Property ScaleOld  Auto  

SPELL Property CheatOption01  Auto  

SPELL Property CheatOption02  Auto  

SPELL Property CheatOption03  Auto  

GlobalVariable[] Property OldStats  Auto  
