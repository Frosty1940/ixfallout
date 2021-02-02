ITEM.name = "Mentats"
ITEM.model = "models/mosi/fallout4/props/aid/mentats.mdl"
ITEM.description = "itemBuffoutDesc"
ITEM.price = 20
ITEM.category = "Medical"

ITEM.functions.Dose = {
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
			
		client:EmitSound("ui/eating_mentats.wav")

		character:AddBoost("mentats", "int", 5)

		timer.Simple(120, function()
			if client and character and client:Alive() then
				client:EmitSound("ui/addicteds.wav")
				client:NotifyLocalized("itemMentatsEffectsEnded")
				character:RemoveBoost("mentats", "int")
			end
		end)
	end
}