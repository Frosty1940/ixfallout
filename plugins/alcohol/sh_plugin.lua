PLUGIN.name = "Alcohol"
PLUGIN.author = "AleXXX_007, Frosty"
PLUGIN.description = "Adds alcohol with effects."

ix.lang.AddTable("english", {
	drink = "Drink",
})
ix.lang.AddTable("korean", {
	drink = "마시기",
})

function PLUGIN:Drunk(client)
	local endurance = client:GetCharacter():GetAttribute("end")
	local strength = client:GetCharacter():GetAttribute("str")
	
	if endurance == nil then
		endurance = 0
	end
	
	if strength then
		client:GetCharacter():SetAttrib("str", strength + 3)
	end
	
	client:SetLocalVar("drunk", client:GetLocalVar("drunk") + client:GetCharacter():GetData("drunk"))
	
	if client:GetLocalVar("drunk") > 100 then
		local unctime = (client:GetLocalVar("drunk") - 100) * 7.5
		client:ConCommand("say /fallover ".. unctime .."")
	end
	
	timer.Create("drunk", 5, 0, function()
		client:SetLocalVar("drunk", client:GetLocalVar("drunk") - 1)
		client:GetCharacter():SetData("drunk", client:GetLocalVar("drunk"))
		if client:GetCharacter():GetData("drunk") == 0 then
			if strength then
				client:GetCharacter():SetAttrib("str", strength)
			end
			
			timer.Remove("drunk")
		end
	end)
end

if (SERVER) then
	function PLUGIN:PostPlayerLoadout(client)
		client:SetLocalVar("drunk", 0)
		client:GetCharacter():SetData("drunk", 0)
	end
	
	function PLUGIN:PlayerDeath(client)
		client:SetLocalVar("drunk", 0)
		client:GetCharacter():SetData("drunk", 0)
	end
end

if (CLIENT) then
	function PLUGIN:RenderScreenspaceEffects()
		
		local default = {}
		default["$pp_colour_addr"] = 0
		default["$pp_colour_addg"] = 0
		default["$pp_colour_addb"] = 0
		default["$pp_colour_brightness"] = 0
		default["$pp_colour_contrast"] = 1
		default["$pp_colour_colour"] = 0.90
		default["$pp_colour_mulr"] = 0
		default["$pp_colour_mulg"] = 0
		default["$pp_colour_mulb"] = 0

		local a = LocalPlayer():GetLocalVar("drunk")
		
		if a == nil then
			a = 0
		end
		
		if (a > 20) then
			local value = (LocalPlayer():GetLocalVar("drunk"))*0.01
			DrawMotionBlur( 0.2, value, 0.05 )
		else
			DrawColorModify(default)
		end
	end
end