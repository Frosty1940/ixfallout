ITEM.name = "Dog meat"
ITEM.model = "models/mosi/fallout4/props/food/dogmeat.mdl"
ITEM.description = "itemDogMeatDesc"
ITEM.price = 4
ITEM.hunger = 35
ITEM.radiation = 3

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	client:SetHealth(math.min(client:Health() + 5, client:GetMaxHealth()))
end)