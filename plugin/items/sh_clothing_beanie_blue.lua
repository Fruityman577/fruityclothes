local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Washed Beanie";
ITEM.uniqueID = "washed_beanie";
ITEM.weight = 0.5;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headgear";
ITEM.description = "A warm washed beanie. It used to be blue, but now it's just a sad grey.";
ITEM.bodyGroup = 4;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "headgear";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();