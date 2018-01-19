
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


