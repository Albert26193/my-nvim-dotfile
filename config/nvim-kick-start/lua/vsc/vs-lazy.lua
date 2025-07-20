local lazy = require("lazy")

lazy.setup({
	{ "numToStr/Comment.nvim" },
	{ "rainbowhxch/accelerated-jk.nvim" },
	{ "smoka7/hop.nvim", version = "*" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{
		"folke/flash.nvim",
		event = "VeryLazy",
	},
	{
		"gbprod/yanky.nvim",
	},
})

-- vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
-- vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})
--
-- require("accelerated-jk").setup({
-- 	mode = "time_driven",
-- 	enable_deceleration = false,
-- 	acceleration_motions = {},
-- 	acceleration_limit = 150,
-- 	acceleration_table = { 1, 5, 10, 17, 29, 36, 38, 40 },
-- 	-- when 'enable_deceleration = true', 'deceleration_table = { {200, 3}, {300, 7}, {450, 11}, {600, 15}, {750, 21}, {900, 9999} }'
-- 	deceleration_table = { { 150, 9999 } },
-- })

vim.notify("all plugins for vscode load!")
