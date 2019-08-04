local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Lambda Armband";
ITEM.uniqueID = "rebelarmb";
ITEM.weight = 0.1;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Armbands";
ITEM.description = "A lambda armband with the word 'resist' painted on it.";
ITEM.bodyGroup = 10;
ITEM.bodyGroupState = 7;
ITEM.bodyGroupName = "armbands";
ITEM.qualityDecreaseEquip = 2;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);

ITEM:Register();