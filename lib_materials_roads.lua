

local S = lib_materials.intllib


	local mgparams = minetest.get_mapgen_params()
	local mg_seed = mgparams.seed


	local __ = {name = "air",param2 = 0,prob = 254}
	local D0 = {name = "lib_materials:dirt", param2 = 0, prob = 254}
	local S0 = {name = "lib_materials:stone", param2 = 0, prob = 254}
	local C0 = {name = "lib_materials:stone_brick", param2 = 0, prob = 254}
	local C5 = {name = "lib_materials:stone_brick_slab", param2 = 0, prob = 254}
	local T0 = {name = "lib_materials:dirt_compacted", param2 = 0, prob = 254}
	local W0 = {name = "lib_materials:liquid_water_rushing_source", param2 = 0, prob = 254, force_place = true}
	local M0 = {name = "lib_materials:dirt_mud_01", param2 = 0, prob = 254}


	le_temp_schem = {
		size = {x = 3, y = 4, z = 3},
		data = {
			C0, C0, C0,
			C0, C0, C0,
			__, __, __,
			__, __, __,
	
			C0, C0, C0,
			C0, C0, C0,
			__, __, __,
			__, __, __,
	
			C0, C0, C0,
			C0, C0, C0,
			__, __, __,
			__, __, __
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:soil", "group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -24000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed + 5349,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.11,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 85,
	   y_min = 20,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})

	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed + 513337,
	      octaves = 1,
	      persist = 0.2,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 40,
	   y_min = 5,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:dirt_with_stone_cobble",
	})

	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil", "group:dirt"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed + 733315,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.48,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 100,
	   y_min = 70,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:dirt_with_stone_cobble",
	})

	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil", "group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed + -513337,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.15,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 140,
	   y_min = 50,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "defaults, lib_materials:dirt_compacted",
	})


















