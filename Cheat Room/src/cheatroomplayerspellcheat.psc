Scriptname CheatRoomPlayerSpellCheat extends activemagiceffect  

GlobalVariable Property GlobalVe  Auto 
GlobalVariable Property KillAllInArea  Auto  

Faction Property FirstFac  Auto  
Faction Property SecFac  Auto  
Faction Property ThirdFac  Auto
Faction Property DivorceRemoveFac  Auto  
Faction Property DivorcePlayerFac  Auto  
 
ObjectReference Property DarkRoom  Auto  
ObjectReference Property TeleportToWhiterunXmarker  Auto   

Quest Property DivorceQuest01  Auto  
Quest Property DivorceQuest02  Auto  

FormList Property OutfitRand  Auto  
FormList Property EndMindControl  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
		;Menu 1
	if GlobalVe.GetValue() == 1
		akTarget.SetRelationshipRank(Game.GetPlayer(), 4)
		akTarget.AddToFaction(FirstFac)
		akTarget.AddToFaction(SecFac)
		akTarget.SetAV("confidence", 4.0)
	Elseif GlobalVe.GetValue()== 2
		akTarget.Kill()
	Elseif  GlobalVe.GetValue() == 3
		akTarget.Resurrect()
	Elseif GlobalVe.GetValue() == 4
		akTarget.PushActorAway(akTarget, 50.0)
	Elseif GlobalVe.GetValue() == 5
		akTarget.MoveTo(TeleportToWhiterunXmarker)
	Elseif GlobalVe.GetValue() == 6
		akTarget.OpenInventory(true)

		;Menu 2
	Elseif GlobalVe.GetValue() == 10
		akTarget.PushActorAway(akTarget, 10.0)
	Elseif GlobalVe.GetValue()== 11
		akTarget.PushActorAway(akTarget, 20.0)
	Elseif GlobalVe.GetValue() == 12
		akTarget.PushActorAway(akTarget, 40.0)
	Elseif GlobalVe.GetValue() == 13
		akTarget.PushActorAway(akTarget, 80.0)
	Elseif GlobalVe.GetValue() == 14
		akTarget.PushActorAway(akTarget, 140.0)
	Elseif GlobalVe.GetValue() == 15
		akTarget.PushActorAway(akTarget, 280.0)
	
		;Menu 3
	Elseif GlobalVe.GetValue() == 16
		akTarget.SetRelationshipRank(Game.GetPlayer(), 4)
	Elseif GlobalVe.GetValue()== 17
		akTarget.SetRelationshipRank(Game.GetPlayer(), 3)
	Elseif GlobalVe.GetValue() == 18
		akTarget.SetRelationshipRank(Game.GetPlayer(), 2)
	Elseif GlobalVe.GetValue() == 19
		akTarget.SetRelationshipRank(Game.GetPlayer(), 1)
	Elseif GlobalVe.GetValue() == 20
		akTarget.SetRelationshipRank(Game.GetPlayer(), 0)
	Elseif GlobalVe.GetValue() == 21
		akTarget.SetRelationshipRank(Game.GetPlayer(), -1)
	Elseif GlobalVe.GetValue() == 22
		akTarget.SetRelationshipRank(Game.GetPlayer(), -2)
	Elseif GlobalVe.GetValue() == 23
		akTarget.SetRelationshipRank(Game.GetPlayer(), -3)
	Elseif GlobalVe.GetValue() == 24
		akTarget.SetRelationshipRank(Game.GetPlayer(), -4)

		;Menu 3
	Elseif GlobalVe.GetValue() == 25
		akTarget.SetRelationshipRank(Game.GetPlayer(), 4)
		akTarget.SetAV("confidence", 4.0)
		akTarget.AddToFaction(ThirdFac)
	Elseif GlobalVe.GetValue()== 26
		ActorBase temp = akTarget.GetActorBase()
		temp.SetEssential(false)
		temp.SetInvulnerable(false)
	Elseif GlobalVe.GetValue() == 27
		ActorBase temp = akTarget.GetActorBase()
		temp.SetEssential()
		temp.SetInvulnerable()
	Elseif GlobalVe.GetValue() == 28
		akTarget.MoveTo(DarkRoom)
	Elseif GlobalVe.GetValue() == 29
		akTarget.SetPlayerTeammate()
	Elseif GlobalVe.GetValue() == 30
		akTarget.SetPlayerTeammate(false)
	Elseif GlobalVe.GetValue() == 31
		int temp01 = Utility.RandomInt(0, OutfitRand.GetSize())
		Outfit temp02 = OutfitRand.getAt(temp01) as Outfit
		akTarget.SetOutfit(temp02)

		;Menu 4
	Elseif GlobalVe.GetValue() == 32
		akTarget.UnequipAll()
	Elseif GlobalVe.GetValue() == 33
		akTarget.RemoveFromAllFactions()
	Elseif GlobalVe.GetValue() == 34
		akTarget.MoveToPackageLocation()
	Elseif GlobalVe.GetValue() == 35
		akTarget.Reset()
	Elseif GlobalVe.GetValue() == 36
		akTarget.EnableAI(false)
	Elseif GlobalVe.GetValue() == 37
		akTarget.EnableAI()
	Elseif GlobalVe.GetValue() == 38
		ActorBase temp = akTarget.GetActorBase()
		akTarget.PlaceAtMe(temp)

		;Menu 5
	Elseif GlobalVe.GetValue() == 39
		akTarget.SetScale(-0.1 + akTarget.GetScale())
		Debug.Notification("Height = " +  akTarget.GetScale())
	Elseif GlobalVe.GetValue() == 40
		akTarget.SetScale(1)
		Debug.Notification(akTarget.GetScale())
	Elseif GlobalVe.GetValue() == 41
		akTarget.SetScale(0.100000 + akTarget.GetScale())
		Debug.Notification("Height = " + akTarget.GetScale())
	Elseif GlobalVe.GetValue() == 42
		Game.ForceThirdPerson()
		EndMindControl.Revert()
		EndMindControl.AddForm(akTarget)
		Game.SetCameraTarget(akTarget)
		akTarget.SetPlayerControls(true)
		akTarget.EnableAI(True)
		Game.SetPlayerAIDriven() 
	;Elseif GlobalVe.GetValue() == 43
	;	Actor temp = EndMindControl.GetAt(0) as Actor
	;	Game.SetCameraTarget(Game.GetPlayer())
	;	temp.SetPlayerControls(false)
	;	temp.EnableAI(True)
	;	Game.SetPlayerAIDriven(false) 
	;	EndMindControl.Revert()
	Elseif GlobalVe.GetValue() == 44
		Game.ForceThirdPerson()
		Game.SetCameraTarget(akTarget)
	Elseif GlobalVe.GetValue() == 45
		akTarget.RemoveFromFaction(DivorceRemoveFac)
		Game.GetPlayer().RemoveFromFaction(DivorcePlayerFac)
		DivorceQuest01.Reset()
		DivorceQuest02.Reset()
		DivorceQuest01.SetStage(10)
	endif
EndEvent
