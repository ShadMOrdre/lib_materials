

local MP = minetest.get_modpath(minetest.get_current_modname()).."/"


node_io = {}


-- get target side

node_io.get_target_side = function(pos, target_pos)
	if pos.y > target_pos.y then return "U" end
	if pos.y < target_pos.y then return "D" end

	if pos.z > target_pos.z then return "N" end
	if pos.z < target_pos.z then return "S" end

	if pos.x > target_pos.x then return "E" end
	return "W"
end

-- get pointed side

node_io.get_pointed_side = function(pointer, pointed_thing)
	local p0 = pointed_thing.under
	local p1 = pointed_thing.above
	if p0.y == p1.y then
		if p0.z > p1.z then return "S" end
		if p0.z < p1.z then return "N" end
		if p0.x > p1.x then return "W" end
		return "E"
	elseif p0.y < p1.y then
		return "U"
	else
		return "D"
	end
end



-- notify all six neighbors of node changes (placed, dug, can_put, can_take)

node_io.update_neighbors = function(pos)
	local p, n, d
	p={x=pos.x+1, y=pos.y, z=pos.z} n=minetest.get_node(p) d=minetest.registered_nodes[n.name] if d and d.node_io_on_neighbor_update then d.node_io_on_neighbor_update(p,n,"W") end
	p={x=pos.x-1, y=pos.y, z=pos.z} n=minetest.get_node(p) d=minetest.registered_nodes[n.name] if d and d.node_io_on_neighbor_update then d.node_io_on_neighbor_update(p,n,"E") end
	p={x=pos.x, y=pos.y+1, z=pos.z} n=minetest.get_node(p) d=minetest.registered_nodes[n.name] if d and d.node_io_on_neighbor_update then d.node_io_on_neighbor_update(p,n,"D") end
	p={x=pos.x, y=pos.y-1, z=pos.z} n=minetest.get_node(p) d=minetest.registered_nodes[n.name] if d and d.node_io_on_neighbor_update then d.node_io_on_neighbor_update(p,n,"U") end
	p={x=pos.x, y=pos.y, z=pos.z+1} n=minetest.get_node(p) d=minetest.registered_nodes[n.name] if d and d.node_io_on_neighbor_update then d.node_io_on_neighbor_update(p,n,"S") end
	p={x=pos.x, y=pos.y, z=pos.z-1} n=minetest.get_node(p) d=minetest.registered_nodes[n.name] if d and d.node_io_on_neighbor_update then d.node_io_on_neighbor_update(p,n,"N") end
end



-- query API
	-- can_* functions should always be called first and return false if ndef isn't found (unknown node)
	-- the other functions can safely skip the ndef check for performance

node_io.can_put_item = function(pos, node, side)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or not ndef.node_io_can_put_item then return false end
	return ndef.node_io_can_put_item(pos, node, side)
end
node_io.can_put_liquid = function(pos, node, side)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or not ndef.node_io_can_put_liquid then return false end
	return ndef.node_io_can_put_liquid(pos, node, side)
end

node_io.can_take_item = function(pos, node, side)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or not ndef.node_io_can_take_item then return false end
	return ndef.node_io_can_take_item(pos, node, side)
end
node_io.can_take_liquid = function(pos, node, side)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or not ndef.node_io_can_take_liquid then return false end
	return ndef.node_io_can_take_liquid(pos, node, side)
end
node_io.accepts_millibuckets = function(pos, node, side)
	local ndef = minetest.registered_nodes[node.name]
	if not ndef or not ndef.node_io_accepts_millibuckets then return false end
	return ndef.node_io_accepts_millibuckets(pos, node, side)
end

node_io.room_for_item = function(pos, node, side, itemstack, count) -- returns non-negative number
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_room_for_item then return 0 end
	return ndef.node_io_room_for_item(pos, node, side, itemstack, count)
end
node_io.room_for_liquid = function(pos, node, side, liquid, millibuckets) -- returns non-negative number
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_room_for_liquid then return 0 end
	return ndef.node_io_room_for_liquid(pos, node, side, liquid, millibuckets)
end

node_io.get_item_size = function(pos, node, side) -- returns non-negative number
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_get_item_size then return 0 end
	return ndef.node_io_get_item_size(pos, node, side)
end
node_io.get_liquid_size = function(pos, node, side) -- returns non-negative number
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_get_liquid_size then return 0 end
	return ndef.node_io_get_liquid_size(pos, node, side)
end

node_io.get_item_name = function(pos, node, side, index) -- returns string or empty string
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_get_item_name then return "" end
	return ndef.node_io_get_item_name(pos, node, side, index)
end
node_io.get_liquid_name = function(pos, node, side, index) -- returns string or empty string
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_get_liquid_name then return "" end
	return ndef.node_io_get_liquid_name(pos, node, side, index)
end

node_io.get_item_stack = function(pos, node, side, index) -- returns itemstack or nil
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_get_item_stack then return nil end
	return ndef.node_io_get_item_stack(pos, node, side, index)
end
node_io.get_liquid_stack = function(pos, node, side, index) -- returns itemstack or nil
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_get_liquid_stack then return nil end
	return ndef.node_io_get_liquid_stack(pos, node, side, index)
end


-- access API

node_io.put_item = function(pos, node, side, putter, itemstack) -- returns itemstack with leftovers or a cleared itemstack
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_put_item then return itemstack end
	return ndef.node_io_put_item(pos, node, side, putter, itemstack)
end
node_io.put_liquid = function(pos, node, side, putter, liquid, millibuckets) -- returns leftover millibuckets or zero
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_put_liquid then return millibuckets end
	return ndef.node_io_put_liquid(pos, node, side, putter, liquid, millibuckets)
end

node_io.take_item = function(pos, node, side, taker, want_item, want_count) -- returns itemstack or nil
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_take_item then return nil end
	return ndef.node_io_take_item(pos, node, side, taker, want_item, want_count)
end
node_io.take_liquid = function(pos, node, side, taker, want_liquid, want_count) -- returns {name:string, millibuckets:int} or nil
	local ndef = minetest.registered_nodes[node.name]
	if not ndef.node_io_take_liquid then return nil end
	return ndef.node_io_take_liquid(pos, node, side, taker, want_liquid, want_count)
end




-- functions for mods with inventories to implement API

node_io.get_inventory = function(pos)
	if pos.type then
		-- {type="node", pos={x=<X>, y=<Y>, z=<Z>}}
		-- {type="detached", name="<name>"}
		-- {type="player", name="<name>"}
		return minetest.get_inventory(pos)
	else
		-- {x=<X>, y=<Y>, z=<Z>}
		return minetest.get_meta(pos):get_inventory()
	end
end

node_io.compare_itemstack = function(itemstack1, itemstack2)
	if itemstack1:get_name() ~= itemstack2:get_name() then return false end
	if itemstack1:get_wear() ~= itemstack2:get_wear() then return false end
	if itemstack1:get_meta() ~= itemstack2:get_meta() then return false end
	return true
end

node_io.room_for_item_in_inventory = function(inv, inv_name, itemstack, count)
	local max = itemstack:get_stack_max()
	local put_count = max
	if count < put_count then put_count = count end
	local room = 0
	for i = 1, inv:get_size(inv_name) do
		local stack = inv:get_stack("main", i)
		if stack:is_empty() then return put_count end
		if node_io.compare_itemstack(stack, itemstack) then
			if stack:get_count() < max then
				room = room + max - stack:get_count()
				if room >= put_count then return put_count end
			end
		end
	end
	return room
end

node_io.get_inventory_size = function(pos, inv_name)
	local inv = node_io.get_inventory(pos) -- see node_io.get_inventory() for pos details
	if not inv then return 0 end
	return inv:get_size(inv_name)
end

node_io.get_inventory_name = function(pos, inv_name, index)
	local inv = node_io.get_inventory(pos) -- see node_io.get_inventory() for pos details
	if not inv or index < 1 or index > inv:get_size(inv_name) then return "" end
	return inv:get_stack(inv_name, index):get_name()
end

node_io.get_inventory_stack = function(pos, inv_name, index)
	local inv = node_io.get_inventory(pos) -- see node_io.get_inventory() for pos details
	if not inv or index < 1 or index > inv:get_size(inv_name) then return nil end
	local stack = inv:get_stack(inv_name, index)
	if stack:is_empty() then return nil end
	stack:set_count(1)
	return stack
end

node_io.put_item_in_inventory = function(pos, node, inv_name, putter, itemstack)
	local inv = node_io.get_inventory(pos) -- see node_io.get_inventory() for pos details
	if not inv or itemstack:is_empty() then return itemstack end

	local leftovers = inv:add_item(inv_name, itemstack)

	local ndef = minetest.registered_nodes[node.name]
	if ndef.on_metadata_inventory_put and putter then
		ndef.on_metadata_inventory_put(pos, inv_name, 0, itemstack, putter)
		-- TODO: 0 is index in inv_name
	end

	if leftovers then return leftovers end
	itemstack:clear()
	return itemstack
end

node_io.take_item_from_inventory = function(pos, node, inv_name, taker, want_item, want_count)
	local inv = node_io.get_inventory(pos) -- see node_io.get_inventory() for pos details
	if not inv or inv:is_empty(inv_name) then return nil end

	for i = 1, inv:get_size(inv_name) do
		local stack = inv:get_stack(inv_name, i)
		local stack_item = stack:get_name()
		if stack_item ~= "" and (want_item == nil or (type(want_item) == "userdata" and node_io.compare_itemstack(stack, want_item)) or stack_item == want_item) then
			local result_stack
			if stack:get_count() > want_count then
				-- stack is larger than wanted
				result_stack = stack:take_item(want_count)
				inv:set_stack(inv_name, i, stack)
			else
				inv:remove_item(inv_name, stack)
				result_stack = stack
			end

			local ndef = minetest.registered_nodes[node.name]
			if ndef.on_metadata_inventory_take and taker then
				ndef.on_metadata_inventory_take(pos, inv_name, i, stack, taker)
			end

			return result_stack
		end
	end
end

node_io.init_main_inventory = function(node_name, allow_take)
	local def = {}

	def.node_io_can_put_item = function(pos, node, side) return true end
	def.node_io_room_for_item = function(pos, node, side, itemstack, count)
		local inv = node_io.get_inventory(pos) -- see node_io.get_inventory() for pos details
		if not inv then return 0 end
		return node_io.room_for_item_in_inventory(inv, "main", itemstack, count)
	end
	def.node_io_put_item = function(pos, node, side, putter, itemstack)
		return node_io.put_item_in_inventory(pos, node, "main", putter, itemstack)
	end

	if allow_take then
		def.node_io_can_take_item = function(pos, node, side) return true end
		def.node_io_get_item_size = function(pos, node, side)
			return node_io.get_inventory_size(pos, "main")
		end
		def.node_io_get_item_name = function(pos, node, side, index)
			return node_io.get_inventory_name(pos, "main", index)
		end
		def.node_io_get_item_stack = function(pos, node, side, index)
			return node_io.get_inventory_stack(pos, "main", index)
		end
		def.node_io_take_item = function(pos, node, side, taker, want_item, want_count)
			return node_io.take_item_from_inventory(pos, node, "main", taker, want_item, want_count)
		end
	end

	minetest.override_item(node_name, def)
end

-- export function so pipeworks can use it to init its replacement furnace
node_io.init_furnace = function(node_name)
	local def = {}

	def.node_io_can_put_item = function(pos, node, side) return true end
	def.node_io_room_for_item = function(pos, node, side, itemstack, count)
		local inv = minetest.get_meta(pos):get_inventory()
		if not inv then return 0 end
		local inv_name
		if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
		return node_io.room_for_item_in_inventory(inv, inv_name, itemstack, count)
	end
	def.node_io_put_item = function(pos, node, side, putter, itemstack)
		local inv_name
		if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
		return node_io.put_item_in_inventory(pos, node, inv_name, putter, itemstack)
	end

	def.node_io_can_take_item = function(pos, node, side) return true end
	def.node_io_get_item_size = function(pos, node, side)
		local inv_name
		if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
		return node_io.get_inventory_size(pos, inv_name)
	end
	def.node_io_get_item_name = function(pos, node, side, index)
		local inv_name
		if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
		return node_io.get_inventory_name(pos, inv_name, index)
	end
	def.node_io_get_item_stack = function(pos, node, side, index)
		local inv_name
		if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
		return node_io.get_inventory_stack(pos, inv_name, index)
	end
	def.node_io_take_item = function(pos, node, side, taker, want_item, want_count)
		local inv_name
		if side == "U" then inv_name = "src" elseif side == "D" then inv_name = "dst" else inv_name = "fuel" end
		return node_io.take_item_from_inventory(pos, node, inv_name, taker, want_item, want_count)
	end

	minetest.override_item(node_name, def)
end



if minetest.global_exists("default") then
	dofile(MP.."lib_materials_nodeio_support.lua")
end



print("[MOD] Node IO loaded")





