

function table.contains_substring(t, s)
	if type(s) ~= "string" then
		return nil
	end

  for key, value in pairs(t) do
    if type(value) == 'string' and s:find(value) then
			if key then
				return key
			else
				return true
			end
    end
  end
  return false
end


function get_node_drops(fullRockNode, cobbleRockNode)
	return {
		max_items = 1,
		items = {
			{
				-- drop the cobble variant with 1/3 chance
				items = {cobbleRockNode},
				rarity = 3,
			},
			{
				-- drop the full node with 2/3 chance
				items = {fullRockNode},
			}
		}
	}
end

lib_materials.register_craftitem = function(name, alt, def)
	if minetest.registered_craftitems[alt] then
		minetest.override_item(alt, def)
		minetest.register_alias(name, alt)
	else
		minetest.register_craftitem(name, def)
		minetest.register_alias(alt, name)
	end
end

lib_materials.register_node = function(name, alt, def)
	if minetest.registered_nodes[alt] then
		minetest.override_item(alt, def)
		minetest.register_alias(name, alt)
	else
		minetest.register_node(name, def)
		minetest.register_alias(alt, name)
	end
end

lib_materials.register_tool = function(name, alt, def)
	if minetest.registered_tools[alt] then
		minetest.override_item(alt, def)
		minetest.register_alias(name, alt)
	else
		minetest.register_tool(name, def)
		minetest.register_alias(alt, name)
	end
end
