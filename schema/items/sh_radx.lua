ITEM.name = "라드-X"
ITEM.model = "models/mosi/fallout4/props/aid/radx.mdl"
ITEM.description = "신체의 방사능 저항력을 일정 시간 동안 급격히 향상시키는 약품입니다.\n2분간 방사능 증감 없이 그대로 멈춥니다."
ITEM.price = 20
ITEM.category = "Medical"

ITEM.functions.Apply = {
	name = "복용하기",
	OnRun = function(item)
		local client = item.player
		local character = client:GetCharacter()
		local radiation = character:GetData("radiation", 0)
		local int = character:GetAttribute("int", 0)
		
		client:EmitSound("ui/eating_mentats.wav")
		character:SetAttrib("int", int + 0.2)
		
		for i = 1, 120 + int do
			timer.Simple( 1 + i, function()
				if client and character and client:Alive() then
					client:SetRadiation(math.Clamp(radiation - int, 0, 100))
				end
			end)
		end
		
		timer.Simple( 121, function()
			if client and character and client:Alive() then
				client:EmitSound("ui/addicteds.wav")
				client:Notify("라드-X의 효과가 사라졌습니다.")
			end
		end)
	end
}