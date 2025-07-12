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
if vim.g.vscode then
	require("vsc.vs-basic")
	require("vsc.vs-keybinding")
	require("vsc.vs-lazy")
	require("vsc.vs-flash")
	require("vsc.vs-yanky")
	require("vsc.vs-hop")
	require("vsc.vs-nvim_treesitter")
	require("vsc.vs-nvim_treesitter_textobjects")
else
	-- basic
	require("neovim.config_general.basic")
	-- lazy(plugin manger)
	require("neovim.config_plugins.lazy")
	-- cmp
	require("neovim.config_plugins.cmp")
	-- manson
	require("neovim.config_plugins.mason")
	-- colorizer
	require("neovim.config_plugins.colorizer")
	-- auto pair
	require("neovim.config_plugins.auto_pair")
	-- comment
	require("neovim.config_plugins.comment")
	-- nvim-treesitter
	require("neovim.config_plugins.nvim_treesitter")
	require("neovim.config_plugins.nvim_treesitter_textobjects")
	-- hop
	require("neovim.config_plugins.hop")
	-- yanky
	require("neovim.config_plugins.yanky")
	-- leap
	require("neovim.config_plugins.flash")
	-- lualine
	require("neovim.config_plugins.lualine")
	-- formatter
	require("neovim.config_plugins.formatter")
	-- remote clip
	require("neovim.config_plugins.osc52")
	--hover
	require("neovim.config_plugins.hover")
	require("neovim.config_plugins.trouble")
	--mini.ai
	-- require("neovim.config_plugins.miniai")
	-- indent_blankline
	require("neovim.config_plugins.indent_blankline")
	-- color theme
	-- require("neovim.config_colors.base16_mini")
	-- require("neovim.config_colors.base16_solarized")
	require("neovim.config_colors.base16_ayu")
	-- require("neovim.config_colors.base16_github")
	-- shortcut
	require("neovim.config_general.keybindings")
	-- lsp default config
	require("neovim.config_lsp.lsp_config")
end

if vim.o.termguicolors then
	vim.o.termguicolors = true
end

-- require('custom_command.highlight_mark')
