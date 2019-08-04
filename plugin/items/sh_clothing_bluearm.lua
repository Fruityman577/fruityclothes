local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Blue Loyalty Armband";
ITEM.uniqueID = "bluearmb";
ITEM.weight = 0.1;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Armbands";
ITEM.description = "A blue loyalty armband for loyalists to wear.";
ITEM.bodyGroup = 10;
ITEM.bodyGroupState = 4;
ITEM.bodyGroupName = "armbands";
ITEM.qualityDecreaseEquip = 2;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();