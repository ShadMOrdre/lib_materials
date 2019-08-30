

local S = lib_materials.intllib


	minetest.register_node("lib_materials:litter_rock", {
		description = S("Litter - Rock"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_rock.png"},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		drop = {
			max_items = 1,
			items = {
				{items = {"lib_materials:litter_rock"}},
				{items = {"lib_materials:tool_rock"}, rarity = 20},
			}
		},
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})
	
	minetest.register_node("lib_materials:litter_rocks", {
		description = S("Litter - Rocks"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_rocks.png"},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = 2.0,
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		drop = {
			max_items = 1,
			items = {
				{items = {"lib_materials:litter_rocks"}},
				{items = {"lib_materials:tool_rock"}, rarity = 20},
			}
		},
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})






	minetest.register_node("lib_materials:litter_tool_rock", {
		description = S("Litter - Rock Tool"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_rock.png"},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		drop = {
			max_items = 1,
			items = {
				{items = {"lib_materials:tool_rock"}},
				{items = {"lib_materials:tool_rock_chipper"}, rarity = 10},
				{items = {"lib_materials:tool_rock_biface"}, rarity = 10},
			}
		},
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})
	





	minetest.register_node("lib_materials:litter_stick", {
		description = S("Litter - Stick"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_stick.png"},
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = 2.0,
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {choppy = 1, snappy = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_wood_defaults(),
		drop = {
			max_items = 1,
			items = {
				{items = {"lib_materials:litter_stick"}},
				{items = {"lib_materials:tool_stick"}, rarity = 20},
				{items = {"lib_materials:tool_rod_wood"}, rarity = 20},
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
		decoration = "lib_materials:litter_rock",
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:litter_rocks",
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:litter_stick",
		sidelen = 80,
		place_on = {"group:soil", "group:leaves", "group:wood"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})





















