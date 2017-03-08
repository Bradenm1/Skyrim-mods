Scriptname CheatRoomSelfActiveApplySpell extends activemagiceffect  

;=======Constants=======
int MAXRANDRANGE = 256

;=======Properties=======
GlobalVariable Property ActorKillOnHit  Auto  
GlobalVariable Property ActorFlyOnHit  Auto  

;=======CODE START=======
Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
	Actor tempActor = akAggressor as Actor
	If ActorFlyOnHit.GetValueInt() == 1
		Game.GetPlayer().PushActorAway(tempActor, Utility.RandomInt(0, MAXRANDRANGE))
	endIf
	If ActorKillOnHit.GetValueInt() == 1
		tempActor.Kill()
	endif
EndEvent  