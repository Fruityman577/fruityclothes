local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "CWU Uniform";
ITEM.uniqueID = "cwu_uniform";
ITEM.weight = 2;
ITEM.invSpace = 3;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "Standard CWU Uniform.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 3;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();