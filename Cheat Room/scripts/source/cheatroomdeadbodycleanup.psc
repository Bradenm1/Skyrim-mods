Scriptname CheatRoomDeadBodyCleanUp extends ObjectReference

ObjectReference Property WIDeadBodyCleanupCellMarker  Auto  
ObjectReference Property XMarker  Auto  

ActorBase Property XPActor  Auto  

String Property SkillType  Auto  

GlobalVariable Property SpawnOnOff  Auto  

Event OnDeath(Actor akKiller)
	Disable()
	XMarker.PlaceAtMe(XPActor)
	GoToState("Dead")
	Utility.Wait(0.3)
	Moveto(WIDeadBodyCleanupCellMarker)
EndEvent

Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
  	Game.GetPlayer().SetActorValue(SkillType,  0)
EndEvent