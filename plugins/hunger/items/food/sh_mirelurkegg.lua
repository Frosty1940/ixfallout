ITEM.name = "마이얼럭 알"
ITEM.model = "models/mosi/fallout4/props/food/mirelurkegg.mdl"
ITEM.description = "황무지의 물가에서 흔하게 볼 수 있는 게와 유사한 생물인 마이얼럭의 알입니다."
ITEM.price = 0
ITEM.hunger = 9
ITEM.thirst = 20
ITEM.radiation = 12
ITEM.category = "consumables"

ITEM:Hook("eat", function(item)
	local client = item.player
	
	client:EmitSound("npc/barnacle/barnacle_gulp2.wav")
	client:SetHealth(math.min(client:Health() + 5, client:GetMaxHealth()))
end)