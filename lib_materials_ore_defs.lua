
local S = lib_materials.intllib

local mgparams = minetest.get_mapgen_params()
local seed = mgparams.seed
--local mg_seed = mgparams.seed

local oredefs = {}

lib_materials.add_oredef = function(ore_name, ore_seed)

	oredefs[ore_name] = ore_seed
end

lib_materials.get_oredefs = function()

	local str = ""

	for n, s in pairs(oredefs) do

		str = str .. n .. " - " .. s .. "\n"
		
	end
	
	return str

end

minetest.register_chatcommand("get_oredefs", {
 	description = S("Get a list of ore names and seeds."),
 	func = function(name, params)

		--lib_materials.get_oredefs()
		--minetest.debug(lib_shapes.shapes_created)
		--minetest.log(S("[MOD] lib_materials:  Decorating Hot Humid Biomes"))
		minetest.chat_send_player(name, lib_materials.get_oredefs())
	
	end

})


local add_ore_blob = function(name, parent, biomes)

	minetest.register_ore({
		ore_type         = "blob",
		ore              = name,
		wherein          = parent,
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
        	biomes = biomes or nil,
		random_factor = 1.0
	})

end

local add_ore_blob2 = function(name, parent, biomes)

	local ore_seed = tonumber(name)

	minetest.register_ore({
		ore_type         = "blob",
		ore              = name,
		wherein          = parent,
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 32,
		clust_size       = 20,
		y_min            = -1000,
		y_max            = 31000,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 64, y = 64, z = 64},
			seed = ore_seed,
			octaves = 1,
			persist = 0.5
		},
        	biomes = biomes or nil,
		random_factor = 1.0
	})

end


local add_ore_sheet = function(name, parent, density, min_y, max_y, biomes)

	local spread_val = 2^(density * 10)
	--local ore_seed = seed
	--local ore_seed = 4130293965
	--local ore_seed = 89
	local ore_seed = math.random(1, spread_val)
	--local ore_seed = string.len(name) + spread_val

	lib_materials.add_oredef(name, ore_seed)

	minetest.register_ore({
		ore_type = "sheet",
		ore = name,
		wherein = parent,
		clust_size = 8,
		y_min = min_y - lib_materials.biome_vertical_blend,
		y_max = max_y + lib_materials.biome_vertical_blend,
		noise_threshold = density,
		noise_params = {
			offset = 0,
			scale = 1,
			spread = {x = 128, y = 128, z = 128},
			seed = ore_seed,
			octaves = 5,
			persist = 0.60
		},
		column_height_min = (lib_materials.biome_altitude_range / 2) + lib_materials.biome_vertical_blend,  --1
		column_height_max = lib_materials.biome_altitude_range + (lib_materials.biome_vertical_blend * 2),
		column_midpoint_factor = 0.5,
 		biomes = biomes or nil
	})


end

local add_ore_sheet_01 = function(name, parent, density, min_y, max_y, biomes)

	local spread_val = 2^(density * 10)
	local ore_seed = math.random(1, spread_val)

	minetest.register_ore({
		ore_type = "sheet",
		ore = name,
		wherein = parent,
		clust_size = (density * 10),
		y_min = min_y,
		y_max = max_y,
		noise_threshold = density,
		noise_params = {
			offset = 0,
			scale = 1,
			spread = {x = spread_val, y = spread_val, z = spread_val},
			seed = ore_seed,
			octaves = 5,
			persist = 0.60
		},
	        column_height_min = 1,
	        column_height_max = lib_materials.biome_altitude_range,
	        column_midpoint_factor = 0.5,
 		biomes = biomes or nil
	})


end

local add_ore_sheet_03 = function(name, parent, density, min_y, max_y, biomes)

	--local ore_seed = seed + math.random()  --4130293965
	--local name_num = tonumber(name)
	local spread_val = 2^(density * 10)
	local ore_seed = math.random(1, spread_val)

	minetest.register_ore({
		ore_type = "sheet",
		ore = name,
		wherein = parent,
		clust_size = 8,
		y_min = min_y,
		y_max = max_y,
		noise_threshold = density,
		noise_params = {
			offset = 0,
			scale = 1,
			spread = {x = 64, y = 64, z = 64},
			seed = ore_seed,
			octaves = 5,
			persist = 0.60
		},
	        column_height_min = 1,
	        column_height_max = lib_materials.biome_altitude_range,
	        column_midpoint_factor = 0.5,
 		biomes = biomes or nil
	})


end

local add_ore_sheet_orig = function(name, parent, density, biomes)

	--local ore_seed = seed + math.random()  --4130293965
	local ore_seed = tonumber(name)

	minetest.register_ore({
		ore_type = "sheet",
		ore = name,
		wherein = parent,
		clust_size = 40,
		y_min = -1000,
		y_max = 31000,
		noise_threshold = density,
		noise_params = {
			offset = 0,
			scale = 1,
			spread = {x = 128, y = 128, z = 128},
			seed = ore_seed,
			octaves = 5,
			persist = 0.60
		},
	        column_height_min = 1,
	        column_height_max = 16,
	        column_midpoint_factor = 0.5,
 		biomes = biomes or nil
	})


end


local add_ore_blob_01 = function(name, parent, min_y, max_y, biomes)

	local ore_seed = tonumber(name)

	minetest.register_ore({
		ore_type         = "blob",
		ore              = name,
		wherein          = parent,
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 32,
		clust_size       = 6,
		y_min = min_y - (lib_materials.biome_altitude_range / 2),
		y_max = max_y + (lib_materials.biome_altitude_range / 2),
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 64, y = 64, z = 64},
			seed = ore_seed,
			octaves = 1,
			persist = 0.5
		},
        	biomes = biomes or nil,
		random_factor = 1.0
	})

end

local add_ore_stratum = function(name, parent, biomes)

	minetest.register_ore({
		ore_type = "stratum",
		ore = name,
		wherein = parent,
--		clust_num_ores = 250,
		clust_scarcity = 1,
--		clust_size = 10,
		y_min = lib_materials.maxheight_beach,		--  -1000,
		y_max = (lib_materials.maxheight_highland - 10),		--  31000,
--		noise_threshold = 0.1,
	        np_stratum_thickness = {
	            offset = 8,
	            scale = 4,
	            spread = {x = 100, y = 100, z = 100},
	            seed = 17,
	            octaves = 3,
	            persist = 0.7
	        },
		noise_params = {
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 4130293965,
			octaves = 5,
			persist = 0.60
		},
        biomes = biomes or nil,
--		random_factor = 1.0
	})


end

local add_ore_vein = function()

end

--[[
	-- -- Adds stone types(default types{desert_stone, sandstone, desert_sandstone, silver_sandstone}; lib_materials types{stone_brown, stone_sand}) as ores within default:stone
	-- minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_sandstone", wherein="lib_materials:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=4130293965, octaves=5, persist=0.60}, random_factor=1.0})
	-- minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_sandstone_desert", wherein="lib_materials:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=4130293965, octaves=5, persist=0.60}, random_factor=1.0})
	-- minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_sandstone_silver", wherein="lib_materials:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=4130293965, octaves=5, persist=0.60}, random_factor=1.0})
	-- minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_desert", wherein="lib_materials:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=163281090, octaves=5, persist=0.60}, random_factor=1.0})
	-- minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_brown", wherein="lib_materials:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=163281090, octaves=5, persist=0.60}, random_factor=1.0})
	-- minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_sand", wherein="lib_materials:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=163281090, octaves=5, persist=0.60}, random_factor=1.0})
	-- -- Adds default desert_stone, desert_sandstone, and stone_brown to stone_sand
	-- minetest.register_ore({ore_type = "blob", ore = "lib_materials:stone_desert", wherein = {"lib_materials:stone_sand"}, clust_scarcity = 4 * 4 * 4, clust_num_ores = 8, clust_size = 6, y_min = -10, y_max = 71, noise_params = { offset = 0.35, scale = 0.2, spread = {x = 5, y = 5, z = 5}, seed = -316, octaves = 1, persist = 0.5 }, })
	-- minetest.register_ore({ore_type = "blob", ore = "lib_materials:stone_sandstone_desert", wherein = {"lib_materials:stone_sand"}, clust_scarcity = 4 * 4 * 4, clust_num_ores = 8, clust_size = 6, y_min = -10, y_max = 71, noise_params = {offset = 0.35, scale = 0.2, spread = {x = 5, y = 5, z = 5}, seed = -613, octaves = 1, persist = 0.5},})
	-- minetest.register_ore({ore_type = "blob", ore = "lib_materials:stone_brown", wherein = {"lib_materials:stone_sand"}, clust_scarcity = 4 * 4 * 4, clust_num_ores = 8, clust_size = 6, y_min = -10, y_max = 71, noise_params = { offset = 0.35, scale = 0.2, spread = {x = 5, y = 5, z = 5}, seed = -613, octaves = 1, persist = 0.5 },})

	-- add_ore_sheet("lib_materials:stone_sandstone", "lib_materials:stone")
	-- add_ore_sheet("lib_materials:stone_sandstone_desert", "lib_materials:stone")
	-- add_ore_sheet("lib_materials:stone_sandstone_silver", "lib_materials:stone")
	-- add_ore_sheet("lib_materials:stone_desert", "lib_materials:stone")
	-- add_ore_sheet("lib_materials:stone_brown", "lib_materials:stone")
	-- add_ore_sheet("lib_materials:stone_sand", "lib_materials:stone")
	-- add_ore_sheet("lib_materials:stone_desert", "lib_materials:stone_sand")
	-- add_ore_sheet("lib_materials:stone_sandstone_desert", "lib_materials:stone_sand")
	-- add_ore_sheet("lib_materials:stone_brown", "lib_materials:stone_sand")
--]]
	
local function add_dirt_grass_types_as_ore()

--HOT HUMID
	add_ore_sheet("lib_materials:dirt_silt_01", {"lib_materials:sand", }, 0.8, lib_materials.beach_depth, lib_materials.maxheight_beach, {"hot_humid_beach", })
	
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_humid_coastal", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_humid_coastal", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_humid_coastal", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_humid_coastal", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_humid_coastal", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet_01("lib_materials:dirt_black_with_litter_fungi", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_humid_coastal", })

	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_humid_lowland", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_humid_lowland", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_humid_lowland", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet_01("lib_materials:dirt_black_with_litter_fungi", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.6, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_humid_lowland", })

	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_humid_shelf", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_humid_shelf", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_humid_shelf", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_humid_shelf", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_humid_shelf", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet_01("lib_materials:dirt_black_with_litter_fungi", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.6, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_humid_shelf", })

	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_humid_highland", {"lib_materials:dirt_with_grass_hot_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_humid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_humid_highland", {"lib_materials:dirt_with_grass_hot_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_humid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_humid_highland", {"lib_materials:dirt_with_grass_hot_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_humid_highland", })
	add_ore_sheet_01("lib_materials:dirt_black_with_litter_fungi", {"lib_materials:dirt_with_grass_hot_humid_highland", }, 0.4, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_humid_highland", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_humid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_humid_highland", })
--HOT SEMIHUMID
	add_ore_sheet("lib_materials:dirt_silt_01", {"lib_materials:sand_volcanic", }, 0.8, lib_materials.beach_depth, lib_materials.maxheight_beach, {"hot_semihumid_beach", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semihumid_coastal", {"lib_materials:dirt_with_grass_hot_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semihumid_coastal", {"lib_materials:dirt_with_grass_hot_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semihumid_coastal", {"lib_materials:dirt_with_grass_hot_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semihumid_lowland", {"lib_materials:dirt_with_grass_hot_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semihumid_lowland", {"lib_materials:dirt_with_grass_hot_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semihumid_lowland", {"lib_materials:dirt_with_grass_hot_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semihumid_shelf", {"lib_materials:dirt_with_grass_hot_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semihumid_shelf", {"lib_materials:dirt_with_grass_hot_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semihumid_shelf", {"lib_materials:dirt_with_grass_hot_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semihumid_highland", {"lib_materials:dirt_with_grass_hot_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semihumid_highland", {"lib_materials:dirt_with_grass_hot_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semihumid_highland", {"lib_materials:dirt_with_grass_hot_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_rainforest", {"lib_materials:dirt_with_grass_hot_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semihumid_highland", })
--HOT TEMPERATE
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_temperate_coastal", {"lib_materials:dirt_with_grass_hot_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_temperate_coastal", {"lib_materials:dirt_with_grass_hot_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_temperate_coastal", {"lib_materials:dirt_with_grass_hot_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_temperate_coastal", {"lib_materials:dirt_with_grass_hot_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_temperate_coastal", {"lib_materials:dirt_with_grass_hot_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_temperate_lowland", {"lib_materials:dirt_with_grass_hot_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_temperate_lowland", {"lib_materials:dirt_with_grass_hot_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_temperate_lowland", {"lib_materials:dirt_with_grass_hot_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_temperate_lowland", {"lib_materials:dirt_with_grass_hot_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_temperate_lowland", {"lib_materials:dirt_with_grass_hot_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_temperate_shelf", {"lib_materials:dirt_with_grass_hot_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_temperate_shelf", {"lib_materials:dirt_with_grass_hot_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_temperate_shelf", {"lib_materials:dirt_with_grass_hot_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_temperate_shelf", {"lib_materials:dirt_with_grass_hot_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_temperate_shelf", {"lib_materials:dirt_with_grass_hot_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_temperate_highland", {"lib_materials:dirt_with_grass_hot_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_temperate_highland", {"lib_materials:dirt_with_grass_hot_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_temperate_highland", {"lib_materials:dirt_with_grass_hot_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_temperate_highland", {"lib_materials:dirt_with_grass_hot_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_temperate_highland", {"lib_materials:dirt_with_grass_hot_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_temperate_highland", })
--HOT SEMIARID
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_semiarid_coastal", {"lib_materials:dirt_with_grass_hot_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_semiarid_coastal", {"lib_materials:dirt_with_grass_hot_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semiarid_coastal", {"lib_materials:dirt_with_grass_hot_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semiarid_coastal", {"lib_materials:dirt_with_grass_hot_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semiarid_coastal", {"lib_materials:dirt_with_grass_hot_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_semiarid_lowland", {"lib_materials:dirt_with_grass_hot_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_semiarid_lowland", {"lib_materials:dirt_with_grass_hot_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semiarid_lowland", {"lib_materials:dirt_with_grass_hot_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semiarid_lowland", {"lib_materials:dirt_with_grass_hot_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semiarid_lowland", {"lib_materials:dirt_with_grass_hot_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_semiarid_shelf", {"lib_materials:dirt_with_grass_hot_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_semiarid_shelf", {"lib_materials:dirt_with_grass_hot_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semiarid_shelf", {"lib_materials:dirt_with_grass_hot_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semiarid_shelf", {"lib_materials:dirt_with_grass_hot_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semiarid_shelf", {"lib_materials:dirt_with_grass_hot_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_hot_semiarid_highland", {"lib_materials:dirt_with_grass_hot_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_hot_semiarid_highland", {"lib_materials:dirt_with_grass_hot_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_hot_semiarid_highland", {"lib_materials:dirt_with_grass_hot_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_hot_semiarid_highland", {"lib_materials:dirt_with_grass_hot_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_hot_semiarid_highland", {"lib_materials:dirt_with_grass_hot_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_semiarid_highland", })
--HOT_ARID
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_arid_coastal", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_arid_coastal", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_arid_coastal", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_arid_coastal", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"hot_arid_coastal", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_arid_lowland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_arid_lowland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_arid_lowland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_arid_lowland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"hot_arid_lowland", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_arid_shelf", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_arid_shelf", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_arid_shelf", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_arid_shelf", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"hot_arid_shelf", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_arid_highland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_arid_highland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_arid_highland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_arid_highland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"hot_arid_highland", })

--WARM HUMID
	add_ore_sheet("lib_materials:dirt_silt_01", {"lib_materials:sand_white", }, 0.8, lib_materials.beach_depth, lib_materials.maxheight_beach, {"warm_humid_beach", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_humid_coastal", {"lib_materials:dirt_with_grass_warm_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_humid_coastal", {"lib_materials:dirt_with_grass_warm_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_humid_coastal", {"lib_materials:dirt_with_grass_warm_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_humid_coastal", {"lib_materials:dirt_with_grass_warm_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_humid_coastal", {"lib_materials:dirt_with_grass_warm_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_humid_lowland", {"lib_materials:dirt_with_grass_warm_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_humid_lowland", {"lib_materials:dirt_with_grass_warm_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_humid_lowland", {"lib_materials:dirt_with_grass_warm_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_humid_lowland", {"lib_materials:dirt_with_grass_warm_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_humid_lowland", {"lib_materials:dirt_with_grass_warm_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_humid_shelf", {"lib_materials:dirt_with_grass_warm_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_humid_shelf", {"lib_materials:dirt_with_grass_warm_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_humid_shelf", {"lib_materials:dirt_with_grass_warm_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_humid_shelf", {"lib_materials:dirt_with_grass_warm_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_humid_shelf", {"lib_materials:dirt_with_grass_warm_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_humid_highland", {"lib_materials:dirt_with_grass_warm_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_humid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_humid_highland", {"lib_materials:dirt_with_grass_warm_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_humid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_humid_highland", {"lib_materials:dirt_with_grass_warm_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_humid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_humid_highland", {"lib_materials:dirt_with_grass_warm_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_humid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_humid_highland", {"lib_materials:dirt_with_grass_warm_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_humid_highland", })
--WARM SEMIHUMID
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semihumid_coastal", {"lib_materials:dirt_with_grass_warm_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semihumid_coastal", {"lib_materials:dirt_with_grass_warm_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semihumid_coastal", {"lib_materials:dirt_with_grass_warm_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semihumid_coastal", {"lib_materials:dirt_with_grass_warm_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semihumid_coastal", {"lib_materials:dirt_with_grass_warm_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semihumid_lowland", {"lib_materials:dirt_with_grass_warm_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semihumid_lowland", {"lib_materials:dirt_with_grass_warm_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semihumid_lowland", {"lib_materials:dirt_with_grass_warm_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semihumid_lowland", {"lib_materials:dirt_with_grass_warm_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semihumid_lowland", {"lib_materials:dirt_with_grass_warm_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semihumid_shelf", {"lib_materials:dirt_with_grass_warm_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semihumid_shelf", {"lib_materials:dirt_with_grass_warm_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semihumid_shelf", {"lib_materials:dirt_with_grass_warm_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semihumid_shelf", {"lib_materials:dirt_with_grass_warm_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semihumid_shelf", {"lib_materials:dirt_with_grass_warm_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semihumid_highland", {"lib_materials:dirt_with_grass_warm_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semihumid_highland", {"lib_materials:dirt_with_grass_warm_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semihumid_highland", {"lib_materials:dirt_with_grass_warm_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semihumid_highland", {"lib_materials:dirt_with_grass_warm_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semihumid_highland", {"lib_materials:dirt_with_grass_warm_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semihumid_highland", })
--WARM TEMPERATE
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_temperate_coastal", {"lib_materials:dirt_with_grass_warm_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_temperate_coastal", {"lib_materials:dirt_with_grass_warm_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_temperate_coastal", {"lib_materials:dirt_with_grass_warm_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_temperate_coastal", {"lib_materials:dirt_with_grass_warm_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_temperate_coastal", {"lib_materials:dirt_with_grass_warm_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_temperate_lowland", {"lib_materials:dirt_with_grass_warm_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_temperate_lowland", {"lib_materials:dirt_with_grass_warm_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_temperate_lowland", {"lib_materials:dirt_with_grass_warm_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_temperate_lowland", {"lib_materials:dirt_with_grass_warm_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_temperate_lowland", {"lib_materials:dirt_with_grass_warm_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_temperate_shelf", {"lib_materials:dirt_with_grass_warm_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_temperate_shelf", {"lib_materials:dirt_with_grass_warm_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_temperate_shelf", {"lib_materials:dirt_with_grass_warm_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_temperate_shelf", {"lib_materials:dirt_with_grass_warm_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_temperate_shelf", {"lib_materials:dirt_with_grass_warm_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_temperate_highland", {"lib_materials:dirt_with_grass_warm_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_temperate_highland", {"lib_materials:dirt_with_grass_warm_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_temperate_highland", {"lib_materials:dirt_with_grass_warm_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_temperate_highland", {"lib_materials:dirt_with_grass_warm_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_temperate_highland", {"lib_materials:dirt_with_grass_warm_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_temperate_highland", })
--WARM SEMIARID
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semiarid_coastal", {"lib_materials:dirt_with_grass_warm_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semiarid_coastal", {"lib_materials:dirt_with_grass_warm_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semiarid_coastal", {"lib_materials:dirt_with_grass_warm_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semiarid_coastal", {"lib_materials:dirt_with_grass_warm_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semiarid_coastal", {"lib_materials:dirt_with_grass_warm_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semiarid_lowland", {"lib_materials:dirt_with_grass_warm_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semiarid_lowland", {"lib_materials:dirt_with_grass_warm_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semiarid_lowland", {"lib_materials:dirt_with_grass_warm_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semiarid_lowland", {"lib_materials:dirt_with_grass_warm_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semiarid_lowland", {"lib_materials:dirt_with_grass_warm_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semiarid_shelf", {"lib_materials:dirt_with_grass_warm_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semiarid_shelf", {"lib_materials:dirt_with_grass_warm_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semiarid_shelf", {"lib_materials:dirt_with_grass_warm_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semiarid_shelf", {"lib_materials:dirt_with_grass_warm_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semiarid_shelf", {"lib_materials:dirt_with_grass_warm_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_warm_semiarid_highland", {"lib_materials:dirt_with_grass_warm_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_warm_semiarid_highland", {"lib_materials:dirt_with_grass_warm_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_warm_semiarid_highland", {"lib_materials:dirt_with_grass_warm_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_warm_semiarid_highland", {"lib_materials:dirt_with_grass_warm_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_warm_semiarid_highland", {"lib_materials:dirt_with_grass_warm_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_semiarid_highland", })
--WARM ARID
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_arid_coastal", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_arid_coastal", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_arid_coastal", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_arid_coastal", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"warm_arid_coastal", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_arid_lowland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_arid_lowland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_arid_lowland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_arid_lowland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"warm_arid_lowland", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_arid_shelf", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_arid_shelf", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_arid_shelf", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_arid_shelf", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"warm_arid_shelf", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_arid_highland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_arid_highland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_arid_highland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_arid_highland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"warm_arid_highland", })

--TEMPERATE HUMID
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_humid_coastal", {"lib_materials:dirt_with_grass_temperate_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_humid_coastal", {"lib_materials:dirt_with_grass_temperate_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_humid_coastal", {"lib_materials:dirt_with_grass_temperate_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_humid_coastal", {"lib_materials:dirt_with_grass_temperate_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_humid_coastal", {"lib_materials:dirt_with_grass_temperate_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_humid_lowland", {"lib_materials:dirt_with_grass_temperate_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_humid_lowland", {"lib_materials:dirt_with_grass_temperate_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_humid_lowland", {"lib_materials:dirt_with_grass_temperate_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_humid_lowland", {"lib_materials:dirt_with_grass_temperate_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_humid_lowland", {"lib_materials:dirt_with_grass_temperate_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_humid_shelf", {"lib_materials:dirt_with_grass_temperate_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_humid_shelf", {"lib_materials:dirt_with_grass_temperate_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_humid_shelf", {"lib_materials:dirt_with_grass_temperate_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_humid_shelf", {"lib_materials:dirt_with_grass_temperate_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_humid_shelf", {"lib_materials:dirt_with_grass_temperate_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_humid_highland", {"lib_materials:dirt_with_grass_temperate_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_humid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_humid_highland", {"lib_materials:dirt_with_grass_temperate_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_humid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_humid_highland", {"lib_materials:dirt_with_grass_temperate_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_humid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_humid_highland", {"lib_materials:dirt_with_grass_temperate_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_humid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_humid_highland", {"lib_materials:dirt_with_grass_temperate_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_humid_highland", })
--TEMPERATE SEMIHUMID
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semihumid_coastal", {"lib_materials:dirt_with_grass_temperate_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semihumid_coastal", {"lib_materials:dirt_with_grass_temperate_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semihumid_coastal", {"lib_materials:dirt_with_grass_temperate_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semihumid_coastal", {"lib_materials:dirt_with_grass_temperate_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semihumid_coastal", {"lib_materials:dirt_with_grass_temperate_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semihumid_lowland", {"lib_materials:dirt_with_grass_temperate_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semihumid_lowland", {"lib_materials:dirt_with_grass_temperate_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semihumid_lowland", {"lib_materials:dirt_with_grass_temperate_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semihumid_lowland", {"lib_materials:dirt_with_grass_temperate_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semihumid_lowland", {"lib_materials:dirt_with_grass_temperate_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semihumid_shelf", {"lib_materials:dirt_with_grass_temperate_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semihumid_shelf", {"lib_materials:dirt_with_grass_temperate_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semihumid_shelf", {"lib_materials:dirt_with_grass_temperate_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semihumid_shelf", {"lib_materials:dirt_with_grass_temperate_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semihumid_shelf", {"lib_materials:dirt_with_grass_temperate_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semihumid_highland", {"lib_materials:dirt_with_grass_temperate_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semihumid_highland", {"lib_materials:dirt_with_grass_temperate_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semihumid_highland", {"lib_materials:dirt_with_grass_temperate_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semihumid_highland", {"lib_materials:dirt_with_grass_temperate_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semihumid_highland", {"lib_materials:dirt_with_grass_temperate_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semihumid_highland", })
--TEMPERATE TEMPERATE 
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_temperate_coastal", {"lib_materials:dirt_with_grass_temperate_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_temperate_coastal", {"lib_materials:dirt_with_grass_temperate_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_temperate_coastal", {"lib_materials:dirt_with_grass_temperate_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_temperate_coastal", {"lib_materials:dirt_with_grass_temperate_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_temperate_coastal", {"lib_materials:dirt_with_grass_temperate_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_temperate_lowland", {"lib_materials:dirt_with_grass_temperate_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_temperate_lowland", {"lib_materials:dirt_with_grass_temperate_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_temperate_lowland", {"lib_materials:dirt_with_grass_temperate_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_temperate_lowland", {"lib_materials:dirt_with_grass_temperate_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_temperate_lowland", {"lib_materials:dirt_with_grass_temperate_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_with_grass_gray", {"lib_materials:dirt_with_grass_temperate_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_temperate_shelf", {"lib_materials:dirt_with_grass_temperate_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_temperate_shelf", {"lib_materials:dirt_with_grass_temperate_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_temperate_shelf", {"lib_materials:dirt_with_grass_temperate_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_temperate_shelf", {"lib_materials:dirt_with_grass_temperate_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_temperate_shelf", {"lib_materials:dirt_with_grass_temperate_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_with_grass_gray", {"lib_materials:dirt_with_grass_temperate_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_temperate_highland", {"lib_materials:dirt_with_grass_temperate_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_temperate_highland", {"lib_materials:dirt_with_grass_temperate_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_temperate_highland", {"lib_materials:dirt_with_grass_temperate_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_temperate_highland", {"lib_materials:dirt_with_grass_temperate_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_temperate_highland", {"lib_materials:dirt_with_grass_temperate_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_temperate_highland", })
--TEMPERATE SEMIARID
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semiarid_coastal", {"lib_materials:dirt_with_grass_temperate_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semiarid_coastal", {"lib_materials:dirt_with_grass_temperate_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semiarid_coastal", {"lib_materials:dirt_with_grass_temperate_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semiarid_coastal", {"lib_materials:dirt_with_grass_temperate_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semiarid_coastal", {"lib_materials:dirt_with_grass_temperate_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semiarid_lowland", {"lib_materials:dirt_with_grass_temperate_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semiarid_lowland", {"lib_materials:dirt_with_grass_temperate_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semiarid_lowland", {"lib_materials:dirt_with_grass_temperate_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semiarid_lowland", {"lib_materials:dirt_with_grass_temperate_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semiarid_lowland", {"lib_materials:dirt_with_grass_temperate_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semiarid_shelf", {"lib_materials:dirt_with_grass_temperate_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semiarid_shelf", {"lib_materials:dirt_with_grass_temperate_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semiarid_shelf", {"lib_materials:dirt_with_grass_temperate_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semiarid_shelf", {"lib_materials:dirt_with_grass_temperate_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semiarid_shelf", {"lib_materials:dirt_with_grass_temperate_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_temperate_semiarid_highland", {"lib_materials:dirt_with_grass_temperate_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_temperate_semiarid_highland", {"lib_materials:dirt_with_grass_temperate_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_temperate_semiarid_highland", {"lib_materials:dirt_with_grass_temperate_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_temperate_semiarid_highland", {"lib_materials:dirt_with_grass_temperate_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_temperate_semiarid_highland", {"lib_materials:dirt_with_grass_temperate_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_semiarid_highland", })
--TEMPERATE  ARID
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_arid_coastal", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_arid_coastal", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_arid_coastal", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_arid_coastal", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"temperate_arid_coastal", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_arid_lowland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_arid_lowland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_arid_lowland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_arid_lowland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"temperate_arid_lowland", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_arid_shelf", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_arid_shelf", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_arid_shelf", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_arid_shelf", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"temperate_arid_shelf", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_arid_highland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_arid_highland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_arid_highland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_arid_highland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"temperate_arid_highland", })

--COOL HUMID
	add_ore_sheet("lib_materials:dirt_black_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_humid_coastal", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_humid_coastal", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_humid_coastal", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_humid_coastal", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_humid_coastal", {"lib_materials:dirt_with_grass_cool_humid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_humid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_humid_lowland", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_humid_lowland", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_humid_lowland", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_humid_lowland", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_humid_lowland", {"lib_materials:dirt_with_grass_cool_humid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_humid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_humid_shelf", {"lib_materials:dirt_with_grass_cool_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_humid_shelf", {"lib_materials:dirt_with_grass_cool_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_humid_shelf", {"lib_materials:dirt_with_grass_cool_humid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_humid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_humid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_litter_coniferous", {"lib_materials:dirt_with_grass_cool_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_humid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_humid_highland", {"lib_materials:dirt_with_grass_cool_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_humid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_humid_highland", {"lib_materials:dirt_with_grass_cool_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_humid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_humid_highland", {"lib_materials:dirt_with_grass_cool_humid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_humid_highland", })
--COOL SEMIHUMID
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semihumid_coastal", {"lib_materials:dirt_with_grass_cool_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semihumid_coastal", {"lib_materials:dirt_with_grass_cool_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semihumid_coastal", {"lib_materials:dirt_with_grass_cool_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semihumid_coastal", {"lib_materials:dirt_with_grass_cool_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semihumid_coastal", {"lib_materials:dirt_with_grass_cool_semihumid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semihumid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semihumid_lowland", {"lib_materials:dirt_with_grass_cool_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semihumid_lowland", {"lib_materials:dirt_with_grass_cool_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semihumid_lowland", {"lib_materials:dirt_with_grass_cool_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semihumid_lowland", {"lib_materials:dirt_with_grass_cool_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semihumid_lowland", {"lib_materials:dirt_with_grass_cool_semihumid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semihumid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semihumid_shelf", {"lib_materials:dirt_with_grass_cool_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semihumid_shelf", {"lib_materials:dirt_with_grass_cool_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semihumid_shelf", {"lib_materials:dirt_with_grass_cool_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semihumid_shelf", {"lib_materials:dirt_with_grass_cool_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semihumid_shelf", {"lib_materials:dirt_with_grass_cool_semihumid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semihumid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semihumid_highland", {"lib_materials:dirt_with_grass_cool_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semihumid_highland", {"lib_materials:dirt_with_grass_cool_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semihumid_highland", {"lib_materials:dirt_with_grass_cool_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semihumid_highland", {"lib_materials:dirt_with_grass_cool_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semihumid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semihumid_highland", {"lib_materials:dirt_with_grass_cool_semihumid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semihumid_highland", })
--COOL TEMPERATE
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_temperate_coastal", {"lib_materials:dirt_with_grass_cool_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_temperate_coastal", {"lib_materials:dirt_with_grass_cool_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_temperate_coastal", {"lib_materials:dirt_with_grass_cool_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_temperate_coastal", {"lib_materials:dirt_with_grass_cool_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_temperate_coastal", {"lib_materials:dirt_with_grass_cool_temperate_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_temperate_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_temperate_lowland", {"lib_materials:dirt_with_grass_cool_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_temperate_lowland", {"lib_materials:dirt_with_grass_cool_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_temperate_lowland", {"lib_materials:dirt_with_grass_cool_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_temperate_lowland", {"lib_materials:dirt_with_grass_cool_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_temperate_lowland", {"lib_materials:dirt_with_grass_cool_temperate_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_temperate_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_temperate_shelf", {"lib_materials:dirt_with_grass_cool_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_temperate_shelf", {"lib_materials:dirt_with_grass_cool_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_temperate_shelf", {"lib_materials:dirt_with_grass_cool_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_temperate_shelf", {"lib_materials:dirt_with_grass_cool_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_temperate_shelf", {"lib_materials:dirt_with_grass_cool_temperate_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_temperate_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_temperate_highland", {"lib_materials:dirt_with_grass_cool_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_temperate_highland", {"lib_materials:dirt_with_grass_cool_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_temperate_highland", {"lib_materials:dirt_with_grass_cool_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_temperate_highland", {"lib_materials:dirt_with_grass_cool_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_temperate_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_temperate_highland", {"lib_materials:dirt_with_grass_cool_temperate_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_temperate_highland", })
--COOL SEMIRID
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semiarid_coastal", {"lib_materials:dirt_with_grass_cool_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semiarid_coastal", {"lib_materials:dirt_with_grass_cool_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semiarid_coastal", {"lib_materials:dirt_with_grass_cool_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semiarid_coastal", {"lib_materials:dirt_with_grass_cool_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semiarid_coastal", {"lib_materials:dirt_with_grass_cool_semiarid_coastal", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_semiarid_coastal", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semiarid_lowland", {"lib_materials:dirt_with_grass_cool_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semiarid_lowland", {"lib_materials:dirt_with_grass_cool_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semiarid_lowland", {"lib_materials:dirt_with_grass_cool_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semiarid_lowland", {"lib_materials:dirt_with_grass_cool_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semiarid_lowland", {"lib_materials:dirt_with_grass_cool_semiarid_lowland", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_semiarid_lowland", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semiarid_shelf", {"lib_materials:dirt_with_grass_cool_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semiarid_shelf", {"lib_materials:dirt_with_grass_cool_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semiarid_shelf", {"lib_materials:dirt_with_grass_cool_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semiarid_shelf", {"lib_materials:dirt_with_grass_cool_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semiarid_shelf", {"lib_materials:dirt_with_grass_cool_semiarid_shelf", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_semiarid_shelf", })
	add_ore_sheet("lib_materials:dirt_black_with_grass_cool_semiarid_highland", {"lib_materials:dirt_with_grass_cool_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_brown_with_grass_cool_semiarid_highland", {"lib_materials:dirt_with_grass_cool_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_clayey_with_grass_cool_semiarid_highland", {"lib_materials:dirt_with_grass_cool_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_sandy_with_grass_cool_semiarid_highland", {"lib_materials:dirt_with_grass_cool_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semiarid_highland", })
	add_ore_sheet("lib_materials:dirt_silty_with_grass_cool_semiarid_highland", {"lib_materials:dirt_with_grass_cool_semiarid_highland", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_semiarid_highland", })
--COOL ARID
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_arid_coastal", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_arid_coastal", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_arid_coastal", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_arid_coastal", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_beach, lib_materials.maxheight_coastal, {"cool_arid_coastal", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_arid_lowland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_arid_lowland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_arid_lowland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_arid_lowland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_coastal, lib_materials.maxheight_lowland, {"cool_arid_lowland", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_arid_shelf", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_arid_shelf", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_arid_shelf", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_arid_shelf", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_lowland, lib_materials.maxheight_shelf, {"cool_arid_shelf", })
	add_ore_sheet("lib_materials:sand", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_arid_highland", })
	add_ore_sheet("lib_materials:sand_desert", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_arid_highland", })
	add_ore_sheet("lib_materials:sand_white", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_arid_highland", })
	add_ore_sheet("lib_materials:stone_desert_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_arid_highland", })
	add_ore_sheet("lib_materials:stone_sandstone_white_gravel", {"lib_materials:stone_sandstone_desert_gravel", }, 0.8, lib_materials.maxheight_shelf, lib_materials.maxheight_highland, {"cool_arid_highland", })

end

add_dirt_grass_types_as_ore()


--[[
-- Adds Air as ore within default:stone
minetest.register_ore({
	ore_type         = "blob",
	ore              = "air",
	wherein          = {"lib_materials:stone_limestone_01"},
	clust_scarcity   = 16*8*16,
	clust_num_ores = 16*16,
	clust_size       = 16,
	y_min            = -50,
	y_max            = -11,
	noise_params     = {
		offset = 0,
		scale = 1,
		spread = {x = 256, y = 256, z = 256},
		seed = 4130293965,
		octaves = 3,
		persist = 0.6
	},
})
--]]

--Adds default:water_source within default:stone
minetest.register_ore({
	ore_type         = "blob",
	ore              = "lib_materials:fluid_water_river_source",
	wherein          = {"lib_materials:stone_limestone_01"},
	clust_scarcity   = 16*4*16,
	clust_num_ores = 16*16,
	clust_size       = 16,
	y_min            = -50,
	y_max            = -11,
	noise_params     = {
		offset = 0,
		scale = 1,
		spread = {x = 256, y = 256, z = 256},
		seed = 163281090,
		octaves = 3,
		persist = 0.6
	},
})

--Quicksand and Mud
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:quicksand",
		wherein          = {"lib_materials:sand"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = 4,
		y_max            = 30,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:mud_wet",
		wherein          = {"lib_materials:dirt_mud_01"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = 4,
		y_max            = 30,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})


-- Clay, Sand, Silt within Dirt
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_clayey",
		wherein          = {"lib_materials:dirt"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_clay_red",
		wherein          = {"lib_materials:dirt_clayey"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_clay_white",
		wherein          = {"lib_materials:dirt_clayey"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_sandy",
		wherein          = {"lib_materials:dirt"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -613,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:sand",
		wherein          = {"lib_materials:dirt_sandy"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -613,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_silty",
		wherein          = {"lib_materials:dirt"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -613,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_silt_01",
		wherein          = {"lib_materials:dirt_silty"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.5
		},
	})
	minetest.register_ore({
		ore_type         = "blob",
		ore              = "lib_materials:dirt_silt_02",
		wherein          = {"lib_materials:dirt_silty"},
		clust_scarcity   = 4 * 4 * 4,
		clust_num_ores = 8,
		clust_size       = 6,
		y_min            = -10,
		y_max            = 71,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -613,
			octaves = 1,
			persist = 0.5
		},
	})


--Quartz
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lib_materials:ore_stone_with_quartz",
		wherein        = "lib_materials:stone",
		clust_scarcity = 5000,
		clust_num_ores = 10,
		clust_size     = 5,
		y_min     = -59,
		y_max     = -10,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lib_materials:ore_stone_with_quartz",
		wherein        = "lib_materials:desert_stone",
		clust_scarcity = 5000,
		clust_num_ores = 10,
		clust_size     = 5,
		y_min     = -59,
		y_max     = -10,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lib_materials:ore_stone_with_quartz",
		wherein        = "lib_materials:desert_sandstone",
		clust_scarcity = 5000,
		clust_num_ores = 10,
		clust_size     = 5,
		y_min     = -59,
		y_max     = -10,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lib_materials:ore_stone_with_quartz",
		wherein        = "lib_materials:sandstone",
		clust_scarcity = 5000,
		clust_num_ores = 10,
		clust_size     = 5,
		y_min     = -59,
		y_max     = -10,
	})
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "lib_materials:ore_stone_with_quartz",
		wherein        = "lib_materials:stone_brown",
		clust_scarcity = 5000,
		clust_num_ores = 10,
		clust_size     = 5,
		y_min     = -59,
		y_max     = -10,
	})


--Adds default ores to desert_stone
local add_ore_scatter = function(a, b, c, d, e, f, g)

	minetest.register_ore({
		ore_type = "scatter",
		ore = a,
		wherein = b,
		clust_scarcity = c,
		clust_num_ores = d,
		clust_size = e,
		y_min = f,
		y_max = g,
	})
end

-- Coal
	add_ore_scatter("lib_materials:ore_stone_with_coal", "lib_materials:stone", 8 * 8 * 8, 9, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_coal", "lib_materials:stone", 8 * 8 * 8, 8, 3, 64, -127)
	add_ore_scatter("lib_materials:ore_stone_with_coal", "lib_materials:stone", 12 * 12 * 12, 30, 5, -128, -31000)
	add_ore_scatter("lib_materials:ore_stone_with_coal", "lib_materials:stone_desert", 24*24*24, 27, 6, -31000, -16)

-- Tin
	add_ore_scatter("lib_materials:ore_stone_with_tin", "lib_materials:stone", 10 * 10 * 10, 5, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_tin", "lib_materials:stone", 13 * 13 * 13, 4, 3, 64, -127)
	add_ore_scatter("lib_materials:ore_stone_with_tin", "lib_materials:stone", 10 * 10 * 10, 5, 3, -128, -31000)

-- Copper
	add_ore_scatter("lib_materials:ore_stone_with_copper", "lib_materials:stone", 9 * 9 * 9, 5, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_copper", "lib_materials:stone", 12 * 12 * 12, 4, 3, 64, -127)
	add_ore_scatter("lib_materials:ore_stone_with_copper", "lib_materials:stone", 9 * 9 * 9, 5, 3, -128, -31000)
	add_ore_scatter("lib_materials:ore_stone_with_copper", "lib_materials:stone_desert", 9*9*9, 5, 3, -31000, -64)

--Lead
	add_ore_scatter("lib_materials:ore_stone_with_lead", "lib_materials:stone", 10*10*10, 24, 4, -100, -10)
	add_ore_scatter("lib_materials:ore_stone_with_lead", "default:stone_desert", 10*10*10, 24, 4, -100, -10)
	add_ore_scatter("lib_materials:ore_stone_with_lead", "lib_materials:stone_brown", 10*10*10, 24, 4, -100, -10)

-- Iron
	add_ore_scatter("lib_materials:ore_stone_with_iron", "lib_materials:stone", 9 * 9 * 9, 12, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_iron", "lib_materials:stone", 7 * 7 * 7, 5, 3, -128, -255)
	add_ore_scatter("lib_materials:ore_stone_with_iron", "lib_materials:stone", 12 * 12 * 12, 29, 5, -256, -31000)
	add_ore_scatter("lib_materials:ore_stone_with_iron", "lib_materials:stone_desert", 9 * 9 * 9, 5, 3, -63, -16)
	add_ore_scatter("lib_materials:ore_stone_with_iron", "lib_materials:stone_desert", 24 * 24 * 24, 27, 6, -31000, -64)
	add_ore_scatter("lib_materials:ore_stone_desert_with_iron", "lib_materials:stone_desert", 12 * 12 * 12, 3, 2, -1, 200)

-- Silver
	add_ore_scatter("lib_materials:ore_stone_with_silver", "lib_materials:stone", 10*10*10, 24, 4, -100, -10)
	add_ore_scatter("lib_materials:ore_stone_with_silver", "default:stone_desert", 10*10*10, 24, 4, -100, -10)
	add_ore_scatter("lib_materials:ore_stone_with_silver", "lib_materials:stone_brown", 10*10*10, 24, 4, -100, -10)

-- Gold
	add_ore_scatter("lib_materials:ore_stone_with_gold", "lib_materials:stone", 13 * 13 * 13, 5, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_gold", "lib_materials:stone", 15 * 15 * 15, 3, 2, -256, -511)
	add_ore_scatter("lib_materials:ore_stone_with_gold", "lib_materials:stone", 13 * 13 * 13, 5, 3, -512, -31000)
	add_ore_scatter("lib_materials:ore_stone_with_gold", "lib_materials:stone_desert", 15*15*15, 3, 2, -255, -64)
	add_ore_scatter("lib_materials:ore_stone_with_gold", "lib_materials:stone_desert", 13*13*13, 5, 3, -31000, -256)

-- Diamond
	add_ore_scatter("lib_materials:ore_stone_with_diamond", "lib_materials:stone", 15 * 15 * 15, 4, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_diamond", "lib_materials:stone", 17 * 17 * 17, 4, 3, -1024, -2047)
	add_ore_scatter("lib_materials:ore_stone_with_diamond", "lib_materials:stone", 15 * 15 * 15, 4, 3, -2048, -31000)
	add_ore_scatter("lib_materials:ore_stone_with_diamond", "lib_materials:stone_desert", 17*17*17, 4, 3, -255, -128)
	add_ore_scatter("lib_materials:ore_stone_with_diamond", "lib_materials:stone_desert", 15*15*15, 4, 3, -31000, -256)

-- Mese crystal
	add_ore_scatter("lib_materials:ore_stone_with_mese", "lib_materials:stone", 14 * 14 * 14, 5, 3, 31000, 1025)
	add_ore_scatter("lib_materials:ore_stone_with_mese", "lib_materials:stone", 18 * 18 * 18, 3, 2, -512, -1023)
	add_ore_scatter("lib_materials:ore_stone_with_mese", "lib_materials:stone", 9 * 9 * 9, 5, 3, -1024, -31000)

-- Mese block
	add_ore_scatter("lib_materials:mineral_mese_block", "lib_materials:stone", 36 * 36 * 36, 3, 2, 31000, 1025)
	add_ore_scatter("lib_materials:mineral_mese_block", "lib_materials:stone", 36 * 36 * 36, 3, 2, -2048, -4095)
	add_ore_scatter("lib_materials:mineral_mese_block", "lib_materials:stone", 28 * 28 * 28, 5, 3, -4096, -31000)
	add_ore_scatter("lib_materials:ore_stone_with_mese", "lib_materials:stone_desert", 14*14*14, 5, 3, -31000, -256)


--Darkage Ores

--[[
-- Some local constants to use for mapgen
local c_air     = minetest.CONTENT_AIR
local c_ignore  = minetest.CONTENT_IGNORE

local c_stone   = minetest.get_content_id("default:stone")
local c_water	= minetest.get_content_id("default:water_source")
local c_sand 	= minetest.get_content_id("default:sand")
local c_dirt 	= minetest.get_content_id("default:dirt")
local c_lawn 	= minetest.get_content_id("default:dirt_with_grass")

local stone_and_air_assoc = {[c_stone]=true,[c_air]=true} --associative array

--Makes a stratus of rocks
--name of the rock to generate
--c_wherein id of node to replace, for example minetest.get_content_id("default:stone")
--ca_ceilin associative array
--minp, maxp the corners of the map to be generated
--seed random seed
--stratus_chance inverse probability in a given radius 1:2, 1:3 etc
--radius horizontal radius of the stratus
--radius_y vertical radius of the stratus
--deep how deep can be from the ground
local function generate_stratus(data, area, name, c_wherein, ca_ceilin, minp, maxp, seed, stratus_chance, radius, radius_y, deep, y_min, y_max)
	if maxp.y < y_min
	   or minp.y > y_max then
		return
	end

	local c_node = minetest.get_content_id(name)

	-- it will be only generate a stratus for every 100 m of area
	local stratus_per_volume=1
	local area_size = 45
	local y_min = math.max(minp.y, y_min)
	local y_max = math.min(maxp.y, y_max)
	local volume = ((maxp.x-minp.x+1)/area_size)*((y_max-y_min+1)/area_size)*((maxp.z-minp.z+1)/area_size)
	local pr = PseudoRandom(seed)
	local blocks = math.floor(stratus_per_volume*volume)
	minetest.log("info", "	<<"..name..">>");
	if blocks == 0 then
		blocks = 1
	end
	minetest.log("info", string.format("	blocks: %d in vol: %d (%d,%d,%d)",
									   blocks, volume, maxp.x-minp.x+1, y_max-y_min+1, maxp.z-minp.z+1))
	for i = 1,blocks do
		if pr:next(1,stratus_chance) == 1 then
			-- TODO deep
			local y0=y_max-radius_y+1
			if y0 < y_min then
				y0=y_min
			else
				y0=pr:next(y_min, y0)
			end
			local x0 = maxp.x-radius+1
			if x0 < minp.x then
				x0 = minp.x
			else
				x0 = pr:next(minp.x, x0)
			end
			local z0 = maxp.z-radius+1
			if z0 < minp.z then
				x0 = minp.z
			else
				z0 = pr:next(minp.z, z0)
			end
			local n = data[area:index(x0, y0, z0)]
			local i = 0

			if ca_ceilin[n] then
				-- search for the node to replace
				--print("	Searching nodes to replace from "..dump(y0-1).." to "..dump(y_min))
				local vi = area:index(x0, y0-1, z0)
				for y1 = y0-1,y_min,-1 do
					if data[vi] == c_wherein then
						y0 = math.max(y1-deep, y_min)
						break
					end
					vi = vi - area.ystride
				end
				local rx=pr:next(radius/2,radius)+1
				local rz=pr:next(radius/2,radius)+1
				local ry=pr:next(radius_y/2,radius_y)+1
				--print("	area of generation ("..dump(rx)..","..dump(rz)..","..dump(ry)..")")
				vi = area:index(x0, y0, z0)
				for x1=0,rx do
					local vi = vi + x1
					rz = math.max(rz + 3 - pr:next(1,6), 1)
					for z1=pr:next(1,3),rz do
						local vi = vi + z1 * area.zstride
						for y1 = pr:next(1,3), ry + pr:next(1,3) do
							local vi = vi + y1 * area.ystride
							if data[vi] == c_wherein then
								data[vi] = c_node
								i = i + 1
							end
						end
					end
				end
			end
			minetest.log("info", "	generated "..i.." blocks in ("..x0..","..y0..","..z0..")")
		end
	end
	--print("generate_ore done")
end
--]]
--[[
local function generate_claylike(data, varea, name, minp, maxp, seed, chance, minh, maxh, needs_dirt)
	if maxp.y >= maxh+1 and minp.y <= minh-1 then
		local c_ore = minetest.get_content_id(name)
		local pr = PseudoRandom(seed)

		local divlen = 4
		local divs = (maxp.x-minp.x)/divlen+1;
		for yy=minh,maxh do
			local x = pr:next(1,chance)
			if x == 1 then
				for divx=0+1,divs-1-1 do
					for divz=0+1,divs-1-1 do
						local cx = minp.x + math.floor((divx+0.5)*divlen)
						local cz = minp.z + math.floor((divz+0.5)*divlen)
						local up = data[varea:index(cx,yy,cz)]
						local down = data[varea:index(cx,yy-1,cz)]
						if ( up == c_water or up == c_air ) and ( down == c_sand or (needs_dirt and (down == c_dirt or down == c_lawn ))) then
							local num_water_around = 0
							if data[varea:index(cx-divlen*2,yy,cz)] == c_water then
								num_water_around = num_water_around + 1
							end
							if data[varea:index(cx+divlen*2,yy,cz)] == c_water then
								num_water_around = num_water_around + 1
							end
							if data[varea:index(cx,yy,cz-divlen*2)] == c_water then
								num_water_around = num_water_around + 1
							end
							if data[varea:index(cx,yy,cz+divlen*2)] == c_water then
								num_water_around = num_water_around + 1
							end
							if num_water_around < 3 then
								for x1=-divlen,divlen do
									for z1=-divlen,divlen do
										local i = varea:index(cx+x1,yy-1,cz+z1)
										local down = data[i]
										if down == c_sand or (needs_dirt and (down == c_dirt or down == c_lawn)) then
											data[i] = c_ore
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end
--]]

-- Generate chalk inside mountains
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_chalk",
		wherein         	= {"lib_materials:stone"},
		column_height_max = 30,
		column_height_min = 20,
		y_min            = -20,
		y_max            = 50,
		noise_threshold = 0.45,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			spread = {x = 30, y = 30, z = 30},
			octaves = 1,
			persistence = 0.6
		},
	})

	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_tuff",
		wherein         	= {"lib_materials:stone",  "lib_materials:stone_gravel", },
		column_height_max = 20,
		column_height_min = 15,
		y_min            = -200,
		y_max            = 200,
		noise_threshold = 0.5,
		noise_params     = {
			offset = 0.35,
			scale = 0.19,
			seed = seed+12,
			spread = {x = 45, y = 45, z = 45},
			octaves = 1,
			persistence = 0.6
		},
	})

	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_rhyolitic_tuff",
		wherein         	= {"lib_materials:stone", "lib_materials:stone_gravel", },
		column_height_max = 20,
		column_height_min = 15,
		y_min            = -2000,
		y_max            = 200,
		noise_threshold = 0.53,
		noise_params     = {
			offset = 0.35,
			scale = 0.2,
			seed = seed+13,
			spread = {x = 100, y = 100, z = 100},
			octaves = 1,
			persistence = 0.6
		},
	})

--old red sandstone
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_sandstone_old_red",
		wherein         	= {"lib_materials:stone", "lib_materials:dirt", "lib_materials:stone_gravel", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})



--TO DOs  Gneiss, Marble_03, Schist, Serpentine, Shale, Slate_01, 					---ShadMOrdre
--[[
--]]
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_gneiss_01",
		wherein         	= {"lib_materials:stone", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_marble_03",
		wherein         	= {"lib_materials:stone", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_schist",
		wherein         	= {"lib_materials:stone", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_serpentine",
		wherein         	= {"lib_materials:stone", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_shale",
		wherein         	= {"lib_materials:stone", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})
	minetest.register_ore({
		ore_type        	= "sheet",
		ore             	= "lib_materials:stone_slate_01",
		wherein         	= {"lib_materials:stone", },
		column_height_max = 8,
		column_height_min = 6,
		y_min            = -200,
		y_max            = 500,
		noise_threshold = 0.49,
		noise_params     = {
			offset = 0.28,
			scale = 0.3,
			seed = seed+4,
			spread = {x = 10, y = 10, z = 10},
			octaves = 1,
			persistence = 0.6
		},
	})

--[[
-- Generate strati
local dbuf = {} --for mapgen
local function generate_strati(minp, maxp, seed)

	local t1 = os.clock()

	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new({MinEdge = emin, MaxEdge = emax})
	local data = vm:get_data(dbuf)


	generate_claylike(data, area, "lib_materials:mud_01", minp, maxp, seed+1, 4, 0, 2, false)
	generate_claylike(data, area, "lib_materials:silt_02", minp, maxp, seed+2, 4, -1, 1, true)

	-- TODO: Maybe realize the following stuff with register ore. somehow.
	generate_stratus(data, area, "lib_materials:shale",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+5, 4, 23, 7, 50, -50,  20)

	generate_stratus(data, area, "lib_materials:slate",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+6, 6, 23, 5, 50, -500, 0)

	generate_stratus(data, area, "lib_materials:schist",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+7, 6, 19, 6, 50, -31000, -10)

	generate_stratus(data, area, "lib_materials:basalt",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+8, 5, 20, 5, 20, -31000, -50)

	generate_stratus(data, area, "lib_materials:marble_03",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+9, 4, 25, 6, 50, -31000,  -75)

	generate_stratus(data, area, "lib_materials:serpentine",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+10, 4, 28, 8, 50, -31000,  -350)

	generate_stratus(data, area, "lib_materials:gneiss",
					c_stone,
					stone_and_air_assoc,
					minp, maxp, seed+11, 4, 15, 5, 50, -31000, -250)

	vm:set_data(data)
	vm:write_to_map()

	minetest.log("info", string.format("[darkage] Generated Strati after %.2fs.", os.clock() - t1))
end
--]]
--[[
  minetest.register_on_generated(generate_strati)
--]]




--ROCKS/MINERALS stone and ore defs
-- ores have to be redefined for skarn background
-- Chalcopyrite/Malachyte skarn mix
	minetest.register_ore({
		ore_type       = "scatter",
	 wherein="lib_materials:stone_skarn",
	 ore="lib_materials:ore_stone_skarn_with_chalcopyrite",
	 clust_size=3,
	 clust_num_ores=12,
	 clust_scarcity=4^3,
	 noise_treshold=0.333,
	 noise_params={
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 163281090,
			octaves = 5,
			persist = 0.6
		},
	})
	minetest.register_ore({
		ore_type       = "scatter",
	 wherein="lib_materials:stone_skarn",
	 ore="lib_materials:ore_stone_skarn_with_malachyte",
	 clust_size=3,
	 clust_num_ores=11,
	 clust_scarcity=4^3,
	 noise_treshold=0.333,
	 noise_params={
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 163281090,
			octaves = 5,
			persist = 0.6
		},
	})

-- Pb Zn skarn mix
   -- marble and hornfels, as well as unchanged limestone.
   -- { ore="rocks:marble", percent=10 },
   -- { ore="rocks:hornfels", percent=10 },
   -- { ore="rocks:skarn_galena", percent=25 },
   -- { ore="rocks:skarn_sphalerite", percent=25 },
	minetest.register_ore({
		ore_type       = "scatter",
	 wherein="lib_materials:stone_skarn",
	 ore="lib_materials:ore_stone_skarn_with_sphalerite",
	 clust_size=3,
	 clust_num_ores=9,
	 clust_scarcity=4^3,
	 noise_treshold=0.38,
	 noise_params={
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 163281090,
			octaves = 5,
			persist = 0.6
		},
	})
	minetest.register_ore({
		ore_type       = "scatter",
	 wherein="lib_materials:stone_skarn",
	 ore="lib_materials:ore_stone_skarn_with_galena",
	 clust_size=3,
	 clust_num_ores=10,
	 clust_scarcity=4^3,
	 noise_treshold=0.38,
	 noise_params={
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 163281090,
			octaves = 5,
			persist = 0.6
		},
	})

-- Fe skarn mix
   -- marble and hornfels, as well as unchanged limestone.
   -- { ore="rocks:marble", percent=10 },
   -- { ore="rocks:hornfels", percent=10 },
   -- { ore="rocks:skarn_magnetite", percent=40 },
	minetest.register_ore({
		ore_type       = "scatter",
	 wherein="lib_materials:stone_skarn",
	 ore="lib_materials:ore_stone_skarn_with_magnetite",
	 clust_size=3,
	 clust_num_ores=13,
	 clust_scarcity=4^3,
	 noise_treshold=0.3,
	 noise_params={
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 163281090,
			octaves = 5,
			persist = 0.6
		},
	})

-- magnesite/vermiculite skarn mix
   -- marble and hornfels, as well as unchanged limestone.
   -- { ore="rocks:marble", percent=10 },
   -- { ore="rocks:hornfels", percent=10 },
   -- { ore="rocks:skarn_magnesite", percent=30 },
   -- { ore="rocks:vermiculite", percent=20 },


-- ores have to be redefined for pegmatite background
--   Ore/Mineral    Percent
-- Spodumene        7%
-- Muscovite (mica) 7%
-- Kyanite          5%
-- Lepidolite       2.5%
-- Tantalite        2%
-- Cassiterite      1.5%
-- Wolframite       1%
-- Pollucite        0.1%
	minetest.register_ore({
		ore_type       = "scatter",
	 wherein="lib_materials:stone_pegmatite",
	 ore="lib_materials:ore_stone_pegmatite_with_cassiterite",
	 clust_size=3,
	 clust_num_ores=9,
	 clust_scarcity=4^3,
	 noise_treshold=-0.1,
	 noise_params={
			offset = 0,
			scale = 1,
			spread = {x = 256, y = 256, z = 256},
			seed = 163281090,
			octaves = 5,
			persist = 0.6
		},
	})





