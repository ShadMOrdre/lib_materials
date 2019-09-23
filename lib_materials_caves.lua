

-- What's a cave without speleothems?
local spel = {
	{type1="stalactite", type2="stalagmite", tile="lib_materials_stone_default.png"},
	{type1="stalactite_slimy", type2="stalagmite_slimy", tile="lib_materials_stone_default.png^valc_algae.png"},
	{type1="stalactite_mossy", type2="stalagmite_mossy", tile="lib_materials_stone_default.png^valc_moss.png"},
	{type1="icicle_down", type2="icicle_up", desc="Icicle", tile="lib_materials_ice2.png", drop="lib_materials:ice_2"},
}

for _, desc in pairs(spel) do
	minetest.register_node("lib_materials:"..desc.type1, {
		description = (desc.desc or "Stalactite"),
		tiles = {desc.tile},
		is_ground_content = true,
		walkable = false,
		paramtype = "light",
		--light_source = 14,
		drop = (desc.drop or "lib_materials:stalactite"),
		drawtype = "nodebox",
		node_box = { type = "fixed", 
			fixed = {
				{-0.07, 0.0, -0.07, 0.07, 0.5, 0.07}, 
				{-0.04, -0.25, -0.04, 0.04, 0.0, 0.04}, 
				{-0.02, -0.5, -0.02, 0.02, 0.25, 0.02}, 
			} },
		groups = {rock=1, cracky=3},
		sounds = lib_materials.node_sound_stone_defaults(),
	})

	minetest.register_node("lib_materials:"..desc.type2, {
		description = (desc.desc or "Stalagmite"),
		tiles = {desc.tile},
		is_ground_content = true,
		walkable = false,
		paramtype = "light",
		--light_source = 14,
		drop = "lib_materials:stalagmite",
		drawtype = "nodebox",
		node_box = { type = "fixed", 
			fixed = {
				{-0.07, -0.5, -0.07, 0.07, 0.0, 0.07}, 
				{-0.04, 0.0, -0.04, 0.04, 0.25, 0.04}, 
				{-0.02, 0.25, -0.02, 0.02, 0.5, 0.02}, 
			} },
		groups = {rock=1, cracky=3},
		sounds = lib_materials.node_sound_stone_defaults(),
	})
end

-- They can be made into cobblestone, to get them out of inventory.
minetest.register_craft({
	output = "lib_materials:stone_cobble",
	recipe = {
		{"", "", ""},
		{"lib_materials:stalactite", "lib_materials:stalactite", ""},
		{"lib_materials:stalactite", "lib_materials:stalactite", ""},
	},
})

minetest.register_craft({
	output = "lib_materials:stone_cobble",
	recipe = {
		{"", "", ""},
		{"lib_materials:stalagmite", "lib_materials:stalagmite", ""},
		{"lib_materials:stalagmite", "lib_materials:stalagmite", ""},
	},
})

--[[
minetest.register_node("lib_materials:stone_with_moss", {
	description = "Cave Stone with Moss",
	tiles = {"lib_materials_stone_default.png^valc_moss.png"},
	is_ground_content = true,
	light_source = 1,
	groups = {stone=1, crumbly=3},
	drop = 'default:cobble',
	sounds = lib_materials.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("lib_materials:stone_with_lichen", {
	description = "Cave Stone with Lichen",
	tiles = {"lib_materials_stone_default.png^valc_lichen.png"},
	is_ground_content = true,
	light_source = 1,
	groups = {stone=1, crumbly=3},
	drop = 'default:cobble',
	sounds = lib_materials.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("lib_materials:stone_with_algae", {
	description = "Cave Stone with Algae",
	tiles = {"lib_materials_stone_default.png^valc_algae.png"},
	is_ground_content = true,
	light_source = 1,
	groups = {stone=1, crumbly=3},
	drop = 'default:cobble',
	sounds = lib_materials.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.25},
	}),
})

minetest.register_node("lib_materials:stone_with_salt", {
	description = "Cave Stone with Salt",
	tiles = {"lib_materials_mineral_salt_block.png"},--{"caverealms_salty2.png^caverealms_salty.png", "caverealms_salty2.png", "caverealms_salty2.png^caverealms_salty_side.png"},
	light_source = 9,
	paramtype = "light",
	use_texture_alpha = true,
	drawtype = "glasslike",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {stone=1, crumbly=3},
	sounds = lib_materials.node_sound_glass_defaults(),
})


-- --Glow Obsidian
 minetest.register_node("lib_materials:glow_obsidian", {
	 description = "Glowing Obsidian",
	 tiles = {"caverealms_glow_obsidian.png"},
	 is_ground_content = true,
	 groups = {stone=2, crumbly=1},
	 light_source = 7,
	 sounds = lib_materials.node_sound_stone_defaults({
		 footstep = {name="default_stone_footstep", gain=0.25},
	 }),
 })

-- --Glow Obsidian 2 - has traces of lava
 minetest.register_node("lib_materials:glow_obsidian_2", {
	 description = "Hot Glow Obsidian",
	 tiles = {"caverealms_glow_obsidian2.png"},
	 is_ground_content = true,
	 groups = {stone=2, crumbly=1, hot=1},
	 damage_per_second = 1,
	 light_source = 9,
	 sounds = lib_materials.node_sound_stone_defaults({
		 footstep = {name="default_stone_footstep", gain=0.25},
	 }),
 })
--]]
