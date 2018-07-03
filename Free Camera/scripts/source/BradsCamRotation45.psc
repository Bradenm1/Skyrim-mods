Scriptname BradsCamRotation45 extends activemagiceffect  

;=======Constants=======
float DEFAULTANGLE = 0.0
int MAXANGLE = 360

;=======Properties=======
ObjectReference Property Actor01  Auto  

GlobalVariable Property rotation  Auto  

Float Property rotationAmount  Auto  

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	If rotation.GetValueInt() >= MAXANGLE
		rotation.SetValueInt(0)
	else
		;Nothing
	Endif
	rotation.SetValue(rotation.GetValue() + rotationAmount)
	Actor ActorTemp = Actor01 as Actor
	ActorTemp.EnableAI(True)
	ActorTemp.SetAngle(DEFAULTANGLE, DEFAULTANGLE, rotation.GetValueInt())
	ActorTemp.EnableAI(False)
endEvent