

local S = lib_materials.intllib


--GLASS
--[[
minetest.register_node("lib_materials:glass_clean", {
	description = S("Glass - Clean"),
	tiles = {"moreblocks_clean_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	drop = 'lib_materials:clean_glass',
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_coal", {
	description = S("Glass - Coal"),
	tiles = {"moreblocks_coal_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	drop = 'lib_materials:coal_glass',
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_iron", {
	description = S("Glass - Iron"),
	tiles = {"moreblocks_iron_glass.png"},
	drawtype = "glasslike_framed",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	drop = 'lib_materials:iron_glass',
	sounds = default.node_sound_glass_defaults(),
})
--]]


minetest.register_node("lib_materials:glass_framed_diamond", {
	description = S("Glass - Framed Diamond"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_diamond.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_round", {
	description = S("Glass - Framed Round"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_round.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_square", {
	description = S("Glass - Framed Square"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_square.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_steel_01", {
	description = S("Glass - Framed Steel 01"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_steel_01_nbea.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_steel_02", {
	description = S("Glass - Framed Steel 02"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_steel_02_nbea.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_wood_01", {
	description = S("Glass - Framed Wood 01"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_wood_01_nbea.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_wood_02", {
	description = S("Glass - Framed Wood 02"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_wood_02_nbea.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_framed_wood_03", {
	description = S("Glass - Framed Wood 03"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_wood_darkage.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:frame_wood_rose", {
	description = S("Frame - Wood Rose"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_wood_medieval_rose.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:frame_wood_screen", {
	description = S("Frame - Wood Screen"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_frame_wood_xdecor.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("lib_materials:glass_stained", {
	description = S("Glass - Stained"),
	drawtype = "glasslike_framed",
	tiles = {"lib_materials_glass_stained_nbea.png"},
	use_texture_alpha = true,
	paramtype = "light",
	sunlight_propagates = true,
	groups = {snappy = 2, cracky = 3, oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
})






