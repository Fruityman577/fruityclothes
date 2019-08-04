local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Hat";
ITEM.uniqueID = "fruity_hat";
ITEM.weight = 0.2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headgear";
ITEM.description = "A hat with an old Union logo on it, commonly used by CWU members.";
ITEM.bodyGroup = 4;
ITEM.bodyGroupState = 5;
ITEM.bodyGroupName = "headgear";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();
