ITEM.name = "T-45d 파워 아머\n(BOS 아웃캐스트)"
ITEM.description = "대전쟁 중 미군이 전차 대용으로 개발한 강화복인 T-45d 파워 아머입니다.\n브라더후드 오브 스틸 아웃캐스트 도색이 되어 있습니다."
ITEM.model = "models/mosi/fallout4/props/fortifications/vaultcrate04.mdl"
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	pos = Vector(409.7919921875, 344.36294555664, 269),
	ang = Angle(25, 220, 0),
	fov = 8.5
}
ITEM.exRender = true
ITEM.armorAmount = 200
ITEM.price = 5800
ITEM.gasmask = false -- It will protect you from bad air
ITEM.resistance = true -- This will activate the protection bellow
ITEM.damage = { -- It is scaled; so 100 damage * 0.8 will makes the damage be 80.
			0.52, -- Bullets
			0.52, -- Slash
			0.52, -- Shock
			0.52, -- Burn
			0.9, -- Radiation
			1, -- Acid
			0.52, -- Explosion
}
ITEM.replacements = "models/fallout_3/power_armor_outcast.mdl"

ITEM.maxDurability = 1075
