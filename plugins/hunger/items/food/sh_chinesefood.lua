ITEM.name = "Chinese food"
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl"
ITEM.description = "itemChineseFoodDesc"
ITEM.price = 5
ITEM.hunger = 25
ITEM.radiation = 3

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	client:SetHealth(math.min(client:Health() + 5, client:GetMaxHealth()))
end)