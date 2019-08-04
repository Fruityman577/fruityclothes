local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Rebel CP Kevlar";
ITEM.uniqueID = "rebel_cp_kevlar";
ITEM.weight = 3;
ITEM.invSpace = 4;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Kevlar";
ITEM.description = "A fairly new CP kevlar vest with a lambda logo painted on the front.";
ITEM.bodyGroup = 12;
ITEM.bodyGroupState = 4;
ITEM.bodyGroupName = "kevlar";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0.2;
ITEM.maxArmor = 100;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 3);

ITEM:Register();