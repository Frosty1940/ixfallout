
RECIPE.name = "T-45d power armor"
RECIPE.description = "recipeT45DPowerArmorDesc"
RECIPE.category = "Armor"
RECIPE.model = "models/fallout_3/power_armor.mdl"
RECIPE.requirements = {
	["steel"] = 15,
	["glass"] = 1,
	["plastic"] = 3,
	["leather"] = 2,
	["fusioncore"] = 1
}
RECIPE.results = {
	["t45d_power_armor"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
