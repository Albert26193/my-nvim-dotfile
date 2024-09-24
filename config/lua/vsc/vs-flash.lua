local status, _ = pcall(require, "flash")
if not status then
	vim.notify("not found flash")
	return
end

-- vim.keymap.set({ "n", "x", "o" }, "r", '<cmd>lua require("flash").jump()<cr>')
-- vim.keymap.set({ "n", "x", "o" }, "w", '<cmd>lua require("flash").treesitter()<cr>')
-- vim.keymap.set({ "n", "x", "o" }, "R", '<cmd>lua require("flash").remote()<cr>')
-- vim.keymap.set({ "n", "x", "o" }, "R", '<cmd>lua require("flash").treesitter_search()<cr>')
-- vim.keymap.set({ "c" }, "<c-s>", '<cmd>lua require("flash").toggle()<cr>')

require("flash").setup({
	labels = "asdfghjklqwertyuiopzxcvbnm",
	label = {
		uppercase = false,
		rainbow = {
			enable = true,
			shade = 9,
		},
	},
	modes = {
		search = {
			enable = true,
		},
		char = {
			multi_line = false,
			jump_labels = false,
			config = {},
			highlight = { backdrop = false },
			-- autohide = true,
		},
	},
	highlight = {
		backdrop = false,
		matches = true,
		priority = 5000,
		groups = {
			match = "Search", -- :hi for f/F
			label = "Search", -- :hi for f/F
		},
	},
})
