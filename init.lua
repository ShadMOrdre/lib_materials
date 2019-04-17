

lib_materials = {}

lib_materials.path = minetest.get_modpath(minetest.get_current_modname())
lib_materials.gettext, lib_materials.ngettext = dofile(lib_materials.path.."/intllib.lua")
local S = lib_materials.gettext
local NS = lib_materials.ngettext







dofile(lib_materials.path.."/lib_materials_utils.lua")
dofile(lib_materials.path.."/lib_materials_fluids.lua")
dofile(lib_materials.path.."/type_stone.lua")
dofile(lib_materials.path.."/type_stone_deco.lua")
dofile(lib_materials.path.."/type_dirt.lua")
dofile(lib_materials.path.."/type_sand.lua")
dofile(lib_materials.path.."/type_ore.lua")
dofile(lib_materials.path.."/lib_materials_ore_defs.lua")




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







