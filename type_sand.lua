
local S = lib_materials.intllib


	minetest.register_node("lib_materials:sand", {
		description = "Sand - Sand Default",
		tiles = {"lib_materials_sand_sand_default.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
	})
	minetest.register_node("lib_materials:sand_beach", {
		description = "Sand - Beach",
		tiles = {"lib_materials_sand_sand_default.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
	})
	minetest.register_node("lib_materials:sand_desert", {
		description = "Sand - Desert Default",
		tiles = {"lib_materials_sand_desert_default.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
	})
	minetest.register_node("lib_materials:sand_silver", {
		description = "Sand - Silver Default",
		tiles = {"lib_materials_sand_silver_default.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
	})
	minetest.register_node("lib_materials:sand_volcanic", {
		description = ("Sand - Volcanic"),
		tiles = {"lib_materials_sand_volcanic.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
	})
	minetest.register_node("lib_materials:sand_white", {
		description = ("Sand - White"),
		tiles = {"lib_materials_sand_white.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		sounds = default.node_sound_sand_defaults(),
	})

	minetest.register_node("lib_materials:sand_with_rocks", {
		description = "Sand and rocks",
		tiles = {"lib_materials_sand_with_rocks.png"},
		groups = {crumbly = 3, falling_node = 1, sand = 1},
		--sounds = default.node_sound_sand_defaults(),
		drop = {max_items=2, items={{items={"lib_materials:small_rocks"}, rarity=1}}},
	})


-- Prehistoric Life Sand
-- Node Texture Modifier
-- Valleys_c Sand
-- Some sand with rocks for the river beds.
--  This drops small rocks as well.
-- if false then
-- local newnode = lib_materials.clone_node("default:sand")
-- newnode.description = "Sand and rocks"
-- newnode.tiles = {"vmg_sand_with_rocks.png"}
-- newnode.drop = {max_items=2, items={{items={"lib_materials:small_rocks"}, rarity=1}, {items={"default:sand"}, rarity=1}}}
-- minetest.register_node("lib_materials:sand_with_rocks", newnode)
-- end







