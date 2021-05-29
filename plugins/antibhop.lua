PLUGIN.Name = "AntiBhop"
PLUGIN.Author = "Duck -> Dobytchick"
PLUGIN.Description = "Ported from clockwork"

ix.config.Add("jumpStamina", ix.config.Get("jumpStamina", 20), "How much stamina jumps use up.", nil, {
	data = {min = 0, max = 100},
	category = "characters"
})

if SERVER then
	util.AddNetworkString( "Jump" )
	net.Receive("Jump",function(len,client)
		local endurance = client:GetCharacter():GetAttribute("end", 0)
		client:SetLocalVar("stm", math.Clamp(client:GetLocalVar("stm",0) - ix.config.Get("jumpStamina", 20) + endurance, 1, 100))
	end)
end

function PLUGIN:PlayerBindPress(client, bind, pressed)
	if pressed and string.find(bind:lower(), "+jump") and IsValid(client) and client:Alive() and client:GetCharacter() and client:GetMoveType() == MOVETYPE_WALK and client:OnGround() then
		if (client:GetLocalVar("stm",0) < 5) then return true end
		net.Start("Jump")
		net.SendToServer()
	end
end