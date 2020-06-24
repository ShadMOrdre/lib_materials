


local neighbors_p = {
					{x=1},{x=-1},
					{z=1},{z=-1}
					}

local neighbors_p2 = {
					{x=2},{x=-2},
					{z=2},{z=-2}
					}

local neighbors_d = {
					{x=1,z=1},
					{x=1,z=-1},
					{x=-1,z=1},
					{x=-1,z=-1}
					}

local pos_shift = function(pos,vec)
	vec.x=vec.x or 0
	vec.y=vec.y or 0
	vec.z=vec.z or 0
	return {x=pos.x+vec.x,
			y=pos.y+vec.y,
			z=pos.z+vec.z}
end

local get_nodename_off = function(pos,vec)
	return minetest.get_node(pos_shift(pos,vec)).name
end

local get_neighbors_walkable = function(pos)
	local ret = 0
	for _,v in ipairs(neighbors_p) do
		if minetest.registered_nodes[get_nodename_off(pos,v)].walkable then
			ret = ret+1
		end
	end
	return ret
end

minetest.register_abm({
	label="Erosion_crumb",
	nodenames = {"group:crumbly","group:snowy"},
	neighbors = {"lib_materials:liquid_water_rushing_flowing", "lib_materials:liquid_water_rushing_source"},
	interval = 0.2,
    chance = 1,
	catch_up = false,
	action = function(pos, node, active_object_count, active_object_count_wider)

		local node1up = get_nodename_off(pos,{y=1})
		if minetest.registered_nodes[node1up].drawtype == "flowingliquid" then
			if get_neighbors_walkable(pos) < 4 then
				minetest.remove_node(pos)
				for _,v in ipairs(neighbors_p) do
					local node = get_nodename_off(pos,v)
					local v2=table.copy(v)
					v2.y = v2.y+1
					local node2 = get_nodename_off(pos,v2)
					if (minetest.get_item_group(node,"crumbly")>0 or
					minetest.get_item_group(node,"snowy")>0) and not
					minetest.registered_nodes[node2].walkable then
						minetest.remove_node(pos_shift(pos,v))
						minetest.remove_node(pos_shift(pos,v2))
					end
				end
			end
		end
	end
})

minetest.register_abm({
	label="Erosion_stone",
	nodenames = {"group:stone","default:ice"},
	neighbors = {"lib_materials:liquid_water_rushing_source"},
	interval = 1,
    chance = 2,
	catch_up = false,
	action = function(pos, node, active_object_count, active_object_count_wider)
	
		local node2up = minetest.get_node(pos_shift(pos,{y=2}))
		local node1up = minetest.get_node(pos_shift(pos,{y=1}))
		
		if pos.y % 4 ~= 0 then
			if minetest.registered_nodes[node1up.name].drawtype == "liquid" and
			get_neighbors_walkable(pos) <= 2 then
				minetest.remove_node(pos)
				return
			end
		end
		
		if minetest.registered_nodes[node2up.name].drawtype ~= "liquid" and
			minetest.registered_nodes[node1up.name].drawtype == "liquid" then
			local node
			local vec
			
			for _,v in ipairs(neighbors_p) do
				node = minetest.get_node(pos_shift(pos,v))
				if minetest.registered_nodes[node.name].drawtype == "liquid" then
					vec = {x=v.x*-1,y=v.y+1,z=v.z*-1}
					node = minetest.get_node(pos_shift(pos,vec))
					if minetest.registered_nodes[node.name].walkable then
						minetest.remove_node(pos)
						return
					end
				end
			end
		end
	end
})

minetest.register_abm({
	label="Erosion_flora",
	nodenames = {"group:attached_node"},
	neighbors = {"lib_materials:liquid_water_rushing_flowing", "lib_materials:liquid_water_rushing_source"},
	interval = 0.2,
    chance = 1,
	catch_up = false,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.remove_node(pos)
	end
})	
