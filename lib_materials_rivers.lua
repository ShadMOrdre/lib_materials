

local S = lib_materials.intllib


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
		size = {x = 9, y = 15, z = 9},
		data = {
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
	
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW, WW, WW,
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
			{ypos = 12,prob = 254},
			{ypos = 13,prob = 254},
			{ypos = 14,prob = 254}
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
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 20,
	   y_min = 2,
	   place_offset_y = -12,
	   flags = "force_placement, place_center_x, place_center_z",
	   schematic = le_temp_schem,
	})



	__ = {name = "air",param2 = 0,prob = 254, force_place = true}
	le_temp_schem = {
		size = {x = 7, y = 13, z = 7},
		data = {
			WW, WW, WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW, WW, WW,
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
			{ypos = 10,prob = 254},
			{ypos = 11,prob = 254},
			{ypos = 12,prob = 254}
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
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 40,
	   y_min = 20,
	   place_offset_y = -10,
	   flags = "force_placement, place_center_x, place_center_z",
	   schematic = le_temp_schem,
	})


	le_temp_schem = {
		size = {x = 5, y = 9, z = 5},
		data = {
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
	
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
			WW, WW, WW, WW, WW,
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
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 60,
	   y_min = 40,
	   place_offset_y = -7,
	   flags = "force_placement, place_center_x, place_center_z",
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
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 80,
	   y_min = 60,
	   place_offset_y = -5,
	   flags = "force_placement, place_center_x, place_center_z",
	   schematic = le_temp_schem,
	})



	WW = {name = "lib_materials:liquid_water_river_source", param2 = 0, prob = 254, force_place = true}


	le_temp_schem = {
		size = {x = 2, y = 5, z = 2},
		data = {
			WW, WW,
			__, __,
			__, __,
			__, __,
			__, __,
	
			WW, WW,
			__, __,
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
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 110,
	   y_min = 80,
	   place_offset_y = -4,
	   flags = "force_placement, place_center_x, place_center_z",
	   schematic = le_temp_schem,
	})


	le_temp_schem = {
		size = {x = 1, y = 5, z = 1},
		data = {
			WW,
			__,
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
	      seed = 5934,
	      octaves = 1,
	      persist = 0.5,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 140,
	   y_min = 110,
	   place_offset_y = -4,
	   flags = "force_placement, place_center_x, place_center_z",
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
	   y_min = 120,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:liquid_water_river_source",
	})
--]]

