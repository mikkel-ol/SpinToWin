local frame = CreateFrame("FRAME", "SpinToWinFrame");

local isHandled = false

frame:RegisterUnitEvent("UNIT_AURA", "player");

local function eventHandler(self, event, ...)
	if AuraUtil.FindAuraByName("Bladestorm", "player") then
		if isHandled then 
			-- do nothing
		else
			SendChatMessage("I'm spinning!", "YELL");
			SendChatMessage("Pull them into me!", "YELL");
			isHandled = true
		end
	else
		isHandled = false
	end
end


frame:SetScript("OnEvent", eventHandler);