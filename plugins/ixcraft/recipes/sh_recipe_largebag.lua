
RECIPE.name = "Large bag"
RECIPE.description = "recipeLargeBagDesc"
RECIPE.category = "Armor"
RECIPE.model = "models/vex/seventysix/backpacks/backpack_01.mdl"
RECIPE.requirements = {
	["leather"] = 20,
	["adhesive"] = 7,
	["steel"] = 1,
}
RECIPE.results = {
	["bag"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
