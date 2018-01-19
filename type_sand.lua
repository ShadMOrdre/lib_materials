
local S = lib_materials.gettext





-- Some sand with rocks for the river beds.
--  This drops small rocks as well.
-- if false then
-- local newnode = lib_materials.clone_node("default:sand")
-- newnode.description = "Sand and rocks"
-- newnode.tiles = {"vmg_sand_with_rocks.png"}
-- newnode.drop = {max_items=2, items={{items={"lib_materials:small_rocks"}, rarity=1}, {items={"default:sand"}, rarity=1}}}
-- minetest.register_node("lib_materials:sand_with_rocks", newnode)
-- end

minetest.register_node("lib_materials:sand_with_rocks", {
	description = "Sand and rocks",
	tiles = {"vmg_sand_with_rocks.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
	--sounds = default.node_sound_sand_defaults(),
	drop = {max_items=2, items={{items={"lib_materials:small_rocks"}, rarity=1}}},
})


