local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Gas Mask";
ITEM.uniqueID = "fruity_gasmask";
ITEM.weight = 2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headstrap";
ITEM.description = "A dark grey gas mask. Wear this with a filter if you want to go spelunking.";
ITEM.bodyGroup = 11;
ITEM.bodyGroupState = 4;
ITEM.bodyGroupName = "headstrap";
ITEM.qualityDecreaseEquip = 4;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = true;
ITEM.hasGasmask = true;

ITEM:AddData("Rarity", 2);

ITEM:Register();