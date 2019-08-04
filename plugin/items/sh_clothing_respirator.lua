local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Respirator";
ITEM.uniqueID = "respirator";
ITEM.weight = 2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headstrap";
ITEM.description = "A dark grey respirator mask, covering only your mouth and nose.";
ITEM.bodyGroup = 11;
ITEM.bodyGroupState = 2;
ITEM.bodyGroupName = "headstrap";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();