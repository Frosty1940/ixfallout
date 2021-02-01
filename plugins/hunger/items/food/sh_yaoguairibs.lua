ITEM.name = "Yao guai ribs"
ITEM.model = "models/mosi/fallout4/props/food/yaoguairibs.mdl"
ITEM.description = "itemYaoGuaiRibsDesc"
ITEM.price = 90
ITEM.hunger = 100
ITEM.radiation = 5

ITEM:Hook("Eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")

	for i = 1, 5 do
		timer.Simple(i, function()
			client:SetHealth(math.Clamp(client:Health() + 2, 0, client:GetMaxHealth()))
		end)
	end
end)