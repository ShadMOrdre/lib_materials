
local S = lib_materials.gettext

--Additional Dirts

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


local GRASS_TEXTURE_TOP = "lib_materials_grass.png"
local GRASS_TEXTURE_SIDE = "lib_materials_grass_side.png"
local GRASS_BROWN_TEXTURE_TOP = "lib_materials_grass_brown.png"
local GRASS_BROWN_TEXTURE_SIDE = "lib_materials_grass_brown_side.png"
local GRASS_DRY_TEXTURE_TOP = "lib_materials_dry_grass.png"
local GRASS_DRY_TEXTURE_SIDE = "lib_materials_dry_grass_side.png"
local GRASS_JUNGLE_TEXTURE_TOP = "lib_materials_grass_jungle_01_top.png"
local GRASS_JUNGLE_TEXTURE_SIDE = "lib_materials_grass_jungle_01_side.png"


--Default Dirt with Grass

minetest.register_node("lib_materials:dirt2", {
	description = "Dirt2 (lib_materials)",
	tiles = {"default_dirt.png"},
	groups = {crumbly = 3, soil = 1},
	sounds = default.node_sound_dirt_defaults(),
})
minetest.register_node("lib_materials:dirt2_with_grass", {
	description = "Dirt2 with Grass (lib_materials)",
	tiles = {"default_grass.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'lib_materials:dirt2',
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})
minetest.register_node("lib_materials:dirt2_with_grass_footsteps", {
	description = "Dirt2 with Grass and Footsteps (lib_materials)",
	tiles = {"default_grass.png^default_footprint.png", "default_dirt.png",
		{name = "default_dirt.png^default_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, not_in_creative_inventory = 1},
	drop = 'lib_materials:dirt2',
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},
	}),
})
minetest.register_node("lib_materials:dirt2_with_dry_grass", {
	description = "Dirt2 with Dry Grass (lib_materials)",
	tiles = {"default_dry_grass.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'lib_materials:dirt2',
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
minetest.register_node("lib_materials:dirt2_with_snow", {
	description = "Dirt2 with Snow (lib_materials)",
	tiles = {"default_snow.png", "default_dirt.png",
		{name = "default_dirt.png^default_snow_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, spreading_dirt_type = 1, snowy = 1},
	drop = 'lib_materials:dirt2',
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_snow_footstep", gain = 0.15},
	}),
})
minetest.register_node("lib_materials:dirt2_with_rainforest_litter", {
	description = "Dirt2 with Rainforest Litter (lib_materials)",
	tiles = {
		"default_rainforest_litter.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_rainforest_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "lib_materials:dirt2",
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
minetest.register_node("lib_materials:dirt2_with_coniferous_litter", {
	description = "Dirt2 with Coniferous Litter (lib_materials)",
	tiles = {
		"default_coniferous_litter.png",
		"default_dirt.png",
		{name = "default_dirt.png^default_coniferous_litter_side.png",
			tileable_vertical = false}
	},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = "lib_materials:dirt2",
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})


--Baked Clay
minetest.register_node("lib_materials:clay_baked_grey", {
	description = S("Baked Clay - Grey"),
	tiles = {"lib_materials_clay_grey_baked.png"},
	groups = {cracky = 3},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:clay_baked_orange", {
	description = S("Baked Clay - Orange"),
	tiles = {"lib_materials_clay_orange_baked.png"},
	groups = {cracky = 3},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})
minetest.register_node("lib_materials:clay_baked_red", {
	description = S("Baked Clay - Red"),
	tiles = {"lib_materials_clay_red_baked.png"},
	groups = {cracky = 3},
	is_ground_content = false,
	sounds = default.node_sound_stone_defaults(),
})

-- Darkage darkdirt, mud 
minetest.register_node("lib_materials:mud_dried", {
	description = "Mud Dried",
	tiles = {"darkage_mud_up.png","darkage_mud.png"},
	is_ground_content = true,
	groups = {crumbly=3},
	drop = 'lib_materials:mud_lump 4',
	sounds = default.node_sound_dirt_defaults({footstep = "",
	}),
})
minetest.register_craftitem("lib_materials:mud_lump", {
	description = "Mud Lump",
	inventory_image = "darkage_mud_lump.png",
})
minetest.register_craftitem("lib_materials:silt_lump", {
	description = "Silt Lump",
	inventory_image = "darkage_silt_lump.png",
})

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
--[[ green dirt
-- -- minetest.register_node("lib_materials:green_dirt", {
	-- -- description = S("Green Dirt"),
	-- -- tiles = {
		-- -- "default_grass.png",
		-- -- "default_dirt.png",
		-- -- "default_dirt.png^default_grass_side.png"
	-- -- },
	-- -- is_ground_content = false,
	-- -- groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
	-- -- soil = {
		-- -- base = "lib_materials:green_dirt",
		-- -- dry = "farming:soil",
		-- -- wet = "farming:soil_wet"
	-- -- },
	-- -- drop = "default:dirt",
	-- -- sounds = default.node_sound_dirt_defaults({
		-- -- footstep = {name = "default_grass_footstep", gain = 0.25},
	-- -- }),
-- -- })
--]]
local dirts = {
	"Bamboo", "Cold", "Crystal", "Fiery", "Gray", "Green",
	"Grove", "Jungle_01", "Mushroom", "Prairie"
}
for n = 1, #dirts do

	local desc = dirts[n]
	local name = desc:lower()

	minetest.register_node("lib_materials:dirt_with_grass_"..name, {
		description = S("Dirt with  Grass" .. desc),
		tiles = {
			"lib_materials_grass_"..name.."_top.png",
			"lib_materials_dirt.png",
			"lib_materials_dirt.png^lib_materials_grass_"..name.."_side.png"
		},
		is_ground_content = false,
		groups = {crumbly = 3, soil = 1, lib_ecology_grass = 1},
		soil = {
			base = "lib_materials:dirt_with_"..name.."_grass",
			dry = "farming:soil",
			wet = "farming:soil_wet"
		},
		drop = "lib_materials:dirt",
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
	})

end

--Mapgen Dirts (farlands)
minetest.register_node("lib_materials:dirt_with_grass_fungi", {
	description = "Fungi Covered Grass",
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
minetest.register_node("lib_materials:dirt_with_pete_moss", {
	description = "Dirt with Pete Moss",
	tiles = {"lib_materials_dirt_with_pete_moss_top.png", "lib_materials_dirt_with_pete_moss_side.png"},
	groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
	drop = 'default:dirt',
	sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain = 0.25},}),
})

minetest.override_item("default:clay", {description = "White Clay"})

-- Add dirts
local function register_dirts(readname)
	local name = readname:lower()
	local itemstr_dirt = "lib_materials:" .. name
	local itemstr_lawn = itemstr_dirt .. "_with_grass"
	local itemstr_lawn2 = itemstr_dirt .. "_with_grass2"
	local itemstr_lawn3 = itemstr_dirt .. "_with_grass3"
	local itemstr_lawn4 = itemstr_dirt .. "_with_grass4"
	local itemstr_lawn5 = itemstr_dirt .. "_with_grass5"
	local itemstr_lawn6 = itemstr_dirt .. "_with_grass6"
	local itemstr_lawn7 = itemstr_dirt .. "_with_grass7"
	local itemstr_lawn8 = itemstr_dirt .. "_with_grass8"
	local itemstr_lawn9 = itemstr_dirt .. "_with_grass9"
	local itemstr_brown = itemstr_dirt .. "_with_brown_grass"
	local itemstr_brown2 = itemstr_dirt .. "_with_brown_grass2"
	local itemstr_brown3 = itemstr_dirt .. "_with_brown_grass3"
	local itemstr_brown4 = itemstr_dirt .. "_with_brown_grass4"
	local itemstr_brown5 = itemstr_dirt .. "_with_brown_grass5"
	local itemstr_brown6 = itemstr_dirt .. "_with_brown_grass6"
	local itemstr_brown7 = itemstr_dirt .. "_with_brown_grass7"
	local itemstr_brown8 = itemstr_dirt .. "_with_brown_grass8"
	local itemstr_brown9 = itemstr_dirt .. "_with_brown_grass9"
	local itemstr_dry = itemstr_dirt .. "_with_dry_grass"
	local itemstr_dry2 = itemstr_dirt .. "_with_dry_grass2"
	local itemstr_dry3 = itemstr_dirt .. "_with_dry_grass3"
	local itemstr_dry4 = itemstr_dirt .. "_with_dry_grass4"
	local itemstr_dry5 = itemstr_dirt .. "_with_dry_grass5"
	local itemstr_dry6 = itemstr_dirt .. "_with_dry_grass6"
	local itemstr_dry7 = itemstr_dirt .. "_with_dry_grass7"
	local itemstr_dry8 = itemstr_dirt .. "_with_dry_grass8"
	local itemstr_dry9 = itemstr_dirt .. "_with_dry_grass9"
	local itemstr_coniferous = itemstr_dirt .. "_with_coniferous_litter"
	local itemstr_rain = itemstr_dirt .. "_with_rainforest_litter"
	local itemstr_snow = itemstr_dirt .. "_with_snow"
	local tilestr = "lib_materials_" .. name .. ".png"

	minetest.register_node(itemstr_dirt, {
		description = readname .. " Dirt",
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


	minetest.register_node(itemstr_lawn, {
		description = readname .. " Dirt with Grass",
		tiles = {"default_grass.png", tilestr, tilestr .. "^default_grass_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn2, {
		description = readname .. " Dirt with Grass2",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn3, {
		description = readname .. " Dirt with Grass3",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn4, {
		description = readname .. " Dirt with Grass4",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn5, {
		description = readname .. " Dirt with Grass5",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn6, {
		description = readname .. " Dirt with Grass6",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn7, {
		description = readname .. " Dirt with Grass7",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn8, {
		description = readname .. " Dirt with Grass8",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_lawn9, {
		description = readname .. " Dirt with Grass9",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})



	minetest.register_node(itemstr_dry, {
		description = readname .. " Dirt with Dry Grass",
		tiles = {"default_dry_grass.png", tilestr, tilestr .. "^default_dry_grass_side.png"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry2, {
		description = readname .. " Dirt with Dry Grass2",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_1..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry3, {
		description = readname .. " Dirt with Dry Grass3",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_2..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry4, {
		description = readname .. " Dirt with Dry Grass4",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_3..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry5, {
		description = readname .. " Dirt with Dry Grass5",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_4..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry6, {
		description = readname .. " Dirt with Dry Grass6",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_1..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry7, {
		description = readname .. " Dirt with Dry Grass7",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_2..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry8, {
		description = readname .. " Dirt with Dry Grass8",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_3..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})

	minetest.register_node(itemstr_dry9, {
		description = readname .. " Dirt with Dry Grass9",
		tiles = {""..GRASS_DRY_TEXTURE_TOP.."^[colorize:"..GRASS_DRY_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_DRY_TEXTURE_SIDE.."^[colorize:"..GRASS_DRY_PALETTE_4..")"},
		groups = {crumbly=3, soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name = "default_grass_footstep", gain=0.4},}),
	})


	minetest.register_node(itemstr_brown, {
		description = readname .. " Dirt with Brown Grass",
		tiles = {""..GRASS_TEXTURE_TOP.."^[colorize:#e8bb30:80", tilestr, tilestr .. "^("..GRASS_TEXTURE_SIDE.."^[colorize:#e8bb30:80)"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown2, {
		description = readname .. " Dirt with Brown Grass2",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown3, {
		description = readname .. " Dirt with Brown Grass3",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown4, {
		description = readname .. " Dirt with Brown Grass4",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown5, {
		description = readname .. " Dirt with Brown Grass5",
		tiles = {""..GRASS_JUNGLE_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_JUNGLE_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown6, {
		description = readname .. " Dirt with Brown Grass6",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_1.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_1..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown7, {
		description = readname .. " Dirt with Brown Grass7",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_2.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_2..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown8, {
		description = readname .. " Dirt with Brown Grass8",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_3.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_3..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({ footstep = {name="default_grass_footstep", gain=0.25}, }),
	})

	minetest.register_node(itemstr_brown9, {
		description = readname .. " Dirt with Brown Grass9",
		tiles = {""..GRASS_BROWN_TEXTURE_TOP.."^[colorize:"..GRASS_BROWN_PALETTE_4.."", tilestr, tilestr .. "^("..GRASS_BROWN_TEXTURE_SIDE.."^[colorize:"..GRASS_BROWN_PALETTE_4..")"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})



	minetest.register_node(itemstr_coniferous, {
		description = readname .. " Dirt with Coniferous Litter",
		tiles = {"default_coniferous_litter.png", tilestr, tilestr .. "^default_coniferous_litter_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_rain, {
		description = readname .. " Dirt with Rainforest Litter",
		tiles = {"default_rainforest_litter.png", tilestr, tilestr .. "^default_rainforest_litter_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_grass_footstep", gain=0.25},}),
	})

	minetest.register_node(itemstr_snow, {
		description = readname .. " Dirt with Snow",
		tiles = {"default_snow.png", tilestr, tilestr .. "^default_snow_side.png"},
		is_ground_content = true,
		groups = {crumbly=3,soil=1},
		drop = itemstr_dirt,
		sounds = default.node_sound_dirt_defaults({footstep = {name="default_snow_footstep", gain=0.25},}),
	})

end

register_dirts("Dirt")
register_dirts("Dirt_02")
register_dirts("Dirt_Black")
register_dirts("Dirt_Clay_Red")
register_dirts("Dirt_Clayey")
register_dirts("Dirt_Coarse")
register_dirts("Dirt_Dark")
register_dirts("Dirt_Dry")
register_dirts("Dirt_Mud_01")
register_dirts("Dirt_Sandy")
register_dirts("Dirt_Silt_01")
register_dirts("Dirt_Silt_02")
register_dirts("Dirt_Silty")






