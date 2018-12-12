

local S = lib_materials.gettext

--[[

	Includes nodes from Technic, Mapgen, Stone, Darkage, Valleys_c, and others.
	
	stone_brown and stone_sand are creations of Steven G. Merchant (aka Shad MOrdre -- shadmordre@minetest.net or shadmordre@gmail.com) copyright 2016

--]]


lib_materials.register_stone = function(name, desc, texture, crackyness, level)

	minetest.register_node("lib_materials:stone_"..name.."", {
		description = S("Stone - "..desc..""),
		tiles = {texture},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:'..name..'',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})

	--minetest.after(3, lib_architecture.register_nodes, name, desc, texture, "lib_materials:stone_"..name, default.node_sound_stone_defaults())
	--lib_architecture.register_nodes(name, desc, texture, "lib_materials:"..name.."", default.node_sound_stone_defaults())
	
	-- natural_slopes.register_slope("lib_materials:"..name.."", {
		-- groups = {cracky = 3, stone = 1, level = 2},
		-- tiles = {texture},
		-- description = ""..desc.." slope",
		-- sounds = default.node_sound_stone_defaults()({footstep = {['name'] = "default_grass_footstep", ['gain'] = 0.25},})
		-- },
		-- 1
	-- )


end


	lib_materials.register_stone("travertine", "Travertine", "rocks_trav.png", 3, 1)


--CUSTOM

	minetest.register_node("lib_materials:stone_brown_angled", {
		description = S("Stone - Brown Angled"),
		drawtype = "nodebox",
		tiles = {"lib_materials_stone_brown.png"},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		legacy_mineral = true,
		connects_to = { "group:wall", "group:stone", "group:lib_architecture", "group:lib_doors", "group:lib_fences", "group:lib_general", "group:lib_lights"},
		groups = {cracky = 3, stone = 1, level = 2},
		sounds = default.node_sound_stone_defaults(),
		node_box = {
			type = "connected",
			fixed = {
				{-0.01, -0.01, -0.01, 0.01, 0.01, 0.01},
			},
			connect_front = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, -0.375},
				{-0.375, -0.375, -0.375, 0.375, 0.375, -0.25},
				{-0.25, -0.25, -0.25, 0.25, 0.25, -0.125},
				{-0.125, -0.125, -0.125, 0.125, 0.125, 0},
			},
			connect_back = {
				{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
				{-0.375, -0.375, 0.25, 0.375, 0.375, 0.375},
				{-0.25, -0.25, 0.125, 0.25, 0.25, 0.25},
				{-0.125, -0.125, 0, 0.125, 0.125, 0.125},
			},
			connect_left = {
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5},
				{-0.375, -0.375, -0.375, -0.25, 0.375, 0.375},
				{-0.25, -0.25, -0.25, -0.125, 0.25, 0.25},
				{-0.125, -0.125, -0.125, 0, 0.125, 0.125},
			},
			connect_right = {
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},
				{0.25, -0.375, -0.375, 0.375, 0.375, 0.375},
				{0.125, -0.25, -0.25, 0.25, 0.25, 0.25},
				{0, -0.125, -0.125, 0.125, 0.125, 0.125},
			},
			connect_bottom = {
				{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
				{-0.375, -0.375, -0.375, 0.375, -0.25, 0.375},
				{-0.25, -0.25, -0.25, 0.25, -0.125, 0.25},
				{-0.125, -0.125, -0.125, 0.125, 0, 0.125},
			},
			connect_top = {
				{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
				{-0.375, 0.25, -0.375, 0.375, 0.375, 0.375},
				{-0.25, 0.125, -0.25, 0.25, 0.25, 0.25},
				{-0.125, 0, -0.125, 0.15, 0.125, 0.125},
			},
		},
		selection_box = {
			type = "connected",
			fixed = {
				{-0.05, -0.05, -0.05, 0.05, 0.05, 0.05},
			},
			connect_front = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, -0.375},
				{-0.375, -0.375, -0.375, 0.375, 0.375, -0.25},
				{-0.25, -0.25, -0.25, 0.25, 0.25, -0.125},
				{-0.125, -0.125, -0.125, 0.125, 0.125, 0},
			},
			connect_back = {
				{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
				{-0.375, -0.375, 0.25, 0.375, 0.375, 0.375},
				{-0.25, -0.25, 0.125, 0.25, 0.25, 0.25},
				{-0.125, -0.125, 0, 0.125, 0.125, 0.125},
			},
			connect_left = {
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5},
				{-0.375, -0.375, -0.375, -0.25, 0.375, 0.375},
				{-0.25, -0.25, -0.25, -0.125, 0.25, 0.25},
				{-0.125, -0.125, -0.125, 0, 0.125, 0.125},
			},
			connect_right = {
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},
				{0.25, -0.375, -0.375, 0.375, 0.375, 0.375},
				{0.125, -0.25, -0.25, 0.25, 0.25, 0.25},
				{0, -0.125, -0.125, 0.125, 0.125, 0.125},
			},
			connect_bottom = {
				{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
				{-0.375, -0.375, -0.375, 0.375, -0.25, 0.375},
				{-0.25, -0.25, -0.25, 0.25, -0.125, 0.25},
				{-0.125, -0.125, -0.125, 0.125, 0, 0.125},
			},
			connect_top = {
				{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
				{-0.375, 0.25, -0.375, 0.375, 0.375, 0.375},
				{-0.25, 0.125, -0.25, 0.25, 0.25, 0.25},
				{-0.125, 0, -0.125, 0.15, 0.125, 0.125},
			},
		},
		collision_box = {
			type = "connected",
			fixed = {
				{-0.01, -0.01, -0.01, 0.01, 0.01, 0.01},
			},
			connect_front = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, -0.375},
				{-0.375, -0.375, -0.375, 0.375, 0.375, -0.25},
				{-0.25, -0.25, -0.25, 0.25, 0.25, -0.125},
				{-0.125, -0.125, -0.125, 0.125, 0.125, 0},
			},
			connect_back = {
				{-0.5, -0.5, 0.375, 0.5, 0.5, 0.5},
				{-0.375, -0.375, 0.25, 0.375, 0.375, 0.375},
				{-0.25, -0.25, 0.125, 0.25, 0.25, 0.25},
				{-0.125, -0.125, 0, 0.125, 0.125, 0.125},
			},
			connect_left = {
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5},
				{-0.375, -0.375, -0.375, -0.25, 0.375, 0.375},
				{-0.25, -0.25, -0.25, -0.125, 0.25, 0.25},
				{-0.125, -0.125, -0.125, 0, 0.125, 0.125},
			},
			connect_right = {
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},
				{0.25, -0.375, -0.375, 0.375, 0.375, 0.375},
				{0.125, -0.25, -0.25, 0.25, 0.25, 0.25},
				{0, -0.125, -0.125, 0.125, 0.125, 0.125},
			},
			connect_bottom = {
				{-0.5, -0.5, -0.5, 0.5, -0.375, 0.5},
				{-0.375, -0.375, -0.375, 0.375, -0.25, 0.375},
				{-0.25, -0.25, -0.25, 0.25, -0.125, 0.25},
				{-0.125, -0.125, -0.125, 0.125, 0, 0.125},
			},
			connect_top = {
				{-0.5, 0.375, -0.5, 0.5, 0.5, 0.5},
				{-0.375, 0.25, -0.375, 0.375, 0.375, 0.375},
				{-0.25, 0.125, -0.25, 0.25, 0.25, 0.25},
				{-0.125, 0, -0.125, 0.15, 0.125, 0.125},
			},
		},

		on_place = minetest.rotate_node
	})

	minetest.register_node("lib_materials:cobble_stone_desert_default", {
		tiles = {"lib_materials_stone_desert_default.png^(lib_materials_stone_cobble_default.png^[mask:lib_materials_mask_cobble.png)"},
		description = "Cobble - Stone Desert Default",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})

	minetest.register_node("lib_materials:dirt_cobble_stone", {
		tiles = {"lib_materials_stone_cobble_default.png^(lib_materials_dirt.png^[mask:lib_materials_mask_cobble.png)"},
		description = "Dirt Cobble Stone",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})

	minetest.register_node("lib_materials:dirt_stone", {
		tiles = { "lib_materials_stone_default.png^(lib_materials_dirt.png^[mask:lib_materials_mask_stone.png)" },
		description = "Dirt Stone",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})

	minetest.register_node("lib_materials:sand_with_stone_desert", {
		tiles = { "lib_materials_stone_desert_default.png^(lib_materials_sand_desert_default.png^[mask:lib_materials_mask_stone.png)" },
		description = "Desert Sand with Desert Stone",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})


	minetest.register_node("lib_materials:rockwall_stone", {
		description = S("Rockwall - Stone"),
		tiles = {"lib_materials_rockwall_stone.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:stone_brown',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})



	minetest.register_node("lib_materials:stone_bluestone", {
		description = S("Stone - Blue Stone"),
		tiles = {"lib_materials_stone_bluestone.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:stone_bluestone',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("lib_materials:stone_greenstone", {
		description = S("Stone - Green Stone"),
		tiles = {"lib_materials_stone_greenstone.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:stone_greenstone',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node("lib_materials:stone_whitestone", {
		description = S("Stone - White Stone"),
		tiles = {"lib_materials_stone_whitestone.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:stone_whitestone',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	})


--Default

minetest.register_node("lib_materials:stone", {
	description = S("Stone"),
	tiles = {"lib_materials_stone_default.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:cobble',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_brick", {
	description = S("Stone - Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lib_materials_stone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_block", {
	description = S("Stone - Block"),
	tiles = {"lib_materials_stone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_cobble", {
	description = S("Stone - Cobble"),
	tiles = {"lib_materials_stone_cobble_default.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_cobble_mossy", {
	description = S("Stone - Mossy Cobble"),
	tiles = {"lib_materials_stone_cobble_mossy.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_gravel", {
	description = S("Stone - Gravel"),
	tiles = {"lib_materials_stone_gravel_default.png"},
	is_ground_content = false,
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
	drop = {
		max_items = 1,
		items = {
			{items = {'default:flint'}, rarity = 16},
			{items = {'lib_materials:stone_gravel'}}
		}
	}
})

minetest.register_node("lib_materials:stone_brown", {
	description = S("Stone - Brown Stone"),
	tiles = {"lib_materials_stone_brown.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_brown',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_desert", {
	description = S("Stone - Desert"),
	tiles = {"lib_materials_stone_desert_default.png"},
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:desert_cobble',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_desert_brick", {
	description = S("Stone - Desert Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lib_materials_stone_desert_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_desert_block", {
	description = S("Stone - Desert Block"),
	tiles = {"lib_materials_stone_desert_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_desert_cobble", {
	description = S("Stone - Desert Cobble"),
	tiles = {"lib_materials_stone_desert_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_obsidian", {
	description = S("Stone - Obsidian"),
	tiles = {"lib_materials_stone_obsidian_default.png"},
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
})
minetest.register_node("lib_materials:stone_obsidian_brick", {
	description = S("Stone - Obsidian Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lib_materials_stone_obsidian_brick.png"},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
})
minetest.register_node("lib_materials:stone_obsidian_block", {
	description = S("Stone - Obsidian Block"),
	tiles = {"lib_materials_stone_obsidian_block.png"},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 1, level = 2},
})

minetest.register_node("lib_materials:stone_sand", {
	description = S("Stone - Sand Stone"),
	tiles = {"lib_materials_stone_sand.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_sand',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_sandstone", {
	description = S("Stone - Sandstone"),
	tiles = {"lib_materials_stone_sandstone_default.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_brick", {
	description = S("Stone - Sandstone Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lib_materials_stone_sandstone_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_block", {
	description = S("Stone - Sandstone Block"),
	tiles = {"lib_materials_stone_sandstone_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_sandstone_desert", {
	description = S("Stone - Sandstone Desert"),
	tiles = {"lib_materials_stone_sandstone_desert_default.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_desert_brick", {
	description = S("Stone - Sandstone Desert Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lib_materials_stone_sandstone_desert_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_desert_block", {
	description = S("Stone - Sandstone Desert Block"),
	tiles = {"lib_materials_stone_sandstone_desert_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_desert_gravel", {
	description = S("Stone - Sandstone Desert Gravel"),
	tiles = {"lib_materials_stone_sandstone_desert_gravel.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:lib_materials:stone_sandstone_desert_gravel',
	legacy_mineral = true,
	sounds = default.node_sound_gravel_defaults(),
})

minetest.register_node("lib_materials:stone_sandstone_silver", {
	description = S("Stone - Sandstone Silver"),
	tiles = {"lib_materials_stone_sandstone_silver_default.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_silver_brick", {
	description = S("Stone - Sandstone Silver Brick"),
	paramtype2 = "facedir",
	place_param2 = 0,
	tiles = {"lib_materials_stone_sandstone_silver_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_silver", {
	description = S("Stone - Sandstone Silver Block"),
	tiles = {"lib_materials_stone_sandstone_silver_block.png"},
	is_ground_content = false,
	groups = {cracky = 2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_sandstone_white", {
	description = S("Stone -  - White Sandstone"),
	tiles = {"lib_materials_stone_sandstone_white.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_sandstone_white',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_white_brick", {
	description = S("Stone -  - White Sandstone Brick"),
	tiles = {"lib_materials_stone_sandstone_white_brick.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_sandstone_white_brick',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_white_gravel", {
	description = S("Stone -  - White Sandstone Gravel"),
	tiles = {"lib_materials_stone_sandstone_white_gravel.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_sandstone_white_gravel',
	legacy_mineral = true,
	sounds = default.node_sound_gravel_defaults(),
})

minetest.register_node("lib_materials:stone_adobe", {
	description = S("Stone - Adobe"),
	tiles = {"lib_materials_stone_adobe.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	sounds = default.node_sound_sand_defaults(),
})
minetest.register_node("lib_materials:stone_andesite", {  
	description = S("Stone - Andesite"),
	tiles = {"lib_materials_stone_andesite.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_basalt_01", {
	description = S("Stone - Basalt 01"),
	tiles = {"lib_materials_stone_basalt_01.png"},
	is_ground_content = true,
	drop = get_node_drops("lib_materials:stone_basalt_01","lib_materials:stone_basalt_01_cobble"),
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_basalt_01_block", {
	description = S("Stone - Basalt 01 Block"),
	tiles = {"lib_materials_stone_basalt_01_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_basalt_01_brick", {
	description = S("Stone - Basalt 01 Brick"),
	tiles = {"lib_materials_stone_basalt_01_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_basalt_01_cobble", {
	description = S("Stone - Basalt 01 Cobble"),
	tiles = {"lib_materials_stone_basalt_01_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_basalt_02", {
	description = S("Stone - Basalt 02"),
	tiles = {"lib_materials_stone_basalt_02.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_basalt_02',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_basalt_03", {  
	description = S("Stone - Basalt 03"),
	tiles = {"lib_materials_stone_basalt_03.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_chalk", {
	description = S("Stone - Chalk"),
	tiles = {"lib_materials_stone_chalk.png"},
	is_ground_content = true,
	drop = 'lib_materials:chalk_powder 2',
	groups = {crumbly=2, cracky=2, not_cuttable=1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_claystone", {
	description = S("Stone - Claystone"),
	tiles = {"lib_materials_stone_claystone.png" },
	is_ground_content = true,
	groups = {crumbly=1, cracky=3},
	sounds = default.node_sound_dirt_defaults(),
})
minetest.register_node("lib_materials:stone_conglomerate", {
	description = S("Stone - Conglomerate"),
	tiles = {"lib_materials_stone_conglomerate.png" },
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
	groups = {crumbly=3},
})
minetest.register_node("lib_materials:stone_diorite", {  
	description = S("Stone - Diorite"),
	tiles = {"lib_materials_stone_diorite.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_gabbro", {  
	description = S("Stone - Gabbro"),
	tiles = {"lib_materials_stone_gabbro.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_gneiss_01", {
	description = S("Stone - Gneiss 01"),
	tiles = {"lib_materials_stone_gneiss_01.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = get_node_drops("lib_materials:stone_gneiss_01", "lib_materials:stone_gneiss_01_cobble"),
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_gneiss_01_block", {
	description = S("Stone - Gneiss 01 Block"),
	tiles = {"lib_materials_stone_gneiss_01_block.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_gneiss_01_brick", {
	description = S("Stone - Gneiss 01 Brick"),
	tiles = {"lib_materials_stone_gneiss_01_brick.png"},
	is_ground_content = false,
	groups = {cracky = 2, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_gneiss_01_cobble", {
	description = S("Stone - Gneiss 01 Cobble"),
	tiles = {"lib_materials_stone_gneiss_01_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_gneiss_02", {  
	description = S("Stone - Gniess 02"),
	tiles = {"lib_materials_stone_gneiss_02.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_granite_01", {
	description = S("Stone - Granite 01 (Technic)"),
	tiles = { "lib_materials_stone_granite_01.png" },
	is_ground_content = true,
	groups = {cracky=1, granite=1, stone = 1, level = 2},
	drop = 'lib_materials:stone_granite_01',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
}) 
minetest.register_node("lib_materials:stone_granite_02", {
	description = S("Stone - Granite 02"),
	tiles = {"lib_materials_stone_granite_02.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_granite_brown", {
	description = S("Stone - Granite Brown"),
	tiles = {"lib_materials_stone_granite_brown.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_granite_03", {  
	description = S("Stone - Granite 03"),
	tiles = {"lib_materials_stone_granite_03.png" },
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=3, stone=1}, 
})
minetest.register_node("lib_materials:stone_laterite", {
	description = S("Stone - Laterite clay"),
	tiles = {"lib_materials_stone_laterite.png" },
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
	groups = {crumbly=3},
})
minetest.register_node("lib_materials:stone_limestone_01", {
	description = S("Stone - Limestone 01"),
	tiles = {"lib_materials_stone_limestone_01.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_limestone_02", {  
	description = S("Stone - Limestone 02"),
	tiles = {"lib_materials_stone_limestone_02.png" },
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky=2},
})
minetest.register_node("lib_materials:stone_marble_01", {
	description = S("Stone - Marble 01 (Technic)"),
	tiles = { "lib_materials_stone_marble_01.png" },
	is_ground_content = true,
	groups = {cracky=3, marble=1, stone = 1, level = 2},
	drop = 'lib_materials:stone_marble_01',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
}) 
minetest.register_node("lib_materials:stone_marble_02", {
	description = S("Stone - Marble 02"),
	tiles = {"lib_materials_stone_marble_02.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_marble_03", {
	description = S("Stone - Marble 03"),
	tiles = {"lib_materials_stone_marble_03.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_marble_03_block", {
	description = S("Stone - Marble 03 Block"),
	tiles = {"lib_materials_stone_marble_03_block.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_mudstone", {  
	description = S("Stone - Mudstone"),
	tiles = {"lib_materials_stone_mudstone.png" },
	groups = {cracky=1, crumbly=3}, 
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
})
minetest.register_node("lib_materials:stone_pegmatite", {
	description = S("Stone - Pegmatite"),
	tiles = {"lib_materials_stone_pegmatite.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_rhyolitic_tuff", {
	description = S("Stone - Rhyolitic Tuff"),
	tiles = {"lib_materials_stone_rhyolitic_tuff.png"},
	is_ground_content = true,
	legacy_mineral = true,
	groups = {cracky = 3, stone = 1},
	drop = {
		max_items = 1,
		items = {
			{-- player get tuff node if he is lucky :)
				items = {'lib_materials:stone_rhyolitic_tuff'},
				rarity = 3,
			},
			{-- player will get rubble with 2/3 chance
				items = {'lib_materials:stone_rhyolitic_tuff_cobble'},
			}

		}
	},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_rhyolitic_tuff_bricks", {
	description = S("Stone - Rhyolitic Tuff Bricks"),
	tiles = {"lib_materials_stone_rhyolitic_tuff_bricks.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_rhyolitic_tuff_cobble", {
	description = S("Stone - Rhyolitic Tuff Cobble"),
	tiles = {"lib_materials_stone_rhyolitic_tuff_cobble.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
})
minetest.register_node("lib_materials:stone_sandstone_old_red", {
	description = S("Stone - Old Red Sandstone"),
	tiles = {"lib_materials_stone_sandstone_old_red.png"},
	is_ground_content = true,
	drop = "lib_materials:stone_sandstone_old_red_cobble",
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_sandstone_old_red_block", {
	description = S("Stone - Old Red Sandstone Block"),
	tiles = {"lib_materials_stone_sandstone_old_red_block.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_sandstone_old_red_brick", {
	description = S("Stone - Old Red Sandstone Brick"),
	tiles = {"lib_materials_stone_sandstone_old_red_brick.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_sandstone_old_red_cobble", {
	description = S("Stone - Old Red Sandstone Cobble"),
	tiles = {"lib_materials_stone_sandstone_old_red_cobble.png"},
	is_ground_content = true,
	groups = {cracky = 3, crumbly=2, stone = 2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_savanna", {
	description = S("Stone - Savannah Stone"),
	tiles = {"lib_materials_stone_savannah.png"},
	groups = {cracky = 3, stone=1},
	drop = 'lib_materials:stone_savanna_cobble',
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_savanna_cobble", {
	description = S("Stone - Savanna Cobble"),
	tiles = {"lib_materials_stone_savanna_cobble.png"},
	groups = {cracky = 3, stone = 1},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_savanna_with_ore_coal", {
	description = S("Stone - Savanna Stone With Coal Ore"),
	tiles = {"lib_materials_stone_savannah_with_ore_coal.png"},
	groups = {cracky = 3, stone = 1, ore=1},
	drop = 'default:coal_lump',
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_savanna_with_ore_iron", {
	description = S("Stone - Savanna Stone With Iron Ore"),
	tiles = {"lib_materials_stone_savannah_with_ore_iron.png"},
	groups = {cracky = 2, stone = 1, ore=1},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_schist", {
	description = S("Stone - Schist"),
	tiles = {"lib_materials_stone_schist.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_serpentine", {
	description = S("Stone - Serpentine"),
	tiles = {"lib_materials_stone_serpentine.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_shale", {
	description = S("Stone - Shale"),
	tiles = {"lib_materials_stone_shale.png","lib_materials_stone_shale.png","lib_materials_stone_shale_side.png"},
	is_ground_content = true,
	groups = {crumbly=2,cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_skarn", {  
	description = S("Stone - Skarn"),
	tiles = {"lib_materials_stone_skarn.png" },
	groups = {cracky=3, stone=1}, 
	is_ground_content = true,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:stone_slate_01", {
	description = S("Stone - Slate 01"),
	tiles = {"lib_materials_stone_slate_01_top.png","lib_materials_stone_slate_01_top.png","lib_materials_stone_slate_01_side.png"},
	is_ground_content = true,
	drop = 'lib_materials:stone_slate_01_cobble',
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_slate_01_block", {
	description = S("Stone - Slate 01 Block"),
	tiles = {"lib_materials_stone_slate_01_block.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_slate_01_brick", {
	description = S("Stone - Slate 01 Brick"),
	tiles = {"lib_materials_stone_slate_01_brick.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_slate_01_cobble", {
	description = S("Stone - Slate 01 Cobble"),
	tiles = {"lib_materials_stone_slate_01_cobble.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_slate_01_tile", {
	description = S("Stone - Slate 01 Tile"),
	tiles = {"lib_materials_stone_slate_01_tile.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_slate_02", {
	description = S("Stone - Slate 02"),
	tiles = {"lib_materials_stone_slate_02.png" },
	is_ground_content = true,
	sounds = default.node_sound_dirt_defaults(),
	groups = {cracky=3},
})
minetest.register_node("lib_materials:stone_tuff", {
	description = S("Stone - Tuff"),
	tiles = {"lib_materials_stone_tuff.png"},
	is_ground_content = true,
	legacy_mineral = true,
	groups = {cracky = 3, stone = 1},
	drop = {
		max_items = 1,
		items = {
			{-- player get tuff node if he is lucky :)
				items = {'lib_materials:stone_tuff'},
				rarity = 3,
			},
			{-- player will get rubble with 2/3 chance
				items = {'lib_materials:stone_tuff_cobble'},
			}
		}
	},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_tuff_bricks", {
	description = S("Stone - Tuff Bricks"),
	tiles = {"lib_materials_stone_tuff_bricks.png"},
	is_ground_content = false,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_tuff_bricks_old", {
	description = S("Stone - Tuff Bricks Old"),
	tiles = {"lib_materials_stone_tuff_bricks_old.png"},
	is_ground_content = false,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults()
})
minetest.register_node("lib_materials:stone_tuff_cobble", {
	description = S("Stone - Tuff Cobble"),
	tiles = {"lib_materials_stone_tuff_cobble.png"},
	groups = {crumbly = 2, falling_node = 1},
	sounds = default.node_sound_gravel_defaults(),
})
minetest.register_node("lib_materials:stone_vermiculite", {
	description = S("Stone - Vermiculite"),
	tiles = {"lib_materials_stone_vermiculite.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})



minetest.register_node("lib_materials:stone_lignite", {
	description = S("Stone - Lignite coal"),
	tiles = {"lib_materials_stone_mudstone.png^rocks_lignite.png" },
	is_ground_content = true,
	groups = {crumbly=3},
})
minetest.register_node("lib_materials:stone_blackcoal", {
	description = S("Stone - Black coal"),
	tiles = {"lib_materials_stone_mudstone.png^default_mineral_coal.png" },
	is_ground_content = true,
	groups = {crumbly=3},
})
minetest.register_node("lib_materials:stone_anthracite", {
	description = S("Stone - Anthracite coal"),
	tiles = {"lib_materials_stone_mudstone.png^rocks_anthracite.png" },
	is_ground_content = true,
	groups = {crumbly=3},
})



--Technic Node - 	Granite 01, Marble 01
--Farlands Nodes - 	Granite 02, Granite Brown, Limestone 01, Marble 02, Savanna
--Rocks mod - 	Andesite, Basalt 03, Claystone, Conglomerate, Diorite, Gabbro, Gneiss 02, Granite 03, Laterite, Limestone 02, Mudstone, Pegmatite, Skarn, Slate 02, 
	-- Basalt       Ex/Mafic   hard  same as diorite, byt limit=0.5
	-- Mudstone     Sed        soft  Ocean, beach, river, glaciers
	-- more rock defs
--Darkage Nodes - 	Adobe, Basalt 01, Chalk, Gneiss 01, Marble 03, Old Red Sandstone (ors), Serpentine, Shale, Schist, Slate 01, Tuff, Rhyolitic Tuff
minetest.register_craftitem("lib_materials:chalk_powder", {
	description = "Chalk Powder",
	inventory_image = "darkage_chalk_powder.png",
})
minetest.register_node("lib_materials:cobble_with_plaster", {
	description = "Stone - Cobblestone with Plaster",
	tiles = {"darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_D.png)", "darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_B.png)", 
		"darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_C.png)", "darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_A.png)", 
		"default_cobble.png", "darkage_chalk.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	drop = 'default:cobble',
	groups = {cracky=3, not_cuttable=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:chalked_bricks_with_plaster", {
	description = "Stone - Chalked Bricks with Plaster",
	tiles = {"darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_D.png)", "darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_B.png)", 
		"darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_C.png)", "darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_A.png)", 
		"darkage_chalked_bricks.png", "darkage_chalk.png"},
	is_ground_content = false,
	paramtype2 = "facedir",
	drop = 'default:cobble',
	groups = {cracky=3, not_cuttable=1},
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:desert_stone_with_iron", {
	description = "Stone - Desert Iron Ore",
	tiles = {"default_desert_stone.png^default_mineral_iron.png"},
	is_ground_content = true,
	groups = {cracky=3, not_cuttable=1},
	drop = 'default:iron_lump',
	sounds = default.node_sound_stone_defaults(),
})

-- abm to turn Tuff bricks to old Tuff bricks if water is nearby
-- minetest.register_abm({
	-- nodenames = {"lib_materials:stone_tuff_bricks"},
	-- neighbors = {"group:water"},
	-- interval = 16,
	-- chance = 200,
	-- catch_up = false,
	-- action = function(pos, node)
		-- minetest.set_node(pos, {name = "lib_materials:stone_tuff_bricks_old"})
	-- end
-- })


