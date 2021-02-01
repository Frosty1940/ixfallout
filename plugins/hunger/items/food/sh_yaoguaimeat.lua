ITEM.name = "Yao guai meat"
ITEM.model = "models/mosi/fallout4/props/food/yaoguairibs.mdl"
ITEM.description = "itemYaoGuaiMeatDesc"
ITEM.price = 30
ITEM.hunger = 80
ITEM.radiation = 9

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)