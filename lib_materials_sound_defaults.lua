--
-- Sounds
--

function lib_materials.node_sound_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "", gain = 1.0}
	table.dug = table.dug or
			{name = "default_dug_node", gain = 0.25}
	table.place = table.place or
			{name = "default_place_node_hard", gain = 1.0}
	return table
end

function lib_materials.node_sound_stone_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_hard_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "default_hard_footstep", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_dirt_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_dirt_footstep", gain = 0.4}
	table.dug = table.dug or
			{name = "default_dirt_footstep", gain = 1.0}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_sand_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_sand_footstep", gain = 0.12}
	table.dug = table.dug or
			{name = "default_sand_footstep", gain = 0.24}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_gravel_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_gravel_footstep", gain = 0.4}
	table.dug = table.dug or
			{name = "default_gravel_footstep", gain = 1.0}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_wood_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_wood_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "default_wood_footstep", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_leaves_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_grass_footstep", gain = 0.45}
	table.dug = table.dug or
			{name = "default_grass_footstep", gain = 0.7}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_glass_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_glass_footstep", gain = 0.3}
	table.dig = table.dig or
			{name = "default_glass_footstep", gain = 0.5}
	table.dug = table.dug or
			{name = "default_break_glass", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_metal_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_metal_footstep", gain = 0.4}
	table.dig = table.dig or
			{name = "default_dig_metal", gain = 0.5}
	table.dug = table.dug or
			{name = "default_dug_metal", gain = 0.5}
	table.place = table.place or
			{name = "default_place_node_metal", gain = 0.5}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_water_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_water_footstep", gain = 0.2}
	lib_materials.node_sound_defaults(table)
	return table
end

function lib_materials.node_sound_snow_defaults(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "default_snow_footstep", gain = 0.2}
	table.dig = table.dig or
			{name = "default_snow_footstep", gain = 0.3}
	table.dug = table.dug or
			{name = "default_snow_footstep", gain = 0.3}
	table.place = table.place or
			{name = "default_place_node", gain = 1.0}
	lib_materials.node_sound_defaults(table)
	return table
end


--
-- Lavacooling
--

lib_materials.cool_lava = function(pos, node)
	if node.name == "default:lava_source" then
		minetest.set_node(pos, {name = "default:obsidian"})
	else -- Lava flowing
		minetest.set_node(pos, {name = "default:stone"})
	end
	minetest.sound_play("default_cool_lava",
		{pos = pos, max_hear_distance = 16, gain = 0.25})
end

if minetest.settings:get_bool("enable_lavacooling") ~= false then
	minetest.register_abm({
		label = "Lava cooling",
		nodenames = {"default:lava_source", "default:lava_flowing"},
		neighbors = {"group:cools_lava", "group:water"},
		interval = 2,
		chance = 2,
		catch_up = false,
		action = function(...)
			lib_materials.cool_lava(...)
		end,
	})
end



-- -- --
-- -- -- Convert dirt to something that fits the environment
-- -- --
-- -- minetest.register_abm({
	-- -- label = "Grass spread",
	-- -- nodenames = {"default:dirt"},
	-- -- neighbors = {
		-- -- "air",
		-- -- "group:grass",
		-- -- "group:dry_grass",
		-- -- "default:snow",
	-- -- },
	-- -- interval = 6,
	-- -- chance = 50,
	-- -- catch_up = false,
	-- -- action = function(pos, node)
		-- -- -- Check for darkness: night, shadow or under a light-blocking node
		-- -- -- Returns if ignore above
		-- -- local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		-- -- if (minetest.get_node_light(above) or 0) < 13 then
			-- -- return
		-- -- end

		-- -- -- Look for spreading dirt-type neighbours
		-- -- local p2 = minetest.find_node_near(pos, 1, "group:spreading_dirt_type")
		-- -- if p2 then
			-- -- local n3 = minetest.get_node(p2)
			-- -- minetest.set_node(pos, {name = n3.name})
			-- -- return
		-- -- end

		-- -- -- Else, any seeding nodes on top?
		-- -- local name = minetest.get_node(above).name
		-- -- -- Snow check is cheapest, so comes first
		-- -- if name == "default:snow" then
			-- -- minetest.set_node(pos, {name = "default:dirt_with_snow"})
		-- -- -- Most likely case first
		-- -- elseif minetest.get_item_group(name, "grass") ~= 0 then
			-- -- minetest.set_node(pos, {name = "default:dirt_with_grass"})
		-- -- elseif minetest.get_item_group(name, "dry_grass") ~= 0 then
			-- -- minetest.set_node(pos, {name = "default:dirt_with_dry_grass"})
		-- -- end
	-- -- end
-- -- })


-- -- --
-- -- -- Grass and dry grass removed in darkness
-- -- --
-- -- minetest.register_abm({
	-- -- label = "Grass covered",
	-- -- nodenames = {"group:spreading_dirt_type"},
	-- -- interval = 8,
	-- -- chance = 50,
	-- -- catch_up = false,
	-- -- action = function(pos, node)
		-- -- local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		-- -- local name = minetest.get_node(above).name
		-- -- local nodedef = minetest.registered_nodes[name]
		-- -- if name ~= "ignore" and nodedef and not ((nodedef.sunlight_propagates or
				-- -- nodedef.paramtype == "light") and
				-- -- nodedef.liquidtype == "none") then
			-- -- minetest.set_node(pos, {name = "default:dirt"})
		-- -- end
	-- -- end
-- -- })


-- -- --
-- -- -- Moss growth on cobble near water
-- -- --
-- -- minetest.register_abm({
	-- -- label = "Moss growth",
	-- -- nodenames = {"default:cobble", "stairs:slab_cobble", "stairs:stair_cobble", "walls:cobble"},
	-- -- neighbors = {"group:water"},
	-- -- interval = 16,
	-- -- chance = 200,
	-- -- catch_up = false,
	-- -- action = function(pos, node)
		-- -- if node.name == "default:cobble" then
			-- -- minetest.set_node(pos, {name = "default:mossycobble"})
		-- -- elseif node.name == "stairs:slab_cobble" then
			-- -- minetest.set_node(pos, {name = "stairs:slab_mossycobble", param2 = node.param2})
		-- -- elseif node.name == "stairs:stair_cobble" then
			-- -- minetest.set_node(pos, {name = "stairs:stair_mossycobble", param2 = node.param2})
		-- -- elseif node.name == "walls:cobble" then
			-- -- minetest.set_node(pos, {name = "walls:mossycobble", param2 = node.param2})
		-- -- end
	-- -- end
-- -- })


