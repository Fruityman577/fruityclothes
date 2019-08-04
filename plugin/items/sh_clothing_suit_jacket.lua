local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Suit Jacket";
ITEM.uniqueID = "suit_jacket";
ITEM.weight = 1;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A smart suit. Reserved for the highest echelons of society.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 9;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 3;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);

ITEM:Register();