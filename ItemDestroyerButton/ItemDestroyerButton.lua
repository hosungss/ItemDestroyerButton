for i=1, STATICPOPUP_NUMDIALOGS do
	local e = _G["StaticPopup"..i.."EditBox"];
	local f = CreateFrame("Button", "$parentDelete", e, "StaticPopupButtonTemplate");
	f:SetSize(62, 21); f:SetPoint("Left","$parent","Right", 10,0);
	f:SetText(DELETE_ITEM_CONFIRM_STRING);
	f:SetScript("OnClick", function()
		e:SetText(DELETE_ITEM_CONFIRM_STRING)
	end)
	e:SetScript("OnShow", function()
	if e:GetParent().which == "DELETE_GOOD_ITEM" then
		f:Show()
	else
		f:Hide()
	end
 end)
end