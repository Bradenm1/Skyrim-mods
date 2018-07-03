Scriptname CheatRoomSpawnActor02 extends ActiveMagicEffect  

;=======Properties=======
ActorBase[] Property SpawnActors  Auto  

ObjectReference[] Property xMarkers  Auto  

GlobalVariable Property CheatSpellOther  Auto  
GlobalVariable Property SpawnPointSelected  Auto  
GlobalVariable Property SpawnAmmount  Auto  
GlobalVariable Property SpawnActorRandom  Auto 
GlobalVariable Property SpawnWithSpell  Auto  

FormList Property RandActors  Auto  

;=======CODE START=======
Event OnEffectStart(Actor akTarget, Actor akCaster)
	SpawnThingy()
EndEvent 

Function SpawnThingy()
	;Checks if player set to spawn with spell
	if (SpawnWithSpell.GetValueInt() == 1)
		;Check if player is spawning a random npc
		if (SpawnActorRandom.GetValueInt()  == 1)
			;Main code for spawning the random actor
			int temp = Utility.RandomInt(0, RandActors.GetSize())
			if SpawnPointSelected .GetValue() == 0
				Debug.MessageBox("You did not select a spawn point or set the spawn")
			Elseif SpawnPointSelected .GetValue() == 1;
				xMarkers[0].PlaceAtMe(RandActors.getAt(temp),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 2;
				xMarkers[1].PlaceAtMe(RandActors.getAt(temp),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 3;
				xMarkers[2].PlaceAtMe(RandActors.getAt(temp),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 4;
				xMarkers[3].PlaceAtMe(RandActors.getAt(temp),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 5;
				Game.GetPlayer().PlaceAtMe(RandActors.getAt(temp),SpawnAmmount.GetValueInt())
			endif
			;SpawnRandom == False
		else
			;Main code for spawning the selected actor
			if SpawnPointSelected .GetValue() == 0;
				Debug.MessageBox("You did not select a spawn point or set the spawn")
			Elseif SpawnPointSelected .GetValue() == 1;
				xMarkers[0].PlaceAtMe(SpawnActors[CheatSpellOther.GetValueInt()],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 2;
				xMarkers[1].PlaceAtMe(SpawnActors[CheatSpellOther.GetValueInt()],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 3;
				xMarkers[2].PlaceAtMe(SpawnActors[CheatSpellOther.GetValueInt()],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 4;
				xMarkers[3].PlaceAtMe(SpawnActors[CheatSpellOther.GetValueInt()],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 5;
				Game.GetPlayer().PlaceAtMe(SpawnActors[CheatSpellOther.GetValueInt()],SpawnAmmount.GetValueInt())
			endif
		endif
	endif
EndFunction
