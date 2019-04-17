

lib_materials = {}
lib_materials.version = "5.0"
lib_materials.path = minetest.get_modpath(minetest.get_current_modname())

-- Intllib
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
lib_materials.intllib = S

--DEFAULTS
--0, 4, 30, 60, 90, 120, 150, 1800
lib_materials.ocean_depth = -192
lib_materials.beach_depth = -4
lib_materials.sea_level = 0
lib_materials.maxheight_beach = 4
lib_materials.maxheight_coastal = 40
lib_materials.maxheight_lowland = 80
lib_materials.maxheight_shelf = 120
lib_materials.maxheight_highland = 160
lib_materials.maxheight_mountain = 200
lib_materials.minheight_snow = 380
lib_materials.maxheight_snow = 780
lib_materials.maxheight_strato = 1800

lib_materials.temperature_hot = 90
lib_materials.temperature_warm = 75
lib_materials.temperature_temperate = 50
lib_materials.temperature_cool = 25
lib_materials.temperature_cold = 10
lib_materials.humidity_humid = 90
lib_materials.humidity_semihumid = 75
lib_materials.humidity_temperate = 50
lib_materials.humidity_semiarid = 25
lib_materials.humidity_arid = 10

lib_materials.biome_vertical_blend = 4

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()
minetest.clear_registered_ores()

minetest.log(S("[MOD] lib_materials:  Loading..."))

dofile(lib_materials.path.."/lib_materials_sound_defaults.lua")

dofile(lib_materials.path.."/lib_materials_utils.lua")

dofile(lib_materials.path.."/type_fluids.lua")
dofile(lib_materials.path.."/type_stone.lua")
dofile(lib_materials.path.."/type_stone_deco.lua")
dofile(lib_materials.path.."/type_dirt.lua")
dofile(lib_materials.path.."/type_sand.lua")
dofile(lib_materials.path.."/type_ice_snow.lua")
dofile(lib_materials.path.."/type_ore.lua")
dofile(lib_materials.path.."/type_glass.lua")

dofile(lib_materials.path.."/lib_materials_biomes.lua")

dofile(lib_materials.path.."/lib_materials_lakes.lua")

dofile(lib_materials.path.."/lib_materials_ore_defs.lua")

minetest.log(S("[MOD] lib_materials:  Successfully loaded."))


--[[

lib_materials.register_materials = function()

	local node_defs = {}

	for node, def in pairs(minetest.registered_nodes) do

		local node_name = node
		local node_def = table.copy(def)

		if not node_def then
			return false
		end

		local node_groups = table.copy(node_def.groups) or {}

		if not node_groups then
			return false
		end

		if not node_groups.stone then
			--node_def.density = 10
			--node_def.mass = 10
			--node_def.hardness = 10
			--node_def.melting_point = 500
			--node_groups.material = 3
			--node_groups.inorganic = 3
		end
		if not node_groups.dirt then

		end
		if not node_groups.glass then

		end
		if not node_groups.tree then

		end
		if not node_groups.wood then

		end
		if not node_groups.plant then

		end


		if not node_groups.crumbly then

		end
		if not node_groups.cracky then

		end
		if not node_groups.snappy then

		end
		if not node_groups.choppy then

		end
		if not node_groups.oddly_breakable_by_hand then

		end


		if not node_groups.soil then

		end
		if not node_groups.fleshy then

		end


		if not node_groups.bouncy then

		end
		if not node_groups.explody then

		end

	end

	nod_def.groups = node_groups


	minetest.override_item(node_name, nod_def)

end

--]]


--lib_materials.register_material = function(material_name, {material_def})


--local def = minetest.registered_nodes["some:name"]
--local groups = table.copy(def.groups)
--groups.my_group = 123
--minetest.override_item("some:name", { groups=groups })


--end







