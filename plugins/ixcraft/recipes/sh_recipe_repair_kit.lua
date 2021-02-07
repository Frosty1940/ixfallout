
RECIPE.name = "Repair kit"
RECIPE.description = "recipeRepairToolsDesc"
RECIPE.category = "Consumables"
RECIPE.model = "models/clutter/toolbox.mdl"
RECIPE.requirements = {
	["steel"] = 2,
	["aluminium"] = 1,
	["plastic"] = 1,
}
RECIPE.results = {
	["repair_tools"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
