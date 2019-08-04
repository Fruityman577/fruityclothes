local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Backpack";
ITEM.uniqueID = "backpack";
ITEM.weight = 1.5;
ITEM.invSpace = 9;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Storage";
ITEM.description = "A backpack with the Union logo and a City 24 label.";
ITEM.bodyGroup = 5;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "bag";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);

ITEM:Register();

