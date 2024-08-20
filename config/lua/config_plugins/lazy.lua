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
	{ "folke/tokyonight.nvim" },
	{ "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },
	{ "arkav/lualine-lsp-progress" },
	{ "numToStr/Comment.nvim" },
	{ "rainbowhxch/accelerated-jk.nvim" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "phaazon/hop.nvim", branch = "v2" },
	{ "windwp/nvim-autopairs" },
	{ "lewis6991/hover.nvim" },
	{ "folke/trouble.nvim", ependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "norcalli/nvim-colorizer.lua" },
  { 'echasnovski/mini.nvim', version = '*' },
})
