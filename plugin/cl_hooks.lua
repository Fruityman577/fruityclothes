local Clockwork = Clockwork;

local PLUGIN = PLUGIN;

function PLUGIN:GetTargetPlayerText(player, targetPlayerText)
	local bConcealed = player:GetSharedVar("isConcealed");

	if (bConcealed and !Clockwork.player:DoesRecognise(player, RECOGNISE_PARTIAL)) then
		targetPlayerText:Add("CONCEALED", "This person's identity is concealed.");
	end;
end;

function PLUGIN:DestroyTargetPlayerText(player, targetPlayerText)
	local bConcealed = player:GetSharedVar("isConcealed");

	if (bConcealed and !Clockwork.player:DoesRecognise(player, RECOGNISE_PARTIAL)) then
		targetPlayerText:Destroy("PHYSDESC");
	end;
end;