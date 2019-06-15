--
-- Register biomes
--

local read_csv = dofile(lib_materials.path .. "/csv.lua")

local biomes = read_csv(lib_materials.path .. "/biomes.csv")

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
		node, count = node_str:match("([^%s]+)%s*(%d*)")
		return node, tonumber(count) or 1
	end
end

for i, biome in ipairs(biomes) do
	local a, b, c, d, e, f, g, h, i, j, k, l = unpack(biome)

	-- Parse node names: transform empty strings into nil and separate node and count
	b = read_node_str(b)
	local c1, c2 = read_node_str(c)
	local d1, d2 = read_node_str(d)
	e = read_node_str(e)
	local f1, f2 = read_node_str(f)
	g = read_node_str(g)
	h = read_node_str(h)

	minetest.register_biome({
		name = a,
		node_dust = b,
		node_top = c1,
		depth_top = c2,
		node_filler = d1,
		depth_filler = d2,
		node_stone = e,
		node_water_top = f1,
		depth_water_top = f2,
		node_water = g,
		node_river_water = h,
		y_min = tonumber(i) or heights[i],
		y_max = tonumber(j) or heights[j],
		vertical_blend = lib_materials.biome_vertical_blend,
		heat_point = tonumber(k) or temperatures[k],
		humidity_point = tonumber(l) or humidities[k],
	})
end
