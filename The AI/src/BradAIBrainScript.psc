Scriptname BradAIBrainScript extends activemagiceffect  
{Brain of the AI, don't recommend editing unless you know what you are doing}

Quest Property BradAIPackagePointer  Auto  
Scene Property BradAIPackagePointerSec  Auto  
Scene Property BradPackagePointerFlee  Auto  
Scene Property BradAIPackagePointerHeadToRiften  Auto  
Scene Property BradAIPackagePointerAttackActor  Auto  

FormList Property BradAIGetAttacker  Auto  
FormList Property BradAIDetectDoorsAll  Auto  
FormList Property AllPackages  Auto  

ObjectReference Property xMarkerFollow  Auto  
ReferenceAlias Property Alias_FillWithAttcker  Auto  

GlobalVariable Property BradEndPackages  Auto  

Actor ActorForEffect

Event OnEffectStart(Actor akTarget, Actor akCaster)
	ActorForEffect = akCaster
	RegisterForUpdate(5.0)
	OnRun()
EndEvent

Event OnUpdate()
	Debug.Notification("Yep")
EndEvent

;/
========DON'T EDIT ABOVE========
========AI Brain Start========
========Anything Required should in OnRun()========
/;

Function OnRun()
	Debug.Notification("Hello!")
	Game.SetPlayerAIDriven()
	EnableAIBrain()
EndFunction

Event OnPackageEnd(Package akOldPackage)
	Debug.Notification("PackageEnd")
EndEvent


Function EnableAIBrain()
	While True
		BradEndPackages.SetValueInt(0)
		Int TempRand01 = Utility.RandomInt(1, 3)
		If TempRand01 == 0
		ElseIf TempRand01 == 1
			Debug.Notification("I want to go to a town")
			HeadToTown()
		ElseIf TempRand01 == 2
			;Debug.Notification("Run!")
			;AnyActorFlee()
		ElseIf TempRand01 == 3
			Debug.Notification("I think i'll go for a wonder...")
			WonderRandom()
		ElseIf TempRand01 == 4
			Debug.Notification("Your dead mate..")
			AttackPersonRandom()
		EndIf
	EndWhile
EndFunction

;==========GOTORANDOMTOWN==========

Function HeadToTown()
	BradAIPackagePointerHeadToRiften.Start()
	Int TempRand01 = Utility.RandomInt(7, 30)
	Utility.Wait(TempRand01)
	StopPackage()
EndFunction

;==========END==========
;==========TODO WITH WONDERING RANDOMLY==========

Function WonderRandom()
	Int TempRand01 = Utility.RandomInt(7, 30)
	MovexMarkerRandom()
	BradAIPackagePointerSec.Start()
	Utility.Wait(TempRand01)
	StopPackage()
EndFunction


Function MovexMarkerRandom()
	xMarkerFollow.MoveTo(Game.GetPlayer())
	Float TempRand01 = Utility.RandomInt(-3000, 3000)
	Float TempRand02 = Utility.RandomInt(-3000, 3000)
	Float TempRand03 = Utility.RandomInt(-10, 10)
	xMarkerFollow.MoveTo(Game.GetPlayer(), TempRand01, TempRand02, 0.0, false)
EndFunction

;==========END==========
;==========FLEE FROM FIGHT==========

Function AnyActorFlee()
	BradPackagePointerFlee.Start()
	Int TempRand01 = Utility.RandomInt(0, 30)
	Utility.Wait(TempRand01)
	StopPackage()
	Game.GetPlayer().DrawWeapon()
	Utility.Wait(1.5)
	Game.GetPlayer().SheatheWeapon()
EndFunction

;==========END==========
;==========TODO WITH ATTACKING PEOPLE==========

Function AttackPersonWhenAttacked(Actor akTarget)
	Alias_FillWithAttcker.ForceRefTo(akTarget)
	BradAIPackagePointerAttackActor.Start()
	Int TempRand01 = Utility.RandomInt(20, 30)
	Utility.Wait(TempRand01)
	StopPackage()
EndFunction

;Random Attacking
Function AttackPersonRandom()
	GetActorNear()
	BradAIPackagePointerAttackActor.Start()
	Int TempRand01 = Utility.RandomInt(20, 30)
	Utility.Wait(TempRand01)
	StopPackage()
EndFunction


;Pulls closest actor and stores it to be used
Function GetActorNear()
	Actor TempActor = Game.FindRandomActorFromRef(Game.GetPlayer(), 512)
	While TempActor == Game.GetPlayer()
		TempActor = Game.FindRandomActorFromRef(Game.GetPlayer(), 512)
	EndWhile
	Alias_FillWithAttcker.ForceRefTo(TempActor)
EndFunction

;==========END==========
;==========STOPS PACKAGES==========

Function StopPackage()
	BradEndPackages.SetValueInt(1)
	Utility.Wait(0.4)
EndFunction

;==========END==========