local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Rebel-style Kevlar";
ITEM.uniqueID = "rebel_kevlar";
ITEM.weight = 3;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Kevlar";
ITEM.description = "A salvaged CP kevlar chest, painted with the lambda logo.";
ITEM.bodyGroup = 12;
ITEM.bodyGroupState = 2;
ITEM.bodyGroupName = "kevlar";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0.2;
ITEM.maxArmor = 100;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 3);

ITEM:Register();