

local S = lib_materials.intllib


	minetest.register_node("lib_materials:ground_pebble", {
		description = S("Ground - Pebble"),
		drawtype = "nodebox",
		waving = 1,
		tiles = {"lib_materials_ground_pebble.png"},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		buildable_to = true,
		stack_max = 99,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		drop = {
			max_items = 1,
			items = {
				{items = {"lib_materials:tool_rock_large"}},
				{items = {"lib_materials:tool_rock_small"}},
				{items = {"lib_materials:tool_rock_chipper"}, rarity = 20},
				{items = {"lib_materials:tool_rock_flint"}, rarity = 20},
			}
		},
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})
	
	minetest.register_node("lib_materials:ground_pebbles_large", {
		description = S("Ground - Pebbles Large"),
		drawtype = "nodebox",
		waving = 1,
		tiles = {"lib_materials_ground_pebbles_large.png"},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		buildable_to = true,
		stack_max = 99,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		drop = {
			max_items = 1,
			items = {
				{items = {"lib_materials:tool_rock_large"}},
				{items = {"lib_materials:tool_rock_small"}},
				{items = {"lib_materials:tool_rock_chipper"}, rarity = 20},
				{items = {"lib_materials:tool_rock_flint"}, rarity = 20},
			}
		},
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})
	

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:ground_pebble",
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:ground_pebbles_large",
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

