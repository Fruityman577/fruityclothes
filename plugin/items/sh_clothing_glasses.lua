local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Glasses";
ITEM.uniqueID = "fruity_glasses";
ITEM.weight = 0.1;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Eyewear";
ITEM.description = "A pair of spectacles. For fashion or function.";
ITEM.bodyGroup = 6;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "glasses";
ITEM.canSew = false;
ITEM.canRepair = false;
ITEM.qualityDecreaseEquip = 2;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();
