Scriptname CheatRoomGetModItemsPlayer extends ReferenceAlias  

;=======Properties=======
CheatRoomGetModItemsQuest Property CheatRoomGetModItemsQuestProperty Auto

;=======CODE START=======
Event OnPlayerLoadGame()
	CheatRoomGetModItemsQuestProperty.SpawnMods()
EndEvent