local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Face Wrap";
ITEM.uniqueID = "facewrap";
ITEM.weight = 0.2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headstrap";
ITEM.description = "Something to obscure your face.";
ITEM.bodyGroup = 11;
ITEM.bodyGroupState = 3;
ITEM.bodyGroupName = "headstrap";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = true;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);

ITEM:Register();