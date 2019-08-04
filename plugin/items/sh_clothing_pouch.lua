local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Pouch";
ITEM.uniqueID = "pouch";
ITEM.weight = 1;
ITEM.invSpace = 5;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Storage";
ITEM.description = "A pouch, slung over the shoulder, with access on the front.";
ITEM.bodyGroup = 8;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "pouch";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();