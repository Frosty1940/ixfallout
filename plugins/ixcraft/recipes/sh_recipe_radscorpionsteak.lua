
RECIPE.name = "Radscorpion Steak"
RECIPE.description = "Cook a Radscorpion steak."
RECIPE.model = "models/mosi/fallout4/props/food/radscorpionsteak.mdl"
RECIPE.requirements = {
	["radscorpionmeat"] = 1
}
RECIPE.results = {
	["radscorpionsteak"] = 1
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_workbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
