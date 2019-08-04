local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Confederate Cap";
ITEM.uniqueID = "confederate_cap";
ITEM.weight = 0.3;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headgear";
ITEM.description = "An old, pre-war confederate hat. It's fairly battered, but it looks cool.";
ITEM.bodyGroup = 4;
ITEM.bodyGroupState = 3;
ITEM.bodyGroupName = "headgear";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();
