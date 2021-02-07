
RECIPE.name = "Gas canister"
RECIPE.description = "recipeGasCanisterDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/mosi/fallout4/props/junk/gasolinecanister.mdl"
RECIPE.requirements = {
	["gascan"] = 1,
}
RECIPE.results = {
	["oil"] = 1,
	["steel"] = 3,
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
