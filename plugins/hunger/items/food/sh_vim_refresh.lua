ITEM.name = "빔 리프레시!"
ITEM.model = "models/mosi/fallout4/props/drink/vim.mdl"
ITEM.description = "누카 콜라보다는 유명하지 않지만, 메인 주에서만큼은 최고로 인기 있었던 탄산 음료, 빔의 청사과맛 버전입니다."
ITEM.skin = 3
ITEM.price = 40
ITEM.thirst = 30
ITEM.category = "consumables"

ITEM:Hook("eat", function(item)
	local client = item.player
	
	client:EmitSound("ui/drink.wav")
	client:SetHealth(math.min(client:Health() + 5, client:GetMaxHealth()))
	client:RestoreStamina(20)
	client:GetCharacter():GiveMoney(1)
end)