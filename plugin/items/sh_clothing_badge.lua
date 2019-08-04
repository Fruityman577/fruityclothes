local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Union Badge";
ITEM.uniqueID = "badge";
ITEM.weight = 0.1;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Accessories";
ITEM.description = "A cool badge for Union workers to wear.";
ITEM.bodyGroup = 9;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "badge";
ITEM.qualityDecreaseEquip = 1;
ITEM.canSew = false;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();

