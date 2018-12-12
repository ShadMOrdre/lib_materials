
local S = lib_materials.gettext




--TO BE REVIEWED _MGS-20180220
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


--
-- Liquids
--

--Water

minetest.register_node("lib_materials:murky_water_source", {
	description = "Murky Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png^[colorize:#1F1F00:alpha",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "default_water_source_animated.png^[colorize:#1F1F00:alpha",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:murky_water_flowing",
	liquid_alternative_source = "lib_materials:murky_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("lib_materials:murky_water_flowing", {
	description = "Murky Flowing Water",
	drawtype = "flowingliquid",
	tiles = {"default_water.png^[colorize:#1F1F00:alpha"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png^[colorize:#1F1F00:alpha",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "default_water_flowing_animated.png^[colorize:#1F1F00:alpha",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:murky_water_flowing",
	liquid_alternative_source = "lib_materials:murky_water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})


minetest.register_node("lib_materials:muddy_river_water_source", {
	description = "Murky River Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "aus_muddy_river_water_flowing.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "aus_muddy_river_water_flowing.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:muddy_river_water_flowing",
	liquid_alternative_source = "lib_materials:muddy_river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("lib_materials:muddy_river_water_flowing", {
	description = "Murky Flowing River Water",
	drawtype = "flowingliquid",
	tiles = {"aus_muddy_river_water_source.png"},
	special_tiles = {
		{
			name = "aus_muddy_river_water_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "aus_muddy_river_water_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:muddy_river_water_flowing",
	liquid_alternative_source = "lib_materials:muddy_river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("lib_materials:dirty_water_source", {
	description = "Dirty Water Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "mapgen_dirty_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "mapgen_dirty_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:dirty_water_flowing",
	liquid_alternative_source = ",lib_materials:dirty_water_source",
	liquid_viscosity = 2,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("lib_materials:dirty_water_flowing", {
	description = "Flowing Dirty Water",
	drawtype = "flowingliquid",
	tiles = {"default_river_water.png^[colorize:green:100"},
	special_tiles = {
		{
			name = "mapgen_dirty_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
		{
			name = "mapgen_dirty_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:dirty_water_flowing",
	liquid_alternative_source = "lib_materials:dirty_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 103, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})



--Dev Liquid
minetest.register_node("lib_materials:liquid_source", {
	description = "Liquid Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_water_source_animated.png^[colorize:#1F1F1F:alpha",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_water_source_animated.png^[colorize:#1F1F1F:alpha",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:liquid_flowing",
	liquid_alternative_source = "lib_materials:liquid_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {oil = 3, liquid = 2},
})

minetest.register_node("lib_materials:liquid_flowing", {
	description = "Flowing Liquid",
	drawtype = "flowingliquid",
	tiles = {"default_water.png^[colorize:#1F1F1F:alpha"},
	special_tiles = {
		{
			name = "default_water_flowing_animated.png^[colorize:#1F1F1F:alpha",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_water_flowing_animated.png^[colorize:#1F1F1F:alpha",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:liquid_flowing",
	liquid_alternative_source = "lib_materials:liquid_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {oil = 3, liquid = 2, not_in_creative_inventory = 1},
})



--Quicksand as fluid.  Will spread like lava

minetest.register_node("lib_materials:quicksand_source", {
	description = "Quicksand Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "default_quicksand.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "default_quicksand.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:quicksand_flowing",
	liquid_alternative_source = "lib_materials:quicksand_source",
	liquid_viscosity = 8,
	liquid_renewable = false,
	damage_per_second = 3,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {quicksand = 3, liquid = 2},
})

minetest.register_node("lib_materials:quicksand_flowing", {
	description = "Flowing Quicksand",
	drawtype = "flowingliquid",
	tiles = {"default_quicksand_source.png"},
	special_tiles = {
		{
			name = "default_quicksand_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "default_quicksand_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:quicksand_flowing",
	liquid_alternative_source = "lib_materials:quicksand_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {quicksand = 3, liquid = 2, not_in_creative_inventory = 1},
})


-- Quicksand as node.  Player will sink, slow, and take drowning damage.
--(new style, sinking inside shows yellow effect with or without noclip, but old quicksand is shown as black until block placed nearby to update light)
minetest.register_node("lib_materials:quicksand", {
	description = S("Quicksand"),
	tiles = {"default_sand.png"},
	drawtype = "glasslike",
	paramtype = "light",
	drop = "default:sand",
	liquid_viscosity = 15,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:quicksand",
	liquid_alternative_source = "lib_materials:quicksand",
	liquid_renewable = false,
	liquid_range = 0,
	drowning = 1,
	walkable = false,
	climbable = false,
	post_effect_color = {r = 230, g = 210, b = 160, a = 245},
	groups = {crumbly = 3, sand = 1, liquid = 3, disable_jump = 1},
	sounds = default.node_sound_sand_defaults(),
})

-- craft quicksand
minetest.register_craft({
	output = "lib_materials:quicksand",
	recipe = {
		{"group:sand", "group:sand", "group:sand"},
		{"group:sand", "group:water_bucket", "group:sand"},
		{"group:sand", "group:sand", "group:sand"},
	},
	replacements = {
		{"group:water_bucket", "bucket:bucket_empty"}
	}
})




-- Mud as node.  Player will sink, slow, and take drowning damage.
-- Mud for swamps
minetest.register_node("lib_materials:mud_wet", {
	description = "Mud Wet",
	tiles = {"biomes_mud.png"},
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_renewable = false,
	liquid_alternative_source = "lib_materials:mud",
	liquid_alternative_flowing = "lib_materials:mud",
	liquid_range = 0,
	post_effect_color = {r=115, g=61, b=31, a=255},
	drowning = 1,
	walkable = false,
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
})



--Grease and Oil

minetest.register_craft({
	output = "lib_materials:grease_source",
	recipe = {
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "bucket:bucket_water", "default:coal_lump"},
		{"default:coal_lump", "default:dirt",  "default:coal_lump"}
	}
})

minetest.register_node("lib_materials:grease_source", {
	description = "Grease Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "steampunk_grease_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "steampunk_grease_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:grease_flowing",
	liquid_alternative_source = "lib_materials:grease_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 107, g = 53, b = 18},
	groups = {oil = 3, liquid = 1, flammable = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("lib_materials:grease_flowing", {
	description = "Flowing Grease",
	drawtype = "flowingliquid",
	tiles = {"steampunk_grease.png"},
	special_tiles = {
		{
			name = "steampunk_grease_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "steampunk_grease_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:grease_flowing",
	liquid_alternative_source = "lib_materials:grease_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 45, g = 23, b = 7},
	groups = {oil = 3, liquid = 1, flammable = 1,
		not_in_creative_inventory = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_craft({
	output = "lib_materials:oil_source",
	recipe = {
		{"default:coal_lump", "default:coal_lump", "default:coal_lump"},
		{"default:coal_lump", "bucket:bucket_water", "default:coal_lump"},
		{"default:coal_lump", "default:coal_lump",  "default:coal_lump"}
	}
})

minetest.register_node("lib_materials:oil_source", {
	description = "Oil Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "steampunk_oil_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "steampunk_oil_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "lib_materials:oil_flowing",
	liquid_alternative_source = "lib_materials:oil_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 45, g = 23, b = 7},
	groups = {oil = 3, liquid = 1, flammable = 1},
	sounds = default.node_sound_water_defaults(),
})

minetest.register_node("lib_materials:oil_flowing", {
	description = "Flowing Oil",
	drawtype = "flowingliquid",
	tiles = {"steampunk_oil.png"},
	special_tiles = {
		{
			name = "steampunk_oil_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "steampunk_oil_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "lib_materials:oil_flowing",
	liquid_alternative_source = "lib_materials:oil_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 150, r = 45, g = 23, b = 7},
	groups = {oil = 3, liquid = 1, flammable = 1,
		not_in_creative_inventory = 1},
	sounds = default.node_sound_water_defaults(),
})

