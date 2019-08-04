local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Rebel Black Torso";
ITEM.uniqueID = "rebel_black_torso";
ITEM.weight = 3;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A black tactical suit, with ammo pouches and a salvaged CP utility belt.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 13;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);

ITEM:Register();