local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Dirty Refugee Uniform";
ITEM.uniqueID = "dirty_refugee_shirt";
ITEM.weight = 1.5;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A very dirty Refugee uniform.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 5;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();

