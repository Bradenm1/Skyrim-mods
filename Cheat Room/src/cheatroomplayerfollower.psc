Scriptname CheatRoomPlayerFollower extends activemagiceffect  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.SetRelationshipRank(Game.GetPlayer(), 4)
	akTarget.AddToFaction(FirstFac)
	akTarget.AddToFaction(SecFac)
	akTarget.SetAV("confidence", 4.0)
	Debug.Notification(akTarget+"  is now a follower!")
endEVENT
Faction Property FirstFac  Auto  

Faction Property SecFac  Auto  
