local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Black Jacket";
ITEM.uniqueID = "black_jacket";
ITEM.weight = 2.8;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A black jacket with pockets.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 18;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();