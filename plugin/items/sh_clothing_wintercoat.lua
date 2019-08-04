local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Winter Coat";
ITEM.uniqueID = "winter_coat";
ITEM.weight = 2.8;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A warm brown winter coat.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 8;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();

