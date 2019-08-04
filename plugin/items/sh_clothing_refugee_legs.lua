local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Refugee Legs";
ITEM.uniqueID = "refugee_legs";
ITEM.weight = 1;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "Standard Apparel for Refugees. Some old, worn jogging trousers.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 2;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();