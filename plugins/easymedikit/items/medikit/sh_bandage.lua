ITEM.name = "Bandage"
ITEM.description = "bandageDesc"
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.price = 20
ITEM.healthPoint = 15 -- Health point that the player will get
ITEM.medAttr = 0 -- How much medical attribute the character needs
ITEM.bleeding = true
ITEM.fracture = false

ITEM:Hook("selfheal", function(item)
	local client = item.player
	client:EmitSound("physics/body/body_medium_scrape_rough_loop1.wav", 30)
end)

ITEM:Hook("heal", function(item)
	local client = item.player
	client:EmitSound("physics/body/body_medium_scrape_rough_loop1.wav", 30)
end)