

local S = lib_materials.intllib


	local mgparams = minetest.get_mapgen_params()
	--local mg_seed = mgparams.seed
	local mg_seed = 5934

	local __ = {name = "air",param2 = 0,prob = 254}
	local D0 = {name = "lib_materials:dirt", param2 = 0, prob = 254}
	local S0 = {name = "lib_materials:stone", param2 = 0, prob = 254}
	local C0 = {name = "lib_materials:stone_brick", param2 = 0, prob = 254}
	local T0 = {name = "lib_materials:dirt_compacted", param2 = 0, prob = 254}
	local WW = {name = "lib_materials:liquid_water_river_source", param2 = 0, prob = 254, force_place = true}
	local WW = {name = "lib_materials:dirt_mud_01", param2 = 0, prob = 254}

	local aa = {name = "air",param2 = 0,prob = 0}
	local WW = {name = "lib_materials:liquid_water_river_source", param2 = 0, prob = 254, force_place = true}



	__ = {name = "air",param2 = 0,prob = 254, force_place = true}

	le_temp_schem = {
		size = {x = 9, y = 13, z = 9},
		data = {
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __
	
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254},
			{ypos = 4,prob = 254},
			{ypos = 5,prob = 254},
			{ypos = 6,prob = 254},
			{ypos = 7,prob = 254},
			{ypos = 8,prob = 254},
			{ypos = 9,prob = 254},
			{ypos = 10,prob = 254},
			{ypos = 11,prob = 254},
			{ypos = 12,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:dirt", "group:soil", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 3,
	   y_min = 1,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})



	__ = {name = "air",param2 = 0,prob = 254, force_place = true}
	le_temp_schem = {
		size = {x = 7, y = 11, z = 7},
		data = {
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
	
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __,
			__, __, __, __, __, __, __
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254},
			{ypos = 4,prob = 254},
			{ypos = 5,prob = 254},
			{ypos = 6,prob = 254},
			{ypos = 7,prob = 254},
			{ypos = 8,prob = 254},
			{ypos = 9,prob = 254},
			{ypos = 10,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 8,
	   y_min = 3,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})


	le_temp_schem = {
		size = {x = 5, y = 9, z = 5},
		data = {
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254},
			{ypos = 4,prob = 254},
			{ypos = 5,prob = 254},
			{ypos = 6,prob = 254},
			{ypos = 7,prob = 254},
			{ypos = 8,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 15,
	   y_min = 8,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})

	le_temp_schem = {
		size = {x = 3, y = 7, z = 3},
		data = {
			WW, WW, WW,
			WW, WW, WW,
			WW, WW, WW,
			__, __, __,
			__, __, __,
			__, __, __,
			__, __, __,
	
			WW, WW, WW,
			WW, WW, WW,
			WW, WW, WW,
			__, __, __,
			__, __, __,
			__, __, __,
			__, __, __,
	
			WW, WW, WW,
			WW, WW, WW,
			WW, WW, WW,
			__, __, __,
			__, __, __,
			__, __, __,
			__, __, __
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254},
			{ypos = 4,prob = 254},
			{ypos = 5,prob = 254},
			{ypos = 6,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 30,
	   y_min = 15,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})



	WW = {name = "lib_materials:liquid_water_river_source", param2 = 0, prob = 254, force_place = true}


	le_temp_schem = {
		size = {x = 2, y = 5, z = 2},
		data = {
			WW, WW,
			WW, WW,
			__, __,
			__, __,
			__, __,
	
			WW, WW,
			WW, WW,
			__, __,
			__, __,
			__, __
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254},
			{ypos = 4,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 50,
	   y_min = 30,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})


	le_temp_schem = {
		size = {x = 1, y = 5, z = 1},
		data = {
			WW,
			WW,
			__,
			__,
			__
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254},
			{ypos = 2,prob = 254},
			{ypos = 3,prob = 254},
			{ypos = 4,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 80,
	   y_min = 50,
	   flags = "force_placement, place_center_x, place_center_y, place_center_z",
	   schematic = le_temp_schem,
	})



--[[
	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -20000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, absvalue"
	   },
	   y_max = 140,
	   y_min = 100,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:liquid_water_river_source",
	})
---------------------------------------------------------
	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 8,
	   noise_params = {
	      offset = 100.0,
	      scale = -4000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 10,
	   y_min = 0,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:liquid_water_river_source",
	})
	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 4,
	   noise_params = {
	      offset = 100.0,
	      scale = -8000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 20,
	   y_min = 10,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:liquid_water_river_source",
	})

	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 2,
	   noise_params = {
	      offset = 100.0,
	      scale = -16000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 50,
	   y_min = 20,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:liquid_water_river_source",
	})

	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = mg_seed,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.48,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 120,
	   y_min = 50,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:liquid_water_river_source",
	})
--]]

















