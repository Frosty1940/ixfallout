
RECIPE.name = "T-51b power armor"
RECIPE.description = "recipeT51BPowerArmorDesc"
RECIPE.category = "Armor"
RECIPE.model = "models/fallout_3/t51b.mdl"
RECIPE.requirements = {
	["steel"] = 10,
	["aluminium"] = 5,
	["glass"] = 1,
	["plastic"] = 3,
	["leather"] = 2,
	["fusioncore"] = 1
}
RECIPE.results = {
	["t51b_power_armor"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
