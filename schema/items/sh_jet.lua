ITEM.name = "Jet"
ITEM.model = "models/mosi/fallout4/props/aid/jet.mdl"
ITEM.description = "itemJetDesc"
ITEM.price = 20
ITEM.category = "Medical"

ITEM.functions.Inhale = {
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local agi = character:GetAttribute("agi", 0)
			
		client:EmitSound("ui/using_jet.wav")
		client:RestoreStamina(math.min(30 + int, 100))
		character:SetAttrib("agi", agi + 0.2)
	end
}