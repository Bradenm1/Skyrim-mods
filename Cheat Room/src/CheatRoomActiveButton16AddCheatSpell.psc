Scriptname CheatRoomActiveButton16AddCheatSpell extends ObjectReference  

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
	Game.GetPlayer().AddSpell(Spell01)
	Game.GetPlayer().AddSpell(Spell02)
	Game.GetPlayer().AddSpell(Spell03)
	Game.GetPlayer().AddSpell(Spell04)
	Game.GetPlayer().AddSpell(Spell05)
	Game.GetPlayer().AddSpell(Spell06)
	Game.GetPlayer().AddSpell(Spell07)
	Game.GetPlayer().AddSpell(Spell08)
	Game.GetPlayer().AddSpell(Spell09)
	Game.GetPlayer().AddSpell(Spell10)
	Game.GetPlayer().AddSpell(Spell11)
	Game.GetPlayer().AddSpell(Spell12)
	Game.GetPlayer().AddSpell(Spell13)
	Game.GetPlayer().AddSpell(Spell14)
	Game.GetPlayer().AddSpell(Spell15)
	Game.GetPlayer().AddSpell(Spell16)
	Game.GetPlayer().AddSpell(Spell17)
	Debug.Notification("Spells Added")
EndEvent