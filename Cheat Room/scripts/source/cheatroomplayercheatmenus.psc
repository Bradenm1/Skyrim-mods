Scriptname CheatRoomPlayerCheatMenus extends activemagiceffect  

;=======Constants=======
int RANDRANGE10 = 10
int RANDRANGE256 = 256
float SINGLEWAIT = 1.5

;=======Properties=======
GlobalVariable Property GlobalVe  Auto
GlobalVariable Property KillAllArea  Auto 
GlobalVariable Property EnableDisableAI  Auto   
GlobalVariable Property PushAwayArea  Auto  

Message Property MainMenu  Auto
Message Property MainMenu02  Auto      
Message Property Menu01  Auto
Message Property Menu02  Auto
Message Property Menu03  Auto  
Message Property Menu04  Auto  
Message Property Menu05  Auto  
Message Property Menu06  Auto  
Message Property Menu07  Auto  
Message Property Menu08  Auto  
Message Property Menu09  Auto  

Int Property RangeOfConstant  Auto  

FormList Property MindControl  Auto  
FormList Property RandActors  Auto  
FormList Property DoorContainerList  Auto  

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	CheatMenu()
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent

;Main Menu
Function CheatMenu(bool Menu = True, int iButton01 = 0)
	While Menu
		if iButton01 != -1
			iButton01 = MainMenu.Show()
			Menu = False
			if iButton01 == 0;
				Menu01()
			Elseif iButton01 ==1
				Menu02()
			Elseif iButton01 ==2
				Menu03()
			Elseif iButton01 ==3
				Menu04Marry()
			Elseif iButton01 ==4
				Menu05()
			Elseif iButton01 ==5
				Menu06()
			Elseif iButton01 ==6
				Menu07()
			Elseif iButton01 ==7
				MainMenu02()
			endif
		endif
	endwhile
EndFunction

;Second MainMenu
Function MainMenu02()
	int iButton02 = MainMenu02.Show()
	if iButton02 == 0;
		CheatMenu()
	Elseif iButton02 == 1;
		Menu08()
	Elseif iButton02 ==2
		Menu09()
	endif
EndFunction

;First Menu
Function Menu01()
	int iButton02 = Menu01.Show()
	if iButton02 == 0;
		;Follower 1
		GlobalVe.SetValue(1)
	Elseif iButton02 ==1
		;Silent Kill
		GlobalVe.SetValue(2)
	Elseif iButton02 ==2
		;Resurrect
		GlobalVe.SetValue(3)
	Elseif iButton02 ==3
		;PushActorAway
		GlobalVe.SetValue(4)
	Elseif iButton02 ==4
		;TeleportToWhiterun
		GlobalVe.SetValue(5)
	Elseif iButton02 ==5
		;NPCInventory
		GlobalVe.SetValue(6)
	endif
EndFunction

;Second Menu
Function Menu02()
	int iButton02 = Menu02.Show()
	if iButton02 == 0;
		;PushActorAway
		GlobalVe.SetValue(10)
	Elseif iButton02 ==1
		;PushActorAway
		GlobalVe.SetValue(11)
	Elseif iButton02 ==2
		;PushActorAway
		GlobalVe.SetValue(12)
	Elseif iButton02 ==3
		;PushActorAway
		GlobalVe.SetValue(13)
	Elseif iButton02 ==4
		;PushActorAway
		GlobalVe.SetValue(14)
	Elseif iButton02 ==5
		;PushActorAway
		GlobalVe.SetValue(15)
	endif
EndFunction

;Third Menu
Function Menu03()
	int iButton03 = Menu03.Show()
	if iButton03 == 0;
		GlobalVe.SetValue(16)
	Elseif iButton03 ==1
		GlobalVe.SetValue(17)
	Elseif iButton03 ==2
		GlobalVe.SetValue(18)
	Elseif iButton03 ==3
		GlobalVe.SetValue(19)
	Elseif iButton03 ==4
		GlobalVe.SetValue(20)
	Elseif iButton03 ==5
		GlobalVe.SetValue(21)
	Elseif iButton03 ==6
		GlobalVe.SetValue(22)
	Elseif iButton03 ==7
		GlobalVe.SetValue(23)
	Elseif iButton03 ==8
		GlobalVe.SetValue(24)
	endif
EndFunction

;Fourth Menu
Function Menu04Marry()
	int iButton04 = Menu04.Show()
	if iButton04 == 0;
		GlobalVe.SetValue(25)
	Elseif iButton04 ==1
		GlobalVe.SetValue(26)
	Elseif iButton04 ==2
		GlobalVe.SetValue(27)
	Elseif iButton04 ==3
		GlobalVe.SetValue(28)
	Elseif iButton04 ==4
		GlobalVe.SetValue(29)
	Elseif iButton04 ==5
		GlobalVe.SetValue(30)
	Elseif iButton04 ==6
		GlobalVe.SetValue(31)
	endif
EndFunction

;Fifth Menu
Function Menu05()
	int iButton05 = Menu05.Show()
	if iButton05 == 0;
		GlobalVe.SetValue(32)
	Elseif iButton05 == 1;
		GlobalVe.SetValue(33)
	Elseif iButton05 == 2;
		GlobalVe.SetValue(34)
	Elseif iButton05 == 3;
		GlobalVe.SetValue(35)
	Elseif iButton05 == 4;
		GlobalVe.SetValue(36)
	Elseif iButton05 == 5;
		GlobalVe.SetValue(37)
	Elseif iButton05 == 6;
		GlobalVe.SetValue(38)
	endif
EndFunction

Function Menu07()
	int iButton05 = Menu07.Show()
	if iButton05 == 0;
		GlobalVe.SetValue(39)
	Elseif iButton05 == 1;
		GlobalVe.SetValue(40)
	Elseif iButton05 == 2;
		GlobalVe.SetValue(41)
	endif
EndFunction

Function Menu08()
	int iButton05 = Menu08.Show()
	if iButton05 == 0;
		GlobalVe.SetValue(42)
	Elseif iButton05 == 1;
		Game.ForceThirdPerson()
		Actor temp = MindControl.GetAt(0) as Actor
		Game.SetCameraTarget(Game.GetPlayer())
		temp.SetPlayerControls(false)
		temp.EnableAI(True)
		Game.SetPlayerAIDriven(false) 
		MindControl.Revert()
	Elseif iButton05 == 2;
		GlobalVe.SetValue(44)
	Elseif iButton05 == 3;
		Game.ForceThirdPerson()
		Game.SetCameraTarget(Game.GetPlayer())
	Elseif iButton05 == 4
		Game.SetPlayerAIDriven(false) 
	Elseif iButton05 == 5
		Game.SetPlayerAIDriven(True) 
	Elseif iButton05 == 6
		GlobalVe.SetValue(45)
	endif
EndFunction

Function Menu09()
	int iButton05 = Menu09.Show()
	if iButton05 == 0;
		GlobalVe.SetValue(46)
	Elseif iButton05 == 1
		ObjectReference closestDoorContainer = Game.FindClosestReferenceOfAnyTypeInListFromRef(DoorContainerList, Game.GetPlayer(), RangeOfConstant)
		closestDoorContainer.Lock(false, true)
	Elseif iButton05 == 2
		ObjectReference closestDoorContainer = Game.FindClosestReferenceOfAnyTypeInListFromRef(DoorContainerList, Game.GetPlayer(), RangeOfConstant)
		closestDoorContainer.Lock(true, true)
	endif
EndFunction

;Constant cheats
Function Menu06()
	int iButton06 = Menu06.Show()
	if iButton06 == 0;
		KillAllArea.SetValue(0)
		While (KillAllArea.GetValue() == 0)
			Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			bool randomIsDead = randomActor.IsDead()
			if (randomActor != Game.GetPlayer())
				randomActor.KillEssential()
				randomActor.Kill()
			Elseif (randomIsDead == True)
				randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
				randomIsDead = randomActor.IsDead()
			endif
		endWhile
	Elseif iButton06 == 1
		KillAllArea.SetValue(0)
		While (KillAllArea.GetValue() == 0)
				Utility.Wait(SINGLEWAIT)
				ActorBase temp
				Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
				int random = Utility.Randomint(0, RandActors.GetSize())
				temp = RandActors.GetAt(Utility.Randomint(0, RandActors.GetSize())) as ActorBase
				if (randomActor.IsDead() == True)
					randomActor.Disable()
				Elseif (randomActor != Game.GetPlayer())
					temp.SetEssential(false)
					temp.SetProtected(false)
					temp.SetInvulnerable(false)
				endif
				if (randomActor != Game.GetPlayer())
					temp = RandActors.GetAt(random) as ActorBase
					randomActor.PlaceAtMe(temp)
				Else
					randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
					random = Utility.RandomInt(0, RANDRANGE256)
				endif	
			endWhile
	Elseif iButton06 == 2;
		EnableDisableAI.SetValue(0)
		While (EnableDisableAI.GetValue() == 0)
			Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			if (randomActor != Game.GetPlayer())
				randomActor.EnableAI(false)
			Else
				randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			endif		
		endWhile	
	Elseif iButton06 == 3;
		EnableDisableAI.SetValue(1)
		While (EnableDisableAI.GetValue() == 1)
			Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			if (randomActor != Game.GetPlayer())
				randomActor.EnableAI()
			Else
				randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			endif		
		endWhile
	Elseif iButton06 == 4;
		PushAwayArea.SetValue(0)
		While (PushAwayArea.GetValue() == 0)
			Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			int random = Utility.RandomInt(0, RANDRANGE256)
			if (randomActor != Game.GetPlayer())
				randomActor.PushActorAway(randomActor, random)
			Else
				randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
				random = Utility.RandomInt(0, RANDRANGE256)
			endif		
		endWhile
	Elseif iButton06 == 5
		Game.EnablePlayerControls(False, False, False, False, False, True)
	Elseif iButton06 == 6;
		KillAllArea.SetValue(0)
		While (KillAllArea.GetValue() == 0)
			Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			Float random = Utility.RandomFloat(0, RANDRANGE10)
			if (randomActor != Game.GetPlayer())
				randomActor.SetScale(random)
			Else
				randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
				random = Utility.RandomInt(0, RANDRANGE256)
			endif		
		endWhile
	Elseif iButton06 == 7;
		KillAllArea.SetValue(0)
		While (KillAllArea.GetValue() == 0)
			Actor randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			Actor randomActortemp = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
			Float random = Utility.RandomFloat(0, RANDRANGE10)
			if ((randomActor != Game.GetPlayer()) && (randomActortemp != Game.GetPlayer()))
				ActorBase temp01 = randomActor.GetActorBase()
				ActorBase temp02 = randomActortemp.GetActorBase()
				temp01.SetEssential(false)
				temp01.SetProtected(false)
				temp01.SetInvulnerable(false)
				temp02.SetEssential(false)
				temp02.SetProtected(false)
				temp02.SetInvulnerable(false)
				randomActor.StartCombat(randomActortemp)
			Else
				randomActor = Game.FindRandomActorFromRef(Game.GetPlayer(), RangeOfConstant)
				random = Utility.RandomInt(0, RANDRANGE256)
			endif		
		endWhile
	Elseif iButton06 == 8;
		EnableDisableAI.SetValue(2)
		KillAllArea.SetValue(1)
		PushAwayArea.SetValue(1)
	endif
EndFunction
