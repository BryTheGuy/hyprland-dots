-- clipse window rules
hl.window_rule({
	name = "clipse window rules",
	match = {
		class = "clipse",
	},
	float = true,
})

hl.window_rule({
	name = "file-chooser-float",
	match = {
		class = "xdg-desktop-portal-gtk",
	},
	float = true,
	stay_focused = true,
})
