

local S = lib_materials.gettext



minetest.register_node("lib_materials:stone_brown", {
	description = S("Brown Stone"),
	tiles = {"lib_materials_stone_brown.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_brown',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("lib_materials:stone_sand", {
	description = S("Sand Stone"),
	tiles = {"lib_materials_stone_sand.png"},
	is_ground_content = true,
	groups = {cracky = 3, stone = 1, level = 2},
	drop = 'lib_materials:stone_sand',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node( "lib_materials:granite", {
	description = S("Granite"),
	tiles = { "technic_granite.png" },
	is_ground_content = true,
	groups = {cracky=1, granite=1, stone = 1, level = 2},
	drop = 'lib_materials:granite',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
}) 

minetest.register_node( "lib_materials:marble", {
	description = S("Marble"),
	tiles = { "technic_marble.png" },
	is_ground_content = true,
	groups = {cracky=3, marble=1, stone = 1, level = 2},
	drop = 'lib_materials:marble',
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
}) 

