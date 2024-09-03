local lazy = require("lazy")

lazy.setup({
	{
		"williamboman/mason.nvim",
	},
	{ "neovim/nvim-lspconfig" },
	-- auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		-- event = 'VeryLazy',
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/vim-vsnip",
			"onsails/lspkind-nvim",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-omni",
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-cmdline",
			"quangnguyen30192/cmp-nvim-ultisnips",
			"rafamadriz/friendly-snippets",
		},
	},
	{ "ojroques/nvim-osc52" },
	{ "mhartington/formatter.nvim" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	-- rainbow
	{ "hiphish/rainbow-delimiters.nvim" },
	-- theme
	{ "folke/tokyonight.nvim" },
	{ "sainnhe/sonokai" },
	{ "Shatur/neovim-ayu" },
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		-- config = function()
		-- 	vim.cmd([[ colorscheme NeoSolarized ]])
		-- end,
	},
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
	{ "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },
	-- lsp
	{ "arkav/lualine-lsp-progress" },
	{ "numToStr/Comment.nvim" },
	{ "rainbowhxch/accelerated-jk.nvim" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "phaazon/hop.nvim", branch = "v2" },
	{ "windwp/nvim-autopairs" },
	{ "lewis6991/hover.nvim" },
	{ "folke/trouble.nvim", ependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "norcalli/nvim-colorizer.lua" },
	{ "echasnovski/mini.nvim", version = "*" },
	-- bread
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
	},
})
