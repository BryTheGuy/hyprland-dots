hl.on("hyprland.start", function()
	-- Start polkit auth daemon
	hl.exec_cmd("systemctl --user start hyprpolkitagent")

	-- Start some hyprland specific stuff
	hl.exec_cmd("hypridle")
	hl.exec_cmd("iio-hyprland")
	hl.exec_cmd("hyprpm reload -n")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("hyprlauncher -d")

	-- Start topbar
	hl.exec_cmd("wayle panel start")

	-- Start copy&paste
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
