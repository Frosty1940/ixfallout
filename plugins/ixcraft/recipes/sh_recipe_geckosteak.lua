
RECIPE.name = "Gecko steak"
RECIPE.description = "recipeGeckoSteakDesc"
RECIPE.category = "Food"
RECIPE.model = "models/mosi/fallout4/props/food/radroachsteak.mdl"
RECIPE.requirements = {
	["geckomeat"] = 1
}
RECIPE.results = {
	["geckosteak"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_cookingstation")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
