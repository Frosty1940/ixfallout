ITEM.name = "Human flesh"
ITEM.model = "models/mosi/fallout4/props/food/humanmeat.mdl"
ITEM.description = "itemHumanMeatDesc"
ITEM.price = 0
ITEM.skin = 1
ITEM.hunger = 60
ITEM.radiation = 10

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	
	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 1, 0, client:GetMaxHealth()))
		end)
	end
end)