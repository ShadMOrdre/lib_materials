

local S = lib_materials.gettext


--PYRAMIDS

local img = {"eye", "men", "sun"}

for i=1,3 do
	minetest.register_node("lib_materials:deco_stone"..i, {
		description = "Sandstone with "..img[i],
		tiles = {"default_sandstone.png^pyramids_"..img[i]..".png"},
		is_ground_content = true,
		groups = {crumbly=2,cracky=3},
		sounds = default.node_sound_stone_defaults(),
	})
end




--MOREORES Decorative stone types
--To be added


	-- ["wood_tile"] = {
		-- description = S("Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^moreblocks_wood_tile.png",
		-- "default_wood.png^moreblocks_wood_tile.png",
		-- "default_wood.png^moreblocks_wood_tile.png",
		-- "default_wood.png^moreblocks_wood_tile.png",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR90",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR90"},
		-- sounds = sound_wood,
	-- },

	-- ["wood_tile_flipped"] = {
		-- description = S("Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^moreblocks_wood_tile.png^[transformR90",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR90",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR90",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR90",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR180",
		-- "default_wood.png^moreblocks_wood_tile.png^[transformR180"},
		-- sounds = sound_wood,
		-- no_stairs = true,
	-- },

	-- ["wood_tile_center"] = {
		-- description = S("Centered Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^moreblocks_wood_tile_center.png"},
		-- sounds = sound_wood,
	-- },

	-- ["wood_tile_full"] = {
		-- description = S("Full Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = tile_tiles("wood_tile_full"),
		-- sounds = sound_wood,
	-- },

	-- ["wood_tile_up"] = {
		-- description = S("Upwards Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^moreblocks_wood_tile_up.png"},
		-- sounds = sound_wood,
		-- no_stairs = true,
	-- },

	-- ["wood_tile_down"] = {
		-- description = S("Downwards Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^[transformR180^moreblocks_wood_tile_up.png^[transformR180"},
		-- sounds = sound_wood,
		-- no_stairs = true,
	-- },

	-- ["wood_tile_left"] = {
		-- description = S("Leftwards Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^[transformR270^moreblocks_wood_tile_up.png^[transformR270"},
		-- sounds = sound_wood,
		-- no_stairs = true,
	-- },

	-- ["wood_tile_right"] = {
		-- description = S("Rightwards Wooden Tile"),
		-- groups = {snappy = 1, choppy = 2, oddly_breakable_by_hand = 2, flammable = 3},
		-- tiles = {"default_wood.png^[transformR90^moreblocks_wood_tile_up.png^[transformR90"},
		-- sounds = sound_wood,
		-- no_stairs = true,
	-- },

	-- ["plankstone"] = {
		-- description = S("Plankstone"),
		-- groups = {cracky = 3},
		-- tiles = tile_tiles("plankstone"),
		-- sounds = sound_stone,
	-- },

	-- ["all_faces_tree"] = {
		-- description = S("All-faces Tree"),
		-- tiles = {"default_tree_top.png"},
		-- groups = {tree = 1,snappy = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
		-- sounds = sound_wood,
		-- furnace_burntime = 30,
	-- },

	-- ["all_faces_jungle_tree"] = {
		-- description = S("All-faces Jungle Tree"),
		-- tiles = {"default_jungletree_top.png"},
		-- groups = {tree = 1,snappy = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
		-- sounds = sound_wood,
		-- furnace_burntime = 30,
	-- },



minetest.register_node("lib_materials:circle_stone_bricks", {
	description = S("Circle Stone Bricks"),
	tiles = {"moreblocks_circle_stone_bricks.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:circle_stone_bricks',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:coal_checker", {
	description = S("Coal Checker"),
		tiles = {"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png",
		"default_stone.png^moreblocks_coal_checker.png^[transformR90",
		"default_stone.png^moreblocks_coal_checker.png^[transformR90"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:coal_checker',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:coal_stone", {
	description = S("Coal Stone"),
	tiles = {"moreblocks_coal_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:coal_stone',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:coal_stone_bricks", {
	description = S("Coal Stone Bricks"),
	tiles = {"moreblocks_coal_stone_bricks.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:coal_stone_bricks',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:cobble_compressed", {
	description = S("Compressed Cobblestone"),
	tiles = {"moreblocks_cobble_compressed.png"},
	is_ground_content = true,
	groups = {cracky = 1},
	drop = 'lib_materials:cobble_compressed',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:grey_bricks", {
	description = S("Grey Stone Bricks"),
	tiles = {"moreblocks_grey_bricks.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:grey_bricks',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:iron_checker", {
	description = S("Iron Checker"),
		tiles = {"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png",
		"default_stone.png^moreblocks_iron_checker.png^[transformR90",
		"default_stone.png^moreblocks_iron_checker.png^[transformR90"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:iron_checker',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:iron_stone", {
	description = S("Iron Stone"),
	tiles = {"moreblocks_iron_stone.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:iron_stone',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:split_stone_tile", {
	description = S("Split Stone Tile"),
		tiles = {"moreblocks_split_stone_tile_top.png",
			"moreblocks_split_stone_tile.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:split_stone_tile',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_tile", {
	description = S("Stone Tile"),
	tiles = {"moreblocks_stone_tile.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:stone_tile',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:tar", {
	description = S("Tar"),
	tiles = {"moreblocks_tar.png"},
	is_ground_content = true,
	groups = {cracky = 2},
	drop = 'lib_materials:tar',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})




--GLASS

minetest.register_node("lib_materials:clean_glass", {
	description = S("Clean Glass"),
	tiles = {"moreblocks_clean_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	drop = 'lib_materials:clean_glass',
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:coal_glass", {
	description = S("Coal Glass"),
	tiles = {"moreblocks_coal_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	drop = 'lib_materials:coal_glass',
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:iron_glass", {
	description = S("Iron Glass"),
	tiles = {"moreblocks_iron_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	drop = 'lib_materials:iron_glass',
	sounds = default.node_sound_glass_defaults(),
})


--CRAFTING RECIPES

minetest.register_craft({
	output = "lib_materials:circle_stone_bricks 8",
	recipe = {
		{"default:stone", "default:stone", "default:stone"},
		{"default:stone", "", "default:stone"},
		{"default:stone", "default:stone", "default:stone"},
	}
})

minetest.register_craft({
	output = "lib_materials:stone_tile 4",
	recipe = {
		{"default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble"},
	}
})

minetest.register_craft({
	output = "lib_materials:split_stone_tile",
	recipe = {
		{"lib_materials:stone_tile"},
	}
})

minetest.register_craft({
	output = "lib_materials:grey_bricks 2",
	type = "shapeless",
	recipe =  {"default:stone", "default:brick"},
})

minetest.register_craft({
	output = "lib_materials:grey_bricks 2",
	type = "shapeless",
	recipe =  {"default:stonebrick", "default:brick"},
})

minetest.register_craft({
	output = "lib_materials:coal_stone_bricks 4",
	recipe = {
		{"lib_materials:coal_stone", "lib_materials:coal_stone"},
		{"lib_materials:coal_stone", "lib_materials:coal_stone"},
	}
})

minetest.register_craft({
	output = "lib_materials:iron_stone_bricks 4",
	recipe = {
		{"lib_materials:iron_stone", "lib_materials:iron_stone"},
		{"lib_materials:iron_stone", "lib_materials:iron_stone"},
	}
})

minetest.register_craft({
	output = "lib_materials:plankstone 4",
	recipe = {
		{"default:stone", "default:wood"},
		{"default:wood", "default:stone"},
	}
})

minetest.register_craft({
	output = "lib_materials:plankstone 4",
	recipe = {
		{"default:wood", "default:stone"},
		{"default:stone", "default:wood"},
	}
})

minetest.register_craft({
	output = "lib_materials:coal_checker 4",
	recipe = {
		{"default:stone", "default:coal_lump"},
		{"default:coal_lump", "default:stone"},
	}
})

minetest.register_craft({
	output = "lib_materials:coal_checker 4",
	recipe = {
		{"default:coal_lump", "default:stone"},
		{"default:stone", "default:coal_lump"},
	}
})

minetest.register_craft({
	output = "lib_materials:iron_checker 4",
	recipe = {
		{"default:steel_ingot", "default:stone"},
		{"default:stone", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "lib_materials:iron_checker 4",
	recipe = {
		{"default:stone", "default:steel_ingot"},
		{"default:steel_ingot", "default:stone"},
	}
})

minetest.register_craft({
	output = "lib_materials:iron_glass",
	type = "shapeless",
	recipe = {"default:steel_ingot", "default:glass"},
})

minetest.register_craft({
	output = "default:glass",
	type = "shapeless",
	recipe = {"default:coal_lump", "lib_materials:iron_glass"},
})

minetest.register_craft({
	output = "lib_materials:coal_glass",
	type = "shapeless",
	recipe = {"default:coal_lump", "default:glass"},
})

minetest.register_craft({
	output = "default:glass",
	type = "shapeless",
	recipe = {"default:steel_ingot", "lib_materials:coal_glass"},
})

minetest.register_craft({
	output = "lib_materials:clean_glass",
	type = "shapeless",
	recipe = {"lib_materials:sweeper", "default:glass"},
})

minetest.register_craft({
	output = "lib_materials:coal_stone",
	type = "shapeless",
	recipe = {"default:coal_lump", "default:stone"},
})

minetest.register_craft({
	output = "default:stone",
	type = "shapeless",
	recipe = {"default:steel_ingot", "lib_materials:coal_stone"},
})

minetest.register_craft({
	output = "lib_materials:iron_stone",
	type = "shapeless",
	recipe = {"default:steel_ingot", "default:stone"},
})

minetest.register_craft({
	output = "default:stone",
	type = "shapeless",
	recipe = {"default:coal_lump", "lib_materials:iron_stone"},
})

minetest.register_craft({
	output = "lib_materials:cobble_compressed",
	recipe = {
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
		{"default:cobble", "default:cobble", "default:cobble"},
	}
})

minetest.register_craft({
	output = "default:cobble 9",
	recipe = {
		{"lib_materials:cobble_compressed"},
	}
})

minetest.register_craft({
	type = "cooking", output = "lib_materials:tar", recipe = "default:gravel",
})






--XDECOR Decorative stone types


minetest.register_node("lib_materials:coalstone_tile", {
	description = S("Coal Stone Tile"),
	tiles = {
		"xdecor_coalstone_tile.png",
		"xdecor_coalstone_tile.png",
		"xdecor_coalstone_tile.png",
		"xdecor_coalstone_tile.png",
		"xdecor_coalstone_tile.png^[transformR90",
		"xdecor_coalstone_tile.png^[transformR90",
	},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:coalstone_tile',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:desertstone_tile", {
	description = S("Desert Stone Tile"),
	tiles = {"xdecor_desertstone_tile.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:desertstone_tile',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:hard_clay", {
	description = S("Hardened Clay"),
	tiles = {"xdecor_hard_clay.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1},
	drop = 'lib_materials:hard_clay',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_tile", {
	description = S("Stone Tile"),
	tiles = {"xdecor_stone_tile.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_tile',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_rune", {
	description = S("Runestone"),
	tiles = {"xdecor_stone_rune.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_rune',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:packed_ice", {
	description = S("Packed Ice"),
	tiles = {"xdecor_packed_ice.png"},
	is_ground_content = true,
	groups = {cracky = 1, puts_out_fire=1},
	drop = 'lib_materials:packed_ice',
	legacy_mineral = true,
	sounds = default.node_sound_glass_defaults(),
})































