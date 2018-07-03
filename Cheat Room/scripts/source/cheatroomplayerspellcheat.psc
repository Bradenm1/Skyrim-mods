Scriptname CheatRoomPlayerSpellCheat extends activemagiceffect  

;=======Constants=======
int DIVORCEQUEST = 10
int LOVERRANK = 4
int ALLYRANK = 3
int CONFIDANTRANK = 2
int FRIENDRANK = 1
int ACCQUAINTANCERANK = 0
int RIVAL = -1
int FOE = -2
int ENEMY = -3
int ARCHNEMESIS =-4
int DEFAULTHEIGHT = 1
float SETSCALEADDON = 0.100000
float SETSCALEREMOVE = -0.1
float FOLLOWERCONFIDENCERANK = 4.0

;=======Properties=======
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

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	;Menu 1
	if GlobalVe.GetValue() == 1
		;Make an actor a follower
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		akTarget.AddToFaction(FirstFac)
		akTarget.AddToFaction(SecFac)
		akTarget.SetAV("confidence", FOLLOWERCONFIDENCERANK)
	Elseif GlobalVe.GetValue()== 2
		;Slient kill actor
		akTarget.Kill()
	Elseif  GlobalVe.GetValue() == 3
		;Resurrect an actor
		akTarget.Resurrect()
	Elseif GlobalVe.GetValue() == 4
		;Push actor
		akTarget.PushActorAway(akTarget, 50.0)
	Elseif GlobalVe.GetValue() == 5
		;Teleport actor to Whiterun
		akTarget.MoveTo(TeleportToWhiterunXmarker)
	Elseif GlobalVe.GetValue() == 6
		;Open actor inventory
		akTarget.OpenInventory(true)

	;Menu 2 - PushActorAway
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
	
	;Menu 3 - Set Relationship ranks on actor
	Elseif GlobalVe.GetValue() == 16
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
	Elseif GlobalVe.GetValue()== 17
		akTarget.SetRelationshipRank(Game.GetPlayer(), ALLYRANK)
	Elseif GlobalVe.GetValue() == 18
		akTarget.SetRelationshipRank(Game.GetPlayer(), CONFIDANTRANK)
	Elseif GlobalVe.GetValue() == 19
		akTarget.SetRelationshipRank(Game.GetPlayer(), FRIENDRANK)
	Elseif GlobalVe.GetValue() == 20
		akTarget.SetRelationshipRank(Game.GetPlayer(), ACCQUAINTANCERANK)
	Elseif GlobalVe.GetValue() == 21
		akTarget.SetRelationshipRank(Game.GetPlayer(), RIVAL)
	Elseif GlobalVe.GetValue() == 22
		akTarget.SetRelationshipRank(Game.GetPlayer(), FOE)
	Elseif GlobalVe.GetValue() == 23
		akTarget.SetRelationshipRank(Game.GetPlayer(), ENEMY)
	Elseif GlobalVe.GetValue() == 24
		akTarget.SetRelationshipRank(Game.GetPlayer(), ARCHNEMESIS)

	;Menu 4
	Elseif GlobalVe.GetValue() == 25
		;Able to marry actor
		akTarget.SetRelationshipRank(Game.GetPlayer(), LOVERRANK)
		akTarget.SetAV("confidence", FOLLOWERCONFIDENCERANK)
		akTarget.AddToFaction(ThirdFac)
	Elseif GlobalVe.GetValue()== 26
		;Set actor killable
		akTarget.GetActorBase().SetEssential(false)
		akTarget.GetActorBase().SetInvulnerable(false)
	Elseif GlobalVe.GetValue() == 27
		;Set actor un-killable
		akTarget.GetActorBase().SetEssential()
		akTarget.GetActorBase().SetInvulnerable()
	Elseif GlobalVe.GetValue() == 28
		;Teleport actor to darkroom
		akTarget.MoveTo(DarkRoom)
	Elseif GlobalVe.GetValue() == 29
		;Set actor as teammate
		akTarget.SetPlayerTeammate()
	Elseif GlobalVe.GetValue() == 30
		;Set actor as not teammate
		akTarget.SetPlayerTeammate(false)
	Elseif GlobalVe.GetValue() == 31
		;Set actor outfit as random
		akTarget.SetOutfit(OutfitRand.getAt(Utility.RandomInt(0, OutfitRand.GetSize())) as Outfit)

	;Menu 5
	Elseif GlobalVe.GetValue() == 32
		;Unequiped all actors items
		akTarget.UnequipAll()
	Elseif GlobalVe.GetValue() == 33
		;Remove actor from all facs
		akTarget.RemoveFromAllFactions()
	Elseif GlobalVe.GetValue() == 34
		;Move actor to default package location
		akTarget.MoveToPackageLocation()
	Elseif GlobalVe.GetValue() == 35
		;Reset actor
		akTarget.Reset()
	Elseif GlobalVe.GetValue() == 36
		;Disable actor AI
		akTarget.EnableAI(false)
	Elseif GlobalVe.GetValue() == 37
		;Enable actor AI
		akTarget.EnableAI()
	Elseif GlobalVe.GetValue() == 38
		ActorBase temp = akTarget.GetActorBase()
		akTarget.PlaceAtMe(akTarget.GetActorBase())

	;Menu 6
	Elseif GlobalVe.GetValue() == 39
		;Make actor smaller
		akTarget.SetScale(SETSCALEREMOVE + akTarget.GetScale())
		Debug.Notification("Height = " +  akTarget.GetScale())
	Elseif GlobalVe.GetValue() == 40
		;Make actor 1 in size
		akTarget.SetScale(DEFAULTHEIGHT)
		Debug.Notification(akTarget.GetScale())
	Elseif GlobalVe.GetValue() == 41
		;Make actor bigger
		akTarget.SetScale(SETSCALEADDON + akTarget.GetScale())
		Debug.Notification("Height = " + akTarget.GetScale())
	Elseif GlobalVe.GetValue() == 42
		;Control another actor
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
		;Set Camera on actor
		Game.ForceThirdPerson()
		Game.SetCameraTarget(akTarget)
	Elseif GlobalVe.GetValue() == 45
		;Divorce actor
		akTarget.RemoveFromFaction(DivorceRemoveFac)
		Game.GetPlayer().RemoveFromFaction(DivorcePlayerFac)
		DivorceQuest01.Reset()
		DivorceQuest02.Reset()
		DivorceQuest01.SetStage(DIVORCEQUEST)
	Elseif GlobalVe.GetValue() == 46
		akTarget.Disable()
	endif
EndEvent
