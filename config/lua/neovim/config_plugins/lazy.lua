local lazy = require("lazy")

lazy.setup({
	{
		"williamboman/mason.nvim",
	},
	{ "neovim/nvim-lspconfig" },
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
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
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	-- rainbow
	{ "hiphish/rainbow-delimiters.nvim" },
	-- theme
	{ "folke/tokyonight.nvim" },
	{ "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },
	-- log
	{
		"fei6409/log-highlight.nvim",
		config = function()
			require("log-highlight").setup({})
		end,
	},
	-- lsp
	{ "arkav/lualine-lsp-progress" },
	{ "numToStr/Comment.nvim" },
	{ "rainbowhxch/accelerated-jk.nvim" },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "windwp/nvim-autopairs" },
	{ "lewis6991/hover.nvim" },
	{ "folke/trouble.nvim", ependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "norcalli/nvim-colorizer.lua" },
	-- bread
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons",
		},
	},
	-- hop
	{ "smoka7/hop.nvim", version = "*" },
	-- flash
	{
		"folke/flash.nvim",
		event = "VeryLazy",
	},
	--yanky
	{
		"gbprod/yanky.nvim",
	},
	--mini
	{ "echasnovski/mini.nvim", version = "*" },
	{ "echasnovski/mini.base16", version = "*" },
	--caddy
	{ "isobit/vim-caddyfile" },
})
