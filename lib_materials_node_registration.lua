--
-- Register lib_material nodes
--
--
--
-- Define constants that can be used in csv

local S = lib_materials.intllib

local function read_node_str(node_str)
	if #node_str > 0 then
		local node, count = node_str:match("([^%s]+)%s*(%d*)")
		return node, tonumber(count) or 1
	end
end


--##  register dirt nodes for with grass, with litter, and with ground cover and for biome specific ground cover.
--##  Dirts:
--##      Dirt,Black Dirt,Brown Dirt,Clay Dirt,Clayey Dirt,Red Clay,White Clay,Coarse Dirt,Compacted Dirt, Dark Dirt,
--##      Dried Dirt,Dry Dirt,Loam,Mud 01,Mud 02,Dried Mud,Peat,Permafrost,Red Dirt,Sandy Dirt,Silt 01,Silt 02,Silt 03,Silty Dirt,Sod
--##  Dirts are registered as standalone nodes, as well as, with each of several grass or other ground cover types, listed below.
--##      Grass(es)(Bamboo,Brown,Cold,Crystal,Dry,Fiery,Grass(Default),Gray,Green,Grove,Jungle 01,Jungle 02,Mushroom,Prairie),
--##      Coniferous Litter,Fungal Litter,Leaf Litter 01,Leaf Litter 02,Rainforest Litter,Stones,Vines,Snow,Soil,Wet Soil,Stone,Cobblestone,Desert Cobblestone
--##  Dirts are also registered for each biome ground cover, according to temperature, humidity and altitude.  Example: 'dirt_with_grass_warm_humid_lowland'.

local temperatures = {"hot", "warm", "temperate", "cool"}
local humidities = {"humid", "semihumid", "temperate", "semiarid"}
local elevations = {"coastal", "lowland", "shelf", "highland"}

--Options are "default", "alt", "duane"
lib_materials.palette_select = "duane"
--Best choices are "80", "128", "144", "160", "192", "255".   This determines the "brightness" of the underlying texture.
lib_materials.palette_sat = "192"
local p_sat = lib_materials.palette_sat


--
--NOTE: Palettes1 and Palettes2 need to use same values.  Palette1 is used against greyscale images, Palette2 is used when the colored grass setting is enabled.
--

local palettes1_alt = {
	hot_humid = "#87bf44:" .. p_sat .."",
	hot_semihumid = "#c3b046:" .. p_sat .."",
	hot_temperate = "#d4934e:" .. p_sat .."",
	hot_semiarid = "#c57460:" .. p_sat .."",
	warm_humid = "#74ab48:" .. p_sat .."",
	warm_semihumid = "#a9a84b:" .. p_sat .."",
	warm_temperate = "#b99551:" .. p_sat .."",
	warm_semiarid = "#c27e55:" .. p_sat .."",
	temperate_humid = "#46ae39:" .. p_sat .."",
	temperate_semihumid = "#8cb032:" .. p_sat .."",
	temperate_temperate = "#b6ab38:" .. p_sat .."",
	temperate_semiarid = "#bf8a3c:" .. p_sat .."",
	cool_humid = "#45ae63:" .. p_sat .."",
	cool_semihumid = "#60b036:" .. p_sat .."",
	cool_temperate = "#9cb43c:" .. p_sat .."",
	cool_semiarid = "#b9b23f:" .. p_sat .."",
}

--across	cool temperate warm hot
--down		humid semihumid temperate semiarid
local palettes2_alt = {
	{
		"#45ae63:" .. p_sat .."", "#46ae39:" .. p_sat .."", "#74ab48:" .. p_sat .."", "#87bf44:" .. p_sat ..""
	},
	{
		"#60b036:" .. p_sat .."", "#8cb032:" .. p_sat .."", "#a9a84b:" .. p_sat .."", "#c3b046:" .. p_sat ..""
	},
	{
		"#9cb43c:" .. p_sat .."", "#b6ab38:" .. p_sat .."", "#b99551:" .. p_sat .."", "#d4934e:" .. p_sat ..""
	},
	{
		"#b9b23f:" .. p_sat .."", "#bf8a3c:" .. p_sat .."", "#c27e55:" .. p_sat .."", "#c57460:" .. p_sat ..""
	}
}



local palettes1_default = {
	hot_humid = "#93fc54:80",
	hot_semihumid = "#fcd953:80",
	hot_temperate = "#fc9754:80",
	hot_semiarid = "#fc5458:80",
	warm_humid = "#81da62:72",
	warm_semihumid = "#dacf61:72",
	warm_temperate = "#daa062:72",
	warm_semiarid = "#da6e62:72",
	temperate_humid = "#36e44b:64",
	temperate_semihumid = "#b1e436:64",
	temperate_temperate = "#e4d136:64",
	temperate_semiarid = "#e48836:64",
	cool_humid = "#43e9a5:48",
	cool_semihumid = "#69e942:48",
	cool_temperate = "#ace943:48",
	cool_semiarid = "#e9df43:48",
}
local palettes2_default = {
	{
		"#43e9a5:80", "#36e44b:80", "#81da62:80", "#93fc54:80"
	},
	{
		"#69e942:80", "#b1e436:80", "#dacf61:80", "#fcd953:80"
	},
	{
		"#ace943:80", "#e4d136:80", "#daa062:80", "#fc9754:80"
	},
	{
		"#e9df43:80", "#e48836:80", "#da6e62:80", "#fc5458:80"
	}
}

--		
-- humid	487221				537626		7a8134
-- semihumid	5c7829		647b2c		6c7e2f		748032
-- temperate	858539		94893f		748032		858539
-- semiarid	9d8c42		b8924c		9d8b42		89853a

--palettes1_duane
local palettes1_duane = {
	hot_humid = "#537626:" .. p_sat .."",
	warm_humid = "#537626:" .. p_sat .."",
	temperate_humid = "#537626:" .. p_sat .."",
	cool_humid = "#537626:" .. p_sat .."",
	hot_semihumid = "#6c7e2f:" .. p_sat .."",
	warm_semihumid = "#6c7e2f:" .. p_sat .."",
	temperate_semihumid = "#6c7e2f:" .. p_sat .."",
	cool_semihumid = "#6c7e2f:" .. p_sat .."",
	hot_temperate = "#748032:" .. p_sat .."",
	warm_temperate = "#748032:" .. p_sat .."",
	temperate_temperate = "#748032:" .. p_sat .."",
	cool_temperate = "#748032:" .. p_sat .."",
	hot_semiarid = "#9d8b42:" .. p_sat .."",
	warm_semiarid = "#9d8b42:" .. p_sat .."",
	temperate_semiarid = "#9d8b42:" .. p_sat .."",
	cool_semiarid = "#9d8b42:" .. p_sat .."",
}
--across	cool temperate warm hot
--down		humid semihumid temperate semiarid
local palettes2_duane = {
	{
		"#9d8b42:" .. p_sat .."", "#748032:" .. p_sat .."", "#6c7e2f:" .. p_sat .."", "#537626:" .. p_sat ..""
	},
	{
		"#9d8b42:" .. p_sat .."", "#748032:" .. p_sat .."", "#6c7e2f:" .. p_sat .."", "#537626:" .. p_sat ..""
	},
	{
		"#9d8b42:" .. p_sat .."", "#748032:" .. p_sat .."", "#6c7e2f:" .. p_sat .."", "#537626:" .. p_sat ..""
	},
	{
		"#9d8b42:" .. p_sat .."", "#748032:" .. p_sat .."", "#6c7e2f:" .. p_sat .."", "#537626:" .. p_sat ..""
	}
}

--[[
--palettes1_duane
local palettes1_duane = {
	hot_humid = "#7a8134:" .. p_sat .."",
	hot_semihumid = "#8b863a:" .. p_sat .."",
	hot_temperate = "#ac8f48:" .. p_sat .."",
	hot_semiarid = "#bd944e:" .. p_sat .."",
	warm_humid = "#677c2d:" .. p_sat .."",
	warm_semihumid = "#788034:" .. p_sat .."",
	warm_temperate = "#988a40:" .. p_sat .."",
	warm_semiarid = "#a98e47:" .. p_sat .."",
	temperate_humid = "#577827:" .. p_sat .."",
	temperate_semihumid = "#687d2e:" .. p_sat .."",
	temperate_temperate = "#88863a:" .. p_sat .."",
	temperate_semiarid = "#998b41:" .. p_sat .."",
	cool_humid = "#487221:" .. p_sat .."",
	cool_semihumid = "#587727:" .. p_sat .."",
	cool_temperate = "#798034:" .. p_sat .."",
	cool_semiarid = "#89853a:" .. p_sat .."",
}
--across	cool temperate warm hot
--down		humid semihumid temperate semiarid
local palettes2_duane = {
	{
		"#487221:" .. p_sat .."", "#577827:" .. p_sat .."", "#677c2d:" .. p_sat .."", "#7a8134:" .. p_sat ..""
	},
	{
		"#587727:" .. p_sat .."", "#687d2e:" .. p_sat .."", "#788034:" .. p_sat .."", "#8b863a:" .. p_sat ..""
	},
	{
		"#798034:" .. p_sat .."", "#88863a:" .. p_sat .."", "#988a40:" .. p_sat .."", "#ac8f48:" .. p_sat ..""
	},
	{
		"#89853a:" .. p_sat .."", "#998b41:" .. p_sat .."", "#a98e47:" .. p_sat .."", "#bd944e:" .. p_sat ..""
	}
}
--]]

local palettes1
local palettes2
if lib_materials.palette_select == "alt" then
	palettes1 = palettes1_alt
	palettes2 = palettes2_alt
elseif lib_materials.palette_select == "duane" then
	palettes1 = palettes1_duane
	palettes2 = palettes2_duane
else
	palettes1 = palettes1_default
	palettes2 = palettes2_default
end


local textures = {}
if lib_materials.color_grass_use then
		textures = {
			humid = {
				"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
			},
			semihumid = {
				"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
			},
			temperate = {
				"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
			},
			semiarid = {
				"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
			}
			--humid = {
			--	"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
			--},
			--semihumid = {
			--	"lib_materials_grass_default_top.png", "lib_materials_grass_default_side.png"
			--},
			--temperate = {
			--	"lib_materials_grass_dry_default_top.png", "lib_materials_grass_dry_default_side.png"
			--},
			--semiarid = {
			--	"lib_materials_grass_brown_top.png", "lib_materials_grass_brown_side.png"
			--}
			----coastal = {
			----	"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
			----},
			----lowland = {
			----	"lib_materials_grass_default_top.png", "lib_materials_grass_default_side.png"
			----},
			----shelf = {
			----	"lib_materials_grass_dry_default_top.png", "lib_materials_grass_dry_default_side.png"
			----},
			----highland = {
			----	"lib_materials_grass_brown_top.png", "lib_materials_grass_brown_side.png"
			----}
		}
else
		textures = {
			hot = {
				"lib_materials_grass_heat_hot_top.png", "lib_materials_grass_heat_hot_side.png"
			},
			warm = {
				"lib_materials_grass_heat_warm_top.png", "lib_materials_grass_heat_warm_side.png"
			},
			temperate = {
				"lib_materials_grass_heat_temperate_top.png", "lib_materials_grass_heat_temperate_side.png"
			},
			cool = {
				"lib_materials_grass_heat_cool_top.png", "lib_materials_grass_heat_cool_side.png"
			}
			--humid = {
			--	"lib_materials_grass_humid_top.png", "lib_materials_grass_humid_side.png"
			--},
			--semihumid = {
			--	"lib_materials_grass_humid_top.png", "lib_materials_grass_humid_side.png"
			--},
			--temperate = {
			--	"lib_materials_grass_humid_top.png", "lib_materials_grass_humid_side.png"
			--},
			--semiarid = {
			--	"lib_materials_grass_humid_top.png", "lib_materials_grass_humid_side.png"
			--}
			----humid = {
			----	"lib_materials_grass_humid_top.png", "lib_materials_grass_humid_side.png"
			----},
			----semihumid = {
			----	"lib_materials_grass_semihumid_top.png", "lib_materials_grass_semihumid_side.png"
			----},
			----temperate = {
			----	"lib_materials_grass_temperate_top.png", "lib_materials_grass_temperate_side.png"
			----},
			----semiarid = {
			----	"lib_materials_grass_semiarid_top.png", "lib_materials_grass_semiarid_side.png"
			----}
			------coastal = {
			------	"lib_materials_grass_coastal_top.png", "lib_materials_grass_coastal_side.png"
			------},
			------lowland = {
			------	"lib_materials_grass_lowland_top.png", "lib_materials_grass_lowland_side.png"
			------},
			------shelf = {
			------	"lib_materials_grass_shelf_top.png", "lib_materials_grass_shelf_side.png"
			------},
			------highland = {
			------	"lib_materials_grass_highland_top.png", "lib_materials_grass_highland_side.png"
			------}
		}
end
local grasses = {
	{"Wet", "lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"},
	{"Lush", "lib_materials_grass_default_top.png", "lib_materials_grass_default_side.png"},
	{"Dry", "lib_materials_grass_dry_default_top.png", "lib_materials_grass_dry_default_side.png"},
	{"Brown", "lib_materials_grass_brown_top.png", "lib_materials_grass_brown_side.png"}
}
--Grass Top with Grass Sides over Dirt
local covers = {
	{"grass", "Grass", "lib_materials_grass_default_top.png", "lib_materials_grass_default_side.png"},
	{"grass_bamboo", "Bamboo Grass", "lib_materials_grass_bamboo_top.png", "lib_materials_grass_bamboo_side.png"},
	{"grass_brown", "Brown Grass", "lib_materials_grass_brown_top.png", "lib_materials_grass_brown_side.png"},
	{"grass_cold", "Cold Grass", "lib_materials_grass_cold_top.png", "lib_materials_grass_cold_side.png"},
	{"grass_crystal", "Crystal Grass", "lib_materials_grass_crystal_top.png", "lib_materials_grass_crystal_side.png"},
	{"grass_dry", "Dry Grass", "lib_materials_grass_dry_default_top.png", "lib_materials_grass_dry_default_side.png"},
	{"grass_fiery", "Fiery Grass", "lib_materials_grass_fiery_top.png", "lib_materials_grass_fiery_side.png"},
	{"grass_gray", "Gray Grass", "lib_materials_grass_gray_top.png", "lib_materials_grass_gray_side.png"},
	{"grass_green", "Green Grass", "lib_materials_grass_green_top.png", "lib_materials_grass_green_side.png"},
	{"grass_grove", "Grove Grass", "lib_materials_grass_grove_top.png", "lib_materials_grass_grove_side.png"},
	{"grass_jungle_01", "Jungle Grass 01", "lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"},
	{"grass_jungle_02", "Jungle Grass 02", "lib_materials_grass_jungle_02_top.png", "lib_materials_grass_jungle_02_side.png"},
	{"grass_leafy", "Leafy Grass", "lib_materials_grass_leafy_top.png", "lib_materials_grass_leafy_side.png"},
	{"grass_mushroom", "Mushroom Grass", "lib_materials_grass_mushroom_top.png", "lib_materials_grass_mushroom_side.png"},
	{"grass_peat_moss", "Peat Moss Grass", "lib_materials_grass_peat_moss_top.png", "lib_materials_grass_peat_moss_side.png"},
	{"grass_prairie", "Prairie Grass", "lib_materials_grass_prairie_top.png", "lib_materials_grass_prairie_side.png"},
	{"grass_swamp", "Swamp Grass", "lib_materials_grass_swamp_top.png", "lib_materials_grass_swamp_side.png"},
	{"litter_coniferous", "Coniferous Litter", "lib_materials_litter_coniferous.png", "lib_materials_litter_coniferous_side.png"},
	{"litter_rainforest", "Rainforest Litter", "lib_materials_litter_rainforest.png", "lib_materials_litter_rainforest_side.png"},
	{"litter_dark", "Dark Litter", "aotearoa_dirt_with_dark_litter.png", "aotearoa_dirt_with_dark_litter_side.png"},
	{"forest_peat", "Forest Peat", "aotearoa_forest_peat.png", "aotearoa_forest_peat_side.png"},
	{"moss", "Moss", "aotearoa_dirt_with_moss.png", "aotearoa_dirt_with_moss_side.png"},
	{"snow", "Snow", "lib_materials_snow.png", "lib_materials_snow_side.png"},
}
--Soil Top with Soil Sides masked over Dirt
	--lib_materials_ground_soil_wet.png	lib_materials_ground_soil_wet_side.png
local soils = {
	{"soil", "Soil", "lib_materials_dirt_soil_mask.png"},
	{"soil_wet", "Wet Soil", "lib_materials_dirt_soil_wet_mask.png", "lib_materials_dirt_with_soil_wet_side.png"},
}


--Dirt with Stone nodes.  Uses mask over dirt.
local stone_dirts = {
	{"stone", "Stone", "lib_materials_stone_default.png^(", "^[mask:lib_materials_mask_stone.png)"},
	{"stone_cobble", "Cobblestone", "lib_materials_stone_cobble_default.png^(", "^[mask:lib_materials_mask_cobble.png)"},
	{"stone_desert_cobble", "Desert Cobblestone", "lib_materials_stone_desert_cobble.png^(", "^[mask:lib_materials_mask_cobble.png)"},
}
--Dirt with Litter nodes that use alpha texture over dirt.
local alpha_litter_dirts = {
	{"litter_fungi", "Fungal Litter", "lib_materials_litter_vine.png", "lib_materials_grass_fungi_side.png"},
	{"litter_leaf_01", "Leaf Litter 01", "lib_materials_litter_leaf_01.png", "lib_materials_litter_coniferous_side.png"},
	{"litter_leaf_02", "Leaf Litter 02", "lib_materials_litter_leaf_02.png", "lib_materials_litter_coniferous_side.png"},
	{"litter_stones", "Stones", "lib_materials_litter_stones.png", "lib_materials_litter_stones_side.png"},
	{"litter_vine", "Vines", "lib_materials_litter_vine.png", "lib_materials_litter_coniferous_side.png"},
}



for i, stone in ipairs(lib_materials.read_csv("|", lib_materials.path .. "/" .. lib_materials.nodes_data_file .. ".csv")) do

	--Node_Name|Description|Alias_Mod|Alias_Node|Tile_String|Draw_Type|Param_Type|ParamType2|LightSource|Walkable|Pointable|Climbable|Diggable|Buildable|Use_Alpha|Alpha|Sun_Prop|Damage_Per_Second|Grnd_Cnt|Legacy|Groups|Groups2|Max_Drops|Drops|Sounds|Group_Cracky|Group_Crumbly|Group_Choppy|Group_Snappy|Group_Bendy|Group_Oddly_Breakable_by_Hand|Group_Level|Group_Stone|Group_Sand|Group_Glass|Group_Ore|Group_Metal|Group_Mineral|Group_Ice|Group_Snowy|Group_Dirt|Group_Grass|Group_Soil|Group_BakedClay|Group_Liquid|Group_Lava|Group_Igniter|Group_Mud|Group_Oil|Group_Flammable|Group_Quicksand|Group_Water|Group_Puts_Out_FIre|Group_Cools_Lava|Group_Falling_Node|Group_Not_In_Creative_Inventory|Group_Drown|Group_Disable_Jump|Group_Mohs|Group_RockType|Grp_MatType|LiquidType|LiquidViscosity|LiquidRange|LiquidRenew|LiquidAltSource|LiquidAltFlow|PostEffectColor
	local node_name, descript, alias_mod, alias_node, tile_string, particle_img, draw_type, param_type, param2, light, walk, point, climb, dig, build, use_alpha, alpha, sun_prop, damage, grnd_cont, leg_min, groups, groups2, max_drop, drops, sounds, grp_crack,grp_crumb,grp_chop,grp_snap,grp_bend,grp_obh,grp_lvl,grp_stone,grp_sand,grp_glass,grp_ore,grp_metal,grp_mineral,grp_ice,grp_snow,grp_dirt,grp_grass,grp_soil,grp_bclay,grp_liquid,grp_lava,grp_ignite,grp_mud,grp_oil,grp_flam,grp_quick,grp_water,grp_pof,grp_cool_lava,grp_fall_node,grp_nici,drown,grp_nojump,grp_mohs,grp_rocktype,grp_mattype, liq_type, liq_visc, liq_range, liq_renew, liq_altsrc, liq_altflow, liq_pec, vframe_w, vframe_h, vframe_l = unpack(stone)

	-- Parse node names: transform empty strings into nil and separate node and count
	node_name = read_node_str(node_name)
	--descript = read_node_str(descript)
	alias_mod = read_node_str(alias_mod)
	alias_node = read_node_str(alias_node)

	local new_node_def = {}
	local new_node_type = 1

	new_node_def.tiles = {}
	new_node_def.groups = {}
	new_node_def.sounds = {}

	if grp_dirt ~= "" and grp_grass == "" then
		if tonumber(grp_dirt) > 0 then
			new_node_type = 2
		end
	end
	
	if string.find(draw_type, "liquid") then
		new_node_type = 3
	end


	if descript ~= "" then
		new_node_def.description = S(""..descript.."")
	end

	if draw_type ~= "" then
		new_node_def.drawtype = draw_type
	end

	if param_type ~= "" then
		new_node_def.paramtype = param_type
	end

	if param2 ~= "" then
		new_node_def.paramtype2 = param2
	end

	if light ~= "" then
		new_node_def.light_source = tonumber(light)
	end

	if walk ~= "" then
		if string.lower(walk) == "true" then
			new_node_def.walkable = true
		else
			new_node_def.walkable = false
		end
	end

	if point ~= "" then
		if string.lower(point) == "true" then
			new_node_def.pointable = true
		else
			new_node_def.pointable = false
		end
	end

	if climb ~= "" then
		if string.lower(climb) == "true" then
			new_node_def.climbable = true
		else
			new_node_def.climbable = false
		end
	end

	if dig ~= "" then
		if string.lower(dig) == "true" then
			new_node_def.diggable = true
		else
			new_node_def.diggable = false
		end
	end

	if build ~= "" then
		if string.lower(build) == "true" then
			new_node_def.buildable_to = true
		else
			new_node_def.buildable_to = false
		end
	end

	if use_alpha ~= "" then
		new_node_def.use_texture_alpha = string.lower(use_alpha)
	end

	if alpha ~= "" then
		if string.lower(alpha) == "true" then
			new_node_def.alpha = true
		else
			new_node_def.alpha = false
		end
	end

	if alpha ~= "" then
		new_node_def.alpha = tonumber(alpha)
	end

	if sun_prop ~= "" then
		if string.lower(sun_prop) == "true" then
			new_node_def.sunlight_propagates = true
		else
			new_node_def.sunlight_propagates = false
		end
	end

	if damage ~= "" then
		if tonumber(damage) > 0 then
			new_node_def.damage_per_second = tonumber(damage)
		end
	end

	if grnd_cont ~= "" then
		if string.lower(grnd_cont) == "true" then
			new_node_def.is_ground_content = true
		else
			new_node_def.is_ground_content = false
		end
	end

	if leg_min ~= "" then
		if string.lower(leg_min) == "true" then
			new_node_def.legacy_mineral = true
		else
			new_node_def.legacy_mineral = false
		end
	end

	if drown ~= "" then
		new_node_def.drowning = tonumber(drown)
	end

	if liq_type ~= "" then
		new_node_def.liquidtype = liq_type
	end

	if liq_altflow ~= "" then
		new_node_def.liquid_alternative_flowing = "lib_materials:" .. liq_altflow
	end

	if liq_altsrc ~= "" then
		new_node_def.liquid_alternative_source = "lib_materials:" .. liq_altsrc
	end

	if liq_renew ~= "" then
		if string.lower(liq_renew) == "true" then
			new_node_def.liquid_renewable = true
		else
			new_node_def.liquid_renewable = false
		end
	end
	if liq_renew ~= "" then
		new_node_def.liquid_renewable = string.lower(liq_renew)
	end

	if liq_visc ~= "" then
		new_node_def.liquid_viscosity = tonumber(liq_visc)
	end

	if liq_range ~= "" then
		new_node_def.liquid_range = tonumber(liq_range)
	end

	if liq_pec ~= "" then
		--new_node_def.post_effect_color = liq_pec
	end


	if drops == "" then
		drops = nil
	end

	if drops then

		if drops:find("[^%,% ]") then

			local new_drop1, new_drop2, new_drop3, new_drop4, new_drop5, new_drop6
			new_node_def.drop = {}

			if max_drop then
				new_node_def.drop.max_items = max_drop
			end

			new_node_def.drop.items = {}
			new_drop1, new_drop2, new_drop3, new_drop4, new_drop5, new_drop6 = unpack(drops:split(",", true))

			local new_drop_name, new_drop_rarity
			if new_drop1 then

				new_drop_name, new_drop_rarity = unpack(new_drop1:split(" ", true))
				if new_drop_name then
					if new_drop_rarity then
						new_node_def.drop.items[1] = {items = {new_drop_name}, rarity = tonumber(new_drop_rarity)}
					else
						new_node_def.drop.items[1] = {items = {new_drop_name}}
					end
				else
					new_node_def.drop.items[1] = {items = {new_drop1}}
				end
			else
				new_node_def.drop.items[1] = {items = {drops}}
			end
			if new_drop2 then

				new_drop_name, new_drop_rarity = unpack(new_drop2:split(" ", true))
				if new_drop_name then
					if new_drop_rarity then
						new_node_def.drop.items[2] = {items = {new_drop_name}, rarity = tonumber(new_drop_rarity)}
					else
						new_node_def.drop.items[2] = {items = {new_drop_name}}
					end
				else
					new_node_def.drop.items[2] = {items = {new_drop2}}
				end
			else
				new_node_def.drop.items[2] = {items = {drops}}
			end
			if new_drop3 then

				new_drop_name, new_drop_rarity = unpack(new_drop3:split(" ", true))
				if new_drop_name then
					if new_drop_rarity then
						new_node_def.drop.items[3] = {items = {new_drop_name}, rarity = tonumber(new_drop_rarity)}
					else
						new_node_def.drop.items[3] = {items = {new_drop_name}}
					end
				else
					new_node_def.drop.items[3] = {items = {new_drop3}}
				end
			else
				new_node_def.drop.items[3] = {items = {drops}}
			end
			if new_drop4 then

				new_drop_name, new_drop_rarity = unpack(new_drop4:split(" ", true))
				if new_drop_name then
					if new_drop_rarity then
						new_node_def.drop.items[4] = {items = {new_drop_name}, rarity = tonumber(new_drop_rarity)}
					else
						new_node_def.drop.items[4] = {items = {new_drop_name}}
					end
				else
					new_node_def.drop.items[4] = {items = {new_drop4}}
				end
			else
				new_node_def.drop.items[4] = {items = {drops}}
			end
			if new_drop5 then

				new_drop_name, new_drop_rarity = unpack(new_drop5:split(" ", true))
				if new_drop_name then
					if new_drop_rarity then
						new_node_def.drop.items[5] = {items = {new_drop_name}, rarity = tonumber(new_drop_rarity)}
					else
						new_node_def.drop.items[5] = {items = {new_drop_name}}
					end
				else
					new_node_def.drop.items[5] = {items = {new_drop5}}
				end
			else
				new_node_def.drop.items[5] = {items = {drops}}
			end
			if new_drop6 then

				new_drop_name, new_drop_rarity = unpack(new_drop6:split(" ", true))
				if new_drop_name then
					if new_drop_rarity then
						new_node_def.drop.items[6] = {items = {new_drop_name}, rarity = tonumber(new_drop_rarity)}
					else
						new_node_def.drop.items[6] = {items = {new_drop_name}}
					end
				else
					new_node_def.drop.items[6] = {items = {new_drop6}}
				end
			else
				new_node_def.drop.items[6] = {items = {drops}}
			end

		else
			new_node_def.drop = drops
		end
	end

	local new_tile1, new_tile2, new_tile3, new_tile4, new_tile5, new_tile6
	if tile_string then
		if tile_string:find("[^%,% ]") then
			new_tile1, new_tile2, new_tile3, new_tile4, new_tile5, new_tile6 = unpack(tile_string:split(",", true))
		else
			new_tile1 = tile_string
		end
	end

	if particle_img then
		if particle_img ~= "" then
			new_node_def.particle_image = particle_img
		--else
			--new_node_def.particle_image = new_tile1
		end
	end

	if new_node_type == 3 then		--Fluids
		if draw_type == "flowingliquid" then
			new_node_def.tiles[1] = new_tile1
			new_node_def.special_tiles = {
				{
					name = new_tile2,
					backface_culling = false,
					animation = {
						type = "vertical_frames",
						aspect_w = tonumber(vframe_w),
						aspect_h = tonumber(vframe_h),
						length = tonumber(vframe_l),
					},
				},
				{
					name = new_tile2,
					backface_culling = true,		--true
					animation = {
						type = "vertical_frames",
						aspect_w = tonumber(vframe_w),
						aspect_h = tonumber(vframe_h),
						length = tonumber(vframe_l),
					},
				},
			}
		else
			new_node_def.tiles = {
				{
					name = new_tile1,
					backface_culling = false,
					animation = {
						type = "vertical_frames",
						aspect_w = tonumber(vframe_w),
						aspect_h = tonumber(vframe_h),
						length = tonumber(vframe_l),
					},
				},
				{
					name = new_tile1,
					backface_culling = true,		--true
					animation = {
						type = "vertical_frames",
						aspect_w = tonumber(vframe_w),
						aspect_h = tonumber(vframe_h),
						length = tonumber(vframe_l),
					},
				},
			}
		end
	else
		if new_tile1 then
			new_node_def.tiles[1] = new_tile1
		end
		if new_tile2 and new_tile2 ~= "" then
			new_node_def.tiles[2] = new_tile2
		else
			new_node_def.tiles[2] = new_tile1
		end
		if new_tile3 and new_tile3 ~= "" then
			new_node_def.tiles[3] = new_tile3
		else
			new_node_def.tiles[3] = new_tile2
		end
		if new_tile4 and new_tile4 ~= "" then
			new_node_def.tiles[4] = new_tile4
		else
			new_node_def.tiles[4] = new_tile3
		end
		if new_tile5 and new_tile5 ~= "" then
			new_node_def.tiles[5] = new_tile5
		else
			new_node_def.tiles[5] = new_tile3
		end
		if new_tile6 and new_tile6 ~= "" then
			new_node_def.tiles[6] = new_tile6
		else
			new_node_def.tiles[6] = new_tile3
		end
	end
	
	if sounds and sounds ~= "" then
		--sounds = assert(loadstring(sounds))() or lib_materials.node_sound_stone_defaults(),
		--new_node_def.sounds = assert(loadstring(sounds))() or lib_materials.node_sound_stone_defaults()
		if sounds == "dirt" then
			new_node_def.sounds = lib_materials.node_sound_dirt_defaults()
		elseif sounds == "stone" then
			new_node_def.sounds = lib_materials.node_sound_stone_defaults()
		elseif sounds == "sand" then
			new_node_def.sounds = lib_materials.node_sound_sand_defaults()
		elseif sounds == "gravel" then
			new_node_def.sounds = lib_materials.node_sound_gravel_defaults()
		elseif sounds == "glass" then
			new_node_def.sounds = lib_materials.node_sound_glass_defaults()
		elseif sounds == "grass" then
			new_node_def.sounds = lib_materials.node_sound_leaves_defaults()
		elseif sounds == "metal" then
			new_node_def.sounds = lib_materials.node_sound_metal_defaults()
		elseif sounds == "water" then
			new_node_def.sounds = lib_materials.node_sound_water_defaults()
		elseif sounds == "snow" then
			new_node_def.sounds = lib_materials.node_sound_snow_defaults()
		else

		end
	end

	if groups2 then

		local new_node_groups = groups2:split(",", true)
		for _, nng in pairs(new_node_groups) do

			local g_name, g_val = unpack(nng:split(" ", true))

			new_node_def.groups[g_name] = tonumber(g_val)
		end

	end



	if new_node_type == 2 then
		new_node_def.soil = {
				base = node_name,
				dry = "lib_materials:"..node_name.."_with_soil",
				wet = "lib_materials:"..node_name.."_with_soil_wet"
		}

		minetest.register_node("lib_materials:"..node_name.."", new_node_def)
		minetest.register_alias(node_name, "lib_materials:"..node_name.."")

		for _, sl in pairs(soils) do

			local id = string.lower(sl[1])
			local full =  node_name .. "_with_" .. id
			local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
	
			new_cloned_node.description = descript .. " with " .. sl[2]

			if sl[4] then
				new_cloned_node.tiles = {
						new_tile1 .. "^" .. sl[3],
						new_tile1 .. "^" .. sl[4],
					}
			else
				new_cloned_node.tiles = {
						new_tile1 .. "^" .. sl[3],
						new_tile1,
					}
			end

			new_cloned_node.soil = {
					base = full,
					dry = "lib_materials:"..node_name.."_with_soil",
					wet = "lib_materials:"..node_name.."_with_soil_wet"
				}
			new_cloned_node.groups["not_in_creative_inventory"] = 1
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
			minetest.register_alias(full, "lib_materials:"..full.."")

		end

		for _, cv in pairs(covers) do

			local id = string.lower(cv[1])
			local full =  node_name .. "_with_" .. id
			local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
	
			new_cloned_node.description = descript .. " with " .. cv[2]

			if cv[4] then
				new_cloned_node.tiles = {
						cv[3],
						new_tile1,
						new_tile1 .. "^" .. cv[4]
					}
			else
				new_cloned_node.tiles = {
						cv[3],
						new_tile1,
					}
			end

			new_cloned_node.soil = {
					base = full,
					dry = "lib_materials:"..node_name.."_with_soil",
					wet = "lib_materials:"..node_name.."_with_soil_wet"
				}
			new_cloned_node.groups["not_in_creative_inventory"] = 1
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
			minetest.register_alias(full, "lib_materials:"..full.."")

		end

		for _, sd in pairs(stone_dirts) do

			local id = string.lower(sd[1])
			local full =  node_name .. "_with_" .. id
			local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
	
			new_cloned_node.description = descript .. " with " .. sd[1]
			new_cloned_node.tiles = {sd[3] .. new_tile1 .. sd[4]}
			new_cloned_node.soil = {
					base = full,
					dry = "lib_materials:"..node_name.."_with_soil",
					wet = "lib_materials:"..node_name.."_with_soil_wet"
				}
			new_cloned_node.groups["not_in_creative_inventory"] = 1
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
			minetest.register_alias(full, "lib_materials:"..full.."")

		end

		for _, alph in pairs(alpha_litter_dirts) do

			local id = string.lower(alph[1])
			local full =  node_name .. "_with_" .. id
			local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
	
			new_cloned_node.description = descript .. " with " .. alph[1]

			new_cloned_node.tiles = {
					new_tile1 .. "^" .. alph[3],
					new_tile1,
					new_tile1 .. "^" .. alph[4]
				}

			new_cloned_node.soil = {
					base = full,
					dry = "lib_materials:"..node_name.."_with_soil",
					wet = "lib_materials:"..node_name.."_with_soil_wet"
				}
			new_cloned_node.groups["not_in_creative_inventory"] = 1
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
			minetest.register_alias(full, "lib_materials:"..full.."")

		end

		for _, t in pairs(temperatures) do
			for _, h in pairs(humidities) do
				--for _, e in pairs(elevations) do
	
					--local id = node_name .. "_with_grass_" .. t .. "_" .. h .. "_" .. e
					local id = node_name .. "_with_grass_" .. t .. "_" .. h
	
					local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
			
					--new_cloned_node.description = descript .. " with Grass (" .. t .. "_" .. h .. "_" .. e .. ")"
					new_cloned_node.description = descript .. " with Grass (" .. t .. "_" .. h .. ")"

					new_cloned_node.tiles = {
						textures[t][1] .. "^[colorize:" .. palettes1[t .. "_" .. h],
						new_tile1,
						new_tile1 .. "^(" .. textures[t][2] .. "^[colorize:" .. palettes1[t .. "_" .. h] .. ")"
					}
					new_cloned_node.soil = {
						base = id,
						dry = "lib_materials:"..node_name.."_with_soil",
						wet = "lib_materials:"..node_name.."_with_soil_wet"
					}
					new_cloned_node.groups["not_in_creative_inventory"] = 1
			
					minetest.register_node("lib_materials:" .. id .. "", new_cloned_node)
					minetest.register_alias(id, "lib_materials:"..id.."")

				--end
			end
		end

		if lib_materials.color_grass_reg == true then
			for _, g in pairs(grasses) do
				local count = 1
				for _, ps in pairs(palettes2) do
					local id = string.lower(g[1])
					for _, p in pairs(ps) do
		
						local num = string.format("%02d", count)
						local full =  node_name .. "_with_grass_" .. id .. "_" .. num
		
						local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
				
						new_cloned_node.description = descript .. " with Grass " .. g[1] .. " (" .. num .. ")"
						new_cloned_node.tiles = {
								g[2] .. "^[colorize:" .. p,
								new_tile1,
								new_tile1 .. "^(" .. g[3] .. "^[colorize:" .. p
									.. ")"
							}
						new_cloned_node.soil = {
								base = full,
								dry = "lib_materials:"..node_name.."_with_soil",
								wet = "lib_materials:"..node_name.."_with_soil_wet"
							}
						new_cloned_node.groups["not_in_creative_inventory"] = 1
				
						minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
						minetest.register_alias(full, "lib_materials:"..full.."")
		
						count = count + 1
					end
				end
			end
		end

	else

		minetest.register_node("lib_materials:"..node_name.."", new_node_def)
		minetest.register_alias(""..node_name.."", "lib_materials:"..node_name.."")

	end

	if lib_materials.enable_lib_shapes == true then
		if minetest.global_exists("lib_shapes") then
			--if node_name == "stone" or node_name == "stone_desert" or node_name == "stone_sandstone" or node_name == "stone_sandstone_desert"
			--	or node_name == "stone_sandstone_silver" or node_name == "stone_obsidian" then

			--	if (string.find(node_name, "_block") or string.find(node_name, "_brick") or string.find(node_name, "_cobble") or string.find(node_name, "_rubble") or string.find(node_name, "_rockwall")) then

					--lib_shapes.register_basic_set("lib_materials:"..node_name.."")
			--		lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
			--		lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
			--		lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
			--		lib_shapes.register_node("lib_materials:"..node_name.."", "slab")

			--	end
			--end

			if node_name == "stone" or node_name == "stone_block" or node_name == "stone_brick" or node_name == "stone_cobble" or node_name == "stone_cobble_mossy" or node_name == "stone_rockwall" then
				lib_shapes.register_basic_set("lib_materials:"..node_name.."")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if node_name == "stone_desert" or node_name == "stone_desert_block" or node_name == "stone_desert_brick" or node_name == "stone_desert_cobble" or node_name == "stone_desert_rockwall" then
				lib_shapes.register_basic_set("lib_materials:"..node_name.."")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if node_name == "stone_sandstone" or node_name == "stone_sandstone_block" or node_name == "stone_sandstone_brick" or node_name == "stone_sandstone_cobble" then
				lib_shapes.register_basic_set("lib_materials:"..node_name.."")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if node_name == "stone_sandstone_desert" or node_name == "stone_sandstone_desert_block" or node_name == "stone_sandstone_desert_brick" or node_name == "stone_sandstone_desert_cobble" then
				lib_shapes.register_basic_set("lib_materials:"..node_name.."")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if node_name == "stone_sandstone_silver" or node_name == "stone_sandstone_silver_block" or node_name == "stone_sandstone_silver_brick" or node_name == "stone_sandstone_silver_cobble" then
				lib_shapes.register_basic_set("lib_materials:"..node_name.."")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if node_name == "stone_obsidian" or node_name == "stone_obsidian_block" or node_name == "stone_obsidian_brick" then
				lib_shapes.register_basic_set("lib_materials:"..node_name.."")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				--lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if string.find(node_name, "mineral_quartz") then

				--lib_shapes.register_basic_set("lib_materials:"..node_name.."")

			end

			if string.find(node_name, "roof") then
				lib_shapes.register_node("lib_materials:"..node_name.."", "roof")
				lib_shapes.register_node("lib_materials:"..node_name.."", "stairs")
				lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_inner")
				lib_shapes.register_node("lib_materials:"..node_name.."", "stairs_outer")
				lib_shapes.register_node("lib_materials:"..node_name.."", "slab")
			end

			if string.find(node_name, "glass") then

				lib_shapes.register_node("lib_materials:"..node_name.."", "pane")
				lib_shapes.register_node("lib_materials:"..node_name.."", "pane_centered")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "door_centered")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "door_centered_right")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "door_centered_with_window")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "door_centered_with_window_right")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "door_centered_sliding")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "door_centered_sliding_right")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "trapdoor_solid")
				--lib_shapes.register_door_node("lib_materials:"..node_name.."", "trapdoor_with_window")

			end

		end

		if minetest.global_exists("lib_slopes") then
			if string.find(node_name, "dirt") or string.find(node_name, "sand") then
				--lib_slopes.register_basic_slopes("lib_materials:"..node_name.."")
			end
		end
	end

	if alias_mod and alias_node then
		minetest.register_alias(""..alias_mod..":"..alias_node.."", "lib_materials:"..node_name.."")
	end

end


	--minetest.register_alias(""..node_name.."", "lib_materials:"..node_name.."")
	--minetest.register_alias(""..node_name.."", "lib_materials:"..node_name.."")

	--minetest.register_alias("default:dirt_with_grass", "lib_materials:dirt_with_grass")
	--minetest.register_alias("default:dirt_with_dry_grass", "lib_materials:dirt_with_grass_dry")
--[[
	if lib_materials.enable_lib_shapes == true then
		if minetest.global_exists("lib_shapes") then
			minetest.register_alias("stairs:stair_stone", "lib_materials:stone_stairs")
			minetest.register_alias("stairs:stair_inner_stone", "lib_materials:stone_stairs_inner")
			minetest.register_alias("stairs:stair_outer_stone", "lib_materials:stone_stairs_outer")
			minetest.register_alias("stairs:slab_stone", "lib_materials:stone_slab")
			minetest.register_alias("stairs:stair_stone_block", "lib_materials:stone_block_stairs")
			minetest.register_alias("stairs:stair_inner_stone_block", "lib_materials:stone_block_stairs_inner")
			minetest.register_alias("stairs:stair_outer_stone_block", "lib_materials:stone_block_stairs_outer")
			minetest.register_alias("stairs:slab_stone_block", "lib_materials:stone_block_slab")
			minetest.register_alias("stairs:stair_stonebrick", "lib_materials:stone_brick_stairs")
			minetest.register_alias("stairs:stair_inner_stonebrick", "lib_materials:stone_brick_stairs_inner")
			minetest.register_alias("stairs:stair_outer_stonebrick", "lib_materials:stone_brick_stairs_outer")
			minetest.register_alias("stairs:slab_stonebrick", "lib_materials:stone_brick_slab")
			minetest.register_alias("stairs:stair_cobble", "lib_materials:stone_cobble_stairs")
			minetest.register_alias("stairs:stair_inner_cobble", "lib_materials:stone_cobble_stairs_inner")
			minetest.register_alias("stairs:stair_outer_cobble", "lib_materials:stone_cobble_stairs_outer")
			minetest.register_alias("stairs:slab_cobble", "lib_materials:stone_cobble_slab")
			minetest.register_alias("stairs:stair_mossycobble", "lib_materials:stone_cobble_mossy_stairs")
			minetest.register_alias("stairs:stair_inner_mossycobble", "lib_materials:stone_cobble_mossy_stairs_inner")
			minetest.register_alias("stairs:stair_outer_mossycobble", "lib_materials:stone_cobble_mossy_stairs_outer")
			minetest.register_alias("stairs:slab_mossycobble", "lib_materials:stone_cobble_mossy_slab")
			
			minetest.register_alias("stairs:stair_desert_stone", "lib_materials:stone_desert_stairs")
			minetest.register_alias("stairs:stair_inner_desert_stone", "lib_materials:stone_desert_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_stone", "lib_materials:stone_desert_stairs_outer")
			minetest.register_alias("stairs:slab_desert_stone", "lib_materials:stone_desert_slab")
			minetest.register_alias("stairs:stair_desert_stone_block", "lib_materials:stone_desert_block_stairs")
			minetest.register_alias("stairs:stair_inner_desert_stone_block", "lib_materials:stone_desert_block_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_stone_block", "lib_materials:stone_desert_block_stairs_outer")
			minetest.register_alias("stairs:slab_desert_stone_block", "lib_materials:stone_desert_block_slab")
			minetest.register_alias("stairs:stair_desert_stonebrick", "lib_materials:stone_desert_brick_stairs")
			minetest.register_alias("stairs:stair_inner_desert_stonebrick", "lib_materials:stone_desert_brick_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_stonebrick", "lib_materials:stone_desert_brick_stairs_outer")
			minetest.register_alias("stairs:slab_desert_stonebrick", "lib_materials:stone_desert_brick_slab")
			minetest.register_alias("stairs:stair_desert_cobble", "lib_materials:stone_desert_cobble_stairs")
			minetest.register_alias("stairs:stair_inner_desert_cobble", "lib_materials:stone_desert_cobble_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_cobble", "lib_materials:stone_desert_cobble_stairs_outer")
			minetest.register_alias("stairs:slab_desert_cobble", "lib_materials:stone_desert_cobble_slab")
			
			minetest.register_alias("stairs:stair_sandstone", "lib_materials:stone_sandstone_stairs")
			minetest.register_alias("stairs:stair_inner_sandstone", "lib_materials:stone_sandstone_stairs_inner")
			minetest.register_alias("stairs:stair_outer_sandstone", "lib_materials:stone_sandstone_stairs_outer")
			minetest.register_alias("stairs:slab_sandstone", "lib_materials:stone_sandstone_slab")
			minetest.register_alias("stairs:stair_sandstone_block", "lib_materials:stone_sandstone_block_stairs")
			minetest.register_alias("stairs:stair_inner_sandstone_block", "lib_materials:stone_sandstone_block_stairs_inner")
			minetest.register_alias("stairs:stair_outer_sandstone_block", "lib_materials:stone_sandstone_block_stairs_outer")
			minetest.register_alias("stairs:slab_sandstone_block", "lib_materials:stone_sandstone_block_slab")
			minetest.register_alias("stairs:stair_sandstonebrick", "lib_materials:stone_sandstone_brick_stairs")
			minetest.register_alias("stairs:stair_inner_sandstonebrick", "lib_materials:stone_sandstone_brick_stairs_inner")
			minetest.register_alias("stairs:stair_outer_sandstonebrick", "lib_materials:stone_sandstone_brick_stairs_outer")
			minetest.register_alias("stairs:slab_sandstonebrick", "lib_materials:stone_sandstone_brick_slab")
			
			minetest.register_alias("stairs:stair_desert_sandstone", "lib_materials:stone_sandstone_desert_stairs")
			minetest.register_alias("stairs:stair_inner_desert_sandstone", "lib_materials:stone_sandstone_desert_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_sandstone", "lib_materials:stone_sandstone_desert_stairs_outer")
			minetest.register_alias("stairs:slab_desert_sandstone", "lib_materials:stone_sandstone_desert_slab")
			minetest.register_alias("stairs:stair_desert_sandstone_block", "lib_materials:stone_sandstone_desert_block_stairs")
			minetest.register_alias("stairs:stair_inner_desert_sandstone_block", "lib_materials:stone_sandstone_desert_block_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_sandstone_block", "lib_materials:stone_sandstone_desert_block_stairs_outer")
			minetest.register_alias("stairs:slab_desert_sandstone_block", "lib_materials:stone_sandstone_desert_block_slab")
			minetest.register_alias("stairs:stair_desert_sandstone_brick", "lib_materials:stone_sandstone_desert_brick_stairs")
			minetest.register_alias("stairs:stair_inner_desert_sandstone_brick", "lib_materials:stone_sandstone_desert_brick_stairs_inner")
			minetest.register_alias("stairs:stair_outer_desert_sandstone_brick", "lib_materials:stone_sandstone_desert_brick_stairs_outer")
			minetest.register_alias("stairs:slab_desert_sandstone_brick", "lib_materials:stone_sandstone_desert_brick_slab")
			
			minetest.register_alias("stairs:stair_silver_sandstone", "lib_materials:stone_sandstone_silver_stairs")
			minetest.register_alias("stairs:stair_inner_silver_sandstone", "lib_materials:stone_sandstone_silver_stairs_inner")
			minetest.register_alias("stairs:stair_outer_silver_sandstone", "lib_materials:stone_sandstone_silver_stairs_outer")
			minetest.register_alias("stairs:slab_silver_sandstone", "lib_materials:stone_sandstone_silver_slab")
			minetest.register_alias("stairs:stair_silver_sandstone_block", "lib_materials:stone_sandstone_silver_block_stairs")
			minetest.register_alias("stairs:stair_inner_silver_sandstone_block", "lib_materials:stone_sandstone_silver_block_stairs_inner")
			minetest.register_alias("stairs:stair_outer_silver_sandstone_block", "lib_materials:stone_sandstone_silver_block_stairs_outer")
			minetest.register_alias("stairs:slab_silver_sandstone_block", "lib_materials:stone_sandstone_silver_block_slab")
			minetest.register_alias("stairs:stair_silver_sandstone_brick", "lib_materials:stone_sandstone_silver_brick_stairs")
			minetest.register_alias("stairs:stair_inner_silver_sandstone_brick", "lib_materials:stone_sandstone_silver_brick_stairs_inner")
			minetest.register_alias("stairs:stair_outer_silver_sandstone_brick", "lib_materials:stone_sandstone_silver_brick_stairs_outer")
			minetest.register_alias("stairs:slab_silver_sandstone_brick", "lib_materials:stone_sandstone_silver_brick_slab")
			
			minetest.register_alias("stairs:stair_obsidian", "lib_materials:stone_obsidian_stairs")
			minetest.register_alias("stairs:stair_inner_obsidian", "lib_materials:stone_obsidian_stairs_inner")
			minetest.register_alias("stairs:stair_outer_obsidian", "lib_materials:stone_obsidian_stairs_outer")
			minetest.register_alias("stairs:slab_obsidian", "lib_materials:stone_obsidian_slab")
			minetest.register_alias("stairs:stair_obsidian_block", "lib_materials:stone_obsidian_block_stairs")
			minetest.register_alias("stairs:stair_inner_obsidian_block", "lib_materials:stone_obsidian_block_stairs_inner")
			minetest.register_alias("stairs:stair_outer_obsidian_block", "lib_materials:stone_obsidian_block_stairs_outer")
			minetest.register_alias("stairs:slab_obsidian_block", "lib_materials:stone_obsidian_block_slab")
			minetest.register_alias("stairs:stair_obsidianbrick", "lib_materials:stone_obsidian_brick_stairs")
			minetest.register_alias("stairs:stair_inner_obsidianbrick", "lib_materials:stone_obsidian_brick_stairs_inner")
			minetest.register_alias("stairs:stair_outer_obsidianbrick", "lib_materials:stone_obsidian_brick_stairs_outer")
			minetest.register_alias("stairs:slab_obsidianbrick", "lib_materials:stone_obsidian_brick_slab")
		end
	end
--]]


