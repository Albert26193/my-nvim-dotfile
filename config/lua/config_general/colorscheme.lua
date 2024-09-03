-- local colorscheme = "neosolarized"
-- local colorscheme = "gruvbox"
-- local colorscheme = "ayu"

-- require(colorscheme).setup({
-- 	-- style = "moon",
-- })

require("tokyonight").setup({
	-- use the night style
	style = "moon",
	-- disable italic for functions
	styles = {
		functions = {},
	},
	-- Change the "hint" color to the "orange" color, and make the "error" color bright red
	on_colors = function(colors)
		-- colors.hint = colors.blue
		colors.fg_gutter = "#6c7fcc"
		-- colors.fg_sidebar = "#f28bb8"
		-- colors.dark3 = "#f45c7e"
		-- colors.dark5 = "#73faa2"
		-- colors.warning = "#fffff1"
	end,
})

local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
	return
end

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
-- 	vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
-- 	return
-- end

-- _name = "tokyonight_moon",
--   _style = "moon",
--   bg = "#222436",
--   bg_dark = "#1e2030",
--   bg_float = "#1e2030",
--   bg_highlight = "#2f334d",
--   bg_popup = "#1e2030",
--   bg_search = "#3e68d7",
--   bg_sidebar = "#1e2030",
--   bg_statusline = "#1e2030",
--   bg_visual = "#2d3f76",
--   black = "#1b1d2b",
--   blue = "#82aaff",
--   blue0 = "#3e68d7",
--   blue1 = "#65bcff",
--   blue2 = "#0db9d7",
--   blue5 = "#89ddff",
--   blue6 = "#b4f9f8",
--   blue7 = "#394b70",
--   border = "#1b1d2b",
--   border_highlight = "#589ed7",
--   comment = "#636da6",
--   cyan = "#86e1fc",
--   dark3 = "#545c7e",
--   dark5 = "#737aa2",
--   diff = {
--     add = "#273849",
--     change = "#252a3f",
--     delete = "#3a273a",
--     text = "#394b70"
--   },
--   error = "#c53b53",
--   fg = "#c8d3f5",
--   fg_float = "#c8d3f5",
--   git = {
--     add = "#b8db87",
--     change = "#7ca1f2",
--     delete = "#e26a75",
--     ignore = "#545c7e"
--   },
--   green = "#c3e88d",
--   green1 = "#4fd6be",
--   green2 = "#41a6b5",
--   hint = "#4fd6be",
--   info = "#0db9d7",
--   magenta = "#c099ff",
--   magenta2 = "#ff007c",
--   none = "NONE",
--   orange = "#ff966c",
--   purple = "#fca7ea",
--   rainbow = { "#82aaff", "#ffc777", "#c3e88d", "#4fd6be", "#c099ff", "#fca7ea" },
--   red = "#ff757f",
--   red1 = "#c53b53",
--   teal = "#4fd6be",
--   terminal_black = "#444a73",
--   todo = "#82aaff",
--   warning = "#ffc777",
--   yellow = "#ffc777"
