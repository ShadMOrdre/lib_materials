local S = lib_materials.intllib

-- Snow
lib_materials.register_node(
	"lib_materials:snow_brick", "ethereal:snowbrick", 
	{
		description = S("Snow Brick"),
		tiles = {"lib_materials_snow_brick.png"},
		paramtype = "light",
		freezemelt = "default:water_source",
		is_ground_content = false,
		groups = {crumbly = 3, puts_out_fire = 1, cools_lava = 1},
		sounds = default.node_sound_dirt_defaults({
			footstep = {name = "default_snow_footstep", gain = 0.15},
			dug = {name = "default_snow_footstep", gain = 0.2},
			dig = {name = "default_snow_footstep", gain = 0.2},
		}),
	}
)

minetest.register_craft({
	output = 'lib_materials:snow_brick 4',
	recipe = {
		{'lib_materials:snow_block', 'lib_materials:snow_block'},
		{'lib_materials:snow_block', 'lib_materials:snow_block'},
	}
})

lib_materials.register_node("lib_materials:snow", "default:snow", {
	description = "Snow",
	tiles = {"lib_materials_snow.png"},
	inventory_image = "lib_materials_snowball.png",
	wield_image = "lib_materials_snowball.png",
	paramtype = "light",
	buildable_to = true,
	floodable = true,
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
	},
	collision_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -7 / 16, 0.5},
		},
	},
	groups = {crumbly = 3, falling_node = 1, snowy = 1},
	sounds = default.node_sound_snow_defaults(),

	on_construct = function(pos)
		pos.y = pos.y - 1
		-- FIXME: this check needs to be adjusted
		if minetest.get_node(pos).name == "default:dirt_with_grass" then
			minetest.set_node(pos, {name = "default:dirt_with_snow"})
		end
	end,
})

lib_materials.register_node(
	"lib_materials:snow_block", "default:snowblock", {
		description = "Snow Block",
		tiles = {"lib_materials_snow.png"},
		groups = {
			crumbly = 3, puts_out_fire = 1, cools_lava = 1, snowy = 1
		},
		sounds = default.node_sound_dirt_defaults({
			footstep = {name = "default_snow_footstep", gain = 0.15},
			dug = {name = "default_snow_footstep", gain = 0.2},
			dig = {name = "default_snow_footstep", gain = 0.2}
		}),

		on_construct = function(pos)
			pos.y = pos.y - 1
			-- FIXME: this check needs to be adjusted
			if minetest.get_node(pos).name == "default:dirt_with_grass" then
				minetest.set_node(pos, {name = "default:dirt_with_snow"})
			end
		end,
	}
)

-- Ice
lib_materials.register_node(
	"lib_materials:ice_default", "default:ice", {
		description = "Ice - Default",
		tiles = {"lib_materials_ice.png"},
		is_ground_content = false,
		paramtype = "light",
		groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1},
		sounds = default.node_sound_glass_defaults(),
	}
)

lib_materials.register_node(
	"lib_materials:ice_default2", "default:cave_ice", {
		description = "Ice - Default 2",
		tiles = {"lib_materials_ice2.png"},
		is_ground_content = false,
		paramtype = "light",
		groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1},
		sounds = default.node_sound_glass_defaults(),
	}
)

lib_materials.register_node("lib_materials:ice_block", nil, {
	description = "Ice - Block",
	tiles = {"lib_materials_ice_block.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_glass_defaults(),
})

lib_materials.register_node(
	"lib_materials:ice_brick", "ethereal:icebrick", {
		description = S("Ice Brick"),
		tiles = {"lib_materials_ice_brick.png"},
		paramtype = "light",
		freezemelt = "default:water_source",
		is_ground_content = false,
		groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1},
		sounds = default.node_sound_glass_defaults(),
	}
)

minetest.register_craft({
	output = 'lib_materials:ice_brick 4',
	recipe = {
		{'lib_materials:ice_default', 'lib_materials:ice_default'},
		{'lib_materials:ice_default', 'lib_materials:ice_default'},
	}
})

lib_materials.register_node("lib_materials:ice_thin", nil, {
	description = "Ice - Thin",
	tiles = {"lib_materials_ice_thin.png"},
	is_ground_content = false,
	paramtype = "light",
	groups = {cracky = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_glass_defaults(),
})
