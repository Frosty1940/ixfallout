
RECIPE.name = "Brahmin steak"
RECIPE.description = "Cook a Brahmin steak."
RECIPE.model = "models/mosi/fallout4/props/food/steak.mdl"
RECIPE.requirements = {
	["brahminmeat"] = 1
}
RECIPE.results = {
	["brahminsteak"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
