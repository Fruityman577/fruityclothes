local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Black Legs";
ITEM.uniqueID = "black_legs";
ITEM.weight = 2;
ITEM.invSpace = 2;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A pair of black trousers.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 9;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();