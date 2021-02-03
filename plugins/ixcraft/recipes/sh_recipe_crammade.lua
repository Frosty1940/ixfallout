
RECIPE.name = "Cram"
RECIPE.description = "recipeCramMadeDesc"
RECIPE.category = "Food"
RECIPE.model = "models/mosi/fallout4/props/food/cram.mdl"
RECIPE.requirements = {
	["brahminmeat"] = 1,
	["dogmeat"] = 1,
	["steel"] = 1
}
RECIPE.results = {
	["cram"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_chemistrystation")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
