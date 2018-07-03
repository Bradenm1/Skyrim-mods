Scriptname CheatRoomActiveButtonDoomStone extends ObjectReference  

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

Spell Property pRested Auto
Spell Property pWellRested Auto
Spell Property pMarriageRested Auto


Event OnActivate(ObjectReference akActionRef)
	removeSign()
EndEvent

;Could not be bothered coding a actual system, using a array, rather re-use code.

FUNCTION removeSign()
	IF(game.getPlayer().hasSpell(pDoomApprenticeAbility))
		game.getPlayer().removeSpell(pDoomApprenticeAbility)
		game.getPlayer().removeSpell(pdoomApprenticeNegativeAbility)
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomAtronachAbility))
		game.getPlayer().removeSpell(pDoomAtronachAbility)		
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomLadyAbility))
		game.getPlayer().removeSpell(pDoomLadyAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomLordAbility))
		game.getPlayer().removeSpell(pDoomLordAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomLoverAbility))
		game.getPlayer().removeSpell(pDoomLoverAbility)
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomMageAbility))
		game.getPlayer().removeSpell(pDoomMageAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomRitualAbility))
		game.getPlayer().removeSpell(pDoomRitualAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomSerpentAbility))
		game.getPlayer().removeSpell(pDoomSerpentAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomShadowAbility))
		game.getPlayer().removeSpell(pDoomShadowAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomSteedAbility))
		game.getPlayer().removeSpell(pDoomSteedAbility)	
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomThiefAbility))
		game.getPlayer().removeSpell(pDoomThiefAbility)		
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomTowerAbility))
		game.getPlayer().removeSpell(pDoomTowerAbility)		
	ENDIF
	IF(game.getPlayer().hasSpell(pDoomWarriorAbility))
		game.getPlayer().removeSpell(pDoomWarriorAbility)	
	ENDIF
endFUNCTION
