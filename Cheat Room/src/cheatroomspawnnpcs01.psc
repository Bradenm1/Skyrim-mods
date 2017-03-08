Scriptname CheatRoomSpawnNPCs01 extends activemagiceffect  

Int Property AmountOfNPCsSpawn  Auto  

ActorBase[] Property ActorsSpawn  Auto  

ObjectReference Property xMarker01  Auto  
ObjectReference Property xMarker02  Auto  

Message Property Message01  Auto  
Message Property Message02  Auto  

GlobalVariable Property SpawnPointSelected  Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)
	int iButton01 = 0
	bool Menu = True
	While Menu
		if iButton01 != -1
			iButton01 = Message01.Show()
			Menu = False
			if iButton01 == 0
				xMarker01.moveto(akCaster)
			Elseif iButton01 ==1
				xMarker02.moveto(akCaster)
			Elseif iButton01 ==2
				SpawnPointSelected.SetValue(1)
			Elseif iButton01 ==3
				SpawnPointSelected.SetValue(2)
			Elseif iButton01 ==4
				Message02()
			endif
		endif
	endwhile
EndEvent

Function Message02()
	int iButton02 = Message02.Show()
	if iButton02 == 0;
		SpawnThingy(iButton02)
	Elseif iButton02 ==1
		SpawnThingy(iButton02)
	Elseif iButton02 ==2
		SpawnThingy(iButton02)
	Elseif iButton02 ==3
		SpawnThingy(iButton02)
	Elseif iButton02 ==4
		SpawnThingy(iButton02)
	Elseif iButton02 ==5
		SpawnThingy(iButton02)
	Elseif iButton02 ==6
		SpawnThingy(iButton02)
	Elseif iButton02 ==7
		SpawnThingy(iButton02)
	Elseif iButton02 ==8
		SpawnThingy(iButton02)
	endif
EndFunction

Function SpawnThingy(int iButton02)
	if SpawnPointSelected .GetValue() == 0;
		Debug.MessageBox("You did not select a spawn point or set the spawn")
	Elseif SpawnPointSelected .GetValue() == 1;
		Xmarker01.PlaceAtMe(ActorsSpawn[iButton02],AmountOfNPCsSpawn)
	ElseIf SpawnPointSelected .GetValue() == 2;
		Xmarker02.PlaceAtMe(ActorsSpawn[iButton02],AmountOfNPCsSpawn)
	endif
EndFunction

