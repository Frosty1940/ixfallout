
RECIPE.name = "Electron charge pack"
RECIPE.description = "recipeElectronChargePackDesc2"
RECIPE.category = "Ammunition"
RECIPE.model = "models/maxibammo/electronchargepack.mdl"
RECIPE.requirements = {
	["fusioncore"] = 1
}
RECIPE.results = {
	["electronchargepack"] = 2
}

RECIPE:PostHook("OnCanCraft", function(recipeTable, client)
	for _, v in pairs(ents.FindByClass("ix_station_weaponsworkbench")) do
		if (client:GetPos():DistToSqr(v:GetPos()) < 100 * 100) then
			return true
		end
	end

	return false, L("noWorkbench")
end)
