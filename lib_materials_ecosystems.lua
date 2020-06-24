--
-- Register lib_materials ecosystems
--
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


local function read_node_str(node_str)
	if #node_str > 0 then
		local node, count = node_str:match("([^%s]+)%s*(%d*)")
		return node, tonumber(count) or 1
	end
end

for i, ecosystem in ipairs(lib_materials.read_csv("|", lib_materials.path .. "/" .. lib_materials.ecosystem_data_file .. ".csv")) do
	local oretype, orename, wherein, threshold, ymin, ymax, biome = unpack(ecosystem)
	--minetest.log(oretype .. ", " .. orename .. ", " .. wherein .. ", " .. threshold .. ", " .. ymin .. ", " .. ymax .. ", " .. biome)

	-- Parse node names: transform empty strings into nil and separate node and count
	--b = read_node_str(b)
	--local c1, c2 = read_node_str(c)

	local spread_val = 2^(tonumber(threshold) * 10)
	local ore_seed = math.random(1, spread_val)

	--lib_materials.add_oredef(orename, ore_seed)

	if oretype == "dirt" then
		minetest.register_ore({
			ore_type = "sheet",
			ore = "lib_materials:" .. orename,
			wherein = "lib_materials:" .. wherein,
			clust_size = 8,
			y_min = tonumber(ymin) or (heights[ymin] - lib_materials.biome_vertical_blend),
			y_max = tonumber(ymax) or (heights[ymax] + lib_materials.biome_vertical_blend),
			noise_threshold = tonumber(threshold),
			noise_params = {
				offset = 0,
				scale = 1,
				spread = {x = 128, y = 128, z = 128},
				seed = ore_seed,
				octaves = 5,
				persist = 0.60
			},
			column_height_min = (lib_materials.biome_altitude_range / 2) + lib_materials.biome_vertical_blend,  --1
			column_height_max = lib_materials.biome_altitude_range + (lib_materials.biome_vertical_blend * 2),
			column_midpoint_factor = 0.5,
	 		biomes = biome or nil
		})
	elseif oretype == "fungi" then
		minetest.register_ore({
			ore_type = "sheet",
			ore = "lib_materials:" .. orename,
			wherein = "lib_materials:" .. wherein,
			clust_size = (tonumber(threshold) * 10),
			y_min = tonumber(ymin),
			y_max = tonumber(ymax),
			noise_threshold = tonumber(threshold),
			noise_params = {
				offset = 0,
				scale = 1,
				spread = {x = spread_val, y = spread_val, z = spread_val},
				seed = ore_seed,
				octaves = 5,
				persist = 0.60
			},
		        column_height_min = 1,
		        column_height_max = lib_materials.biome_altitude_range,
		        column_midpoint_factor = 0.5,
	 		biomes = biome or nil
		})
	elseif oretype == "" then

	else

	end

end
