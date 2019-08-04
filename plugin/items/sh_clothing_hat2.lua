local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Flatcap";
ITEM.uniqueID = "flatcap";
ITEM.weight = 0.2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headgear";
ITEM.description = "Nobody's worn one of these in years. Maybe it's best it stays that way. It's just a white and black flatcap.";
ITEM.bodyGroup = 4;
ITEM.bodyGroupState = 6;
ITEM.bodyGroupName = "headgear";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();
