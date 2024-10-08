local status, hop = pcall(require, "hop")
if not status then
	vim.notify("没有找到 hop")
	return
end

-- place this in one of your configuration file(s)
hop.setup({
	keys = "etovxqpdygfblzhckisuran",
	multi_windows = true,
	case_insensitive = false,
	jump_on_sole_occurrence = false,
})

vim.notify("hop load!")
vim.api.nvim_set_keymap("n", "r", ":HopChar1<CR>", {})
