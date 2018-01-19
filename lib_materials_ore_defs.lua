
-- Adds stone types(default types{desert_stone, sandstone, desert_sandstone, silver_sandstone}; lib_materials types{stone_brown, stone_sand}) as ores within default:stone

minetest.register_ore({ore_type="sheet", ore="default:sandstone", wherein="default:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshhold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=4130293965, octaves=5, persist=0.60}, random_factor=1.0})
minetest.register_ore({ore_type="sheet", ore="default:desert_sandstone", wherein="default:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshhold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=4130293965, octaves=5, persist=0.60}, random_factor=1.0})
minetest.register_ore({ore_type="sheet", ore="default:silver_sandstone", wherein="default:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshhold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=4130293965, octaves=5, persist=0.60}, random_factor=1.0})
minetest.register_ore({ore_type="sheet", ore="default:desert_stone", wherein="default:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshhold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=163281090, octaves=5, persist=0.60}, random_factor=1.0})
minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_brown", wherein="default:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshhold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=163281090, octaves=5, persist=0.60}, random_factor=1.0})
minetest.register_ore({ore_type="sheet", ore="lib_materials:stone_sand", wherein="default:stone", clust_num_ores=250, clust_scarcity=60, clust_size=10, y_min=-1000, y_max=31000, noise_threshhold=0.1, noise_params={offset=0, scale=1, spread={x=256, y=256, z=256}, seed=163281090, octaves=5, persist=0.60}, random_factor=1.0})

-- Adds default desert_stone, desert_sandstone, and stone_brown to stone_sand
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "default:desert_stone",
	wherein          = {"lib_materials:stone_sand"},
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
	ore_type         = "scatter",
	ore              = "default:desert_sandstone",
	wherein          = {"lib_materials:stone_sand"},
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
	ore_type         = "scatter",
	ore              = "lib_materials:stone_brown",
	wherein          = {"lib_materials:stone_sand"},
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

-- Adds Air as ore within default:stone
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "air",
	wherein          = {"groups:stone"},
	clust_scarcity   = 4 * 4 * 4,
	clust_num_ores = 8,
	clust_size       = 6,
	y_min            = -50,
	y_max            = -11,
	noise_params     = {
		offset = 0.35,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = -316,
		octaves = 1,
		persist = 0.5
	},
})

--Adds default:water_source within default:stone
minetest.register_ore({
	ore_type         = "scatter",
	ore              = "default:river_water_source",
	wherein          = {"groups:stone"},
	clust_scarcity   = 4 * 4 * 4,
	clust_num_ores = 8,
	clust_size       = 6,
	y_min            = -30,
	y_max            = 0,
	noise_params     = {
		offset = 0.35,
		scale = 0.2,
		spread = {x = 5, y = 5, z = 5},
		seed = -316,
		octaves = 1,
		persist = 0.5
	},
})



-- Baked Clay within Orange Clay
minetest.register_ore({
	ore_type         = "blob",
	ore              = "bakedclay:red",
	wherein          = {"bakedclay:orange"},
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
	ore              = "bakedclay:grey",
	wherein          = {"bakedclay:orange"},
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



--Adds default ores to desert_stone
local add_ore = function(a, b, c, d, e, f, g)

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

add_ore("default:stone_with_coal", "default:desert_stone", 24*24*24, 27, 6, -31000, -16)

-- Iron

add_ore("default:stone_with_iron", "default:desert_stone", 9*9*9, 5, 3, -63, -16)
add_ore("default:stone_with_iron", "default:desert_stone", 24*24*24, 27, 6, -31000, -64)

--Mese

add_ore("default:stone_with_mese", "default:desert_stone", 14*14*14, 5, 3, -31000, -256)

-- Gold

add_ore("default:stone_with_gold", "default:desert_stone", 15*15*15, 3, 2, -255, -64)
add_ore("default:stone_with_gold", "default:desert_stone", 13*13*13, 5, 3, -31000, -256)

-- Diamond

add_ore("default:stone_with_diamond", "default:desert_stone", 17*17*17, 4, 3, -255, -128)
add_ore("default:stone_with_diamond", "default:desert_stone", 15*15*15, 4, 3, -31000, -256)

-- Copper

add_ore("default:stone_with_copper", "default:desert_stone", 9*9*9, 5, 3, -31000, -64)

-- Coral Sand
add_ore("ethereal:sandy", "default:sand", 10*10*10, 24, 4, -100, -10)


