
local S = lib_materials.gettext

-- Columnia Rusty_Block

minetest.register_node("lib_materials:rusty_block", {
	description = "Rusty Block",
	tiles = {"columnia_rusty_block.png"},
	is_ground_content = true,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
		output = 'lib_materials:rusty_block 8',
		recipe = {
			{"default:steel_block", "default:steel_block", "default:steel_block"},
			{"default:steel_block", "default:water_source", "default:steel_block"},
			{"default:steel_block", "default:steel_block", "default:steel_block"},
		},
		replacements = {{"columnia:blueprint", "columnia:blueprint"}},
})

minetest.register_node("lib_materials:rusty", {
	description = "Rusty",
	tiles = {"columnia_rusty.png"},
	is_ground_content = false,
	groups = {cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craft({
		output = 'lib_materials:rusty 8',
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"default:steel_ingot", "default:water_source", "default:steel_ingot"},
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
		},
})




--MINERALS
--
-- Skarn deposit
---- ~ Tomas Brod

-- Chalcopyrite
minetest.register_node( "lib_materials:skarn_chalcopyrite", {  
	description = S("Chalcopyrite"),
	tiles = { "lib_materials_stone_skarn.png^mineral_Chalcopyrite.png" },
	groups = {cracky=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})
-- Malachyte
minetest.register_node( "lib_materials:skarn_malachyte", {  
	description = S("Malachyte"),
	tiles = { "lib_materials_stone_skarn.png^mineral_Chalcopyrite.png" },
	groups = {cracky=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})
-- Sphalerite
minetest.register_node( "lib_materials:skarn_sphalerite", {  
	description = S("Sphalerite"),
	tiles = { "lib_materials_stone_skarn.png^mineral_sphalerite.png" },
	groups = {cracky=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})
-- Galena
minetest.register_node( "lib_materials:skarn_galena", {  
	description = S("Galena"),
	tiles = { "lib_materials_stone_skarn.png^mineral_galena.png" },
	groups = {cracky=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})
-- Magnetite
minetest.register_node( "lib_materials:skarn_magnetite", {  
	description = S("Magnetite"),
	tiles = { "lib_materials_stone_skarn.png^mineral_Magnetite.png" },
	groups = {cracky=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})
-- Magnesite
minetest.register_node( "lib_materials:skarn_magnesite", {
	description = S("Magnesite"),
	tiles = { "lib_materials_stone_skarn.png^mineral_Magnesite.png" },
	groups = {cracky=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})
-- Vermiculite (fixme: move to CommonRocks)
minetest.register_node( "lib_materials:vermiculite", {
	description = S("Vermiculite"),
	tiles = { "mineral_Vermiculite.png" },
	groups = {crumbly=3}, 
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})

--
-- Pegmatite deposit
--
-- Cassiterite
minetest.register_node( "lib_materials:pegmatite_cassiterite", {
	description = S("Cassiterite"),
	tiles = { "lib_materials_stone_pegmatite.png^mineral_cassiterite.png" },
	groups = {cracky=3},
	is_ground_content = true, sounds = default.node_sound_stone_defaults(),
})






--Quartz

--Quartz Crystal
minetest.register_craftitem("lib_materials:quartz_crystal", {
	description = "Quartz Crystal",
	inventory_image = "quartz_crystal_full.png",
})

--Ore
minetest.register_node("lib_materials:quartz_ore", {
    description = "Quartz Ore",
 	tiles = {"default_stone.png^quartz_ore.png"},
	groups = {cracky=3, stone=1},
	drop = 'lib_materials:quartz_crystal',
    sounds = default.node_sound_stone_defaults(),
})
	 
--Quartz Block
minetest.register_node("lib_materials:quartz_block", {
	description = "Quartz Block",
	tiles = {"quartz_block_top.png", "quartz_block_bottom.png", "quartz_block_side.png"},
	groups = {snappy=1,bendy=2,cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--Chiseled Quartz
minetest.register_node("lib_materials:quartz_chiseled", {
	description = "Chiseled Quartz",
	tiles = {"quartz_chiseled_top.png", "quartz_chiseled_top.png", "quartz_chiseled_side.png"},
	groups = {snappy=1,bendy=2,cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
})

--Quartz Pillar
minetest.register_node("lib_materials:quartz_pillar", {
	description = "Quartz Pillar",
	tiles = {"quartz_pillar_top.png", "quartz_pillar_top.png", "quartz_pillar_side.png"},
	groups = {snappy=1,bendy=2,cracky=1,level=2},
	sounds = default.node_sound_stone_defaults(),
	on_place = minetest.rotate_node,
	paramtype2 = "facedir"
})


--Crafting

--Quartz Block
minetest.register_craft({
	output = 'lib_materials:quartz_block',
	recipe = {
		{'lib_materials:quartz_crystal', 'lib_materials:quartz_crystal'},
		{'lib_materials:quartz_crystal', 'lib_materials:quartz_crystal'},
	}
})
	
--Chiseled Quartz
minetest.register_craft({
	output = 'lib_materials:quartz_chiseled 2',
	recipe = {
		{'stairs:slab_quartzblock'},
		{'stairs:slab_quartzblock'},
	}
})

--Quartz Pillar
minetest.register_craft({
	output = 'lib_materials:quartz_pillar 2',
	recipe = {
		{'lib_materials:quartz_block'},
		{'lib_materials:quartz_block'},
	}
})

minetest.register_craft({
	output = 'lib_materials:quartz_pillar 2',
	recipe = {
		{'lib_materials:pillar_horizontal'},
		{'lib_materials:pillar_horizontal'},
	}
})

--Stairs & Slabs
stairs.register_stair_and_slab("quartzblock", "lib_materials:quartz_block",
	{snappy=1,bendy=2,cracky=1,level=2},
	{"quartz_block_top.png", "quartz_block_bottom.png", "quartz_block_side.png"},
	"Quartz stair",
	"Quartz slab",
	default.node_sound_stone_defaults()
)

stairs.register_slab("quartzstair", "lib_materials:quartz_pillar",
	{snappy=1,bendy=2,cracky=1,level=2},
	{"quartz_pillar_top.png", "quartz_pillar_top.png", "quartz_pillar_side.png"},
	"Quartz Pillar stair",
	"Quartz Pillar slab",
	default.node_sound_stone_defaults()
)		




--Add Technic granite, marble, and ore node definitions and craftitems

minetest.register_node("lib_materials:brass_block", {
	description = S("Brass Block"),
	tiles = { "technic_brass_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("lib_materials:lead_block", {
	description = S("Lead Block"),
	tiles = { "technic_lead_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("lib_materials:silver_block", {
	description = S("Silver Block"),
	tiles = { "moreores_silver_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("lib_materials:wrought_iron_block", {
	description = S("Wrought Iron Block"),
	tiles = { "technic_wrought_iron_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("lib_materials:cast_iron_block", {
	description = S("Cast Iron Block"),
	tiles = { "technic_cast_iron_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("lib_materials:carbon_steel_block", {
	description = S("Carbon Steel Block"),
	tiles = { "technic_carbon_steel_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})

minetest.register_node("lib_materials:stainless_steel_block", {
	description = S("Stainless Steel Block"),
	tiles = { "technic_stainless_steel_block.png" },
	is_ground_content = true,
	groups = {cracky=1, level=2},
	sounds = default.node_sound_metal_defaults()
})



minetest.register_node( "lib_materials:mineral_lead", {
	description = S("Lead Ore"),
	tiles = { "default_stone.png^technic_mineral_lead.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = "lib_materials:lead_lump",
})

minetest.register_node( "lib_materials:mineral_silver", {
	description = S("Silver Ore"),
	tiles = { "default_stone.png^moreores_mineral_silver.png" },
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

minetest.register_craftitem("lib_materials:silver_lump", {
	description = S("Silver Lump"),
	inventory_image = "moreores_silver_lump.png",
})

minetest.register_craftitem("lib_materials:silver_ingot", {
	description = S("Silver Ingot"),
	inventory_image = "moreores_silver_ingot.png",
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
register_block("lib_materials:silver_block", "lib_materials:silver_ingot")
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
	recipe = "lib_materials:silver_lump",
	output = "lib_materials:silver_ingot",
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

