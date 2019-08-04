local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Boonie Hat";
ITEM.uniqueID = "boonie_hat";
ITEM.weight = 0.3;
ITEM.invSpace = 0;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Headgear";
ITEM.description = "A green boonie hat. Perfect for keeping the rain off of your head.";
ITEM.bodyGroup = 4;
ITEM.bodyGroupState = 4;
ITEM.bodyGroupName = "headgear";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();
