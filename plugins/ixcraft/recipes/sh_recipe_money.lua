
RECIPE.name = "Pre-war money"
RECIPE.description = "recipeMetalDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/clutter/prewarmoney.mdl"
RECIPE.requirements = {
	["money"] = 1,
}
RECIPE.results = {
	["cloth"] = {["min"] = 1, ["max"] = 2}
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
