-- List of layout names
local layouts = { "dwindle", "master", "scrolling", "monocle" }

-- Source - https://stackoverflow.com/a/69651531␍
-- Posted by MarredCheese, modified by community. See post 'Timeline' for change history␍
-- Retrieved 2026-06-09, License - CC BY-SA 4.0␍

-- Return the first index with the given value (or nil if not found).
local indexOf = function(array, value)
	for i, v in ipairs(array) do
		if v == value then
			return i
		end
	end
	return nil
end

-- TODO: add signals
function GetNextLayout()
	local current_layout = hl.get_config("general.layout")
	local currentIndex = indexOf(layouts, current_layout) % #layouts + 1
	return layouts[currentIndex], current_layout
end
