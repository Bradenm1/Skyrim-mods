Scriptname CheatRoomMerchantButton extends ObjectReference

Message Property CheatRoom_TheMerchant_Menu Auto
Message Property CheatRoom_TheMerchant_ConfirmResetStock Auto
Message Property CheatRoom_TheMerchant_StockOptions1 Auto
Message Property CheatRoom_TheMerchant_StockOptions2 Auto
Message Property CheatRoom_TheMerchant_Help Auto
GlobalVariable Property CheatRoom_TheMerchant_Armor Auto
GlobalVariable Property CheatRoom_TheMerchant_Clothing Auto
GlobalVariable Property CheatRoom_TheMerchant_Potions Auto
GlobalVariable Property CheatRoom_TheMerchant_Weapons Auto
GlobalVariable Property CheatRoom_TheMerchant_AlchemyIngredients Auto
GlobalVariable Property CheatRoom_TheMerchant_CraftingMaterials Auto
GlobalVariable Property CheatRoom_TheMerchant_EnchantingItems Auto
GlobalVariable Property CheatRoom_TheMerchant_SpellBooks Auto
Actor Property CheatRoomMerchantRef Auto
ObjectReference Property CheatRoomMerchantChestRef Auto
LeveledItem Property CheatRoom_TheMerchant_Weapons_LL Auto
LeveledItem Property CheatRoom_TheMerchant_Ammo_LL Auto
LeveledItem Property CheatRoom_TheMerchant_Heavy_Boots Auto
LeveledItem Property CheatRoom_TheMerchant_Heavy_Cuirasses Auto
LeveledItem Property CheatRoom_TheMerchant_Heavy_Gauntlets Auto
LeveledItem Property CheatRoom_TheMerchant_Heavy_Headgear Auto
LeveledItem Property CheatRoom_TheMerchant_Heavy_Shields Auto
LeveledItem Property CheatRoom_TheMerchant_Light_Boots Auto
LeveledItem Property CheatRoom_TheMerchant_Light_Cuirasses Auto
LeveledItem Property CheatRoom_TheMerchant_Light_Gauntlets Auto
LeveledItem Property CheatRoom_TheMerchant_Light_Headgear Auto
LeveledItem Property CheatRoom_TheMerchant_Light_Shields Auto
LeveledItem Property CheatRoom_TheMerchant_Clothing_Clothing Auto
LeveledItem Property CheatRoom_TheMerchant_Clothing_Footwear Auto
LeveledItem Property CheatRoom_TheMerchant_Clothing_Robes Auto
LeveledItem Property CheatRoom_TheMerchant_Clothing_Jewelry Auto
LeveledItem Property CheatRoom_TheMerchant_Potions_LL Auto
LeveledItem Property CheatRoom_TheMerchant_Poisons_LL Auto
LeveledItem Property CheatRoom_TheMerchant_AlchemyIngredients_LL Auto
LeveledItem Property CheatRoom_TheMerchant_EnchantingItems_SoulGems Auto
LeveledItem Property CheatRoom_TheMerchant_CraftingIngredients_BuildingMaterials Auto
LeveledItem Property CheatRoom_TheMerchant_CraftingIngredients_Gems Auto
LeveledItem Property CheatRoom_TheMerchant_CraftingIngredients_Metals Auto
LeveledItem Property CheatRoom_TheMerchant_SpellBooks_LL Auto

Event OnActivate(ObjectReference akActionRef)
	Game.DisablePlayerControls(False, False, False, False, False, True)
	int MerchantMenuSelection = CheatRoom_TheMerchant_Menu.Show()
	While (MerchantMenuSelection != 5) 
		if (MerchantMenuSelection == 0)
			CheatRoomMerchantRef.Reset()
			if (CheatRoom_TheMerchant_Weapons.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Weapons_LL)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Ammo_LL)
			endIf
			if (CheatRoom_TheMerchant_Armor.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Heavy_Boots) ;Maybe drill down on the options in the future for light/heavy?
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Heavy_Cuirasses)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Heavy_Gauntlets)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Heavy_Headgear)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Heavy_Shields)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Light_Boots)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Light_Cuirasses)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Light_Gauntlets)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Light_Headgear)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Light_Shields)
			endIf
			if (CheatRoom_TheMerchant_Clothing.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Clothing_Clothing)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Clothing_Footwear)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Clothing_Robes)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Clothing_Jewelry)
			endIf
			if (CheatRoom_TheMerchant_Potions.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Potions_LL)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_Poisons_LL)
			endIf
			if (CheatRoom_TheMerchant_AlchemyIngredients.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_AlchemyIngredients_LL)
			endIf
			if (CheatRoom_TheMerchant_EnchantingItems.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_EnchantingItems_SoulGems)
			endIf
			if (CheatRoom_TheMerchant_CraftingMaterials.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_CraftingIngredients_BuildingMaterials)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_CraftingIngredients_Gems)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_CraftingIngredients_Metals)
			endIf
			if (CheatRoom_TheMerchant_SpellBooks.GetValue() == 1)
				CheatRoomMerchantRef.AddItem(CheatRoom_TheMerchant_SpellBooks_LL)
			endIf
		elseIf (MerchantMenuSelection == 1)
			if ( CheatRoom_TheMerchant_ConfirmResetStock.Show() == 0 )
				CheatRoomMerchantChestRef.Reset()
			endIf
		elseIf (MerchantMenuSelection == 2)
			int MerchantStockOptions1 = CheatRoom_TheMerchant_StockOptions1.Show()
			While ( MerchantStockOptions1 != 8)
				if (MerchantStockOptions1 == 0)
					CheatRoom_TheMerchant_Weapons.SetValue(0)
				elseIf (MerchantStockOptions1 == 1)
					CheatRoom_TheMerchant_Weapons.SetValue(1)
				elseIf (MerchantStockOptions1 == 2)
					CheatRoom_TheMerchant_Armor.SetValue(0)
				elseIf (MerchantStockOptions1 == 3)
					CheatRoom_TheMerchant_Armor.SetValue(1)
				elseIf (MerchantStockOptions1 == 4)
					CheatRoom_TheMerchant_Clothing.SetValue(0)
				elseIf (MerchantStockOptions1 == 5)
					CheatRoom_TheMerchant_Clothing.SetValue(1)
				elseIf (MerchantStockOptions1 == 6)
					CheatRoom_TheMerchant_Potions.SetValue(0)
				elseIf (MerchantStockOptions1 == 7)
					CheatRoom_TheMerchant_Potions.SetValue(1)
				endIf
				MerchantStockOptions1 = CheatRoom_TheMerchant_StockOptions1.Show()
			endWhile
		elseIf (MerchantMenuSelection == 3)
			int MerchantStockOptions2 = CheatRoom_TheMerchant_StockOptions2.Show()
			While ( MerchantStockOptions2 != 8)
				if (MerchantStockOptions2 == 0)
					CheatRoom_TheMerchant_AlchemyIngredients.SetValue(0)
				elseIf (MerchantStockOptions2 == 1)
					CheatRoom_TheMerchant_AlchemyIngredients.SetValue(1)
				elseIf (MerchantStockOptions2 == 2)
					CheatRoom_TheMerchant_EnchantingItems.SetValue(0)
				elseIf (MerchantStockOptions2 == 3)
					CheatRoom_TheMerchant_EnchantingItems.SetValue(1)
				elseIf (MerchantStockOptions2 == 4)
					CheatRoom_TheMerchant_CraftingMaterials.SetValue(0)
				elseIf (MerchantStockOptions2 == 5)
					CheatRoom_TheMerchant_CraftingMaterials.SetValue(1)
				elseIf (MerchantStockOptions2 == 6)
					CheatRoom_TheMerchant_SpellBooks.SetValue(0)
				elseIf (MerchantStockOptions2 == 7)
					CheatRoom_TheMerchant_SpellBooks.SetValue(1)
				endIf
				MerchantStockOptions2 = CheatRoom_TheMerchant_StockOptions2.Show()
			endWhile
		elseIf (MerchantMenuSelection == 4)
			CheatRoom_TheMerchant_Help.Show()
		endIf
		MerchantMenuSelection = CheatRoom_TheMerchant_Menu.Show()
	endWhile
	Game.EnablePlayerControls(False, False, False, False, False, True)
EndEvent