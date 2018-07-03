Scriptname CheatRoomActiveButton16 extends ObjectReference  

SPELL Property Spell01  Auto  
SPELL Property Spell02  Auto  
SPELL Property Spell03  Auto  
SPELL Property Spell04  Auto  
SPELL Property Spell05  Auto  
SPELL Property Spell06  Auto  
SPELL Property Spell07  Auto  
SPELL Property Spell08  Auto  
SPELL Property Spell09  Auto  
SPELL Property Spell10  Auto  
SPELL Property Spell11  Auto  
SPELL Property Spell12  Auto  
SPELL Property Spell13  Auto  
SPELL Property Spell14  Auto  
SPELL Property Spell15  Auto
SPELL Property Spell16  Auto  
SPELL Property Spell17  Auto    

Event OnActivate(ObjectReference akActionRef)
	if (Game.GetPlayer().RemoveSpell(Spell01))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell02))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell03))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell04))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell05))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell06))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell07))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell08))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell09))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell10))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell11))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell12))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell13))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell14))
		Debug.Trace("Spell Removed")
	endIf
	if (Game.GetPlayer().RemoveSpell(Spell15))
		Debug.Trace("Spell Removed")
	endif
	if (Game.GetPlayer().RemoveSpell(Spell16))
		Debug.Trace("Spell Removed")
	endif
	if (Game.GetPlayer().RemoveSpell(Spell17))
		Debug.Trace("Spell Removed")
	endif
EndEvent