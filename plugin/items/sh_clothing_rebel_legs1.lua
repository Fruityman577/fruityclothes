local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Padded Rebel Legs (Grey)";
ITEM.uniqueID = "rebel_legs_grey";
ITEM.weight = 2;
ITEM.invSpace = 3;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A pair of padded resistance leggings, with a grey colour. They've obviously been around a while.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 4;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 1);
 
ITEM:Register();