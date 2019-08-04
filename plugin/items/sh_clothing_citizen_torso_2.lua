local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Uniform with Rolled Sleeves";
ITEM.uniqueID = "citizen_torso_2";
ITEM.weight = 1;
ITEM.invSpace = 1;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Torso";
ITEM.description = "A fresh City 24 Citizen Uniform, with the sleeves pre-rolled and fastened.";
ITEM.bodyGroup = 1;
ITEM.bodyGroupState = 1;
ITEM.bodyGroupName = "torso";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();