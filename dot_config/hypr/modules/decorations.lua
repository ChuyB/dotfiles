hl.config({
	general = {
		gaps_in = 10,
		gaps_out = 20,

		border_size = 1,

		col = {
			active_border = { colors = { "rgba(595959ff)" } },
			inactive_border = "rgba(59595988)",
		},

		resize_on_border = true,
	},

	decoration = {
		rounding = 25,
		rounding_power = 3,

		active_opacity = 1.0,
		inactive_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 15,
			render_power = 3,
			color = 0xaa1a1a1a,
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 3,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})
