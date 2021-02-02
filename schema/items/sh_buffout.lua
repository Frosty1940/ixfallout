ITEM.name = "Buffout"
ITEM.model = "models/mosi/fallout4/props/aid/buffout.mdl"
ITEM.description = "itemBuffoutDesc"
ITEM.price = 20
ITEM.category = "Medical"

ITEM.functions.Dose = {
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		local intMult = ix.config.Add("intelligenceMultiplier", 0.5)
		local str = character:GetAttribute("str", 0)
			
		client:EmitSound("ui/eating_mentats.wav")

		character:AddBoost("buffout", "str", 2 + int * intMult)

		timer.Simple(120, function()
			if client and character and client:Alive() then
				client:EmitSound("ui/addicteds.wav")
				client:NotifyLocalized("itemBuffoutEffectsEnded")
				character:RemoveBoost("buffout", "str")
			end
		end)
	end
}