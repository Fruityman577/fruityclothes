local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "White Shirt";
ITEM.uniqueID = "white_shirt";
ITEM.weight = 1;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A pure white shirt. Commonly used by branches of the CC and CWU.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 17;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();

