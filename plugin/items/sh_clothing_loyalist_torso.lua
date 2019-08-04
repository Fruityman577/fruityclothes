local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Grey Jogging Top";
ITEM.uniqueID = "grey_jogging_top";
ITEM.weight = 1.2;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A warm and extremely comfortable Jogging Top. Typically worn by Loyalists.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 6;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();