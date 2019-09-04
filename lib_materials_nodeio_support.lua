-- add support for default mod

if minetest.get_modpath("default") then
	print("[Node IO] Support for default mod enabled")

	-- chest
	node_io.init_main_inventory("default:chest", true)
	node_io.init_main_inventory("default:chest_open", true)
	-- locked chest
	node_io.init_main_inventory("default:chest_locked", false)
	node_io.init_main_inventory("default:chest_locked_open", false)

	-- furnace
	node_io.init_furnace("default:furnace")
	node_io.init_furnace("default:furnace_active")
end
