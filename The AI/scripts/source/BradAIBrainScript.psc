Scriptname BradAIBrainScript extends activemagiceffect  
{Brain of the AI, don't recommend editing unless you know what you are doing}

;========Constants========
int MINTIMETOWAIT = 10
int MAXTIMETOWAIT = 20
int ROAMDISTANCE = 3000
int GETACTORNEARDISTANCE = 512

;========Properties========
Quest Property BradAIPackagePointer  Auto  

Scene Property BradAIPackagePointerSec  Auto  
Scene Property BradPackagePointerFlee  Auto  
Scene Property BradAIPackagePointerHeadToRiften  Auto  
Scene Property BradAIPackagePointerAttackActor  Auto  
Scene Property BradAIPackagePointerHeadToSol  Auto  
Scene Property BradAIPackagePointerAcquireItem  Auto  

FormList Property BradAIGetAttacker  Auto  
FormList Property BradAIDetectDoorsAll  Auto  
FormList Property AllPackages  Auto  
FormList Property BradAIAllItems  Auto 

GlobalVariable Property BradAICurrentTown  Auto  

ObjectReference Property xMarkerFollow  Auto  

ReferenceAlias Property Alias_FillWithAttcker  Auto  
ReferenceAlias Property Alias_FillWithItem  Auto  

GlobalVariable Property BradEndPackages  Auto  

Actor Property BradTheifAI  Auto  

;========Fields========
Actor ActorForEffect

;========Events========
Event OnEffectStart(Actor akTarget, Actor akCaster)
	ActorForEffect = akCaster
	OnRun()
EndEvent

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	StopPackage()
	Debug.Notification("Your dead mate..")
	AttackPersonRandom()
EndEvent

Event OnPackageEnd(Package akOldPackage)
	Debug.Notification("PackageEnd")
	StopPackage()
EndEvent

;/
========Anything Required should in OnRun()========
/;

;========Functions========
Function OnRun()
	Debug.Notification("Hello!")
	EnableAIBrain()
EndFunction

Function EnableAIBrain()
	While True
		BradEndPackages.SetValueInt(0)
		Int tempRand01 = Utility.RandomInt(0,4)
		;Int tempRand01 = 0
		If tempRand01 == 0
			Debug.Notification("I want to steal an item")
			GetItem()
		ElseIf tempRand01 == 1
			;Debug.Notification("I want to go to a town")
			;HeadToTown()
		ElseIf tempRand01 == 2
			;Debug.Notification("Run!")
			;AnyActorFlee()
		ElseIf tempRand01 == 3
			Debug.Notification("I think i'll go for a wonder...")
			WonderRandom()
		ElseIf tempRand01 == 4
			Debug.Notification("Your dead mate..")
			AttackPersonRandom()
		EndIf
	EndWhile
EndFunction

;==========PICKUPRANDOMITEM==========

Function GetItem()
	;ObjectReference closestItem = Game.FindClosestReferenceOfAnyTypeInListFromRef(BradAIAllItems, BradTheifAI, GETACTORNEARDISTANCE)
	;closestItem.Lock(false, true)
	;Alias_FillWithItem.ForceRefTo(closestItem)
	BradAIPackagePointerAcquireItem.Start()
	Utility.Wait(1)
	While (BradAIPackagePointerAcquireItem.IsPlaying() == true)
		Utility.Wait(1)
	EndWhile
	;Utility.Wait(Utility.RandomInt(20, 30))
	StopPackage()
EndFunction

;==========GOTORANDOMTOWN==========

Function HeadToTown()
	If (Utility.RandomInt(0, 1) == 0)
		BradAIPackagePointerHeadToRiften.Start()
	Else
		BradAIPackagePointerHeadToSol.Start()
	EndIf
	Utility.Wait(Utility.RandomInt(MINTIMETOWAIT, MAXTIMETOWAIT))
	StopPackage()
EndFunction

;==========TODO WITH WONDERING RANDOMLY==========

Function WonderRandom()
	MovexMarkerRandom()
	BradAIPackagePointerSec.Start()
	Utility.Wait(Utility.RandomInt(MINTIMETOWAIT, MAXTIMETOWAIT))
	StopPackage()
EndFunction

Function MovexMarkerRandom()
	xMarkerFollow.MoveTo(BradTheifAI)
	;xMarkerFollow.MoveTo(Game.GetPlayer(), Utility.RandomInt(-ROAMDISTANCE, ROAMDISTANCE), Utility.RandomInt(-ROAMDISTANCE, ROAMDISTANCE), 0.0, false)
	xMarkerFollow.MoveTo(BradTheifAI, Utility.RandomInt(-ROAMDISTANCE, ROAMDISTANCE), Utility.RandomInt(-ROAMDISTANCE, ROAMDISTANCE), 0.0, false)
EndFunction

;==========FLEE FROM FIGHT==========

Function AnyActorFlee()
	BradPackagePointerFlee.Start()
	Utility.Wait(Utility.RandomInt(0, 30))
	StopPackage()
EndFunction

;==========TODO WITH ATTACKING PEOPLE==========

Function AttackPersonWhenAttacked(Actor akTarget)
	Alias_FillWithAttcker.ForceRefTo(akTarget)
	BradAIPackagePointerAttackActor.Start()
	Utility.Wait(Utility.RandomInt(20, 30))
	StopPackage()
EndFunction

;Random Attacking
Function AttackPersonRandom()
	GetActorNear()
	BradAIPackagePointerAttackActor.Start()
	Utility.Wait(Utility.RandomInt(20, 30))
	StopPackage()
EndFunction

;Pulls closest actor and stores it to be used
Function GetActorNear()
	Actor tempActor = Game.FindRandomActorFromRef(BradTheifAI, GETACTORNEARDISTANCE)
	While ((tempActor == BradTheifAI) || (tempActor.IsDead() == True))
		tempActor = Game.FindRandomActorFromRef(BradTheifAI, GETACTORNEARDISTANCE)
	EndWhile
	Alias_FillWithAttcker.ForceRefTo(tempActor)
EndFunction

;==========STOPS PACKAGES==========

Function StopPackage()
	;Debug.Notification("Package Ended")
	BradEndPackages.SetValueInt(1)
	Utility.Wait(1)
EndFunction 
