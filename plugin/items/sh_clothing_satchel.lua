local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Satchel";
ITEM.uniqueID = "satchel";
ITEM.weight = 1;
ITEM.invSpace = 9;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Storage";
ITEM.description = "A satchel, slung over the shoulder, with access on the rear.";
ITEM.bodyGroup = 7;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "satchel";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();