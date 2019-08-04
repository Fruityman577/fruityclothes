local ITEM = Clockwork.item:New("torso_base");
ITEM.name = "Padded Rebel Legs (Blue)";
ITEM.uniqueID = "rebel_legs_blue";
ITEM.weight = 2;
ITEM.invSpace = 3;
ITEM.useText = "Wear";
ITEM.category = "Clothing - Legs";
ITEM.description = "A pair of padded resistance leggings, with a blue colour.";
ITEM.bodyGroup = 2;
ITEM.bodyGroupState = 5;
ITEM.bodyGroupName = "legs";
ITEM.qualityDecreaseEquip = 7;
ITEM.protection = 0;
ITEM.maxArmor = 0;
ITEM.isAnonymous = false;
ITEM.hasGasmask = false;

ITEM:AddData("Rarity", 2);
 
ITEM:Register();