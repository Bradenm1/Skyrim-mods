Scriptname spellonactor extends ActiveMagicEffect 

SPELL Property DeadThrall  Auto   
SPELL Property VampireRaiseThrall04  Auto  
SPELL Property DreadZombie  Auto  
SPELL Property RaiseZombie  Auto  
SPELL Property ReanimateCorpse  Auto  
SPELL Property SoulTrap  Auto  
SPELL Property TurnUndead  Auto 
SPELL Property GhostAbility  Auto  
SPELL Property AbFXSovengardeGlow  Auto  

Quest Property BradQuestAdd  Auto  

FormList Property BradActor  Auto  
FormList Property BradEffects  Auto  

ObjectReference Property BradSetPointsGo  Auto  
ObjectReference Property ToSovenGarde  Auto  
ObjectReference Property WhiteRunTemple  Auto 

ImageSpaceModifier Property DemoFinaleFadeToBlack  Auto  
ImageSpaceModifier Property FadeToBlackBackImod  Auto

;EventCamera Property thingasd  Auto

Event OnDeath(Actor akKiller)
	KillerAndMaster.ForceRefTo(akKiller)
	Selection(akKiller)
	Utility.Wait(8)
	;EnableCam()
	Utility.Wait(1)
	Main(akKiller)
	;EffectShader tempShade = BradEffects.GetAt(24) as EffectShader
	;tempShade.Play(Game.GetPlayer(), -1.0)
EndEvent

;=======CODE START=======
;/
Double resurrected it needed or else your character will bug out, do not remove them. Always have two unless they are becoming a thrall, just have one
/;

Function Main(Actor akTarget)
	Int i = 0
	;=======Drives the Character=======
	while true
		;=====Checks if master is in combat=======
		Bool TempActor = akTarget.IsInCombat() 
		If TempActor == True
			MasterAttack(akTarget)
		
		;=======Not In Combat? Sheathe Weapon=======
		Else
			;nothing
		EndIf
		MoveRandom()
		Game.GetPlayer().PathToReference(BradSetPointsGo, 1)
		Int TempRand = Utility.RandomInt(0, 20)
		Utility.Wait(TempRand)
	EndWhile
EndFunction

Function Selection(Actor akTarget)
	;=======Spells Selection=======
	;=======Spells are shot at a another ref and not the player, to solve a bug=======
	Int RandomSpell = Utility.RandomInt(1, 1)
	;Set to 1,1 for testing
	;DemoFinaleFadeToBlack.Apply()
	Utility.Wait(3)
	Game.SetPlayerAIDriven()
	If RandomSpell == 0
		;Game.GetPlayer().PlaceAtMe()
		;Game.GetPlayer().Resurrect()
		akTarget.DoCombatSpellApply(VampireRaiseThrall04,  Game.GetPlayer())
		Utility.Wait(0.2)
		akTarget.DoCombatSpellApply(GhostAbility,  Game.GetPlayer())
	Elseif RandomSpell == 1
		BradSetPointsGo.MoveTo(Game.GetPlayer())
		Utility.Wait(0.2)
		akTarget.DoCombatSpellApply(VampireRaiseThrall04,  BradSetPointsGo)
	Elseif RandomSpell == 2
		akTarget.DoCombatSpellApply(RaiseZombie,  Game.GetPlayer())
	Elseif RandomSpell == 3
		Game.GetPlayer().Resurrect()
		Utility.Wait(0.2)
		Game.GetPlayer().MoveTo(ToSovenGarde)
		Utility.Wait(0.2)
		Game.GetPlayer().AddSpell(AbFXSovengardeGlow)
	Elseif RandomSpell == 4
		Game.GetPlayer().Resurrect()
		Utility.Wait(0.2)
		Game.GetPlayer().MoveTo(WhiteRunTemple)
	EndIf
EndFunction

Function EnableCam()
	;=======Enable Camera Movement=======
	;In short fixes the camera... The game tends to crash, so, waits have to be used.
	Utility.Wait(0.3)
	Game.GetPlayer().Resurrect()
	Utility.Wait(1)
	Game.ForceFirstPerson()
	Utility.Wait(0.3)
	Game.GetPlayer().DrawWeapon()
	Utility.Wait(0.3)
	Game.ForceThirdPerson()
	Utility.Wait(0.3)
	Game.GetPlayer().SheatheWeapon()
	Utility.Wait(0.3)
EndFunction

Function DisableBlackScreen()
	;=======Disable Black Screen=======
	DemoFinaleFadeToBlack.PopTo(FadeToBlackBackImod, 1.0) 
	DemoFinaleFadeToBlack.Remove()
EndFunction

Function MasterAttack(Actor akTarget)
	;=======Master is in combat? Run this=======
	Int o = 0
	Game.GetPlayer().DrawWeapon()
	While o == 0
		Actor Temp02 = akTarget.GetCombatTarget() as Actor
		GetAttacker.ForceRefTo(Temp02)
		Utility.Wait(0.3)
		BradQuestAddAttackAttacker.Start()
	;=======Attacker is dead? Master is safe? Stop Combat=======
		If ((Temp02.IsDead() == True) || (akTarget.IsInCombat() == False))
			Game.GetPlayer().SheatheWeapon()
			StopPackage()
			o = 1
		EndIf
	EndWhile
EndFunction

Function MoveRandom()
		Utility.Wait(3)
		BradSetPointsGo.MoveTo(Game.GetPlayer())
		Float TempRand01 = Utility.RandomInt(-3000, 3000)
		Float TempRand02 = Utility.RandomInt(-3000, 3000)
		Float TempRand03 = Utility.RandomInt(-10, 10)
		BradSetPointsGo.MoveTo(Game.GetPlayer(), TempRand01, TempRand02, 0.0, false)
		Utility.Wait(3)
EndFunction   

Function StopPackage()
	BradEndPackages.SetValueInt(1)
	Utility.Wait(0.4)
EndFunction

;Function Dumb()
;	;=====Checks if master is in combat=======
;		Bool TempActor = akTarget.IsInCombat() 
;		If TempActor == True
;			;MasterAttack(akTarget)
;		
;		;=======Not In Combat? Sheathe Weapon=======
;		Else
;			;Game.GetPlayer().SheatheWeapon()
;		EndIf
;EndFunction

VisualEffect Property NewProperty  Auto  

ReferenceAlias Property KillerAndMaster  Auto  

Scene Property BradQuestAddAttackAttacker  Auto  

ReferenceAlias Property GetAttacker  Auto  

GlobalVariable Property BradEndPackages  Auto  
