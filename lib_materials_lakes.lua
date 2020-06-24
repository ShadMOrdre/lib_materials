--[[
	1. We choose a random position in the same way plants are placed. That's the root for our lake.
	2. From there we go lx in the x direction and lz in the z direction. That gives us a rectangle.
	3. We check the sides of the rectangle for air and itterate down until the rectangle is closed.
	4. Now we repeat this itteration, but search for the opposite, not for solid nodes but for air.
	5. As soon as we found the lower limit, we check if the bottom is sealed. Now we have some jar.
	6. Now as we made sure no water can escape we can replace all air inside the volume with water.
--]]

--lib_lakes = {}

local c_air = minetest.get_content_id("air")
local c_ignore = minetest.get_content_id("ignore")
local c_lava = minetest.get_content_id("lib_materials:liquid_lava_source")
local c_water = minetest.get_content_id("lib_materials:liquid_water_source")
local c_ice = minetest.get_content_id("lib_materials:ice")
local c_murky = minetest.get_content_id("lib_materials:liquid_water_murky_source")
local c_dirty = minetest.get_content_id("lib_materials:liquid_water_dirty_source")
local c_river = minetest.get_content_id("lib_materials:liquid_water_river_source")
local c_muddy = minetest.get_content_id("lib_materials:liquid_water_river_muddy_source")
local c_quick_source = minetest.get_content_id("lib_materials:liquid_quicksand_source")
local c_quick = minetest.get_content_id("lib_materials:quicksand")
local c_mud_boil = minetest.get_content_id("lib_materials:liquid_mud_boiling_source") 
local c_mud_wet = minetest.get_content_id("lib_materials:mud_wet")
local c_mud_dried = minetest.get_content_id("lib_materials:dirt_mud_dried")
local c_fluid_id

--
-- Find position
--

minetest.register_on_generated(function(minp, maxp, seed)
	if maxp.y <= 1024 and minp.y >= -32 then
		local perlin1 = minetest.get_perlin(318, 3, 0.6, 100)
		-- Lua Voxel Machine
		local vm = minetest.get_voxel_manip()
		local vm_minp, vm_maxp = vm:read_from_map({x=minp.x, y=minp.y, z=minp.z-16}, {x=maxp.x+16, y=maxp.y+16, z=maxp.z+16})
		local a = VoxelArea:new{MinEdge=vm_minp, MaxEdge=vm_maxp}
		local data = vm:get_data()
		-- Assume X and Z lengths are equal
		local divlen = 32
		local divs = (maxp.x-minp.x)/divlen+1;
		for divx=0,divs-1 do
		for divz=0,divs-1 do
			local x0 = minp.x + math.floor((divx+0)*divlen)
			local z0 = minp.z + math.floor((divz+0)*divlen)
			local x1 = minp.x + math.floor((divx+1)*divlen)
			local z1 = minp.z + math.floor((divz+1)*divlen)
			-- Determine amount from perlin noise
			local amount = math.floor(perlin1:get2d({x=x0, y=z0}) * 5 + 10)
			-- Find random positions based on this random
			local pr = PseudoRandom(seed+486)
			for i=0,amount do
				local x = pr:next(x0, x1)
				local z = pr:next(z0, z1)
				local ground_y = nil
				-- Prevent from starting underground
				local nn = minetest.get_node({x=x,y=maxp.y,z=z}).name
				if nn ~= "air" and nn ~= "ignore" then
					return
				end
				-- Find groundlevel
				for y=maxp.y,minp.y,-1 do
					local nn = minetest.get_node({x=x,y=y,z=z}).name
					if nn ~= "air" and nn~= "ignore" then
						--local is_leaves = minetest.registered_nodes[nn].groups.leaves
						--if is_leaves == nil or is_leaves == 0 then
						--	ground_y = y
						--	break
						--end
						local is_removable
						is_removable = minetest.registered_nodes[nn].groups.leaves
						is_removable = minetest.registered_nodes[nn].groups.tree
						is_removable = minetest.registered_nodes[nn].groups.sapling
						is_removable = minetest.registered_nodes[nn].groups.plant
						is_removable = minetest.registered_nodes[nn].groups.lib_ecology_tree
						is_removable = minetest.registered_nodes[nn].groups.lib_ecology_sapling
						is_removable = minetest.registered_nodes[nn].groups.lib_ecology_leaves
						is_removable = minetest.registered_nodes[nn].groups.lib_ecology_fruit
						is_removable = minetest.registered_nodes[nn].groups.lib_ecology_plant
						is_removable = minetest.registered_nodes[nn].groups.flora
						is_removable = minetest.registered_nodes[nn].groups.flower
						is_removable = minetest.registered_nodes[nn].groups.growing

						if is_removable == nil or is_removable == 0 then
							ground_y = y
							break
						end
					end
				end
				if ground_y and ground_y >= 2 then

					local p = {x=x,y=ground_y,z=z}
					local ground_name = minetest.get_node(p)
					local node_name = minetest.get_node(p).name

					if ground_name == "lib_materials:liquid_water_source" then
						return
					end

--					if (not string.find(ground_name, "dirt")) or (not string.find(ground_name, "sand")) or (not string.find(ground_name, "snow")) or (not string.find(ground_name, "stone")) then
					if (not string.find(ground_name, "sand")) or (not string.find(ground_name, "snow")) or (not string.find(ground_name, "stone")) then
						return
					end

					local lx = pr:next(10,30)
					local lz = pr:next(10,30)

					if string.find(node_name, "_black") then
						c_fluid_id = c_dirty
					end
					if string.find(node_name, "_brown") then
						c_fluid_id = c_dirty
					end
					if string.find(node_name, "_rainforest") then
						c_fluid_id = c_murky
					end
					if string.find(node_name, "_silt") then
						c_fluid_id = c_murky
					end
					if string.find(node_name, "_mud") then
						c_fluid_id = c_murky
					end
					if string.find(node_name, "_clay") then
						c_fluid_id = c_muddy
					end
					if string.find(node_name, "_gravel") then
						c_fluid_id = c_mud_dried
					end
					if string.find(node_name, "_sand") then
						c_fluid_id = c_mud_dried
					end
					if string.find(node_name, "stone_") then
						c_fluid_id = c_lava
					end
					if string.find(node_name, "snow") then
						c_fluid_id = c_ice
					end
					if ground_y >= lib_materials.minheight_snow then
						c_fluid_id = c_ice
					end

					if c_fluid_id then
					
					else
						c_fluid_id = c_river
					end

					-- if c_water == "" then
					
					-- else
						-- c_water = minetest.get_content_id("default:river_water_source")
					-- end

					lib_materials.lakes_fill(data, a, p, lx, lz)
					--c_fluid_id = ""
				end
				
			end
		end
		end
		-- Write to map
		vm:set_data(data)
		vm:update_liquids()
		vm:write_to_map(data)
		vm:update_map()
	end
end)

--
-- Make lake
--

-- TODO: combine functions into one
local function check_x(data, a, x, y, z, lx, lz)
	for xi = 0, lx do
		local vi = a:index(x+xi, y, z)
		if data[vi] == c_air or data[vi] == c_ignore then
			return true
		end
		local vii = a:index(x+xi, y, z+lz)
		if data[vii] == c_air or data[vii] == c_ignore then
			return true
		end
	end
end

local function check_z(data, a, x, y, z, lx, lz)
	for zi = 0, lz do
		local vi = a:index(x, y, z+zi)
		if data[vi] == c_air or data[vi] == c_ignore then
			return true
		end
		local vii = a:index(x+lx, y, z+zi)
		if data[vii] == c_air or data[vii] == c_ignore then
			return true
		end
	end
end

local function leak(data, a, j, lx, lz)
	for xi = 0, lx do
	for zi = 0, lz do
		local vi = a:index(xi, -j, zi)
		if data[vi] == c_air or data[vi] == c_ignore then
			return true
		end
	end
	end
end

function lib_materials.lakes_fill(data, a, pos, lx, lz)
	local x, y, z = pos.x, pos.y, pos.z
	local water_a = VoxelArea:new{MinEdge={x=0, y=-32, z=0}, MaxEdge={x=lx, y=0, z=lz}}
	local water_buffer = {}
	-- Find upper start
	local i = 0
	while i <= 16 do
		if check_x(data, a, x, y-i, z, lx, lz) or check_z(data, a, x, y-i, z, lx, lz) then
			i = i + 1
		else
			break
		end
	end
	if i >= 16 then return end
	-- Itterate downwards
	local j = i
	while j <= (i+16) do
		if check_x(data, a, x, y-j, z, lx, lz) or check_z(data, a, x, y-j, z, lx, lz) then
			j = j - 1
			break
		else
			j = j + 1
		end
	end
	if j >= i+16 then return end
--	print ('[lib_lakes] i = '.. i ..'')
--	print ('[lib_lakes] j = '.. j ..'')
	-- Check bottom
	if leak(data, a, j, lx, lz) then return end
	-- Add volume to buffer
	for xi = 0, lx do
	for yi = -i, -j, -1 do
	for zi = 0, lz do
		water_buffer[water_a:index(xi, yi, zi)] = true
	end
	end
	end
	-- Add the water
	for xi = water_a.MinEdge.x, water_a.MaxEdge.x do
	for yi = water_a.MinEdge.y, water_a.MaxEdge.y do
	for zi = water_a.MinEdge.z, water_a.MaxEdge.z do
		if a:contains(x+xi, y+yi, z+zi) then
			local vi = a:index(x+xi, y+yi, z+zi)
			if data[vi] == c_air or data[vi] == c_ignore then
				if water_buffer[water_a:index(xi, yi, zi)] then
					data[vi] = c_fluid_id
--					print ('[lib_lakes] Wasser auf (' .. x+xi .. ',' .. y+yi .. ',' .. z+zi .. ')')
				end
			end
		end
	end
	end
	end
end

