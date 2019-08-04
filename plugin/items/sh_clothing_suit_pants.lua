local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Suit Bottom";
ITEM.uniqueID = "suit_bottom";
ITEM.weight = 1;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A smart pair of suit bottoms. Reserved for the highest echelons of society.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 7;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 3;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);
 
ITEM:Register();