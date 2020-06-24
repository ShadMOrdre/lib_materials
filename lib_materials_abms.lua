
local S = lib_materials.intllib


--
-- Lavacooling
--
lib_materials.cool_lava = function(pos, node)
	if node.name == "lib_materials:lava_source" or node.name == "lib_materials:lava_flowing" then
		local rnum = math.random(1,4)
		if rnum == 1 then
			if node.name == "lib_materials:lava_source" then
				minetest.set_node(pos, {name = "lib_materials:lava_cooling_source"})
			else
				minetest.set_node(pos, {name = "lib_materials:lava_cooling_flowing"})
			end
		else
			
		end
		minetest.sound_play("default_cool_lava", {pos = pos, max_hear_distance = 16, gain = 0.25})
	end
end
lib_materials.cool_lava2 = function(pos, node)
	if node.name == "lib_materials:lava_cooling_source" or node.name == "lib_materials:lava_cooling_flowing" then
		local rnum = math.random(1,2)
		if rnum == 1 then
			minetest.set_node(pos, {name = "lib_materials:stone_cobble_hot"})
		else
			
		end
		minetest.sound_play("default_cool_lava", {pos = pos, max_hear_distance = 16, gain = 0.25})
	end
end
lib_materials.cool_lava3 = function(pos, node)
	if node.name == "lib_materials:stone_cobble_hot" then
		local rnum = math.random(1,6)
		if rnum == 1 then
			minetest.set_node(pos, {name = "lib_materials:stone_obsidian"})
		elseif rnum == 2 then
			minetest.set_node(pos, {name = "lib_materials:stone_basalt_01"})
		elseif rnum == 3 then
			minetest.set_node(pos, {name = "lib_materials:stone_basalt_02"})
		elseif rnum == 4 then
			minetest.set_node(pos, {name = "lib_materials:stone_basalt_03"})
		elseif rnum == 5 then
			minetest.set_node(pos, {name = "lib_materials:stone"})
		else
			
		end
		minetest.sound_play("default_cool_lava", {pos = pos, max_hear_distance = 16, gain = 0.25})
	end
end


if minetest.settings:get_bool("enable_lavacooling") ~= false then
	minetest.register_abm({
		label = "Lava cooling",
		nodenames = {"lib_materials:lava_source", "lib_materials:lava_flowing"},
		neighbors = {"group:cools_lava", "group:water"},
		interval = 2,
		chance = 2,
		catch_up = false,
		action = function(...)
			lib_materials.cool_lava(...)
		end,
	})
	minetest.register_abm({
		label = "Lava2 cooling",
		nodenames = {"lava_cooling_source", "lib_materials:lava_cooling_flowing"},
		neighbors = {"group:cools_lava", "group:water"},
		interval = 2,
		chance = 2,
		catch_up = false,
		action = function(...)
			lib_materials.cool_lava2(...)
		end,
	})
	minetest.register_abm({
		label = "Lava3 cooling",
		nodenames = {"lib_materials:stone_cobble_hot"},
		neighbors = {"group:cools_lava", "group:water"},
		interval = 2,
		chance = 2,
		catch_up = false,
		action = function(...)
			lib_materials.cool_lava3(...)
		end,
	})
end


--
-- Convert dirt to something that fits the environment
--

minetest.register_abm({
	label = "Grass spread",
	nodenames = {"lib_materials:dirt"},
	neighbors = {
		"air",
		"group:grass",
		"group:dry_grass",
		"lib_materials:snow",
	},
	interval = 6,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		-- Check for darkness: night, shadow or under a light-blocking node
		-- Returns if ignore above
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		if (minetest.get_node_light(above) or 0) < 13 then
			return
		end

		-- Look for spreading dirt-type neighbours
		local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		if p2 then
			local n3 = minetest.get_node(p2)
			minetest.set_node(pos, {name = n3.name})
			return
		end

		-- Else, any seeding nodes on top?
		local name = minetest.get_node(above).name
		-- Snow check is cheapest, so comes first
		if name == "lib_materials:snow" then
			minetest.set_node(pos, {name = "lib_materials:dirt_with_snow"})
		-- Most likely case first
		elseif minetest.get_item_group(name, "grass") ~= 0 then
			minetest.set_node(pos, {name = "lib_materials:dirt_with_grass"})
		elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			minetest.set_node(pos, {name = "lib_materials:dirt_with_grass_dry"})
		end
	end
})


--
-- Grass and dry grass removed in darkness
--

minetest.register_abm({
	label = "Grass covered",
	nodenames = {"group:spreading_dirt_type"},
	interval = 8,
	chance = 50,
	catch_up = false,
	action = function(pos, node)
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		local name = minetest.get_node(above).name
		local nodedef = minetest.registered_nodes[name]
		if name ~= "ignore" and nodedef and not ((nodedef.sunlight_propagates or
				nodedef.paramtype == "light") and
				nodedef.liquidtype == "none") then
			minetest.set_node(pos, {name = "lib_materials:dirt"})
		end
	end
})


--
-- Moss growth on cobble near water
--

minetest.register_abm({
	label = "Moss growth",
	nodenames = {"lib_materials:stone_cobble", "lib_materials:stone_cobble_slab", "lib_materials:stone_cobble_stairs", "lib_materials:stone_cobble_wall_centered"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		if node.name == "lib_materials:stone_cobble" then
			minetest.set_node(pos, {name = "lib_materials:stone_cobble_mossy"})
		elseif node.name == "lib_materials:stone_cobble_slab" then
			minetest.set_node(pos, {name = "lib_materials:stone_cobble_mossy_slab", param2 = node.param2})
		elseif node.name == "lib_materials:stone_cobble_stairs" then
			minetest.set_node(pos, {name = "lib_materials:stone_cobble_mossy_stairs", param2 = node.param2})
		elseif node.name == "lib_materials:stone_cobble_wall_centered" then
			minetest.set_node(pos, {name = "lib_materials:stone_cobble_mossy_wall_centered", param2 = node.param2})
		end
	end
})


