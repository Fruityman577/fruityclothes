local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Fingerless Gloves";
ITEM.uniqueID = "fingerless_gloves";
ITEM.weight = 0.2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Hands";
ITEM.description = "Keeps your hands warm, but not your fingers.";
ITEM.bodyGroup = 3;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "hands";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();