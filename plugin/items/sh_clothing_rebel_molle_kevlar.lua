local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Rebel Molle Vest";
ITEM.uniqueID = "rebel_molle_kevlar";
ITEM.weight = 5;
ITEM.invSpace = 6;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Kevlar";
ITEM.description = "A new MOLLE vest with a Lambda Logo on the front. It offers great protection.";
ITEM.bodyGroup = 12;
ITEM.bodyGroupState = 5;
ITEM.bodyGroupName = "kevlar";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0.25;
ITEM.maxArmor = 110;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 4);

ITEM:Register();