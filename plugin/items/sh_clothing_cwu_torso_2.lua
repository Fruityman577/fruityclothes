local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "CMU Uniform";
ITEM.uniqueID = "cmu_uniform";
ITEM.weight = 1.5;
ITEM.invSpace = 2;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "Standard CMU Uniform.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 2;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();