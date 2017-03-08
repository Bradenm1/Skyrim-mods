Scriptname spellonactor extends ActiveMagicEffect 

;=======Constants=======
float WAITLEASTAMMOUNT = 0.3
int TIMETOREANIMATE = 8
int AITRAVELDISTANCE = 2000
int AITRAVELUPANDDOWN = 10
bool AIENABLE = False

;=======Properties=======
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

ObjectReference Property SoulCairnSpawn  Auto  
ObjectReference Property BradSetPointsGo  Auto  
ObjectReference Property ToSovenGarde  Auto  
ObjectReference Property WhiteRunTemple  Auto 

ImageSpaceModifier Property DemoFinaleFadeToBlack  Auto  
ImageSpaceModifier Property FadeToBlackBackImod  Auto

GlobalVariable Property BradEndPackages  Auto

Scene Property BradQuestAddAttackAttacker  Auto  

ReferenceAlias Property KillerAndMaster  Auto  
ReferenceAlias Property GetAttacker  Auto    

;=======Fields=======
Actor actorKiller
Actor attackerEnemy


;=======Constructor Event=======
Event OnDeath(Actor akKiller)
	actorKiller = aKKiller
	;Run()
EndEvent

;Using Spell Method
Event OnEffectStart(Actor akTarget, Actor akCaster)
	actorKiller = akTarget
	Run()
EndEvent

;=======CODE START=======
;/
Double resurrected it needed or else your character will bug out, do not remove them. Always have two unless they're becoming a thrall, just have one.
/;

Function Run()
	Selection()
	Utility.Wait(TIMETOREANIMATE)
	EnableCam()
	Utility.Wait(1)
	AIEnable()
	Main()
	;EffectShader tempShade = BradEffects.GetAt(24) as EffectShader
	;tempShade.Play(Game.GetPlayer(), -1.0)
EndFunction

Function Main()
	;=======Drives the Character=======
	while true
		;=====Checks if master is in combat=======
		If actorKiller.IsInCombat() == True
			MasterAttack()
		;=======Not In Combat? Sheathe Weapon=======
		Else
			MoveRandom()
			Game.GetPlayer().PathToReference(BradSetPointsGo, 1)
			Utility.Wait(Utility.RandomInt(0, 20))
		EndIf
	EndWhile
EndFunction

Function Selection()
	;=======Spells Selection=======
	;=======Spells are shot at a another ref and not the player, to solve a bug=======
	Int RandomSpell = Utility.RandomInt(5,5)
	;1
	;DemoFinaleFadeToBlack.Apply()
	Utility.Wait(3)
	BradSetPointsGo.MoveTo(Game.GetPlayer())
	If RandomSpell == 0
		;Become a ghost with dead player on the ground
		;Game.GetPlayer().PlaceAtMe()
		Game.GetPlayer().Resurrect()
		Utility.Wait(WAITLEASTAMMOUNT)
		actorKiller.DoCombatSpellApply(GhostAbility,  BradSetPointsGo)
	Elseif RandomSpell == 1
		;Become a thrall
		actorKiller.DoCombatSpellApply(VampireRaiseThrall04,  BradSetPointsGo)
	Elseif RandomSpell == 2
		;Become a zombie - Also burns to ash when killed
		actorKiller.DoCombatSpellApply(RaiseZombie,  BradSetPointsGo)
	Elseif RandomSpell == 3
		;Wake up in sovengarde
		Game.GetPlayer().Resurrect()
		Utility.Wait(WAITLEASTAMMOUNT)
		Game.GetPlayer().MoveTo(ToSovenGarde)
		Utility.Wait(WAITLEASTAMMOUNT)
		Game.GetPlayer().AddSpell(AbFXSovengardeGlow)
	Elseif RandomSpell == 4
		;Wake up in Whiterun
		Game.GetPlayer().Resurrect()
		Utility.Wait(WAITLEASTAMMOUNT)
		Game.GetPlayer().MoveTo(WhiteRunTemple)
	Elseif RandomSpell == 5
		;Become soul trapped and sent to soul cairn
		;EffectShader tempShade = BradEffects.GetAt(204) as EffectShader
		;tempShade.Play(Game.GetPlayer(), -1.0)
		actorKiller.DoCombatSpellApply(SoulTrap,  BradSetPointsGo)
		Utility.Wait(10)
		;Game.GetPlayer().Resurrect()
		;Utility.Wait(WAITLEASTAMMOUNT)
		;Game.GetPlayer().AddSpell(DLC1SoulCairnGhostAbility)
		;Game.GetPlayer().MoveTo(SoulCairnSpawn)
	EndIf
EndFunction

Function EnableCam()
	;=======Enable/Fix Camera Movement=======
	Utility.Wait(WAITLEASTAMMOUNT)
	Game.GetPlayer().Resurrect()
	Utility.Wait(1)
	Game.ForceFirstPerson()
	Utility.Wait(WAITLEASTAMMOUNT)
	Game.GetPlayer().DrawWeapon()
	Utility.Wait(WAITLEASTAMMOUNT)
	Game.ForceThirdPerson()
	Utility.Wait(WAITLEASTAMMOUNT)
	Game.GetPlayer().SheatheWeapon()
	Utility.Wait(WAITLEASTAMMOUNT)
EndFunction

Function DisableBlackScreen()
	;=======Disable Black Screen=======
	DemoFinaleFadeToBlack.PopTo(FadeToBlackBackImod, 1.0) 
	DemoFinaleFadeToBlack.Remove()
EndFunction

Function MasterAttack()
	;=======Master is in combat? Run this=======
	bool o = true
	Game.GetPlayer().DrawWeapon()
	While (o == true)
		attackerEnemy = actorKiller.GetCombatTarget() as Actor
		GetAttacker.ForceRefTo(attackerEnemy)
		Utility.Wait(WAITLEASTAMMOUNT)
		BradQuestAddAttackAttacker.Start()
	;=======Attacker is dead? Master is safe? Stop Combat=======
		If ((attackerEnemy.IsDead() == True) || (actorKiller.IsInCombat() == False))
			Game.GetPlayer().SheatheWeapon()
			StopPackage()
			o = false
		EndIf
	EndWhile
EndFunction

Function MoveRandom()
		Utility.Wait(3)
		;BradSetPointsGo.MoveTo(Game.GetPlayer())
		BradSetPointsGo.MoveTo(Game.GetPlayer(), Utility.RandomInt(-AITRAVELDISTANCE, AITRAVELDISTANCE), Utility.RandomInt(-AITRAVELDISTANCE, AITRAVELDISTANCE), Utility.RandomInt(-AITRAVELUPANDDOWN, AITRAVELUPANDDOWN), false)
		Utility.Wait(3)
EndFunction   

Function StopPackage()
	BradEndPackages.SetValueInt(1)
	Utility.Wait(WAITLEASTAMMOUNT)
EndFunction

Function AIEnable()
	If (AIENABLE == True)
		Game.SetPlayerAIDriven()
	Else
		;Disable AI
	EndIf
EndFunction

SPELL Property DLC1SoulCairnGhostAbility  Auto  

SPELL Property DLC1VQ04SoulTrap  Auto  
