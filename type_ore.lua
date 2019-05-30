local S = lib_materials.intllib

--Metals
	lib_materials.register_node(
		"lib_materials:metal_brass_block",
		"basic_materials:brass_block",
		{
			description = S("Metal - Brass Block"),
			tiles = { "lib_materials_metal_brass_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_bronze_block", "default:bronzeblock", {
			description = S("Metal - Bronze Block"),
			tiles = {"lib_materials_metal_bronze_block.png"},
			is_ground_content = false,
			groups = {cracky = 1, level = 2},
			sounds = default.node_sound_metal_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_copper_block", "default:copperblock", {
			description = S("Metal - Copper Block"),
			tiles = {"lib_materials_metal_copper_block.png"},
			is_ground_content = false,
			groups = {cracky = 1, level = 2},
			sounds = default.node_sound_metal_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_gold_block", "default:goldblock", {
			description = S("Metal - Gold Block"),
			tiles = {"lib_materials_metal_gold_block.png"},
			is_ground_content = false,
			groups = {cracky = 1},
			sounds = default.node_sound_metal_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_iron_cast_block",
		"technic:cast_iron_block",
		{
			description = S("Metal - Cast Iron Block"),
			tiles = { "lib_materials_metal_iron_cast_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_iron_wrought_block",
		"technic:wrought_iron_block", -- default:steelblock
		{
			description = S("Metal - Wrought Iron Block"),
			tiles = { "lib_materials_metal_iron_wrought_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_lead_block", "technic:lead_block", {
			description = S("Metal - Lead Block"),
			tiles = { "lib_materials_metal_lead_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node("lib_materials:metal_rusty", nil, {
		description = S("Metal - Rusty"),
		tiles = {"lib_materials_metal_rusty.png"},
		is_ground_content = false,
		groups = {cracky=1,level=2},
		sounds = default.node_sound_stone_defaults(),
	})
	lib_materials.register_node(
		"lib_materials:metal_rusty_block", nil, {
			description = S("Metal - Rusty Block"),
			tiles = {"lib_materials_metal_rusty_block.png"},
			is_ground_content = true,
			groups = {cracky=1,level=2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_silver_block", "moreores:silver_block", {
			description = S("Metal - Silver Block"),
			tiles = { "lib_materials_metal_silver_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_steel_block", "default:steelblock", {
			description = S("Metal - Steel Block"),
			tiles = {"lib_materials_metal_steel_block.png"},
			is_ground_content = false,
			groups = {cracky = 1, level = 2},
			sounds = default.node_sound_metal_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_steel_carbon_block",
		"technic:carbon_steel_block",
		{
			description = S("Metal - Carbon Steel Block"),
			tiles = { "lib_materials_metal_steel_carbon_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_steel_stainless_block",
		"technic:stainless_steel_block",
		{
			description = S("Metal - Stainless Steel Block"),
			tiles = { "lib_materials_metal_steel_stainless_block.png" },
			is_ground_content = true,
			groups = {cracky=1, level=2},
			sounds = default.node_sound_metal_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:metal_tin_block", "default:tinblock", {
			description = S("Metal - Tin Block"),
			tiles = {"lib_materials_metal_tin_block.png"},
			is_ground_content = false,
			groups = {cracky = 1, level = 2},
			sounds = default.node_sound_metal_defaults(),
		}
	)

	lib_materials.register_craftitem(
		"lib_materials:metal_brass_ingot",
		"basic_materials:brass_ingot",
		{
			description = S("Metal - Brass Ingot"),
			inventory_image = "lib_materials_metal_brass_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_bronze_ingot", "default:bronze_ingot", {
			description = S("Metal - Bronze Ingot"),
			inventory_image = "lib_materials_metal_bronze_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_copper_ingot", "default:copper_ingot", {
			description = S("Metal - Copper Ingot"),
			inventory_image = "lib_materials_metal_copper_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_copper_lump", "default:copper_lump", {
			description = S("Metal - Copper Lump"),
			inventory_image = "lib_materials_metal_copper_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_gold_ingot", "default:gold_ingot", {
			description = S("Metal - Gold Ingot"),
			inventory_image = "lib_materials_metal_gold_ingot.png"
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_gold_lump", "default:gold_lump", {
			description = S("Metal - Gold Lump"),
			inventory_image = "lib_materials_metal_gold_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_iron_lump", "default:iron_lump", {
			description = S("Metal - Iron Lump"),
			inventory_image = "lib_materials_metal_iron_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_iron_cast_ingot",
		"technic:cast_iron_ingot",
		{
			description = S("Metal - Cast Iron Ingot"),
			inventory_image = "lib_materials_metal_iron_cast_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_iron_wrought_ingot",
		"technic:wrought_iron_ingot", -- default:steel_ingot
		{
			description = S("Metal - Wrought Iron Ingot"),
			inventory_image = "lib_materials_metal_iron_wrought_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_lead_lump", "technic:lead_lump", {
			description = S("Metal - Lead Lump"),
			inventory_image = "lib_materials_metal_lead_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_lead_ingot", "technic:lead_ingot", {
			description = S("Metal - Lead Ingot"),
			inventory_image = "lib_materials_metal_lead_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_silver_lump", "moreores:silver_lump", {
			description = S("Metal - Silver Lump"),
			inventory_image = "lib_materials_metal_silver_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_silver_ingot", "moreores:silver_ingot", {
			description = S("Metal - Silver Ingot"),
			inventory_image = "lib_materials_metal_silver_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_steel_ingot", "default:steel_ingot", {
			description = S("Metal - Steel Ingot"),
			inventory_image = "lib_materials_metal_steel_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_steel_carbon_ingot",
		"technic:carbon_steel_ingot",
		{
			description = S("Metal - Carbon Steel Ingot"),
			inventory_image = "lib_materials_metal_steel_carbon_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_steel_stainless_ingot",
		"technic:stainless_steel_ingot",
		{
			description = S("Metal - Stainless Steel Ingot"),
			inventory_image = "lib_materials_metal_steel_stainless_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_tin_ingot", "default:tin_ingot", {
			description = S("Metal - Tin Ingot"),
			inventory_image = "lib_materials_metal_tin_ingot.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:metal_tin_lump", "default:tin_lump", {
			description = S("Metal - Tin Lump"),
			inventory_image = "lib_materials_metal_tin_lump.png",
		}
	)

	-- FIXME: lib_materials:rusty does not exist?
	minetest.register_craft({
			output = 'lib_materials:rusty 8',
			recipe = {
				{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
				{"default:steel_ingot", "default:water_source", "default:steel_ingot"},
				{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			},
	})
	minetest.register_craft({
			output = 'lib_materials:rusty_block 8',
			recipe = {
				{"lib_materials:metal_steel_block", "lib_materials:metal_steel_block", "lib_materials:metal_steel_block"},
				{"lib_materials:metal_steel_block", "default:water_source", "lib_materials:metal_steel_block"},
				{"lib_materials:metal_steel_block", "lib_materials:metal_steel_block", "lib_materials:metal_steel_block"},
			},
			--replacements = {{"columnia:blueprint", "columnia:blueprint"}},
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = "lib_materials:metal_lead_lump",
		output = "lib_materials:metal_lead_ingot",
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = "lib_materials:metal_silver_lump",
		output = "lib_materials:metal_silver_ingot",
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = "lib_materials:metal_iron_wrought_ingot",
		output = "lib_materials:metal_iron_cast_ingot",
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = "lib_materials:metal_iron_cast_ingot",
		cooktime = 2,
		output = "lib_materials:metal_steel_carbon_ingot",
	})
	minetest.register_craft({
		type = 'cooking',
		recipe = "lib_materials:metal_steel_carbon_ingot",
		cooktime = 2,
		output = "lib_materials:metal_iron_wrought_ingot",
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
	register_block("lib_materials:metal_brass_block", "lib_materials:metal_brass_ingot")
	register_block("lib_materials:metal_lead_block", "lib_materials:metal_lead_ingot")
	register_block("lib_materials:metal_silver_block", "lib_materials:metal_silver_ingot")
	register_block("lib_materials:metal_iron_wrought_block", "lib_materials:metal_iron_wrought_ingot")
	register_block("lib_materials:metal_iron_cast_block", "lib_materials:metal_iron_cast_ingot")
	register_block("lib_materials:metal_steel_carbon_block", "lib_materials:metal_steel_carbon_ingot")
	register_block("lib_materials:metal_steel_stainless_block", "lib_materials:metal_steel_stainless_ingot")

--Minerals
	lib_materials.register_node(
		"lib_materials:mineral_coal_block", "default:coalblock", {
			description = S("Mineral - Coal Block"),
			tiles = {"lib_materials_mineral_coal_block.png"},
			is_ground_content = false,
			groups = {cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:mineral_diamond_block",
		"default:stone_with_diamond",
		{
			description = S("Mineral - Diamond Block"),
			tiles = {"lib_materials_mineral_diamond_block.png"},
			is_ground_content = false,
			groups = {cracky = 1, level = 3},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:mineral_mese_block", "default:mese", {
			description = S("Mineral - Mese Block"),
			tiles = {"lib_materials_mineral_mese_block.png"},
			paramtype = "light",
			groups = {cracky = 1, level = 2},
			sounds = default.node_sound_stone_defaults(),
			light_source = 3,
		}
	)
	lib_materials.register_node(
		"lib_materials:mineral_quartz_block", "quartz:block", {
			description = S("Mineral - Quartz Block"),
			tiles = {
				"lib_materials_mineral_quartz_block_top.png",
				"lib_materials_mineral_quartz_block_bottom.png",
				"lib_materials_mineral_quartz_block_side.png"
			},
			groups = {snappy=1,bendy=2,cracky=1,level=2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:mineral_quartz_chiseled", "quartz:chiseled", {
			description = S("Mineral - Chiseled Quartz"),
			tiles = {
				"lib_materials_mineral_quartz_chiseled_top.png",
				"lib_materials_mineral_quartz_chiseled_top.png",
				"lib_materials_mineral_quartz_chiseled_side.png"
			},
			groups = {snappy=1,bendy=2,cracky=1,level=2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:mineral_quartz_pillar", "quartz:pillar", {
			description = S("Mineral - Quartz Pillar"),
			tiles = {
				"lib_materials_mineral_quartz_pillar_top.png",
				"lib_materials_mineral_quartz_pillar_top.png",
				"lib_materials_mineral_quartz_pillar_side.png"
			},
			groups = {snappy=1,bendy=2,cracky=1,level=2},
			sounds = default.node_sound_stone_defaults(),
			on_place = minetest.rotate_node,
			paramtype2 = "facedir"
		}
	)

	lib_materials.register_craftitem(
		"lib_materials:mineral_coal_lump", "default:coal_lump", {
			description = S("Mineral - Coal Lump"),
			inventory_image = "lib_materials_mineral_coal_lump.png",
			groups = {coal = 1, flammable = 1}
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:mineral_diamond", "default:diamond", {
			description = S("Mineral - Diamond"),
			inventory_image = "lib_materials_mineral_diamond.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:mineral_flint", "default:flint", {
			description = S("Mineral - Flint"),
			inventory_image = "lib_materials_mineral_flint.png"
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:mineral_mese_crystal", "default:mese_crystal", {
			description = S("Mineral - Mese Crystal"),
			inventory_image = "lib_materials_mineral_mese_crystal.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:mineral_mese_crystal_fragment",
		"default:mese_crystal_fragment",
		{
			description = S("Mineral - Mese Crystal Fragment"),
			inventory_image = "lib_materials_mineral_mese_crystal_fragment.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:mineral_obsidian_shard",
		"default:obsidian_shard",
		{
			description = S("Mineral - Obsidian Shard"),
			inventory_image = "lib_materials_mineral_obsidian_shard.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:mineral_quartz_crystal",
		"quartz:quartz_crystal",
		{
			description = S("Mineral - Quartz Crystal"),
			inventory_image = "lib_materials_mineral_quartz_crystal_full.png",
		}
	)

	minetest.register_craft({
		output = 'lib_materials:mineral_quartz_block',
		recipe = {
			{'lib_materials:mineral_quartz_crystal', 'lib_materials:mineral_quartz_crystal'},
			{'lib_materials:mineral_quartz_crystal', 'lib_materials:mineral_quartz_crystal'},
		}
	})
	minetest.register_craft({
		output = 'lib_materials:mineral_quartz_chiseled 2',
		recipe = {
			{'stairs:slab_quartzblock'},
			{'stairs:slab_quartzblock'},
		}
	})
	minetest.register_craft({
		output = 'lib_materials:mineral_quartz_pillar 2',
		recipe = {
			{'lib_materials:mineral_quartz_block'},
			{'lib_materials:mineral_quartz_block'},
		}
	})
	minetest.register_craft({
		output = 'lib_materials:mineral_quartz_pillar 2',
		recipe = {
			{'lib_materials:pillar_horizontal'},
			{'lib_materials:pillar_horizontal'},
		}
	})
	--[[-- stairs.register_stair_and_slab("quartzblock", "lib_materials:mineral_quartz_block",
		-- {snappy=1,bendy=2,cracky=1,level=2},
		-- {"quartz_block_top.png", "quartz_block_bottom.png", "quartz_block_side.png"},
		-- "Quartz stair",
		-- "Quartz slab",
		-- default.node_sound_stone_defaults()
	-- )
	--]]
	--[[-- stairs.register_slab("quartzstair", "lib_materials:mineral_quartz_pillar",
		-- {snappy=1,bendy=2,cracky=1,level=2},
		-- {"quartz_pillar_top.png", "quartz_pillar_top.png", "quartz_pillar_side.png"},
		-- "Quartz Pillar stair",
		-- "Quartz Pillar slab",
		-- default.node_sound_stone_defaults()
	-- )	
	--]]	

--Ores
	lib_materials.register_node(
		"lib_materials:ore_stone_with_coal",
		"default:stone_with_coal",
		{
			description = S("Ore - Stone with Coal"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_coal.png"},
			groups = {cracky = 3},
			drop = 'default:coal_lump',
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_copper",
		"default:stone_with_copper",
		{
			description = S("Ore - Stone with Copper"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_copper.png"},
			groups = {cracky = 2},
			drop = 'default:copper_lump',
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_diamond",
		"default:stone_with_diamond",
		{
			description = S("Ore - Stone with Diamond"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_diamond.png"},
			groups = {cracky = 1},
			drop = "default:diamond",
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_gold",
		"default:stone_with_gold",
		{
			description = S("Ore - Stone with Gold"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_gold.png"},
			groups = {cracky = 2},
			drop = "default:gold_lump",
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_iron",
		"default:stone_with_iron",
		{
			description = S("Ore - Stone with Iron"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_iron.png"},
			groups = {cracky = 2},
			drop = 'default:iron_lump',
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_desert_with_iron", nil, {
			description = S("Ore - Stone Desert Iron Ore"),
			tiles = {"lib_materials_stone_desert_default.png^lib_materials_ore_iron.png"},
			is_ground_content = true,
			groups = {cracky=3, not_cuttable=1},
			drop = 'default:iron_lump',
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_lead", "technic:mineral_lead",
		{
			description = S("Ore - Stone with Lead"),
			tiles = { "lib_materials_stone_default.png^lib_materials_ore_lead.png" },
			is_ground_content = true,
			groups = {cracky=3},
			sounds = default.node_sound_stone_defaults(),
			drop = "lib_materials:lead_lump",
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_mese",
		"default:stone_with_mese",
		{
			description = S("Ore - Stone with Mese"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_mese.png"},
			groups = {cracky = 1},
			drop = "default:mese_crystal",
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_quartz", "quartz:quartz_ore", {
			description = S("Ore - Stone with Quartz"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_quartz.png"},
			groups = {cracky=3, stone=1},
			drop = 'lib_materials:quartz_crystal',
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_silver",
		"moreores:mineral_silver",
		{
			description = S("Ore - Stone with Silver"),
			tiles = { "lib_materials_stone_default.png^lib_materials_ore_silver.png" },
			is_ground_content = true,
			groups = {cracky=3},
			sounds = default.node_sound_stone_defaults(),
			drop = "lib_materials:lead_lump",
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_with_tin", "default:stone_with_tin", {
			description = S("Ore - Stone with Tin"),
			tiles = {"lib_materials_stone_default.png^lib_materials_ore_tin.png"},
			groups = {cracky = 2},
			drop = "default:tin_lump",
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_mudstone_with_coal_lignite", nil, {
			description = S("Ore - Stone Mudstone with Lignite Coal"),
			tiles = {"lib_materials_stone_mudstone.png^lib_materials_ore_coal_lignite.png" },
			is_ground_content = true,
			groups = {crumbly=3},
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_mudstone_with_coal_black", nil, {
			description = S("Ore - Stone Mudstone with Black Coal"),
			tiles = {"lib_materials_stone_mudstone.png^lib_materials_ore_coal.png" },
			is_ground_content = true,
			groups = {crumbly=3},
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_mudstone_with_coal_anthracite", nil, {
			description = S("Ore - Stone Mudstone with Anthracite Coal"),
			tiles = {"lib_materials_stone_mudstone.png^lib_materials_ore_coal_anthracite.png" },
			is_ground_content = true,
			groups = {crumbly=3},
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_pegmatite_with_cassiterite", nil, {
			description = S("Ore - Stone Pegmatite with Cassiterite"),
			tiles = { "lib_materials_stone_pegmatite.png^lib_materials_ore_cassiterite.png" },
			groups = {cracky=3},
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_skarn_with_chalcopyrite", nil, {  
			description = S("Ore - Stone Skarn with Chalcopyrite"),
			tiles = { "lib_materials_stone_skarn.png^lib_materials_ore_chalcopyrite.png" },
			groups = {cracky=3}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_skarn_with_galena", nil, {  
			description = S("Ore - Stone Skarn with Galena"),
			tiles = { "lib_materials_stone_skarn.png^lib_materials_ore_galena.png" },
			groups = {cracky=3}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_skarn_with_magnesite", nil, {
			description = S("Ore - Stone Skarn with Magnesite"),
			tiles = { "lib_materials_stone_skarn.png^lib_materials_ore_magnesite.png" },
			groups = {cracky=3}, 
			is_ground_content = true, sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_skarn_with_magnetite", nil, {  
			description = S("Ore - Stone Skarn with Magnetite"),
			tiles = { "lib_materials_stone_skarn.png^lib_materials_ore_magnetite.png" },
			groups = {cracky=3}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_skarn_with_malachyte", nil, {  
			description = S("Ore - Stone Skarn with Malachyte"),
			tiles = { "lib_materials_stone_skarn.png^lib_materials_ore_chalcopyrite.png" },
			groups = {cracky=3}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:ore_stone_skarn_with_sphalerite", nil, {  
			description = S("Ore - Stone Skarn with Sphalerite"),
			tiles = { "lib_materials_stone_skarn.png^lib_materials_ore_sphalerite.png" },
			groups = {cracky=3}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults()
		}
	)

-- Columnia Rusty_Block
--[[--MINERALS
--
-- Skarn deposit
---- ~ Tomas Brod

-- Chalcopyrite
-- minetest.register_node( "lib_materials:ore_stone_skarn_with_chalcopyrite", {  
	-- description = S("Ore - Stone Skarn with Chalcopyrite"),
	-- tiles = { "lib_materials_stone_skarn.png^mineral_Chalcopyrite.png" },
	-- groups = {cracky=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })
-- -- Malachyte
-- minetest.register_node( "lib_materials:ore_stone_skarn_with_malachyte", {  
	-- description = S("Ore - Stone Skarn with Malachyte"),
	-- tiles = { "lib_materials_stone_skarn.png^mineral_Chalcopyrite.png" },
	-- groups = {cracky=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })
-- -- Sphalerite
-- minetest.register_node( "lib_materials:ore_stone_skarn_with_sphalerite", {  
	-- description = S("Ore - Stone Skarn with Sphalerite"),
	-- tiles = { "lib_materials_stone_skarn.png^mineral_sphalerite.png" },
	-- groups = {cracky=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })
-- -- Galena
-- minetest.register_node( "lib_materials:ore_stone_skarn_with_galena", {  
	-- description = S("Ore - Stone Skarn with Galena"),
	-- tiles = { "lib_materials_stone_skarn.png^mineral_galena.png" },
	-- groups = {cracky=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })
-- -- Magnetite
-- minetest.register_node( "lib_materials:ore_stone_skarn_with_magnetite", {  
	-- description = S("Ore - Stone Skarn with Magnetite"),
	-- tiles = { "lib_materials_stone_skarn.png^mineral_Magnetite.png" },
	-- groups = {cracky=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })
-- -- Magnesite
-- minetest.register_node( "lib_materials:ore_stone_skarn_with_magnesite", {
	-- description = S("Ore - Stone Skarn with Magnesite"),
	-- tiles = { "lib_materials_stone_skarn.png^mineral_Magnesite.png" },
	-- groups = {cracky=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })
-- -- Vermiculite (fixme: move to CommonRocks)
-- minetest.register_node( "lib_materials:mineral_vermiculite", {
	-- description = S("Mineral - Vermiculite"),
	-- tiles = { "mineral_Vermiculite.png" },
	-- groups = {crumbly=3}, 
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })

--
-- Pegmatite deposit
--
-- Cassiterite
-- minetest.register_node( "lib_materials:ore_stone_pegmatite_with_cassiterite", {
	-- description = S("Ore - Stone Pegmatite with Cassiterite"),
	-- tiles = { "lib_materials_stone_pegmatite.png^mineral_cassiterite.png" },
	-- groups = {cracky=3},
	-- is_ground_content = true, sounds = default.node_sound_stone_defaults(),
-- })


-- minetest.register_node("lib_materials:ore_stone_mudstone_with_coal_lignite", {
	-- description = S("Ore - Stone Mudstone with Lignite Coal"),
	-- tiles = {"lib_materials_stone_mudstone.png^rocks_lignite.png" },
	-- is_ground_content = true,
	-- groups = {crumbly=3},
-- })
-- minetest.register_node("lib_materials:ore_stone_mudstone_with_coal_black", {
	-- description = S("Ore - Stone Mudstone with Black Coal"),
	-- tiles = {"lib_materials_stone_mudstone.png^default_mineral_coal.png" },
	-- is_ground_content = true,
	-- groups = {crumbly=3},
-- })
-- minetest.register_node("lib_materials:ore_stone_mudstone_with_coal_anthracite", {
	-- description = S("Ore - Stone Mudstone with Anthracite Coal"),
	-- tiles = {"lib_materials_stone_mudstone.png^rocks_anthracite.png" },
	-- is_ground_content = true,
	-- groups = {crumbly=3},
-- })
--]]
--Quartz, --Quartz Crystal, --Ore, --Quartz Block, --Chiseled Quartz, --Quartz Pillar
--Crafting, --Quartz Block, --Chiseled Quartz, --Quartz Pillar, --Stairs & Slabs
--Add Technic granite, marble, and ore node definitions and craftitems
