--[[
	© 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local PLUGIN = PLUGIN;

Clockwork.kernel:IncludePrefixed("sv_plugin.lua");
Clockwork.kernel:IncludePrefixed("sv_hooks.lua");
Clockwork.kernel:IncludePrefixed("sh_schema.lua");
Clockwork.kernel:IncludePrefixed("cl_hooks.lua");

-- Called when the Clockwork shared variables are added.
function PLUGIN:ClockworkAddSharedVars(globalVars, playerVars)
	playerVars:Number("clothesQuality".."torso");
	playerVars:Number("maxClothesQuality".."torso");
	playerVars:Number("clothesQuality".."legs");
	playerVars:Number("maxClothesQuality".."legs");
	playerVars:Number("clothesQuality".."hands");
	playerVars:Number("maxClothesQuality".."hands");
	playerVars:Number("clothesQuality".."headgear");
	playerVars:Number("maxClothesQuality".."headgear");
	playerVars:Number("clothesQuality".."bag");
	playerVars:Number("maxClothesQuality".."bag");
	playerVars:Number("clothesQuality".."glasses");
	playerVars:Number("maxClothesQuality".."glasses");
	playerVars:Number("clothesQuality".."satchel");
	playerVars:Number("maxClothesQuality".."satchel");
	playerVars:Number("clothesQuality".."pouch");
	playerVars:Number("maxClothesQuality".."pouch");
	playerVars:Number("clothesQuality".."badge");
	playerVars:Number("maxClothesQuality".."badge");
	playerVars:Number("clothesQuality".."armbands");
	playerVars:Number("maxClothesQuality".."armbands");
	playerVars:Number("clothesQuality".."headstrap");
	playerVars:Number("maxClothesQuality".."headstrap");
	playerVars:Number("clothesQuality".."kevlar");
	playerVars:Number("maxClothesQuality".."kevlar");
	playerVars:Bool("isConcealed");
	playerVars:Bool("hasGasmask");
end;