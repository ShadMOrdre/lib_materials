

if minetest.get_modpath("default") then
	
	local waterflow = 3
	minetest.override_item("default:river_water_source", {liquid_range = waterflow})
	minetest.override_item("default:river_water_flowing", {liquid_range = waterflow})
	minetest.override_item("default:river_water_source", {is_ground_content = true})
	minetest.override_item("default:river_water_flowing", {is_ground_content = true})
	minetest.override_item("default:water_source", {is_ground_content = true})
	minetest.override_item("default:water_flowing", {is_ground_content = true})

	if false then
		minetest.override_item("default:river_water_source", {light_source = 14})
		minetest.override_item("default:river_water_flowing", {light_source = 14})
		minetest.override_item("default:water_source", {light_source = 14})
		minetest.override_item("default:water_flowing", {light_source = 14})
	end

	if false then
		local newnode = lib_materials.clone_node("default:water_source")
		newnode.description = "Water"
		newnode.alpha = 0
		newnode.liquid_alternative_source = "lib_materials:water_source"
		newnode.liquid_alternative_flowing = "lib_materials:water_flowing"
		minetest.register_node("lib_materials:water_source", newnode)

		newnode = lib_materials.clone_node("default:water_flowing")
		newnode.description = "Water"
		newnode.alpha = 0
		newnode.liquid_alternative_source = "lib_materials:water_source"
		newnode.liquid_alternative_flowing = "lib_materials:water_flowing"
		minetest.register_node("lib_materials:water_flowing", newnode)
	end
	
end

