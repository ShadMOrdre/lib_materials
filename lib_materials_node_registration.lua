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

--game.library.csv.read
--lib_materials.read_csv

--for i, stone in ipairs(game.lib.csv.read("|", lib_materials.path .. "/nodes.csv")) do
for i, stone in ipairs(lib_materials.read_csv("|", lib_materials.path .. "/nodes.csv")) do

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
					backface_culling = true,
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
					backface_culling = true,
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



	--##  register dirt nodes for with grass, with litter, and with ground cover and for biome specific ground cover.
	--##  Dirts:
	--##      Dirt,Black Dirt,Brown Dirt,Clayey Dirt,Red Clay,White Clay,Coarse Dirt,Dark Dirt,
	--##      Dried Dirt,Dry Dirt,Mud,Dried Mud,Permafrost,Sandy Dirt,Silt 01,Silt 02,Silty Dirt,Sod
	--##  Dirts are registered as standalone nodes, as well as, with each of several grass or other ground cover types, listed below.
	--##      Grass(es)(Bamboo,Brown,Cold,Crystal,Dry,Fiery,Gray,Green,Grove,Jungle 01,Mushroom,Prairie),
	--##      Coniferous Litter,Fungal Litter,Leaf Litter 01,Leaf Litter 02,Rainforest Litter,Stones,Vines,Snow,Soil,Wet Soil,Stone,Cobblestone,Desert Cobblestone
	--##  Dirts are also registered for each biome ground cover, according to temperature, humidity and altitude.  Example: 'dirt_with_grass_warm_humid_lowland'.

	local temperatures = {"hot", "warm", "temperate", "cool"}
	local humidities = {"humid", "semihumid", "temperate", "semiarid"}
	local elevations = {"coastal", "lowland", "shelf", "highland"}
	local palettes1 = {
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

	local textures = {}
	if lib_materials.color_grass_use then
			textures = {
				coastal = {
					"lib_materials_grass_jungle_01_top.png", "lib_materials_grass_jungle_01_side.png"
				},
				lowland = {
					"lib_materials_grass_default_top.png", "lib_materials_grass_default_side.png"
				},
				shelf = {
					"lib_materials_grass_dry_default_top.png", "lib_materials_grass_dry_default_side.png"
				},
				highland = {
					"lib_materials_grass_brown_top.png", "lib_materials_grass_brown_side.png"
				}
			}
	else
			textures = {
				coastal = {
					"lib_materials_grass_coastal_top.png", "lib_materials_grass_coastal_side.png"
				},
				lowland = {
					"lib_materials_grass_lowland_top.png", "lib_materials_grass_lowland_side.png"
				},
				shelf = {
					"lib_materials_grass_shelf_top.png", "lib_materials_grass_shelf_side.png"
				},
				highland = {
					"lib_materials_grass_highland_top.png", "lib_materials_grass_highland_side.png"
				}
			}
	end
	local palettes2 = {
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
		{"grass_mushroom", "Mushroom Grass", "lib_materials_grass_mushroom_top.png", "lib_materials_grass_mushroom_side.png"},
		{"grass_prairie", "Prairie Grass", "lib_materials_grass_prairie_top.png", "lib_materials_grass_prairie_side.png"},
		{"litter_coniferous", "Coniferous Litter", "lib_materials_litter_coniferous.png", "lib_materials_litter_coniferous_side.png"},
		{"litter_rainforest", "Rainforest Litter", "lib_materials_litter_rainforest.png", "lib_materials_litter_rainforest_side.png"},
		{"snow", "Snow", "lib_materials_snow.png", "lib_materials_snow_side.png"},
	}
	--Soil Top with Soil Sides masked over Dirt
	local soils = {
		{"soil", "Soil", "lib_materials_ground_soil.png"},
		{"soil_wet", "Wet Soil", "lib_materials_ground_soil_wet.png", "lib_materials_ground_soil_wet_side.png"},
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

	if new_node_type == 2 then
		new_node_def.soil = {
				base = node_name,
				dry = "lib_materials:"..node_name.."_with_soil",
				wet = "lib_materials:"..node_name.."_with_soil_wet"
		}

		minetest.register_node("lib_materials:"..node_name.."", new_node_def)
		minetest.register_alias(""..node_name.."", "lib_materials:"..node_name.."")
		--game.lib.node.register("lib_materials:"..node_name.."", new_node_def)
		--game.lib.node.register_alias("lib_materials", node_name, alias_mod, alias_node)

		for _, sl in pairs(soils) do

			local id = string.lower(sl[1])
			local full =  node_name .. "_with_" .. id
			local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
	
			new_cloned_node.description = descript .. " with " .. sl[1]

			if sl[4] then
				new_cloned_node.tiles = {
						new_tile1 .. "^" .. sl[3],
						new_tile1,
						new_tile1 .. "^" .. sl[4]
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
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
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
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
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
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
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
	
			minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
		end

		for _, t in pairs(temperatures) do
			for _, h in pairs(humidities) do
				for _, e in pairs(elevations) do
	
					local id = node_name .. "_with_grass_" .. t .. "_" .. h .. "_" .. e
	
					local new_cloned_node = table.copy(minetest.registered_nodes["lib_materials:"..node_name..""])
			
					new_cloned_node.description = descript .. " with Grass (" .. t .. "_" .. h .. "_" .. e .. ")"
					new_cloned_node.tiles = {
						textures[e][1] .. "^[colorize:" .. palettes1[t .. "_" .. h],
						new_tile1,
						new_tile1 .. "^(" .. textures[e][2] .. "^[colorize:" .. palettes1[t .. "_" .. h] .. ")"
					}
					new_cloned_node.soil = {
						base = id,
						dry = "lib_materials:"..node_name.."_with_soil",
						wet = "lib_materials:"..node_name.."_with_soil_wet"
					}
			
					minetest.register_node("lib_materials:" .. id .. "", new_cloned_node)
	
				end
			end
		end

		if lib_materials.color_grass_reg then
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
				
						minetest.register_node("lib_materials:" .. full .. "", new_cloned_node)
		
		
						count = count + 1
					end
				end
			end
		end

	else

		minetest.register_node("lib_materials:"..node_name.."", new_node_def)
		minetest.register_alias(""..node_name.."", "lib_materials:"..node_name.."")
		--game.lib.node.register("lib_materials:"..node_name.."", new_node_def)
		--game.lib.node.register_alias("lib_materials", node_name, alias_mod, alias_node)

	end

	if string.find(node_name, "block") or string.find(node_name, "brick") then
		if minetest.global_exists("lib_shapes") then
			lib_shapes.register_basic_set("lib_materials:"..node_name.."")
			--lib_shapes.register_fancy_set("lib_materials:"..node_name.."")
			--lib_shapes.register_doors_set("lib_materials:"..node_name.."")
			--lib_shapes.register_furniture_set("lib_materials:"..node_name.."")
		end
	end


	if alias_mod and alias_node then
		minetest.register_alias(""..alias_mod..":"..alias_node.."", "lib_materials:"..node_name.."")
		minetest.register_alias(""..alias_node.."", "lib_materials:"..node_name.."")
	end




end




