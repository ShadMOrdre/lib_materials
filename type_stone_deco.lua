local S = lib_materials.intllib

--PYRAMIDS

local img = {"eye", "men", "sun"}

for i=1,3 do
	lib_materials.register_node(
		"lib_materials:deco_stone" .. i, "pyramids:deco_stone" .. i, {
			description = "Sandstone with "..img[i],
			tiles = {
				"default_sandstone.png^pyramids_" .. img[i] .. ".png"
			},
			is_ground_content = true,
			groups = {crumbly=2, cracky=3},
			sounds = default.node_sound_stone_defaults()
		}
	)
end

	lib_materials.register_node(
		"lib_materials:deco_stone_egypt_01", nil, {
			description = S("Stone - Egypt 01"),
			tiles = {"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"decoblocks_sandstone_wall.png",
				"decoblocks_sandstone_wall.png", 
			},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:deco_stone_egypt_02", nil, {
			description = S("Stone - Egypt 02"),
			tiles = {"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"decoblocks_sandstone_wall2.png",
				"decoblocks_sandstone_wall2.png", 
			},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:deco_stone_egypt_03", nil, {
			description = S("Stone - Egypt 03"),
			tiles = {"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"decoblocks_sandstone_wall3.png",
				"decoblocks_sandstone_wall3.png", 
			},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:deco_stone_egypt_04", nil, {
			description = S("Stone - Egypt 04"),
			tiles = {"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"lib_materials_stone_sandstone_default.png", 
				"decoblocks_sandstone_wall4.png",
				"decoblocks_sandstone_wall4.png", 
			},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)

	lib_materials.register_node(
		"lib_materials:stone_brown_angled", nil, {
			description = S("Stone - Brown Angled"),
			drawtype = "nodebox",
			tiles = {"lib_materials_stone_brown.png"},
			paramtype = "light",
			paramtype2 = "facedir",
			is_ground_content = true,
			legacy_mineral = true,
			connects_to = {
				"group:wall", "group:stone", "group:lib_architecture",
				"group:lib_doors", "group:lib_fences",
				"group:lib_general", "group:lib_lights"
			},
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
		}
	)

lib_materials.register_node(
	"lib_materials:deco_stone_circle",
	"moreblocks:circle_stone_bricks",
	{
		description = S("Circle Stone Bricks"),
		tiles = {"moreblocks_circle_stone_bricks.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:circle_stone_bricks',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:deco_stone_coal_checker",
	"moreblocks:coal_checker",
	{
		description = S("Coal Checker"),
		tiles = {
			"default_stone.png^moreblocks_coal_checker.png",
			"default_stone.png^moreblocks_coal_checker.png",
			"default_stone.png^moreblocks_coal_checker.png",
			"default_stone.png^moreblocks_coal_checker.png",
			"default_stone.png^moreblocks_coal_checker.png^[transformR90",
			"default_stone.png^moreblocks_coal_checker.png^[transformR90"
		},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:coal_checker',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_coal", "moreblocks:coal_stone", {
		description = S("Coal Stone"),
		tiles = {"moreblocks_coal_stone.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:coal_stone',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_coal_bricks", "moreblocks:coal_stone_bricks", {
		description = S("Coal Stone Bricks"),
		tiles = {"moreblocks_coal_stone_bricks.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:coal_stone_bricks',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_cobble_compressed",
	"moreblocks:cobble_compressed",
	{
		description = S("Compressed Cobblestone"),
		tiles = {"moreblocks_cobble_compressed.png"},
		is_ground_content = true,
		groups = {cracky = 1},
		drop = 'lib_materials:cobble_compressed',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_bricks_grey", "moreblocks:grey_bricks", {
		description = S("Grey Stone Bricks"),
		tiles = {"moreblocks_grey_bricks.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:grey_bricks',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:deco_stone_iron_checker",
	"moreblocks:iron_checker",
	{
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
	}
)
lib_materials.register_node(
	"lib_materials:stone_iron", "moreblocks:iron_stone", {
		description = S("Iron Stone"),
		tiles = {"moreblocks_iron_stone.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:iron_stone',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_tile_split", "moreblocks:split_stone_tile", {
		description = S("Split Stone Tile"),
		tiles = {
			"moreblocks_split_stone_tile_top.png",
			"moreblocks_split_stone_tile.png"
		},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:split_stone_tile',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_tile_01", "moreblocks:stone_tile", {
		description = S("Stone Tile"),
		tiles = {"moreblocks_stone_tile.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:stone_tile',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:tar", "moreblocks:tar", {
		description = S("Tar"),
		tiles = {"moreblocks_tar.png"},
		is_ground_content = true,
		groups = {cracky = 2},
		drop = 'lib_materials:tar',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)

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

lib_materials.register_node(
	"lib_materials:stone_coal_tile", "xdecor:coalstone_tile", {
		description = S("Stone - Coal Tile"),
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
	}
)
lib_materials.register_node(
	"lib_materials:stone_desert_tile", "xdecor:desertstone_tile", {
		description = S("Desert Stone Tile"),
		tiles = {"xdecor_desertstone_tile.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:desertstone_tile',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:clay_hard", "xdecor:hard_clay", {
		description = S("Hardened Clay"),
		tiles = {"xdecor_hard_clay.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1},
		drop = 'lib_materials:hard_clay',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_tile_02", "xdecor:stone_tile", {
		description = S("Stone Tile"),
		tiles = {"xdecor_stone_tile.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:stone_tile',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_rune", "xdecor:stone_rune", {
		description = S("Runestone"),
		tiles = {"xdecor_stone_rune.png"},
		is_ground_content = true,
		groups = {cracky = 3, stone = 1, level = 2},
		drop = 'lib_materials:stone_rune',
		legacy_mineral = true,
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:packed_ice", "xdecor:packed_ice", {
		description = S("Packed Ice"),
		tiles = {"xdecor_packed_ice.png"},
		is_ground_content = true,
		groups = {cracky = 1, puts_out_fire=1},
		drop = 'lib_materials:packed_ice',
		legacy_mineral = true,
		sounds = default.node_sound_glass_defaults(),
	}
)

-- DECO Stone Types

lib_materials.register_node(
	"lib_materials:stone_tiles", "decoblocks:old_stone_tiles", {
		description = "Stone - Tiles",
		tiles = {"lib_materials_stone_tiles.png"},
		groups = {cracky = 3, stone = 2},
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_tiles_with_dirt",
	"decoblocks:old_stone_tiles_with_dirt",
	{
		description = "Stone - Tiles with Dirt",
		tiles = {"lib_materials_stone_tiles_with_dirt.png"},
		groups = {cracky = 3, stone = 2},
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_tiles_mossy",
	"decoblocks:moss_old_stone_tiles",
	{
		description = "Stone - Mossy Tiles",
		tiles = {"lib_materials_stone_tiles_mossy.png"},
		groups = {cracky = 3, stone = 2},
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_brick_mossy", "decoblocks:moss_stonebrick", {
		description = "Stone - Mossy Brick",
		paramtype2 = "facedir",
		place_param2 = 0,
		tiles = {"lib_materials_stone_brick_mossy.png"},
		is_ground_content = false,
		groups = {cracky = 2, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_tiles_crumbled", nil, {
		description = "Stone - Crumbled Tiles",
		tiles = {"lib_materials_stone_tiles_crumbled.png"},
		groups = {crumbly = 1},
		sounds = default.node_sound_stone_defaults()
	}
)
lib_materials.register_node(
	"lib_materials:stone_granite_02_block", nil, {
		description = "Stone - Granite 02 Block",
		tiles = {"lib_materials_stone_granite_02_block.png"},
		groups = {cracky = 3, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_granite_brown_block", nil, {
		description = "Stone - Granite Brown Block",
		tiles = {"lib_materials_stone_granite_brown_block.png"},
		groups = {cracky = 3, stone = 1},
		sounds = default.node_sound_stone_defaults(),
	}
)
lib_materials.register_node(
	"lib_materials:stone_stucco", "decoblocks:stucco", {
		description = "Stone - Stucco",
		tiles = {"lib_materials_stone_stucco.png"},
		groups = {cracky = 3, stone = 2},
		sounds = default.node_sound_stone_defaults(),
	}
)

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
