--
-- Register lib_materials ores
--

local mgparams = minetest.get_mapgen_params()
local mg_seed = mgparams.seed

for i, ore in ipairs(lib_materials.read_csv("|", lib_materials.path .. "/ores.csv")) do

	--#Ore_Name|Wherein|Ore_Type|Clust_Scarcity|Clust_Num_Ores|Clust_Size|N_Thresh|Y_Min|Y_Max|N_Off|N_Scale|N_Oct|N_Seed|N_Persist|N_Spr_X|N_Spr_Y|N_Spr_Z|Col_Hght_Max|Col_Hght_Min|Col_MidPoint|Rand_Fact|Biome
	local orename, wherein, oretype, c_scarcity, c_num_ores, c_size, threshold, ymin, ymax, n_off, n_scale, n_oct, n_seed, n_persist, n_spr_x, n_spr_y, n_spr_z, col_hght_max, col_hght_min, col_mid, rand_fact, biome = unpack(ore)
	--minetest.log(oretype .. ", " .. orename .. ", " .. wherein .. ", " .. threshold .. ", " .. ymin .. ", " .. ymax .. ", " .. biome)

	local new_ore_def = {}
	local new_noise_params = {}
	new_noise_params.spread = {}
	local new_biomes = {}
	--local spread_val = 2^(tonumber(threshold) * 10)
	--local ore_seed = math.random(1, spread_val)



	if oretype then
		if oretype ~= "" then
			if oretype == "blob" then

				minetest.register_ore({
					ore_type         = "blob",
					ore              = orename,
					wherein          = wherein,
					clust_scarcity   = tonumber(c_scarcity) or 4 * 4 * 4,
					clust_num_ores = tonumber(c_num_ores) or 8,
					clust_size       = tonumber(c_size) or 6,
					y_min            = tonumber(ymin) or -10,
					y_max            = tonumber(ymax) or 71,
					noise_params     = {
						offset = tonumber(n_off) or 0.35,
						scale = tonumber(n_scale) or 0.2,
						spread = {x = tonumber(n_spr_x) or 5, y = tonumber(n_spr_y) or 5, z = tonumber(n_spr_z) or 5},
						seed = tonumber(n_seed) or -316,
						octaves = tonumber(n_oct) or 1,
						persist = tonumber(n_persist) or 0.5
					},
			        	biomes = biome or nil,
					random_factor = tonumber(rand_fact) or 1.0
				})

			end


			if oretype == "sheet" then

				if not threshold or threshold == "" then
					threshold = 0.8
				end

				local spread_val = 2^(threshold * 10)
				local ore_seed = math.random(1, spread_val)
			
				minetest.register_ore({
					ore_type = "sheet",
					ore = orename,
					wherein = wherein,
					clust_size = tonumber(c_size) or 8,
					y_min = tonumber(ymin) - lib_materials.biome_vertical_blend,
					y_max = tonumber(ymax) + lib_materials.biome_vertical_blend,
					noise_threshold = tonumber(threshold),
					noise_params = {
						offset = tonumber(n_off) or 0,
						scale = tonumber(n_scale) or 1,
						spread = {x = tonumber(n_spr_x) or 128, y = tonumber(n_spr_y) or 128, z = tonumber(n_spr_z) or 128},
						seed = tonumber(n_seed) or ore_seed,
						octaves = tonumber(n_oct) or 5,
						persist = tonumber(n_persist) or 0.60
					},
					column_height_min = tonumber(col_hght_min) or (lib_materials.biome_altitude_range / 2) + lib_materials.biome_vertical_blend,
					column_height_max = tonumber(col_hght_max) or lib_materials.biome_altitude_range + (lib_materials.biome_vertical_blend * 2),
					column_midpoint_factor = tonumber(col_mid) or 0.5,
			 		biomes = biome or nil
				})
			
			end

			if oretype == "scatter" then

				minetest.register_ore({
					ore_type       = "scatter",
					ore            = orename,
					wherein        = wherein,
					clust_scarcity = tonumber(c_scarcity) or 5000,
					clust_num_ores = tonumber(c_num_ores) or 10,
					clust_size     = tonumber(c_size) or 5,
					y_min     = tonumber(ymin) or -59,
					y_max     = tonumber(ymax) or -10,
				})

			end


			if oretype == "stratum" then
			
				minetest.register_ore({
					ore_type = "stratum",
					ore = orename,
					wherein = wherein,
					clust_scarcity = 1,
					y_min = lib_materials.maxheight_beach,
					y_max = (lib_materials.maxheight_highland - 10),
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
			        biomes = biome or nil,
				})
			
			end
		end
	end
end
