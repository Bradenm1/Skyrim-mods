Scriptname BradsMoveTo extends activemagiceffect  

String Property Axis  Auto 

GlobalVariable Property Amount  Auto 
GlobalVariable Property rotation  Auto  

ObjectReference Property Actor01  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	Actor ActorTemp = Actor01 as Actor
	If Axis == "YP"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, 0, Amount.GetValueInt(), 0)
		ActorTemp.EnableAI(False)
	ElseIf Axis == "ZP"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, 0, 0, Amount.GetValueInt())
		ActorTemp.EnableAI(False)
	ElseIf Axis == "XP"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, Amount.GetValueInt(), 0, 0)
		ActorTemp.EnableAI(False)
	ElseIf Axis == "YN"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, 0, -Amount.GetValueInt(),  0)
		ActorTemp.EnableAI(False)
	ElseIf Axis == "ZN"
		ActorTemp.EnableAI(True)
		ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, 0, 0, -Amount.GetValueInt())
		ActorTemp.EnableAI(False)
	ElseIf Axis == "XN"
		ActorTemp.EnableAI(true)
		ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
		Actor01.MoveTo(Actor01, -Amount.GetValueInt(), 0, 0)
		ActorTemp.EnableAI(false)
	Endif
endEvent