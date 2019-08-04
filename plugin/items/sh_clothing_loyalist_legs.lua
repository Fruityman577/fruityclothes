local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Blue Jogging Trousers";
ITEM.uniqueID = "blue_jogging_trousers";
ITEM.weight = 2;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A pair of extremely comfortable blue jogging trousers. Typically worn by Loyalists.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 3;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();