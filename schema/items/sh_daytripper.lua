ITEM.name = "Day Tripper"
ITEM.model = "models/mosi/fallout4/props/aid/buffout.mdl"
ITEM.description = "itemBuffoutDesc"
ITEM.price = 40
ITEM.category = "Medical"

ITEM.functions.Dose = {
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		local intMult = ix.config.Add("intelligenceMultiplier", 0.5)
		local lck = character:GetAttribute("lck", 0)
		local str = character:GetAttribute("str", 0)
			
		client:EmitSound("ui/eating_mentats.wav")

		character:AddBoost("daytripper", "lck", 3 + int * intMult)
		character:AddBoost("daytripper", "str", -2 + int * intMult)

		timer.Simple(120, function()
			if client and character and client:Alive() then
				client:EmitSound("ui/addicteds.wav")
				client:NotifyLocalized("itemDayTripperEffectsEnded")
				character:RemoveBoost("daytripper", "lck")
				character:RemoveBoost("daytripper", "str")
			end
		end)
	end
}