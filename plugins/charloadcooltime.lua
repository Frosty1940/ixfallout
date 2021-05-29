local PLUGIN = PLUGIN
PLUGIN.author = "Round"
PLUGIN.name = "Character Cooltime"

ix.config.Add("charCooltime", ix.config.Get("charCooltime", 60), "How much should time passed by for changing characters?", nil, {
	data = {min = 0, max = 300},
	category = "characters"
})

ix.lang.AddTable("english", {
	charCooltimeNotify = "You must wait %s second(s) until to be allowed to changing characters.",
	charDeathtimeNotify = "You must wait to respawn until to be allowed to changing characters.",
})
ix.lang.AddTable("korean", {
	charCooltimeNotify = "캐릭터를 다시 변경하려면 %s초 더 기다려야 합니다.",
	charDeathtimeNotify = "캐릭터를 다시 변경하려면 부활할 때까지 기다려야 합니다.",
})

function PLUGIN:CanPlayerUseCharacter(client, character)
	if client:IsAdmin() then return end

	client.lastCharSwitch = client.lastCharSwitch or 0

	local deltaT = CurTime() - client.lastCharSwitch
	local cooldown = ix.config.Get("charCooltime")

	if (deltaT < cooldown) or !client:Alive() then
		if !client:Alive() then
			client:NotifyLocalized("charDeathtimeNotify")
			return false
		else
			client:NotifyLocalized("charCooltimeNotify", cooldown - deltaT)
			return false
		end
	end

	client.lastCharSwitch = CurTime()
end