

local S = lib_materials.intllib



minetest.register_tool("lib_materials:tool_club_stone", {
	description = S("Stone Club"),
	_doc_items_longdesc = S("Stone club for clubbing things."),
	_doc_items_usagehelp = S("Use this club to club."),
	image           = "lib_materials_tool_club_stone.png",
	inventory_image = "lib_materials_tool_club_stone.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_biface", {
	description = S("Tool - Biface Rock"),
	_doc_items_longdesc = S("Tool - Biface Rock."),
	_doc_items_usagehelp = S("Tool - Biface Rock. Used to carve sticks, and to craft stone tools."),
	image           = "lib_materials_tool_rock_biface.png",
	inventory_image = "lib_materials_tool_rock_biface.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_chipper", {
	description = S("Stone Chipper"),
	_doc_items_longdesc = S("Stone Chipper."),
	_doc_items_usagehelp = S("Stone Chipper."),
	image           = "lib_materials_tool_rock_chipper.png",
	inventory_image = "lib_materials_tool_rock_chipper.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_flint", {
	description = S("Flint"),
	_doc_items_longdesc = S("Flint."),
	_doc_items_usagehelp = S("Flint."),
	image           = "lib_materials_tool_rock_flint.png",
	inventory_image = "lib_materials_tool_rock_flint.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_large", {
	description = S("Tool - Large Rock"),
	_doc_items_longdesc = S("Tool - Large Rock."),
	_doc_items_usagehelp = S("Tool - Large Rock."),
	image           = "lib_materials_tool_rock_large.png",
	inventory_image = "lib_materials_tool_rock_large.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			chippy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			flakey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			knappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_pebble", {
	description = S("Tool - Pebble"),
	_doc_items_longdesc = S("Tool - Pebble."),
	_doc_items_usagehelp = S("Tool - Pebble."),
	image           = "lib_materials_tool_rock_pebble.png",
	inventory_image = "lib_materials_tool_rock_pebble.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			chippy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			flakey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			knappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_pebbles", {
	description = S("Tool - Pebbles"),
	_doc_items_longdesc = S("Tool - Pebbles."),
	_doc_items_usagehelp = S("Tool - Pebbles."),
	image           = "lib_materials_tool_rock_pebbles.png",
	inventory_image = "lib_materials_tool_rock_pebbles.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			chippy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			flakey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			knappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_pebbles_large", {
	description = S("Tool - Pebbles Large"),
	_doc_items_longdesc = S("Tool - Pebbles Large."),
	_doc_items_usagehelp = S("Tool - Pebbles Large."),
	image           = "lib_materials_tool_rock_pebbles_large.png",
	inventory_image = "lib_materials_tool_rock_pebbles_large.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			chippy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			flakey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			knappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

minetest.register_tool("lib_materials:tool_rock_small", {
	description = S("Tool - Small Rock"),
	_doc_items_longdesc = S("Tool - Small Rock."),
	_doc_items_usagehelp = S("Tool - Small Rock."),
	image           = "lib_materials_tool_rock_small.png",
	inventory_image = "lib_materials_tool_rock_small.png",
	
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
		-- about equal to a stone pick (it's not intended as a tool)
			diggy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			prying={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			pokey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			snappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			chippy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			flakey={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
			knappy={times={[2]=2.00, [3]=1.20}, uses=30, maxlevel=1},
		},
		damage_groups = {fleshy=6},
	}
})

