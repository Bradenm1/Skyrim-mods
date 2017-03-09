Scriptname BradsMoveTo extends activemagiceffect  

;=======Constants=======
float DEFAULTANGLE = 0.0
int DEFAULTX = 0
int DEFAULTZ = 0
int DEFAULTY = 0

;=======Properties=======
String Property Axis  Auto 

GlobalVariable Property Amount  Auto 
GlobalVariable Property rotation  Auto  

ObjectReference Property Actor01  Auto  

;=======CODE START=======
;Y = Y Axis, etc..
;P = Postive. N = Negative
Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor ActorTemp = Actor01 as Actor
	If Axis == "YP"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, Amount.GetValueInt(), DEFAULTZ)
		ActorTemp.EnableAI(False)
	ElseIf Axis == "ZP"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, DEFAULTY, Amount.GetValueInt())
		ActorTemp.EnableAI(False)
	ElseIf Axis == "XP"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, Amount.GetValueInt(), DEFAULTY, DEFAULTZ)
		ActorTemp.EnableAI(False)
	ElseIf Axis == "YN"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, -Amount.GetValueInt(),  DEFAULTZ)
		ActorTemp.EnableAI(False)
	ElseIf Axis == "ZN"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, 0, -Amount.GetValueInt())
		ActorTemp.EnableAI(False)
	ElseIf Axis == "XN"
		ActorTemp.EnableAI(true)
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, -Amount.GetValueInt(), DEFAULTY, DEFAULTZ)
		ActorTemp.EnableAI(false)
	Endif
endEvent