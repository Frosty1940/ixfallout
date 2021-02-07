
RECIPE.name = "Jangles the Moon Monkey"
RECIPE.description = "recipeJanglesDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/mosi/fallout4/props/junk/jangles.mdl"
RECIPE.requirements = {
	["jangles"] = 1,
}
RECIPE.results = {
	["cloth"] = 3,
	["plastic"] = 1,
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
