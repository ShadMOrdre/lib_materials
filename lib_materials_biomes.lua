--
-- Register biomes
--

--local read_csv = dofile(lib_materials.path .. "/csv.lua")

--local biomes = lib_materials.read_csv(lib_materials.path .. "/biomes.csv")

-- Define constants that can be used in csv
local heights = {
	ocean_depth = lib_materials.ocean_depth,
	beach_depth = lib_materials.beach_depth,
	sea_level = lib_materials.sea_level,
	beach = lib_materials.maxheight_beach,
	coastal = lib_materials.maxheight_coastal,
	lowland = lib_materials.maxheight_lowland,
	shelf = lib_materials.maxheight_shelf,
	highland = lib_materials.maxheight_highland,
	mountain = lib_materials.maxheight_mountain,
	snow_min = lib_materials.minheight_snow,
	snow_max = lib_materials.maxheight_snow,
	strato = lib_materials.maxheight_strato,
}

local temperatures = {
	hot = lib_materials.temperature_hot,
	warm = lib_materials.temperature_warm,
	temperate = lib_materials.temperature_temperate,
	cool = lib_materials.temperature_cool,
	cold = lib_materials.temperature_cold,
}

local humidities = {
	humid = lib_materials.humidity_humid,
	semihumid = lib_materials.humidity_semihumid,
	temperate = lib_materials.humidity_temperate,
	semiarid = lib_materials.humidity_semiarid,
	arid = lib_materials.humidity_arid,
}

local function read_node_str(node_str)
	if #node_str > 0 then
		local node, count = node_str:match("([^%s]+)%s*(%d*)")
		return node, tonumber(count) or 1
	end
end

for i, biome in ipairs(lib_materials.read_csv("|", lib_materials.path .. "/" .. lib_materials.biome_data_file .. ".csv")) do

	--#Name|Dust|NodeTop|NodeTopDepth|Filler|FillerDepth|Stone|WaterTop|WaterTopDepth|Water|River water|RiverBed|RiverBedDepth|CaveLiquid|DungeonNode|DungeonAlt|DungeonStair|Y-min|Y-max|Temperature|Humidity|MaxPos|MinPos|VerticalBlend
	local a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x = unpack(biome)
	--minetest.log(a .. ", " .. b .. ", " .. c .. ", " .. d .. ", " .. e .. ", " .. f .. ", " .. g .. ", " .. h .. ", " .. i .. ", " .. j .. ", " .. k .. ", " .. l)

	-- Parse node names: transform empty strings into nil and separate node and count
--	b = read_node_str(b)
--	local c1, c2 = read_node_str(c)
--	local d1, d2 = read_node_str(d)
--	e = read_node_str(e)
--	local f1, f2 = read_node_str(f)
--	g = read_node_str(g)
--	h = read_node_str(h)

	minetest.register_biome({
		name = a,
		node_dust = b or nil,
		node_top = c or nil,
		depth_top = tonumber(d),
		node_filler = e or nil,
		depth_filler = tonumber(f),
		node_stone = g or nil,
		node_water_top = h or nil,
		depth_water_top = tonumber(i),
		node_water = j or nil,
		node_river_water = k or nil,
		node_riverbed = l or nil,
		depth_riverbed = tonumber(m),
		node_cave_liquid = n or nil,
		node_dungeon = o or nil,
		node_dungeon_alt = p or nil,
		node_dungeon_stair = q or nil,
		y_min = tonumber(r) or heights[r],
		y_max = tonumber(s) or heights[s],
		heat_point = tonumber(t) or temperatures[t],
		humidity_point = tonumber(u) or humidities[u],
		max_pos = tonumber(v),
		min_pos = tonumber(w),
		vertical_blend = x or lib_materials.biome_vertical_blend,
	})
end






















