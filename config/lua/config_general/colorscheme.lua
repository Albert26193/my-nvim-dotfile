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
		colors.fg_gutter = "#515c7f"
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
