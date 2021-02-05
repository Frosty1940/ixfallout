ITEM.name = "Large bag"
ITEM.description = "itemBagDesc"
ITEM.model = "models/vex/seventysix/backpacks/backpack_01.mdl"
ITEM.price = 750
ITEM.width = 1
ITEM.height = 1
ITEM.invWidth = 5
ITEM.invHeight = 4
ITEM.outfitCategory = "back"
ITEM.pacData = {
	[1] = {
		["children"] = {
			[1] = {
				["children"] = {
				},
				["self"] = {
					["Angles"] = Angle(180, 90, 90),
					["Position"] = Vector(1.7, 0.7, 0),
					["BoneMerge"] = false,
					["ClassName"] = "model",
					["UniqueID"] = "BAG_MODEL",
					["Bone"] = "spine 2",
					["Model"] = "models/vex/seventysix/backpacks/backpack_01.mdl",
				},
			},
		},
		["self"] = {
			["EditorExpand"] = true,
			["UniqueID"] = "BAG_PART",
			["ClassName"] = "group",
			["Name"] = "my outfit",
			["Description"] = "add parts to me!",
		},
	},
}