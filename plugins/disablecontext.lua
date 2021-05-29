PLUGIN.name = "Disable Context Menu"
PLUGIN.author = "Frosty"
PLUGIN.description = "Disables context menu."

ix.config.Add("disableContext", true, "Whether or not context menu is enabled.", nil, {
	category = "appearance"
})

if ix.config.Get("disableContext", true) then
	function PLUGIN:ContextMenuOpen()
		return LocalPlayer():IsAdmin()
	end
end