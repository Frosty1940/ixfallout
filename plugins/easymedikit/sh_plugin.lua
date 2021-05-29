local PLUGIN = PLUGIN
PLUGIN.name = "Easy Medikit"
PLUGIN.description = "A small base of medical kit (Heal yourself, heal others, works with medical attribute)"
PLUGIN.author = "Subleader, Frosty"

do
	ix.char.RegisterVar("bleeding", {
		field = "bleeding",
		fieldType = ix.type.bool,
		default = false,
		isLocal = true,
		bNoDisplay = true
	})

	ix.char.RegisterVar("fracture", {
		field = "fracture",
		fieldType = ix.type.bool,
		default = false,
		isLocal = true,
		bNoDisplay = true
	})
end

ix.util.Include("sv_hooks.lua", "server")