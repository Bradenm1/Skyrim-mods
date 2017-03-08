Scriptname CheatRoomOptionsSelf extends activemagiceffect  

;=======Constants=======
int SETSPELLASON = 1
int SETSPELLASOFF = 0

;=======Properties=======
GlobalVariable Property ActorKillOnHit  Auto
GlobalVariable Property ActorFlyOnHit  Auto  
GlobalVariable Property PlayerIsGod  Auto  

Message Property MainMenu  Auto    
Message Property Menu01  Auto

SPELL Property ActiveSpell  Auto  

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
			if iButton01 == 0
				Menu01()
			Elseif iButton01 == 1
				;DisableEffects
				Game.GetPlayer().RemoveSpell(ActiveSpell)
				ActorKillOnHit.SetValueInt(SETSPELLASOFF)
				ActorFlyOnHit.SetValueInt(SETSPELLASOFF)
			endif
		endif
	endwhile
EndFunction

;First Menu
Function Menu01()
	int iButton02 = Menu01.Show()
	if iButton02 == 0
		ActorKillOnHit.SetValueInt(SETSPELLASON)
		Game.GetPlayer().AddSpell(ActiveSpell)
	Elseif iButton02 == 1
		ActorFlyOnHit.SetValueInt(SETSPELLASON)
		Game.GetPlayer().AddSpell(ActiveSpell)
	Elseif iButton02 == 2
		Debug.ToggleCollisions()
	Elseif iButton02 == 3
		;Enable/Disable God-Mode
		if PlayerIsGod.GetValueInt() == 0
			Debug.SetGodMode(true)
			PlayerIsGod.SetValueInt(SETSPELLASON)
			Debug.MessageBox("God-Mode Enabled")
		else
			Debug.SetGodMode(false)
			PlayerIsGod.SetValueInt(SETSPELLASOFF)
			Debug.MessageBox("God-Mode Disabled")
		endif
	endif
EndFunction