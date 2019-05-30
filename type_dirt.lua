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
	repeat
		local colors = {
			"Black", "Blue", "Brown", "Cyan", "Dark Green", "Dark Grey",
			"Green", "Grey", "Magenta", "Orange", "Pink", "Red",
			"Violet", "White", "Yellow"
		}
		for _, color in pairs(colors) do
			local name = string.gsub(string.lower(color), " ", "_")
			lib_materials.register_node(
				"lib_materials:clay_baked_" .. name,
				"bakedclay:" .. name,
				{
					description = S("Baked Clay - " .. color),
					tiles = {
						"lib_materials_clay_baked_" .. name .. ".png"
					},
					-- bakedclay = 1 for compatibility with original mod
					groups = {
						cracky = 3, baked_clay = 3, bakedclay = 1
					},
					is_ground_content = false,
					sounds = default.node_sound_stone_defaults(),
				}
			)
			minetest.register_craft({
				output = "lib_materials:clay_baked_" .. name .. " 8",
				recipe = {
					{
						"group:baked_clay",
						"group:baked_clay",
						"group:baked_clay"
					},
					{
						"group:baked_clay",
						"dye:" .. name,
						"group:baked_clay"
					},
					{
						"group:baked_clay",
						"group:baked_clay",
						"group:baked_clay"
					}
				}
			})
		end
	until(true)

-- Darkage darkdirt, mud 
	lib_materials.register_node(
		"lib_materials:dirt_mud_dried", "darkage:mud", {
			description = S("Dirt - Mud Dried"),
			tiles = {
				"lib_materials_dirt_mud_dried_top.png",
				"lib_materials_dirt_mud_dried_side.png"
			},
			is_ground_content = true,
			groups = {crumbly=3},
			drop = 'lib_materials:dirt_mud_lump 4',
			sounds = default.node_sound_dirt_defaults({
				footstep = "",
			}),
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:dirt_mud_lump", "darkage:mud_lump", {
			description = "Dirt - Mud Lump",
			inventory_image = "lib_materials_dirt_mud_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:dirt_silt_lump", "darkage:silt_lump", {
			description = "Dirt - Silt Lump",
			inventory_image = "lib_materials_dirt_silt_lump.png",
		}
	)

--Default
	lib_materials.register_node(
		"lib_materials:dirt_permafrost", "default:permafrost", {
			description = "Dirt - Permafrost",
			tiles = {"lib_materials_dirt_permafrost.png"},
			groups = {crumbly = 3, soil = 1},
			sounds = default.node_sound_dirt_defaults(),
		}
	)
	lib_materials.register_node(
		"lib_materials:clay_white", "default:clay", {
			description = "White Clay"
			-- FIXME: this only works if default is present since there
			-- is no definition of clay in lib_materials yet
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:dirt_clay_white_lump", "default:clay_lump", {
			description = S("Dirt - Clay Lump"),
			inventory_image = "lib_materials_dirt_clay_lump.png",
		}
	)
	lib_materials.register_craftitem(
		"lib_materials:clay_brick", "default:clay_brick", {
			description = S("Clay Brick"),
			inventory_image = "lib_materials_clay_brick.png",
		}
	)

-- Ethereal dirts
	lib_materials.register_node(
		"lib_materials:dirt_dried", "ethereal:dry_dirt", {
			description = S("Dirt - Dried"),
			tiles = {"lib_materials_dirt_dried.png"},
			is_ground_content = lib_materials.cavedirt,
			groups = {crumbly = 3},
			sounds = default.node_sound_dirt_defaults()
		}
	)
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
	repeat
		local dirts = {
			"Bamboo", "Cold", "Crystal", "Fiery", "Gray", "Green",
			"Grove", "Jungle_01", "Mushroom", "Prairie"
		}
		for n = 1, #dirts do
			local desc = dirts[n]
			local name = desc:lower()
			lib_materials.register_node(
				"lib_materials:dirt_with_grass_" .. name,
				"ethereal:" .. name,
				{
					description = S("Dirt with Grass - " .. desc),
					tiles = {
						"lib_materials_grass_" .. name .. "_top.png",
						"lib_materials_dirt.png",
						"lib_materials_dirt.png^lib_materials_grass_" ..
							name .. "_side.png"
					},
					is_ground_content = false,
					groups = {
						crumbly = 3, soil = 1, lib_ecology_grass = 1
					},
					soil = {
						base = "lib_materials:dirt_with_" .. name ..
							"_grass",
						dry = "farming:soil",
						wet = "farming:soil_wet"
					},
					drop = "lib_materials:dirt",
					sounds = default.node_sound_dirt_defaults({
						footstep = {
							name = "default_grass_footstep", gain = 0.25
						}
					})
				}
			)
		end
	until(true)

--Mapgen Dirts (farlands)
	lib_materials.register_node(
		"lib_materials:dirt_with_grass_fungi", 
		"mapgen:dirt_with_fungi_covered_grass",
		{
			description = "Grass - Fungi Covered",
			tiles = {
				"lib_materials_grass_fungi_top.png",
				"lib_materials_dirt.png",
				"lib_materials_grass_fungi_side.png"
			},
			groups = {crumbly = 1, oddly_breakable_by_hand = 1},
			sounds = default.node_sound_dirt_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:dirt_with_grass_jungle_02",
		"mapgen:dirt_with_junglegrass",
		{
			description = "Dirt with Jungle 02 Grass",
			tiles = {
				"lib_materials_grass_jungle_02_top.png",
				"lib_materials_dirt.png",
				"lib_materials_grass_jungle_02_side.png"
			},
			groups = {crumbly = 3},
			sounds = default.node_sound_dirt_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:dirt_with_grass_leafy",
		"mapgen:dirt_with_leafygrass",
		{
			description = "Dirt With Leaf Covered Grass",
			tiles = {
				"lib_materials_grass_leafy_top.png",
				"lib_materials_dirt.png",
				"lib_materials_grass_leafy_side.png"
			},
			groups = {crumbly = 3},
			sounds = default.node_sound_dirt_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:dirt_with_grass_swamp",
		"mapgen:dirt_with_swampgrass",
		{
			description = "Dirt With Swamp Grass",
			tiles = {
				"lib_materials_grass_swamp_top.png",
				"lib_materials_dirt.png",
				"lib_materials_grass_swamp_side.png"
			},
			groups = {crumbly = 3},
			sounds = default.node_sound_dirt_defaults()
		}
	)
	lib_materials.register_node(
		"lib_materials:stone_with_grass_sea",
		"mapgen:stone_with_sea_grass",
		{
			description = "Stone With Sea Grass",
			tiles = {
				"lib_materials_grass_sea_top.png",
				"lib_materials_stone_default.png",
				{
					name = "lib_materials_grass_sea_side.png",
					tileable_vertical = false
				}
			},
			groups = {crumbly = 3},
			drop = 'lib_ecology:seagrass_1',
			sounds = default.node_sound_stone_defaults()
		}
	)

--mg Dry Dirt
	lib_materials.register_node(
		"lib_materials:dirt_with_brown_grass",
		"default:dirt_with_dry_grass",
		{
			description = "Dirt with Brown Grass",
			tiles = {
				GRASS_TEXTURE_TOP .. "^[colorize:#e8bb30:80",
				"lib_materials_dirt.png",
				"lib_materials_dirt.png^(" .. GRASS_TEXTURE_SIDE .. 
					"^[colorize:#e8bb30:80)"
			},
			is_ground_content = true,
			groups = {crumbly = 3, soil = 1},
			drop = 'lib_materials:dirt',
			sounds = default.node_sound_dirt_defaults({
				footstep = {name="default_grass_footstep", gain=0.25}
			})
		}
	)

-- Prehistoric Life Dirts
	-- FIXME: seems source mod is no longer available
	lib_materials.register_node(
		"lib_materials:dirt_with_grass_pete_moss", "", {
			description = "Dirt with Pete Moss",
			tiles = {
				"lib_materials_grass_pete_moss_top.png",
				"lib_materials_grass_pete_moss_side.png"
			},
			groups = {crumbly = 3, soil = 1, spreading_dirt_type = 1},
			drop = 'default:dirt',
			sounds = default.node_sound_dirt_defaults(
				{footstep = {name = "default_grass_footstep", gain = 0.25}
			})
		}
	)

-- Rocks/Minerals mod
	-- FIXME: what is the source node for this?
	lib_materials.register_node("lib_materials:dirt_sod", nil, {
		description = "Dirt - Sod",
		tiles = {"lib_materials_dirt_sod.png"},
		groups = {crumbly = 3, soil = 1},
		sounds = default.node_sound_dirt_defaults(),
	})

-- Add dirts
local grass_types = {
	"hot_humid", "hot_semihumid", "hot_temperate", "hot_semiarid", "hot_arid",
	"warm_humid", "warm_semihumid", "warm_temperate", "warm_semiarid", "warm_arid",
	"temperate_humid", "temperate_semihumid", "temperate_temperate", "temperate_semiarid", "temperate_arid",
	"cool_humid", "cool_semihumid", "cool_temperate", "cool_semiarid", "cool_arid",
	"cold_humid", "cold_semihumid", "cold_temperate", "cold_semiarid", "cold_arid",
}

local function register_dirts(readname)
	local name = readname:lower()
	local itemstr_dirt = "lib_materials:" .. name
	local tilestr = "lib_materials_" .. name .. ".png"
	local alt = {nil, nil, nil, nil}
	local def = {
		{
			description = readname,
			tiles = {tilestr},
			is_ground_content = true,
			groups = {crumbly = 3, soil = 1},
			sounds = default.node_sound_dirt_defaults(),
			soil = {
				base = itemstr_dirt,
				dry = "farming:soil",
				wet = "farming:soil_wet"
			}
		},
		{
			description = readname .. " with Coniferous Litter",
			tiles = {
				"lib_materials_litter_coniferous.png",
				tilestr,
				tilestr .. "^lib_materials_litter_coniferous_side.png"
			},
			is_ground_content = true,
			groups = {crumbly = 3, soil = 1},
			drop = itemstr_dirt,
			sounds = lib_materials.node_sound_dirt_defaults({
				footstep = {name="default_grass_footstep", gain=0.25}
			}),
			soil = {
				base = itemstr_dirt .. "_with_coniferous_litter",
				dry = "farming:soil",
				wet = "farming:soil_wet"
			}
		},
		{
			description = readname .. " with Rainforest Litter",
			tiles = {
				"lib_materials_litter_rainforest.png",
				tilestr,
				tilestr .. "^lib_materials_litter_rainforest_side.png"
			},
			is_ground_content = true,
			groups = {crumbly = 3,soil = 1},
			drop = itemstr_dirt,
			sounds = lib_materials.node_sound_dirt_defaults({
				footstep = {name="default_grass_footstep", gain=0.25}
			}),
			soil = {
				base = itemstr_dirt .. "_with_rainforest_litter",
				dry = "farming:soil",
				wet = "farming:soil_wet"
			}
		},
		{
			description = readname .. " with Snow",
			tiles = {
				"lib_materials_snow.png",
				tilestr,
				tilestr .. "^lib_materials_snow_side.png"
			},
			is_ground_content = true,
			groups = {crumbly = 3,soil = 1},
			drop = itemstr_dirt,
			sounds = lib_materials.node_sound_dirt_defaults({
				footstep = {name="default_snow_footstep", gain=0.25}
			}),
			soil = {
				base = itemstr_dirt .. "_with_snow",
				dry = "farming:soil",
				wet = "farming:soil_wet"
			}
		}
	}
	if readname == "Dirt" then
		alt = {
			"default:dirt", "default:dirt_with_coniferous_litter",
			"default:dirt_with_rainforest_litter",
			"default:dirt_with_snow"
		}
	elseif readname == "Dirt_Silty" then
		alt = {
			"valleys_mapgen:dirt_silty", nil, nil,
			"valleys_mapgen:dirt_silty_with_snow"
		}
	elseif readname == "Dirt_Clayey" then
		alt = {
			"valleys_mapgen:dirt_clayey", nil, nil,
			"valleys_mapgen:dirt_clayey_with_snow"
		}
	elseif readname == "Dirt_Sandy" then
		alt = {
			"valleys_mapgen:dirt_sandy", nil, nil,
			"valleys_mapgen:dirt_sandy_with_snow"
		}
	end
	lib_materials.register_node(itemstr_dirt, alt[1], def[1])
	lib_materials.register_node(
		itemstr_dirt .. "_with_coniferous_litter", alt[2], def[2]
	)
	lib_materials.register_node(
		itemstr_dirt .. "_with_rainforest_litter", alt[3], def[3]
	)
	lib_materials.register_node(
		itemstr_dirt .. "_with_snow", alt[4], def[4]
	)
end

local function register_dirts2(readname)
	local temperatures = {"hot", "warm", "temperate", "cool"}
	local humidities = {"humid", "semihumid", "temperate", "semiarid"}
	local elevations = {"coastal", "lowland", "shelf", "highland"}
	local palettes1 = {
		hot_humid = GRASS_HUMID_PALETTE_4,
		hot_semihumid = GRASS_SEMIHUMID_PALETTE_4,
		hot_temperate = GRASS_TEMPERATE_PALETTE_4,
		hot_semiarid = GRASS_SEMIARID_PALETTE_4,
		warm_humid = GRASS_HUMID_PALETTE_3,
		warm_semihumid = GRASS_SEMIHUMID_PALETTE_3,
		warm_temperate = GRASS_TEMPERATE_PALETTE_3,
		warm_semiarid = GRASS_SEMIARID_PALETTE_3,
		temperate_humid = GRASS_HUMID_PALETTE_2,
		temperate_semihumid = GRASS_SEMIHUMID_PALETTE_2,
		temperate_temperate = GRASS_TEMPERATE_PALETTE_2,
		temperate_semiarid = GRASS_SEMIARID_PALETTE_2,
		cool_humid = GRASS_HUMID_PALETTE_1,
		cool_semihumid = GRASS_SEMIHUMID_PALETTE_1,
		cool_temperate = GRASS_TEMPERATE_PALETTE_1,
		cool_semiarid = GRASS_SEMIARID_PALETTE_1,
	}
	local textures = {
		coastal = {
			GRASS_COASTAL_TEXTURE_TOP, GRASS_COASTAL_TEXTURE_SIDE
		},
		lowland = {
			GRASS_LOWLAND_TEXTURE_TOP, GRASS_LOWLAND_TEXTURE_SIDE
		},
		shelf = {
			GRASS_SHELF_TEXTURE_TOP, GRASS_SHELF_TEXTURE_SIDE
		},
		highland = {
			GRASS_HIGHLAND_TEXTURE_TOP, GRASS_HIGHLAND_TEXTURE_SIDE
		}
	}
	local palettes2 = {
		{
			GRASS_WET_PALETTE_1, GRASS_WET_PALETTE_2, GRASS_WET_PALETTE_3,
			GRASS_WET_PALETTE_4
		},
		{
			GRASS_LUSH_PALETTE_1, GRASS_LUSH_PALETTE_2,
			GRASS_LUSH_PALETTE_3, GRASS_LUSH_PALETTE_4
		},
		{
			GRASS_DRY_PALETTE_1, GRASS_DRY_PALETTE_2, GRASS_DRY_PALETTE_3,
			GRASS_DRY_PALETTE_4
		},
		{
			GRASS_BROWN_PALETTE_1, GRASS_BROWN_PALETTE_2,
			GRASS_BROWN_PALETTE_3, GRASS_BROWN_PALETTE_4
		}
	}
	local grasses = {
		{"Wet", GRASS_JUNGLE_TEXTURE_TOP, GRASS_JUNGLE_TEXTURE_SIDE},
		{"Lush", GRASS_TEXTURE_TOP, GRASS_TEXTURE_SIDE},
		{"Dry", GRASS_DRY_TEXTURE_TOP, GRASS_DRY_TEXTURE_SIDE},
		{"Brown", GRASS_BROWN_TEXTURE_TOP, GRASS_BROWN_TEXTURE_SIDE}
	}
	local name = readname:lower()
	local itemstr_dirt = "lib_materials:" .. name
	local tilestr = "lib_materials_" .. name .. ".png"

	register_dirts(readname)
	for _, t in pairs(temperatures) do
		for _, h in pairs(humidities) do
			for _, e in pairs(elevations) do
				local id = itemstr_dirt .. "_with_grass_" .. t .. "_" ..
					h .. "_" .. e
				lib_materials.register_node(id, nil, {
					description = readname .. " with Grass (" .. t ..
						"_" .. h .. "_" .. e .. ")",
					tiles = {
						textures[e][1] .. "^[colorize:" ..
							palettes1[t .. "_" .. h],
						tilestr,
						tilestr .. "^(" .. textures[e][2] ..
							"^[colorize:" .. palettes1[t .. "_" .. h] ..
							")"
					},
					is_ground_content = true,
					groups = {crumbly = 3,soil = 1},
					drop = itemstr_dirt,
					sounds = lib_materials.node_sound_dirt_defaults({
						footstep = {
							name="default_grass_footstep", gain=0.25
						}
					}),
					soil = {
						base = id,
						dry = "farming:soil",
						wet = "farming:soil_wet"
					}
				})
			end
		end
	end
	for _, g in pairs(grasses) do
		local count = 1
		for _, ps in pairs(palettes2) do
			local id = string.lower(g[1])
			for _, p in pairs(ps) do
				local num = string.format("%02d", count)
				local full =  itemstr_dirt .. "_with_grass_" .. id .. 
					"_" .. num
				lib_materials.register_node(full, nil, {
					description = readname .. " with Grass " .. g[1] ..
						" (" .. num .. ")",
					tiles = {
						g[2] .. "^[colorize:" .. p,
						tilestr,
						tilestr .. "^(" .. g[3] .. "^[colorize:" .. p
							.. ")"
					},
					is_ground_content = true,
					groups = {crumbly = 3, soil = 1},
					drop = itemstr_dirt,
					sounds = lib_materials.node_sound_dirt_defaults({
						footstep = {
							name = "default_grass_footstep", gain = 0.25
						}
					}),
					soil = {
						base = full,
						dry = "farming:soil",
						wet = "farming:soil_wet"
					}
				})
				count = count + 1
			end
		end
	end
end

	register_dirts2("Dirt")
	register_dirts2("Dirt_Brown")
	register_dirts2("Dirt_Black")
	register_dirts2("Dirt_Clay_Red")
	register_dirts2("Dirt_Clay_White")
	register_dirts2("Dirt_Clayey")
	register_dirts2("Dirt_Sandy")
	register_dirts2("Dirt_Silt_01")
	register_dirts2("Dirt_Silt_02")
	register_dirts2("Dirt_Silty")

	register_dirts("Dirt_Coarse")
	register_dirts("Dirt_Dark")
	register_dirts("Dirt_Dry")
	register_dirts("Dirt_Mud_01")
