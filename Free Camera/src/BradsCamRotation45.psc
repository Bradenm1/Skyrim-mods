Scriptname BradsCamRotation45 extends activemagiceffect  

ObjectReference Property Actor01  Auto  

GlobalVariable Property rotation  Auto  

Float Property rotationAmount  Auto  


Event OnEffectStart(Actor akTarget, Actor akCaster)
	If rotation.GetValueInt() >= 360
		rotation.SetValueInt(0)
	else
		;Nothing
	Endif
	Float Temp = rotation.GetValue() + rotationAmount
	rotation.SetValue(Temp)
	Actor ActorTemp = Actor01 as Actor
	ActorTemp.EnableAI(True)
	ActorTemp.SetAngle(0.0, 0.0, rotation.GetValueInt())
	ActorTemp.EnableAI(False)
endEvent