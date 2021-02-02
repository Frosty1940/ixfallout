ITEM.name = "Medikit"
ITEM.description = "A Medikit Base."
ITEM.category = "Medical"
ITEM.model = "models/Gibs/HGIBS.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.healthPoint = 0
ITEM.medAttr = 0
ITEM.bleeding = false
ITEM.fracture = true
ITEM.fractureChance = 30

function ITEM:GetDescription()
	return (L(self.description) .. L("itemMedkitDesc01") .. self.medAttr .. L("itemMedkitDesc02") .. self.healthPoint)
end

ITEM.functions.selfheal = {
	icon = "icon16/pill.png",
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		local lck = character:GetAttribute("lck", 0)
		local lckMult = ix.config.Get("luckMultiplier", 1)
		if int >= itemTable.medAttr then
			client:SetNWBool("Bleeding",false)
			client:SetNetworkedFloat("NextBandageuse", 2 + CurTime())
			client:SetHealth(math.min(client:Health() + itemTable.healthPoint + int, client:GetMaxHealth()))

			if itemTable.bleeding then
				ix.Wounds:RemoveBleeding(client)
			end

			if itemTable.fracture then
				local chance = itemTable.fractureChance + int + lck * lckMult
				if (math.random(100) < itemTable.fractureChance + int + lck * lckMult) then
					ix.Wounds:RemoveFracture(client)
				end
			end
		else
			client:NotifyLocalized("lackKnowledge")
			return false
		end
	end
}
ITEM.functions.heal = {
	icon = "icon16/pill.png",
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()
		local int = character:GetAttribute("int", 0)
		local lck = character:GetAttribute("lck", 0)
		local lckMult = ix.config.Get("luckMultiplier", 1)
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
		local trace = util.TraceLine(data)
		local entity = trace.Entity

		-- Check if the entity is a valid door.
		if (IsValid(entity) and entity:IsPlayer()) then
			if int >= itemTable.medAttr then
				entity:SetNWBool("Bleeding",false)
				entity:SetNetworkedFloat("NextBandageuse", 2 + CurTime())
				entity:SetHealth(math.min(client:Health() + itemTable.healthPoint + int, entity:GetMaxHealth()))

				if itemTable.bleeding then
					ix.Wounds:RemoveBleeding(entity)
				end

				if itemTable.fracture then
					local chance = itemTable.fractureChance + int + lck * lckMult
					if (math.random(100) < itemTable.fractureChance + int + lck * lckMult) then
						ix.Wounds:RemoveFracture(entity)
					end
				end
			else
				client:NotifyLocalized("lackKnowledge")
				return false
			end
		else
			client:NotifyLocalized("cNotValid")
			return false
		end
	end
}