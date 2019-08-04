--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local PLUGIN = PLUGIN;

function PLUGIN:SaveClothesArmor(player)
	local items = player:GetInventory();
	for k, itemList in pairs(items) do
		for k, item in pairs(itemList) do
			if (!item:IsBasedFrom("torso_base")) then
				break;
			elseif (item:GetData("equipped") and item:GetData("armor")) then
				item:SetData("armor", math.Clamp(player:Armor(), 0, item("maxArmor", 0)));
			end;
		end;
	end;
end;