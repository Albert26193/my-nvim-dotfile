local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	vim.notify("没有找到 nvim-treesitter")
	return
end

treesitter.setup({
	-- 安装 language parser
	-- :TSInstallInfo 命令查看支持的语言
	ensure_installed = {
		"python",
		"json",
		"c",
		"cpp",
		"go",
		"rust",
		"html",
		"css",
		"vim",
		"lua",
		"javascript",
		"typescript",
		"tsx",
		"rust",
	},
	-- ensure_installed = "maintained",

	-- 启用代码高亮模块
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	-- 不gg启用增量选择模块
	incremental_selection = {
		enable = false,
		keymaps = {
			init_selection = "<CR>",
			node_incremental = "<CR>",
			node_decremental = "<BS>",
			scope_incremental = "<TAB>",
		},
	},
	-- 启用代码缩进模块 (=)
	indent = {
		enable = true,
	},
	-- p00f/nvim-ts-rainbow
	-- rainbow = {
	-- 	enable = true,
	-- 	-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
	-- 	extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
	-- 	max_file_lines = nil, -- Do not enable for files with more than n lines, int
	-- 	colors = {
	-- 		"#55ca60",
	-- 		"#a6a760",
	-- 		"#7794f4",
	-- 		"#b38bf5",
	-- 		"#7cc7fe",
	-- 	}, -- table of hex strings
	-- 	termcolors = {
	-- 		"#55ca60",
	-- 		"#a6a760",
	-- 		"#7794f4",
	-- 		"#b38bf5",
	-- 		"#7cc7fe",
	-- 	}, -- table of colour name strings
	-- },
})
-- 开启 Folding 模块
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- 默认不要折叠
-- https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
vim.opt.foldlevel = 99
