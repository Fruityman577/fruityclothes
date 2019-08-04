local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Rebel OTA-salvaged MOLLE Vest";
ITEM.uniqueID = "rebel_ota_kevlar";
ITEM.weight = 5;
ITEM.invSpace = 6;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Kevlar";
ITEM.description = "A salvaged OTA MOLLE vest. It offers the best protection around.";
ITEM.bodyGroup = 12;
ITEM.bodyGroupState = 3;
ITEM.bodyGroupName = "kevlar";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0.3;
ITEM.maxArmor = 110;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 4);

ITEM:Register();