
local S = lib_materials.gettext

--Add Technic granite, marble, and ore node definitions and craftitems

minetest.register_node("lib_materials:brass_block", {
	description = S("Brass Block"),
	tiles = { "technic_brass_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("lib_materials:lead_block", {
	description = S("Lead Block"),
	tiles = { "technic_lead_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("lib_materials:wrought_iron_block", {
	description = S("Wrought Iron Block"),
	tiles = { "technic_wrought_iron_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("lib_materials:cast_iron_block", {
	description = S("Cast Iron Block"),
	tiles = { "technic_cast_iron_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("lib_materials:carbon_steel_block", {
	description = S("Carbon Steel Block"),
	tiles = { "technic_carbon_steel_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("lib_materials:stainless_steel_block", {
	description = S("Stainless Steel Block"),
	tiles = { "technic_stainless_steel_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_stone_defaults()
})



minetest.register_node( "lib_materials:mineral_lead", {
	description = S("Lead Ore"),
	tiles = { "default_stone.png^technic_mineral_lead.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "lib_materials:lead_lump",
})



minetest.register_craftitem("lib_materials:brass_ingot", {
	description = S("Brass Ingot"),
	inventory_image = "technic_brass_ingot.png",
})

minetest.register_craftitem("lib_materials:lead_lump", {
	description = S("Lead Lump"),
	inventory_image = "technic_lead_lump.png",
})

minetest.register_craftitem("lib_materials:lead_ingot", {
	description = S("Lead Ingot"),
	inventory_image = "technic_lead_ingot.png",
})

minetest.register_craftitem("lib_materials:wrought_iron_ingot", {
	description = S("Wrought Iron Ingot"),
	inventory_image = "technic_wrought_iron_ingot.png",
})

minetest.register_craftitem("lib_materials:cast_iron_ingot", {
	description = S("Cast Iron Ingot"),
	inventory_image = "technic_cast_iron_ingot.png",
})

minetest.register_craftitem("lib_materials:carbon_steel_ingot", {
	description = S("Carbon Steel Ingot"),
	inventory_image = "technic_carbon_steel_ingot.png",
})

minetest.register_craftitem("lib_materials:stainless_steel_ingot", {
	description = S("Stainless Steel Ingot"),
	inventory_image = "technic_stainless_steel_ingot.png",
})



local function register_block(block, ingot)
	minetest.register_craft({
		output = block,
		recipe = {
			{ingot, ingot, ingot},
			{ingot, ingot, ingot},
			{ingot, ingot, ingot},
		}
	})

	minetest.register_craft({
		output = ingot.." 9",
		recipe = {
			{block}
		}
	})
end

register_block("lib_materials:brass_block", "lib_materials:brass_ingot")
register_block("lib_materials:lead_block", "lib_materials:lead_ingot")
register_block("lib_materials:wrought_iron_block", "lib_materials:wrought_iron_ingot")
register_block("lib_materials:cast_iron_block", "lib_materials:cast_iron_ingot")
register_block("lib_materials:carbon_steel_block", "lib_materials:carbon_steel_ingot")
register_block("lib_materials:stainless_steel_block", "lib_materials:stainless_steel_ingot")

minetest.register_craft({
	type = 'cooking',
	recipe = "lib_materials:lead_lump",
	output = "lib_materials:lead_ingot",
})


minetest.register_craft({
	type = 'cooking',
	recipe = "lib_materials:wrought_iron_ingot",
	output = "lib_materials:cast_iron_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "lib_materials:cast_iron_ingot",
	cooktime = 2,
	output = "lib_materials:carbon_steel_ingot",
})

minetest.register_craft({
	type = 'cooking',
	recipe = "lib_materials:carbon_steel_ingot",
	cooktime = 2,
	output = "lib_materials:wrought_iron_ingot",
})

