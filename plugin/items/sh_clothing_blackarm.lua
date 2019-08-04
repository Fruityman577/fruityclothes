local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Black Loyalty Armband";
ITEM.uniqueID = "blackarmb";
ITEM.weight = 0.1;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Armbands";
ITEM.description = "A black loyalty armband for loyalists to wear.";
ITEM.bodyGroup = 10;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "armbands";
ITEM.qualityDecreaseEquip = 2;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();