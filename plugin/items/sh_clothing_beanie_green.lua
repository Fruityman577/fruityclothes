local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Old Beanie";
ITEM.uniqueID = "old_beanie";
ITEM.weight = 0.5;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headgear";
ITEM.description = "A warm old beanie. Despite being old, it has somehow retained its green colour.";
ITEM.bodyGroup = 4;
ITEM.bodyGroupState = 2;
ITEM.bodyGroupName = "headgear";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();