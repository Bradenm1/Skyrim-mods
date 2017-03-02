Scriptname CheatRoomSpawnNPCs01 extends activemagiceffect  

ActorBase[] Property ActorsSpawn  Auto  
ObjectReference[] Property xMarkers  Auto 
Message[] Property MessageBoxes  Auto   

FormList Property RandActors  Auto  
 
GlobalVariable Property SpawnSpellOther  Auto  
GlobalVariable Property SpawnAmmount  Auto  
GlobalVariable Property SpawnPointSelected  Auto  
GlobalVariable Property SpawnActorRandom  Auto  
GlobalVariable Property SpawnWithSpell  Auto  

bool SpawnRandom = False


Event OnEffectStart(Actor akTarget, Actor akCaster)
	int iButton01 = 0
	bool Menu = True
	While Menu
		if iButton01 != -1
			iButton01 = MessageBoxes[0].Show()
			Menu = False
			if iButton01 == 0
				MarkersSet(akCaster)
			Elseif iButton01 ==1
				SetMarkers()
			Elseif iButton01 ==2
				SpawnAmmount()
			Elseif iButton01 ==3
				SpawnMenu()
			Elseif iButton01 ==3
				SpawnMenu()
			Elseif iButton01 ==4
				If (SpawnWithSpell.GetValueInt() == 0)
					SpawnWithSpell.SetValue(1)
				Else
					SpawnWithSpell.SetValue(0)
				endif
			endif
		endif
	endwhile
EndEvent

Function MarkersSet(Actor akCaster)
	int iButton02 = MessageBoxes[4].Show()
	if iButton02 == 0;
		xMarkers[iButton02].moveto(akCaster)
	Elseif iButton02 ==1
		xMarkers[iButton02].moveto(akCaster)
	Elseif iButton02 ==2
		xMarkers[iButton02].moveto(akCaster)
	Elseif iButton02 ==3
		xMarkers[iButton02].moveto(akCaster)
	endif
EndFunction

Function SetMarkers()
	int iButton02 = MessageBoxes[5].Show()
	if iButton02 == 0;
		SpawnPointSelected.SetValue(1)
	Elseif iButton02 ==1
		SpawnPointSelected.SetValue(2)
	Elseif iButton02 ==2
		SpawnPointSelected.SetValue(3)
	Elseif iButton02 ==3
		SpawnPointSelected.SetValue(4)
	Elseif iButton02 ==4
		SpawnPointSelected.SetValue(5)
	endif
EndFunction

Function SpawnAmmount()
	int iButton02 = MessageBoxes[6].Show()
	if iButton02 == 0;
		SpawnAmmount.SetValue(1)
	Elseif iButton02 ==1
		SpawnAmmount.SetValue(2)
	Elseif iButton02 ==2
		SpawnAmmount.SetValue(3)
	Elseif iButton02 ==3
		SpawnAmmount.SetValue(4)
	Elseif iButton02 ==4
		SpawnAmmount.SetValue(5)
	Elseif iButton02 ==5
		SpawnAmmount.SetValue(10)
	endif
EndFunction

Function SpawnMenu()
	int iButton02 = MessageBoxes[3].Show()
	if iButton02 == 0;
		Message02()
	Elseif iButton02 ==1
		Message03()
	Elseif iButton02 ==2
		Message04()
	Elseif iButton02 ==3
		RandomActor()
	endif
EndFunction

Function RandomActor()
	int iButton02 = Utility.RandomInt(0, RandActors.GetSize())
	SpawnActorRandom.SetValue(1)
	;SpawnRandom = True
	SpawnThingy(iButton02)
EndFunction
	
Function Message02()
	int iButton02 = MessageBoxes[1].Show()
	if iButton02 == 0;
		SpawnSpellOther.SetValue(0)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02)
	Elseif iButton02 ==1
		SpawnSpellOther.SetValue(1)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02)
	Elseif iButton02 ==2
		SpawnSpellOther.SetValue(2)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02)
	Elseif iButton02 ==3
		SpawnSpellOther.SetValue(3)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02)
	Elseif iButton02 ==4
		SpawnSpellOther.SetValue(4)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02)
	Elseif iButton02 ==5
		SpawnSpellOther.SetValue(5)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02)
	endif
EndFunction

Function Message03()
	int iButton02 = MessageBoxes[2].Show()
	if iButton02 == 0;
		SpawnSpellOther.SetValue(6)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 6)
	Elseif iButton02 ==1
		SpawnSpellOther.SetValue(7)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 6)
	Elseif iButton02 ==2
		SpawnSpellOther.SetValue(8)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 6)
	Elseif iButton02 ==3
		SpawnSpellOther.SetValue(9)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 6)
	Elseif iButton02 ==4
		SpawnSpellOther.SetValue(10)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 6)
	Elseif iButton02 ==5
		SpawnSpellOther.SetValue(11)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 6)
	endif
EndFunction

Function Message04()
	int iButton02 = MessageBoxes[7].Show()
	if iButton02 == 0;
		SpawnSpellOther.SetValue(12)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 12)
	Elseif iButton02 ==1
		SpawnSpellOther.SetValue(13)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 12)
	Elseif iButton02 ==2
		SpawnSpellOther.SetValue(14)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 12)
	Elseif iButton02 ==3
		SpawnSpellOther.SetValue(15)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 12)
	Elseif iButton02 ==4
		SpawnSpellOther.SetValue(16)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 12)
	Elseif iButton02 ==5
		SpawnSpellOther.SetValue(17)
		SpawnActorRandom.SetValue(0)
		SpawnThingy(iButton02 + 12)
	endif
EndFunction

Function SpawnThingy(int iButton02)
	if (SpawnWithSpell.GetValueInt() == 0)
		if (SpawnActorRandom.GetValueInt()  == 1)
			if SpawnPointSelected .GetValue() == 0
				Debug.MessageBox("You did not select a spawn point or set the spawn")
			Elseif SpawnPointSelected.GetValue() == 1
				xMarkers[0].PlaceAtMe(RandActors.getAt(iButton02),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected.GetValue() == 2
				xMarkers[1].PlaceAtMe(RandActors.getAt(iButton02),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected.GetValue() == 3
				xMarkers[2].PlaceAtMe(RandActors.getAt(iButton02),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected.GetValue() == 4
				xMarkers[3].PlaceAtMe(RandActors.getAt(iButton02),SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected.GetValue() == 5
				Game.GetPlayer().PlaceAtMe(RandActors.getAt(iButton02),SpawnAmmount.GetValueInt())
			endif
			;SpawnRandom == False
		else
			if SpawnPointSelected .GetValue() == 0
				Debug.MessageBox("You did not select a spawn point or set the spawn")
			Elseif SpawnPointSelected .GetValue() == 1
				xMarkers[0].PlaceAtMe(ActorsSpawn[iButton02],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 2
				xMarkers[1].PlaceAtMe(ActorsSpawn[iButton02],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 3
				xMarkers[2].PlaceAtMe(ActorsSpawn[iButton02],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 4
				xMarkers[3].PlaceAtMe(ActorsSpawn[iButton02],SpawnAmmount.GetValueInt())
			ElseIf SpawnPointSelected .GetValue() == 5
				Game.GetPlayer().PlaceAtMe(ActorsSpawn[iButton02],SpawnAmmount.GetValueInt())
			endif
		endif
	endif
EndFunction
