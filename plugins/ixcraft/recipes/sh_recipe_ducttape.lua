
RECIPE.name = "Duct tape"
RECIPE.description = "recipeDuctTapeDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/mosi/fallout4/props/junk/ducttape.mdl"
RECIPE.requirements = {
	["ducttape"] = 1,
}
RECIPE.results = {
	["adhesive"] = 1,
	["cloth"] = 1,
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
