

local S = lib_materials.intllib

local __ = {name = "air",param2 = 0,prob = 254}
local S0 = {name = "lib_materials:stone_desert", param2 = 0, prob = 254}
local S1 = {name = "lib_materials:stone_desert", param2 = 0, prob = 192}
local S2 = {name = "lib_materials:stone_desert", param2 = 0, prob = 128}
local S0 = {name = "lib_materials:stone_desert", param2 = 0, prob = 96}
local D0 = {name = "lib_materials:dirt", param2 = 0, prob = 254}




	lib_materials.schem_rock_desert_01 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, __,
			__, __, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, S0
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_desert_02 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			__, S0, S0,
			__, __, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_desert_03 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, S0,
			__, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			__, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_desert_04 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, S0,
			__, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			__, S0, S0,
			__, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_desert_05 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			__, S0, S0,
			__, __, S0,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}
	
	
	lib_materials.schem_rock_desert_02_01 = {
		size = {x = 4,y = 5,z = 3},
		data = {
			S0, S0, __, __,
			__, S0, __, __,
			__, __, __, __,
			__, __, __, __,
			__, __, __, __,

			S0, S0, S0, S0,
			S0, S0, S0, __,
			S0, S0, __, __,
			__, S0, __, __,
			__, S0, __, __,

			__, S0, __, __,
			__, S0, __, __,
			__, __, __, __,
			__, __, __, __,
			__, __, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2},
			{prob = 254, ypos = 3},
			{prob = 254, ypos = 4}
		}
	}

	lib_materials.schem_rock_desert_02_02 = {
		size = {x = 5,y = 6,z = 5},
		data = {
			__, S0, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,

			S0, S0, S0, S0, __,
			__, S0, S0, __, __,
			__, __, S0, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,

			S0, S0, S0, S0, S0,
			S0, S0, S0, S0, S0,
			__, S0, S0, S0, __,
			__, S0, S0, __, __,
			__, __, S0, __, __,
			__, __, S0, __, __,

			S0, S0, S0, S0, __,
			__, S0, S0, S0, __,
			__, __, S0, __, __,
			__, __, S0, __, __,
			__, __, __, __, __,
			__, __, __, __, __,

			__, __, S0, __, __,
			__, __, S0, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2},
			{prob = 254, ypos = 3},
			{prob = 254, ypos = 4},
			{prob = 254, ypos = 5}
		}
	}

	lib_materials.schem_rock_desert_02_03 = {
		size = {x = 5,y = 4,z = 5},
		data = {
			__, __, S0, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __,

			__, S0, S0, S0, __,
			__, __, S0, S0, __,
			__, __, S0, __, __,
			__, __, __, __, __,

			S0, S0, S0, S0, S0,
			S0, S0, S0, S0, S0,
			__, S0, S0, S0, __,
			__, __, S0, __, __,

			__, S0, S0, S0, __,
			__, S0, S0, __, __,
			__, __, S0, __, __,
			__, __, __, __, __,

			__, __, S0, __, __,
			__, __, __, __, __,
			__, __, __, __, __,
			__, __, __, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2},
			{prob = 254, ypos = 3}
		}
	}
	
	lib_materials.schem_rock_desert_03_01 = {
		size = {x = 9,y = 13,z = 9},
		data = {
			__, S0, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			__, S0, S0, __, __, __, S0, S0, __,
			__, __, S0, __, __, __, S0, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			S0, S0, S0, S0, __, __, S0, __, __,
			__, S0, S0, __, __, __, __, __, __,
			__, S0, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			S0, S0, S0, S0, __, __, __, __, __,
			__, S0, S0, __, __, __, __, __, __,
			__, S0, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			S0, S0, S0, S0, S0, S0, __, S0, __,
			S0, S0, S0, S0, S0, __, __, __, __,
			__, S0, S0, S0, __, __, __, __, __,
			__, S0, S0, S0, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			S0, S0, S0, S0, S0, __, S0, S0, __,
			__, S0, S0, S0, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			S0, S0, S0, S0, __, S0, S0, __, __,
			S0, S0, S0, S0, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			__, S0, S0, __, __, S0, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,

			__, S0, S0, S0, __, __, __, __, __,
			__, __, S0, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __,
			__, __, __, __, __, __, __, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2},
			{prob = 254, ypos = 3},
			{prob = 254, ypos = 4},
			{prob = 254, ypos = 5},
			{prob = 254, ypos = 6},
			{prob = 254, ypos = 7},
			{prob = 254, ypos = 8},
			{prob = 254, ypos = 9},
			{prob = 254, ypos = 10},
			{prob = 254, ypos = 11},
			{prob = 254, ypos = 12}
		}
	}

	
	lib_materials.schem_rock_01 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, __,
			__, __, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, S0
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_02 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			__, S0, S0,
			__, __, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_03 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, S0,
			__, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			__, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_04 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, S0,
			__, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			__, S0, S0,
			__, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_05 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			__, S0, S0,
			__, __, S0,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}
	
	
	lib_materials.schem_rock_savanna_01 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			__, S0, S0,
			__, __, S0,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_savanna_02 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, S0,
			__, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			__, S0, S0,
			__, __, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_savanna_03 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, S0,
			__, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, S0,

			S0, S0, S0,
			__, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_savanna_04 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			__, S0, S0,
			__, __, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, __
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}

	lib_materials.schem_rock_savanna_05 = {
		size = {x = 3,y = 3,z = 3},
		data = {
			S0, S0, S0,
			S0, S0, __,
			__, __, __,

			S0, S0, S0,
			S0, S0, S0,
			S0, S0, __,

			S0, S0, S0,
			S0, S0, S0,
			__, S0, S0
		},
		yslice_prob = {
			{prob = 254, ypos = 0},
			{prob = 254, ypos = 1},
			{prob = 254, ypos = 2}
		}
	}
	
	
	
	
	
	
	
	