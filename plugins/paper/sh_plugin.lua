local PLUGIN = PLUGIN
PLUGIN.name = "Paper"
PLUGIN.author = "Subleader"
PLUGIN.desc = "Adds paper into the game that you can write on and edit. Reworked completely working without entity."
PAPERLIMIT = 3000

ix.lang.AddTable("english", {
	paperDesc = "A paper which one you can write on.",
})
ix.lang.AddTable("korean", {
	["Paper"] = "종이",
	paperDesc = "글씨를 쓸 수 있는 종이입니다.",
	["Lire"] = "읽기",
})

if (CLIENT) then
	netstream.Hook("receivePaper", function(id, contents)
		local paper = vgui.Create("paperRead")
		paper:setText(contents, id)
	end)
else
	netstream.Hook("paperSendText", function(client, id, contents)
		if (string.len(contents) <= PAPERLIMIT) then
			local char = client:GetCharacter()
			local inv = char:GetInventory()
			local items = inv:GetItems()
			for k, v in pairs(items) do
				if (v:GetID() == id) then
					client:Notify("You have written something!")
					v:SetData("PaperData", contents)
				end
			end
			for k, v in pairs(ents.GetAll()) do
				if v:GetClass() == "ix_item" then
					local itemID = v.ixItemID
					local item = ix.item.instances[itemID]
					if (itemID == id) then
						client:Notify("You have written something!")
						item:SetData("PaperData", contents)
					end
				end
			end
		end
	end)
end