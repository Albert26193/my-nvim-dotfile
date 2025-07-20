require("nvchad.configs.lspconfig").defaults()

local servers = { "stylua", "bash-language-server", "shfmt" }

vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
