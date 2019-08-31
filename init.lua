

lib_materials = {}
lib_materials.name = "lib_materials"
lib_materials.ver_max = 5
lib_materials.ver_min = 0
lib_materials.ver_rev = 2
lib_materials.path_mod = minetest.get_modpath(minetest.get_current_modname())
lib_materials.path_world = minetest.get_worldpath()
lib_materials.path = lib_materials.path_mod



-- Intllib
--local S = minetest.get_translator(lib_materials.name)
local S
local NS
if minetest.get_modpath("game") then
	S = game.intllib
else
	if minetest.get_modpath("intllib") then
		S = intllib.Getter()
	else
		S, NS = dofile(lib_materials.path.."/intllib.lua")
	end
end
lib_materials.intllib = S or minetest.get_translator(lib_materials.name)

lib_materials.mgv7_mapgen_scale_factor = minetest.setting_get("lib_materials_mgv7_mapgen_scale_factor") or 8
lib_materials.biome_altitude_range = minetest.setting_get("lib_materials_biome_altitude_range") or 40
lib_materials.clear_biomes = minetest.setting_get("lib_materials_clear_biomes") or true
lib_materials.clear_decos = minetest.setting_get("lib_materials_clear_decos") or true
lib_materials.clear_ores = minetest.setting_get("lib_materials_clear_ores") or true

lib_materials.color_grass_reg = minetest.setting_get("lib_materials_color_grass_reg") or false
lib_materials.color_grass_use = minetest.setting_get("lib_materials_color_grass_use") or false

lib_materials.mg_params = minetest.get_mapgen_params()
lib_materials.mg_seed = lib_materials.mg_params.seed

--DEFAULTS
-- -192, -4, 0, 4, 30, 60, 90, 120, 150, 285, 485, 1250
-- -192, -4, 0, 4, 40, 80, 120, 160, 200, 380, 780, 1800
lib_materials.ocean_depth = -192
lib_materials.beach_depth = -4
lib_materials.sea_level = 0
lib_materials.maxheight_beach = 4

lib_materials.maxheight_coastal = lib_materials.sea_level + lib_materials.biome_altitude_range
lib_materials.maxheight_lowland = lib_materials.maxheight_coastal + lib_materials.biome_altitude_range
lib_materials.maxheight_shelf = lib_materials.maxheight_lowland + lib_materials.biome_altitude_range
lib_materials.maxheight_highland = lib_materials.maxheight_shelf + lib_materials.biome_altitude_range
lib_materials.maxheight_mountain = lib_materials.maxheight_highland + lib_materials.biome_altitude_range
lib_materials.minheight_snow = lib_materials.maxheight_mountain + lib_materials.biome_altitude_range
lib_materials.maxheight_snow = lib_materials.minheight_snow  + (lib_materials.biome_altitude_range * 2)
lib_materials.maxheight_strato = lib_materials.maxheight_snow  + (lib_materials.biome_altitude_range * (lib_materials.mgv7_mapgen_scale_factor / 2))

-- 100, 75, 50, 25, 0
-- 90, 75, 50, 25, 10
-- 90, 70, 50, 30, 10
lib_materials.temperature_hot = 100
lib_materials.temperature_warm = 75
lib_materials.temperature_temperate = 50
lib_materials.temperature_cool = 25
lib_materials.temperature_cold = 0
lib_materials.humidity_humid = 100
lib_materials.humidity_semihumid = 75
lib_materials.humidity_temperate = 50
lib_materials.humidity_semiarid = 25
lib_materials.humidity_arid = 0

-- 8, 4
lib_materials.biome_vertical_blend = lib_materials.biome_altitude_range / 5

lib_materials.liquids = {}

if lib_materials.clear_biomes then
	minetest.clear_registered_biomes()
end
if lib_materials.clear_decos then
	minetest.clear_registered_decorations()
end
if lib_materials.clear_ores then
	minetest.clear_registered_ores()
end



minetest.log(S("[MOD] lib_materials:  Loading..."))


	lib_materials.read_csv = dofile(lib_materials.path .. "/csv.lua")

	dofile(lib_materials.path.."/lib_materials_sound_defaults.lua")

	dofile(lib_materials.path.."/lib_materials_nodeio.lua")
	dofile(lib_materials.path.."/lib_materials_fluid_lib.lua")

	--dofile(lib_materials.path.."/lib_materials_toolcap_modifier.lua")
	--dofile(lib_materials.path.."/lib_materials_tool_ranks.lua")

	dofile(lib_materials.path.."/lib_materials_node_registration.lua")

		--game.lib.node.register_csv("|", lib_materials.path.."/nodes.csv")
	
		--dofile(lib_materials.path.."/type_stone_deco.lua")
		--dofile(lib_materials.path.."/type_dirt.lua")
		--dofile(lib_materials.path.."/type_sand.lua")
		--dofile(lib_materials.path.."/type_ice_snow.lua")
		--dofile(lib_materials.path.."/type_ore.lua")
		--dofile(lib_materials.path.."/type_glass.lua")

	dofile(lib_materials.path.."/lib_materials_liquid_containers.lua")

	dofile(lib_materials.path.."/lib_materials_vessels.lua")

	dofile(lib_materials.path.."/lib_materials_water_dynamics.lua")

	dofile(lib_materials.path.."/lib_materials_fire.lua")

	dofile(lib_materials.path.."/lib_materials_craftitems.lua")

		--dofile(lib_materials.path.."/lib_materials_tools.lua")

		--dofile(lib_materials.path.."/lib_materials_craftfire.lua")

	dofile(lib_materials.path.."/lib_materials_craftrecipes.lua")

	dofile(lib_materials.path.."/lib_materials_schematics.lua")

	dofile(lib_materials.path.."/lib_materials_biomes.lua")

		--game.lib.biomes.register_csv("|", lib_materials.path.."/biomes.csv")
		--dofile(lib_materials.path.."/lib_materials_ore_defs_ORIG.lua")

	dofile(lib_materials.path.."/lib_materials_ore_defs.lua")

	dofile(lib_materials.path.."/lib_materials_ecosystems.lua")

	dofile(lib_materials.path.."/lib_materials_lakes.lua")

		----dofile(lib_materials.path.."/lib_materials_ore_defs_ORIG.lua")
		----dofile(lib_materials.path.."/lib_materials_ecosystems.lua")
		--dofile(lib_materials.path.."/lvm_voxel.lua")
		--dofile(lib_materials.path.."/burli_voxel.lua")
		--dofile(lib_materials.path.."/lib_materials_lakes.lua")

	dofile(lib_materials.path.."/lib_materials_utils.lua")

		--dofile(lib_materials.path.."/lib_materials_rivers.lua")

	dofile(lib_materials.path.."/lib_materials_abms.lua")

	dofile(lib_materials.path.."/lib_materials_chatcommands.lua")








	minetest.register_alias("mapgen_stone", "lib_materials:stone")
	minetest.register_alias("mapgen_water_source", "lib_materials:liquid_water_source")
	minetest.register_alias("mapgen_river_water_source", "lib_materials:liquid_water_river_source")
	minetest.register_alias("mapgen_lava_source", "lib_materials:liquid_lava_source")



	if not minetest.global_exists("default") then
		default = {}
	end

	default.node_sound_stone_defaults = lib_materials.node_sound_stone_defaults
	default.node_sound_dirt_defaults = lib_materials.node_sound_dirt_defaults
	default.node_sound_gravel_defaults = lib_materials.node_sound_gravel_defaults
	default.node_sound_sand_defaults = lib_materials.node_sound_sand_defaults

	default.node_sound_snow_defaults = lib_materials.node_sound_snow_defaults

	default.node_sound_leaves_defaults = lib_materials.node_sound_leaves_defaults
	default.node_sound_wood_defaults = lib_materials.node_sound_wood_defaults

	default.node_sound_metal_defaults = lib_materials.node_sound_metal_defaults
	default.node_sound_glass_defaults = lib_materials.node_sound_glass_defaults
	default.node_sound_water_defaults = lib_materials.node_sound_water_defaults








minetest.log(S("[MOD] lib_materials:  Successfully loaded."))





