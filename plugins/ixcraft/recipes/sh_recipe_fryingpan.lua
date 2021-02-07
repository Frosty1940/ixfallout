
RECIPE.name = "Frying pan"
RECIPE.description = "recipeFryingPanDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/mosi/fallout4/props/junk/fryingpan.mdl"
RECIPE.requirements = {
	["fryingpan"] = 1,
}
RECIPE.results = {
	["steel"] = 2,
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
