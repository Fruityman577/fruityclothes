local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Black Rebel Legs";
ITEM.uniqueID = "rebel_legs_black";
ITEM.weight = 2;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A pair of rebel-style trousers, with knee supports, dyed black.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 8;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);
 
ITEM:Register();