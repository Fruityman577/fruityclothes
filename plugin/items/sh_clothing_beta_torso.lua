local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Brown Jacket";
ITEM.uniqueID = "brown_jacket";
ITEM.weight = 2.8;
ITEM.invSpace = 6.5;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A brown jacket with a Union logo on the back.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 14;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();