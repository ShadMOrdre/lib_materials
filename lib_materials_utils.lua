

local S = lib_materials.intllib


	local __ = {name = "air",param2 = 0,prob = 254}
	local D0 = {name = "lib_materials:dirt", param2 = 0, prob = 254}
	local S0 = {name = "lib_materials:stone", param2 = 0, prob = 254}
	local C0 = {name = "lib_materials:stone_brick", param2 = 0, prob = 254}
	local T0 = {name = "lib_materials:dirt_compacted", param2 = 0, prob = 254}
	local W0 = {name = "lib_materials:liquid_water_rushing_source", param2 = 0, prob = 254, force_place = true}
	local M0 = {name = "lib_materials:dirt_mud_01", param2 = 0, prob = 254}

--[[
	le_temp_schem = {
		size = {x = 3, y = 2, z = 3},
		data = {
			C0, C0, C0,
			C0, C0, C0,
	
			C0, C0, C0,
			C0, C0, C0,
	
			C0, C0, C0,
			C0, C0, C0
		},
		yslice_prob = {
			{ypos = 0,prob = 254},
			{ypos = 1,prob = 254}
		}
	}
	minetest.register_decoration({
	   deco_type = "schematic",
	   place_on = {"group:soil", "group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -24000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = 5349,
	      octaves = 1,
	      persist = 0.3,
	      lacunarity = 2.11,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 40,
	   y_min = 5,
	   place_offset_y = -1,
	   flags = "force_placement, place_center_x, place_center_z",
	   schematic = le_temp_schem,
	})
--]]
	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil"},
	   sidelen = 2,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = 513337,
	      octaves = 1,
	      persist = 0.2,
	      lacunarity = 2.22,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 40,
	   y_min = 5,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:dirt_with_stone_cobble",
	})
	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil", "group:dirt"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = 733315,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.48,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 140,
	   y_min = 5,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "lib_materials:dirt_with_stone_cobble",
	})
	minetest.register_decoration({
	   deco_type = "simple",
	   place_on = {"group:soil", "group:dirt", "group:sand"},
	   sidelen = 1,
	   noise_params = {
	      offset = 100.0,
	      scale = -30000.0,
	      spread = {x = 256, y = 256, z = 256},
	      seed = -513337,
	      octaves = 1,
	      persist = 0.5,
	      lacunarity = 2.15,
	      flags = "defaults, noeased, absvalue"
	   },
	   y_max = 140,
	   y_min = 5,
	   place_offset_y = -1,
	   flags = "force_placement",
	   decoration = "defaults, lib_materials:dirt_compacted",
	})







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





















