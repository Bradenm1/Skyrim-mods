Scriptname BradAISecondBrainScript extends activemagiceffect  

FormList Property BradAIGetAttacker  Auto  
FormList Property BradAIAllPackages  Auto  

;Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
;	BradAIBrainScript.AttackPersonWhenAttacked(akAggressor as Actor)
;EndEvent



;Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
;	BradAIGetAttacker.Revert()
;	BradEndPackages.SetValue(1)
;	Actor TempActor = Game.FindRandomActorFromRef(Game.GetPlayer(), 256)
;	While TempActor == Game.GetPlayer()
;		TempActor = Game.FindRandomActorFromRef(Game.GetPlayer(), 256)
;	EndWhile
;	BradAIGetAttacker.AddForm(TempActor)
;	;BradAIPackagePointer.SetStage(15)
;	Debug.MessageBox("Attackedsss")
;EndEvent
GlobalVariable Property BradEndPackages  Auto  

Quest Property BradAIPackagePointer  Auto  
