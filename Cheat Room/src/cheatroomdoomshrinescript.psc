Scriptname CheatRoomDoomShrineScript extends ObjectReference  

import game
import utility

String property graphVariable auto

; //which stone are we
BOOL PROPERTY bApprentice AUTO
BOOL PROPERTY bAtronach AUTO
BOOL PROPERTY bLady AUTO
BOOL PROPERTY bLord AUTO
BOOL PROPERTY bLover AUTO
BOOL PROPERTY bMage AUTO
BOOL PROPERTY bRitual AUTO
BOOL PROPERTY bSerpent AUTO
BOOL PROPERTY bShadow AUTO
BOOL PROPERTY bSteed AUTO
BOOL PROPERTY bThief AUTO
BOOL PROPERTY bTower AUTO
BOOL PROPERTY bWarrior AUTO

; //list of the effects
SPELL PROPERTY pDoomApprenticeAbility AUTO
SPELL PROPERTY pdoomApprenticeNegativeAbility AUTO
SPELL PROPERTY pDoomAtronachAbility AUTO
SPELL PROPERTY pDoomLadyAbility AUTO
SPELL PROPERTY pDoomLordAbility AUTO
SPELL PROPERTY pDoomLoverAbility AUTO
SPELL PROPERTY pDoomMageAbility AUTO
SPELL PROPERTY pDoomRitualAbility AUTO
SPELL PROPERTY pDoomSerpentAbility AUTO
SPELL PROPERTY pDoomShadowAbility AUTO
SPELL PROPERTY pDoomSteedAbility AUTO
SPELL PROPERTY pDoomThiefAbility AUTO
SPELL PROPERTY pDoomTowerAbility AUTO
SPELL PROPERTY pDoomWarriorAbility AUTO

; //list of the messages
MESSAGE PROPERTY pDoomApprenticeMSG AUTO
MESSAGE PROPERTY pDoomAtronachMSG AUTO
MESSAGE PROPERTY pDoomLadyMSG AUTO
MESSAGE PROPERTY pDoomLordMSG AUTO
MESSAGE PROPERTY pDoomLoverMSG AUTO
MESSAGE PROPERTY pDoomMageMSG AUTO
MESSAGE PROPERTY pDoomRitualMSG AUTO
MESSAGE PROPERTY pDoomSerpentMSG AUTO
MESSAGE PROPERTY pDoomShadowMSG AUTO
MESSAGE PROPERTY pDoomSteedMSG AUTO
MESSAGE PROPERTY pDoomThiefMSG AUTO
MESSAGE PROPERTY pDoomTowerMSG AUTO
MESSAGE PROPERTY pDoomWarriorMSG AUTO

; //list of Rested spells -- need to remove just for the Lover
Spell Property pRested Auto
Spell Property pWellRested Auto
Spell Property pMarriageRested Auto

; //the perk for Ritual
PERK PROPERTY pDoomRitualPerk AUTO

; //the already have message
MESSAGE PROPERTY pDoomAlreadyHaveMSG AUTO

;************************************

BOOL DOONCE=TRUE

Auto State base
	
	EVENT onACTIVATE(OBJECTREFERENCE obj)
		
		; //check to see if the player is the activator and we havent already activated
		IF(doOnce && obj AS ACTOR == game.getPlayer())
			
			doOnce = FALSE
			
			; //if we already have the power and this is the stone then kick the player out
			IF(bApprentice && game.getPlayer().hasSpell(pDoomApprenticeAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)
				doOnce = TRUE
			ELSEIF(bAtronach && game.getPlayer().hasSpell(pDoomAtronachAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)
				doOnce = TRUE
			ELSEIF(bLady && game.getPlayer().hasSpell(pDoomLadyAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)
				doOnce = TRUE
			ELSEIF(bLord && game.getPlayer().hasSpell(pDoomLordAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bLover && game.getPlayer().hasSpell(pDoomLoverAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bMage && game.getPlayer().hasSpell(pDoomMageAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bRitual && game.getPlayer().hasSpell(pDoomRitualAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bSerpent && game.getPlayer().hasSpell(pDoomSerpentAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bShadow && game.getPlayer().hasSpell(pDoomShadowAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bSteed && game.getPlayer().hasSpell(pDoomSteedAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bThief && game.getPlayer().hasSpell(pDoomThiefAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bTower && game.getPlayer().hasSpell(pDoomTowerAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSEIF(bWarrior && game.getPlayer().hasSpell(pDoomWarriorAbility))
				pDoomAlreadyHaveMSG.show()
				utility.wait(2)				
				doOnce = TRUE
			ELSE
					
				; // present them with the choice
				IF(showSign() == 0)
					;removeSign()
					addSign()
					
					SELF.playAnimation("playanim01")
					
					utility.wait(15)
					
					doOnce = TRUE
				ELSE
					utility.wait(2)
					doOnce = TRUE
				ENDIF
			
			ENDIF
			
		ENDIF
	endEVENT
	
endState


int FUNCTION showSign()
	
	int signHolder
	
	IF(bApprentice)
		signHolder = pDoomApprenticeMSG.show()
	ELSEIF(bAtronach)
		signHolder = pDoomAtronachMSG.show()
	ELSEIF(bLady)
		signHolder = pDoomLadyMSG.show()
	ELSEIF(bLord)
		signHolder = pDoomLordMSG.show()
	ELSeIF(bLover)
		signHolder = pDoomLoverMSG.show()
	ELSEIF(bMage)
		signHolder = pDoomMageMSG.show()
	ELSEIF(bRitual)
		signHolder = pDoomRitualMSG.show()
	ELSEIF(bSerpent)
		signHolder = pDoomSerpentMSG.show()
	ELSEIF(bShadow)
		signHolder = pDoomShadowMSG.show()
	ELSEIF(bSteed)
		signHolder = pDoomSteedMSG.show()
	ELSEIF(bThief)
		signHolder = pDoomThiefMSG.show()
	ELSEIF(bTower)
		signHolder = pDoomTowerMSG.show()
	ELSEIF(bWarrior)
		signHolder = pDoomWarriorMSG.show()
	ENDIF
	
	RETURN signHolder
		
endFUNCTION

; //FUNCTION: addSign
; //
; // adds the sign of the stone to the player
FUNCTION addSign()
	game.AddAchievement(29)
	IF(bApprentice)
		game.getPlayer().addSpell(pDoomApprenticeAbility)
		game.getPlayer().addSpell(pdoomApprenticeNegativeAbility)
	ELSEIF(bAtronach)
		game.getPlayer().addSpell(pDoomAtronachAbility)
	ELSEIF(bLady)
		game.getPlayer().addSpell(pDoomLadyAbility)
	ELSEIF(bLord)
		game.getPlayer().addSpell(pDoomLordAbility)
	ELSeIF(bLover)
		game.getPlayer().removeSpell(pRested)
		game.getPlayer().removeSpell(pWellRested)
		game.getPlayer().removeSpell(pMarriageRested)
		game.getPlayer().addSpell(pDoomLoverAbility)
	ELSEIF(bMage)
		game.getPlayer().addSpell(pDoomMageAbility)
	ELSEIF(bRitual)
		game.getPlayer().addSpell(pDoomRitualAbility)
		game.getPlayer().addPerk(pdoomRitualPerk)
	ELSEIF(bSerpent)
		game.getPlayer().addSpell(pDoomSerpentAbility)
	ELSEIF(bShadow)
		game.getPlayer().addSpell(pDoomShadowAbility)
	ELSEIF(bSteed)
		game.getPlayer().addSpell(pDoomSteedAbility)
	ELSEIF(bThief)
		game.getPlayer().addSpell(pDoomThiefAbility)
	ELSEIF(bTower)
		game.getPlayer().addSpell(pDoomTowerAbility)
	ELSEIF(bWarrior)
		game.getPlayer().addSpell(pDoomWarriorAbility)
	ENDIF

	endFUNCTION

;************************************

State waiting
	;do nothing
endState

;************************************

