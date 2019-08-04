local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Blue Jacket";
ITEM.uniqueID = "blue_jacket";
ITEM.weight = 1.2;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "An almost waterproof jacket in a blue and light grey colour scheme.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 10;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();