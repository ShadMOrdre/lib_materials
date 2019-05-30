local S = lib_materials.intllib

--[[

	Includes nodes from Technic, Mapgen, Stone, Darkage, Valleys_c, and others.
	
	stone_brown and stone_sand are creations of Steven G. Merchant (aka Shad MOrdre -- shadmordre@minetest.net or shadmordre@gmail.com) Copyright 2016©

--]]

lib_materials.register_stone = function(
	name, desc, texture, stone_cracky, stone_level
)

	lib_materials.register_node(
		"lib_materials:stone_"..name.."", nil, {
			description = S("Stone - "..desc..""),
			tiles = {texture},
			is_ground_content = true,
			groups = {
				cracky = stone_cracky, stone = 1, level = stone_level
			},
			drop = 'lib_materials:'..name..'',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults()
		}
	)

	--if stairs and lib_materials.enable_stairs then
		--register_stairs
	--end
	
	--if shapes and lib_materials.enable_shapes then
		--register_shapes
	--end
	
	--if shapes and lib_materials.enable_slopes then
		--register_slopes
	--end
	
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

	lib_materials.register_stone("travertine", "Travertine",
		"lib_materials_stone_travertine.png", 3, 1
	)
	lib_materials.register_stone("rhyolite", "Rhyolite",
		"lib_materials_stone_rhyolite.png", 3, 1
	)
	lib_materials.register_stone("sandstone_red", "Sandstone Red",
		"lib_materials_stone_sandstone_red.png", 3, 1
	)
	lib_materials.register_stone("serpentine_02", "Serpentine 02",
		"lib_materials_stone_serpentine_02.png", 3, 1
	)
	lib_materials.register_stone("granite_black", "Granite Black",
		"lib_materials_stone_granite_black.png", 3, 1
	)
	lib_materials.register_stone("granite_brown_02", "Granite Brown 02",
		"lib_materials_stone_granite_brown_02.png", 3, 1
	)
	lib_materials.register_stone("granite_04", "Granite 04",
		"lib_materials_stone_granite_04.png", 3, 1
	)
	lib_materials.register_stone("brownstone", "Brownstone",
		"lib_materials_stone_brownstone.png", 3, 1
	)
	
--CUSTOM
	lib_materials.register_node(
		"lib_materials:cobble_stone_desert_default",
		"default:desert_cobble",
		{
			tiles = {
				"lib_materials_stone_desert_default.png^(lib_materials_stone_cobble_default.png^[mask:lib_materials_mask_cobble.png)"
			},
			description = "Cobble - Stone Desert Default",
			is_ground_content = true,
			groups = {cracky=3, stone=2},
		}
	)
	lib_materials.register_node(
		"lib_materials:dirt_desert_cobble_stone", nil, {
			tiles = {
				"lib_materials_stone_desert_default.png^(lib_materials_dirt.png^[mask:lib_materials_mask_cobble.png)"
			},
			description = "Cobble - Stone Desert Default",
			is_ground_content = true,
			groups = {cracky=3, stone=2},
		}
	)
	lib_materials.register_node(
		"lib_materials:dirt_cobble_stone", nil, {
			tiles = {
				"lib_materials_stone_cobble_default.png^(lib_materials_dirt.png^[mask:lib_materials_mask_cobble.png)"
			},
			description = "Dirt Cobble Stone",
			is_ground_content = true,
			groups = {cracky=3, stone=2},
		}
	)
	lib_materials.register_node(
		"lib_materials:dirt_stone", nil, {
			tiles = {
				"lib_materials_stone_default.png^(lib_materials_dirt.png^[mask:lib_materials_mask_stone.png)"
			},
			description = "Dirt Stone",
			is_ground_content = true,
			groups = {cracky=3, stone=2},
		}
	)
	lib_materials.register_node(
		"lib_materials:sand_with_stone_desert", nil, {
			tiles = {
				"lib_materials_stone_desert_default.png^(lib_materials_sand_desert_default.png^[mask:lib_materials_mask_stone.png)"
			},
			description = "Desert Sand with Desert Stone",
			is_ground_content = true,
			groups = {cracky=3, stone=2},
		}
	)

--Castles mod.  (To be converted)
	lib_materials.register_node(
		"lib_materials:stone_castle_dungeon", 
		"castle_masonry:dungeon_stone", -- castle:dungeon_stone
		{
			description = S("Stone - Castle Dungeon"),
			tiles = {"castle_dungeon_stone.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_castle_dungeon',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_castle_pavement",
		"castle_masonry:pavement_brick",
		-- castle:pavement castle:pavement_brick
		{
			description = S("Stone - Castle Pavement"),
			tiles = {"castle_pavement_brick.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			drop = 'lib_materials:stone_castle_pavement',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_castle_rubble",
		"castle_masonry:rubble", -- castle:rubble
		{
			description = S("Stone - Castle Rubble"),
			tiles = {"castle_rubble.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			drop = 'lib_materials:stone_castle_rubble',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_castle_slate",
		"castle_masonry:roofslate", -- castle:roofslate
		{
			description = S("Stone - Castle Slate"),
			tiles = {"castle_slate.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			drop = 'lib_materials:stone_castle_slate',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_castle_wall",
		"castle_masonry:stonewall", -- castle:stonewall
		{
			description = S("Stone - Castle Wall"),
			tiles = {"castle_stonewall.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_castle_wall',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)

--DecoBlocks mod.  (To be moved to type_deco.lua)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_pillar",
		"decoblocks:sandstone_pillar",
		{
			description = S("Stone - Sandstone Pillar"),
			tiles = {
				"decoblocks_sandstone_pillar_top.png",
				"decoblocks_sandstone_pillar_top.png", 
				"decoblocks_sandstone_pillar.png",
				"decoblocks_sandstone_pillar.png", 
				"decoblocks_sandstone_pillar.png",
				"decoblocks_sandstone_pillar.png", 
			},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			drop = 'lib_materials:stone_castle_rubble',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)

--GrailTest game
	lib_materials.register_node(
		"lib_materials:stone_bluestone",
		"mineral:bluestone",
		{
			description = S("Stone - Blue Stone"),
			tiles = {"lib_materials_stone_bluestone.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_bluestone',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_greenstone",
		"mineral:greenstone",
		{
			description = S("Stone - Green Stone"),
			tiles = {"lib_materials_stone_greenstone.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_greenstone',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_whitestone",
		"mineral:white_stone",
		{
			description = S("Stone - White Stone"),
			tiles = {"lib_materials_stone_whitestone.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_whitestone',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_brown",
		nil, -- FIXME: mineral:basalt?
		{
			description = S("Stone - Brown Stone"),
			tiles = {"lib_materials_stone_brown.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_brown',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sand",
		nil, -- FIXME: source node?
		{
			description = S("Stone - Sand Stone"),
			tiles = {"lib_materials_stone_sand.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_sand',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)

	--Default
	lib_materials.register_node(
		"lib_materials:stone", "default:stone", {
			description = S("Stone"),
			tiles = {"lib_materials_stone_default.png"},
			groups = {cracky = 3, stone = 1},
			drop = 'lib_materials:cobble',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_brick", "default:stonebrick", {
			description = S("Stone - Brick"),
			paramtype2 = "facedir",
			place_param2 = 0,
			tiles = {"lib_materials_stone_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_block", "default:stone_block", {
			description = S("Stone - Block"),
			tiles = {"lib_materials_stone_block.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_cobble", "default:cobble", {
			description = S("Stone - Cobble"),
			tiles = {"lib_materials_stone_cobble_default.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_cobble_small", nil, {
			description = S("Stone - Cobble Small"),
			tiles = {"lib_materials_stone_default_cobble_small.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_cobble_mossy", "default:mossycobble", {
			description = S("Stone - Mossy Cobble"),
			tiles = {"lib_materials_stone_cobble_mossy.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gravel", "default:gravel", {
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
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_default_rockwall", nil, {
			description = S("Rockwall - Stone"),
			tiles = {"lib_materials_stone_default_rockwall.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_desert", "default:desert_stone", {
			description = S("Stone - Desert"),
			tiles = {"lib_materials_stone_desert_default.png"},
			groups = {cracky = 3, stone = 1},
			drop = 'lib_materials:desert_cobble',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_desert_brick",
		"default:desert_stonebrick",
		{
			description = S("Stone - Desert Brick"),
			paramtype2 = "facedir",
			place_param2 = 0,
			tiles = {"lib_materials_stone_desert_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_desert_block",
		"default:desert_stone_block",
		{
			description = S("Stone - Desert Block"),
			tiles = {"lib_materials_stone_desert_block.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_desert_cobble", "default:desert_cobble", {
			description = S("Stone - Desert Cobble"),
			tiles = {"lib_materials_stone_desert_cobble.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_desert_cobble_small", nil, {
			description = S("Stone - Desert Cobble Small"),
			tiles = {"lib_materials_stone_desert_cobble_small.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_desert_rockwall", nil, {
			description = S("Stone - Desert Rockwall"),
			tiles = {"lib_materials_stone_desert_rockwall.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_obsidian", "default:obsidian", {
			description = S("Stone - Obsidian"),
			tiles = {"lib_materials_stone_obsidian_default.png"},
			sounds = default.node_sound_stone_defaults(),
			groups = {cracky = 1, level = 2},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_obsidian_brick", "default:obsidianbrick", {
			description = S("Stone - Obsidian Brick"),
			paramtype2 = "facedir",
			place_param2 = 0,
			tiles = {"lib_materials_stone_obsidian_brick.png"},
			is_ground_content = false,
			sounds = default.node_sound_stone_defaults(),
			groups = {cracky = 1, level = 2},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_obsidian_block",
		"default:obsidian_block",
		{
			description = S("Stone - Obsidian Block"),
			tiles = {"lib_materials_stone_obsidian_block.png"},
			is_ground_content = false,
			sounds = default.node_sound_stone_defaults(),
			groups = {cracky = 1, level = 2},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone", "default:sandstone", {
			description = S("Stone - Sandstone"),
			tiles = {"lib_materials_stone_sandstone_default.png"},
			groups = {crumbly = 1, cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_brick",
		"default:sandstonebrick",
		{
			description = S("Stone - Sandstone Brick"),
			paramtype2 = "facedir",
			place_param2 = 0,
			tiles = {"lib_materials_stone_sandstone_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_block",
		"default:sandstone_block",
		{
			description = S("Stone - Sandstone Block"),
			tiles = {"lib_materials_stone_sandstone_block.png"},
			is_ground_content = false,
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_desert",
		"default:desert_sandstone",
		{
			description = S("Stone - Sandstone Desert"),
			tiles = {"lib_materials_stone_sandstone_desert_default.png"},
			groups = {crumbly = 1, cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_desert_brick",
		"default:desert_sandstone_brick",
		{
			description = S("Stone - Sandstone Desert Brick"),
			paramtype2 = "facedir",
			place_param2 = 0,
			tiles = {"lib_materials_stone_sandstone_desert_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_desert_block",
		"default:desert_sandstone_block",
		{
			description = S("Stone - Sandstone Desert Block"),
			tiles = {"lib_materials_stone_sandstone_desert_block.png"},
			is_ground_content = false,
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_desert_gravel", nil, {
			description = S("Stone - Sandstone Desert Gravel"),
			tiles = {"lib_materials_stone_sandstone_desert_gravel.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:lib_materials:stone_sandstone_desert_gravel',
			legacy_mineral = true,
			sounds = default.node_sound_gravel_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_silver",
		"default:silver_sandstone",
		{
			description = S("Stone - Sandstone Silver"),
			tiles = {"lib_materials_stone_sandstone_silver_default.png"},
			groups = {crumbly = 1, cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_silver_brick",
		"default:silver_sandstone_brick",
		{
			description = S("Stone - Sandstone Silver Brick"),
			paramtype2 = "facedir",
			place_param2 = 0,
			tiles = {"lib_materials_stone_sandstone_silver_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_silver", -- FIXME: _block?
		"default:silver_sandstone_block",
		{
			description = S("Stone - Sandstone Silver Block"),
			tiles = {"lib_materials_stone_sandstone_silver_block.png"},
			is_ground_content = false,
			groups = {cracky = 2},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_white", nil, {
			description = S("Stone -  - White Sandstone"),
			tiles = {"lib_materials_stone_sandstone_white.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_sandstone_white',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_white_brick", nil, {
			description = S("Stone -  - White Sandstone Brick"),
			tiles = {"lib_materials_stone_sandstone_white_brick.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_sandstone_white_brick',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_white_gravel", nil, {
			description = S("Stone -  - White Sandstone Gravel"),
			tiles = {"lib_materials_stone_sandstone_white_gravel.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_sandstone_white_gravel',
			legacy_mineral = true,
			sounds = default.node_sound_gravel_defaults(),
		}
	)

	lib_materials.register_node(
		"lib_materials:stone_adobe", "darkage:adobe", {
			description = S("Stone - Adobe"),
			tiles = {"lib_materials_stone_adobe.png"},
			is_ground_content = true,
			groups = {crumbly=3},
			sounds = default.node_sound_sand_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_andesite", nil, {  
			description = S("Stone - Andesite"),
			tiles = {"lib_materials_stone_andesite.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_basalt_01", "darkage:basalt", {
			description = S("Stone - Basalt 01"),
			tiles = {"lib_materials_stone_basalt_01.png"},
			is_ground_content = true,
			drop = get_node_drops("lib_materials:stone_basalt_01","lib_materials:stone_basalt_01_cobble"),
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_basalt_01_block", nil, {
			description = S("Stone - Basalt 01 Block"),
			tiles = {"lib_materials_stone_basalt_01_block.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_basalt_01_brick",
		"material:basalt_brick", -- FIXME: ???
		{
			description = S("Stone - Basalt 01 Brick"),
			tiles = {"lib_materials_stone_basalt_01_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_basalt_01_cobble",
		"darkage:basalt_cobble",
		{
			description = S("Stone - Basalt 01 Cobble"),
			tiles = {"lib_materials_stone_basalt_01_cobble.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_basalt_02", "mineral:basalt",
		{
			description = S("Stone - Basalt 02"),
			tiles = {"lib_materials_stone_basalt_02.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1, level = 2},
			drop = 'lib_materials:stone_basalt_02',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_basalt_03", "rocks:basalt",
		{  
			description = S("Stone - Basalt 03"),
			tiles = {"lib_materials_stone_basalt_03.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_chalk", "darkage:chalk", {
			description = S("Stone - Chalk"),
			tiles = {"lib_materials_stone_chalk.png"},
			is_ground_content = true,
			drop = 'lib_materials:chalk_powder 2',
			groups = {crumbly=2, cracky=2, not_cuttable=1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_claystone", "rocks:claystone", {
			description = S("Stone - Claystone"),
			tiles = {"lib_materials_stone_claystone.png" },
			is_ground_content = true,
			groups = {crumbly=1, cracky=3},
			sounds = default.node_sound_dirt_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_conglomerate", "rocks:conglomerate", {
			description = S("Stone - Conglomerate"),
			tiles = {"lib_materials_stone_conglomerate.png" },
			is_ground_content = true,
			sounds = default.node_sound_dirt_defaults(),
			groups = {crumbly=3},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_diorite", "rocks:diorite", {  
			description = S("Stone - Diorite"),
			tiles = {"lib_materials_stone_diorite.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gabbro", "rocks:gabbro", {  
			description = S("Stone - Gabbro"),
			tiles = {"lib_materials_stone_gabbro.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gneiss_01", "darkage:gneiss", {
			description = S("Stone - Gneiss 01"),
			tiles = {"lib_materials_stone_gneiss_01.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			drop = get_node_drops("lib_materials:stone_gneiss_01", "lib_materials:stone_gneiss_01_cobble"),
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gneiss_01_block", nil, {
			description = S("Stone - Gneiss 01 Block"),
			tiles = {"lib_materials_stone_gneiss_01_block.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gneiss_01_brick", nil, {
			description = S("Stone - Gneiss 01 Brick"),
			tiles = {"lib_materials_stone_gneiss_01_brick.png"},
			is_ground_content = false,
			groups = {cracky = 2, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gneiss_01_cobble",
		"darkage:gneiss_cobble",
		{
			description = S("Stone - Gneiss 01 Cobble"),
			tiles = {"lib_materials_stone_gneiss_01_cobble.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_gneiss_02", nil, {  
			description = S("Stone - Gniess 02"),
			tiles = {"lib_materials_stone_gneiss_02.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_granite_01", "technic:granite", {
			description = S("Stone - Granite 01 (Technic)"),
			tiles = { "lib_materials_stone_granite_01.png" },
			is_ground_content = true,
			groups = {cracky=1, granite=1, stone = 1, level = 2},
			drop = 'lib_materials:stone_granite_01',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	) 
	lib_materials.register_node(
		"lib_materials:stone_granite_02", "mapgen:granite", {
			description = S("Stone - Granite 02"),
			tiles = {"lib_materials_stone_granite_02.png"},
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_granite_brown", "mapgen:granite_brown", {
			description = S("Stone - Granite Brown"),
			tiles = {"lib_materials_stone_granite_brown.png"},
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_granite_03", "rocks:granite", {  
			description = S("Stone - Granite 03"),
			tiles = {"lib_materials_stone_granite_03.png" },
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
			groups = {cracky=3, stone=1}, 
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_laterite", "rocks:laterite", {
			description = S("Stone - Laterite clay"),
			tiles = {"lib_materials_stone_laterite.png" },
			is_ground_content = true,
			sounds = default.node_sound_dirt_defaults(),
			groups = {crumbly=3},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_limestone_01", "mapgen:limestone", {
			description = S("Stone - Limestone 01"),
			tiles = {"lib_materials_stone_limestone_01.png"},
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_limestone_02", "rocks:limestone", {  
			description = S("Stone - Limestone 02"),
			tiles = {"lib_materials_stone_limestone_02.png" },
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
			groups = {cracky=2},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_marble_01", "technic:marble", {
			description = S("Stone - Marble 01 (Technic)"),
			tiles = { "lib_materials_stone_marble_01.png" },
			is_ground_content = true,
			groups = {cracky=3, marble=1, stone = 1, level = 2},
			drop = 'lib_materials:stone_marble_01',
			legacy_mineral = true,
			sounds = default.node_sound_stone_defaults(),
		}
	) 
	lib_materials.register_node(
		"lib_materials:stone_marble_02", "mapgen:marble", {
			description = S("Stone - Marble 02"),
			tiles = {"lib_materials_stone_marble_02.png"},
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_marble_03", "darkage:marble", {
			description = S("Stone - Marble 03"),
			tiles = {"lib_materials_stone_marble_03.png"},
			is_ground_content = true,
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_marble_03_block", nil, {
			description = S("Stone - Marble 03 Block"),
			tiles = {"lib_materials_stone_marble_03_block.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_mudstone", "rocks:mudstone", {  
			description = S("Stone - Mudstone"),
			tiles = {"lib_materials_stone_mudstone.png" },
			groups = {cracky=1, crumbly=3}, 
			is_ground_content = true,
			sounds = default.node_sound_dirt_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_pegmatite", nil, {
			description = S("Stone - Pegmatite"),
			tiles = {"lib_materials_stone_pegmatite.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_rhyolitic_tuff", nil, {
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
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_rhyolitic_tuff_bricks", nil, {
			description = S("Stone - Rhyolitic Tuff Bricks"),
			tiles = {"lib_materials_stone_rhyolitic_tuff_bricks.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_rhyolitic_tuff_cobble", nil, {
			description = S("Stone - Rhyolitic Tuff Cobble"),
			tiles = {"lib_materials_stone_rhyolitic_tuff_cobble.png"},
			groups = {crumbly = 2, falling_node = 1},
			sounds = default.node_sound_gravel_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_old_red", nil, {
			description = S("Stone - Old Red Sandstone"),
			tiles = {"lib_materials_stone_sandstone_old_red.png"},
			is_ground_content = true,
			drop = "lib_materials:stone_sandstone_old_red_cobble",
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_old_red_block", nil, {
			description = S("Stone - Old Red Sandstone Block"),
			tiles = {"lib_materials_stone_sandstone_old_red_block.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_old_red_brick", nil, {
			description = S("Stone - Old Red Sandstone Brick"),
			tiles = {"lib_materials_stone_sandstone_old_red_brick.png"},
			is_ground_content = false,
			groups = {cracky = 3, stone = 2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_sandstone_old_red_cobble", nil, {
			description = S("Stone - Old Red Sandstone Cobble"),
			tiles = {"lib_materials_stone_sandstone_old_red_cobble.png"},
			is_ground_content = true,
			groups = {cracky = 3, crumbly=2, stone = 2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_savanna", "mapgen:savanna_stone", {
			description = S("Stone - Savannah Stone"),
			tiles = {"lib_materials_stone_savannah.png"},
			groups = {cracky = 3, stone=1},
			drop = 'lib_materials:stone_savanna_cobble',
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_savanna_cobble",
		"mapgen:savanna_cobblestone_stone",
		{
			description = S("Stone - Savanna Cobble"),
			tiles = {"lib_materials_stone_savanna_cobble.png"},
			groups = {cracky = 3, stone = 1},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_savanna_with_ore_coal",
		"mapgen:savanna_coal",
		{
			description = S("Stone - Savanna Stone With Coal Ore"),
			tiles = {"lib_materials_stone_savannah_with_ore_coal.png"},
			groups = {cracky = 3, stone = 1, ore=1},
			drop = 'default:coal_lump',
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_savanna_with_ore_iron",
		"mapgen:savanna_iron",
		{
			description = S("Stone - Savanna Stone With Iron Ore"),
			tiles = {"lib_materials_stone_savannah_with_ore_iron.png"},
			groups = {cracky = 2, stone = 1, ore=1},
			drop = 'default:iron_lump',
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_schist", "darkage:schist", {
			description = S("Stone - Schist"),
			tiles = {"lib_materials_stone_schist.png"},
			is_ground_content = true,
			groups = {cracky=3},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_serpentine", "darkage:serpentine", {
			description = S("Stone - Serpentine"),
			tiles = {"lib_materials_stone_serpentine.png"},
			is_ground_content = true,
			groups = {cracky=3},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_shale", "darkage:shale", {
			description = S("Stone - Shale"),
			tiles = {
				"lib_materials_stone_shale.png",
				"lib_materials_stone_shale.png",
				"lib_materials_stone_shale_side.png"
			},
			is_ground_content = true,
			groups = {crumbly=2,cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_skarn", "rocks:skarn", {  
			description = S("Stone - Skarn"),
			tiles = {"lib_materials_stone_skarn.png" },
			groups = {cracky=3, stone=1}, 
			is_ground_content = true,
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_slate_01", "darkage:slate", {
			description = S("Stone - Slate 01"),
			tiles = {
				"lib_materials_stone_slate_01_top.png",
				"lib_materials_stone_slate_01_top.png",
				"lib_materials_stone_slate_01_side.png"
			},
			is_ground_content = true,
			drop = 'lib_materials:stone_slate_01_cobble',
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_slate_01_block", nil, {
			description = S("Stone - Slate 01 Block"),
			tiles = {"lib_materials_stone_slate_01_block.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_slate_01_brick", nil, {
			description = S("Stone - Slate 01 Brick"),
			tiles = {"lib_materials_stone_slate_01_brick.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_slate_01_cobble", "darkage:slate_cobble", {
			description = S("Stone - Slate 01 Cobble"),
			tiles = {"lib_materials_stone_slate_01_cobble.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_slate_01_tile", "darkage:slate_tile", {
			description = S("Stone - Slate 01 Tile"),
			tiles = {"lib_materials_stone_slate_01_tile.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_slate_02", "rocks:slate", {
			description = S("Stone - Slate 02"),
			tiles = {"lib_materials_stone_slate_02.png" },
			is_ground_content = true,
			sounds = default.node_sound_dirt_defaults(),
			groups = {cracky=3},
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_tuff", nil, {
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
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_tuff_bricks", nil, {
			description = S("Stone - Tuff Bricks"),
			tiles = {"lib_materials_stone_tuff_bricks.png"},
			is_ground_content = false,
			groups = {cracky=2},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_tuff_bricks_old", nil, {
			description = S("Stone - Tuff Bricks Old"),
			tiles = {"lib_materials_stone_tuff_bricks_old.png"},
			is_ground_content = false,
			groups = {cracky=3},
			sounds = default.node_sound_stone_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_tuff_cobble", nil, {
			description = S("Stone - Tuff Cobble"),
			tiles = {"lib_materials_stone_tuff_cobble.png"},
			groups = {crumbly = 2, falling_node = 1},
			sounds = default.node_sound_gravel_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_vermiculite", "rocks:vermiculite", {
			description = S("Stone - Vermiculite"),
			tiles = {"lib_materials_stone_vermiculite.png"},
			groups = {crumbly = 1, cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		}
	)

--Technic Node - 	Granite 01, Marble 01
--Farlands Nodes - 	Granite 02, Granite Brown, Limestone 01, Marble 02, Savanna
--Rocks mod - 	Andesite, Basalt 03, Claystone, Conglomerate, Diorite, Gabbro, Gneiss 02, Granite 03, Laterite, Limestone 02, Mudstone, Pegmatite, Skarn, Slate 02, 
	-- Basalt       Ex/Mafic   hard  same as diorite, byt limit=0.5
	-- Mudstone     Sed        soft  Ocean, beach, river, glaciers
	-- more rock defs
--Darkage Nodes - 	Adobe, Basalt 01, Chalk, Gneiss 01, Marble 03, Old Red Sandstone (ors), Serpentine, Shale, Schist, Slate 01, Tuff, Rhyolitic Tuff
	lib_materials.register_craftitem(
		"lib_materials:mineral_chalk_powder", "darkage:chalk_powder", {
			description = "Chalk Powder",
			inventory_image = "lib_materials_mineral_chalk_powder.png",
		}
	)
	lib_materials.register_node(
		"lib_materials:cobble_with_plaster",
		"darkage:cobble_with_plaster",
		{
			description = "Stone - Cobblestone with Plaster",
			tiles = {
				"darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_D.png)",
				"darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_B.png)", 
				"darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_C.png)",
				"darkage_chalk.png^(default_cobble.png^[mask:darkage_plaster_mask_A.png)", 
				"default_cobble.png",
				"darkage_chalk.png"
			},
			is_ground_content = false,
			paramtype2 = "facedir",
			drop = 'default:cobble',
			groups = {cracky=3, not_cuttable=1},
			sounds = default.node_sound_stone_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:chalked_bricks_with_plaster", nil, {
			description = "Stone - Chalked Bricks with Plaster",
			tiles = {
				"darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_D.png)",
				"darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_B.png)", 
				"darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_C.png)",
				"darkage_chalk.png^(darkage_chalked_bricks.png^[mask:darkage_plaster_mask_A.png)", 
				"darkage_chalked_bricks.png", "darkage_chalk.png"
			},
			is_ground_content = false,
			paramtype2 = "facedir",
			drop = 'default:cobble',
			groups = {cracky=3, not_cuttable=1},
			sounds = default.node_sound_stone_defaults(),
		}
	)

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
