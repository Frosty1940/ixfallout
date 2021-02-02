
RECIPE.name = "Scrap metal"
RECIPE.description = "recipeMetalDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/clutter/scrapmetal.mdl"
RECIPE.requirements = {
	["metal"] = 1,
}
RECIPE.results = {
	["steel"] = 1
	["aluminium"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
