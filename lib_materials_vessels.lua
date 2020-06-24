
lib_materials.vessels = {}
local S = lib_materials.intllib


local function get_itemdef_field(nodename, fieldname)
    if not minetest.registered_items[nodename] then
        return nil
    end
    return minetest.registered_items[nodename][fieldname]
end

function lib_materials.fluid_short(str)
	return string.lower(str):gsub("%s", "_")
end

function lib_materials.vessels.get_is_vessel(stack)
	return minetest.get_item_group(stack:get_name(), "vessel") > 0
end

function lib_materials.vessels.get_is_empty_vessel(stack)
	return minetest.get_item_group(stack:get_name(), "vessel_blank") > 0
end

function lib_materials.vessels.get_vessel_contents(stack)
	if not lib_materials.vessels.get_is_vessel(stack) then return nil end
	local fcapacity = get_itemdef_field(stack:get_name(), "_vessel_capacity")
	local ffluid    = get_itemdef_field(stack:get_name(), "_vessel_source")

	local meta = stack:get_meta()
	local contents = meta:get_int("contents")
	if not contents then
		contents = 0
	end

	return contents, ffluid, fcapacity
end

local function update_vessel(stack)
	local def_desc = get_itemdef_field(stack:get_name(), "description")
	local meta = stack:get_meta()
	local contents, fluid_name, capacity = lib_materials.vessels.get_vessel_contents(stack)

	meta:set_string("description", def_desc.."\nContains "..contents.."/"..capacity.." mB")

	return stack
end

function lib_materials.vessels.add_fluid(stack, source_name, amount)
	if not lib_materials.vessels.get_is_vessel(stack) then return nil end
	local source_node = minetest.registered_nodes[source_name]
	local fluid       = fluid_lib.cleanse_node_description(source_name)
	local internal    = lib_materials.fluid_short(fluid)
	local vesselname   = stack:get_name()

	if minetest.get_item_group(vesselname, "vessel_blank") > 0 then
		stack = ItemStack(vesselname.."_"..internal)
	end

	local meta = stack:get_meta()
	local contents, fluid_name, capacity = lib_materials.vessels.get_vessel_contents(stack)

	local remainder = 0

	if contents + amount > capacity then
		remainder = (contents + amount) - capacity
		contents = capacity
	else
		contents = contents + amount
	end

	meta:set_int("contents", contents)
	stack = update_vessel(stack)

	return stack, remainder
end

function lib_materials.vessels.take_fluid(stack, amount)
	if not lib_materials.vessels.get_is_vessel(stack) then return nil end

	local meta = stack:get_meta()
	local contents, fluid_name, capacity = lib_materials.vessels.get_vessel_contents(stack)
	local blank = get_itemdef_field(stack:get_name(), "_vessel_blank")

	local leftover = 0
	if contents - amount < 0 then
		leftover = (contents - amount) * -1
		contents = 0
	else
		contents = contents - amount
	end

	if contents == 0 then
		stack = ItemStack(blank)
	else
		meta:set_int("contents", contents)
		stack = update_vessel(stack)
	end

	return stack, leftover
end

local function register_vesselfluid(data)
	
	local source_node = minetest.registered_nodes[data.source_name]
	local fluid       = fluid_lib.cleanse_node_description(data.source_name)
	local internal    = lib_materials.fluid_short(fluid)

	local itemname = data.mod_name..":"..data.vessel_name.."_"..internal

	if minetest.registered_items[itemname] then
		return
	end

	local stationary_name
	--local stationary_name = source_node.tiles[1].name:gsub("_source_animated", "")
	if string.find(source_node.tiles[1].name, "_animated") then
		stationary_name = source_node.tiles[1].name:gsub("_animated", "")
	else
		stationary_name = source_node.tiles[1].name
	end

	-- Register base item
	minetest.register_craftitem(itemname, {
		description     = data.vessel_description.." ("..fluid..")",
		inventory_image = stationary_name.."^[noalpha^"..data.textures[1].."^"..data.textures[2].."^[makealpha:255,0,0,",
		_vessel_capacity = data.capacity,
		_vessel_source   = data.source_name,
		_vessel_blank    = data.mod_name..":"..data.vessel_name,
		stack_max       = 1,
		groups          = {vessel = 1, not_in_creative_inventory = 1},
	})
end

function lib_materials.vessels.register_vessel(data)
	local mod_name   = data.mod_name or minetest.get_current_modname()
	local vessel_name = data.vessel_name or 'vessel'
	local vessel_desc = data.vessel_description or 'vessel'
	local textures   = data.textures or {"lib_materials_vessel_glass_bottle.png", "lib_materials_vessel_glass_bottle_mask.png"}
	local capacity   = data.capacity or 1000
	local item_name  = mod_name..":"..vessel_name

	if not minetest.registered_items[item_name] then
		-- Register base item
--		minetest.register_craftitem(item_name, {
--			description     = vessel_desc.." (Empty)\nThis item holds millibuckets of fluid.",
--			inventory_image = textures[1].."^"..textures[2].."^[makealpha:255,0,0,",        --inventory_image = textures[1].."^[noalpha^"..textures[2].."^[makealpha:255,0,0,",
--			_vessel_capacity = capacity,
--			_vessel_source   = nil,
--			stack_max       = 1,
--			groups          = {vessel = 1, vessel_blank = 1}
--		})
		minetest.register_node(item_name, {
			description = vessel_desc.." (Empty)\nThis item holds millibuckets of fluid.",
			drawtype = "plantlike",
			tiles = {textures[1].."^"..textures[2].."^[makealpha:255,0,0,"},
			inventory_image = textures[1].."^"..textures[2].."^[makealpha:255,0,0,",
			wield_image = textures[1].."^"..textures[2].."^[makealpha:255,0,0,",
			paramtype = "light",
			is_ground_content = false,
			walkable = false,
			stack_max = 1,
			_vessel_capacity = capacity,
			_vessel_source   = nil,
			selection_box = {
				type = "fixed",
				fixed = {-0.25, -0.5, -0.25, 0.25, 0.4, 0.25}
			},
			groups = {vessel=1,vessel_blank = 1,dig_immediate=3,attached_node=1},
			sounds = lib_materials.node_sound_glass_defaults(),
		})
	end

	-- Register for all fluids
	if data.fluids then
		-- This tank only uses certain fluids
		for _, v in pairs(data.fluids) do
			register_vesselfluid({
				mod_name          = mod_name,
				vessel_name        = vessel_name,
				vessel_description = vessel_desc,
				textures          = textures,
				capacity          = capacity,
				source_name       = v
			})
		end
	else
		-- Get all fluids and buckets and cache them
		for i, v in pairs(lib_materials.liquids) do
			if (i:find("source") ~= nil) then
				-- Add tank
				register_vesselfluid({
					mod_name          = mod_name,
					vessel_name        = vessel_name,
					vessel_description = vessel_desc,
					textures          = textures,
					capacity          = capacity,
					source_name       = v["source"]
				})
			end
		end
	end
end



-- Register florbs for all fluids
--lib_materials.vessels.register_vessel({
--	vessel_name        = "vessel_glass_bottle",
--	vessel_description = "Glass Bottle Vessel",
--	capacity          = 1000,
--	tiles             = {"lib_materials_vessel_glass_bottle.png", "lib_materials_vessel_glass_bottle_mask.png"}
--})


lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_beaker_glass",
	vessel_description = "Glass Beaker Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_beaker_glass.png", "lib_materials_vessel_beaker_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_vial_glass",
	vessel_description = "Glass Vial Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_vial_glass.png", "lib_materials_vessel_vial_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_cup_glass",
	vessel_description = "Glass Cup Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_cup_glass.png", "lib_materials_vessel_cup_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_glass_glass",
	vessel_description = "Glass Glass Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_glass_glass.png", "lib_materials_vessel_glass_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_mug_glass",
	vessel_description = "Glass Mug Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_mug_glass.png", "lib_materials_vessel_mug_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_jar_glass",
	vessel_description = "Glass Jar Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_jar_glass.png", "lib_materials_vessel_jar_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_jar_obsidian",
	vessel_description = "Obsidian Jar Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_jar_obsidian.png", "lib_materials_vessel_jar_obsidian_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_jug_glass",
	vessel_description = "Glass Jug Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_jug_glass.png", "lib_materials_vessel_jug_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_bottle_glass",
	vessel_description = "Glass Bottle Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_bottle_glass.png", "lib_materials_vessel_bottle_glass_mask.png"}
})
lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_bottle_obsidian",
	vessel_description = "Obsidian Bottle Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_bottle_obsidian.png", "lib_materials_vessel_bottle_obsidian_mask.png"}
})

lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_bottle_crystal",
	vessel_description = "Crystal Bottle Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_bottle_crystal.png", "lib_materials_vessel_bottle_crystal.png"}
})

lib_materials.vessels.register_vessel({
	vessel_name        = "vessel_bottle_steel",
	vessel_description = "Steel Bottle Vessel",
	capacity          = 1000,
	textures             = {"lib_materials_vessel_bottle_steel.png", "lib_materials_vessel_bottle_steel.png"}
})



fluidity = {}
fluidity.fluid_short = lib_materials.fluid_short

fluidity.florbs = {}
fluidity.florbs.get_is_vessel = lib_materials.vessels.get_is_vessel
fluidity.florbs.get_is_empty_vessel = lib_materials.vessels.get_is_empty_vessel
fluidity.florbs.get_vessel_contents = lib_materials.vessels.get_vessel_contents
fluidity.florbs.add_fluid = lib_materials.vessels.add_fluid
fluidity.florbs.take_fluid = lib_materials.vessels.take_fluid
fluidity.florbs.register_vessel = lib_materials.vessels.register_vessel

minetest.register_alias("vessels:glass_bottle",		"lib_materials:vessel_bottle_glass")
minetest.register_alias("vessels:drinking_glass",	"lib_materials:vessel_glass_glass")
minetest.register_alias("vessels:steel_bottle",		"lib_materials:vessel_bottle_steel")


