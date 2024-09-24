-- place this in one of your configuration file(s)
-- local directions = require('hop.hint').HintDirection

local status, hop = pcall(require, "hop")
if not status then
	vim.notify("没有找到 hop")
	return
end

hop.setup({
	keys = "etovxqpdygfblzhckisuran",
	multi_windows = true,
	case_insensitive = false,
	jump_on_sole_occurrence = false,
})

vim.api.nvim_set_keymap("n", "r", ":HopChar1<CR>", {})
