local PLUGIN = PLUGIN
PLUGIN.name = "NPC Spawner"
PLUGIN.author = "Black Tea (NS 1.0), Neon (NS 1.1), Port to helix by B4tr1p"
PLUGIN.desc = "An NPC spawning system."
PLUGIN.spawnpoints = PLUGIN.spawnpoints or {}

ix.lang.AddTable("english", {
	itemspawner = "NPC Spawner",
})

ix.lang.AddTable("korean", {
	itemspawner = "NPC 스포너",
})

ix.config.Add("spawner_enabled", true, "Whether NPC spawners are on or not.", nil, {
	category = "NPC Spawner"
})

ix.config.Add("npc_spawnrate", 90, "How often an npc will be spawned at an npc spawn point.", nil, {
	data = {min = 1, max = 84600},
	category = "NPC Spawner"
})

PLUGIN.spawngroups = {
	["default"] = {
		"Feral Ghoul",
	},
	["feral_dog"] = {
		"vj_fallout_dog",
	},
	["feral_ghoul"] = {
		"Feral Ghoul",
	},
	["feral_goul_elite"] = {
		"Feral Ghoul",
		"Feral Ghoul Reaver",
		"Feral Ghoul Roamer",
		"Glowing One",
		--"Feral Trooper Ghoul",
		--"Glowing Feral Trooper Ghoul",
	},
	["radroach"] = {
		"vj_fallout_roach",
	},
	["radscorpion"] = {
		"vj_fallout_scorps",
	},
	["molerat"] = {
		"vj_fallout_molerat",
	},
	["yao_gui"] = {
		"vj_fallout_yaoguai",
	},
	["mirelurk"] = {
		"vj_fallout_mirelurks",
	},
	["bloatfly"] = {
		"vj_fallout_bloatfly",
	},
	["deathclaw"] = {
		"Deathclaw",
	}
}

PLUGIN.maxnpcs = 40
PLUGIN.spawnedNPCs = PLUGIN.spawnedNPCs or {}

if SERVER then
	local spawntime = 1
	
	function PLUGIN:Think()
		if spawntime > CurTime() then return end
		spawntime = CurTime() + ix.config.Get("npc_spawnrate", 90)
		for k, v in ipairs(self.spawnedNPCs) do
			if (!v:IsValid()) then
				table.remove(self.spawnedNPCs, k)
			end
		end

		if #self.spawnedNPCs >= self.maxnpcs then return end

		local v = table.Random(self.spawnpoints)

		if(!ix.config.Get("spawner_enabled", false)) then
			return
		end
		
		if (!v) then
			return
		end

		local data = {}
		data.start = v[1]
		data.endpos = data.start + Vector(0, 0, 1)
		data.filter = client
		data.mins = Vector(-16, -16, 0)
		data.maxs = Vector(16, 16, 16)

		local idat = table.Random(self.spawngroups[v[2]]) or self.spawngroup["default"]

		--nut.item.spawn(idat, v[1] + Vector( math.Rand(-8,8), math.Rand(-8,8), 20 ), nil, AngleRand())
			
		local trace = util.TraceHull(data)

		
		local nearby = false 
		local players = player.GetAll()
		
		--dont want to spawn them in too close to players
		
		
		if (!nearby and !trace.Entity:IsValid()) then --dont want the npcs to stack on each other or spawn inside something.
			local ent = ents.Create(idat)
			
			table.insert(self.spawnedNPCs, ent)
				
			if (ent:IsValid()) then
				ent:SetPos(data.endpos + Vector(0,0,25))
				ent:Spawn()
			end
		end
	end

	function PLUGIN:LoadData()
		self.spawnpoints = self:GetData() or {}
	end

	function PLUGIN:SaveData()
		self:SetData(self.spawnpoints)
	end

else

	netstream.Hook("ix_DisplaySpawnPoints", function(data)
		for k, v in pairs(data) do
			local emitter = ParticleEmitter( v[1] )
			local smoke = emitter:Add( "sprites/glow04_noz", v[1] )
			smoke:SetVelocity( Vector( 0, 0, 1 ) )
			smoke:SetDieTime(10)
			smoke:SetStartAlpha(255)
			smoke:SetEndAlpha(255)
			smoke:SetStartSize(64)
			smoke:SetEndSize(64)
			smoke:SetColor(255,50,50)
			smoke:SetAirResistance(300)
		end
	end)

end

ix.command.Add("npcspawnadd", {
	adminOnly = true,
	syntax = "<string npcgroup>",
	arguments = {ix.type.text},
	OnRun = function(self, client, npcgroup)
		local trace = client:GetEyeTraceNoCursor()
		local hitpos = trace.HitPos + trace.HitNormal*5
		local spawngroup = npcgroup or "default"
		table.insert(PLUGIN.spawnpoints, { hitpos, spawngroup })
		client:Notify("You added ".. spawngroup .. " npc spawner.")
	end 
})

ix.command.Add("npcspawnremove", {
	adminOnly = true,
	OnRun = function(self, client, arguments)
		local trace = client:GetEyeTraceNoCursor()
		local hitpos = trace.HitPos + trace.HitNormal*5
		local range = arguments[1] or 128
		local mt = 0
		for k, v in pairs( PLUGIN.spawnpoints ) do
			local distance = v[1]:DistToSqr(hitpos)
			if distance <= tonumber(range) * tonumber(range) then
				PLUGIN.spawnpoints[k] = nil
				mt = mt + 1
			end
		end
		client:Notify(mt .. " npc spawners has been removed.")
	end
})

ix.command.Add("NPCSpawnDisplay", {
	adminOnly = true,
	OnRun = function(self, client, arguments)
		if SERVER then
			netstream.Start(client, "ix_DisplaySpawnPoints", PLUGIN.spawnpoints)
			client:Notify("Displayed All Points for 10 secs.")
		end
	end
})

ix.command.Add("NPCSpawnToggle", {
	adminOnly = true,
	OnRun = function(self, client, arguments)
		if(ix.config.Get("spawner_enabled", false)) then
			ix.config.Set("spawner_enabled", false)
			client:Notify("NPC Spawners have been turned off.")
		else
			ix.config.Set("spawner_enabled", true)
			client:Notify("NPC Spawners have been turned on.")
		end
	end
})