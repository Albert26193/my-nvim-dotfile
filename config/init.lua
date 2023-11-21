if vim.g.vscode then
	require("vscode_nvim.vs-basic")
	require("vscode_nvim.vs-keybinding")
	require("vscode_nvim.vs-hop")
	require("vscode_nvim.vs-comment")
else
	-- install lazy nvim plugin manager
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/folke/lazy.nvim.git",
			"--branch=stable", -- latest stable release
			lazypath,
		})
	end

	vim.opt.rtp:prepend(lazypath)

	-- 基本配置
	require("config_general.basic")
	-- 插件配置
	require("config_plugins.lazy")
	-- cmp
	require("config_plugins.cmp")
	-- manson
	require("config_plugins.mason")
	-- auto pair
	require("config_plugins.auto_pair")
	-- comment
	require("config_plugins.comment")
	-- nvim-treesitter
	require("config_plugins.nvim_treesitter")
	-- hop
	require("config_plugins.hop")
	-- lualine
	require("config_plugins.lualine")
	-- formatter
	require("config_plugins.formatter")
	-- remote clip
	require("config_plugins.osc52")
	--hover
	require("config_plugins.hover")
	require("config_plugins.trouble")
	-- -- indent_blankline
	require("config_plugins.indent_blankline")
	-- 主题设置
	require("config_general.colorscheme")
	-- 快捷键
	require("config_general.keybindings")
	-- lsp default config
	require("config_lsp.lsp_config")
end

if vim.o.termguicolors then
	vim.o.termguicolors = true
end

-- require('custom_command.highlight_mark')
