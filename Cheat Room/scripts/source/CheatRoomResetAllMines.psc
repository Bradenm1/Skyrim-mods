Scriptname CheatRoomResetAllMines extends ObjectReference  

Cell[] Property Mines Auto
Message Property CheatRoom_MineResetMessage Auto

Event OnActivate(ObjectReference akActionRef)
	if ( CheatRoom_MineResetMessage.Show() == 0)
		int Index = 0
		While ( Index < Mines.Length )
			Cell cellIter = Mines[Index]
			cellIter.Reset()
			;Debug.Trace(cellIter)
			Index = Index + 1
		EndWhile
	endIf
	;Debug.MessageBox("Finished")
EndEvent