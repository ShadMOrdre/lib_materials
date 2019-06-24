
local S = lib_materials.intllib

--Additional Dirts

local GRASS_COASTAL_TEXTURE_TOP = "lib_materials_grass_coastal_top.png"
local GRASS_COASTAL_TEXTURE_SIDE = "lib_materials_grass_coastal_side.png"
local GRASS_LOWLAND_TEXTURE_TOP = "lib_materials_grass_lowland_top.png"
local GRASS_LOWLAND_TEXTURE_SIDE = "lib_materials_grass_lowland_side.png"
local GRASS_SHELF_TEXTURE_TOP = "lib_materials_grass_shelf_top.png"
local GRASS_SHELF_TEXTURE_SIDE = "lib_materials_grass_shelf_side.png"
local GRASS_HIGHLAND_TEXTURE_TOP = "lib_materials_grass_highland_top.png"
local GRASS_HIGHLAND_TEXTURE_SIDE = "lib_materials_grass_highland_side.png"

local GRASS_HUMID_PALETTE_1 = "#43e9a5:80"
--local GRASS_HUMID_PALETTE_2 = "#36e44b:80"   --"30e87a:80"
--local GRASS_HUMID_PALETTE_3 = "#81da62:80"   --"12e66c:80"
local GRASS_HUMID_PALETTE_2 = "#81da62:80"
local GRASS_HUMID_PALETTE_3 = "#36e44b:80"
local GRASS_HUMID_PALETTE_4 = "#93fc54:80"   --"54da4a:80"
local GRASS_SEMIHUMID_PALETTE_1 = "#69e942:80"
--local GRASS_SEMIHUMID_PALETTE_2 = "#b1e436:80"
--local GRASS_SEMIHUMID_PALETTE_3 = "#dacf61:80"
local GRASS_SEMIHUMID_PALETTE_2 = "#dacf61:80"
local GRASS_SEMIHUMID_PALETTE_3 = "#b1e436:80"
local GRASS_SEMIHUMID_PALETTE_4 = "#fcd953:80"
local GRASS_TEMPERATE_PALETTE_1 = "#ace943:80"
--local GRASS_TEMPERATE_PALETTE_2 = "#e4d136:80"
--local GRASS_TEMPERATE_PALETTE_3 = "#daa062:80"
local GRASS_TEMPERATE_PALETTE_2 = "#daa062:80"
local GRASS_TEMPERATE_PALETTE_3 = "#e4d136:80"
local GRASS_TEMPERATE_PALETTE_4 = "#fc9754:80"
local GRASS_SEMIARID_PALETTE_1 = "#e9df43:80"
--local GRASS_SEMIARID_PALETTE_2 = "#e48836:80"
--local GRASS_SEMIARID_PALETTE_3 = "#da6e62:80"
local GRASS_SEMIARID_PALETTE_2 = "#da6e62:80"
local GRASS_SEMIARID_PALETTE_3 = "#e48836:80"
local GRASS_SEMIARID_PALETTE_4 = "#fc5458:80"

--[[
local GRASS_HUMID_PALETTE_1 = "#43e9a5:80"
local GRASS_HUMID_PALETTE_2 = "#36e44b:80"
local GRASS_HUMID_PALETTE_3 = "#81da62:80"
local GRASS_HUMID_PALETTE_4 = "#93fc54:80"
local GRASS_SEMIHUMID_PALETTE_1 = "#69e942:80"
local GRASS_SEMIHUMID_PALETTE_2 = "#b1e436:80"
local GRASS_SEMIHUMID_PALETTE_3 = "#dacf61:80"
local GRASS_SEMIHUMID_PALETTE_4 = "#fcd953:80"
local GRASS_TEMPERATE_PALETTE_1 = "#ace943:80"
local GRASS_TEMPERATE_PALETTE_2 = "#e4d136:80"
local GRASS_TEMPERATE_PALETTE_3 = "#daa062:80"
local GRASS_TEMPERATE_PALETTE_4 = "#fc9754:80"
local GRASS_SEMIARID_PALETTE_1 = "#e9df43:80"
local GRASS_SEMIARID_PALETTE_2 = "#e48836:80"
local GRASS_SEMIARID_PALETTE_3 = "#da6e62:80"
local GRASS_SEMIARID_PALETTE_4 = "#fc5458:80"
--]]

--[[  ALT COLOR VALUES
--DEFAULTS
local GRASS_PALETTE_1 = "#69e942:80"
local GRASS_PALETTE_2 = "#b1e436:80"
local GRASS_PALETTE_3 = "#dacf61:80"
local GRASS_PALETTE_4 = "#fcd953:80"

local GRASS_DRY_PALETTE_1 = "#ace943:80"
local GRASS_DRY_PALETTE_2 = "#e4d136:80"
local GRASS_DRY_PALETTE_3 = "#daa062:80"
local GRASS_DRY_PALETTE_4 = "#fc9754:80"

local GRASS_BROWN_PALETTE_1 = "#e9df43:80"
local GRASS_BROWN_PALETTE_2 = "#e48836:80"
local GRASS_BROWN_PALETTE_3 = "#da6e62:80"
local GRASS_BROWN_PALETTE_4 = "#fc5458:80"

--CUSTOM
local GRASS_LUSH_PALETTE_1 = {":80", "#:80", ":80", ":80"}
local GRASS_LUSH_PALETTE_2 = {":80", "#:80", ":80", ":80"}
local GRASS_LUSH_PALETTE_3 = {":80", "#:80", ":80", ":80"}
local GRASS_LUSH_PALETTE_4 = {":80", "#:80", ":80", ":80"}

local GRASS_DRY_PALETTE_1 = {"ed996b:80", "#d7b353:80", "d3e420:80", "c2ee10:80"}
local GRASS_DRY_PALETTE_2 = {"fa8e6c:80", "#ea9a6a:80", "dcbc3e:80", "e0e818:80"}
local GRASS_DRY_PALETTE_3 = {"fd9579:80", "#f49a6e:80", "d9a34d:80", "e4d426:80"}
local GRASS_DRY_PALETTE_4 = {"fb9a6b:80", "#f7954d:80", "e8983a:80", "e2b52c:80"}

local GRASS_BROWN_PALETTE_1 = {"ed6b74:80", "#d77c53:80", "e4a120:80", "eebc10:80"}
local GRASS_BROWN_PALETTE_2 = {"fa6c87:80", "#ea6a70:80", "dc7a3e:80", "e89718:80"}
local GRASS_BROWN_PALETTE_3 = {"fd7995:80", "#f46e7b:80", "d9674d:80", "e48426:80"}
local GRASS_BROWN_PALETTE_4 = {"fb6b78:80", "f74d4d:80", "e84f3a:80", "e2682c:80"}

local GRASS_BLUE_PALETTE_1 = {":80", "#:80", ":80", ":80"}
local GRASS_BLUE_PALETTE_2 = {":80", "#:80", ":80", ":80"}
local GRASS_BLUE_PALETTE_3 = {":80", "#:80", ":80", ":80"}
local GRASS_BLUE_PALETTE_4 = {":80", "#:80", ":80", ":80"}

--]]

local GRASS_WET_PALETTE_1 = "#43e9a5:80"
local GRASS_WET_PALETTE_2 = "#36e44b:80"
local GRASS_WET_PALETTE_3 = "#81da62:80"
local GRASS_WET_PALETTE_4 = "#93fc54:80"
local GRASS_LUSH_PALETTE_1 = "#69e942:80"
local GRASS_LUSH_PALETTE_2 = "#b1e436:80"
local GRASS_LUSH_PALETTE_3 = "#dacf61:80"
local GRASS_LUSH_PALETTE_4 = "#fcd953:80"
local GRASS_DRY_PALETTE_1 = "#ace943:80"
local GRASS_DRY_PALETTE_2 = "#e4d136:80"
local GRASS_DRY_PALETTE_3 = "#daa062:80"
local GRASS_DRY_PALETTE_4 = "#fc9754:80"
local GRASS_BROWN_PALETTE_1 = "#e9df43:80"
local GRASS_BROWN_PALETTE_2 = "#e48836:80"
local GRASS_BROWN_PALETTE_3 = "#da6e62:80"
local GRASS_BROWN_PALETTE_4 = "#fc5458:80"

local GRASS_TEXTURE_TOP = "lib_materials_grass_default_top.png"
local GRASS_TEXTURE_SIDE = "lib_materials_grass_default_side.png"
local GRASS_BW_TEXTURE_TOP = "lib_materials_grass_bw_top.png"
local GRASS_BW_TEXTURE_SIDE = "lib_materials_grass_bw_side.png"
local GRASS_BROWN_TEXTURE_TOP = "lib_materials_grass_brown_top.png"
local GRASS_BROWN_TEXTURE_SIDE = "lib_materials_grass_brown_side.png"
local GRASS_DRY_TEXTURE_TOP = "lib_materials_grass_dry_default_top.png"
local GRASS_DRY_TEXTURE_SIDE = "lib_materials_grass_dry_default_side.png"
local GRASS_JUNGLE_TEXTURE_TOP = "lib_materials_grass_jungle_01_top.png"
local GRASS_JUNGLE_TEXTURE_SIDE = "lib_materials_grass_jungle_01_side.png"


--Baked Clay
	minetest.register_node("lib_materials:clay_baked_black", {
		description = S("Baked Clay - baked_black"),
		tiles = {"lib_materials_clay_baked_black.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_blue", {
		description = S("Baked Clay - baked_blue"),
		tiles = {"lib_materials_clay_baked_blue.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_brown", {
		description = S("Baked Clay - baked_brown"),
		tiles = {"lib_materials_clay_baked_brown.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_cyan", {
		description = S("Baked Clay - baked_cyan"),
		tiles = {"lib_materials_clay_baked_cyan.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_dark_green", {
		description = S("Baked Clay - dark_green"),
		tiles = {"lib_materials_clay_baked_dark_green.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_dark_grey", {
		description = S("Baked Clay - dark_grey"),
		tiles = {"lib_materials_clay_baked_dark_grey.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_green", {
		description = S("Baked Clay - Green"),
		tiles = {"lib_materials_clay_baked_green.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_grey", {
		description = S("Baked Clay - Grey"),
		tiles = {"lib_materials_clay_baked_grey.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_magenta", {
		description = S("Baked Clay - Magenta"),
		tiles = {"lib_materials_clay_baked_magenta.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_orange", {
		description = S("Baked Clay - Orange"),
		tiles = {"lib_materials_clay_baked_orange.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_pink", {
		description = S("Baked Clay - Pink"),
		tiles = {"lib_materials_clay_baked_pink.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_red", {
		description = S("Baked Clay - Red"),
		tiles = {"lib_materials_clay_baked_red.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_violet", {
		description = S("Baked Clay - Violet"),
		tiles = {"lib_materials_clay_baked_violet.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_white", {
		description = S("Baked Clay - White"),
		tiles = {"lib_materials_clay_baked_white.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})
	minetest.register_node("lib_materials:clay_baked_yellow", {
		description = S("Baked Clay - Yellow"),
		tiles = {"lib_materials_clay_baked_yellow.png"},
		groups = {cracky = 3, baked_clay = 3},
		is_ground_content = false,
		sounds = default.node_sound_stone_defaults(),
	})

-- Darkage darkdirt, mud 
	minetest.register_node("lib_materials:dirt_mud_dried", {
		description = S("Dirt - Mud Dried"),
		tiles = {"lib_materials_dirt_mud_dried_top.png","lib_materials_dirt_mud_dried_side.png"},
		is_ground_content = true,
		groups = {crumbly=3},
		drop = 'lib_materials:mud_lump 4',
		sounds = default.node_sound_dirt_defaults({footstep = "",
		}),
	})

	minetest.register_craftitem("lib_materials:dirt_mud_lump", {
		description = "Dirt - Mud Lump",
		inventory_image = "lib_materials_dirt_mud_lump.png",
	})
	minetest.register_craftitem("lib_materials:dirt_silt_lump", {
		description = "Dirt - Silt Lump",
		inventory_image = "lib_materials_dirt_silt_lump.png",
	})

	minetest.register_craftitem("lib_materials:dirt_clay_white_lump", {
		description = S("Dirt - Clay Lump"),
		inventory_image = "lib_materials_dirt_clay_lump.png",
	})
	minetest.register_craftitem("lib_materials:clay_brick", {
		description = S("Clay Brick"),
		inventory_image = "lib_materials_clay_brick.png",
	})

	minetest.override_item("default:clay", {description = "White Clay"})

-- Ethereal dirts
	minetest.register_node("lib_materials:dirt_dried", {
		description = S("Dirt - Dried"),
		tiles = {"lib_materials_dirt_dried.png"},
		is_ground_content = lib_materials.cavedirt,
		groups = {crumbly = 3},
		sounds = default.node_sound_dirt_defaults()
	})

	minetest.register_craft({
		type = "cooking",
		output = "lib_materials:dirt_dried",
		recipe = "default:dirt",
		cooktime = 3,
	})


	minetest.register_node("lib_materials:dirt_with_grass_bamboo", {
		description = S("Dirt with Grass Bamboo"),
		tiles = {
			"lib_materials_grass_bamboo_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_bamboo_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_bamboo_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_brown", {
		description = S("Dirt with Grass Brown"),
		tiles = {
			"lib_materials_grass_brown_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_brown_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_brown_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_cold", {
		description = S("Dirt with Grass Cold"),
		tiles = {
			"lib_materials_grass_cold_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_cold_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_cold_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_crystal", {
		description = S("Dirt with Grass Crystal"),
		tiles = {
			"lib_materials_grass_crystal_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_crystal_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_crystal_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_dry", {
		description = S("Dirt with Grass Dry"),
		tiles = {
			"lib_materials_grass_dry_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_dry_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_dry_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_fiery", {
		description = S("Dirt with Grass Fiery"),
		tiles = {
			"lib_materials_grass_fiery_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_fiery_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_fiery_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_gray", {
		description = S("Dirt with Grass Gray"),
		tiles = {
			"lib_materials_grass_gray_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_gray_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_gray_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_green", {
		description = S("Dirt with Grass Green"),
		tiles = {
			"lib_materials_grass_green_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_green_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_green_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_grove", {
		description = S("Dirt with Grass Grove"),
		tiles = {
			"lib_materials_grass_grove_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_grove_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_grove_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_jungle_01", {
		description = S("Dirt with Grass Jungle 01"),
		tiles = {
			"lib_materials_grass_jungle_01_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_jungle_01_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_jungle_01_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_mushroom", {
		description = S("Dirt with Grass Mushroom"),
		tiles = {
			"lib_materials_grass_mushroom_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_mushroom_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_mushroom_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

	minetest.register_node("lib_materials:dirt_with_grass_prairie", {
		description = S("Dirt with Grass Prairie"),
		tiles = {
			"lib_materials_grass_prairie_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_prairie_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_prairie_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})



--Mapgen Dirts (farlands)
	minetest.register_node("lib_materials:dirt_with_grass_fungi", {
		description = "Grass - Fungi Covered",
		tiles = {"lib_materials_grass_fungi_top.png", "lib_materials_dirt.png", "lib_materials_grass_fungi_side.png"},
		groups = {crumbly = 1, oddly_breakable_by_hand = 1},
		sounds = default.node_sound_dirt_defaults()
	})
	minetest.register_node("lib_materials:dirt_with_grass_jungle_02", {
		description = "Dirt with Jungle 02 Grass",
		tiles = {"lib_materials_grass_jungle_02_top.png", "lib_materials_dirt.png", "lib_materials_grass_jungle_02_side.png"},
		groups = {crumbly = 3,},
		sounds = default.node_sound_dirt_defaults()
	})
	minetest.register_node("lib_materials:dirt_with_grass_leafy", {
		description = "Dirt With Leaf Covered Grass",
		tiles = {"lib_materials_grass_leafy_top.png", "lib_materials_dirt.png", "lib_materials_grass_leafy_side.png"},
		groups = {crumbly = 3,},
		sounds = default.node_sound_dirt_defaults()
	})
	minetest.register_node("lib_materials:dirt_with_grass_swamp", {
		description = "Dirt With Swamp Grass",
		tiles = {"lib_materials_grass_swamp_top.png", "lib_materials_dirt.png", "lib_materials_grass_swamp_side.png"},
		groups = {crumbly = 3,},
		sounds = default.node_sound_dirt_defaults()
	})
	minetest.register_node("lib_materials:stone_with_grass_sea", {
		description = "Stone With Sea Grass",
		tiles = {"lib_materials_grass_sea_top.png", "lib_materials_stone_default.png",
		{name = "lib_materials_grass_sea_side.png",
		tileable_vertical = false}},
		groups = {crumbly = 3,},
		drop = 'lib_ecology:seagrass_1',
		sounds = default.node_sound_stone_defaults()
	})

--mg Dry Dirt
	minetest.register_node("lib_materials:dirt_with_brown_grass", {
		description = "Dirt with Brown Grass",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:#e8bb30:80", "lib_materials_dirt.png", "lib_materials_dirt.png^("..GRASS_TEXTURE_SIDE.."^[colorize:#e8bb30:80)"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = 'lib_materials:dirt',
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

-- Prehistoric Life Dirts
	minetest.register_node("lib_materials:dirt_with_grass_pete_moss", {
		description = "Dirt with Pete Moss",
		tiles = {"lib_materials_grass_pete_moss_top.png", "lib_materials_grass_pete_moss_side.png"},
		groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
		drop = 'default:dirt',
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

-- Rocks/Minerals mod
	-- minetest.register_node("lib_materials:dirt_sod", {
		-- description = "Dirt - Sod",
		-- tiles = {"lib_materials_dirt_sod.png"},
		-- groups = {crumbly = 3, soil = 1},
		-- sounds = default.node_sound_dirt_defaults(),
	-- })

-- Add dirts
local grass_types = {
	"hot_humid", "hot_semihumid", "hot_temperate", "hot_semiarid", "hot_arid",
	"warm_humid", "warm_semihumid", "warm_temperate", "warm_semiarid", "warm_arid",
	"temperate_humid", "temperate_semihumid", "temperate_temperate", "temperate_semiarid", "temperate_arid",
	"cool_humid", "cool_semihumid", "cool_temperate", "cool_semiarid", "cool_arid",
	"cold_humid", "cold_semihumid", "cold_temperate", "cold_semiarid", "cold_arid",
}

local function register_dirts2(readname)
	local name = readname:lower()
	local itemstr_dirt = "lib_materials:" .. name
	local tilestr = "lib_materials_" .. name .. ".png"

	minetest.register_node(itemstr_dirt, {
		description = readname,
		tiles = {tilestr},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		sounds = default.node_sound_dirt_defaults(),
		soil = {
			base = "lib_materials:"..name,
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
	})
	
	minetest.register_node(itemstr_dirt .. "_with_litter_coniferous", {
		description = readname .. " with Coniferous Litter",
		tiles = {"lib_materials_litter_coniferous.png", tilestr, tilestr .. "^lib_materials_litter_coniferous_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_litter_rainforest", {
		description = readname .. " with Rainforest Litter",
		tiles = {"lib_materials_litter_rainforest.png", tilestr, tilestr .. "^lib_materials_litter_rainforest_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_litter_fungi", {
		description = readname .. " with Fungal Litter",
		tiles = {"lib_materials_grass_fungi_top.png", tilestr, tilestr .. "^lib_materials_grass_fungi_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_litter_leaf_01", {
		description = readname .. " with Leaf Litter 01",
		tiles = {tilestr .. "^lib_materials_litter_leaf_01.png", tilestr, tilestr .. "^lib_materials_litter_coniferous_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_litter_leaf_02", {
		description = readname .. " with Leaf Litter 02",
		tiles = {tilestr .. "^lib_materials_litter_leaf_02.png", tilestr, tilestr .. "^lib_materials_litter_coniferous_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_litter_stones", {
		description = readname .. " with Stone Litter",
		tiles = {tilestr .. "^lib_materials_litter_stones.png", tilestr, tilestr .. "^lib_materials_litter_stones_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_litter_vine", {
		description = readname .. " with Vine Litter",
		tiles = {tilestr .. "^lib_materials_litter_vine.png", tilestr, tilestr .. "^lib_materials_litter_coniferous_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_snow", {
		description = readname .. " with Snow",
		tiles = {"lib_materials_snow.png", tilestr, tilestr .. "^lib_materials_snow_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_snow_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_soil", {
		description = readname .. " with Soil",
		tiles = {tilestr .. "^lib_materials_dirt_with_soil.png", tilestr, tilestr},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_soil_wet", {
		description = readname .. " with Wet Soil",
		tiles = {tilestr .. "^lib_materials_dirt_with_soil_wet.png", tilestr, tilestr .. "^lib_materials_dirt_with_soil_wet_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_stone_cobble", {
		tiles = {"lib_materials_stone_cobble_default.png^(" .. tilestr .. "^[mask:lib_materials_mask_cobble.png)"},
		description = readname .. " with Stone Cobble",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})
	minetest.register_node(itemstr_dirt .. "_with_stone", {
		tiles = { "lib_materials_stone_default.png^(" .. tilestr .. "^[mask:lib_materials_mask_stone.png)" },
		description = readname .. " with Stone",
		is_ground_content = true,
		groups = {cracky=3, stone=2},
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_hot_humid_coastal", {
		description = readname .. " with Grass (hot_humid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_humid_lowland", {
		description = readname .. " Dirt with Grass (hot_humid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_humid_shelf", {
		description = readname .. " Dirt with Grass (hot_humid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_humid_highland", {
		description = readname .. " Dirt with Grass (hot_humid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semihumid_coastal", {
		description = readname .. " Dirt with Grass (hot_semihumid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semihumid_lowland", {
		description = readname .. " Dirt with Grass (hot_semihumid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semihumid_shelf", {
		description = readname .. " Dirt with Grass (hot_semihumid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semihumid_highland", {
		description = readname .. " Dirt with Grass (hot_semihumid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_temperate_coastal", {
		description = readname .. " Dirt with Grass (hot_temperate_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_temperate_lowland", {
		description = readname .. " Dirt with Grass (hot_temperate_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_temperate_shelf", {
		description = readname .. " Dirt with Grass (hot_temperate_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_temperate_highland", {
		description = readname .. " Dirt with Grass (hot_temperate_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semiarid_coastal", {
		description = readname .. " Dirt with Grass (hot_semiarid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semiarid_lowland", {
		description = readname .. " Dirt with Grass (hot_semiarid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semiarid_shelf", {
		description = readname .. " Dirt with Grass (hot_semiarid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_hot_semiarid_highland", {
		description = readname .. " Dirt with Grass (hot_semiarid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_warm_humid_coastal", {
		description = readname .. " Dirt with Grass (warm_humid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_humid_lowland", {
		description = readname .. " Dirt with Grass (warm_humid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_humid_shelf", {
		description = readname .. " Dirt with Grass (warm_humid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_humid_highland", {
		description = readname .. " Dirt with Grass (warm_humid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semihumid_coastal", {
		description = readname .. " Dirt with Grass (warm_semihumid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semihumid_lowland", {
		description = readname .. " Dirt with Grass (warm_semihumid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semihumid_shelf", {
		description = readname .. " Dirt with Grass (warm_semihumid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semihumid_highland", {
		description = readname .. " Dirt with Grass (warm_semihumid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_temperate_coastal", {
		description = readname .. " Dirt with Grass (warm_temperate_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_temperate_lowland", {
		description = readname .. " Dirt with Grass (warm_temperate_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_temperate_shelf", {
		description = readname .. " Dirt with Grass (warm_temperate_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_temperate_highland", {
		description = readname .. " Dirt with Grass (warm_temperate_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semiarid_coastal", {
		description = readname .. " Dirt with Grass (warm_semiarid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semiarid_lowland", {
		description = readname .. " Dirt with Grass (warm_semiarid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semiarid_shelf", {
		description = readname .. " Dirt with Grass (warm_semiarid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_warm_semiarid_highland", {
		description = readname .. " Dirt with Grass (warm_semiarid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_humid_coastal", {
		description = readname .. " Dirt with Grass (temperate_humid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_humid_lowland", {
		description = readname .. " Dirt with Grass (temperate_humid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_humid_shelf", {
		description = readname .. " Dirt with Grass (temperate_humid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_humid_highland", {
		description = readname .. " Dirt with Grass (temperate_humid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semihumid_coastal", {
		description = readname .. " Dirt with Grass (temperate_semihumid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semihumid_lowland", {
		description = readname .. " Dirt with Grass (temperate_semihumid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semihumid_shelf", {
		description = readname .. " Dirt with Grass (temperate_semihumid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semihumid_highland", {
		description = readname .. " Dirt with Grass (temperate_semihumid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_temperate_coastal", {
		description = readname .. " Dirt with Grass (temperate_temperate_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_temperate_lowland", {
		description = readname .. " Dirt with Grass (temperate_temperate_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_temperate_shelf", {
		description = readname .. " Dirt with Grass (temperate_temperate_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_temperate_highland", {
		description = readname .. " Dirt with Grass (temperate_temperate_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semiarid_coastal", {
		description = readname .. " Dirt with Grass (temperate_semiarid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semiarid_lowland", {
		description = readname .. " Dirt with Grass (temperate_semiarid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semiarid_shelf", {
		description = readname .. " Dirt with Grass (temperate_semiarid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_temperate_semiarid_highland", {
		description = readname .. " Dirt with Grass (temperate_semiarid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_cool_humid_coastal", {
		description = readname .. " Dirt with Grass (cool_humid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_humid_lowland", {
		description = readname .. " Dirt with Grass (cool_humid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_humid_shelf", {
		description = readname .. " Dirt with Grass (cool_humid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_humid_highland", {
		description = readname .. " Dirt with Grass (cool_humid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_HUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_HUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semihumid_coastal", {
		description = readname .. " Dirt with Grass (cool_semihumid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semihumid_lowland", {
		description = readname .. " Dirt with Grass (cool_semihumid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semihumid_shelf", {
		description = readname .. " Dirt with Grass (cool_semihumid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semihumid_highland", {
		description = readname .. " Dirt with Grass (cool_semihumid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIHUMID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_temperate_coastal", {
		description = readname .. " Dirt with Grass (cool_temperate_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_temperate_lowland", {
		description = readname .. " Dirt with Grass (cool_temperate_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_temperate_shelf", {
		description = readname .. " Dirt with Grass (cool_temperate_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_temperate_highland", {
		description = readname .. " Dirt with Grass (cool_temperate_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_TEMPERATE_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semiarid_coastal", {
		description = readname .. " Dirt with Grass (cool_semiarid_coastal)",
		tiles = {""..GRASS_COASTAL_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_COASTAL_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semiarid_lowland", {
		description = readname .. " Dirt with Grass (cool_semiarid_lowland)",
		tiles = {""..GRASS_LOWLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_LOWLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semiarid_shelf", {
		description = readname .. " Dirt with Grass (cool_semiarid_shelf)",
		tiles = {""..GRASS_SHELF_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_SHELF_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_cool_semiarid_highland", {
		description = readname .. " Dirt with Grass (cool_semiarid_highland)",
		tiles = {""..GRASS_HIGHLAND_TEXTURE_TOP.."^[colorize:"..GRASS_SEMIARID_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_HIGHLAND_TEXTURE_SIDE.."^[colorize:"..GRASS_SEMIARID_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})



end

	register_dirts2("Dirt")
	register_dirts2("Dirt_Black")
	register_dirts2("Dirt_Brown")
	register_dirts2("Dirt_Clay_Red")
	register_dirts2("Dirt_Clay_White")
	register_dirts2("Dirt_Clayey")
	register_dirts2("Dirt_Coarse")
	register_dirts2("Dirt_Dark")
	register_dirts2("Dirt_Dry")
	register_dirts2("Dirt_Mud_01")
	register_dirts2("Dirt_Sandy")
	register_dirts2("Dirt_Silt_01")
	register_dirts2("Dirt_Silt_02")
	register_dirts2("Dirt_Silty")
	register_dirts2("Dirt_Sod")
	register_dirts2("Dirt_Permafrost")

local function register_dirts(readname)
	local name = readname:lower()
	local itemstr_dirt = "lib_materials:" .. name
	local tilestr = "lib_materials_" .. name .. ".png"

	minetest.register_node(itemstr_dirt, {
		description = readname,
		tiles = {tilestr},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		sounds = default.node_sound_dirt_defaults(),
	})
	
	minetest.register_node(itemstr_dirt .. "_with_coniferous_litter", {
		description = readname .. " with Coniferous Litter",
		tiles = {"lib_materials_litter_coniferous.png", tilestr, tilestr .. "^lib_materials_litter_coniferous_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_rainforest_litter", {
		description = readname .. " with Rainforest Litter",
		tiles = {"lib_materials_litter_rainforest.png", tilestr, tilestr .. "^lib_materials_litter_rainforest_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_snow", {
		description = readname .. " with Snow",
		tiles = {"lib_materials_snow.png", tilestr, tilestr .. "^lib_materials_snow_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_snow_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_wet_01", {
		description = readname .. " Dirt with Grass (Wet 01)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_02", {
		description = readname .. " Dirt with Grass (Wet 02)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_03", {
		description = readname .. " Dirt with Grass (Wet 03)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_04", {
		description = readname .. " Dirt with Grass (Wet 04)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_05", {
		description = readname .. " Dirt with Grass (Wet 05)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_06", {
		description = readname .. " Dirt with Grass (Wet 06)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_07", {
		description = readname .. " Dirt with Grass (Wet 07)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_08", {
		description = readname .. " Dirt with Grass (Wet 08)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_09", {
		description = readname .. " Dirt with Grass (Wet 09)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_10", {
		description = readname .. " Dirt with Grass (Wet 10)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_11", {
		description = readname .. " Dirt with Grass (Wet 11)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_12", {
		description = readname .. " Dirt with Grass (Wet 12)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_13", {
		description = readname .. " Dirt with Grass (Wet 13)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_14", {
		description = readname .. " Dirt with Grass (Wet 14)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_15", {
		description = readname .. " Dirt with Grass (Wet 15)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_wet_16", {
		description = readname .. " Dirt with Grass (Wet 16)",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_lush_01", {
		description = readname .. " Dirt with Grass (Lush 01)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_02", {
		description = readname .. " Dirt with Grass (Lush 02)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_03", {
		description = readname .. " Dirt with Grass (Lush 03)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_04", {
		description = readname .. " Dirt with Grass (Lush 04)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_05", {
		description = readname .. " Dirt with Grass (Lush 05)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_06", {
		description = readname .. " Dirt with Grass (Lush 06)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_07", {
		description = readname .. " Dirt with Grass (Lush 07)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_08", {
		description = readname .. " Dirt with Grass (Lush 08)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_09", {
		description = readname .. " Dirt with Grass (Lush 09)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_10", {
		description = readname .. " Dirt with Grass (Lush 10)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_11", {
		description = readname .. " Dirt with Grass (Lush 11)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_12", {
		description = readname .. " Dirt with Grass (Lush 12)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_13", {
		description = readname .. " Dirt with Grass (Lush 13)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_14", {
		description = readname .. " Dirt with Grass (Lush 14)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_15", {
		description = readname .. " Dirt with Grass (Lush 15)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_lush_16", {
		description = readname .. " Dirt with Grass (Lush 16)",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_dry_01", {
		description = readname .. " Dirt with Grass (Dry 01)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_02", {
		description = readname .. " Dirt with Grass (Dry 02)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_03", {
		description = readname .. " Dirt with Grass (Dry 03)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_04", {
		description = readname .. " Dirt with Grass (Dry 04)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_05", {
		description = readname .. " Dirt with Grass (Dry 05)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_06", {
		description = readname .. " Dirt with Grass (Dry 06)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_07", {
		description = readname .. " Dirt with Grass (Dry 07)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_08", {
		description = readname .. " Dirt with Grass (Dry 08)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_09", {
		description = readname .. " Dirt with Grass (Dry 09)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_10", {
		description = readname .. " Dirt with Grass (Dry 10)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_11", {
		description = readname .. " Dirt with Grass (Dry 11)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_12", {
		description = readname .. " Dirt with Grass (Dry 12)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_13", {
		description = readname .. " Dirt with Grass (Dry 13)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_14", {
		description = readname .. " Dirt with Grass (Dry 14)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_15", {
		description = readname .. " Dirt with Grass (Dry 15)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_dry_16", {
		description = readname .. " Dirt with Grass (Dry 16)",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_dirt .. "_with_grass_brown_01", {
		description = readname .. " Dirt with Grass (Brown 01)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_02", {
		description = readname .. " Dirt with Grass (Brown 02)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_03", {
		description = readname .. " Dirt with Grass (Brown 03)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_04", {
		description = readname .. " Dirt with Grass (Brown 04)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_WET_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_WET_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_05", {
		description = readname .. " Dirt with Grass (Brown 05)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_06", {
		description = readname .. " Dirt with Grass (Brown 06)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_07", {
		description = readname .. " Dirt with Grass (Brown 07)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_08", {
		description = readname .. " Dirt with Grass (Brown 08)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_LUSH_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_LUSH_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_09", {
		description = readname .. " Dirt with Grass (Brown 09)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_10", {
		description = readname .. " Dirt with Grass (Brown 10)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_11", {
		description = readname .. " Dirt with Grass (Brown 11)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_12", {
		description = readname .. " Dirt with Grass (Brown 12)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_13", {
		description = readname .. " Dirt with Grass (Brown 13)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_14", {
		description = readname .. " Dirt with Grass (Brown 14)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_15", {
		description = readname .. " Dirt with Grass (Brown 15)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})
	minetest.register_node(itemstr_dirt .. "_with_grass_brown_16", {
		description = readname .. " Dirt with Grass (Brown 16)",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = lib_materials.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

end

	--register_dirts("Dirt_Coarse")
	--register_dirts("Dirt_Dark")
	--register_dirts("Dirt_Dry")
	--register_dirts("Dirt_Mud_01")


