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
	ActorTemp.EnableAI(True)
	If Axis == "YP"
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, Amount.GetValueInt(), DEFAULTZ)
	ElseIf Axis == "ZP"
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, DEFAULTY, Amount.GetValueInt())
	ElseIf Axis == "XP"
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, Amount.GetValueInt(), DEFAULTY, DEFAULTZ)
	ElseIf Axis == "YN"
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, -Amount.GetValueInt(),  DEFAULTZ)
	ElseIf Axis == "ZN"
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, DEFAULTX, 0, -Amount.GetValueInt())
	ElseIf Axis == "XN"
		ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, -Amount.GetValueInt(), DEFAULTY, DEFAULTZ)
	Endif
	ActorTemp.EnableAI(false)
endEvent