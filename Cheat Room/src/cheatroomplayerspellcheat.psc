Scriptname CheatRoomPlayerSpellCheat extends activemagiceffect  

GlobalVariable Property GlobalVe  Auto 
Faction Property FirstFac  Auto  
Faction Property SecFac  Auto  
ObjectReference Property TeleportToWhiterunXmarker  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	;Menu 1
	if GlobalVe.GetValue() == 1
		akTarget.SetRelationshipRank(Game.GetPlayer(), 4)
		akTarget.AddToFaction(FirstFac)
		akTarget.AddToFaction(SecFac)
		akTarget.SetAV("confidence", 4.0)
	endIf
	if GlobalVe.GetValue()== 2
		akTarget.Kill()
	endIf
	if GlobalVe.GetValue() == 3
		akTarget.Resurrect()
	endIf
	if GlobalVe.GetValue() == 4
		akTarget.PushActorAway(akTarget, 50.0)
	endIf
	if GlobalVe.GetValue() == 5
		akTarget.MoveTo(TeleportToWhiterunXmarker)
	endIf
	if GlobalVe.GetValue() == 6
		akTarget.OpenInventory(true)
	endIf

	;Menu 2
	if GlobalVe.GetValue() == 10
		akTarget.PushActorAway(akTarget, 10.0)
	endIf
	if GlobalVe.GetValue()== 11
		akTarget.PushActorAway(akTarget, 20.0)
	endIf
	if GlobalVe.GetValue() == 12
		akTarget.PushActorAway(akTarget, 40.0)
	endIf
	if GlobalVe.GetValue() == 13
		akTarget.PushActorAway(akTarget, 80.0)
	endIf
	if GlobalVe.GetValue() == 14
		akTarget.PushActorAway(akTarget, 140.0)
	endIf
	if GlobalVe.GetValue() == 15
		akTarget.PushActorAway(akTarget, 280.0)
	endIf
	
	;Menu 3
	if GlobalVe.GetValue() == 16
		akTarget.SetRelationshipRank(Game.GetPlayer(), 4)
	endIf
	if GlobalVe.GetValue()== 17
		akTarget.SetRelationshipRank(Game.GetPlayer(), 3)
	endIf
	if GlobalVe.GetValue() == 18
		akTarget.SetRelationshipRank(Game.GetPlayer(), 2)
	endIf
	if GlobalVe.GetValue() == 19
		akTarget.SetRelationshipRank(Game.GetPlayer(), 1)
	endIf
	if GlobalVe.GetValue() == 20
		akTarget.SetRelationshipRank(Game.GetPlayer(), 0)
	endIf
	if GlobalVe.GetValue() == 21
		akTarget.SetRelationshipRank(Game.GetPlayer(), -1)
	endIf
	if GlobalVe.GetValue() == 22
		akTarget.SetRelationshipRank(Game.GetPlayer(), -2)
	endIf
	if GlobalVe.GetValue() == 22
		akTarget.SetRelationshipRank(Game.GetPlayer(), -3)
	endIf
	if GlobalVe.GetValue() == 23
		akTarget.SetRelationshipRank(Game.GetPlayer(), -4)
	endIf
EndEvent