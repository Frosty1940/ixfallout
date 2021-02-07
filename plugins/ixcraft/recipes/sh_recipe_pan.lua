
RECIPE.name = "Cooking pan"
RECIPE.description = "recipeCookingPanDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/mosi/fallout4/props/junk/pan.mdl"
RECIPE.requirements = {
	["pan"] = 1,
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
