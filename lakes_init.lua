
lakes = {}

-- plant these plants around lakes
lakes.plants_around_lakes = {}
lakes.plants_around_lakes_humid = {
	"lib_ecology:grass_jungle_1", "lib_ecology:grass_jungle_2", "lib_ecology:grass_jungle_3", "lib_ecology:grass_jungle_4", "lib_ecology:grass_jungle_5",
	"lib_ecology:grass_tall",
	"lib_ecology:plant_reedmace_1", "plant_reedmace_2", "plant_reedmace_3",
	"lib_ecology:fern_large_1", "lib_ecology:fern_large_2", "lib_ecology:fern_large_3",
	}
--	"lib_ecology:fern_small_1", "lib_ecology:fern_small_2", "lib_ecology:fern_small_3",
lakes.plants_around_lakes_temperate = {
	"lib_ecology:grass_swamp_1", "lib_ecology:grass_swamp_2", "lib_ecology:grass_swamp_3", "lib_ecology:grass_swamp_4", "lib_ecology:grass_swamp_5",
	"lib_ecology:grass_giant",
	"lib_ecology:juncus_1", "lib_ecology:juncus_2", "lib_ecology:juncus_3",
	"lib_ecology:plant_cattail", "lib_ecology:plant_cattail_02",
	}
lakes.plants_around_lakes_arid = {
	"lib_ecology:grass_1", "lib_ecology:grass_2", "lib_ecology:grass_3", "lib_ecology:grass_4", "lib_ecology:grass_5",
	"lib_ecology:plant_crabgrass",
	"lib_ecology:plant_arrow_arum", "lib_ecology:plant_bulrush", "lib_ecology:plant_cattails_03",
	"lib_ecology:grass_marram_1", "lib_ecology:grass_marram_2", "lib_ecology:grass_marram_3",
	}

--lib_ecology.schematics.select(f)

function lakes.grow_rhodedendron(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_ecology.schematics.select("schem_bush_rhodedendron"), "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_blueberry(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_ecology.schematics.select("schem_bush_blueberry"), "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_reedmace(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_ecology.schematics.select("schem_plant_reedmace"), "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_reedmace_with_flowers(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_ecology.schematics.select("schem_plant_reedmace_with_flowers"), "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_rock_desert_01_01(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_materials.schem_rock_desert_01_01, "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_rock_desert_01_02(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_materials.schem_rock_desert_01_02, "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_rock_desert_02_01(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_materials.schem_rock_desert_02_01, "random", nil,"place_center_x, place_center_z", false)
end
function lakes.grow_rock_desert_02_02(pos)
	minetest.place_schematic({x = pos.x - 2, y = pos.y - 1, z = pos.z - 2}, lib_materials.schem_rock_desert_02_02, "random", nil,"place_center_x, place_center_z", false)
end


--[[lakes.around_lake_decorations = {
	default.grow_bush,
	default.grow_bush,
	default.grow_blueberry_bush,
	default.grow_blueberry_bush,
	default.grow_blueberry_bush,
	default.grow_acacia_bush,
	default.grow_pine_bush,
	default.grow_large_catus,
	}
lakes.around_lake_decorations = {
	lib_ecology.schematics.select("schem_bush_rhodedendron"),
	lib_ecology.schematics.select("schem_bush_blueberry"),
	lib_ecology.schematics.select("schem_plant_reedmace"),
	lib_ecology.schematics.select("schem_plant_reedmace_with_flowers"),
	lib_materials.schem_rock_desert_01_01,
	lib_materials.schem_rock_desert_01_02,
	lib_materials.schem_rock_desert_02_01,
	lib_materials.schem_rock_desert_02_02,
}
--]]
lakes.around_lake_decorations = {
	lakes.grow_rhodedendron,
	lakes.grow_blueberry,
	lakes.grow_reedmace,
	lakes.grow_reedmace_with_flowers,
	lakes.grow_rock_desert_01_01,
	lakes.grow_rock_desert_01_02,
	lakes.grow_rock_desert_02_01,
	lakes.grow_rock_desert_02_02,
}


--local fill_lake_with = "default:river_water_source";
local fill_lake_with = "";
local fill_lake_with_river = "lib_materials:liquid_water_river_source";
local fill_lake_with_air = "air";
local fill_lake_with_river_muddy = "lib_materials:liquid_water_river_muddy_source";
local fill_lake_with_mud_dried = "lib_materials:dirt_mud_dried";
local fill_lake_with_dirty = "lib_materials:liquid_water_dirty_source";
local fill_lake_with_swamp = "lib_materials:liquid_water_swamp_source";
local fill_lake_with_ice = "lib_materials:ice";


-- helper function for mark_min_max_height_in_mapchunk(..)
-- math_extrema: math.min for maxheight; math.max for minheight
-- populates the tables minheight and maxheight with data;
local mark_min_max_height_local = function(minp, maxp, heightmap, ax, az, i, chunksize, minheight, maxheight, direction)
	i = i+1;
	if( ax==minp.x or az==minp.z or ax==maxp.x or az==maxp.z) then
		minheight[i] = heightmap[i];
		maxheight[i] = heightmap[i];
	else
		if( not( minheight[i])) then
			minheight[i] = -100000;
		end
		if( not( maxheight[i])) then
			maxheight[i] =  100000;
		end

		local i_side = i-chunksize;
		local i_prev = i-1;
		local i_add  = -1;
		local swap_args = false;
		if( direction==-1 ) then
			i_side = i+chunksize;
			i_prev = i+1;
			i_add  = 1;
			swap_args = true;
		else
			direction = 1;
		end

		-- do for minheight (=search for hills)
		local hr = minheight[ i_side ];
		-- handle minheight
		-- compare minheight with the neighbour to the right or left
		if( hr and heightmap[i] and hr>minheight[i]) then
			minheight[i] = math.min(hr, heightmap[i]);
		end

		if( ((direction==1 and ax>minp.x) or (direction==-1 and ax<maxp.x))
		   -- has the neighbour before a higher minheight?
		   and minheight[ i_prev ]
		   and minheight[ i_prev ] > minheight[ i ]) then
			minheight[ i ] = math.min( minheight[ i_prev ], heightmap[i]);
		end
		hr = minheight[ i ];
		-- walk backward in that row and set all with a lower minheight but
		-- a sufficiently high height to the new minheight
		local n = 1;
		local i_run = i-n;
		while( hr
		   and ((direction==1 and (ax-n)>=minp.x) or (direction==-1 and (ax+n)<=maxp.x))
		   -- has the neighbour before a lower minheight?
	   and minheight[ i_run ]
		   and minheight[ i_run ] < hr
		   -- is the neighbour before heigh enough?
		   and (heightmap[ i_run ] >= hr or heightmap[ i_run ] > minheight[ i_run ])) do
			hr = math.min( hr, heightmap[ i_run ]);
			minheight[ i_run ] = hr;

			n = n+1;
			i_run = i_run + i_add;
		end

		-- same for maxheight (= search for holes)
		hr = maxheight[ i_side ];
		-- compare maxheight with the neighbour to the right or left
		if( hr and heightmap[i] and hr<maxheight[i]) then
			maxheight[i] = math.max(hr, heightmap[i]);
		end

		if( ((direction==1 and ax>minp.x) or (direction==-1 and ax<maxp.x))
		   -- has the neighbour before a higher maxheight?
		   and maxheight[ i_prev ]
		   and maxheight[ i_prev ] < maxheight[ i ]) then
			maxheight[ i ] = math.max( maxheight[ i_prev ], heightmap[i]);
		end
		hr = maxheight[ i ];
		-- walk backward in that row and set all with a lower maxheight but
		-- a sufficiently high height to the new maxheight
		local n = 1;
		local i_run = i-n;
		while( hr
		   and ((direction==1 and (ax-n)>=minp.x) or (direction==-1 and (ax+n)<=maxp.x))
		   -- has the neighbour before a lower maxheight?
		   and maxheight[ i_run ]
		   and maxheight[ i_run ] > hr
		   -- is the neighbour before heigh enough?
		   and (heightmap[ i_run ] <= hr or heightmap[ i_run ] < maxheight[ i_run ])) do
			hr = math.max( hr, heightmap[ i_run ]);
			maxheight[ i_run ] = hr;

			n = n+1;
			i_run = i_run + i_add;
		end
	end
end

-- detect places where nodes might be removed or added without changing the borders
-- of the mapchunk; afterwards, the landscape may be levelled, but one hill or hole
-- cannot yet be distinguished from the other;
-- more complex shapes may require multiple runs
-- Note: There is no general merging here (apart fromm the two runs) because MT maps are
--       usually very small-scale and there would be too many areas that may need merging.
local mark_min_max_height_in_mapchunk = function(minp, maxp, heightmap)
	local chunksize = maxp.x - minp.x + 1;
	local minheight = {}
	local maxheight = {}
	for j=1, 2 do
		local i = 0
		for az=minp.z,maxp.z do
		for ax=minp.x,maxp.x do
			-- fill minheight and maxheight with data whereever hills or holes are
			mark_min_max_height_local(minp, maxp, heightmap, ax, az, i, chunksize, minheight, maxheight, 1);
			i = i+1
		end
		end

		-- we keep i the way it is;
		i = i+1;
		-- the previous run could not cover all situations; check from the other side now
		for az=maxp.z,minp.z,-1 do
		for ax=maxp.x,minp.x,-1 do
			-- update minheight and maxheight for hills and holes; but this time, start from the
			-- opposite corner of the mapchunk in order to preserve what is needed there
			mark_min_max_height_local(minp, maxp, heightmap, ax, az, i, chunksize, minheight, maxheight, -1);
			i = i-1;
		end
		end
	end
	return {minheight = minheight, maxheight = maxheight};
end


-- helper function for mark_holes_and_hills_in_mapchunk(..)
local identify_individual_holes_or_hills = function( minp, maxp, ax, az, i, chunksize, markmap, merge_into, hole_counter, hole_data, h_real, h_max, condition)
	markmap[ i ] = 0;
	-- no hole or hill
	if( not( condition )) then
		return hole_counter;
	end
	local h_prev_z = markmap[ i-chunksize ];
	local h_prev_x = markmap[ i-1 ];
	local match_z = 0;
	local match_x = 0;
	-- if the node to the right (at z=z-1) is also part of a hole, then
	-- both nodes are part of the same hole
	if( az>minp.z and h_prev_z and h_prev_z > 0 ) then
		match_z = h_prev_z;
	end
	-- if the node before (at x=x-1) is also part of a hole, then both
	-- nodes are also part of the same hole
	if( ax>minp.x and h_prev_x and h_prev_x > 0 ) then
		match_x = h_prev_x;
	end

	-- continue the hole from z direction
	if(     match_z > 0 and match_x ==0) then
		markmap[ i ] = merge_into[ match_z ];
	-- continue the hole from x direction
	elseif( match_z ==0 and match_x > 0) then
		markmap[ i ] = merge_into[ match_x ];
	-- new hole at this place
	elseif( match_z ==0 and match_x ==0) then
		hole_counter = hole_counter + 1;
		merge_into[ hole_counter ] = hole_counter;
		markmap[ i ] = hole_counter;
	-- both are larger than 0 and diffrent - we need to merge
	else
		markmap[ i ] = merge_into[ match_z ];
		-- actually do the merge
		for k,v in ipairs(merge_into) do
			if( merge_into[ k ] == match_x ) then
				merge_into[ k ] = merge_into[ match_z ];
			end
		end
	end

	-- gather some statistical data in hole_data
	if( markmap[ i ]>0 ) then
		local id = markmap[ i ];
		-- height difference
		local ay = math.abs(h_max - h_real);
		if( not( hole_data[ id ])) then
			hole_data[ id ] = {
				minp = {x=ax, z=az, y=math.min(h_max, h_real)},
				maxp = {x=ax, z=az, y=math.max(h_max, h_real)},
				size = 1,
				volume = ay,
				};
		else
			-- the surface area is one larger now
			hole_data[ id ].size   = hole_data[ id ].size   + 1;
			-- the volume has also grown
			hole_data[ id ].volume = hole_data[ id ].volume + ay;
			if( ax < hole_data[ id ].minp.x ) then
				hole_data[ id ].minp.x = ax;
			end
			-- minimal and maximal dimensions may have changed
			hole_data[ id ].minp.x = math.min( ax, hole_data[ id ].minp.x );
			hole_data[ id ].maxp.x = math.max( ax, hole_data[ id ].maxp.x );
			hole_data[ id ].minp.z = math.min( az, hole_data[ id ].minp.z );
			hole_data[ id ].maxp.z = math.max( az, hole_data[ id ].maxp.z );
			hole_data[ id ].minp.y = math.min( ay, hole_data[ id ].minp.y );
			hole_data[ id ].maxp.y = math.max( ay, hole_data[ id ].maxp.y );
		end
	end
	return hole_counter;
end


-- helper function for mark_holes_and_hills_in_mapchunk(..)
-- works the same for hills and holes
local merge_if_same_hole_or_hill = function(hole_data, merge_into)
	local id2merged = {}
	local merged = {}
	local hole_counter = 1;
	-- we already know from merge_into that k needs to be merged into v
	for k,v in ipairs(merge_into) do
		-- we have not covered the merge target
		if( not( id2merged[ v ])) then
			id2merged[ v ] = hole_counter;
			hole_counter = hole_counter + 1;
			merged[ v ] = hole_data[ v ];
		-- another hole or hill has already been treated -> merge with new data needed
		else
			-- merge hole_data_merged
			merged[v].size   = merged[ v ].size   + hole_data[ k ].size;
			merged[v].volume = merged[ v ].volume + hole_data[ k ].volume;
			-- minimal and maximal dimensions may have changed
			merged[v].minp.x = math.min( merged[v].minp.x, hole_data[k].minp.x );
			merged[v].maxp.x = math.max( merged[v].maxp.x, hole_data[k].maxp.x );
			merged[v].minp.z = math.min( merged[v].minp.z, hole_data[k].minp.z );
			merged[v].maxp.z = math.max( merged[v].maxp.z, hole_data[k].maxp.z );
			merged[v].minp.y = math.min( merged[v].minp.y, hole_data[k].minp.y );
			merged[v].maxp.y = math.max( merged[v].maxp.y, hole_data[k].maxp.y );
		end
		id2merged[ k ] = id2merged[ v ];
	end
	return {id2merged=id2merged, merged=merged};
end


local mark_holes_and_hills_in_mapchunk = function( minp, maxp, heightmap, minheight, maxheight)
	local chunksize = maxp.x - minp.x + 1;
	-- distinguish the individual hills and holes from each other so that we may treat
	-- each one diffrently if so desired
	local holes_markmap = {}
	local hills_markmap = {}
	-- used to mark the individual holes on the markmap
	local hole_counter = 0;
	local hill_counter = 0;
	-- some holes will first be seen from diffrent directions and get diffrent IDs (=
	-- hole_counter) assigned; these need to be merged because they're the same
	local holes_merge_into = {};
	local hills_merge_into = {};
	-- store size, minp/maxp, max/min depth/height
	local hole_data = {};
	local hill_data = {};

	local i = 0
	for az=minp.z,maxp.z do
	for ax=minp.x,maxp.x do
		i = i+1;

		local h_real = heightmap[i];
		local h_min  = minheight[i];
		local h_max  = maxheight[i];
		-- do this for holes
		hole_counter = identify_individual_holes_or_hills( minp, maxp, ax, az, i, chunksize,
			holes_markmap, holes_merge_into, hole_counter, hole_data, h_real, h_min,
			-- h_max>0 because we do not want to create pools/fill land below sea level
			( h_max and h_real and h_max>h_real and h_max<maxp.y and h_max>minp.y and h_max>0));
		-- ..and for hills
		hill_counter = identify_individual_holes_or_hills( minp, maxp, ax, az, i, chunksize,
			hills_markmap, hills_merge_into, hill_counter, hill_data, h_real, h_max,
			-- the socket of individual hills may well lie below water level
			( h_min and h_real and h_min<h_real and h_min<maxp.y and h_min>minp.y and h_min>minp.y));
	end
	end

	-- a hole or hill might have been found from diffrent directions and thus
	-- might have gotten diffrent ids; merge them if they represent the same
	-- hole or hill
	local holes = merge_if_same_hole_or_hill(hole_data, holes_merge_into);
	local hills = merge_if_same_hole_or_hill(hill_data, hills_merge_into);

	return {holes = holes, holes_merge_into = holes_merge_into, holes_markmap = holes_markmap,
	        hills = hills, hills_merge_into = hills_merge_into, hills_markmap = hills_markmap};
end


-- create a (potential) new heightmap where all the hills we discovered are flattened and all
-- holes filled with something so that we get more flat terrain;
-- this function also adjusts
-- 	detected.hills.merged[id].target_height (set to the flattened value)
-- 	and detected.hills_markmap[i]  for easier access without having to go throuh
-- 	                               detected.hills_merge_into in the future
-- (same for holes)
local heightmap_with_hills_lowered_and_holes_filled = function( minp, maxp, heightmap, extrema, detected)
	local adjusted_heightmap = {}
	local chunksize = maxp.x - minp.x + 1;
	local i = 0
	for az=minp.z,maxp.z do
	for ax=minp.x,maxp.x do
		i = i+1;

		-- no changes at the borders of the mapchunk
		if( ax==minp.x or ax==maxp.x or az==minp.z or az==maxp.z) then
			adjusted_heightmap[i] = heightmap[i];
		else
			-- make sure it gets one value set
			adjusted_heightmap[i] = heightmap[i];

			-- is there a hill?
			local hill_id = detected.hills_markmap[i];
			if( hill_id and hill_id>0) then
				-- which hill are we dealing with?
				local id = detected.hills_merge_into[ hill_id ];
				local new_height = detected.hills.merged[id].target_height;
				if( not( new_height )) then
					-- target height: height if this hill would be removed completely
					new_height = minp.y-1;
				end
				new_height = math.max( new_height, extrema.minheight[i]);
				local id_hole_right = detected.holes_markmap[ i-chunksize ];
				if( id_hole_right and id_hole_right > 0) then
					new_height = math.max( new_height, detected.holes.merged[id_hole_right].target_height);
				end
				local id_hole_prev  = detected.holes_markmap[ i-1 ];
				if( id_hole_prev  and id_hole_prev > 0) then
					new_height = math.min( new_height, detected.holes.merged[id_hole_prev ].target_height);
				end
				detected.hills.merged[id].target_height = new_height;
				adjusted_heightmap[i] = new_height;
				-- store for later use
				detected.hills_markmap[i] = id;
			end

			-- is there a hole?
			local hole_id = detected.holes_markmap[i];
			if( hole_id and hole_id>0) then
				-- which hole are we dealing with?
				local id = detected.holes_merge_into[ hole_id ];
				local new_height = detected.holes.merged[id].target_height;
				if( not( new_height )) then
					-- target height: height if this hole would be filled completely
					new_height = maxp.y + 1;
				end
				new_height = math.min( new_height, extrema.maxheight[i]);
				-- is either the neighbour to the right or in the south a hill?
				-- we have processed that place already; thus we can be sure
				-- that this is an id that can be fed to detected.hills.merged
				-- directly
				local id_hill_right = detected.hills_markmap[ i-chunksize ];
				if( id_hill_right and id_hill_right > 0) then
					new_height = math.min( new_height, detected.hills.merged[id_hill_right].target_height);
				end
				local id_hill_prev  = detected.hills_markmap[ i-1 ];
				if( id_hill_prev  and id_hill_prev > 0) then
					new_height = math.min( new_height, detected.hills.merged[id_hill_prev ].target_height);
				end
				detected.holes.merged[id].target_height = new_height;
				adjusted_heightmap[i] = new_height;
				-- store for later use
				detected.holes_markmap[i] = id;
			end
		end
	end
	end
	return adjusted_heightmap;
end


lakes.lake_shore = function(shore_nodes)
	pos_done = {};
	for pos, val in pairs(shore_nodes) do
		lakes.lake_shore_one_node( pos, pos_done );
	end
end

lakes.lake_shore_one_node = function( pos, pos_done )
	-- lake shores may be detected multiple times, and bushes need
	-- more space around them; do not place something if the room
	-- might already be taken
	if(pos_done[ minetest.pos_to_string(pos)]) then
		return;
	end
	-- only place something if there is room (on the original map; placed
	-- schematics and nodes are not detected this way)
	local n = minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z});
	if( n and n.name and n.name~="air") then
		return;
	end
	-- does not look good if papyrus or other plants apart from bushes sit on snow
	local n_below = minetest.get_node({x=pos.x, y=pos.y, z=pos.z});
	r = math.random(4);
	-- no point in placing plants on ice...
	if( not(n_below) or n_below.name=="lib_materials:ice" or string.find(n_below.name, "stone")) then
		return;
	end
	-- bushes to be placed using functions and place_schematic
	if(r==1) then
		local fun = lakes.around_lake_decorations[math.random(1,#lakes.around_lake_decorations)];
		if( fun ) then
			--if(fun ~= default.grow_pine_bush and (not(n_below) or n_below.name=="lib_materials:snow_block" or n_below.name=="lib_materials:dirt_with_snow")) then
			if(fun ~= (n_below.name=="lib_materials:snow_block" or n_below.name=="lib_materials:dirt_with_snow")) then
				-- only allow pine trees in winter biomes
			else
				fun({x=pos.x, y=pos.y+1, z=pos.z});
			end
			for x=pos.x-1, pos.x+1 do
			for z=pos.z-1, pos.z+1 do
				pos_done[ minetest.pos_to_string( {x=x, z=z, y=pos.y} )] = 1;
			end
			end
			return;
		end
	end

	if(not(n_below) or n_below.name=="lib_materials:snow_block" or n_below.name=="lib_materials:dirt_with_snow") then
		return;
	end

	-- papyrus is very decorative; use it plentifully
	if(r==2) then
		for i=pos.y+1, pos.y+4 do
			minetest.set_node({x=pos.x, y=i, z=pos.z}, {name="lib_ecology:plant_papyrus"});
		end

	-- other plants are just one node high
	else
		local plant = lakes.plants_around_lakes[math.random(1,#lakes.plants_around_lakes)];
		if(minetest.registered_nodes[plant]) then
			minetest.set_node({x=pos.x, y=pos.y+1, z=pos.z}, {name=plant});
		end
	end
	pos_done[ minetest.pos_to_string( pos )] = 1;
end


minetest.register_on_generated(function(minp, maxp, seed)

	local heightmap = minetest.get_mapgen_object('heightmap');
	local biomemap = minetest.get_mapgen_object('biomemap');
	local chunksize = maxp.x - minp.x + 1;

	if( not( heightmap )) then
		return;
	end


	-- do the actual work of hill and hole detection
	local t1 = minetest.get_us_time();
	-- find places where the land could be lowered or raised
	local extrema = mark_min_max_height_in_mapchunk(minp, maxp, heightmap);
	-- distinguish between individual holes and hills
	local detected = mark_holes_and_hills_in_mapchunk( minp, maxp, heightmap, extrema.minheight, extrema.maxheight);
	-- flatten hills, fill holes (just virutal in adjusted_heightmap)
	local adjusted_heightmap = heightmap_with_hills_lowered_and_holes_filled( minp, maxp, heightmap, extrema, detected);



	-- for now: fill each hole (no matter how big or tiny) with river water
	for id, data in pairs( detected.holes.merged ) do
--		detected.holes.merged[id].material = fill_lake_with;
		detected.holes.merged[id].material = fill_lake_with_air;
	end

	-- show something to the user; change the landscape
	local shore_nodes = {};
	local i = 0
	for az=minp.z,maxp.z do
	for ax=minp.x,maxp.x do
		i = i+1;


		-- is there a hole?
		if( detected.holes_markmap[i] and detected.holes_markmap[i]>0) then
			local id = detected.holes_merge_into[ detected.holes_markmap[i] ];
			local hole = detected.holes.merged[id];

--
			local biome_data = minetest.get_biome_data({x=ax, z=az, y=heightmap[i]})
			local biome_id = biome_data.biome
			local biome_name = minetest.get_biome_name(biome_id)
	
			if string.find(biome_name, "_arid_coastal") or string.find(biome_name, "_arid_lowland") then
				fill_lake_with = fill_lake_with_river_muddy
				--hole.material = fill_lake_with
				lakes.plants_around_lakes = lakes.plants_around_lakes_arid
			end
			if string.find(biome_name, "_arid_shelf") or string.find(biome_name, "_arid_highland") then
				fill_lake_with = fill_lake_with_mud_dried
				hole.material = fill_lake_with_mud_dried
				lakes.plants_around_lakes = lakes.plants_around_lakes_arid
			end
			if string.find(biome_name, "semiarid") then
				fill_lake_with = fill_lake_with_river_muddy
				--hole.material = fill_lake_with
				lakes.plants_around_lakes = lakes.plants_around_lakes_arid
			end
			if string.find(biome_name, "temperate") then
				fill_lake_with = fill_lake_with_river
				--hole.material = fill_lake_with
				lakes.plants_around_lakes = lakes.plants_around_lakes_temperate
			end
			if string.find(biome_name, "humid") then
				fill_lake_with = fill_lake_with_dirty
				--hole.material = fill_lake_with
				lakes.plants_around_lakes = lakes.plants_around_lakes_humid
			end
			if string.find(biome_name, "swamp") then
				fill_lake_with = fill_lake_with_swamp
				--hole.material = fill_lake_with
				lakes.plants_around_lakes = lakes.plants_around_lakes_humid
			end
			if string.find(biome_name, "strato") or string.find(biome_name, "cold") then
				fill_lake_with = fill_lake_with_ice
				hole.material = fill_lake_with_ice
				lakes.plants_around_lakes = lakes.plants_around_lakes_arid
			end
--


			-- is there a node *above* the future surface of the lake?
			-- this might be a tree with leaves, fruits and/or snow on it
			local n = minetest.get_node({x=ax, z=az, y=hole.target_height+1});
			local n_below = minetest.get_node({x=ax, y=hole.target_height, z=az});
			if( n and n.name and n.name ~= "ignore" and n.name ~= "air") then
				local remove = minetest.find_nodes_in_area(
						{x=ax-2, y=heightmap[i]-5,  z=az-2},
						{x=ax+2, y=heightmap[i]+20, z=az+2},
						-- tree trunks. leaves and tree fruits	-- snow on pines has to go as well
						{"group:tree", "group:leaves", "group:plant", "group:lib_ecology_leaves", "group:lib_ecology_tree", "group:lib_ecology_plant", "group:lib_ecology_fruit", "group:attached_node", "group:snow"});
				for nr, pos in ipairs(remove) do
					minetest.set_node( pos, {name = "air"}); --"default:obsidian_glass"});
				end
				--if string.find(n_below.name, "dirt") then

				--end
			end

			-- clay is a nice building material; we need more of it!
			-- thus: turn the ground of the lake into clay
--			minetest.set_node( {x=ax, z=az, y=heightmap[i]}, {name="lib_materials:dirt_mud_01"});
			minetest.set_node( {x=ax, z=az, y=heightmap[i]}, {name=fill_lake_with});

			-- is there a node above the *ground*? (most likely a plant)
			-- this is only of intrest if the node will not be replaced anyway (that is,
			-- the node is not at the lakes surface)
			if(heightmap[i] < hole.target_height-1) then
				local n = minetest.get_node({x=ax, z=az, y=heightmap[i]+1});
				if( n and n.name and n.name ~= "ignore" and n.name ~= "air") then
					minetest.set_node( {x=ax, z=az, y=heightmap[i]+1}, {name=hole.material});
				end
			end
			-- place the fill material at the new surface height of the lake
			minetest.set_node( {x=ax, z=az, y=hole.target_height}, {name=hole.material});

			-- waterlilys are decorative
			if(minetest.registered_nodes["lib_ecology:plant_waterlily_pink"] and math.random(1,20)==1) then
				minetest.set_node( {x=ax, z=az, y=hole.target_height+1}, {name="lib_ecology:plant_waterlily_pink"});
			end

			-- use the inices of a table to store the positions in order to avoid duplicates
			if( heightmap[i-1] and heightmap[i-1]==hole.target_height) then
				shore_nodes[ {x=ax-1, z=az, y=hole.target_height} ] = 1;
			end
			if( heightmap[i+1] and heightmap[i+1]==hole.target_height) then
				shore_nodes[ {x=ax+1, z=az, y=hole.target_height} ] = 1;
			end
			if( heightmap[i-chunksize] and heightmap[i-chunksize]==hole.target_height) then
				shore_nodes[ {x=ax, z=az-1, y=hole.target_height} ] = 1;
			end
			if( heightmap[i+chunksize] and heightmap[i+chunksize]==hole.target_height) then
				shore_nodes[ {x=ax, z=az+1, y=hole.target_height} ] = 1;
			end
		end
	end
	end

	-- place plants around the lake (they grow better with the water...)
	lakes.lake_shore(shore_nodes);

	local t3 = minetest.get_us_time();
	print("Time elapsed: "..tostring( t3-t1 ));
end)
