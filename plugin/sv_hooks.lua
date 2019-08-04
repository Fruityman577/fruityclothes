--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local PLUGIN = PLUGIN;

local Clockwork = Clockwork;

local CurTime = CurTime;

local math = math;
local Clamp = math.Clamp;

-- Called when a player has been ragdolled.
function PLUGIN:PlayerRagdolled(player, state, ragdoll)
	local modelGroups = player:GetCharacterData("bodygroups");
	local model = player:GetModel();
	if( modelGroups and modelGroups[model] )then
		for bodyGroup, bodyGroupState in pairs(modelGroups[model])do
			ragdoll.entity:SetBodygroup(tonumber(bodyGroup), bodyGroupState);
		end;
	end;
end;

function PLUGIN:PlayerRagdolled(player, state, ragdollTable)
	local items = player:GetInventory();
	for k, itemList in pairs(items) do
		for k, item in pairs(itemList) do
			if (!item:IsBasedFrom("torso_base")) then
				break;
			elseif (item:GetData("equipped") and item:GetData("armor")) then
				item:SetData("armor", math.Clamp(player:Armor(), 0, item("maxArmor")));
			end;
		end;
	end;
end;

-- Called when a player's character data should be saved.
function PLUGIN:PlayerSaveCharacterData(player, data)
	if (data["clothesQualitytorso"]) then
		data["clothesQualitytorso"] = math.Round(data["clothesQualitytorso"]);
	elseif (data["clothesQualitylegs"]) then
		data["clothesQualitylegs"] = math.Round(data["clothesQualitylegs"]);
	elseif (data["clothesQualityhands"]) then
		data["clothesQualityhands"] = math.Round(data["clothesQualityhands"]);
	elseif (data["clothesQualityheadgear"]) then
		data["clothesQualityheadgear"] = math.Round(data["clothesQualityheadgear"]);
	elseif (data["clothesQualitybag"]) then
		data["clothesQualitybag"] = math.Round(data["clothesQualitybag"]);
	elseif (data["clothesQualityglasses"]) then
		data["clothesQualityglasses"] = math.Round(data["clothesQualityglasses"]);
	elseif (data["clothesQualitysatchel"]) then
		data["clothesQualitysatchel"] = math.Round(data["clothesQualitysatchel"]);
	elseif (data["clothesQualitypouch"]) then
		data["clothesQualitypouch"] = math.Round(data["clothesQualitypouch"]);
	elseif (data["clothesQualitybadge"]) then
		data["clothesQualitybadge"] = math.Round(data["clothesQualitybadge"]);
	elseif (data["clothesQualityarmbands"]) then
		data["clothesQualityarmbands"] = math.Round(data["clothesQualityarmbands"]);
	elseif (data["clothesQualityheadstrap"]) then
		data["clothesQualityheadstrap"] = math.Round(data["clothesQualityheadstrap"]);
	elseif (data["clothesQualitykevlar"]) then
		data["clothesQualitykevlar"] = math.Round(data["clothesQualitykevlar"]);
	else
		data["clothesQualitytorso"] = 0;
		data["clothesQualitylegs"] = 0;
		data["clothesQualityhands"] = 0;
		data["clothesQualityheadgear"] = 0;
		data["clothesQualitybag"] = 0;
		data["clothesQualityglasses"] = 0;
		data["clothesQualitysatchel"] = 0;
		data["clothesQualitypouch"] = 0;
		data["clothesQualitybadge"] = 0;
		data["clothesQualityarmbands"] = 0;
		data["clothesQualityheadstrap"] = 0;
		data["clothesQualitykevlar"] = 0;
	end;
	
	self:SaveClothesArmor(player);
end;

-- Called when a player's character data should be restored.
function PLUGIN:PlayerRestoreCharacterData(player, data)
	data["clothesQualitytorso"] = data["clothesQualitytorso"] or 0;
	data["clothesQualitylegs"] = data["clothesQualitylegs"] or 0;
	data["clothesQualityhands"] = data["clothesQualityhands"] or 0;
	data["clothesQualityheadgear"] = data["clothesQualityheadgear"] or 0;
	data["clothesQualitybag"] = data["clothesQualitybag"] or 0;
	data["clothesQualityglasses"] = data["clothesQualityglasses"] or 0;
	data["clothesQualitysatchel"] = data["clothesQualitysatchel"] or 0;
	data["clothesQualitypouch"] = data["clothesQualitypouch"] or 0;
	data["clothesQualitybadge"] = data["clothesQualitybadge"] or 0;
	data["clothesQualityarmbands"] = data["clothesQualityarmbands"] or 0;
	data["clothesQualityheadstrap"] = data["clothesQualityheadstrap"] or 0;
	data["clothesQualitykevlar"] = data["clothesQualitykevlar"] or 0;
end;

-- Called when a player's shared variables should be set.
function PLUGIN:PlayerSetSharedVars(player, curTime)
	player:SetSharedVar("clothesQualitytorso", math.Round(player:GetCharacterData("clothesQualitytorso")));
	player:SetSharedVar("clothesQualitylegs", math.Round(player:GetCharacterData("clothesQualitylegs")))
	player:SetSharedVar("clothesQualityhands", math.Round(player:GetCharacterData("clothesQualityhands")))
	player:SetSharedVar("clothesQualityheadgear", math.Round(player:GetCharacterData("clothesQualityheadgear")))
	player:SetSharedVar("clothesQualitybag", math.Round(player:GetCharacterData("clothesQualitybag")))
	player:SetSharedVar("clothesQualityglasses", math.Round(player:GetCharacterData("clothesQualityglasses")))
	player:SetSharedVar("clothesQualitysatchel", math.Round(player:GetCharacterData("clothesQualitysatchel")))
	player:SetSharedVar("clothesQualitypouch", math.Round(player:GetCharacterData("clothesQualitypouch")))
	player:SetSharedVar("clothesQualitybadge", math.Round(player:GetCharacterData("clothesQualitybadge")))
	player:SetSharedVar("clothesQualityarmbands", math.Round(player:GetCharacterData("clothesQualityarmbands")))
	player:SetSharedVar("clothesQualityheadstrap", math.Round(player:GetCharacterData("clothesQualityheadstrap")))
	player:SetSharedVar("clothesQualitykevlar", math.Round(player:GetCharacterData("clothesQualitykevlar")))
end;

function PLUGIN:PostPlayerSpawn(player, lightSpawn, changeClass, firstSpawn)
	local items = player:GetInventory();
	for k, itemList in pairs(items) do
		for k, item in pairs(itemList) do
			if (!item:IsBasedFrom("torso_base")) then
				break;
			elseif (item:GetData("equipped") and item:GetData("armor")) then
				player:SetMaxArmor(item("maxArmor"));
					if (item("isAnonymous")) then
						player:SetSharedVar("isConcealed", true);
					else
						player:SetSharedVar("isConcealed", false);
					end;
			else
				player:SetSharedVar("isConcealed", false);
			end;
		end;
	end;
	
	if (firstSpawn) then
		local items = player:GetInventory();
		for uniqueID, itemList in pairs(items) do
			for id, itemTable in pairs(itemList) do
				if (!itemTable:IsBasedFrom("torso_base")) then
					break;
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "torso") then
					player:SetSharedVar("maxClothesQualitytorso", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "legs") then
					player:SetSharedVar("maxClothesQualitylegs", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "hands") then
					player:SetSharedVar("maxClothesQualityhands", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "headgear") then
					player:SetSharedVar("maxClothesQualityheadgear", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "bag") then
					player:SetSharedVar("maxClothesQualitybag", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "glasses") then
					player:SetSharedVar("maxClothesQualityglasses", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "satchel") then
					player:SetSharedVar("maxClothesQualitysatchel", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "pouch") then
					player:SetSharedVar("maxClothesQualitypouch", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "badge") then
					player:SetSharedVar("maxClothesQualitybadge", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "armbands") then
					player:SetSharedVar("maxClothesQualityarmbands", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "headstrap") then
					player:SetSharedVar("maxClothesQualityheadstrap", itemTable("maxClothesQuality"));
				elseif (itemTable:GetData("equipped") and itemTable("bodyGroupName") == "kevlar") then
					player:SetSharedVar("maxClothesQualitykevlar", itemTable("maxClothesQuality"));
					return;
				end;
			end;
		end;
	end;
end;

-- Called when the player takes damage
function PLUGIN:EntityTakeDamage(entity, damageInfo)
	if (entity:IsPlayer()) then
		local attacker = damageInfo:GetAttacker();
		if (attacker:IsPlayer() or attacker:IsNPC()) then
		
		local items = entity:GetInventory();
			for k, itemList in pairs(items) do
				for k, item in pairs(itemList) do
					if (!item:IsBasedFrom("torso_base")) then
						break;
					elseif (item:GetData("equipped") and item:GetData("armor")) then
						if (item and item("protection") and item("protection") > 0) then
							damageInfo:ScaleDamage(1 - math.Clamp(item("protection"), 0, 1));
						end;
					end;
				end;
			end;
		end;
	end;
end;

function PLUGIN:PlayerRagdolled(player)
	self:SaveClothesArmor(player);
end;
