Scriptname CheatRoomEnableAllMapMarkers extends ObjectReference  

FormList Property CheatRoom_MapMarkers Auto
Message Property CheatRoom_EnableAllMapMarkersMessage Auto
Float Property EstimatedTime Auto

Event OnActivate(ObjectReference akActionRef)
	int Index = 0
	int size = CheatRoom_MapMarkers.GetSize()
	int result = CheatRoom_EnableAllMapMarkersMessage.Show(size as float, EstimatedTime)
	if (result != 2)
		bool enableMapMarker = (result == 0)
		While ( Index < size )
			ObjectReference mapMarker = CheatRoom_MapMarkers.GetAt(Index) as ObjectReference
			mapMarker.AddToMap(enableMapMarker)
			;Debug.Trace(mapMarker)
			Index = Index + 1
		EndWhile
		if ( EstimatedTime == 20 )
			ObjectReference Myrwatch = (Game.GetFormFromFile(0x0000FA2, "cceejsse002-tower.esl") as ObjectReference)
			if ( Myrwatch != None)
				Myrwatch.AddToMap(enableMapMarker)
			endIf
			ObjectReference DLCDwarvenPuzzleDungeonMapMarker = (Game.GetFormFromFile(0x000038D6, "cctwbsse001-puzzledungeon.esm") as ObjectReference)
			if ( DLCDwarvenPuzzleDungeonMapMarker != None)
				DLCDwarvenPuzzleDungeonMapMarker.AddToMap(enableMapMarker)
			endIf
			ObjectReference TheChill = (Game.GetFormFromFile(0x00028852, "unofficial skyrim special edition patch.esp") as ObjectReference)
			if ( TheChill != None)
				TheChill.AddToMap(enableMapMarker)
			endIf
			ObjectReference TundraHomestead = (Game.GetFormFromFile(0x00000B8A, "cceejsse001-hstead.esm") as ObjectReference)
			if ( TundraHomestead != None)
				TundraHomestead.AddToMap(enableMapMarker)
			endIf
		endIf
	endIf
	;Debug.MessageBox("Finished")
EndEvent