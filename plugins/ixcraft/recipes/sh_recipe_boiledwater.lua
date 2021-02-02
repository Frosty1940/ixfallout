
RECIPE.name = "Boiled water"
RECIPE.description = "recipeBoiledWaterDesc"
RECIPE.category = "Food"
RECIPE.model = "models/mosi/fallout4/props/drink/dirtywater.mdl"
RECIPE.requirements = {
	["dirtywater"] = 1,
	["wood"] = 1
}
RECIPE.results = {
	["boiledwater"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_cookingstation")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
