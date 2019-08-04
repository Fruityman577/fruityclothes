local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Goggles";
ITEM.uniqueID = "goggles";
ITEM.weight = 0.2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Eyewear";
ITEM.description = "A pair of goggles with thick rims. More for protection than vision assistance.";
ITEM.bodyGroup = 6;
ITEM.bodyGroupState = 2;
ITEM.bodyGroupName = "glasses";
ITEM.qualityDecreaseEquip = 2;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();
