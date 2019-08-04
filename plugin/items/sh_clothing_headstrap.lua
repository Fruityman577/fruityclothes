local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Dust Mask";
ITEM.uniqueID = "dust_mask";
ITEM.weight = 2;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headstrap";
ITEM.description = "A dark grey dust mask. It offers minimal protection, but it stops particulates to most effect.";
ITEM.bodyGroup = 11;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "headstrap";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = true;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);

ITEM:Register();