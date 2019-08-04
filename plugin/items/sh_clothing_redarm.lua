local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Red Loyalty Armband";
ITEM.uniqueID = "redarmb";
ITEM.weight = 0.1;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Armbands";
ITEM.description = "A red loyalty armband for loyalists to wear.";
ITEM.bodyGroup = 10;
ITEM.bodyGroupState = 3;
ITEM.bodyGroupName = "armbands";
ITEM.qualityDecreaseEquip = 2;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();