
RECIPE.name = "Camera"
RECIPE.description = "recipeCameraDesc"
RECIPE.category = "Scrap"
RECIPE.model = "models/mosi/fallout4/props/junk/camera.mdl"
RECIPE.requirements = {
	["camera"] = 1,
}
RECIPE.results = {
	["metal"] = 1,
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
