
local S = lib_materials.intllib



local napi = minetest.get_modpath("node_io")



--Register empty bucket
minetest.register_craft({
	output = 'lib_materials:tool_bucket_empty 1',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', ''},
	}
})

--Register unfired clay pot
minetest.register_craftitem("lib_materials:tool_pot_clay_unfired", {
	description = "Unfired Clay Pot (lib_mat)",
	inventory_image = "lib_materials_tool_pot_clay_unfired.png",
	stack_max = 99,
})

--Recipes to make the pot
--Craft unfired pot
minetest.register_craft({
	output = 'lib_materials:tool_pot_clay_unfired 1',
	recipe = {
		{'default:clay_lump', '', 'default:clay_lump'},
		{'', 'default:clay_lump', ''},
	}
})

--Craft unfired pot back into clay
minetest.register_craft({
	output = 'default:clay_lump 3',
	recipe = {{'lib_materials:tool_pot_clay_unfired'}}
})

--Cook unfired pot to give the useable bucket
minetest.register_craft({
	type = "cooking",
	output = "lib_materials:tool_pot_clay",
	recipe = "lib_materials:tool_pot_clay_unfired",
	cooktime = 3,
})




local function check_protection(pos, name, text)
	if minetest.is_protected(pos, name) then
		minetest.log("action", (name ~= "" and name or "A mod")
			.. " tried to " .. text
			.. " at protected position "
			.. minetest.pos_to_string(pos)
			.. " with a bucket")
		minetest.record_protection_violation(pos, name)
		return true
	end
	return false
end









-- Register a new liquid
--    source          = name of the source node
--    flowing         = name of the flowing node
--    DNU>>itemname        = name of the new bucket item (or nil if liquid is not takeable)
--    #NOTE:  (String value can be a comma seperated list of itemnames.)
--    bucket_item     = name of the new bucket item (or nil if liquid is not takeable)
--    claypot_item    = name of the new clay pot item (or nil if liquid is not takeable)
--    inventory_image = texture of the new bucket item (ignored if itemname == nil)
--    DNU>>name            = text description of the bucket item
--    #NOTE:  (String value can be a comma seperated list of names.)
--    bucket_name     = text description of the bucket item
--    claypot_name    =text description of the claypot item
--    groups          = (optional) groups of the bucket item, for example {water_bucket = 1}
--    force_renew     = (optional) bool. Force the liquid source to renew if it has a
--                    source neighbour, even if defined as 'liquid_renewable = false'.
--                    Needed to avoid creating holes in sloping rivers.
-- This function can be called from any mod (that depends on bucket).


--function lib_materials.register_liquid(source, flowing, itemname, bucket_item, claypot_item, inventory_image, name, bucket_name, claypot_name, groups, force_renew)
function lib_materials.register_liquid(source, flowing, bucket_item, bucket_wood_item, bucket_steel_item, claypot_item, inv_image, bucket_name, bucket_wood_name, bucket_steel_name, claypot_name, groups, force_renew)

		lib_materials.liquids[source] = {
			source = source,
			flowing = flowing,
			bucket_item = bucket_item,
			claypot_item = claypot_item,
			force_renew = force_renew,
		}
		lib_materials.liquids[flowing] = lib_materials.liquids[source]

		if bucket_item ~= nil then

			minetest.register_craftitem(bucket_item, {
				description = bucket_name,
				inventory_image = "lib_materials_tool_bucket.png^(".. inv_image .."^[mask:lib_materials_tool_bucket_mask.png)",    --inventory_image,
				stack_max = 1,
				liquids_pointable = true,
				groups = groups,
	
				on_place = function(itemstack, user, pointed_thing)
					-- Must be pointing to node
					if pointed_thing.type ~= "node" then
						return
					end
	
					local node = minetest.get_node_or_nil(pointed_thing.under)
					local ndef = node and minetest.registered_nodes[node.name]
	
					-- Call on_rightclick if the pointed node defines it
					if ndef and ndef.on_rightclick and
							not (user and user:is_player() and
							user:get_player_control().sneak) then
						return ndef.on_rightclick(
							pointed_thing.under,
							node, user,
							itemstack)
					end
	
					local lpos
	
					-- Check if pointing to a buildable node
					if ndef and ndef.buildable_to then
						-- buildable; replace the node
						lpos = pointed_thing.under
					else
						-- not buildable to; place the liquid above
						-- check if the node above can be replaced
	
						lpos = pointed_thing.above
						node = minetest.get_node_or_nil(lpos)
						local above_ndef = node and minetest.registered_nodes[node.name]
	
						if not above_ndef or not above_ndef.buildable_to then
							-- do not remove the bucket with the liquid
							return itemstack
						end
					end
	
					if check_protection(lpos, user
							and user:get_player_name()
							or "", "place "..source) then
						return
					end
	
					-- Fill any fluid buffers if present
					local place = true
					local ppos  = pointed_thing.under
					local node  = minetest.get_node(ppos)
	
					-- Node IO Support
					local usedef = ndef
					local defpref = "node_io_"
					local lookat = "N"
	
					if napi then
						usedef = node_io
						lookat = node_io.get_pointed_side(user, pointed_thing)
						defpref = ""
					end
	
					if usedef[defpref..'can_put_liquid'] and usedef[defpref..'can_put_liquid'](ppos, node, lookat) then
						if usedef[defpref..'room_for_liquid'](ppos, node, lookat, source, 1000) >= 1000 then
							usedef[defpref..'put_liquid'](ppos, node, lookat, user, source, 1000)
							if ndef.on_timer then
								minetest.get_node_timer(ppos):start(ndef.node_timer_seconds or 1.0)
							end
							place = false
						end
					end
	
					if place then
						minetest.set_node(lpos, {name = source})
					end
	
					return ItemStack("lib_materials:tool_bucket_empty")
				end
			})
		end

		if bucket_wood_item ~= nil then

			minetest.register_craftitem(bucket_wood_item, {
				description = bucket_name,
				inventory_image = "lib_materials_tool_bucket_wood.png^(".. inv_image .."^[mask:lib_materials_tool_bucket_mask.png)",    --inventory_image,
				stack_max = 1,
				liquids_pointable = true,
				groups = groups,
	
				on_place = function(itemstack, user, pointed_thing)
					-- Must be pointing to node
					if pointed_thing.type ~= "node" then
						return
					end
	
					local node = minetest.get_node_or_nil(pointed_thing.under)
					local ndef = node and minetest.registered_nodes[node.name]
	
					-- Call on_rightclick if the pointed node defines it
					if ndef and ndef.on_rightclick and
							not (user and user:is_player() and
							user:get_player_control().sneak) then
						return ndef.on_rightclick(
							pointed_thing.under,
							node, user,
							itemstack)
					end
	
					local lpos
	
					-- Check if pointing to a buildable node
					if ndef and ndef.buildable_to then
						-- buildable; replace the node
						lpos = pointed_thing.under
					else
						-- not buildable to; place the liquid above
						-- check if the node above can be replaced
	
						lpos = pointed_thing.above
						node = minetest.get_node_or_nil(lpos)
						local above_ndef = node and minetest.registered_nodes[node.name]
	
						if not above_ndef or not above_ndef.buildable_to then
							-- do not remove the bucket with the liquid
							return itemstack
						end
					end
	
					if check_protection(lpos, user
							and user:get_player_name()
							or "", "place "..source) then
						return
					end
	
					-- Fill any fluid buffers if present
					local place = true
					local ppos  = pointed_thing.under
					local node  = minetest.get_node(ppos)
	
					-- Node IO Support
					local usedef = ndef
					local defpref = "node_io_"
					local lookat = "N"
	
					if napi then
						usedef = node_io
						lookat = node_io.get_pointed_side(user, pointed_thing)
						defpref = ""
					end
	
					if usedef[defpref..'can_put_liquid'] and usedef[defpref..'can_put_liquid'](ppos, node, lookat) then
						if usedef[defpref..'room_for_liquid'](ppos, node, lookat, source, 1000) >= 1000 then
							usedef[defpref..'put_liquid'](ppos, node, lookat, user, source, 1000)
							if ndef.on_timer then
								minetest.get_node_timer(ppos):start(ndef.node_timer_seconds or 1.0)
							end
							place = false
						end
					end
	
					if place then
						minetest.set_node(lpos, {name = source})
					end
	
					return ItemStack("lib_materials:tool_bucket_wood_empty")
				end
			})
		end

		if bucket_steel_item ~= nil then

			minetest.register_craftitem(bucket_steel_item, {
				description = bucket_name,
				inventory_image = "lib_materials_tool_bucket_steel.png^(".. inv_image .."^[mask:lib_materials_tool_bucket_mask.png)",    --inventory_image,
				stack_max = 1,
				liquids_pointable = true,
				groups = groups,
	
				on_place = function(itemstack, user, pointed_thing)
					-- Must be pointing to node
					if pointed_thing.type ~= "node" then
						return
					end
	
					local node = minetest.get_node_or_nil(pointed_thing.under)
					local ndef = node and minetest.registered_nodes[node.name]
	
					-- Call on_rightclick if the pointed node defines it
					if ndef and ndef.on_rightclick and
							not (user and user:is_player() and
							user:get_player_control().sneak) then
						return ndef.on_rightclick(
							pointed_thing.under,
							node, user,
							itemstack)
					end
	
					local lpos
	
					-- Check if pointing to a buildable node
					if ndef and ndef.buildable_to then
						-- buildable; replace the node
						lpos = pointed_thing.under
					else
						-- not buildable to; place the liquid above
						-- check if the node above can be replaced
	
						lpos = pointed_thing.above
						node = minetest.get_node_or_nil(lpos)
						local above_ndef = node and minetest.registered_nodes[node.name]
	
						if not above_ndef or not above_ndef.buildable_to then
							-- do not remove the bucket with the liquid
							return itemstack
						end
					end
	
					if check_protection(lpos, user
							and user:get_player_name()
							or "", "place "..source) then
						return
					end
	
					-- Fill any fluid buffers if present
					local place = true
					local ppos  = pointed_thing.under
					local node  = minetest.get_node(ppos)
	
					-- Node IO Support
					local usedef = ndef
					local defpref = "node_io_"
					local lookat = "N"
	
					if napi then
						usedef = node_io
						lookat = node_io.get_pointed_side(user, pointed_thing)
						defpref = ""
					end
	
					if usedef[defpref..'can_put_liquid'] and usedef[defpref..'can_put_liquid'](ppos, node, lookat) then
						if usedef[defpref..'room_for_liquid'](ppos, node, lookat, source, 1000) >= 1000 then
							usedef[defpref..'put_liquid'](ppos, node, lookat, user, source, 1000)
							if ndef.on_timer then
								minetest.get_node_timer(ppos):start(ndef.node_timer_seconds or 1.0)
							end
							place = false
						end
					end
	
					if place then
						minetest.set_node(lpos, {name = source})
					end
	
					return ItemStack("lib_materials:tool_bucket_steel_empty")
				end
			})
		end


		if claypot_item ~= nil then
	
			minetest.register_craftitem(claypot_item, {
				description = claypot_name,
				inventory_image = "lib_materials_tool_pot_clay.png^(".. inv_image .."^[mask:lib_materials_tool_bucket_mask.png)",    --inventory_image,
				stack_max = 1,
				liquids_pointable = true,
				groups = groups,
	
				on_place = function(itemstack, user, pointed_thing)
					-- Must be pointing to node
					if pointed_thing.type ~= "node" then
						return
					end
	
					local node = minetest.get_node_or_nil(pointed_thing.under)
					local ndef = node and minetest.registered_nodes[node.name]
	
					-- Call on_rightclick if the pointed node defines it
					if ndef and ndef.on_rightclick and
							not (user and user:is_player() and
							user:get_player_control().sneak) then
						return ndef.on_rightclick(
							pointed_thing.under,
							node, user,
							itemstack)
					end
	
					local lpos
	
					-- Check if pointing to a buildable node
					if ndef and ndef.buildable_to then
						-- buildable; replace the node
						lpos = pointed_thing.under
					else
						-- not buildable to; place the liquid above
						-- check if the node above can be replaced
	
						lpos = pointed_thing.above
						node = minetest.get_node_or_nil(lpos)
						local above_ndef = node and minetest.registered_nodes[node.name]
	
						if not above_ndef or not above_ndef.buildable_to then
							-- do not remove the bucket with the liquid
							return itemstack
						end
					end
	
					if check_protection(lpos, user
							and user:get_player_name()
							or "", "place "..source) then
						return
					end
	
					-- Fill any fluid buffers if present
					local place = true
					local ppos  = pointed_thing.under
					local node  = minetest.get_node(ppos)
	
					-- Node IO Support
					local usedef = ndef
					local defpref = "node_io_"
					local lookat = "N"
	
					if napi then
						usedef = node_io
						lookat = node_io.get_pointed_side(user, pointed_thing)
						defpref = ""
					end
	
					if usedef[defpref..'can_put_liquid'] and usedef[defpref..'can_put_liquid'](ppos, node, lookat) then
						if usedef[defpref..'room_for_liquid'](ppos, node, lookat, source, 1000) >= 1000 then
							usedef[defpref..'put_liquid'](ppos, node, lookat, user, source, 1000)
							if ndef.on_timer then
								minetest.get_node_timer(ppos):start(ndef.node_timer_seconds or 1.0)
							end
							place = false
						end
					end
	
					if place then
						minetest.set_node(lpos, {name = source})
					end
	
					return ItemStack("lib_materials:tool_pot_clay_empty")
				end
			})
		end
	--end
end


minetest.register_craftitem("lib_materials:tool_bucket_empty", {
	description = "Empty Bucket (lib_mat)",
	inventory_image = "lib_materials_tool_bucket.png",
	stack_max = 99,
	liquids_pointable = true,
	groups = {bucket_empty = 1},
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "object" then
			pointed_thing.ref:punch(user, 1.0, { full_punch_interval=1.0 }, nil)
			return user:get_wielded_item()
		elseif pointed_thing.type ~= "node" then
			-- do nothing if it's neither object nor node
			return
		end
		-- Check if pointing to a liquid source
		local node = minetest.get_node(pointed_thing.under)
		local liquiddef = lib_materials.liquids[node.name]
		local item_count = user:get_wielded_item():get_count()

		if liquiddef ~= nil
		and liquiddef.bucket_item ~= nil
		and node.name == liquiddef.source then
			if check_protection(pointed_thing.under,
					user:get_player_name(),
					"take ".. node.name) then
				return
			end

			-- default set to return filled bucket
			local giving_back = liquiddef.bucket_item

			-- check if holding more than 1 empty bucket
			if item_count > 1 then

				-- if space in inventory add filled bucked, otherwise drop as item
				local inv = user:get_inventory()
				if inv:room_for_item("main", {name=liquiddef.bucket_item}) then
					inv:add_item("main", liquiddef.bucket_item)
				else
					local pos = user:getpos()
					pos.y = math.floor(pos.y + 0.5)
					minetest.add_item(pos, liquiddef.bucket_item)
				end

				-- set to return empty buckets minus 1
				giving_back = "lib_materials:tool_bucket_empty "..tostring(item_count-1)

			end

			-- force_renew requires a source neighbour
			local source_neighbor = false
			if liquiddef.force_renew then
				source_neighbor =
					minetest.find_node_near(pointed_thing.under, 1, liquiddef.source)
			end
			if not (source_neighbor and liquiddef.force_renew) then
				minetest.add_node(pointed_thing.under, {name = "air"})
			end

			return ItemStack(giving_back)
		else
			-- non-liquid nodes will have their on_punch triggered
			local node_def = minetest.registered_nodes[node.name]
			if node_def then
				node_def.on_punch(pointed_thing.under, node, user, pointed_thing)
			end
			return user:get_wielded_item()
		end
	end,
	on_place = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end

		local lpos = pointed_thing.under
		local node = minetest.get_node_or_nil(lpos)
		local ndef = node and minetest.registered_nodes[node.name]

		-- Call on_rightclick if the pointed node defines it
		if ndef and ndef.on_rightclick and
				not (user and user:is_player() and
				user:get_player_control().sneak) then
			return ndef.on_rightclick(
				lpos,
				node, user,
				itemstack)
		end

		if check_protection(lpos, user
				and user:get_player_name()
				or "", "take "..node.name) then
			return
		end

		-- Node IO Support
		local usedef = ndef
		local defpref = "node_io_"
		local lookat = "N"

		if napi then
			usedef = node_io
			lookat = node_io.get_pointed_side(user, pointed_thing)
			defpref = ""
		end

		-- Remove fluid from buffers if present
		if usedef[defpref..'can_take_liquid'] and usedef[defpref..'can_take_liquid'](lpos, node, lookat) then
			local bfc = usedef[defpref..'get_liquid_size'](lpos, node, lookat)
			local buffers = {}
			for i = 1, bfc do
				buffers[i] = usedef[defpref..'get_liquid_name'](lpos, node, lookat, i)
			end

			if #buffers > 0 then
				for id,fluid in pairs(buffers) do
					if fluid ~= "" then
						local took = usedef[defpref..'take_liquid'](lpos, node, lookat, user, fluid, 1000)
						if took.millibuckets == 1000 and took.name == fluid then
							if lib_materials.liquids[fluid] then
								itemstack = ItemStack(lib_materials.liquids[fluid].bucket_item)
								if ndef.on_timer then
									minetest.get_node_timer(lpos):start(ndef.node_timer_seconds or 1.0)
								end
								break
							end
						end
					end
				end
			end
		end

		return itemstack
	end
})

minetest.register_craftitem("lib_materials:tool_bucket_wood_empty", {
	description = "Empty Wood Bucket (lib_mat)",
	inventory_image = "lib_materials_tool_bucket_wood.png",
	stack_max = 99,
	liquids_pointable = true,
	groups = {bucket_empty = 1},
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "object" then
			pointed_thing.ref:punch(user, 1.0, { full_punch_interval=1.0 }, nil)
			return user:get_wielded_item()
		elseif pointed_thing.type ~= "node" then
			-- do nothing if it's neither object nor node
			return
		end
		-- Check if pointing to a liquid source
		local node = minetest.get_node(pointed_thing.under)
		local liquiddef = lib_materials.liquids[node.name]
		local item_count = user:get_wielded_item():get_count()

		if liquiddef ~= nil
		and liquiddef.bucket_item ~= nil
		and node.name == liquiddef.source then
			if check_protection(pointed_thing.under,
					user:get_player_name(),
					"take ".. node.name) then
				return
			end

			-- default set to return filled bucket
			local giving_back = liquiddef.bucket_wood_item

			-- check if holding more than 1 empty bucket
			if item_count > 1 then

				-- if space in inventory add filled bucked, otherwise drop as item
				local inv = user:get_inventory()
				if inv:room_for_item("main", {name=liquiddef.bucket_wood_item}) then
					inv:add_item("main", liquiddef.bucket_wood_item)
				else
					local pos = user:getpos()
					pos.y = math.floor(pos.y + 0.5)
					minetest.add_item(pos, liquiddef.bucket_wood_item)
				end

				-- set to return empty buckets minus 1
				giving_back = "lib_materials:tool_bucket_wood_empty "..tostring(item_count-1)

			end

			-- force_renew requires a source neighbour
			local source_neighbor = false
			if liquiddef.force_renew then
				source_neighbor =
					minetest.find_node_near(pointed_thing.under, 1, liquiddef.source)
			end
			if not (source_neighbor and liquiddef.force_renew) then
				minetest.add_node(pointed_thing.under, {name = "air"})
			end

			return ItemStack(giving_back)
		else
			-- non-liquid nodes will have their on_punch triggered
			local node_def = minetest.registered_nodes[node.name]
			if node_def then
				node_def.on_punch(pointed_thing.under, node, user, pointed_thing)
			end
			return user:get_wielded_item()
		end
	end,
	on_place = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end

		local lpos = pointed_thing.under
		local node = minetest.get_node_or_nil(lpos)
		local ndef = node and minetest.registered_nodes[node.name]

		-- Call on_rightclick if the pointed node defines it
		if ndef and ndef.on_rightclick and
				not (user and user:is_player() and
				user:get_player_control().sneak) then
			return ndef.on_rightclick(
				lpos,
				node, user,
				itemstack)
		end

		if check_protection(lpos, user
				and user:get_player_name()
				or "", "take "..node.name) then
			return
		end

		-- Node IO Support
		local usedef = ndef
		local defpref = "node_io_"
		local lookat = "N"

		if napi then
			usedef = node_io
			lookat = node_io.get_pointed_side(user, pointed_thing)
			defpref = ""
		end

		-- Remove fluid from buffers if present
		if usedef[defpref..'can_take_liquid'] and usedef[defpref..'can_take_liquid'](lpos, node, lookat) then
			local bfc = usedef[defpref..'get_liquid_size'](lpos, node, lookat)
			local buffers = {}
			for i = 1, bfc do
				buffers[i] = usedef[defpref..'get_liquid_name'](lpos, node, lookat, i)
			end

			if #buffers > 0 then
				for id,fluid in pairs(buffers) do
					if fluid ~= "" then
						local took = usedef[defpref..'take_liquid'](lpos, node, lookat, user, fluid, 1000)
						if took.millibuckets == 1000 and took.name == fluid then
							if lib_materials.liquids[fluid] then
								itemstack = ItemStack(lib_materials.liquids[fluid].bucket_wood_item)
								if ndef.on_timer then
									minetest.get_node_timer(lpos):start(ndef.node_timer_seconds or 1.0)
								end
								break
							end
						end
					end
				end
			end
		end

		return itemstack
	end
})

minetest.register_craftitem("lib_materials:tool_bucket_steel_empty", {
	description = "Empty Steel Bucket (lib_mat)",
	inventory_image = "lib_materials_tool_bucket_steel.png",
	stack_max = 99,
	liquids_pointable = true,
	groups = {bucket_empty = 1},
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "object" then
			pointed_thing.ref:punch(user, 1.0, { full_punch_interval=1.0 }, nil)
			return user:get_wielded_item()
		elseif pointed_thing.type ~= "node" then
			-- do nothing if it's neither object nor node
			return
		end
		-- Check if pointing to a liquid source
		local node = minetest.get_node(pointed_thing.under)
		local liquiddef = lib_materials.liquids[node.name]
		local item_count = user:get_wielded_item():get_count()

		if liquiddef ~= nil
		and liquiddef.bucket_steel_item ~= nil
		and node.name == liquiddef.source then
			if check_protection(pointed_thing.under,
					user:get_player_name(),
					"take ".. node.name) then
				return
			end

			-- default set to return filled bucket
			local giving_back = liquiddef.bucket_steel_item

			-- check if holding more than 1 empty bucket
			if item_count > 1 then

				-- if space in inventory add filled bucked, otherwise drop as item
				local inv = user:get_inventory()
				if inv:room_for_item("main", {name=liquiddef.bucket_steel_item}) then
					inv:add_item("main", liquiddef.bucket_steel_item)
				else
					local pos = user:getpos()
					pos.y = math.floor(pos.y + 0.5)
					minetest.add_item(pos, liquiddef.bucket_steel_item)
				end

				-- set to return empty buckets minus 1
				giving_back = "lib_materials:tool_bucket_steel_empty "..tostring(item_count-1)

			end

			-- force_renew requires a source neighbour
			local source_neighbor = false
			if liquiddef.force_renew then
				source_neighbor =
					minetest.find_node_near(pointed_thing.under, 1, liquiddef.source)
			end
			if not (source_neighbor and liquiddef.force_renew) then
				minetest.add_node(pointed_thing.under, {name = "air"})
			end

			return ItemStack(giving_back)
		else
			-- non-liquid nodes will have their on_punch triggered
			local node_def = minetest.registered_nodes[node.name]
			if node_def then
				node_def.on_punch(pointed_thing.under, node, user, pointed_thing)
			end
			return user:get_wielded_item()
		end
	end,
	on_place = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end

		local lpos = pointed_thing.under
		local node = minetest.get_node_or_nil(lpos)
		local ndef = node and minetest.registered_nodes[node.name]

		-- Call on_rightclick if the pointed node defines it
		if ndef and ndef.on_rightclick and
				not (user and user:is_player() and
				user:get_player_control().sneak) then
			return ndef.on_rightclick(
				lpos,
				node, user,
				itemstack)
		end

		if check_protection(lpos, user
				and user:get_player_name()
				or "", "take "..node.name) then
			return
		end

		-- Node IO Support
		local usedef = ndef
		local defpref = "node_io_"
		local lookat = "N"

		if napi then
			usedef = node_io
			lookat = node_io.get_pointed_side(user, pointed_thing)
			defpref = ""
		end

		-- Remove fluid from buffers if present
		if usedef[defpref..'can_take_liquid'] and usedef[defpref..'can_take_liquid'](lpos, node, lookat) then
			local bfc = usedef[defpref..'get_liquid_size'](lpos, node, lookat)
			local buffers = {}
			for i = 1, bfc do
				buffers[i] = usedef[defpref..'get_liquid_name'](lpos, node, lookat, i)
			end

			if #buffers > 0 then
				for id,fluid in pairs(buffers) do
					if fluid ~= "" then
						local took = usedef[defpref..'take_liquid'](lpos, node, lookat, user, fluid, 1000)
						if took.millibuckets == 1000 and took.name == fluid then
							if lib_materials.liquids[fluid] then
								itemstack = ItemStack(lib_materials.liquids[fluid].bucket_steel_item)
								if ndef.on_timer then
									minetest.get_node_timer(lpos):start(ndef.node_timer_seconds or 1.0)
								end
								break
							end
						end
					end
				end
			end
		end

		return itemstack
	end
})

minetest.register_craftitem("lib_materials:tool_pot_clay_empty", {
	description = "Empty Clay Pot (lib_mat)",
	inventory_image = "lib_materials_tool_pot_clay.png",
	stack_max = 99,
	liquids_pointable = true,
	groups = {bucket_empty = 1},
	on_use = function(itemstack, user, pointed_thing)
		if pointed_thing.type == "object" then
			pointed_thing.ref:punch(user, 1.0, { full_punch_interval=1.0 }, nil)
			return user:get_wielded_item()
		elseif pointed_thing.type ~= "node" then
			-- do nothing if it's neither object nor node
			return
		end
		-- Check if pointing to a liquid source
		local node = minetest.get_node(pointed_thing.under)
		local liquiddef = lib_materials.liquids[node.name]
		local item_count = user:get_wielded_item():get_count()

		if liquiddef ~= nil
		and liquiddef.claypot_item ~= nil
		and node.name == liquiddef.source then
			if check_protection(pointed_thing.under,
					user:get_player_name(),
					"take ".. node.name) then
				return
			end

			-- default set to return filled bucket
			local giving_back = liquiddef.claypot_item

			-- check if holding more than 1 empty bucket
			if item_count > 1 then

				-- if space in inventory add filled bucked, otherwise drop as item
				local inv = user:get_inventory()
				if inv:room_for_item("main", {name=liquiddef.claypot_item}) then
					inv:add_item("main", liquiddef.claypot_item)
				else
					local pos = user:getpos()
					pos.y = math.floor(pos.y + 0.5)
					minetest.add_item(pos, liquiddef.claypot_item)
				end

				-- set to return empty buckets minus 1
				giving_back = "lib_materials:tool_pot_clay_empty "..tostring(item_count-1)

			end

			-- force_renew requires a source neighbour
			local source_neighbor = false
			if liquiddef.force_renew then
				source_neighbor =
					minetest.find_node_near(pointed_thing.under, 1, liquiddef.source)
			end
			if not (source_neighbor and liquiddef.force_renew) then
				minetest.add_node(pointed_thing.under, {name = "air"})
			end

			return ItemStack(giving_back)
		else
			-- non-liquid nodes will have their on_punch triggered
			local node_def = minetest.registered_nodes[node.name]
			if node_def then
				node_def.on_punch(pointed_thing.under, node, user, pointed_thing)
			end
			return user:get_wielded_item()
		end
	end,
	on_place = function(itemstack, user, pointed_thing)
		-- Must be pointing to node
		if pointed_thing.type ~= "node" then
			return
		end

		local lpos = pointed_thing.under
		local node = minetest.get_node_or_nil(lpos)
		local ndef = node and minetest.registered_nodes[node.name]

		-- Call on_rightclick if the pointed node defines it
		if ndef and ndef.on_rightclick and
				not (user and user:is_player() and
				user:get_player_control().sneak) then
			return ndef.on_rightclick(
				lpos,
				node, user,
				itemstack)
		end

		if check_protection(lpos, user
				and user:get_player_name()
				or "", "take "..node.name) then
			return
		end

		-- Node IO Support
		local usedef = ndef
		local defpref = "node_io_"
		local lookat = "N"

		if napi then
			usedef = node_io
			lookat = node_io.get_pointed_side(user, pointed_thing)
			defpref = ""
		end

		-- Remove fluid from buffers if present
		if usedef[defpref..'can_take_liquid'] and usedef[defpref..'can_take_liquid'](lpos, node, lookat) then
			local bfc = usedef[defpref..'get_liquid_size'](lpos, node, lookat)
			local buffers = {}
			for i = 1, bfc do
				buffers[i] = usedef[defpref..'get_liquid_name'](lpos, node, lookat, i)
			end

			if #buffers > 0 then
				for id,fluid in pairs(buffers) do
					if fluid ~= "" then
						local took = usedef[defpref..'take_liquid'](lpos, node, lookat, user, fluid, 1000)
						if took.millibuckets == 1000 and took.name == fluid then
							if lib_materials.liquids[fluid] then
								itemstack = ItemStack(lib_materials.liquids[fluid].claypot_item)
								if ndef.on_timer then
									minetest.get_node_timer(lpos):start(ndef.node_timer_seconds or 1.0)
								end
								break
							end
						end
					end
				end
			end
		end

		return itemstack
	end
})


-- Register a new liquid
--    source          = name of the source node
--    flowing         = name of the flowing node
--    bucket_item     = name of the new bucket item (or nil if liquid is not takeable)
--    bucket_wood_item
--    bucket_steel_item
--    claypot_item    = name of the new clay pot item (or nil if liquid is not takeable)
--    inventory_image = texture of the new bucket item (ignored if itemname == nil)
--    bucket_name     = text description of the bucket item
--    bucket_wood_name 
--    bucket_steel_name
--    claypot_name    =text description of the claypot item
--    groups          = (optional) groups of the bucket item, for example {water_bucket = 1}
--    force_renew     = (optional) bool. Force the liquid source to renew if it has a
--                    source neighbour, even if defined as 'liquid_renewable = false'.
--                    Needed to avoid creating holes in sloping rivers.
-- This function can be called from any mod (that depends on bucket).


-- River water source is 'liquid_renewable = false' to avoid horizontal spread
-- of water sources in sloping rivers that can cause water to overflow
-- riverbanks and cause floods.
-- River water source is instead made renewable by the 'force renew' option
-- used here.


for i, liq in ipairs(lib_materials.read_csv("|", lib_materials.path .. "/containers.csv")) do
	--#LiqSrc|LiqFlo|LiqBuck|LiqPot|LiqImg|BuckName|ClaypotName|LiqGrps|LiqFrcRenew
	local liqsrc, liqflo, liqbuc, liqpot, liqimg, buckname, claypotname, liqgrps, liqfrcrenew = unpack(liq)

	if string.find(liqsrc, "water") then
		if string.find(liqsrc, "river") then
			lib_materials.register_liquid(
				"lib_materials:" .. liqsrc,
				"lib_materials:" .. liqflo,
				"lib_materials:tool_bucket_" .. liqbuc,
				"lib_materials:tool_bucket_wood_" .. liqbuc,
				"lib_materials:tool_bucket_steel_" .. liqbuc,
				"lib_materials:tool_pot_clay_" .. liqpot,
				liqimg,
				"Default " .. liqsrc .. " Bucket (lib_mat)",
				"Wooden " ..liqsrc .. " Bucket (lib_mat)",
				"Steel " .. liqsrc .. " Bucket (lib_mat)",
				liqsrc .. " Clay Pot (lib_mat)",
				{water_bucket = 1,not_in_creative_inventory=1},
				true
			)
		else
			lib_materials.register_liquid(
				"lib_materials:" .. liqsrc,
				"lib_materials:" .. liqflo,
				"lib_materials:tool_bucket_" .. liqbuc,
				"lib_materials:tool_bucket_wood_" .. liqbuc,
				"lib_materials:tool_bucket_steel_" .. liqbuc,
				"lib_materials:tool_pot_clay_" .. liqpot,
				liqimg,
				"Default " .. liqsrc .. " Bucket (lib_mat)",
				"Wooden " ..liqsrc .. " Bucket (lib_mat)",
				"Steel " .. liqsrc .. " Bucket (lib_mat)",
				liqsrc .. " Clay Pot (lib_mat)",
				{water_bucket = 1,not_in_creative_inventory=1}
			)
		end
	else
		lib_materials.register_liquid(
			"lib_materials:" .. liqsrc,
			"lib_materials:" .. liqflo,
			"lib_materials:tool_bucket_" .. liqbuc,
			"lib_materials:tool_bucket_wood_" .. liqbuc,
			"lib_materials:tool_bucket_steel_" .. liqbuc,
			"lib_materials:tool_pot_clay_" .. liqpot,
			liqimg,
			"Default " .. liqsrc .. " Bucket (lib_mat)",
			"Wooden " ..liqsrc .. " Bucket (lib_mat)",
			"Steel " .. liqsrc .. " Bucket (lib_mat)",
			liqsrc .. " Clay Pot (lib_mat)",
			{not_in_creative_inventory=1}
		)
	end




end

	--minetest.log(S("[MOD] lib_materials:  dump lib_materials.liquids: " .. dump(lib_materials.liquids)))

--Register lava buckets as a fuel source
minetest.register_craft({
	type = "fuel",
	recipe = "lib_materials:tool_bucket_lava",
	burntime = 60,
	replacements = {{"lib_materials:tool_bucket_lava", "lib_materials:tool_bucket_empty"}},
})
minetest.register_craft({
	type = "fuel",
	recipe = "lib_materials:tool_pot_clay_lava",
	burntime = 60,
	replacements = {{"lib_materials:tool_pot_clay_lava", "lib_materials:tool_pot_clay_empty"}},
})
minetest.register_craft({
	type = "fuel",
	recipe = "lib_materials:tool_bucket_steel_lava",
	burntime = 60,
	replacements = {{"lib_materials:tool_bucket_steel_lava", "lib_materials:tool_bucket_steel_empty"}},
})




bucket = {}
bucket.liquids = lib_materials.liquids

minetest.register_alias("bucket",       "lib_materials:tool_bucket_empty")
minetest.register_alias("bucket_water", "lib_materials:tool_bucket_water")
minetest.register_alias("bucket_lava",  "lib_materials:tool_bucket_lava")

minetest.register_alias("bucket:bucket_empty", "lib_materials:tool_bucket_empty")
minetest.register_alias("bucket:bucket_water", "lib_materials:tool_bucket_water")
minetest.register_alias("bucket:bucket_lava",  "lib_materials:tool_bucket_lava")









