
RECIPE.name = "Metal armor"
RECIPE.description = "recipeMetalArmorDesc"
RECIPE.category = "Armor"
RECIPE.model = "models/player/neutral/hub/metalarmour_mk1_male_01.mdl"
RECIPE.requirements = {
	["steel"] = 10
}
RECIPE.results = {
	["metal_armor"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
