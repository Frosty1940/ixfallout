PLUGIN.name = "Add money"
PLUGIN.author = "github.com/John1344, Frosty"
PLUGIN.desc = "Adds /CharAddMoney command"

ix.lang.AddTable("english", {
	cmdCharAddMoney = "Adds the specified amount of money of someone.",
	addMoney = "You have added %s into %s's money.",
})

ix.lang.AddTable("korean", {
	cmdCharAddMoney = "캐릭터의 소지금을 더합니다.",
	addMoney = "당신은 %s을(를) %s님의 돈에 더하였습니다.",
})

ix.command.Add("CharAdd" .. MONEY_NAME, {
	alias = {"CharAddMoney"},
	description = "@cmdCharAddMoney",
	adminOnly = true,
	arguments = {
		ix.type.character,
		ix.type.number
	},
	OnRun = function(self, client, target, amount)
		amount = math.Round(amount)

		if (amount <= 0) then
			return "@invalidArg", 2
		end

		target:GiveMoney(amount)
		client:NotifyLocalized("addMoney", ix.currency.Get(amount), target:GetName())
	end
})