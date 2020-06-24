

local S = lib_materials.intllib

	minetest.register_node("lib_materials:litter_rock", {
		description = S("Litter - Rock"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_rock.png"},
		inventory_image = "lib_materials_litter_rock.png",
		wield_image = "lib_materials_litter_rock.png",
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1, ground_litter = 1, rock = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})
	
	minetest.register_node("lib_materials:litter_rocks", {
		description = S("Litter - Rocks"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_rocks.png"},
		inventory_image = "lib_materials_litter_rocks.png",
		wield_image = "lib_materials_litter_rocks.png",
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = 2.0,
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {chippy = 1, flakey = 1, knappy = 1, ground_litter = 1, rock = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_stone_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})

	minetest.register_node("lib_materials:litter_stick", {
		description = S("Litter - Stick"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_stick.png"},
		inventory_image = "lib_materials_litter_stick.png",
		wield_image = "lib_materials_litter_stick.png",
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = 2.0,
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {choppy = 1, snappy = 1, ground_litter = 1, stick = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
			{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
		on_place = function(itemstack, placer, pointed_thing)
			local sound_pos = pointed_thing.above or placer:get_pos()
			minetest.sound_play(
				"default_tool_breaks",
				{pos = sound_pos, gain = 0.5, max_hear_distance = 8}
			)
			local player_name = placer:get_player_name()
			if pointed_thing.type == "node" then
				local node_under = minetest.get_node(pointed_thing.under).name
				local nodedef = minetest.registered_nodes[node_under]
				if not nodedef then
					return
				end
				if minetest.is_protected(pointed_thing.under, player_name) then
					minetest.chat_send_player(player_name, "This area is protected")
					return
				end
				if node_under == "lib_materials:litter_stick" then
					if minetest.get_node(pointed_thing.above).name == "air" then
						minetest.set_node(pointed_thing.under, {name = "lib_materials:litter_sticks"})
					end
				else
					if minetest.get_node(pointed_thing.above).name == "air" then
						minetest.set_node(pointed_thing.above, {name = "lib_materials:litter_stick"})
					end
				end
			end
			if not (creative and creative.is_enabled_for
					and creative.is_enabled_for(player_name)) then
				-- Wear tool
				local wdef = itemstack:get_definition()
				itemstack:add_wear(2000)
				-- Tool break sound
				if itemstack:get_count() == 0 and wdef.sound and wdef.sound.breaks then
					minetest.sound_play(wdef.sound.breaks, {pos = sound_pos, gain = 0.5})
				end
				return itemstack
			end
		end,
	})
	
	minetest.register_node("lib_materials:litter_sticks", {
		description = S("Litter - Sticks"),
		drawtype = "nodebox",
		tiles = {"lib_materials_litter_stick.png^(lib_materials_litter_stick.png^[transformFX)"},
		inventory_image = "lib_materials_litter_stick.png^(lib_materials_litter_stick.png^[transformFX)",
		wield_image = "lib_materials_litter_stick.png^(lib_materials_litter_stick.png^[transformFX)",
		sunlight_propagates = true,
		paramtype = "light",
		paramtype2 = "facedir",
		visual_scale = 2.0,
		walkable = false,
		buildable_to = true,
		floodable = true,
		groups = {choppy = 1, snappy = 1, ground_litter = 1, stick = 1, sticks = 1, oddly_breakable_by_hand = 1},
		sounds = lib_materials.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5,-0.5,-0.5,0.5,-0.49,0.5}
			}
		},
	})
	




-- Push an element onto a stack (table).
function push(t, x)
	t[#t+1] = x
end


----------------------
-- Decorative Rocks --
----------------------
--[[
-- I'm feeling a bit zen...

-- Create a simple sphereoid from nodeboxes.
-- This isn't as nifty as I originally thought. The large ones are
-- ugly and the small ones are nearly invisible. I may stick with cubes.
local function step_sphere(grid, pos, diameters, embed)
	local step = {x=diameters.x * 0.2, y=diameters.y * 0.2, z=diameters.z * 0.2}
	local rock = {}

	if embed then
		embed = 1
	else
		embed = 0
	end

	rock[1] = pos.x + step.x
	rock[2] = pos.y + (step.y * embed)
	rock[3] = pos.z
	rock[4] = pos.x + diameters.x - step.x
	rock[5] = diameters.y + pos.y - step.y - (step.y * embed)
	rock[6] = pos.z + diameters.z
	push(grid, rock)

	rock = {}
	rock[1] = pos.x
	rock[2] = pos.y + (step.y * embed)
	rock[3] = pos.z + step.z
	rock[4] = pos.x + step.x
	rock[5] = diameters.y + pos.y - step.y - (step.y * embed)
	rock[6] = pos.z + diameters.z - step.z
	push(grid, rock)

	rock = {}
	rock[1] = pos.x + diameters.x - step.x
	rock[2] = pos.y + (step.y * embed)
	rock[3] = pos.z + step.z
	rock[4] = pos.x + diameters.x
	rock[5] = diameters.y + pos.y - step.y - (step.y * embed)
	rock[6] = pos.z + diameters.z - step.z
	push(grid, rock)

	if not embed then
		rock = {}
		rock[1] = pos.x + step.x
		rock[2] = pos.y
		rock[3] = pos.z + step.z
		rock[4] = pos.x + diameters.x - step.x
		rock[5] = step.y + pos.y
		rock[6] = pos.z + diameters.z - step.z
		push(grid, rock)
	end

	rock = {}
	rock[1] = pos.x + step.x
	rock[2] = diameters.y + pos.y - step.y - (step.y * embed)
	rock[3] = pos.z + step.z
	rock[4] = pos.x + diameters.x - step.x
	rock[5] = diameters.y + pos.y - (step.y * embed)
	rock[6] = pos.z + diameters.z - step.z
	push(grid, rock)
end
--]]

-- Place a small nodebox.
local function small_cube(grid, pos, diameters)
	local rock = {}

	rock[1] = pos.x
	rock[2] = pos.y
	rock[3] = pos.z
	rock[4] = pos.x + diameters.x
	rock[5] = pos.y + diameters.y
	rock[6] = pos.z + diameters.z
	push(grid, rock)
end


-- Create some tiles of small rocks that can be picked up.
local default_grid
local tiles = {"lib_materials_stone_default.png", "lib_materials_stone_desert_default.png", "lib_materials_stone_sandstone_default.png", "lib_materials_stone_cobble_default.png"}

for grid_count = 1,6 do
	local grid = {}
	for rock_count = 2, math.random(1,4) + 1 do
		local diameter = math.random(5,15)/100
		local x = math.random(1,80)/100 - 0.5
		local z = math.random(1,80)/100 - 0.5
		--step_sphere(grid, {x=x,y=-0.5,z=z}, {x=diameter, y=diameter, z=diameter})
		small_cube(grid, {x=x,y=-0.5,z=z}, {x=diameter, y=diameter, z=diameter})
	end

	--local stone = tiles[math.random(1,#tiles)]
	local stone = tiles[(grid_count % #tiles) + 1]

	minetest.register_node("lib_materials:litter_small_rocks"..grid_count, {
		description = "Small Rocks",
		tiles = {stone},
		is_ground_content = true,
		walkable = false,
		paramtype = "light",
		drawtype = "nodebox",
		buildable_to = true,
		node_box = { type = "fixed", 
								 fixed = grid },
		selection_box = { type = "fixed", 
											fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
										},
		groups = {rock=1, oddly_breakable_by_hand=3, not_in_creative_inventory=1},
		drop = "lib_materials:litter_small_rocks",
		sounds = lib_materials.node_sound_stone_defaults(),
	})

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:litter_small_rocks"..grid_count,
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		--biomes = {"lib_ecology_sandstone_grassland", "lib_ecology_tundra", "lib_ecology_taiga", "lib_ecology_stone_grassland", "lib_ecology_coniferous_forest", "lib_ecology_deciduous_forest", "lib_ecology_desert", "lib_ecology_cold_desert", "lib_ecology_savanna", "lib_ecology_rainforest", "lib_ecology_desertstone_grassland", },
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	default_grid = grid
end

-- This is the inventory item, so we don't have six different stacks.
minetest.register_node("lib_materials:litter_small_rocks", {
	description = "Small Rocks",
	tiles = {"lib_materials_stone_default.png"},
	inventory_image = "lib_materials_litter_rocks.png",
	is_ground_content = true,
	walkable = false,
	paramtype = "light",
	drawtype = "nodebox",
	node_box = { type = "fixed", 
							 fixed = default_grid },
	selection_box = { type = "fixed", 
										fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5},
									},
	groups = {stone=1, oddly_breakable_by_hand=3},
	sounds = lib_materials.node_sound_stone_defaults(),
})


---- Create some larger rocks that can be mined.
local tiles = {"lib_materials_stone_default.png", "lib_materials_stone_desert_default.png", "lib_materials_stone_sandstone_default.png", "lib_materials_stone_cobble_default.png"}
local sel = {{-0.4,-0.5,-0.4,0.4,0.0,0.3}, {-0.4,-0.5,-0.4,0.2,-0.1,0.3}, {-0.3,-0.5,-0.3,0.2,-0.2,0.3}}
--
for count = 1,9 do
	local stone = tiles[(count % #tiles) + 1]
	--local grid = {}
	--step_sphere(grid, {x=-0.25,y=-0.5,z=-0.25}, {x=0.5, y=0.3, z=0.5})

	minetest.register_node("lib_materials:medium_rock"..count, {
		description = "Medium Rock",
		tiles = {stone},
		is_ground_content = true,
		walkable = true,
		paramtype = "light",
		--drawtype = "mesh",
		drawtype = "nodebox",
		--mesh = "rock0"..math.ceil(count / 3)..".b3d",
		node_box = {
			type = "fixed", 
			fixed = {
				-0.25, -0.5, -0.25, 0.25, -0.25, 0.25,
			},
		},
		selection_box = {type="fixed", fixed=sel[math.ceil(count / 3)]},
		groups = {rock=1, cracky=3, not_in_creative_inventory=1},
		drop = "lib_materials:stone_cobble",
		sounds = lib_materials.node_sound_stone_defaults(),
	})
--
	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:medium_rock"..count,
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.001,
		--biomes = {"sandstone_grassland", "tundra", "taiga", "stone_grassland", "coniferous_forest", "deciduous_forest", "desert", "cold_desert", "savanna", "rainforest", "desertstone_grassland", },
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})
end


-- Small rocks can be used to create cobblestone, if you like.
minetest.register_craft({
	output = "lib_materials:stone_cobble",
	recipe = {
		{"", "", ""},
		{"lib_materials:litter_small_rocks", "lib_materials:litter_small_rocks", ""},
		{"lib_materials:litter_small_rocks", "lib_materials:litter_small_rocks", ""},
	},
})







	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:litter_rock",
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:litter_rocks",
		sidelen = 80,
		place_on = {"group:soil", "group:sand", "group:stone"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "simple",
		decoration = "lib_materials:litter_stick",
		sidelen = 80,
		place_on = {"group:soil", "group:leaves", "group:wood"},
		fill_ratio = 0.002,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})




--[[
	minetest.register_decoration({
		name = "lib_materials:stone_rocks1",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_01.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks2",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_02.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks3",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_03.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks4",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_04.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks5",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_05.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks6",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_06.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks7",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_07.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks8",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_08.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks9",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_09.lua"),
		rotation = "random",
	})
	minetest.register_decoration({
		name = "lib_materials:stone_rocks_large1",
		deco_type = "schematic",
		place_on = {"group:stone", "group:gravel"},
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"hot_arid_coastal", "hot_arid_lowland", "hot_arid_shelf", "hot_arid_highland",
			"warm_arid_coastal", "warm_arid_lowland", "warm_arid_shelf", "warm_arid_highland",
			"temperate_arid_coastal", "temperate_arid_lowland", "temperate_arid_shelf", "temperate_arid_highland",
			"cool_arid_coastal", "cool_arid_lowland", "cool_arid_shelf", "cool_arid_highland",
			"cold_arid_coastal", "cold_arid_lowland", "cold_arid_shelf", "cold_arid_highland",
			"hot_humid_mountain", "hot_semihumid_mountain", "hot_temperate_mountain", "hot_semiarid_mountain", "hot_arid_mountain",
			"warm_humid_mountain", "warm_semihumid_mountain", "warm_temperate_mountain", "warm_semiarid_mountain", "warm_arid_mountain",
			"temperate_humid_mountain", "temperate_semihumid_mountain", "temperate_temperate_mountain", "temperate_semiarid_mountain", "temperate_arid_mountain",
			"cool_humid_mountain", "cool_semihumid_mountain", "cool_temperate_mountain", "cool_semiarid_mountain", "cool_arid_mountain",
			"cold_humid_mountain", "cold_semihumid_mountain", "cold_temperate_mountain", "cold_semiarid_mountain", "cold_arid_mountain",
		},
		flags = "force_placement, place_center_x, place_center_y, place_center_z",
		schematic = dofile(lib_materials.path.."/schems/lib_materials_schem_rock_large_01.lua"),
		rotation = "random",
	})
--]]









--[[
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:gravel", "group:stone", },
		sidelen = 80,
		fill_ratio = 0.002,
		--biomes = c,
		schematic = lib_materials.schem_rock_05,			--lib_ecology.schematics.select(f),
		flags = "force_placement, place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:gravel", },					 --"group:stone",
		sidelen = 80,
		fill_ratio = 0.001,
		--biomes = c,
		schematic = lib_materials.schem_rock_desert_05,			--lib_ecology.schematics.select(f),
		flags = "force_placement, place_center_x, place_center_y, place_center_z",
		rotation = "random",
	})
	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:soil", "group:stone", "group:gravel", },					 --"group:stone",
		sidelen = 80,
		fill_ratio = 0.001,
		biomes = {
			"temperate_humid_lowland",
			"temperate_semihumid_lowland",
			"temperate_temperate_lowland",
			"cool_humid_shelf",
			"cool_semihumid_shelf",
			"cool_temperate_shelf"
		},
		schematic = lib_materials.schem_erratic_01,			--lib_ecology.schematics.select(f),
		flags = "force_placement, place_center_x, place_center_y, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:gravel", "group:stone", },
		sidelen = 80,
		fill_ratio = 0.002,
		--biomes = c,
		schematic = lib_materials.schem_rock_desert_02_01,			--lib_ecology.schematics.select(f),
		flags = "force_placement, place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:gravel", "group:stone", },
		sidelen = 80,
		fill_ratio = 0.002,
		--biomes = c,
		schematic = lib_materials.schem_rock_desert_02_02,			--lib_ecology.schematics.select(f),
		flags = "force_placement, place_center_x, place_center_z",
		rotation = "random",
	})

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"group:gravel", "group:stone", },
		sidelen = 80,
		fill_ratio = 0.002,
		--biomes = c,
		schematic = lib_materials.schem_rock_desert_03_01,			--lib_ecology.schematics.select(f),
		flags = "force_placement, place_center_x, place_center_z",
		rotation = "random",
	})
--]]

















