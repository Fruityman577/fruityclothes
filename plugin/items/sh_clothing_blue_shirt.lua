local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Blue Shirt";
ITEM.uniqueID = "blue_shirt";
ITEM.weight = 0.8;
ITEM.invSpace = 2;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A deep blue shirt. It has the City 24 logo on the back.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 16;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();