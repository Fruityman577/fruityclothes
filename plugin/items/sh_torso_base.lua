local ITEM = Clockwork.item:New(nil, true);
ITEM.name = "Torso Base";
ITEM.uniqueID = "torso_base";
ITEM.model = "models/props_c17/suitcase_passenger_physics.mdl";
ITEM.invSpace = 3; -- The amount of additional space this item gives when equipped
ITEM.weight = 2;
ITEM.useText = "Wear";
ITEM.category = "Clothing";
ITEM.description = "A nice torso that can hold stuff.";
ITEM.bodyGroup = 1; -- Bodygroup category
ITEM.bodyGroupState = 3; -- Bodygroup number
ITEM.bodyGroupName = "torso"; -- torso, legs, hands, headgear, bag, glasses, satchel, pouch, badge, armbands, headstrap, kevlar
ITEM.sewItem = "sewing_kit"; -- Item used to sew the clothing item
ITEM.maxClothesQuality = 100; -- 100%
ITEM.qualityDecreaseEquip = 7; -- The amount clothes quality decreases when you equip this armor.
ITEM.repairItem = "armor_scraps"; -- Which item that is used to repair this item's armor.
ITEM.isAnonymous = false; -- Is the player anonymous when wearing this item?
ITEM.canSew = true;
ITEM.canRepair = true;
ITEM.hasGasmask = false;
ITEM.protection = 0;
ITEM.maxArmor = 0;
--ITEM.repairAmount = 50; -- the amount of armor that is repaired when using the repair item.
--ITEM.sewFlag = "F"; leave this out of the item if you don't want the item to need a flag to be sewed
--ITEM.repairFlag = "F"; leave this out of the item if you don't want the item to need a flag to be repaired

ITEM:AddData("AddInvSpace", 0, true);
ITEM:AddData("equipped", false, true);
ITEM:AddData("clothesQuality", -1, true);
ITEM:AddData("armor", -1, true);
ITEM:AddData("Rarity", 1, true);

ITEM:AddQueryProxy("color", ITEM.GetRarityColor);

-- Localization
local dataGroup = dataGroupState;
local dataGroupState = dataGroupState;
local dataGroupName = dataGroupName;

-- Called when a player wears the accessory.
function ITEM:OnWearItem(player, bIsWearing)
	dataGroupName = self("bodyGroupName");
	if (self:GetData("equipped") == false) or (!bIsWearing) then
		self:SetData("clothesQuality", math.Clamp(math.Round(player:GetCharacterData("clothesQuality"..dataGroupName), 5), 0, self("maxClothesQuality")));
		player:SetCharacterData("clothesQuality"..dataGroupName, -1);
		player:SetSharedVar("maxClothesQuality"..dataGroupName, -1);
		self:SetData("armor", math.Clamp(player:Armor(), 0, self("maxArmor")));
		player:SetArmor(0);
		player:SetSharedVar("isConcealed", false);
	else
		player:SetCharacterData("clothesQuality"..dataGroupName, self:GetData("clothesQuality") - self("qualityDecreaseEquip"));
		player:SetSharedVar("maxClothesQuality"..dataGroupName, self("maxClothesQuality"));
		player:SetMaxArmor(self("maxArmor"));
		player:SetArmor(self:GetData("armor"));
		player:SetSharedVar("isConcealed", self.isAnonymous);
	end;
end;

-- Called for the client to figure out whether the player has the item equipped or something
function ITEM:HasPlayerEquipped(player, bIsValidWeapon)
	return self:GetData("equipped", false);
end;

-- Called when a player uses the item.
function ITEM:OnUse(player, itemEntity)
	-- defining the localization
	dataGroupState = self("bodyGroupState");
	dataGroup = self("bodyGroup");
	
	local targetBodyGroups = player:GetCharacterData("bodygroups") or {};
	local model = player:GetModel();
	
	if (player:Alive() and !player:IsRagdolled()) then
		if (self:GetData("equipped") != true) then
			if (!self.CanPlayerWear or self:CanPlayerWear(player, itemEntity) != false) then
				if (self:GetData("clothesQuality") <= 30) then
					Clockwork.player:Notify(player, "I should probably sew up these clothes soon..");
				end;
				self:SetData("equipped", true);
				self:OnWearItem(player, true);
				player:RebuildInventory();
				
				if( dataGroup < player:GetNumBodyGroups() )then
					targetBodyGroups[model] = targetBodyGroups[model] or {};
                       
					if( dataGroupState == 0 )then
						targetBodyGroups[model][tostring(dataGroup)] = nil;
					else
						targetBodyGroups[model][tostring(dataGroup)] = dataGroupState;
					
					end;
					
				player:SetCharacterData("bodygroups", targetBodyGroups);
				player:SetBodygroup(dataGroup, dataGroupState);
				
				return true;
				end;
			end;
		else
			Clockwork.player:Notify(player, "You are already wearing this item!");
		end;
	else
		Clockwork.player:Notify(player, "You cannot do this action at the moment!");
	end;
	
	return false;
end;

-- Handle the E menu options.
function ITEM:EntityHandleMenuOption(player, entity, option, argument)
	-- Clothes sewing
	if (option == "Sew") then
		self:SewClothes(player);

	-- Admin sewing
	elseif (option == "AdminSewing") then
		if (player:IsSuperAdmin()) then
			self:SetData("clothesQuality", self("maxClothesQuality"));
			Clockwork.kernel:PrintLog(LOGTYPE_MAJOR, player:Name().." has admin-sewed a "..self("name")..".");
		else
			Clockwork.Notify(player, "You are not a super admin!");
		end;
	end;
	
	-- Armor repair
	if (option == "Repair Armor") then
		self:RepairArmor(player);

	-- Admin armor repair
	elseif (option == "AdminRepairArmor") then
		if (player:IsSuperAdmin()) then
			self:SetData("armor", self("maxArmor"));
			Clockwork.kernel:PrintLog(LOGTYPE_MAJOR, player:Name().." has admin-repaired a "..self("name")..".");
		else
			Clockwork.Notify(player, "You are not a super admin!");
		end;
	end;
end;

-- Custom function for getting the added inventory space
function ITEM:GetAddInvSpace()
	if (self:GetData("equipped") == true) then
		return self("invSpace");
	else
		return 0;
	end;
end;
ITEM:AddQueryProxy("addInvSpace", ITEM.GetAddInvSpace);

-- Function define when player attempts to wear the item
function ITEM:CanPlayerWear(player, itemEntity)
	if (!self.CanPlayerWearBodyPart or self:CanPlayerWearBodyPart(player, itemEntity) != false) then
		return true;
	end;

	return false;
end;

-- Called when player attempts to wear the item
function ITEM:CanPlayerWearBodyPart(player, itemEntity)
	local items = player:GetInventory();
	for k, itemList in pairs(items) do
		for k, item in pairs(itemList) do
			if (!item:IsBasedFrom("torso_base")) then
				break;
			elseif (item:GetData("equipped") and item("bodyGroupName") == self("bodyGroupName")) then
				Clockwork.player:Notify(player, "I am already wearing something on this part of my body!");
				return false;
			end;
		end;
	end;
		
	if self:GetData("clothesQuality") == 0 then
		Clockwork.player:Notify(player, "I can't wear these, they are completely tattered!");
		return false;
	end;
end;

-- Called when a player has unequipped the item.
function ITEM:OnPlayerUnequipped(player, extraData)
	-- defining the localization
	dataGroupState = 0;
	dataGroup = self("bodyGroup");
	
	local targetBodyGroups = player:GetCharacterData("bodygroups") or {};
	local model = player:GetModel();
	
	if (player:GetInventoryWeight() + self("weight") > (player:GetMaxWeight() - self("addInvSpace"))) then
		Clockwork.player:Notify(player, "You don't have enough inventory space to unequip this!");
		return false;
	end;		
	
	if (self("hasGasmask")) then
		local items = player:GetInventory();
		for k, itemList in pairs(items) do
			for k, item in pairs(itemList) do
				if (!item:IsBasedFrom("filter_base")) then
					break;
				elseif (item:GetData("equipped")) then
					hasEquipped = true;
					Clockwork.player:Notify(player, "You need to unscrew your filter first!");
					return false;
				end;
			end;
		end;
	end;
	
	if( dataGroup < player:GetNumBodyGroups() )then
		targetBodyGroups[model] = targetBodyGroups[model] or {};
                       
		if( dataGroupState == 0 )then
			targetBodyGroups[model][tostring(dataGroup)] = nil;
		else
			targetBodyGroups[model][tostring(dataGroup)] = dataGroupState;
		end;
					
		player:SetCharacterData("bodygroups", targetBodyGroups);
		player:SetBodygroup(dataGroup, dataGroupState);
		
	end;
	
	self:SetData("equipped", false);
	self:OnWearItem(player, false);
	player:SetSharedVar("isConcealed", false);
	player:RebuildInventory();     
end;

-- A function to get the item's rarity color.
function ITEM:GetRarityColor()
	local rarity = self:GetData("Rarity");
	if (rarity == 1) then
		return Color(248, 248, 255, 255);
	elseif (rarity == 2) then
		return Color(61, 210, 11, 255);
	elseif (rarity == 3) then
		return Color(47, 120, 255, 255);
	elseif (rarity == 4) then
		return Color(145, 50, 200, 255);
	elseif (rarity == 5) then
		return Color(255, 150, 0, 255);
	end;
end;

-- Called when player attempts to give item to storage
function ITEM:CanGiveStorage(player, storageTable)
	if (self:GetData("equipped", true)) then
		Clockwork.player:Notify(player, "You cannot store this while you are wearing it!");
		return false;
	end;
end;

-- Called when a player attempts to take the item from storage.
function ITEM:CanTakeStorage(player, storageTable)
	local target = Clockwork.entity:GetPlayer(storageTable.entity);
	
	if (target) then
		if (target:GetInventoryWeight() > (target:GetMaxWeight() - self("addInvSpace"))) then
			return false;
		end;
	end;
end;

-- Called when the item is dropped
function ITEM:OnDrop(player, position)
	if (self:GetData("equipped") == true) then
		Clockwork.player:Notify(player, "You cannot store this while you are wearing it!");
		return false;
	end;
end;

--Shared functions
if (SERVER) then
	function ITEM:OnInstantiated()
		if (self:GetData("clothesQuality") == -1) then
			self:SetData("clothesQuality", self("maxClothesQuality"));
		end;
	
		if (self:GetData("armor") == -1) then
			self:SetData("armor", self("maxArmor"));
		end;
	end;
	
	function ITEM:SewClothes(player)
		if (self("canSew") == false) then
			Clockwork.player:Notify(player, "This item cannot be sewed! (Contact a dev if it should be)");
			return;
		end;
		if (self:GetData("clothesQuality") == self("maxClothesQuality")) then
			Clockwork.player:Notify(player, "This item is already in pristine quality!");
			return;
		end;

		-- Check if a flag is required and if the player has it
		if (self("sewFlag") and !Clockwork.player:HasFlags(player, self("sewFlag"))) then
			Clockwork.player:Notify(player, "You do not have the "..self("sewFlag").." flag!");
		end;

		local item = player:FindItemByID(self("sewItem"));

		-- Check if the player has the needed item
		if (!player:HasItemByID(self("sewItem"))) then
			item = Clockwork.item:FindByID(self("sewItem"));
			Clockwork.player:Notify(player, "You do not have a "..item("name").." to sew this!");
			return;
		end;

		-- Take the sewing item
		player:TakeItem(item);
		-- Set clothes to new value
		self:SetData("clothesQuality", self("maxClothesQuality"));
		-- Notify player
		Clockwork.player:Notify(player, "You have sewed the "..self("name")..".");
		Clockwork.kernel:PrintLog(LOGTYPE_GENERIC, player:Name().." has sewed a "..self("name")..".");
	end;
	
	function ITEM:RepairArmor(player)
		if (self("canRepair") == false) then
			Clockwork.player:Notify(player, "This item cannot be repaired! (Contact a dev if it should be)");
			return;
		end;
		if (self:GetData("armor") == self("maxArmor")) then
			Clockwork.player:Notify(player, "This item already has full armor!");
			return;
		end;

		-- Check if a flag is required and if the player has it
		if (self("repairFlag") and !Clockwork.player:HasFlags(player, self("repairFlag"))) then
			Clockwork.player:Notify(player, "You do not have the "..self("repairFlag").." flag!");
		end;

		local repairItem = player:FindItemByID(self("repairItem"));

		-- Check if the player has the needed item
		if (!player:HasItemByID(self("repairItem"))) then
			repairItem = Clockwork.item:CreateInstance(self("repairItem"));
			Clockwork.player:Notify(player, "You do not have enough "..repairItem("name").." to repair this!");
			return;
		end;

		local amount = self("repairAmount") or 50;

		-- Take the repair item
		player:TakeItem(repairItem);
		-- Set armor to new value
		self:SetData("armor", math.Clamp(self:GetData("armor") + amount, 0, self("maxArmor")));
		-- Notify player
		Clockwork.player:Notify(player, "You have repaired the "..self("name").." for "..tostring(amount).." armor.");
		Clockwork.kernel:PrintLog(LOGTYPE_GENERIC, player:Name().." has repaired a "..self("name").." for "..tostring(amount)..".");
	end;
else
	function ITEM:GetClientSideInfo()
		dataGroupName = self("bodyGroupName");
		if (!self:IsInstance()) then return; end;

		local clientSideInfo = ""
		
		clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Maximum Carry Weight: "..math.Round(self("invSpace")));
		
		if (self:GetData("equipped", true)) then
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Quality: "..Clockwork.Client:GetSharedVar("clothesQuality"..dataGroupName).."%\n- Is Wearing: Yes");
		else
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Quality: "..self:GetData("clothesQuality").."%\n- Is Wearing: No");
		end;

		local itemRarity = self:GetData("Rarity");
		if (itemRarity == 1) then
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Common", self:GetRarityColor());
		elseif (itemRarity == 2) then
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Uncommon", self:GetRarityColor());
		elseif (itemRarity == 3) then
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Rare", self:GetRarityColor());
		elseif (itemRarity == 4) then
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Unique", self:GetRarityColor());
		elseif (itemRarity == 5) then
			clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Legendary", self:GetRarityColor());
		end;

		local armor = self:GetData("armor");
		if (self:GetData("equipped", true)) then
			armor = Clockwork.Client:Armor();
		end;
		
		clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Armor: "..math.floor(armor));
		clientSideInfo = Clockwork.kernel:AddMarkupLine(clientSideInfo, "- Protection: "..math.floor(100 * self("protection")).."%");
		
		return (clientSideInfo != "" and clientSideInfo);
	end;
	
	--Entity E menu
	function ITEM:GetEntityMenuOptions(entity, options)
		if (!IsValid(entity)) then
			return;
		end;

		if (Clockwork.Client:IsSuperAdmin()) then
			options["AdminSewing"] = function()
				Clockwork.entity:ForceMenuOption(entity, "AdminSewing", nil);
			end;
		end;

		options["Sew"] = function()
			Clockwork.entity:ForceMenuOption(entity, "Sew", nil);
		end;
		
		if (Clockwork.Client:IsSuperAdmin()) then
			options["AdminRepairArmor"] = function()
				Clockwork.entity:ForceMenuOption(entity, "AdminRepairArmor", nil);
			end;
		end;

		options["Repair Armor"] = function()
			Clockwork.entity:ForceMenuOption(entity, "Repair Armor", nil);
		end;
	end;
end;

Clockwork.item:Register(ITEM);