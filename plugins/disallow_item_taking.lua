PLUGIN.name = "Disallow item taking"
PLUGIN.author = "github.com/John1344, Frosty"
PLUGIN.description = "Adds /disallowitemtaking command"

ix.lang.AddTable("english", {
	itemTakingDisallowed = "The item is now not took-able.",
	itemTakingAllowed = "The item is now took-able.",
	cannotTakeItem = "You cannot take this item. It is disallowed by admin."
})

ix.lang.AddTable("korean", {
	itemTakingDisallowed = "이제 이 아이템은 가져갈 수 없습니다.",
	itemTakingAllowed = "이제 이 아이템은 가져갈 수 있습니다.",
	cannotTakeItem = "당신은 이 아이템을 가져갈 수 없습니다. 관리자에 의해 비허용되었습니다."
})

ix.command.Add("DisallowItemTaking", {
	adminOnly = true,
	OnRun = function(self, client)
		local eyeTrace = client:GetEyeTrace().Entity

		if (eyeTrace:GetClass() == "ix_item") then
			local item = ix.item.instances[eyeTrace.ixItemID]

			if (item) then
				ix.item.instances[eyeTrace.ixItemID]:SetData("cannotTake", true)

				client:NotifyLocalized("itemTakingDisallowed")
				return
			end
		end

		client:Notify("Something went wrong")
	end
})

ix.command.Add("AllowItemTaking", {
	adminOnly = true,
	OnRun = function (self, client)
		local eyeTrace = client:GetEyeTrace().Entity

		if (eyeTrace:GetClass() == "ix_item") then
			local item = ix.item.instances[eyeTrace.ixItemID]

			if (item) then
				ix.item.instances[eyeTrace.ixItemID]:SetData("cannotTake", nil)

				client:NotifyLocalized("itemTakingAllowed")
				return
			end
		end

		client:Notify("Something went wrong")
	end
})

function PLUGIN:CanPlayerTakeItem(client, item)
	if (type(item) != "Entity") then
		if (item:GetData("cannotTake") == true) then
			client:NotifyLocalized("cannotTakeItem")

			return false
		end
	end
end
