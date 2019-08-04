local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Medic Trousers";
ITEM.uniqueID = "medic_trousers";
ITEM.weight = 1;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A pair of trousers, part of the CMU uniform.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 6;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();