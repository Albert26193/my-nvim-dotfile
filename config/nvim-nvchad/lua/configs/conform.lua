local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    sh ={ "shfmt" },
  },

  -- These options will be passed to conform.format()
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
